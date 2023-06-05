; ModuleID = 'cases/basicCondition4.ll'
source_filename = "cases/basicCondition4.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@result_a = global double 1.600000e+00, align 8

; Function Attrs: noinline nounwind ssp uwtable
define void @basicCondition4(i32 noundef %0) #0 {
  %2 = icmp sge i32 %0, 5
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 10
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5
  %.0 = phi i32 [ 10, %5 ], [ 20, %6 ]
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %7
  %.1 = phi i32 [ %.0, %7 ], [ 10, %8 ]
  %10 = add nsw i32 %.1, %0
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
