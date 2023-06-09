; ModuleID = 'cases/mixfunction.ll'
source_filename = "cases/mixfunction.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @check(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 1, %3 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @mixFunction(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %12, %2
  %.0 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %4 = icmp slt i32 %0, 10
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = sub nsw i32 %0, 1
  %9 = call i32 @mixFunction(i32 noundef %8, i32 noundef %1)
  br label %12

10:                                               ; preds = %5
  %11 = call i32 @check(i32 noundef %0)
  br label %12

12:                                               ; preds = %10, %7
  %13 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !5

14:                                               ; preds = %3
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = sub nsw i32 %1, 1
  %18 = call i32 @mixFunction(i32 noundef %0, i32 noundef %17)
  br label %20

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %16
  %21 = add nsw i32 0, 1
  ret i32 undef
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
