; ModuleID = 'C:/Users/kwokt/HLS-Models/Matrix-Multiplication/hls_component/hls_component/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_matrix_multiply_ir([256 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="256" %A, [256 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="256" %B, [256 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="256" %C) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 262144)
  %A_copy = bitcast i8* %malloccall to [256 x [256 x i32]]*
  %malloccall1 = tail call i8* @malloc(i64 262144)
  %B_copy = bitcast i8* %malloccall1 to [256 x [256 x i32]]*
  %malloccall2 = tail call i8* @malloc(i64 262144)
  %C_copy = bitcast i8* %malloccall2 to [256 x [256 x i32]]*
  %0 = bitcast [256 x i32]* %A to [256 x [256 x i32]]*
  %1 = bitcast [256 x i32]* %B to [256 x [256 x i32]]*
  %2 = bitcast [256 x i32]* %C to [256 x [256 x i32]]*
  call fastcc void @copy_in([256 x [256 x i32]]* nonnull %0, [256 x [256 x i32]]* %A_copy, [256 x [256 x i32]]* nonnull %1, [256 x [256 x i32]]* %B_copy, [256 x [256 x i32]]* nonnull %2, [256 x [256 x i32]]* %C_copy)
  call void @apatb_matrix_multiply_hw([256 x [256 x i32]]* %A_copy, [256 x [256 x i32]]* %B_copy, [256 x [256 x i32]]* %C_copy)
  call void @copy_back([256 x [256 x i32]]* %0, [256 x [256 x i32]]* %A_copy, [256 x [256 x i32]]* %1, [256 x [256 x i32]]* %B_copy, [256 x [256 x i32]]* %2, [256 x [256 x i32]]* %C_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([256 x [256 x i32]]* noalias readonly, [256 x [256 x i32]]* noalias, [256 x [256 x i32]]* noalias readonly, [256 x [256 x i32]]* noalias, [256 x [256 x i32]]* noalias readonly, [256 x [256 x i32]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256a256i32([256 x [256 x i32]]* %1, [256 x [256 x i32]]* %0)
  call fastcc void @onebyonecpy_hls.p0a256a256i32([256 x [256 x i32]]* %3, [256 x [256 x i32]]* %2)
  call fastcc void @onebyonecpy_hls.p0a256a256i32([256 x [256 x i32]]* %5, [256 x [256 x i32]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a256a256i32([256 x [256 x i32]]* noalias %dst, [256 x [256 x i32]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [256 x [256 x i32]]* %dst, null
  %1 = icmp eq [256 x [256 x i32]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a256a256i32([256 x [256 x i32]]* nonnull %dst, [256 x [256 x i32]]* nonnull %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a256a256i32([256 x [256 x i32]]* %dst, [256 x [256 x i32]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x [256 x i32]]* %src, null
  %1 = icmp eq [256 x [256 x i32]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a256i32([256 x i32]* %dst.addr, [256 x i32]* %src.addr, i64 256)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a256i32([256 x i32]* %dst, [256 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x i32]* %src, null
  %1 = icmp eq [256 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [256 x i32], [256 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [256 x i32], [256 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([256 x [256 x i32]]* noalias, [256 x [256 x i32]]* noalias readonly, [256 x [256 x i32]]* noalias, [256 x [256 x i32]]* noalias readonly, [256 x [256 x i32]]* noalias, [256 x [256 x i32]]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256a256i32([256 x [256 x i32]]* %0, [256 x [256 x i32]]* %1)
  call fastcc void @onebyonecpy_hls.p0a256a256i32([256 x [256 x i32]]* %2, [256 x [256 x i32]]* %3)
  call fastcc void @onebyonecpy_hls.p0a256a256i32([256 x [256 x i32]]* %4, [256 x [256 x i32]]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_matrix_multiply_hw([256 x [256 x i32]]*, [256 x [256 x i32]]*, [256 x [256 x i32]]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([256 x [256 x i32]]* noalias, [256 x [256 x i32]]* noalias readonly, [256 x [256 x i32]]* noalias, [256 x [256 x i32]]* noalias readonly, [256 x [256 x i32]]* noalias, [256 x [256 x i32]]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256a256i32([256 x [256 x i32]]* %4, [256 x [256 x i32]]* %5)
  ret void
}

define void @matrix_multiply_hw_stub_wrapper([256 x [256 x i32]]*, [256 x [256 x i32]]*, [256 x [256 x i32]]*) #5 {
entry:
  call void @copy_out([256 x [256 x i32]]* null, [256 x [256 x i32]]* %0, [256 x [256 x i32]]* null, [256 x [256 x i32]]* %1, [256 x [256 x i32]]* null, [256 x [256 x i32]]* %2)
  %3 = bitcast [256 x [256 x i32]]* %0 to [256 x i32]*
  %4 = bitcast [256 x [256 x i32]]* %1 to [256 x i32]*
  %5 = bitcast [256 x [256 x i32]]* %2 to [256 x i32]*
  call void @matrix_multiply_hw_stub([256 x i32]* %3, [256 x i32]* %4, [256 x i32]* %5)
  call void @copy_in([256 x [256 x i32]]* null, [256 x [256 x i32]]* %0, [256 x [256 x i32]]* null, [256 x [256 x i32]]* %1, [256 x [256 x i32]]* null, [256 x [256 x i32]]* %2)
  ret void
}

declare void @matrix_multiply_hw_stub([256 x i32]* noalias nocapture nonnull readonly, [256 x i32]* noalias nocapture nonnull readonly, [256 x i32]* noalias nocapture nonnull)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
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
