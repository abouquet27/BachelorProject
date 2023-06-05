; ModuleID = 'cases/caseTestFromDoc.ll'
source_filename = "cases/caseTestFromDoc.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@result_arg = global double 1.600000e+00, align 8
@result_argv = global double 6.000000e-01, align 8

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %27, %2
  %.01 = phi i32 [ %0, %2 ], [ %28, %27 ]
  %4 = icmp slt i32 %.01, 1
  br i1 %4, label %5, label %29

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %24, %5
  %.0 = phi i32 [ 0, %5 ], [ %25, %24 ]
  %7 = sext i32 %.01 to i64
  %8 = getelementptr inbounds ptr, ptr %1, i64 %7
  %9 = load ptr, ptr %8, align 8
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  %16 = sext i32 %.01 to i64
  %17 = getelementptr inbounds ptr, ptr %1, i64 %16
  %18 = load ptr, ptr %17, align 8
  %19 = sext i32 %.0 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 @putchar(i32 noundef %22)
  br label %24

24:                                               ; preds = %15
  %25 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !5

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %.01, 1
  br label %3, !llvm.loop !7

29:                                               ; preds = %3
  ret i32 0
}

declare i32 @putchar(i32 noundef) #1

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

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
