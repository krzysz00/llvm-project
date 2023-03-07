;; Test auto-upgrade of AMDGPU buffer resource intrinsics
;; Generated from the set of intrinsics manually updated in other tests
; RUN: llvm-as < %s | llvm-dis | FileCheck %s

declare <16 x float> @llvm.amdgcn.s.buffer.load.v16f32(<4 x i32>, i32, i32)
define amdgpu_cs <16 x float> @upgrade.s.buffer.load.v16f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v16f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <16 x float> @llvm.amdgcn.s.buffer.load.v16f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <16 x float> @llvm.amdgcn.s.buffer.load.v16f32(<4 x i32> %rsrc, i32 0, i32 0)
  ret <16 x float> %val
}

declare <16 x i16> @llvm.amdgcn.s.buffer.load.v16i16(<4 x i32>, i32, i32)
define amdgpu_cs <16 x i16> @upgrade.s.buffer.load.v16i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v16i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <16 x i16> @llvm.amdgcn.s.buffer.load.v16i16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <16 x i16> @llvm.amdgcn.s.buffer.load.v16i16(<4 x i32> %rsrc, i32 0, i32 0)
  ret <16 x i16> %val
}

declare <16 x i32> @llvm.amdgcn.s.buffer.load.v16i32(<4 x i32>, i32, i32)
define amdgpu_cs <16 x i32> @upgrade.s.buffer.load.v16i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v16i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <16 x i32> @llvm.amdgcn.s.buffer.load.v16i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <16 x i32> @llvm.amdgcn.s.buffer.load.v16i32(<4 x i32> %rsrc, i32 0, i32 0)
  ret <16 x i32> %val
}

declare <1 x float> @llvm.amdgcn.buffer.load.format.v1f32(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <1 x float> @upgrade.buffer.load.format.v1f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.format.v1f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <1 x float> @llvm.amdgcn.buffer.load.format.v1f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <1 x float> @llvm.amdgcn.buffer.load.format.v1f32(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <1 x float> %val
}

declare <1 x float> @llvm.amdgcn.buffer.load.v1f32(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <1 x float> @upgrade.buffer.load.v1f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.v1f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <1 x float> @llvm.amdgcn.buffer.load.v1f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <1 x float> @llvm.amdgcn.buffer.load.v1f32(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <1 x float> %val
}

declare <1 x float> @llvm.amdgcn.raw.buffer.load.format.v1f32(<4 x i32>, i32, i32, i32)
define amdgpu_cs <1 x float> @upgrade.raw.buffer.load.format.v1f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.format.v1f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <1 x float> @llvm.amdgcn.raw.buffer.load.format.v1f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <1 x float> @llvm.amdgcn.raw.buffer.load.format.v1f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <1 x float> %val
}

declare <1 x float> @llvm.amdgcn.raw.buffer.load.v1f32(<4 x i32>, i32, i32, i32)
define amdgpu_cs <1 x float> @upgrade.raw.buffer.load.v1f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v1f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <1 x float> @llvm.amdgcn.raw.buffer.load.v1f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <1 x float> @llvm.amdgcn.raw.buffer.load.v1f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <1 x float> %val
}

declare <1 x float> @llvm.amdgcn.struct.buffer.load.format.v1f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <1 x float> @upgrade.struct.buffer.load.format.v1f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.v1f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <1 x float> @llvm.amdgcn.struct.buffer.load.format.v1f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <1 x float> @llvm.amdgcn.struct.buffer.load.format.v1f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <1 x float> %val
}

declare <1 x float> @llvm.amdgcn.struct.buffer.load.v1f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <1 x float> @upgrade.struct.buffer.load.v1f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v1f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <1 x float> @llvm.amdgcn.struct.buffer.load.v1f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <1 x float> @llvm.amdgcn.struct.buffer.load.v1f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <1 x float> %val
}

declare <1 x float> @llvm.amdgcn.tbuffer.load.v1f32(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs <1 x float> @upgrade.tbuffer.load.v1f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.v1f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <1 x float> @llvm.amdgcn.tbuffer.load.v1f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call <1 x float> @llvm.amdgcn.tbuffer.load.v1f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret <1 x float> %val
}

declare { <2 x float>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v2f32i32s(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs { <2 x float>, i32 } @upgrade.struct.buffer.load.format.sl_v2f32i32s(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.sl_v2f32i32s
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call { <2 x float>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v2f32i32s(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call { <2 x float>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v2f32i32s(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret { <2 x float>, i32 } %val
}

declare <2 x float> @llvm.amdgcn.buffer.load.format.v2f32(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <2 x float> @upgrade.buffer.load.format.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.format.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x float> @llvm.amdgcn.buffer.load.format.v2f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <2 x float> @llvm.amdgcn.buffer.load.format.v2f32(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <2 x float> %val
}

declare <2 x float> @llvm.amdgcn.buffer.load.v2f32(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <2 x float> @upgrade.buffer.load.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x float> @llvm.amdgcn.buffer.load.v2f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <2 x float> @llvm.amdgcn.buffer.load.v2f32(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <2 x float> %val
}

declare <2 x float> @llvm.amdgcn.raw.buffer.load.format.v2f32(<4 x i32>, i32, i32, i32)
define amdgpu_cs <2 x float> @upgrade.raw.buffer.load.format.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.format.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x float> @llvm.amdgcn.raw.buffer.load.format.v2f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <2 x float> @llvm.amdgcn.raw.buffer.load.format.v2f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <2 x float> %val
}

declare <2 x float> @llvm.amdgcn.raw.buffer.load.v2f32(<4 x i32>, i32, i32, i32)
define amdgpu_cs <2 x float> @upgrade.raw.buffer.load.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x float> @llvm.amdgcn.raw.buffer.load.v2f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <2 x float> @llvm.amdgcn.raw.buffer.load.v2f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <2 x float> %val
}

declare <2 x float> @llvm.amdgcn.raw.tbuffer.load.v2f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x float> @upgrade.raw.tbuffer.load.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x float> @llvm.amdgcn.raw.tbuffer.load.v2f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x float> @llvm.amdgcn.raw.tbuffer.load.v2f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x float> %val
}

declare <2 x float> @llvm.amdgcn.s.buffer.load.v2f32(<4 x i32>, i32, i32)
define amdgpu_cs <2 x float> @upgrade.s.buffer.load.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x float> @llvm.amdgcn.s.buffer.load.v2f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <2 x float> @llvm.amdgcn.s.buffer.load.v2f32(<4 x i32> %rsrc, i32 0, i32 0)
  ret <2 x float> %val
}

declare <2 x float> @llvm.amdgcn.struct.buffer.load.format.v2f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x float> @upgrade.struct.buffer.load.format.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x float> @llvm.amdgcn.struct.buffer.load.format.v2f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x float> @llvm.amdgcn.struct.buffer.load.format.v2f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x float> %val
}

declare <2 x float> @llvm.amdgcn.struct.buffer.load.v2f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x float> @upgrade.struct.buffer.load.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x float> @llvm.amdgcn.struct.buffer.load.v2f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x float> @llvm.amdgcn.struct.buffer.load.v2f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x float> %val
}

declare <2 x float> @llvm.amdgcn.struct.tbuffer.load.v2f32(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs <2 x float> @upgrade.struct.tbuffer.load.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x float> @llvm.amdgcn.struct.tbuffer.load.v2f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x float> @llvm.amdgcn.struct.tbuffer.load.v2f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret <2 x float> %val
}

declare <2 x float> @llvm.amdgcn.tbuffer.load.v2f32(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs <2 x float> @upgrade.tbuffer.load.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x float> @llvm.amdgcn.tbuffer.load.v2f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call <2 x float> @llvm.amdgcn.tbuffer.load.v2f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret <2 x float> %val
}

declare <2 x half> @llvm.amdgcn.buffer.atomic.fadd.v2f16(<2 x half>, <4 x i32>, i32, i32, i1)
define amdgpu_cs <2 x half> @upgrade.buffer.atomic.fadd.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.fadd.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.buffer.atomic.fadd.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call <2 x half> @llvm.amdgcn.buffer.atomic.fadd.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.buffer.load.format.v2f16(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <2 x half> @upgrade.buffer.load.format.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.format.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.buffer.load.format.v2f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <2 x half> @llvm.amdgcn.buffer.load.format.v2f16(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.raw.buffer.atomic.fadd.v2f16(<2 x half>, <4 x i32>, i32, i32, i32)
define amdgpu_cs <2 x half> @upgrade.raw.buffer.atomic.fadd.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.fadd.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.raw.buffer.atomic.fadd.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <2 x half> @llvm.amdgcn.raw.buffer.atomic.fadd.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.raw.buffer.load.format.v2f16(<4 x i32>, i32, i32, i32)
define amdgpu_cs <2 x half> @upgrade.raw.buffer.load.format.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.format.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.raw.buffer.load.format.v2f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <2 x half> @llvm.amdgcn.raw.buffer.load.format.v2f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.raw.buffer.load.v2f16(<4 x i32>, i32, i32, i32)
define amdgpu_cs <2 x half> @upgrade.raw.buffer.load.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.raw.buffer.load.v2f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <2 x half> @llvm.amdgcn.raw.buffer.load.v2f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.raw.tbuffer.load.v2f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x half> @upgrade.raw.tbuffer.load.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.raw.tbuffer.load.v2f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x half> @llvm.amdgcn.raw.tbuffer.load.v2f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.s.buffer.load.v2f16(<4 x i32>, i32, i32)
define amdgpu_cs <2 x half> @upgrade.s.buffer.load.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.s.buffer.load.v2f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <2 x half> @llvm.amdgcn.s.buffer.load.v2f16(<4 x i32> %rsrc, i32 0, i32 0)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.struct.buffer.atomic.fadd.v2f16(<2 x half>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x half> @upgrade.struct.buffer.atomic.fadd.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.fadd.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.struct.buffer.atomic.fadd.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x half> @llvm.amdgcn.struct.buffer.atomic.fadd.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.struct.buffer.load.format.v2f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x half> @upgrade.struct.buffer.load.format.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.struct.buffer.load.format.v2f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x half> @llvm.amdgcn.struct.buffer.load.format.v2f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.struct.buffer.load.v2f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x half> @upgrade.struct.buffer.load.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.struct.buffer.load.v2f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x half> @llvm.amdgcn.struct.buffer.load.v2f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.struct.tbuffer.load.v2f16(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs <2 x half> @upgrade.struct.tbuffer.load.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.struct.tbuffer.load.v2f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x half> @llvm.amdgcn.struct.tbuffer.load.v2f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret <2 x half> %val
}

declare <2 x half> @llvm.amdgcn.tbuffer.load.v2f16(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs <2 x half> @upgrade.tbuffer.load.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x half> @llvm.amdgcn.tbuffer.load.v2f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call <2 x half> @llvm.amdgcn.tbuffer.load.v2f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret <2 x half> %val
}

declare <2 x i16> @llvm.amdgcn.raw.buffer.load.v2i16(<4 x i32>, i32, i32, i32)
define amdgpu_cs <2 x i16> @upgrade.raw.buffer.load.v2i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v2i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i16> @llvm.amdgcn.raw.buffer.load.v2i16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <2 x i16> @llvm.amdgcn.raw.buffer.load.v2i16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <2 x i16> %val
}

declare <2 x i16> @llvm.amdgcn.struct.buffer.load.v2i16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x i16> @upgrade.struct.buffer.load.v2i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v2i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i16> @llvm.amdgcn.struct.buffer.load.v2i16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x i16> @llvm.amdgcn.struct.buffer.load.v2i16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x i16> %val
}

declare { <2 x i32>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v2i32i32s(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs { <2 x i32>, i32 } @upgrade.struct.buffer.load.format.sl_v2i32i32s(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.sl_v2i32i32s
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call { <2 x i32>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v2i32i32s(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call { <2 x i32>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v2i32i32s(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret { <2 x i32>, i32 } %val
}

declare <2 x i32> @llvm.amdgcn.raw.buffer.load.v2i32(<4 x i32>, i32, i32, i32)
define amdgpu_cs <2 x i32> @upgrade.raw.buffer.load.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i32> @llvm.amdgcn.raw.buffer.load.v2i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <2 x i32> @llvm.amdgcn.raw.buffer.load.v2i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <2 x i32> %val
}

declare <2 x i32> @llvm.amdgcn.raw.tbuffer.load.v2i32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x i32> @upgrade.raw.tbuffer.load.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i32> @llvm.amdgcn.raw.tbuffer.load.v2i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x i32> @llvm.amdgcn.raw.tbuffer.load.v2i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x i32> %val
}

declare <2 x i32> @llvm.amdgcn.s.buffer.load.v2i32(<4 x i32>, i32, i32)
define amdgpu_cs <2 x i32> @upgrade.s.buffer.load.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i32> @llvm.amdgcn.s.buffer.load.v2i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <2 x i32> @llvm.amdgcn.s.buffer.load.v2i32(<4 x i32> %rsrc, i32 0, i32 0)
  ret <2 x i32> %val
}

declare <2 x i32> @llvm.amdgcn.struct.buffer.load.v2i32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x i32> @upgrade.struct.buffer.load.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i32> @llvm.amdgcn.struct.buffer.load.v2i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x i32> @llvm.amdgcn.struct.buffer.load.v2i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x i32> %val
}

declare <2 x i32> @llvm.amdgcn.struct.tbuffer.load.v2i32(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs <2 x i32> @upgrade.struct.tbuffer.load.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i32> @llvm.amdgcn.struct.tbuffer.load.v2i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x i32> @llvm.amdgcn.struct.tbuffer.load.v2i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret <2 x i32> %val
}

declare <2 x i32> @llvm.amdgcn.tbuffer.load.v2i32(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs <2 x i32> @upgrade.tbuffer.load.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i32> @llvm.amdgcn.tbuffer.load.v2i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call <2 x i32> @llvm.amdgcn.tbuffer.load.v2i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret <2 x i32> %val
}

declare <2 x i8> @llvm.amdgcn.raw.buffer.load.v2i8(<4 x i32>, i32, i32, i32)
define amdgpu_cs <2 x i8> @upgrade.raw.buffer.load.v2i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v2i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i8> @llvm.amdgcn.raw.buffer.load.v2i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <2 x i8> @llvm.amdgcn.raw.buffer.load.v2i8(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <2 x i8> %val
}

declare <2 x i8> @llvm.amdgcn.s.buffer.load.v2i8(<4 x i32>, i32, i32)
define amdgpu_cs <2 x i8> @upgrade.s.buffer.load.v2i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v2i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i8> @llvm.amdgcn.s.buffer.load.v2i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <2 x i8> @llvm.amdgcn.s.buffer.load.v2i8(<4 x i32> %rsrc, i32 0, i32 0)
  ret <2 x i8> %val
}

declare <2 x i8> @llvm.amdgcn.struct.buffer.load.v2i8(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <2 x i8> @upgrade.struct.buffer.load.v2i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v2i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <2 x i8> @llvm.amdgcn.struct.buffer.load.v2i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <2 x i8> @llvm.amdgcn.struct.buffer.load.v2i8(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <2 x i8> %val
}

declare <32 x i16> @llvm.amdgcn.s.buffer.load.v32i16(<4 x i32>, i32, i32)
define amdgpu_cs <32 x i16> @upgrade.s.buffer.load.v32i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v32i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <32 x i16> @llvm.amdgcn.s.buffer.load.v32i16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <32 x i16> @llvm.amdgcn.s.buffer.load.v32i16(<4 x i32> %rsrc, i32 0, i32 0)
  ret <32 x i16> %val
}

declare { <3 x float>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v3f32i32s(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs { <3 x float>, i32 } @upgrade.struct.buffer.load.format.sl_v3f32i32s(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.sl_v3f32i32s
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call { <3 x float>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v3f32i32s(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call { <3 x float>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v3f32i32s(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret { <3 x float>, i32 } %val
}

declare <3 x float> @llvm.amdgcn.buffer.load.format.v3f32(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <3 x float> @upgrade.buffer.load.format.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.format.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x float> @llvm.amdgcn.buffer.load.format.v3f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <3 x float> @llvm.amdgcn.buffer.load.format.v3f32(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <3 x float> %val
}

declare <3 x float> @llvm.amdgcn.buffer.load.v3f32(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <3 x float> @upgrade.buffer.load.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x float> @llvm.amdgcn.buffer.load.v3f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <3 x float> @llvm.amdgcn.buffer.load.v3f32(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <3 x float> %val
}

declare <3 x float> @llvm.amdgcn.raw.buffer.load.format.v3f32(<4 x i32>, i32, i32, i32)
define amdgpu_cs <3 x float> @upgrade.raw.buffer.load.format.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.format.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x float> @llvm.amdgcn.raw.buffer.load.format.v3f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <3 x float> @llvm.amdgcn.raw.buffer.load.format.v3f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <3 x float> %val
}

declare <3 x float> @llvm.amdgcn.raw.buffer.load.v3f32(<4 x i32>, i32, i32, i32)
define amdgpu_cs <3 x float> @upgrade.raw.buffer.load.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x float> @llvm.amdgcn.raw.buffer.load.v3f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <3 x float> @llvm.amdgcn.raw.buffer.load.v3f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <3 x float> %val
}

declare <3 x float> @llvm.amdgcn.raw.tbuffer.load.v3f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <3 x float> @upgrade.raw.tbuffer.load.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x float> @llvm.amdgcn.raw.tbuffer.load.v3f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x float> @llvm.amdgcn.raw.tbuffer.load.v3f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <3 x float> %val
}

declare <3 x float> @llvm.amdgcn.s.buffer.load.v3f32(<4 x i32>, i32, i32)
define amdgpu_cs <3 x float> @upgrade.s.buffer.load.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x float> @llvm.amdgcn.s.buffer.load.v3f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <3 x float> @llvm.amdgcn.s.buffer.load.v3f32(<4 x i32> %rsrc, i32 0, i32 0)
  ret <3 x float> %val
}

declare <3 x float> @llvm.amdgcn.struct.buffer.load.format.v3f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <3 x float> @upgrade.struct.buffer.load.format.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x float> @llvm.amdgcn.struct.buffer.load.format.v3f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x float> @llvm.amdgcn.struct.buffer.load.format.v3f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <3 x float> %val
}

declare <3 x float> @llvm.amdgcn.struct.buffer.load.v3f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <3 x float> @upgrade.struct.buffer.load.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x float> @llvm.amdgcn.struct.buffer.load.v3f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x float> @llvm.amdgcn.struct.buffer.load.v3f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <3 x float> %val
}

declare <3 x float> @llvm.amdgcn.struct.tbuffer.load.v3f32(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs <3 x float> @upgrade.struct.tbuffer.load.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x float> @llvm.amdgcn.struct.tbuffer.load.v3f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x float> @llvm.amdgcn.struct.tbuffer.load.v3f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret <3 x float> %val
}

declare <3 x float> @llvm.amdgcn.tbuffer.load.v3f32(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs <3 x float> @upgrade.tbuffer.load.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x float> @llvm.amdgcn.tbuffer.load.v3f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call <3 x float> @llvm.amdgcn.tbuffer.load.v3f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret <3 x float> %val
}

declare <3 x half> @llvm.amdgcn.buffer.load.format.v3f16(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <3 x half> @upgrade.buffer.load.format.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.format.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x half> @llvm.amdgcn.buffer.load.format.v3f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <3 x half> @llvm.amdgcn.buffer.load.format.v3f16(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <3 x half> %val
}

declare <3 x half> @llvm.amdgcn.raw.buffer.load.format.v3f16(<4 x i32>, i32, i32, i32)
define amdgpu_cs <3 x half> @upgrade.raw.buffer.load.format.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.format.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x half> @llvm.amdgcn.raw.buffer.load.format.v3f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <3 x half> @llvm.amdgcn.raw.buffer.load.format.v3f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <3 x half> %val
}

declare <3 x half> @llvm.amdgcn.raw.buffer.load.v3f16(<4 x i32>, i32, i32, i32)
define amdgpu_cs <3 x half> @upgrade.raw.buffer.load.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x half> @llvm.amdgcn.raw.buffer.load.v3f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <3 x half> @llvm.amdgcn.raw.buffer.load.v3f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <3 x half> %val
}

declare <3 x half> @llvm.amdgcn.raw.tbuffer.load.v3f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <3 x half> @upgrade.raw.tbuffer.load.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x half> @llvm.amdgcn.raw.tbuffer.load.v3f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x half> @llvm.amdgcn.raw.tbuffer.load.v3f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <3 x half> %val
}

declare <3 x half> @llvm.amdgcn.s.buffer.load.v3f16(<4 x i32>, i32, i32)
define amdgpu_cs <3 x half> @upgrade.s.buffer.load.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x half> @llvm.amdgcn.s.buffer.load.v3f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <3 x half> @llvm.amdgcn.s.buffer.load.v3f16(<4 x i32> %rsrc, i32 0, i32 0)
  ret <3 x half> %val
}

declare <3 x half> @llvm.amdgcn.struct.buffer.load.format.v3f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <3 x half> @upgrade.struct.buffer.load.format.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x half> @llvm.amdgcn.struct.buffer.load.format.v3f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x half> @llvm.amdgcn.struct.buffer.load.format.v3f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <3 x half> %val
}

declare <3 x half> @llvm.amdgcn.struct.buffer.load.v3f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <3 x half> @upgrade.struct.buffer.load.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x half> @llvm.amdgcn.struct.buffer.load.v3f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x half> @llvm.amdgcn.struct.buffer.load.v3f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <3 x half> %val
}

declare <3 x half> @llvm.amdgcn.struct.tbuffer.load.v3f16(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs <3 x half> @upgrade.struct.tbuffer.load.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x half> @llvm.amdgcn.struct.tbuffer.load.v3f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x half> @llvm.amdgcn.struct.tbuffer.load.v3f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret <3 x half> %val
}

declare <3 x half> @llvm.amdgcn.tbuffer.load.v3f16(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs <3 x half> @upgrade.tbuffer.load.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x half> @llvm.amdgcn.tbuffer.load.v3f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call <3 x half> @llvm.amdgcn.tbuffer.load.v3f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret <3 x half> %val
}

declare { <3 x i32>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v3i32i32s(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs { <3 x i32>, i32 } @upgrade.struct.buffer.load.format.sl_v3i32i32s(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.sl_v3i32i32s
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call { <3 x i32>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v3i32i32s(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call { <3 x i32>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v3i32i32s(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret { <3 x i32>, i32 } %val
}

declare <3 x i32> @llvm.amdgcn.raw.tbuffer.load.v3i32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <3 x i32> @upgrade.raw.tbuffer.load.v3i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.v3i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x i32> @llvm.amdgcn.raw.tbuffer.load.v3i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x i32> @llvm.amdgcn.raw.tbuffer.load.v3i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <3 x i32> %val
}

declare <3 x i32> @llvm.amdgcn.s.buffer.load.v3i32(<4 x i32>, i32, i32)
define amdgpu_cs <3 x i32> @upgrade.s.buffer.load.v3i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v3i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x i32> @llvm.amdgcn.s.buffer.load.v3i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <3 x i32> @llvm.amdgcn.s.buffer.load.v3i32(<4 x i32> %rsrc, i32 0, i32 0)
  ret <3 x i32> %val
}

declare <3 x i32> @llvm.amdgcn.struct.tbuffer.load.v3i32(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs <3 x i32> @upgrade.struct.tbuffer.load.v3i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.v3i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x i32> @llvm.amdgcn.struct.tbuffer.load.v3i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x i32> @llvm.amdgcn.struct.tbuffer.load.v3i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret <3 x i32> %val
}

declare <3 x i32> @llvm.amdgcn.tbuffer.load.v3i32(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs <3 x i32> @upgrade.tbuffer.load.v3i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.v3i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x i32> @llvm.amdgcn.tbuffer.load.v3i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call <3 x i32> @llvm.amdgcn.tbuffer.load.v3i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret <3 x i32> %val
}

declare <3 x i8> @llvm.amdgcn.raw.buffer.load.v3i8(<4 x i32>, i32, i32, i32)
define amdgpu_cs <3 x i8> @upgrade.raw.buffer.load.v3i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v3i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x i8> @llvm.amdgcn.raw.buffer.load.v3i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <3 x i8> @llvm.amdgcn.raw.buffer.load.v3i8(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <3 x i8> %val
}

declare <3 x i8> @llvm.amdgcn.s.buffer.load.v3i8(<4 x i32>, i32, i32)
define amdgpu_cs <3 x i8> @upgrade.s.buffer.load.v3i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v3i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x i8> @llvm.amdgcn.s.buffer.load.v3i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <3 x i8> @llvm.amdgcn.s.buffer.load.v3i8(<4 x i32> %rsrc, i32 0, i32 0)
  ret <3 x i8> %val
}

declare <3 x i8> @llvm.amdgcn.struct.buffer.load.v3i8(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <3 x i8> @upgrade.struct.buffer.load.v3i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v3i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <3 x i8> @llvm.amdgcn.struct.buffer.load.v3i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <3 x i8> @llvm.amdgcn.struct.buffer.load.v3i8(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <3 x i8> %val
}

declare { <4 x float>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v4f32i32s(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs { <4 x float>, i32 } @upgrade.struct.buffer.load.format.sl_v4f32i32s(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.sl_v4f32i32s
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call { <4 x float>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v4f32i32s(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call { <4 x float>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v4f32i32s(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret { <4 x float>, i32 } %val
}

declare <4 x float> @llvm.amdgcn.buffer.load.format.v4f32(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <4 x float> @upgrade.buffer.load.format.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.format.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x float> @llvm.amdgcn.buffer.load.format.v4f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <4 x float> @llvm.amdgcn.buffer.load.format.v4f32(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <4 x float> %val
}

declare <4 x float> @llvm.amdgcn.buffer.load.v4f32(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <4 x float> @upgrade.buffer.load.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x float> @llvm.amdgcn.buffer.load.v4f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <4 x float> @llvm.amdgcn.buffer.load.v4f32(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <4 x float> %val
}

declare <4 x float> @llvm.amdgcn.raw.buffer.load.format.v4f32(<4 x i32>, i32, i32, i32)
define amdgpu_cs <4 x float> @upgrade.raw.buffer.load.format.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.format.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x float> @llvm.amdgcn.raw.buffer.load.format.v4f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <4 x float> @llvm.amdgcn.raw.buffer.load.format.v4f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <4 x float> %val
}

declare <4 x float> @llvm.amdgcn.raw.buffer.load.v4f32(<4 x i32>, i32, i32, i32)
define amdgpu_cs <4 x float> @upgrade.raw.buffer.load.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x float> @llvm.amdgcn.raw.buffer.load.v4f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <4 x float> @llvm.amdgcn.raw.buffer.load.v4f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <4 x float> %val
}

declare <4 x float> @llvm.amdgcn.raw.tbuffer.load.v4f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x float> @upgrade.raw.tbuffer.load.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x float> @llvm.amdgcn.raw.tbuffer.load.v4f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x float> @llvm.amdgcn.raw.tbuffer.load.v4f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x float> %val
}

declare <4 x float> @llvm.amdgcn.s.buffer.load.v4f32(<4 x i32>, i32, i32)
define amdgpu_cs <4 x float> @upgrade.s.buffer.load.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x float> @llvm.amdgcn.s.buffer.load.v4f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <4 x float> @llvm.amdgcn.s.buffer.load.v4f32(<4 x i32> %rsrc, i32 0, i32 0)
  ret <4 x float> %val
}

declare <4 x float> @llvm.amdgcn.struct.buffer.load.format.v4f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x float> @upgrade.struct.buffer.load.format.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x float> @llvm.amdgcn.struct.buffer.load.format.v4f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x float> @llvm.amdgcn.struct.buffer.load.format.v4f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x float> %val
}

declare <4 x float> @llvm.amdgcn.struct.buffer.load.v4f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x float> @upgrade.struct.buffer.load.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x float> @llvm.amdgcn.struct.buffer.load.v4f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x float> @llvm.amdgcn.struct.buffer.load.v4f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x float> %val
}

declare <4 x float> @llvm.amdgcn.struct.tbuffer.load.v4f32(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs <4 x float> @upgrade.struct.tbuffer.load.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x float> @llvm.amdgcn.struct.tbuffer.load.v4f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x float> @llvm.amdgcn.struct.tbuffer.load.v4f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret <4 x float> %val
}

declare <4 x float> @llvm.amdgcn.tbuffer.load.v4f32(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs <4 x float> @upgrade.tbuffer.load.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x float> @llvm.amdgcn.tbuffer.load.v4f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call <4 x float> @llvm.amdgcn.tbuffer.load.v4f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret <4 x float> %val
}

declare <4 x half> @llvm.amdgcn.buffer.load.format.v4f16(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs <4 x half> @upgrade.buffer.load.format.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.format.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x half> @llvm.amdgcn.buffer.load.format.v4f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call <4 x half> @llvm.amdgcn.buffer.load.format.v4f16(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret <4 x half> %val
}

declare <4 x half> @llvm.amdgcn.raw.buffer.load.format.v4f16(<4 x i32>, i32, i32, i32)
define amdgpu_cs <4 x half> @upgrade.raw.buffer.load.format.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.format.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x half> @llvm.amdgcn.raw.buffer.load.format.v4f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <4 x half> @llvm.amdgcn.raw.buffer.load.format.v4f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <4 x half> %val
}

declare <4 x half> @llvm.amdgcn.raw.buffer.load.v4f16(<4 x i32>, i32, i32, i32)
define amdgpu_cs <4 x half> @upgrade.raw.buffer.load.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x half> @llvm.amdgcn.raw.buffer.load.v4f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <4 x half> @llvm.amdgcn.raw.buffer.load.v4f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <4 x half> %val
}

declare <4 x half> @llvm.amdgcn.raw.tbuffer.load.v4f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x half> @upgrade.raw.tbuffer.load.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x half> @llvm.amdgcn.raw.tbuffer.load.v4f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x half> @llvm.amdgcn.raw.tbuffer.load.v4f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x half> %val
}

declare <4 x half> @llvm.amdgcn.s.buffer.load.v4f16(<4 x i32>, i32, i32)
define amdgpu_cs <4 x half> @upgrade.s.buffer.load.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x half> @llvm.amdgcn.s.buffer.load.v4f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <4 x half> @llvm.amdgcn.s.buffer.load.v4f16(<4 x i32> %rsrc, i32 0, i32 0)
  ret <4 x half> %val
}

declare <4 x half> @llvm.amdgcn.struct.buffer.load.format.v4f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x half> @upgrade.struct.buffer.load.format.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x half> @llvm.amdgcn.struct.buffer.load.format.v4f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x half> @llvm.amdgcn.struct.buffer.load.format.v4f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x half> %val
}

declare <4 x half> @llvm.amdgcn.struct.buffer.load.v4f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x half> @upgrade.struct.buffer.load.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x half> @llvm.amdgcn.struct.buffer.load.v4f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x half> @llvm.amdgcn.struct.buffer.load.v4f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x half> %val
}

declare <4 x half> @llvm.amdgcn.struct.tbuffer.load.v4f16(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs <4 x half> @upgrade.struct.tbuffer.load.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x half> @llvm.amdgcn.struct.tbuffer.load.v4f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x half> @llvm.amdgcn.struct.tbuffer.load.v4f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret <4 x half> %val
}

declare <4 x half> @llvm.amdgcn.tbuffer.load.v4f16(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs <4 x half> @upgrade.tbuffer.load.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x half> @llvm.amdgcn.tbuffer.load.v4f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call <4 x half> @llvm.amdgcn.tbuffer.load.v4f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret <4 x half> %val
}

declare <4 x i16> @llvm.amdgcn.raw.buffer.load.v4i16(<4 x i32>, i32, i32, i32)
define amdgpu_cs <4 x i16> @upgrade.raw.buffer.load.v4i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v4i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i16> @llvm.amdgcn.raw.buffer.load.v4i16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <4 x i16> @llvm.amdgcn.raw.buffer.load.v4i16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <4 x i16> %val
}

declare <4 x i16> @llvm.amdgcn.struct.buffer.load.v4i16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x i16> @upgrade.struct.buffer.load.v4i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v4i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i16> @llvm.amdgcn.struct.buffer.load.v4i16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x i16> @llvm.amdgcn.struct.buffer.load.v4i16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x i16> %val
}

declare { <4 x i32>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v4i32i32s(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs { <4 x i32>, i32 } @upgrade.struct.buffer.load.format.sl_v4i32i32s(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.sl_v4i32i32s
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call { <4 x i32>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v4i32i32s(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call { <4 x i32>, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_v4i32i32s(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret { <4 x i32>, i32 } %val
}

declare <4 x i32> @llvm.amdgcn.raw.buffer.load.v4i32(<4 x i32>, i32, i32, i32)
define amdgpu_cs <4 x i32> @upgrade.raw.buffer.load.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i32> @llvm.amdgcn.raw.buffer.load.v4i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <4 x i32> @llvm.amdgcn.raw.buffer.load.v4i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <4 x i32> %val
}

declare <4 x i32> @llvm.amdgcn.raw.tbuffer.load.v4i32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x i32> @upgrade.raw.tbuffer.load.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i32> @llvm.amdgcn.raw.tbuffer.load.v4i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x i32> @llvm.amdgcn.raw.tbuffer.load.v4i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x i32> %val
}

declare <4 x i32> @llvm.amdgcn.s.buffer.load.v4i32(<4 x i32>, i32, i32)
define amdgpu_cs <4 x i32> @upgrade.s.buffer.load.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i32> @llvm.amdgcn.s.buffer.load.v4i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <4 x i32> @llvm.amdgcn.s.buffer.load.v4i32(<4 x i32> %rsrc, i32 0, i32 0)
  ret <4 x i32> %val
}

declare <4 x i32> @llvm.amdgcn.struct.buffer.load.format.v4i32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x i32> @upgrade.struct.buffer.load.format.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i32> @llvm.amdgcn.struct.buffer.load.format.v4i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x i32> @llvm.amdgcn.struct.buffer.load.format.v4i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x i32> %val
}

declare <4 x i32> @llvm.amdgcn.struct.buffer.load.v4i32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x i32> @upgrade.struct.buffer.load.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i32> @llvm.amdgcn.struct.buffer.load.v4i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x i32> @llvm.amdgcn.struct.buffer.load.v4i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x i32> %val
}

declare <4 x i32> @llvm.amdgcn.struct.tbuffer.load.v4i32(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs <4 x i32> @upgrade.struct.tbuffer.load.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i32> @llvm.amdgcn.struct.tbuffer.load.v4i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x i32> @llvm.amdgcn.struct.tbuffer.load.v4i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret <4 x i32> %val
}

declare <4 x i32> @llvm.amdgcn.tbuffer.load.v4i32(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs <4 x i32> @upgrade.tbuffer.load.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i32> @llvm.amdgcn.tbuffer.load.v4i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call <4 x i32> @llvm.amdgcn.tbuffer.load.v4i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret <4 x i32> %val
}

declare <4 x i64> @llvm.amdgcn.s.buffer.load.v4i64(<4 x i32>, i32, i32)
define amdgpu_cs <4 x i64> @upgrade.s.buffer.load.v4i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v4i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i64> @llvm.amdgcn.s.buffer.load.v4i64(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <4 x i64> @llvm.amdgcn.s.buffer.load.v4i64(<4 x i32> %rsrc, i32 0, i32 0)
  ret <4 x i64> %val
}

declare <4 x i8> @llvm.amdgcn.raw.buffer.load.v4i8(<4 x i32>, i32, i32, i32)
define amdgpu_cs <4 x i8> @upgrade.raw.buffer.load.v4i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.v4i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i8> @llvm.amdgcn.raw.buffer.load.v4i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call <4 x i8> @llvm.amdgcn.raw.buffer.load.v4i8(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret <4 x i8> %val
}

declare <4 x i8> @llvm.amdgcn.s.buffer.load.v4i8(<4 x i32>, i32, i32)
define amdgpu_cs <4 x i8> @upgrade.s.buffer.load.v4i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v4i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i8> @llvm.amdgcn.s.buffer.load.v4i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <4 x i8> @llvm.amdgcn.s.buffer.load.v4i8(<4 x i32> %rsrc, i32 0, i32 0)
  ret <4 x i8> %val
}

declare <4 x i8> @llvm.amdgcn.struct.buffer.load.v4i8(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs <4 x i8> @upgrade.struct.buffer.load.v4i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.v4i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x i8> @llvm.amdgcn.struct.buffer.load.v4i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call <4 x i8> @llvm.amdgcn.struct.buffer.load.v4i8(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret <4 x i8> %val
}

declare <4 x ptr addrspace(1)> @llvm.amdgcn.s.buffer.load.v4p1(<4 x i32>, i32, i32)
define amdgpu_cs <4 x ptr addrspace(1)> @upgrade.s.buffer.load.v4p1(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v4p1
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <4 x ptr addrspace(1)> @llvm.amdgcn.s.buffer.load.v4p1(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <4 x ptr addrspace(1)> @llvm.amdgcn.s.buffer.load.v4p1(<4 x i32> %rsrc, i32 0, i32 0)
  ret <4 x ptr addrspace(1)> %val
}

declare <8 x float> @llvm.amdgcn.s.buffer.load.v8f32(<4 x i32>, i32, i32)
define amdgpu_cs <8 x float> @upgrade.s.buffer.load.v8f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v8f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <8 x float> @llvm.amdgcn.s.buffer.load.v8f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <8 x float> @llvm.amdgcn.s.buffer.load.v8f32(<4 x i32> %rsrc, i32 0, i32 0)
  ret <8 x float> %val
}

declare <8 x i32> @llvm.amdgcn.s.buffer.load.v8i32(<4 x i32>, i32, i32)
define amdgpu_cs <8 x i32> @upgrade.s.buffer.load.v8i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v8i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <8 x i32> @llvm.amdgcn.s.buffer.load.v8i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <8 x i32> @llvm.amdgcn.s.buffer.load.v8i32(<4 x i32> %rsrc, i32 0, i32 0)
  ret <8 x i32> %val
}

declare <8 x i64> @llvm.amdgcn.s.buffer.load.v8i64(<4 x i32>, i32, i32)
define amdgpu_cs <8 x i64> @upgrade.s.buffer.load.v8i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v8i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <8 x i64> @llvm.amdgcn.s.buffer.load.v8i64(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <8 x i64> @llvm.amdgcn.s.buffer.load.v8i64(<4 x i32> %rsrc, i32 0, i32 0)
  ret <8 x i64> %val
}

declare <8 x ptr addrspace(1)> @llvm.amdgcn.s.buffer.load.v8p1(<4 x i32>, i32, i32)
define amdgpu_cs <8 x ptr addrspace(1)> @upgrade.s.buffer.load.v8p1(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.v8p1
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call <8 x ptr addrspace(1)> @llvm.amdgcn.s.buffer.load.v8p1(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call <8 x ptr addrspace(1)> @llvm.amdgcn.s.buffer.load.v8p1(<4 x i32> %rsrc, i32 0, i32 0)
  ret <8 x ptr addrspace(1)> %val
}

declare double @llvm.amdgcn.buffer.atomic.fadd.f64(double, <4 x i32>, i32, i32, i1)
define amdgpu_cs double @upgrade.buffer.atomic.fadd.f64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.fadd.f64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call double @llvm.amdgcn.buffer.atomic.fadd.f64(double undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call double @llvm.amdgcn.buffer.atomic.fadd.f64(double undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret double %val
}

declare double @llvm.amdgcn.raw.buffer.atomic.fadd.f64(double, <4 x i32>, i32, i32, i32)
define amdgpu_cs double @upgrade.raw.buffer.atomic.fadd.f64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.fadd.f64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call double @llvm.amdgcn.raw.buffer.atomic.fadd.f64(double undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call double @llvm.amdgcn.raw.buffer.atomic.fadd.f64(double undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret double %val
}

declare double @llvm.amdgcn.raw.buffer.atomic.fmax.f64(double, <4 x i32>, i32, i32, i32)
define amdgpu_cs double @upgrade.raw.buffer.atomic.fmax.f64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.fmax.f64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call double @llvm.amdgcn.raw.buffer.atomic.fmax.f64(double undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call double @llvm.amdgcn.raw.buffer.atomic.fmax.f64(double undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret double %val
}

declare double @llvm.amdgcn.raw.buffer.atomic.fmin.f64(double, <4 x i32>, i32, i32, i32)
define amdgpu_cs double @upgrade.raw.buffer.atomic.fmin.f64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.fmin.f64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call double @llvm.amdgcn.raw.buffer.atomic.fmin.f64(double undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call double @llvm.amdgcn.raw.buffer.atomic.fmin.f64(double undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret double %val
}

declare double @llvm.amdgcn.struct.buffer.atomic.fadd.f64(double, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs double @upgrade.struct.buffer.atomic.fadd.f64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.fadd.f64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call double @llvm.amdgcn.struct.buffer.atomic.fadd.f64(double undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call double @llvm.amdgcn.struct.buffer.atomic.fadd.f64(double undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret double %val
}

declare double @llvm.amdgcn.struct.buffer.atomic.fmax.f64(double, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs double @upgrade.struct.buffer.atomic.fmax.f64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.fmax.f64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call double @llvm.amdgcn.struct.buffer.atomic.fmax.f64(double undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call double @llvm.amdgcn.struct.buffer.atomic.fmax.f64(double undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret double %val
}

declare double @llvm.amdgcn.struct.buffer.atomic.fmin.f64(double, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs double @upgrade.struct.buffer.atomic.fmin.f64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.fmin.f64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call double @llvm.amdgcn.struct.buffer.atomic.fmin.f64(double undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call double @llvm.amdgcn.struct.buffer.atomic.fmin.f64(double undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret double %val
}

declare { float, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_f32i32s(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs { float, i32 } @upgrade.struct.buffer.load.format.sl_f32i32s(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.sl_f32i32s
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call { float, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_f32i32s(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call { float, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_f32i32s(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret { float, i32 } %val
}

declare float @llvm.amdgcn.buffer.atomic.fadd.f32(float, <4 x i32>, i32, i32, i1)
define amdgpu_cs float @upgrade.buffer.atomic.fadd.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.fadd.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.buffer.atomic.fadd.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call float @llvm.amdgcn.buffer.atomic.fadd.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret float %val
}

declare float @llvm.amdgcn.buffer.load.f32(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs float @upgrade.buffer.load.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.buffer.load.f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call float @llvm.amdgcn.buffer.load.f32(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret float %val
}

declare float @llvm.amdgcn.buffer.load.format.f32(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs float @upgrade.buffer.load.format.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.format.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.buffer.load.format.f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call float @llvm.amdgcn.buffer.load.format.f32(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret float %val
}

declare float @llvm.amdgcn.raw.buffer.atomic.fadd.f32(float, <4 x i32>, i32, i32, i32)
define amdgpu_cs float @upgrade.raw.buffer.atomic.fadd.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.fadd.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.raw.buffer.atomic.fadd.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.raw.buffer.atomic.fadd.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.raw.buffer.atomic.fmax.f32(float, <4 x i32>, i32, i32, i32)
define amdgpu_cs float @upgrade.raw.buffer.atomic.fmax.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.fmax.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.raw.buffer.atomic.fmax.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.raw.buffer.atomic.fmax.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.raw.buffer.atomic.fmin.f32(float, <4 x i32>, i32, i32, i32)
define amdgpu_cs float @upgrade.raw.buffer.atomic.fmin.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.fmin.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.raw.buffer.atomic.fmin.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.raw.buffer.atomic.fmin.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.raw.buffer.atomic.swap.f32(float, <4 x i32>, i32, i32, i32)
define amdgpu_cs float @upgrade.raw.buffer.atomic.swap.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.swap.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.raw.buffer.atomic.swap.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.raw.buffer.atomic.swap.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.raw.buffer.load.f32(<4 x i32>, i32, i32, i32)
define amdgpu_cs float @upgrade.raw.buffer.load.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.raw.buffer.load.f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.raw.buffer.load.f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.raw.buffer.load.format.f32(<4 x i32>, i32, i32, i32)
define amdgpu_cs float @upgrade.raw.buffer.load.format.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.format.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.raw.buffer.load.format.f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.raw.buffer.load.format.f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.raw.tbuffer.load.f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs float @upgrade.raw.tbuffer.load.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.raw.tbuffer.load.f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.raw.tbuffer.load.f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.s.buffer.load.f32(<4 x i32>, i32, i32)
define amdgpu_cs float @upgrade.s.buffer.load.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.s.buffer.load.f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call float @llvm.amdgcn.s.buffer.load.f32(<4 x i32> %rsrc, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.struct.buffer.atomic.fadd.f32(float, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs float @upgrade.struct.buffer.atomic.fadd.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.fadd.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.struct.buffer.atomic.fadd.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.struct.buffer.atomic.fadd.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.struct.buffer.atomic.swap.f32(float, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs float @upgrade.struct.buffer.atomic.swap.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.swap.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.struct.buffer.atomic.swap.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.struct.buffer.atomic.swap.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.struct.buffer.load.f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs float @upgrade.struct.buffer.load.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.struct.buffer.load.f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.struct.buffer.load.f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.struct.buffer.load.format.f32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs float @upgrade.struct.buffer.load.format.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.struct.buffer.load.format.f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.struct.buffer.load.format.f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.struct.tbuffer.load.f32(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs float @upgrade.struct.tbuffer.load.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.struct.tbuffer.load.f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call float @llvm.amdgcn.struct.tbuffer.load.f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret float %val
}

declare float @llvm.amdgcn.tbuffer.load.f32(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs float @upgrade.tbuffer.load.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call float @llvm.amdgcn.tbuffer.load.f32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call float @llvm.amdgcn.tbuffer.load.f32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret float %val
}

declare half @llvm.amdgcn.buffer.load.format.f16(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs half @upgrade.buffer.load.format.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.format.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call half @llvm.amdgcn.buffer.load.format.f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call half @llvm.amdgcn.buffer.load.format.f16(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret half %val
}

declare half @llvm.amdgcn.raw.buffer.load.f16(<4 x i32>, i32, i32, i32)
define amdgpu_cs half @upgrade.raw.buffer.load.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call half @llvm.amdgcn.raw.buffer.load.f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call half @llvm.amdgcn.raw.buffer.load.f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret half %val
}

declare half @llvm.amdgcn.raw.buffer.load.format.f16(<4 x i32>, i32, i32, i32)
define amdgpu_cs half @upgrade.raw.buffer.load.format.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.format.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call half @llvm.amdgcn.raw.buffer.load.format.f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call half @llvm.amdgcn.raw.buffer.load.format.f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret half %val
}

declare half @llvm.amdgcn.raw.tbuffer.load.f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs half @upgrade.raw.tbuffer.load.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call half @llvm.amdgcn.raw.tbuffer.load.f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call half @llvm.amdgcn.raw.tbuffer.load.f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret half %val
}

declare half @llvm.amdgcn.s.buffer.load.f16(<4 x i32>, i32, i32)
define amdgpu_cs half @upgrade.s.buffer.load.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call half @llvm.amdgcn.s.buffer.load.f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call half @llvm.amdgcn.s.buffer.load.f16(<4 x i32> %rsrc, i32 0, i32 0)
  ret half %val
}

declare half @llvm.amdgcn.struct.buffer.load.f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs half @upgrade.struct.buffer.load.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call half @llvm.amdgcn.struct.buffer.load.f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call half @llvm.amdgcn.struct.buffer.load.f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret half %val
}

declare half @llvm.amdgcn.struct.buffer.load.format.f16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs half @upgrade.struct.buffer.load.format.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call half @llvm.amdgcn.struct.buffer.load.format.f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call half @llvm.amdgcn.struct.buffer.load.format.f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret half %val
}

declare half @llvm.amdgcn.struct.tbuffer.load.f16(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs half @upgrade.struct.tbuffer.load.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call half @llvm.amdgcn.struct.tbuffer.load.f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call half @llvm.amdgcn.struct.tbuffer.load.f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret half %val
}

declare half @llvm.amdgcn.tbuffer.load.f16(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs half @upgrade.tbuffer.load.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call half @llvm.amdgcn.tbuffer.load.f16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call half @llvm.amdgcn.tbuffer.load.f16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret half %val
}

declare i16 @llvm.amdgcn.buffer.load.i16(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs i16 @upgrade.buffer.load.i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i16 @llvm.amdgcn.buffer.load.i16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call i16 @llvm.amdgcn.buffer.load.i16(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret i16 %val
}

declare i16 @llvm.amdgcn.raw.buffer.load.i16(<4 x i32>, i32, i32, i32)
define amdgpu_cs i16 @upgrade.raw.buffer.load.i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i16 @llvm.amdgcn.raw.buffer.load.i16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i16 @llvm.amdgcn.raw.buffer.load.i16(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i16 %val
}

declare i16 @llvm.amdgcn.struct.buffer.load.format.i16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i16 @upgrade.struct.buffer.load.format.i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i16 @llvm.amdgcn.struct.buffer.load.format.i16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i16 @llvm.amdgcn.struct.buffer.load.format.i16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i16 %val
}

declare i16 @llvm.amdgcn.struct.buffer.load.i16(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i16 @upgrade.struct.buffer.load.i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i16 @llvm.amdgcn.struct.buffer.load.i16(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i16 @llvm.amdgcn.struct.buffer.load.i16(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i16 %val
}

declare i256 @llvm.amdgcn.s.buffer.load.i256(<4 x i32>, i32, i32)
define amdgpu_cs i256 @upgrade.s.buffer.load.i256(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.i256
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i256 @llvm.amdgcn.s.buffer.load.i256(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call i256 @llvm.amdgcn.s.buffer.load.i256(<4 x i32> %rsrc, i32 0, i32 0)
  ret i256 %val
}

declare { i32, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_i32i32s(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs { i32, i32 } @upgrade.struct.buffer.load.format.sl_i32i32s(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.sl_i32i32s
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call { i32, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_i32i32s(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call { i32, i32 } @llvm.amdgcn.struct.buffer.load.format.sl_i32i32s(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret { i32, i32 } %val
}

declare i32 @llvm.amdgcn.buffer.atomic.add.i32(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.add.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.add.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.add.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.add.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.and.i32(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.and.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.and.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.and.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.and.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.cmpswap(i32, i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.cmpswap(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.cmpswap
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.cmpswap(i32 undef, i32 0, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.cmpswap(i32 undef, i32 0, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.csub(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.csub(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.csub
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.csub.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.csub(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.or.i32(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.or.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.or.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.or.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.or.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.smax.i32(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.smax.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.smax.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.smax.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.smax.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.smin.i32(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.smin.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.smin.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.smin.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.smin.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.sub.i32(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.sub.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.sub.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.sub.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.sub.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.swap.i32(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.swap.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.swap.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.swap.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.swap.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.umax.i32(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.umax.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.umax.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.umax.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.umax.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.umin.i32(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.umin.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.umin.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.umin.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.umin.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.buffer.atomic.xor.i32(i32, <4 x i32>, i32, i32, i1)
define amdgpu_cs i32 @upgrade.buffer.atomic.xor.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.xor.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.buffer.atomic.xor.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i32 @llvm.amdgcn.buffer.atomic.xor.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.add.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.add.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.add.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.add.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.add.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.add(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.add(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.add
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.add.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.add(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.and.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.and.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.and.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.and.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.and.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.cmpswap.i32(i32, i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.cmpswap.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.cmpswap.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.cmpswap.i32(i32 undef, i32 0, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.cmpswap.i32(i32 undef, i32 0, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.dec.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.dec.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.dec.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.dec.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.dec.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.inc.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.inc.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.inc.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.inc.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.inc.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.or.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.or.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.or.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.or.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.or.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.smax.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.smax.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.smax.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.smax.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.smax.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.smin.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.smin.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.smin.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.smin.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.smin.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.sub.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.sub.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.sub.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.sub.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.sub.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.sub(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.sub(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.sub
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.sub.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.sub(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.swap.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.swap.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.swap.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.swap.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.swap.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.umax.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.umax.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.umax.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.umax.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.umax.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.umin.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.umin.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.umin.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.umin.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.umin.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.atomic.xor.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.atomic.xor.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.xor.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.atomic.xor.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.atomic.xor.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32>, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.buffer.load.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.buffer.load.i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.raw.tbuffer.load.i32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.raw.tbuffer.load.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.load.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.raw.tbuffer.load.i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.raw.tbuffer.load.i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.s.buffer.load.i32(<4 x i32>, i32, i32)
define amdgpu_cs i32 @upgrade.s.buffer.load.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.s.buffer.load.i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.s.buffer.load.i32(<4 x i32> %rsrc, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.add.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.add.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.add.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.add.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.add.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.add(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.add(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.add
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.add.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.add(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.and.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.and.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.and.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.and.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.and.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.cmpswap.i32(i32, i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.cmpswap.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.cmpswap.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.cmpswap.i32(i32 undef, i32 0, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.cmpswap.i32(i32 undef, i32 0, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.dec.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.dec.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.dec.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.dec.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.dec.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.inc.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.inc.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.inc.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.inc.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.inc.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.or.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.or.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.or.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.or.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.or.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.smax.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.smax.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.smax.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.smax.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.smax.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.smin.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.smin.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.smin.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.smin.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.smin.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.sub.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.sub.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.sub.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.sub.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.sub.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.sub(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.sub(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.sub
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.sub.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.sub(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.swap.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.swap.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.swap.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.swap.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.swap.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.umax.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.umax.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.umax.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.umax.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.umax.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.umin.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.umin.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.umin.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.umin.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.umin.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.atomic.xor.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.atomic.xor.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.xor.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.atomic.xor.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.atomic.xor.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.load.format.i32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.load.format.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.format.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.load.format.i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.load.format.i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.buffer.load.i32(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.buffer.load.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.buffer.load.i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.buffer.load.i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.struct.tbuffer.load.i32(<4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs i32 @upgrade.struct.tbuffer.load.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.load.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.struct.tbuffer.load.i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  %val = call i32 @llvm.amdgcn.struct.tbuffer.load.i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret i32 %val
}

declare i32 @llvm.amdgcn.tbuffer.load.i32(<4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs i32 @upgrade.tbuffer.load.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.load.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i32 @llvm.amdgcn.tbuffer.load.i32(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  %val = call i32 @llvm.amdgcn.tbuffer.load.i32(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret i32 %val
}

declare i512 @llvm.amdgcn.s.buffer.load.i512(<4 x i32>, i32, i32)
define amdgpu_cs i512 @upgrade.s.buffer.load.i512(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.i512
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i512 @llvm.amdgcn.s.buffer.load.i512(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call i512 @llvm.amdgcn.s.buffer.load.i512(<4 x i32> %rsrc, i32 0, i32 0)
  ret i512 %val
}

declare i64 @llvm.amdgcn.buffer.atomic.add.i64(i64, <4 x i32>, i32, i32, i1)
define amdgpu_cs i64 @upgrade.buffer.atomic.add.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.add.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.buffer.atomic.add.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i64 @llvm.amdgcn.buffer.atomic.add.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i64 %val
}

declare i64 @llvm.amdgcn.buffer.atomic.and.i64(i64, <4 x i32>, i32, i32, i1)
define amdgpu_cs i64 @upgrade.buffer.atomic.and.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.and.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.buffer.atomic.and.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i64 @llvm.amdgcn.buffer.atomic.and.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i64 %val
}

declare i64 @llvm.amdgcn.buffer.atomic.or.i64(i64, <4 x i32>, i32, i32, i1)
define amdgpu_cs i64 @upgrade.buffer.atomic.or.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.or.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.buffer.atomic.or.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i64 @llvm.amdgcn.buffer.atomic.or.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i64 %val
}

declare i64 @llvm.amdgcn.buffer.atomic.smax.i64(i64, <4 x i32>, i32, i32, i1)
define amdgpu_cs i64 @upgrade.buffer.atomic.smax.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.smax.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.buffer.atomic.smax.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i64 @llvm.amdgcn.buffer.atomic.smax.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i64 %val
}

declare i64 @llvm.amdgcn.buffer.atomic.smin.i64(i64, <4 x i32>, i32, i32, i1)
define amdgpu_cs i64 @upgrade.buffer.atomic.smin.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.smin.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.buffer.atomic.smin.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i64 @llvm.amdgcn.buffer.atomic.smin.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i64 %val
}

declare i64 @llvm.amdgcn.buffer.atomic.sub.i64(i64, <4 x i32>, i32, i32, i1)
define amdgpu_cs i64 @upgrade.buffer.atomic.sub.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.sub.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.buffer.atomic.sub.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i64 @llvm.amdgcn.buffer.atomic.sub.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i64 %val
}

declare i64 @llvm.amdgcn.buffer.atomic.swap.i64(i64, <4 x i32>, i32, i32, i1)
define amdgpu_cs i64 @upgrade.buffer.atomic.swap.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.swap.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.buffer.atomic.swap.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i64 @llvm.amdgcn.buffer.atomic.swap.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i64 %val
}

declare i64 @llvm.amdgcn.buffer.atomic.umax.i64(i64, <4 x i32>, i32, i32, i1)
define amdgpu_cs i64 @upgrade.buffer.atomic.umax.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.umax.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.buffer.atomic.umax.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i64 @llvm.amdgcn.buffer.atomic.umax.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i64 %val
}

declare i64 @llvm.amdgcn.buffer.atomic.umin.i64(i64, <4 x i32>, i32, i32, i1)
define amdgpu_cs i64 @upgrade.buffer.atomic.umin.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.umin.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.buffer.atomic.umin.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i64 @llvm.amdgcn.buffer.atomic.umin.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i64 %val
}

declare i64 @llvm.amdgcn.buffer.atomic.xor.i64(i64, <4 x i32>, i32, i32, i1)
define amdgpu_cs i64 @upgrade.buffer.atomic.xor.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.atomic.xor.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.buffer.atomic.xor.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false)
  %val = call i64 @llvm.amdgcn.buffer.atomic.xor.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false)
  ret i64 %val
}

declare i64 @llvm.amdgcn.raw.buffer.atomic.add.i64(i64, <4 x i32>, i32, i32, i32)
define amdgpu_cs i64 @upgrade.raw.buffer.atomic.add.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.add.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.raw.buffer.atomic.add.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i64 @llvm.amdgcn.raw.buffer.atomic.add.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i64 %val
}

declare i64 @llvm.amdgcn.raw.buffer.atomic.cmpswap.i64(i64, i64, <4 x i32>, i32, i32, i32)
define amdgpu_cs i64 @upgrade.raw.buffer.atomic.cmpswap.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.atomic.cmpswap.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.raw.buffer.atomic.cmpswap.i64(i64 undef, i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i64 @llvm.amdgcn.raw.buffer.atomic.cmpswap.i64(i64 undef, i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i64 %val
}

declare i64 @llvm.amdgcn.struct.buffer.atomic.add.i64(i64, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i64 @upgrade.struct.buffer.atomic.add.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.add.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.struct.buffer.atomic.add.i64(i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i64 @llvm.amdgcn.struct.buffer.atomic.add.i64(i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i64 %val
}

declare i64 @llvm.amdgcn.struct.buffer.atomic.cmpswap.i64(i64, i64, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i64 @upgrade.struct.buffer.atomic.cmpswap.i64(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.atomic.cmpswap.i64
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i64 @llvm.amdgcn.struct.buffer.atomic.cmpswap.i64(i64 undef, i64 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i64 @llvm.amdgcn.struct.buffer.atomic.cmpswap.i64(i64 undef, i64 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i64 %val
}

declare i8 @llvm.amdgcn.buffer.load.i8(<4 x i32>, i32, i32, i1, i1)
define amdgpu_cs i8 @upgrade.buffer.load.i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.load.i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i8 @llvm.amdgcn.buffer.load.i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  %val = call i8 @llvm.amdgcn.buffer.load.i8(<4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret i8 %val
}

declare i8 @llvm.amdgcn.raw.buffer.load.i8(<4 x i32>, i32, i32, i32)
define amdgpu_cs i8 @upgrade.raw.buffer.load.i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i8 @llvm.amdgcn.raw.buffer.load.i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  %val = call i8 @llvm.amdgcn.raw.buffer.load.i8(<4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret i8 %val
}

declare i8 @llvm.amdgcn.s.buffer.load.i8(<4 x i32>, i32, i32)
define amdgpu_cs i8 @upgrade.s.buffer.load.i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i8 @llvm.amdgcn.s.buffer.load.i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call i8 @llvm.amdgcn.s.buffer.load.i8(<4 x i32> %rsrc, i32 0, i32 0)
  ret i8 %val
}

declare i8 @llvm.amdgcn.struct.buffer.load.i8(<4 x i32>, i32, i32, i32, i32)
define amdgpu_cs i8 @upgrade.struct.buffer.load.i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i8 @llvm.amdgcn.struct.buffer.load.i8(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  %val = call i8 @llvm.amdgcn.struct.buffer.load.i8(<4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret i8 %val
}

declare i96 @llvm.amdgcn.s.buffer.load.i96(<4 x i32>, i32, i32)
define amdgpu_cs i96 @upgrade.s.buffer.load.i96(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.s.buffer.load.i96
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: %val = call i96 @llvm.amdgcn.s.buffer.load.i96(ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0)
  %val = call i96 @llvm.amdgcn.s.buffer.load.i96(<4 x i32> %rsrc, i32 0, i32 0)
  ret i96 %val
}

declare void @llvm.amdgcn.buffer.store.f32(float, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.format.f16(half, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.format.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.format.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.format.f16(half undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.format.f16(half undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.format.f32(float, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.format.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.format.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.format.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.format.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.format.v2f16(<2 x half>, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.format.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.format.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.format.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.format.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.format.v2f32(<2 x float>, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.format.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.format.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.format.v2f32(<2 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.format.v2f32(<2 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.format.v3f16(<3 x half>, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.format.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.format.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.format.v3f16(<3 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.format.v3f16(<3 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.format.v3f32(<3 x float>, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.format.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.format.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.format.v3f32(<3 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.format.v3f32(<3 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.format.v4f16(<4 x half>, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.format.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.format.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.format.v4f16(<4 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.format.v4f16(<4 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.format.v4f32(<4 x float>, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.format.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.format.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.format.v4f32(<4 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.format.v4f32(<4 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.i16(i16, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.i16(i16 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.i16(i16 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.i8(i8, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.i8(i8 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.i8(i8 undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.v2f32(<2 x float>, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.v2f32(<2 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.v2f32(<2 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.v3f32(<3 x float>, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.v3f32(<3 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.v3f32(<3 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.buffer.store.v4f32(<4 x float>, <4 x i32>, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.buffer.store.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.buffer.store.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.buffer.store.v4f32(<4 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.buffer.store.v4f32(<4 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.load.lds(<4 x i32>, ptr addrspace(3), i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.load.lds(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.load.lds
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.load.lds(ptr addrspace(8) %.rsrc.as.ptr, ptr addrspace(3) undef, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.load.lds(<4 x i32> %rsrc, ptr addrspace(3) undef, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.f16(half, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.f16(half undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.f16(half undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.f32(float, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.format.f16(half, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.format.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.format.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.format.f16(half undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.format.f16(half undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.format.f32(float, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.format.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.format.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.format.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.format.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.format.v2f16(<2 x half>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.format.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.format.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.format.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.format.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.format.v2f32(<2 x float>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.format.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.format.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.format.v2f32(<2 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.format.v2f32(<2 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.format.v3f16(<3 x half>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.format.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.format.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.format.v3f16(<3 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.format.v3f16(<3 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.format.v3f32(<3 x float>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.format.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.format.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.format.v3f32(<3 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.format.v3f32(<3 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.format.v4f16(<4 x half>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.format.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.format.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.format.v4f16(<4 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.format.v4f16(<4 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.format.v4f32(<4 x float>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.format.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.format.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.format.v4f32(<4 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.format.v4f32(<4 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.i16(i16, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.i16(i16 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.i16(i16 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.i32(i32, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.i8(i8, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.i8(i8 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.i8(i8 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.v2f16(<2 x half>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.v2f32(<2 x float>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.v2f32(<2 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.v2f32(<2 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.v2i16(<2 x i16>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.v2i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.v2i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.v2i16(<2 x i16> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.v2i16(<2 x i16> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.v2i32(<2 x i32>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.v2i32(<2 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.v2i32(<2 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.v3f32(<3 x float>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.v3f32(<3 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.v3f32(<3 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.v3i32(<3 x i32>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.v3i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.v3i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.v3i32(<3 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.v3i32(<3 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.v4f16(<4 x half>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.v4f16(<4 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.v4f16(<4 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.v4f32(<4 x float>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.v4f32(<4 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.v4f32(<4 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.v4i16(<4 x i16>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.v4i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.v4i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.v4i16(<4 x i16> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.v4i16(<4 x i16> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.buffer.store.v4i32(<4 x i32>, <4 x i32>, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.buffer.store.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.buffer.store.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.buffer.store.v4i32(<4 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.buffer.store.v4i32(<4 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.f16(half, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.f16(half undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.f16(half undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.f32(float, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.i8(i8, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.i8(i8 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.i8(i8 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.v2f16(<2 x half>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.v2f32(<2 x float>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.v2f32(<2 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.v2f32(<2 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.v2i32(<2 x i32>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.v2i32(<2 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.v2i32(<2 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.v3f16(<3 x half>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.v3f16(<3 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.v3f16(<3 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.v3f32(<3 x float>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.v3f32(<3 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.v3f32(<3 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.v3i32(<3 x i32>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.v3i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.v3i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.v3i32(<3 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.v3i32(<3 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.v4f16(<4 x half>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.v4f16(<4 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.v4f16(<4 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.v4f32(<4 x float>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.v4f32(<4 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.v4f32(<4 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.raw.tbuffer.store.v4i32(<4 x i32>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.raw.tbuffer.store.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.raw.tbuffer.store.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.raw.tbuffer.store.v4i32(<4 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.raw.tbuffer.store.v4i32(<4 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.load.lds(<4 x i32>, ptr addrspace(3), i32, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.load.lds(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.load.lds
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.load.lds(ptr addrspace(8) %.rsrc.as.ptr, ptr addrspace(3) undef, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.load.lds(<4 x i32> %rsrc, ptr addrspace(3) undef, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.f16(half, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.f16(half undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.f16(half undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.f32(float, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.f16(half, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.f16(half undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.f16(half undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.f32(float, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.f32(float undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.f32(float undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.i16(i16, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.i16(i16 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.i16(i16 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.v2f16(<2 x half>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.v2f32(<2 x float>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.v2f32(<2 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.v2f32(<2 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.v3f16(<3 x half>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.v3f16(<3 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.v3f16(<3 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.v3f32(<3 x float>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.v3f32(<3 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.v3f32(<3 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.v4f16(<4 x half>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.v4f16(<4 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.v4f16(<4 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.v4f32(<4 x float>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.v4f32(<4 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.v4f32(<4 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.format.v4i32(<4 x i32>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.format.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.format.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.format.v4i32(<4 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.format.v4i32(<4 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.i16(i16, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.i16(i16 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.i16(i16 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.i32(i32, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.i8(i8, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.i8(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.i8
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.i8(i8 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.i8(i8 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.v2f16(<2 x half>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.v2f32(<2 x float>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.v2f32(<2 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.v2f32(<2 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.v2i16(<2 x i16>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.v2i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.v2i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.v2i16(<2 x i16> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.v2i16(<2 x i16> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.v2i32(<2 x i32>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.v2i32(<2 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.v2i32(<2 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.v3f16(<3 x half>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.v3f16(<3 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.v3f16(<3 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.v3f32(<3 x float>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.v3f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.v3f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.v3f32(<3 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.v3f32(<3 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.v4f16(<4 x half>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.v4f16(<4 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.v4f16(<4 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.v4f32(<4 x float>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.v4f32(<4 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.v4f32(<4 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.v4i16(<4 x i16>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.v4i16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.v4i16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.v4i16(<4 x i16> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.v4i16(<4 x i16> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.buffer.store.v4i32(<4 x i32>, <4 x i32>, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.buffer.store.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.buffer.store.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.buffer.store.v4i32(<4 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.buffer.store.v4i32(<4 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.tbuffer.store.f16(half, <4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.tbuffer.store.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.store.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.tbuffer.store.f16(half undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.tbuffer.store.f16(half undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.tbuffer.store.i32(i32, <4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.tbuffer.store.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.store.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.tbuffer.store.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.tbuffer.store.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.tbuffer.store.v2f16(<2 x half>, <4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.tbuffer.store.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.store.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.tbuffer.store.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.tbuffer.store.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.tbuffer.store.v2f32(<2 x float>, <4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.tbuffer.store.v2f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.store.v2f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.tbuffer.store.v2f32(<2 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.tbuffer.store.v2f32(<2 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.tbuffer.store.v2i32(<2 x i32>, <4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.tbuffer.store.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.store.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.tbuffer.store.v2i32(<2 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.tbuffer.store.v2i32(<2 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.tbuffer.store.v3f16(<3 x half>, <4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.tbuffer.store.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.store.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.tbuffer.store.v3f16(<3 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.tbuffer.store.v3f16(<3 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.tbuffer.store.v3i32(<3 x i32>, <4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.tbuffer.store.v3i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.store.v3i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.tbuffer.store.v3i32(<3 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.tbuffer.store.v3i32(<3 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.tbuffer.store.v4f16(<4 x half>, <4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.tbuffer.store.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.store.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.tbuffer.store.v4f16(<4 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.tbuffer.store.v4f16(<4 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.tbuffer.store.v4f32(<4 x float>, <4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.tbuffer.store.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.store.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.tbuffer.store.v4f32(<4 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.tbuffer.store.v4f32(<4 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.struct.tbuffer.store.v4i32(<4 x i32>, <4 x i32>, i32, i32, i32, i32, i32)
define amdgpu_cs void @upgrade.struct.tbuffer.store.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.struct.tbuffer.store.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.struct.tbuffer.store.v4i32(<4 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0)
  call void @llvm.amdgcn.struct.tbuffer.store.v4i32(<4 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare void @llvm.amdgcn.tbuffer.store.f16(half, <4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.tbuffer.store.f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.store.f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.tbuffer.store.f16(half undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.tbuffer.store.f16(half undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.tbuffer.store.i32(i32, <4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.tbuffer.store.i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.store.i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.tbuffer.store.i32(i32 undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.tbuffer.store.i32(i32 undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.tbuffer.store.v2f16(<2 x half>, <4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.tbuffer.store.v2f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.store.v2f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.tbuffer.store.v2f16(<2 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.tbuffer.store.v2f16(<2 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.tbuffer.store.v2i32(<2 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.tbuffer.store.v2i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.store.v2i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.tbuffer.store.v2i32(<2 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.tbuffer.store.v2i32(<2 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.tbuffer.store.v3f16(<3 x half>, <4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.tbuffer.store.v3f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.store.v3f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.tbuffer.store.v3f16(<3 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.tbuffer.store.v3f16(<3 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.tbuffer.store.v3i32(<3 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.tbuffer.store.v3i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.store.v3i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.tbuffer.store.v3i32(<3 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.tbuffer.store.v3i32(<3 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.tbuffer.store.v4f16(<4 x half>, <4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.tbuffer.store.v4f16(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.store.v4f16
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.tbuffer.store.v4f16(<4 x half> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.tbuffer.store.v4f16(<4 x half> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.tbuffer.store.v4f32(<4 x float>, <4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.tbuffer.store.v4f32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.store.v4f32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.tbuffer.store.v4f32(<4 x float> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.tbuffer.store.v4f32(<4 x float> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret void
}

declare void @llvm.amdgcn.tbuffer.store.v4i32(<4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i1, i1)
define amdgpu_cs void @upgrade.tbuffer.store.v4i32(<4 x i32> %rsrc) {
; CHECK-LABEL: @upgrade.tbuffer.store.v4i32
; CHECK: %.rsrc.as.int = bitcast <4 x i32> %rsrc to i128
; CHECK: %.rsrc.as.ptr = inttoptr i128 %.rsrc.as.int to ptr addrspace(8)
; CHECK: call void @llvm.amdgcn.tbuffer.store.v4i32(<4 x i32> undef, ptr addrspace(8) %.rsrc.as.ptr, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  call void @llvm.amdgcn.tbuffer.store.v4i32(<4 x i32> undef, <4 x i32> %rsrc, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i1 false, i1 false)
  ret void
}

