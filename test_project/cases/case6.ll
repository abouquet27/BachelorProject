; ModuleID = 'cases/case6.ll'
source_filename = "cases/case6.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define void @forloopfunction(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %7, %1
  %.02 = phi i32 [ 0, %1 ], [ %6, %7 ]
  %.01 = phi i32 [ 0, %1 ], [ %5, %7 ]
  %.0 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %3 = icmp slt i32 %.0, 10
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = add nsw i32 %.01, 1
  %6 = add nsw i32 %.02, 1
  br label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !5

9:                                                ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Homebrew clang version 16.0.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
