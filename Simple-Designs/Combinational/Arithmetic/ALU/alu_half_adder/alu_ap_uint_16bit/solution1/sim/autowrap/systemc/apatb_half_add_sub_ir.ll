; ModuleID = 'C:/Users/kwokt/HLS-Models/Simple-Designs/Combinational/Arithmetic/ALU/alu_half_adder/alu_ap_uint_16bit/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }

; Function Attrs: noinline
define void @apatb_half_add_sub_ir(%"struct.ap_uint<16>"* nocapture readonly %A, %"struct.ap_uint<16>"* nocapture readonly %B, %"struct.ap_uint<16>"* noalias nonnull dereferenceable(2) %sum, %"struct.ap_uint<16>"* noalias nonnull dereferenceable(2) %carry, i32 %op) local_unnamed_addr #0 {
entry:
  %sum_copy = alloca i16, align 512
  %carry_copy = alloca i16, align 512
  call fastcc void @copy_in(%"struct.ap_uint<16>"* nonnull %sum, i16* nonnull align 512 %sum_copy, %"struct.ap_uint<16>"* nonnull %carry, i16* nonnull align 512 %carry_copy)
  call void @apatb_half_add_sub_hw(%"struct.ap_uint<16>"* %A, %"struct.ap_uint<16>"* %B, i16* %sum_copy, i16* %carry_copy, i32 %op)
  call void @copy_back(%"struct.ap_uint<16>"* %sum, i16* %sum_copy, %"struct.ap_uint<16>"* %carry, i16* %carry_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_uint<16>"* noalias readonly "unpacked"="0", i16* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_uint<16>"* noalias readonly "unpacked"="2", i16* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>.9"(i16* align 512 %1, %"struct.ap_uint<16>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>.9"(i16* align 512 %3, %"struct.ap_uint<16>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_uint<16>"* noalias "unpacked"="0", i16* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<16>"* noalias "unpacked"="2", i16* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* %0, i16* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* %2, i16* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* noalias "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<16>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src, align 512
  store i16 %1, i16* %dst.0.0.04, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>.9"(i16* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<16>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<16>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.0.0.03, align 2
  store i16 %1, i16* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_half_add_sub_hw(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, i16*, i16*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_uint<16>"* noalias "unpacked"="0", i16* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<16>"* noalias "unpacked"="2", i16* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* %0, i16* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* %2, i16* align 512 %3)
  ret void
}

define void @half_add_sub_hw_stub_wrapper(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, i16*, i16*, i32) #4 {
entry:
  %5 = alloca %"struct.ap_uint<16>"
  %6 = alloca %"struct.ap_uint<16>"
  call void @copy_out(%"struct.ap_uint<16>"* %5, i16* %2, %"struct.ap_uint<16>"* %6, i16* %3)
  call void @half_add_sub_hw_stub(%"struct.ap_uint<16>"* %0, %"struct.ap_uint<16>"* %1, %"struct.ap_uint<16>"* %5, %"struct.ap_uint<16>"* %6, i32 %4)
  call void @copy_in(%"struct.ap_uint<16>"* %5, i16* %2, %"struct.ap_uint<16>"* %6, i16* %3)
  ret void
}

declare void @half_add_sub_hw_stub(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
