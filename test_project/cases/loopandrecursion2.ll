; ModuleID = 'cases/loopandrecursion2.ll'
source_filename = "cases/loopandrecursion2.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@result_x = global double 2.176000e+00, align 8

; Function Attrs: noinline nounwind ssp uwtable
define void @loopandrecursion2(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.01 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %.0 = phi i32 [ %0, %1 ], [ %.1, %9 ]
  %3 = icmp slt i32 %.0, 10
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = icmp sgt i32 %.0, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = sub nsw i32 %.0, 1
  call void @loopandrecursion2(i32 noundef %7)
  br label %9

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8, %6
  %.1 = phi i32 [ %.0, %6 ], [ 0, %8 ]
  %10 = add nsw i32 %.01, 1
  br label %2, !llvm.loop !5

11:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Homebrew clang version 16.0.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
