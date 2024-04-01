; ModuleID = 'C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/100-bit_binary_adder/100-bit_binary_adder/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.std::array<bool, 100>" = type { [100 x i1] }

; Function Attrs: noinline willreturn
define void @apatb_binary_adder_100_ir(%"struct.std::array<bool, 100>"* noalias nonnull readonly dereferenceable(100) %a, %"struct.std::array<bool, 100>"* noalias nonnull readonly dereferenceable(100) %b, i1 zeroext %carry_in, %"struct.std::array<bool, 100>"* noalias nonnull dereferenceable(100) %sum, i1* noalias nocapture nonnull dereferenceable(1) %carry_out) local_unnamed_addr #0 {
entry:
  %a_copy = alloca i100, align 512
  %b_copy = alloca i100, align 512
  %sum_copy = alloca i100, align 512
  %carry_out_copy = alloca i1, align 512
  call fastcc void @copy_in(%"struct.std::array<bool, 100>"* nonnull %a, i100* nonnull align 512 %a_copy, %"struct.std::array<bool, 100>"* nonnull %b, i100* nonnull align 512 %b_copy, %"struct.std::array<bool, 100>"* nonnull %sum, i100* nonnull align 512 %sum_copy, i1* nonnull %carry_out, i1* nonnull align 512 %carry_out_copy)
  call void @apatb_binary_adder_100_hw(i100* %a_copy, i100* %b_copy, i1 %carry_in, i100* %sum_copy, i1* %carry_out_copy)
  call void @copy_back(%"struct.std::array<bool, 100>"* %a, i100* %a_copy, %"struct.std::array<bool, 100>"* %b, i100* %b_copy, %"struct.std::array<bool, 100>"* %sum, i100* %sum_copy, i1* %carry_out, i1* %carry_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.std::array<bool, 100>"* noalias readonly, i100* noalias align 512, %"struct.std::array<bool, 100>"* noalias readonly, i100* noalias align 512, %"struct.std::array<bool, 100>"* noalias readonly, i100* noalias align 512, i1* noalias readonly, i1* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 100>"(i100* align 512 %1, %"struct.std::array<bool, 100>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 100>"(i100* align 512 %3, %"struct.std::array<bool, 100>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 100>"(i100* align 512 %5, %"struct.std::array<bool, 100>"* %4)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %7, i1* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100i1([100 x i1]* %dst, [100 x i1]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x i1]* %src, null
  %1 = icmp eq [100 x i1]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x i1], [100 x i1]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100 x i1], [100 x i1]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @copy_out(%"struct.std::array<bool, 100>"* noalias, i100* noalias readonly align 512, %"struct.std::array<bool, 100>"* noalias, i100* noalias readonly align 512, %"struct.std::array<bool, 100>"* noalias, i100* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 100>.4"(%"struct.std::array<bool, 100>"* %0, i100* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 100>.4"(%"struct.std::array<bool, 100>"* %2, i100* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 100>.4"(%"struct.std::array<bool, 100>"* %4, i100* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 100>.4"(%"struct.std::array<bool, 100>"* noalias %dst, i100* noalias readonly align 512 %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.std::array<bool, 100>"* %dst, null
  %1 = icmp eq i100* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %"struct.std::array<bool, 100>", %"struct.std::array<bool, 100>"* %dst, i64 0, i32 0
  call void @arraycpy_hls.p0a100i1.7([100 x i1]* %dst.0, i100* nonnull %src, i64 0, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100i1.7([100 x i1]* %dst, i100* readonly %src, i64 %src_idx, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq i100* %src, null
  %1 = icmp eq [100 x i1]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x i1], [100 x i1]* %dst, i64 0, i64 %for.loop.idx2
  %3 = add i64 %src_idx, %for.loop.idx2
  %4 = bitcast i100* %src to i104*
  %5 = load i104, i104* %4
  %6 = trunc i104 %5 to i100
  %7 = zext i64 %3 to i100
  %8 = lshr i100 %6, %7
  %.partselect = trunc i100 %8 to i1
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
define internal fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 100>"(i100* noalias align 512 %dst, %"struct.std::array<bool, 100>"* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i100* %dst, null
  %1 = icmp eq %"struct.std::array<bool, 100>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %"struct.std::array<bool, 100>", %"struct.std::array<bool, 100>"* %src, i64 0, i32 0
  call void @arraycpy_hls.p0a100i1.15(i100* nonnull %dst, i64 0, [100 x i1]* %src.0, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100i1.15(i100* %dst, i64 %dst_idx, [100 x i1]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x i1]* %src, null
  %1 = icmp eq i100* %dst, null
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
  %src.addr = getelementptr [100 x i1], [100 x i1]* %src, i64 0, i64 %for.loop.idx2
  %4 = bitcast i1* %src.addr to i8*
  %5 = load i8, i8* %4
  %6 = trunc i8 %5 to i1
  %7 = bitcast i100* %dst to i104*
  %8 = load i104, i104* %7
  %9 = trunc i104 %8 to i100
  %10 = zext i64 %3 to i100
  %11 = shl i100 1, %10
  %12 = zext i1 %6 to i100
  %13 = shl i100 %12, %10
  %thr.xor1 = xor i100 %11, -1
  %thr.and2 = and i100 %9, %thr.xor1
  %thr.or3 = or i100 %thr.and2, %13
  store i100 %thr.or3, i100* %dst, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_binary_adder_100_hw(i100*, i100*, i1, i100*, i1*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.std::array<bool, 100>"* noalias, i100* noalias readonly align 512, %"struct.std::array<bool, 100>"* noalias, i100* noalias readonly align 512, %"struct.std::array<bool, 100>"* noalias, i100* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<bool, 100>.4"(%"struct.std::array<bool, 100>"* %4, i100* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  ret void
}

define void @binary_adder_100_hw_stub_wrapper(i100*, i100*, i1, i100*, i1*) #5 {
entry:
  %5 = alloca %"struct.std::array<bool, 100>"
  %6 = alloca %"struct.std::array<bool, 100>"
  %7 = alloca %"struct.std::array<bool, 100>"
  call void @copy_out(%"struct.std::array<bool, 100>"* %5, i100* %0, %"struct.std::array<bool, 100>"* %6, i100* %1, %"struct.std::array<bool, 100>"* %7, i100* %3, i1* null, i1* %4)
  call void @binary_adder_100_hw_stub(%"struct.std::array<bool, 100>"* %5, %"struct.std::array<bool, 100>"* %6, i1 %2, %"struct.std::array<bool, 100>"* %7, i1* %4)
  call void @copy_in(%"struct.std::array<bool, 100>"* %5, i100* %0, %"struct.std::array<bool, 100>"* %6, i100* %1, %"struct.std::array<bool, 100>"* %7, i100* %3, i1* null, i1* %4)
  ret void
}

declare void @binary_adder_100_hw_stub(%"struct.std::array<bool, 100>"*, %"struct.std::array<bool, 100>"*, i1, %"struct.std::array<bool, 100>"*, i1*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
