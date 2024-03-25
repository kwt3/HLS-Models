; ModuleID = 'C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Shift-Registers/4-bit-shift-register/4shift_register/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }

; Function Attrs: noinline willreturn
define void @apatb_shift_register_ir(%"struct.ap_uint<1>"* noalias nocapture nonnull readonly dereferenceable(1) %areset, %"struct.ap_uint<1>"* noalias nocapture nonnull readonly dereferenceable(1) %load, %"struct.ap_uint<1>"* noalias nocapture nonnull readonly dereferenceable(1) %ena, %"struct.ap_uint<4>"* noalias nocapture nonnull readonly dereferenceable(1) %data, %"struct.ap_uint<4>"* noalias nocapture nonnull dereferenceable(1) %q) local_unnamed_addr #0 {
entry:
  %areset_copy = alloca i1, align 512
  %load_copy = alloca i1, align 512
  %ena_copy = alloca i1, align 512
  %data_copy = alloca i4, align 512
  %q_copy = alloca i4, align 512
  call fastcc void @copy_in(%"struct.ap_uint<1>"* nonnull %areset, i1* nonnull align 512 %areset_copy, %"struct.ap_uint<1>"* nonnull %load, i1* nonnull align 512 %load_copy, %"struct.ap_uint<1>"* nonnull %ena, i1* nonnull align 512 %ena_copy, %"struct.ap_uint<4>"* nonnull %data, i4* nonnull align 512 %data_copy, %"struct.ap_uint<4>"* nonnull %q, i4* nonnull align 512 %q_copy)
  call void @apatb_shift_register_hw(i1* %areset_copy, i1* %load_copy, i1* %ena_copy, i4* %data_copy, i4* %q_copy)
  call void @copy_back(%"struct.ap_uint<1>"* %areset, i1* %areset_copy, %"struct.ap_uint<1>"* %load, i1* %load_copy, %"struct.ap_uint<1>"* %ena, i1* %ena_copy, %"struct.ap_uint<4>"* %data, i4* %data_copy, %"struct.ap_uint<4>"* %q, i4* %q_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_uint<1>"* noalias readonly "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_uint<1>"* noalias readonly "unpacked"="2", i1* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_uint<1>"* noalias readonly "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_uint<4>"* noalias readonly "unpacked"="6", i4* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_uint<4>"* noalias readonly "unpacked"="8", i4* noalias nocapture align 512 "unpacked"="9.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(i1* align 512 %1, %"struct.ap_uint<1>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(i1* align 512 %3, %"struct.ap_uint<1>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(i1* align 512 %5, %"struct.ap_uint<1>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>.10"(i4* align 512 %7, %"struct.ap_uint<4>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>.10"(i4* align 512 %9, %"struct.ap_uint<4>"* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_uint<1>"* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<1>"* noalias "unpacked"="2", i1* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_uint<1>"* noalias "unpacked"="4", i1* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<4>"* noalias "unpacked"="6", i4* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_uint<4>"* noalias "unpacked"="8", i4* noalias nocapture readonly align 512 "unpacked"="9.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.18"(%"struct.ap_uint<1>"* %0, i1* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.18"(%"struct.ap_uint<1>"* %2, i1* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.18"(%"struct.ap_uint<1>"* %4, i1* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(%"struct.ap_uint<4>"* %6, i4* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(%"struct.ap_uint<4>"* %8, i4* align 512 %9)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(%"struct.ap_uint<4>"* noalias "unpacked"="0" %dst, i4* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<4>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<4>", %"struct.ap_uint<4>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i4* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i4
  store i4 %3, i4* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>.10"(i4* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<4>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<4>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<4>", %"struct.ap_uint<4>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i4* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i4
  store i4 %3, i4* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.18"(%"struct.ap_uint<1>"* noalias "unpacked"="0" %dst, i1* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<1>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
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

declare void @apatb_shift_register_hw(i1*, i1*, i1*, i4*, i4*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_uint<1>"* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<1>"* noalias "unpacked"="2", i1* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_uint<1>"* noalias "unpacked"="4", i1* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<4>"* noalias "unpacked"="6", i4* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_uint<4>"* noalias "unpacked"="8", i4* noalias nocapture readonly align 512 "unpacked"="9.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(%"struct.ap_uint<4>"* %8, i4* align 512 %9)
  ret void
}

define void @shift_register_hw_stub_wrapper(i1*, i1*, i1*, i4*, i4*) #4 {
entry:
  %5 = alloca %"struct.ap_uint<1>"
  %6 = alloca %"struct.ap_uint<1>"
  %7 = alloca %"struct.ap_uint<1>"
  %8 = alloca %"struct.ap_uint<4>"
  %9 = alloca %"struct.ap_uint<4>"
  call void @copy_out(%"struct.ap_uint<1>"* %5, i1* %0, %"struct.ap_uint<1>"* %6, i1* %1, %"struct.ap_uint<1>"* %7, i1* %2, %"struct.ap_uint<4>"* %8, i4* %3, %"struct.ap_uint<4>"* %9, i4* %4)
  call void @shift_register_hw_stub(%"struct.ap_uint<1>"* %5, %"struct.ap_uint<1>"* %6, %"struct.ap_uint<1>"* %7, %"struct.ap_uint<4>"* %8, %"struct.ap_uint<4>"* %9)
  call void @copy_in(%"struct.ap_uint<1>"* %5, i1* %0, %"struct.ap_uint<1>"* %6, i1* %1, %"struct.ap_uint<1>"* %7, i1* %2, %"struct.ap_uint<4>"* %8, i4* %3, %"struct.ap_uint<4>"* %9, i4* %4)
  ret void
}

declare void @shift_register_hw_stub(%"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<4>"*, %"struct.ap_uint<4>"*)

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
