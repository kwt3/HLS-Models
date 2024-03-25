; ModuleID = 'C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Shift-Registers/100-bit-Left-Right-rotator/100bit_shift_register/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_uint<100>" = type { %"struct.ap_int_base<100, false>" }
%"struct.ap_int_base<100, false>" = type { %"struct.ssdm_int<100, false>" }
%"struct.ssdm_int<100, false>" = type { i100 }

; Function Attrs: noinline willreturn
define void @apatb_rotator_ir(%"struct.ap_uint<1>"* noalias nocapture nonnull readonly dereferenceable(1) %load, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly dereferenceable(1) %ena, %"struct.ap_uint<100>"* noalias nocapture nonnull readonly dereferenceable(16) %data, %"struct.ap_uint<100>"* noalias nocapture nonnull dereferenceable(16) %q) local_unnamed_addr #0 {
entry:
  %load_copy = alloca i1, align 512
  %ena_copy = alloca i2, align 512
  %data_copy = alloca i100, align 512
  %q_copy = alloca i100, align 512
  call fastcc void @copy_in(%"struct.ap_uint<1>"* nonnull %load, i1* nonnull align 512 %load_copy, %"struct.ap_uint<2>"* nonnull %ena, i2* nonnull align 512 %ena_copy, %"struct.ap_uint<100>"* nonnull %data, i100* nonnull align 512 %data_copy, %"struct.ap_uint<100>"* nonnull %q, i100* nonnull align 512 %q_copy)
  call void @apatb_rotator_hw(i1* %load_copy, i2* %ena_copy, i100* %data_copy, i100* %q_copy)
  call void @copy_back(%"struct.ap_uint<1>"* %load, i1* %load_copy, %"struct.ap_uint<2>"* %ena, i2* %ena_copy, %"struct.ap_uint<100>"* %data, i100* %data_copy, %"struct.ap_uint<100>"* %q, i100* %q_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_uint<1>"* noalias readonly "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_uint<2>"* noalias readonly "unpacked"="2", i2* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_uint<100>"* noalias readonly "unpacked"="4", i100* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_uint<100>"* noalias readonly "unpacked"="6", i100* noalias nocapture align 512 "unpacked"="7.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.25"(i1* align 512 %1, %"struct.ap_uint<1>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>"(i2* align 512 %3, %"struct.ap_uint<2>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<100>.10"(i100* align 512 %5, %"struct.ap_uint<100>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<100>.10"(i100* align 512 %7, %"struct.ap_uint<100>"* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* noalias "unpacked"="0" %dst, i1* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>"(i2* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<2>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<2>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i2* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i2
  store i2 %3, i2* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_uint<1>"* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<2>"* noalias "unpacked"="2", i2* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_uint<100>"* noalias "unpacked"="4", i100* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<100>"* noalias "unpacked"="6", i100* noalias nocapture readonly align 512 "unpacked"="7.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %0, i1* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>.18"(%"struct.ap_uint<2>"* %2, i2* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<100>"(%"struct.ap_uint<100>"* %4, i100* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<100>"(%"struct.ap_uint<100>"* %6, i100* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<100>"(%"struct.ap_uint<100>"* noalias "unpacked"="0" %dst, i100* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<100>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<100>", %"struct.ap_uint<100>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i100* %src to i104*
  %2 = load i104, i104* %1
  %3 = trunc i104 %2 to i100
  store i100 %3, i100* %dst.0.0.04, align 16
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<100>.10"(i100* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<100>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<100>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<100>", %"struct.ap_uint<100>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i100* %src.0.0.03 to i104*
  %2 = load i104, i104* %1
  %3 = trunc i104 %2 to i100
  store i100 %3, i100* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>.18"(%"struct.ap_uint<2>"* noalias "unpacked"="0" %dst, i2* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<2>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i2* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i2
  store i2 %3, i2* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.25"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<1>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
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

declare void @apatb_rotator_hw(i1*, i2*, i100*, i100*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_uint<1>"* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<2>"* noalias "unpacked"="2", i2* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_uint<100>"* noalias "unpacked"="4", i100* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<100>"* noalias "unpacked"="6", i100* noalias nocapture readonly align 512 "unpacked"="7.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<100>"(%"struct.ap_uint<100>"* %6, i100* align 512 %7)
  ret void
}

define void @rotator_hw_stub_wrapper(i1*, i2*, i100*, i100*) #4 {
entry:
  %4 = alloca %"struct.ap_uint<1>"
  %5 = alloca %"struct.ap_uint<2>"
  %6 = alloca %"struct.ap_uint<100>"
  %7 = alloca %"struct.ap_uint<100>"
  call void @copy_out(%"struct.ap_uint<1>"* %4, i1* %0, %"struct.ap_uint<2>"* %5, i2* %1, %"struct.ap_uint<100>"* %6, i100* %2, %"struct.ap_uint<100>"* %7, i100* %3)
  call void @rotator_hw_stub(%"struct.ap_uint<1>"* %4, %"struct.ap_uint<2>"* %5, %"struct.ap_uint<100>"* %6, %"struct.ap_uint<100>"* %7)
  call void @copy_in(%"struct.ap_uint<1>"* %4, i1* %0, %"struct.ap_uint<2>"* %5, i2* %1, %"struct.ap_uint<100>"* %6, i100* %2, %"struct.ap_uint<100>"* %7, i100* %3)
  ret void
}

declare void @rotator_hw_stub(%"struct.ap_uint<1>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<100>"*, %"struct.ap_uint<100>"*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
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
