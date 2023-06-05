; ModuleID = 'cases/whileloop2.ll'
source_filename = "cases/whileloop2.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define void @whileloopfunction(i32 noundef %0) #0 {
  %2 = alloca [13 x i32], align 16
  %3 = srem i32 %0, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %5
  %.01 = phi i32 [ 0, %5 ], [ 1, %6 ]
  br label %8

8:                                                ; preds = %21, %7
  %.1 = phi i32 [ %.01, %7 ], [ %.2, %21 ]
  %.0 = phi i32 [ 0, %7 ], [ %14, %21 ]
  %9 = icmp slt i32 %.1, 13
  br i1 %9, label %10, label %22

10:                                               ; preds = %8
  %11 = sext i32 %.1 to i64
  %12 = getelementptr inbounds [13 x i32], ptr %2, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = add nsw i32 %.0, %13
  %15 = srem i32 %.1, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = add nsw i32 %.1, 1
  br label %21

19:                                               ; preds = %10
  %20 = add nsw i32 %.1, 2
  br label %21

21:                                               ; preds = %19, %17
  %.2 = phi i32 [ %18, %17 ], [ %20, %19 ]
  br label %8, !llvm.loop !5

22:                                               ; preds = %8
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
