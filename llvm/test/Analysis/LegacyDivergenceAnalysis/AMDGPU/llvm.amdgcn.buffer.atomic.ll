;RUN: opt -mtriple=amdgcn-mesa-mesa3d -passes='print<divergence>' 2>&1 -disable-output %s | FileCheck %s

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.swap.i32(
define float @buffer_atomic_swap(ptr addrspace(8) inreg %rsrc, i32 inreg %data) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.swap.i32(i32 %data, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.add.i32(
define float @buffer_atomic_add(ptr addrspace(8) inreg %rsrc, i32 inreg %data) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.add.i32(i32 %data, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.sub.i32(
define float @buffer_atomic_sub(ptr addrspace(8) inreg %rsrc, i32 inreg %data) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.sub.i32(i32 %data, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.smin.i32(
define float @buffer_atomic_smin(ptr addrspace(8) inreg %rsrc, i32 inreg %data) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.smin.i32(i32 %data, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.umin.i32(
define float @buffer_atomic_umin(ptr addrspace(8) inreg %rsrc, i32 inreg %data) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.umin.i32(i32 %data, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.smax.i32(
define float @buffer_atomic_smax(ptr addrspace(8) inreg %rsrc, i32 inreg %data) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.smax.i32(i32 %data, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.umax.i32(
define float @buffer_atomic_umax(ptr addrspace(8) inreg %rsrc, i32 inreg %data) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.umax.i32(i32 %data, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.and.i32(
define float @buffer_atomic_and(ptr addrspace(8) inreg %rsrc, i32 inreg %data) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.and.i32(i32 %data, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.or.i32(
define float @buffer_atomic_or(ptr addrspace(8) inreg %rsrc, i32 inreg %data) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.or.i32(i32 %data, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.xor.i32(
define float @buffer_atomic_xor(ptr addrspace(8) inreg %rsrc, i32 inreg %data) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.xor.i32(i32 %data, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

;CHECK: DIVERGENT: %orig = call i32 @llvm.amdgcn.buffer.atomic.cmpswap(
define float @buffer_atomic_cmpswap(ptr addrspace(8) inreg %rsrc, i32 inreg %data, i32 inreg %cmp) #0 {
main_body:
  %orig = call i32 @llvm.amdgcn.buffer.atomic.cmpswap(i32 %data, i32 %cmp, ptr addrspace(8) %rsrc, i32 0, i32 0, i1 0)
  %r = bitcast i32 %orig to float
  ret float %r
}

declare i32 @llvm.amdgcn.buffer.atomic.swap.i32(i32, ptr addrspace(8), i32, i32, i1) #0
declare i32 @llvm.amdgcn.buffer.atomic.add.i32(i32, ptr addrspace(8), i32, i32, i1) #0
declare i32 @llvm.amdgcn.buffer.atomic.sub.i32(i32, ptr addrspace(8), i32, i32, i1) #0
declare i32 @llvm.amdgcn.buffer.atomic.smin.i32(i32, ptr addrspace(8), i32, i32, i1) #0
declare i32 @llvm.amdgcn.buffer.atomic.umin.i32(i32, ptr addrspace(8), i32, i32, i1) #0
declare i32 @llvm.amdgcn.buffer.atomic.smax.i32(i32, ptr addrspace(8), i32, i32, i1) #0
declare i32 @llvm.amdgcn.buffer.atomic.umax.i32(i32, ptr addrspace(8), i32, i32, i1) #0
declare i32 @llvm.amdgcn.buffer.atomic.and.i32(i32, ptr addrspace(8), i32, i32, i1) #0
declare i32 @llvm.amdgcn.buffer.atomic.or.i32(i32, ptr addrspace(8), i32, i32, i1) #0
declare i32 @llvm.amdgcn.buffer.atomic.xor.i32(i32, ptr addrspace(8), i32, i32, i1) #0
declare i32 @llvm.amdgcn.buffer.atomic.cmpswap(i32, i32, ptr addrspace(8), i32, i32, i1) #0

attributes #0 = { nounwind }
