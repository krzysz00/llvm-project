//===- IndexedAccessOpInterfaceImpl.h - -------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef MLIR_DIALECT_GPU_INDEXEDACCESSOPINTERFACEIMPL_H
#define MLIR_DIALECT_GPU_INDEXEDACCESSOPINTERFACEIMPL_H

namespace mlir {

class DialectRegistry;

namespace gpu {
void registerIndexedAccessOpInterfaceExternalModels(DialectRegistry &registry);
} // namespace gpu
} // namespace mlir

#endif // MLIR_DIALECT_GPU_INDEXEDACCESSOPINTERFACEIMPL_H
