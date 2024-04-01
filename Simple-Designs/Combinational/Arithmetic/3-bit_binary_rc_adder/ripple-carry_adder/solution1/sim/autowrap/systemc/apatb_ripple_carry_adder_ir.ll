; ModuleID = 'C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/3-bit_binary_ripple-carry_adder/ripple-carry_adder/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.std::array<bool, 3>" = type { [3 x i1] }

; Function Attrs: noinline willreturn
define void @apatb_ripple_carry_adder_ir(%"struct.std::array<bool, 3>"* noalias nonnull readonly dereferenceable(3) %a, %"struct.std::array<bool, 3>"* noalias nonnull readonly dereferenceable(3) %b, i1 zeroext %carry_in, %"struct.std::array<bool, 3>"* noalias nonnull dereferenceable(3) %sum, i1* noalias nocapture nonnull dereferenceable(1) %carry_out) local_unnamed_addr #0 {
entry:
  %a_copy = alloca i3, align 512
  %b_copy = alloca i3, align 512
  %sum_copy = alloca i3, align 512
  %carry_out_copy = alloca i1, align 512
  call fastcc void @copy_in(%"struct.std::array<bool, 3>"* nonnull %a, i3* nonnull align 512 %a_copy, %"struct.std::array<bool, 3>"* nonnull %b, i3* nonnull align 512 %b_copy, %"struct.std::array<bool, 3>"* nonnull %sum, i3* nonnull align 512 %sum_copy, i1* nonnull %carry_out, i1* nonnull align 512 %carry_out_copy)
  call void @apatb_ripple_carry_adder_hw(i3* %a_copy, i3* %b_copy, i1 %carry_in, i3* %sum_copy, i1* %carry_out_copy)
  call void @copy_back(%"struct.std::array<bool, 3>"* %a, i3* %a_copy, %"struct.std::array<bool, 3>"* %b, i3* %b_copy, %"struct.std::array<bool, 3>"* %sum, i3* %sum_copy, i1* %carry_out, i1* %carry_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.std::array<bool, 3>"* noalias readonly, i3* noalias align 512, %"struct.std::array<bool, 3>"* noalias readonly, i3* noalias align 512, %"struct.std::array<bool, 3>"* noalias readonly, i3* noalias align 512, i1* noalias readonly, i1* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 3>"(i3* align 512 %1, %"struct.std::array<bool, 3>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 3>"(i3* align 512 %3, %"struct.std::array<bool, 3>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 3>"(i3* align 512 %5, %"struct.std::array<bool, 3>"* %4)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %7, i1* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i1([3 x i1]* %dst, [3 x i1]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x i1]* %src, null
  %1 = icmp eq [3 x i1]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i1], [3 x i1]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x i1], [3 x i1]* %src, i64 0, i64 %for.loop.idx2
  %3 = bitcast i1* %src.addr to i8*
  %4 = load i8, i8* %3
  %5 = trunc i8 %4 to i1
  store i1 %5, i1* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512 %dst, i1* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i1* %dst, null
  %1 = icmp eq i1* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = bitcast i1* %src to i8*
  %4 = load i8, i8* %3
  %5 = trunc i8 %4 to i1
  store i1 %5, i1* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.std::array<bool, 3>"* noalias, i3* noalias readonly align 512, %"struct.std::array<bool, 3>"* noalias, i3* noalias readonly align 512, %"struct.std::array<bool, 3>"* noalias, i3* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 3>.4"(%"struct.std::array<bool, 3>"* %0, i3* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 3>.4"(%"struct.std::array<bool, 3>"* %2, i3* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 3>.4"(%"struct.std::array<bool, 3>"* %4, i3* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 3>.4"(%"struct.std::array<bool, 3>"* noalias %dst, i3* noalias readonly align 512 %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.std::array<bool, 3>"* %dst, null
  %1 = icmp eq i3* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %"struct.std::array<bool, 3>", %"struct.std::array<bool, 3>"* %dst, i64 0, i32 0
  call void @arraycpy_hls.p0a3i1.7([3 x i1]* %dst.0, i3* nonnull %src, i64 0, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i1.7([3 x i1]* %dst, i3* readonly %src, i64 %src_idx, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq i3* %src, null
  %1 = icmp eq [3 x i1]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i1], [3 x i1]* %dst, i64 0, i64 %for.loop.idx2
  %3 = add i64 %src_idx, %for.loop.idx2
  %4 = bitcast i3* %src to i8*
  %5 = load i8, i8* %4
  %6 = trunc i8 %5 to i3
  %7 = trunc i64 %3 to i3
  %8 = lshr i3 %6, %7
  %.partselect = trunc i3 %8 to i1
  store i1 %.partselect, i1* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 3>"(i3* noalias align 512 %dst, %"struct.std::array<bool, 3>"* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i3* %dst, null
  %1 = icmp eq %"struct.std::array<bool, 3>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %"struct.std::array<bool, 3>", %"struct.std::array<bool, 3>"* %src, i64 0, i32 0
  call void @arraycpy_hls.p0a3i1.15(i3* nonnull %dst, i64 0, [3 x i1]* %src.0, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i1.15(i3* %dst, i64 %dst_idx, [3 x i1]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x i1]* %src, null
  %1 = icmp eq i3* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = add i64 %dst_idx, %for.loop.idx2
  %src.addr = getelementptr [3 x i1], [3 x i1]* %src, i64 0, i64 %for.loop.idx2
  %4 = bitcast i1* %src.addr to i8*
  %5 = load i8, i8* %4
  %6 = trunc i8 %5 to i1
  %7 = bitcast i3* %dst to i8*
  %8 = load i8, i8* %7
  %9 = trunc i8 %8 to i3
  %10 = trunc i64 %3 to i3
  %11 = shl i3 1, %10
  %12 = zext i1 %6 to i3
  %13 = shl i3 %12, %10
  %thr.xor1 = xor i3 %11, -1
  %thr.and2 = and i3 %9, %thr.xor1
  %thr.or3 = or i3 %thr.and2, %13
  store i3 %thr.or3, i3* %dst, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_ripple_carry_adder_hw(i3*, i3*, i1, i3*, i1*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.std::array<bool, 3>"* noalias, i3* noalias readonly align 512, %"struct.std::array<bool, 3>"* noalias, i3* noalias readonly align 512, %"struct.std::array<bool, 3>"* noalias, i3* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 3>.4"(%"struct.std::array<bool, 3>"* %4, i3* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  ret void
}

define void @ripple_carry_adder_hw_stub_wrapper(i3*, i3*, i1, i3*, i1*) #5 {
entry:
  %5 = alloca %"struct.std::array<bool, 3>"
  %6 = alloca %"struct.std::array<bool, 3>"
  %7 = alloca %"struct.std::array<bool, 3>"
  call void @copy_out(%"struct.std::array<bool, 3>"* %5, i3* %0, %"struct.std::array<bool, 3>"* %6, i3* %1, %"struct.std::array<bool, 3>"* %7, i3* %3, i1* null, i1* %4)
  call void @ripple_carry_adder_hw_stub(%"struct.std::array<bool, 3>"* %5, %"struct.std::array<bool, 3>"* %6, i1 %2, %"struct.std::array<bool, 3>"* %7, i1* %4)
  call void @copy_in(%"struct.std::array<bool, 3>"* %5, i3* %0, %"struct.std::array<bool, 3>"* %6, i3* %1, %"struct.std::array<bool, 3>"* %7, i3* %3, i1* null, i1* %4)
  ret void
}

declare void @ripple_carry_adder_hw_stub(%"struct.std::array<bool, 3>"*, %"struct.std::array<bool, 3>"*, i1, %"struct.std::array<bool, 3>"*, i1*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
