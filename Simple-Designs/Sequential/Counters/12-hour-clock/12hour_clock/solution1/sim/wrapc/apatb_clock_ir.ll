; ModuleID = 'C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Counters/12-hour-clock/12hour_clock/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline willreturn
define void @apatb_clock_ir(%"struct.ap_uint<1>"* noalias nocapture nonnull readonly dereferenceable(1) %reset, %"struct.ap_uint<1>"* noalias nocapture nonnull readonly dereferenceable(1) %ena, %"struct.ap_uint<8>"* noalias nocapture nonnull dereferenceable(1) %hh, %"struct.ap_uint<8>"* noalias nocapture nonnull dereferenceable(1) %mm, %"struct.ap_uint<8>"* noalias nocapture nonnull dereferenceable(1) %ss, %"struct.ap_uint<1>"* noalias nocapture nonnull dereferenceable(1) %pm) local_unnamed_addr #0 {
entry:
  %reset_copy = alloca i1, align 512
  %ena_copy = alloca i1, align 512
  %hh_copy = alloca i8, align 512
  %mm_copy = alloca i8, align 512
  %ss_copy = alloca i8, align 512
  %pm_copy = alloca i1, align 512
  call fastcc void @copy_in(%"struct.ap_uint<1>"* nonnull %reset, i1* nonnull align 512 %reset_copy, %"struct.ap_uint<1>"* nonnull %ena, i1* nonnull align 512 %ena_copy, %"struct.ap_uint<8>"* nonnull %hh, i8* nonnull align 512 %hh_copy, %"struct.ap_uint<8>"* nonnull %mm, i8* nonnull align 512 %mm_copy, %"struct.ap_uint<8>"* nonnull %ss, i8* nonnull align 512 %ss_copy, %"struct.ap_uint<1>"* nonnull %pm, i1* nonnull align 512 %pm_copy)
  call void @apatb_clock_hw(i1* %reset_copy, i1* %ena_copy, i8* %hh_copy, i8* %mm_copy, i8* %ss_copy, i1* %pm_copy)
  call void @copy_back(%"struct.ap_uint<1>"* %reset, i1* %reset_copy, %"struct.ap_uint<1>"* %ena, i1* %ena_copy, %"struct.ap_uint<8>"* %hh, i8* %hh_copy, %"struct.ap_uint<8>"* %mm, i8* %mm_copy, %"struct.ap_uint<8>"* %ss, i8* %ss_copy, %"struct.ap_uint<1>"* %pm, i1* %pm_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_uint<1>"* noalias readonly "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_uint<1>"* noalias readonly "unpacked"="2", i1* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_uint<8>"* noalias readonly "unpacked"="4", i8* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_uint<8>"* noalias readonly "unpacked"="6", i8* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_uint<8>"* noalias readonly "unpacked"="8", i8* noalias nocapture align 512 "unpacked"="9.0", %"struct.ap_uint<1>"* noalias readonly "unpacked"="10", i1* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.19"(i1* align 512 %1, %"struct.ap_uint<1>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.19"(i1* align 512 %3, %"struct.ap_uint<1>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>.23"(i8* align 512 %5, %"struct.ap_uint<8>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>.23"(i8* align 512 %7, %"struct.ap_uint<8>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>.23"(i8* align 512 %9, %"struct.ap_uint<8>"* %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.19"(i1* align 512 %11, %"struct.ap_uint<1>"* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_uint<1>"* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<1>"* noalias "unpacked"="2", i1* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_uint<8>"* noalias "unpacked"="4", i8* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<8>"* noalias "unpacked"="6", i8* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_uint<8>"* noalias "unpacked"="8", i8* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_uint<1>"* noalias "unpacked"="10", i1* noalias nocapture readonly align 512 "unpacked"="11.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %0, i1* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %2, i1* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %4, i8* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %6, i8* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %8, i8* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %10, i1* align 512 %11)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* noalias "unpacked"="0" %dst, i1* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<1>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i1* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i1
  store i1 %3, i1* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.19"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<1>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<1>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i1* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i1
  store i1 %3, i1* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>.23"(i8* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<8>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<8>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<8>", %"struct.ap_uint<8>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.0.0.03, align 1
  store i8 %1, i8* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* noalias "unpacked"="0" %dst, i8* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<8>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<8>", %"struct.ap_uint<8>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src, align 512
  store i8 %1, i8* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_clock_hw(i1*, i1*, i8*, i8*, i8*, i1*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_uint<1>"* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<1>"* noalias "unpacked"="2", i1* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_uint<8>"* noalias "unpacked"="4", i8* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<8>"* noalias "unpacked"="6", i8* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_uint<8>"* noalias "unpacked"="8", i8* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_uint<1>"* noalias "unpacked"="10", i1* noalias nocapture readonly align 512 "unpacked"="11.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %4, i8* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %6, i8* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %8, i8* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %10, i1* align 512 %11)
  ret void
}

define void @clock_hw_stub_wrapper(i1*, i1*, i8*, i8*, i8*, i1*) #4 {
entry:
  %6 = alloca %"struct.ap_uint<1>"
  %7 = alloca %"struct.ap_uint<1>"
  %8 = alloca %"struct.ap_uint<8>"
  %9 = alloca %"struct.ap_uint<8>"
  %10 = alloca %"struct.ap_uint<8>"
  %11 = alloca %"struct.ap_uint<1>"
  call void @copy_out(%"struct.ap_uint<1>"* %6, i1* %0, %"struct.ap_uint<1>"* %7, i1* %1, %"struct.ap_uint<8>"* %8, i8* %2, %"struct.ap_uint<8>"* %9, i8* %3, %"struct.ap_uint<8>"* %10, i8* %4, %"struct.ap_uint<1>"* %11, i1* %5)
  call void @clock_hw_stub(%"struct.ap_uint<1>"* %6, %"struct.ap_uint<1>"* %7, %"struct.ap_uint<8>"* %8, %"struct.ap_uint<8>"* %9, %"struct.ap_uint<8>"* %10, %"struct.ap_uint<1>"* %11)
  call void @copy_in(%"struct.ap_uint<1>"* %6, i1* %0, %"struct.ap_uint<1>"* %7, i1* %1, %"struct.ap_uint<8>"* %8, i8* %2, %"struct.ap_uint<8>"* %9, i8* %3, %"struct.ap_uint<8>"* %10, i8* %4, %"struct.ap_uint<1>"* %11, i1* %5)
  ret void
}

declare void @clock_hw_stub(%"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<1>"*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
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
