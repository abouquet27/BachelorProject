; ModuleID = 'cases/doublewhileloop.ll'
source_filename = "cases/doublewhileloop.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@result_tab = global double 0.000000e+00, align 8
@result_size = global double 1.600000e+00, align 8

; Function Attrs: noinline nounwind ssp uwtable
define void @doublewhileloopfunction(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %19, %2
  %.01 = phi i32 [ 0, %2 ], [ %20, %19 ]
  %.0 = phi i32 [ 0, %2 ], [ %.1, %19 ]
  %4 = icmp slt i32 %.01, %1
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %8, %5
  %.1 = phi i32 [ %.0, %5 ], [ %18, %8 ]
  %7 = icmp slt i32 %.1, %1
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %9 = sext i32 %.01 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %.1 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = sext i32 %.01 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  store i32 %15, ptr %17, align 4
  %18 = add nsw i32 %.1, 1
  br label %6, !llvm.loop !5

19:                                               ; preds = %6
  %20 = add nsw i32 %.01, 1
  br label %3, !llvm.loop !7

21:                                               ; preds = %3
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
!7 = distinct !{!7, !6}
