; ModuleID = 'cases/case8.ll'
source_filename = "cases/case8.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define void @doubleLoop(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %13, %1
  %.04 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %.02 = phi i32 [ 0, %1 ], [ %.13, %13 ]
  %.01 = phi i32 [ 0, %1 ], [ %.1, %13 ]
  %3 = icmp slt i32 %.04, %0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %10, %4
  %.13 = phi i32 [ %.02, %4 ], [ %9, %10 ]
  %.1 = phi i32 [ %.01, %4 ], [ %8, %10 ]
  %.0 = phi i32 [ 0, %4 ], [ %11, %10 ]
  %6 = icmp slt i32 %.0, %0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = add nsw i32 %.1, 1
  %9 = add nsw i32 %.13, 1
  br label %10

10:                                               ; preds = %7
  %11 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !5

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.04, 1
  br label %2, !llvm.loop !7

15:                                               ; preds = %2
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
!7 = distinct !{!7, !6}
