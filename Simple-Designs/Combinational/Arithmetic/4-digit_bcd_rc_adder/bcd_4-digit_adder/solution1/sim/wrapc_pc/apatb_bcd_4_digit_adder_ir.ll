; ModuleID = 'C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/4-digit_bcd_ripple-carry_adder/bcd_4-digit_adder/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.std::array<unsigned int, 4>" = type { [4 x i32] }

; Function Attrs: noinline willreturn
define void @apatb_bcd_4_digit_adder_ir(%"struct.std::array<unsigned int, 4>"* noalias nonnull readonly dereferenceable(16) %a, %"struct.std::array<unsigned int, 4>"* noalias nonnull readonly dereferenceable(16) %b, i1 zeroext %cin, i1* noalias nocapture nonnull dereferenceable(1) %cout, %"struct.std::array<unsigned int, 4>"* noalias nonnull dereferenceable(16) %sum) local_unnamed_addr #0 {
entry:
  %a_copy = alloca i128, align 512
  %b_copy = alloca i128, align 512
  %cout_copy = alloca i1, align 512
  %sum_copy = alloca i128, align 512
  call fastcc void @copy_in(%"struct.std::array<unsigned int, 4>"* nonnull %a, i128* nonnull align 512 %a_copy, %"struct.std::array<unsigned int, 4>"* nonnull %b, i128* nonnull align 512 %b_copy, i1* nonnull %cout, i1* nonnull align 512 %cout_copy, %"struct.std::array<unsigned int, 4>"* nonnull %sum, i128* nonnull align 512 %sum_copy)
  call void @apatb_bcd_4_digit_adder_hw(i128* %a_copy, i128* %b_copy, i1 %cin, i1* %cout_copy, i128* %sum_copy)
  call void @copy_back(%"struct.std::array<unsigned int, 4>"* %a, i128* %a_copy, %"struct.std::array<unsigned int, 4>"* %b, i128* %b_copy, i1* %cout, i1* %cout_copy, %"struct.std::array<unsigned int, 4>"* %sum, i128* %sum_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.std::array<unsigned int, 4>"* noalias readonly, i128* noalias align 512, %"struct.std::array<unsigned int, 4>"* noalias readonly, i128* noalias align 512, i1* noalias readonly, i1* noalias align 512, %"struct.std::array<unsigned int, 4>"* noalias readonly, i128* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<unsigned int, 4>"(i128* align 512 %1, %"struct.std::array<unsigned int, 4>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<unsigned int, 4>"(i128* align 512 %3, %"struct.std::array<unsigned int, 4>"* %2)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %5, i1* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<unsigned int, 4>"(i128* align 512 %7, %"struct.std::array<unsigned int, 4>"* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512 %dst, i1* noalias readonly %src) unnamed_addr #2 {
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
define internal fastcc void @copy_out(%"struct.std::array<unsigned int, 4>"* noalias, i128* noalias readonly align 512, %"struct.std::array<unsigned int, 4>"* noalias, i128* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, %"struct.std::array<unsigned int, 4>"* noalias, i128* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<unsigned int, 4>.8"(%"struct.std::array<unsigned int, 4>"* %0, i128* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<unsigned int, 4>.8"(%"struct.std::array<unsigned int, 4>"* %2, i128* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %4, i1* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<unsigned int, 4>.8"(%"struct.std::array<unsigned int, 4>"* %6, i128* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.std::array<unsigned int, 4>.8"(%"struct.std::array<unsigned int, 4>"* noalias %dst, i128* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.std::array<unsigned int, 4>"* %dst, null
  %1 = icmp eq i128* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %"struct.std::array<unsigned int, 4>", %"struct.std::array<unsigned int, 4>"* %dst, i64 0, i32 0
  call void @arraycpy_hls.p0a4i32.11([4 x i32]* %dst.0, i128* nonnull %src, i64 0, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4i32.11([4 x i32]* %dst, i128* readonly %src, i64 %src_idx, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq i128* %src, null
  %1 = icmp eq [4 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4 x i32], [4 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %3 = mul i64 32, %for.loop.idx2
  %4 = add i64 %src_idx, %3
  %5 = load i128, i128* %src, align 4
  %6 = zext i64 %4 to i128
  %7 = lshr i128 %5, %6
  %.partselect = trunc i128 %7 to i32
  store i32 %.partselect, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.std::array<unsigned int, 4>"(i128* noalias align 512 %dst, %"struct.std::array<unsigned int, 4>"* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i128* %dst, null
  %1 = icmp eq %"struct.std::array<unsigned int, 4>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %"struct.std::array<unsigned int, 4>", %"struct.std::array<unsigned int, 4>"* %src, i64 0, i32 0
  call void @arraycpy_hls.p0a4i32.19(i128* nonnull %dst, i64 0, [4 x i32]* %src.0, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4i32.19(i128* %dst, i64 %dst_idx, [4 x i32]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [4 x i32]* %src, null
  %1 = icmp eq i128* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = mul i64 32, %for.loop.idx2
  %4 = add i64 %dst_idx, %3
  %src.addr = getelementptr [4 x i32], [4 x i32]* %src, i64 0, i64 %for.loop.idx2
  %5 = load i32, i32* %src.addr, align 4
  %6 = load i128, i128* %dst, align 4
  %7 = zext i64 %4 to i128
  %8 = shl i128 4294967295, %7
  %9 = zext i32 %5 to i128
  %10 = shl i128 %9, %7
  %thr.xor1 = xor i128 %8, -1
  %thr.and2 = and i128 %6, %thr.xor1
  %thr.or3 = or i128 %thr.and2, %10
  store i128 %thr.or3, i128* %dst, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_bcd_4_digit_adder_hw(i128*, i128*, i1, i1*, i128*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.std::array<unsigned int, 4>"* noalias, i128* noalias readonly align 512, %"struct.std::array<unsigned int, 4>"* noalias, i128* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, %"struct.std::array<unsigned int, 4>"* noalias, i128* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i1(i1* %4, i1* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.std::array<unsigned int, 4>.8"(%"struct.std::array<unsigned int, 4>"* %6, i128* align 512 %7)
  ret void
}

define void @bcd_4_digit_adder_hw_stub_wrapper(i128*, i128*, i1, i1*, i128*) #5 {
entry:
  %5 = alloca %"struct.std::array<unsigned int, 4>"
  %6 = alloca %"struct.std::array<unsigned int, 4>"
  %7 = alloca %"struct.std::array<unsigned int, 4>"
  call void @copy_out(%"struct.std::array<unsigned int, 4>"* %5, i128* %0, %"struct.std::array<unsigned int, 4>"* %6, i128* %1, i1* null, i1* %3, %"struct.std::array<unsigned int, 4>"* %7, i128* %4)
  call void @bcd_4_digit_adder_hw_stub(%"struct.std::array<unsigned int, 4>"* %5, %"struct.std::array<unsigned int, 4>"* %6, i1 %2, i1* %3, %"struct.std::array<unsigned int, 4>"* %7)
  call void @copy_in(%"struct.std::array<unsigned int, 4>"* %5, i128* %0, %"struct.std::array<unsigned int, 4>"* %6, i128* %1, i1* null, i1* %3, %"struct.std::array<unsigned int, 4>"* %7, i128* %4)
  ret void
}

declare void @bcd_4_digit_adder_hw_stub(%"struct.std::array<unsigned int, 4>"*, %"struct.std::array<unsigned int, 4>"*, i1, i1*, %"struct.std::array<unsigned int, 4>"*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
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
