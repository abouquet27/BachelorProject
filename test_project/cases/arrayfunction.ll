; ModuleID = 'cases/arrayfunction.ll'
source_filename = "cases/arrayfunction.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@result_x = global double 1.600000e+00, align 8
@result_y = global double 1.600000e+00, align 8

; Function Attrs: noinline nounwind ssp uwtable
define void @tabFunction(i32 noundef %0, ptr noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i32, ptr %1, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = sub nsw i32 %0, 1
  call void @tabFunction(i32 noundef %8, ptr noundef %1)
  br label %9

9:                                                ; preds = %7, %2
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