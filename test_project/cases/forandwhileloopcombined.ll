; ModuleID = 'cases/forandwhileloopcombined.ll'
source_filename = "cases/forandwhileloopcombined.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define void @forandwhileloopcombinedfunction(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %23, %2
  %.01 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %4 = sext i32 %.01 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %21, %8
  %.0 = phi i32 [ 0, %8 ], [ %22, %21 ]
  %10 = icmp slt i32 %.0, %1
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = sext i32 %.01 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = sext i32 %.01 to i64
  %20 = getelementptr inbounds i32, ptr %0, i64 %19
  store i32 %18, ptr %20, align 4
  br label %21

21:                                               ; preds = %11
  %22 = add nsw i32 %.0, 1
  br label %9, !llvm.loop !5

23:                                               ; preds = %9
  %24 = add nsw i32 %.01, 1
  br label %3, !llvm.loop !7

25:                                               ; preds = %3
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
