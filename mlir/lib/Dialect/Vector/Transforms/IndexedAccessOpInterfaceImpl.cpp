//===- IndexedAccessOpInterfaceImpl.cpp - ------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "mlir/Dialect/Vector/Transforms/IndexedAccessOpInterfaceImpl.h"

#include "mlir/Dialect/MemRef/IR/MemoryAccessOpInterfaces.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/Operation.h"

using namespace mlir;
using namespace mlir::memref;
using namespace mlir::vector;

namespace {
template <typename LoadStoreOp>
struct VectorLoadStoreLikeOpInterface final
    : IndexedAccessOpInterface::ExternalModel<
          VectorLoadStoreLikeOpInterface<LoadStoreOp>, LoadStoreOp> {
  TypedValue<MemRefType> getMemref(Operation *op) const {
    return dyn_cast<TypedValue<MemRefType>>(cast<LoadStoreOp>(op).getBase());
  }

  Operation::operand_range getIndices(Operation *op) const {
    return cast<LoadStoreOp>(op).getIndices();
  }

  // Note: this is an upper bound on what's accessed in the case of operations
  // like expandload or compressstore.
  SmallVector<int64_t> getAccessedShape(Operation *op) const {
    VectorType vecTy = cast<LoadStoreOp>(op).getVectorType();
    // Drop leading unit dimensions, since they don't impact the vector
    // semantics of operations. That is, none of these load/store variants
    // change their behavior if the loaded/stored vector type is changed from
    // vector<1x...x1x[shape]xT> to vector<[shape]xT>.
    SmallVector<int64_t> result(
        vecTy.getShape().drop_while([](int64_t l) { return l == 1; }));
    return result;
  }

  std::optional<SmallVector<Value>>
  updateMemrefAndIndices(Operation *op, RewriterBase &rewriter, Value newMemref,
                         ValueRange newIndices) const {
    VectorType vecTy = cast<LoadStoreOp>(op).getVectorType();
    bool droppedUnitDims =
        static_cast<int64_t>(newIndices.size()) < vecTy.getRank();
    if (LLVM_LIKELY(!droppedUnitDims)) {
      rewriter.modifyOpInPlace(op, [&]() {
        auto concreteOp = cast<LoadStoreOp>(op);
        concreteOp.getBaseMutable().assign(newMemref);
        concreteOp.getIndicesMutable().assign(newIndices);
      });
      return std::nullopt;
    }

    IRMapping dropDimsMap;
    VectorType droppedDimsTy = vecTy.cloneWith(
        vecTy.getShape().take_back(newIndices.size()), vecTy.getElementType());
    for (Value arg : op->getOperands()) {
      if (arg.getType() == vecTy) {
        Value castArg = vector::ShapeCastOp::create(rewriter, arg.getLoc(),
                                                    droppedDimsTy, arg);
        dropDimsMap.map(arg, castArg);
      }
    }

    Value castBack;
    Operation *newOp = rewriter.clone(*op, dropDimsMap);
    rewriter.modifyOpInPlace(newOp, [&]() {
      auto concreteOp = cast<LoadStoreOp>(newOp);
      concreteOp.getBaseMutable().assign(newMemref);
      concreteOp.getIndicesMutable().assign(newIndices);
      if (newOp->getNumResults() == 1) {
        newOp->getResult(0).setType(droppedDimsTy);
        castBack = ShapeCastOp::create(rewriter, newOp->getLoc(), vecTy,
                                       newOp->getResult(0));
      }
    });
    if (castBack) {
      return {{castBack}};
    }
    return std::nullopt;
  }

  // TODO: The various load and store operations (at the very least
  // vector.load and vector.store) sholud be taught a `startsInbounds`
  // attribute that would let us optimize index generation.
  bool hasInboundsIndices(Operation *) const { return false; }
};

template <typename GatherScatterOp>
struct GatherScatterLikeOpInterface final
    : IndexedAccessOpInterface::ExternalModel<
          GatherScatterLikeOpInterface<GatherScatterOp>, GatherScatterOp> {
  TypedValue<MemRefType> getMemref(Operation *op) const {
    return dyn_cast<TypedValue<MemRefType>>(
        cast<GatherScatterOp>(op).getBase());
  }

  Operation::operand_range getIndices(Operation *op) const {
    return cast<GatherScatterOp>(op).getOffsets();
  }

  // We assume that the index offset could point anywhere within a dimension,
  // but that it won't meaningfully alias outside of it.
  SmallVector<int64_t> getAccessedShape(Operation *op) const {
    VectorType vecTy = cast<GatherScatterOp>(op).getVectorType();
    return SmallVector<int64_t>(vecTy.getRank(), ShapedType::kDynamic);
  }

  std::optional<SmallVector<Value>>
  updateMemrefAndIndices(Operation *op, RewriterBase &rewriter, Value newMemref,
                         ValueRange newIndices) const {
    rewriter.modifyOpInPlace(op, [&]() {
      auto concreteOp = cast<GatherScatterOp>(op);
      concreteOp.getBaseMutable().assign(newMemref);
      concreteOp.getOffsetsMutable().assign(newIndices);
    });
    return std::nullopt;
  }

  bool hasInboundsIndices(Operation *) const { return false; }
};
} // namespace

void mlir::vector::registerIndexedAccessOpInterfaceExternalModels(
    DialectRegistry &registry) {
  registry.addExtension(+[](MLIRContext *ctx, vector::VectorDialect *dialect) {
#define LOADSTORELIKE(T)                                                       \
  T::attachInterface<VectorLoadStoreLikeOpInterface<T>>(*ctx)
    LOADSTORELIKE(vector::LoadOp);
    LOADSTORELIKE(vector::StoreOp);
    LOADSTORELIKE(vector::MaskedLoadOp);
    LOADSTORELIKE(vector::MaskedStoreOp);
    LOADSTORELIKE(vector::ExpandLoadOp);
    LOADSTORELIKE(vector::CompressStoreOp);
#undef LOADSTORELIKE
#define GATHERSCATTERLIKE(T)                                                   \
  T::attachInterface<GatherScatterLikeOpInterface<T>>(*ctx)
    GATHERSCATTERLIKE(vector::GatherOp);
    GATHERSCATTERLIKE(vector::ScatterOp);
#undef GATHERSCATTERLIKE
  });
}
