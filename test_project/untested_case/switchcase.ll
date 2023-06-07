; ModuleID = 'cases/switchcase.ll'
source_filename = "cases/switchcase.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @switchCaseFun(i32 noundef %0) #0 {
  %2 = srem i32 %0, 3
  switch i32 %2, label %12 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
  ]

3:                                                ; preds = %1
  %4 = add nsw i32 1, 1
  %5 = add nsw i32 1, 1
  br label %12

6:                                                ; preds = %1
  %7 = mul nsw i32 1, 2
  %8 = sub nsw i32 1, 1
  br label %12

9:                                                ; preds = %1
  %10 = mul nsw i32 1, 1
  %11 = mul nsw i32 1, 2
  br label %12

12:                                               ; preds = %9, %6, %3, %1
  %.01 = phi i32 [ 1, %1 ], [ %10, %9 ], [ %7, %6 ], [ %4, %3 ]
  %.0 = phi i32 [ 1, %1 ], [ %11, %9 ], [ %8, %6 ], [ %5, %3 ]
  %13 = mul nsw i32 %.0, %.01
  %14 = add nsw i32 %13, %0
  ret i32 %14
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Homebrew clang version 16.0.4"}
