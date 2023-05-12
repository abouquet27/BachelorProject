; ModuleID = 'messyCode.ll'
source_filename = "messyCode.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define void @messyFunction(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = add nsw i32 %0, 4
  %9 = mul nsw i32 %1, %3
  %10 = mul nsw i32 %3, %9
  %11 = sub nsw i32 %10, %4
  %12 = sub nsw i32 %6, %5
  %13 = add nsw i32 %12, 34
  %14 = mul nsw i32 %13, %11
  %15 = icmp sgt i32 %14, 100
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = sub nsw i32 %14, 100
  br label %20

18:                                               ; preds = %7
  %19 = add nsw i32 %14, 100
  br label %20

20:                                               ; preds = %18, %16
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
