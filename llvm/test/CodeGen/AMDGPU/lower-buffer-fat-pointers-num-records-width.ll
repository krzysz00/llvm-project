; RUN: not --crash opt -S -passes=amdgpu-lower-buffer-fat-pointers -mtriple=amdgpu9.00-- -mattr=+unaligned-access-mode < %s
; RUN: not --crash opt -S -passes=amdgpu-lower-buffer-fat-pointers -mtriple=amdgpu12.50-- -mattr=+unaligned-access-mode < %s

; Ensure that "this isn't out of bounds" tests work correctly even when
; when size manipulation is needed.

define <8 x half> @bound_i64_2p44(ptr addrspace(1) inreg %ptr, i32 %off) {
  %buf = call ptr addrspace(8) @llvm.amdgcn.make.buffer.rsrc.p8.p1.i64(ptr addrspace(1) %ptr, i16 0, i64 17592186044416, i32 0)
  %p = addrspacecast ptr addrspace(8) %buf to ptr addrspace(7)
  %off.clamped = call i32 @llvm.umin.i32(i32 %off, i32 1024)
  %q = getelementptr i8, ptr addrspace(7) %p, i32 %off.clamped
  %ret = load <8 x half>, ptr addrspace(7) %q, align 2
  ret <8 x half> %ret
}

define <8 x half> @bound_i45_2p44(ptr addrspace(1) inreg %ptr, i32 %off) {
  %buf = call ptr addrspace(8) @llvm.amdgcn.make.buffer.rsrc.p8.p1.i45(ptr addrspace(1) %ptr, i16 0, i45 17592186044416, i32 0)
  %p = addrspacecast ptr addrspace(8) %buf to ptr addrspace(7)
  %off.clamped = call i32 @llvm.umin.i32(i32 %off, i32 1024)
  %q = getelementptr i8, ptr addrspace(7) %p, i32 %off.clamped
  %ret = load <8 x half>, ptr addrspace(7) %q, align 2
  ret <8 x half> %ret
}

define <8 x half> @bound_i32_2p31(ptr addrspace(1) inreg %ptr, i32 %off) {
  %buf = call ptr addrspace(8) @llvm.amdgcn.make.buffer.rsrc.p8.p1.i32(ptr addrspace(1) %ptr, i16 0, i32 2147483648, i32 0)
  %p = addrspacecast ptr addrspace(8) %buf to ptr addrspace(7)
  %off.clamped = call i32 @llvm.umin.i32(i32 %off, i32 1024)
  %q = getelementptr i8, ptr addrspace(7) %p, i32 %off.clamped
  %ret = load <8 x half>, ptr addrspace(7) %q, align 2
  ret <8 x half> %ret
}

define <8 x half> @bound_i16(ptr addrspace(1) inreg %ptr, i32 %off) {
  %buf = call ptr addrspace(8) @llvm.amdgcn.make.buffer.rsrc.p8.p1.i16(ptr addrspace(1) %ptr, i16 0, i16 -1, i32 0)
  %p = addrspacecast ptr addrspace(8) %buf to ptr addrspace(7)
  %off.clamped = call i32 @llvm.umin.i32(i32 %off, i32 1024)
  %q = getelementptr i8, ptr addrspace(7) %p, i32 %off.clamped
  %ret = load <8 x half>, ptr addrspace(7) %q, align 2
  ret <8 x half> %ret
}

;; The two tests below use num_records values that are equal modulo 2^32 but
;; that differ as 45-bit quantities, with a maximum offset that falls between
;; those two bounds. Therefore, on targets with a 32-bit num_records, both
;; loads can be partially out of bounds and must be scalarized, while on
;; targets with a 45-bit num_records, only the i32 one can be.

define <8 x half> @bound_i32_2p11(ptr addrspace(1) inreg %ptr, i32 %off) {
  %buf = call ptr addrspace(8) @llvm.amdgcn.make.buffer.rsrc.p8.p1.i32(ptr addrspace(1) %ptr, i16 0, i32 2048, i32 0)
  %p = addrspacecast ptr addrspace(8) %buf to ptr addrspace(7)
  %off.clamped = call i32 @llvm.umin.i32(i32 %off, i32 4096)
  %q = getelementptr i8, ptr addrspace(7) %p, i32 %off.clamped
  %ret = load <8 x half>, ptr addrspace(7) %q, align 2
  ret <8 x half> %ret
}

define <8 x half> @bound_i45_2p32_plus_2p11(ptr addrspace(1) inreg %ptr, i32 %off) {
  %buf = call ptr addrspace(8) @llvm.amdgcn.make.buffer.rsrc.p8.p1.i45(ptr addrspace(1) %ptr, i16 0, i45 4294969344, i32 0)
  %p = addrspacecast ptr addrspace(8) %buf to ptr addrspace(7)
  %off.clamped = call i32 @llvm.umin.i32(i32 %off, i32 4096)
  %q = getelementptr i8, ptr addrspace(7) %p, i32 %off.clamped
  %ret = load <8 x half>, ptr addrspace(7) %q, align 2
  ret <8 x half> %ret
}

!llvm.module.flags = !{!0}
;; Strict buffer OOB mode
!0 = !{i32 7, !"amdgpu.buffer.oob.mode", i32 2}
