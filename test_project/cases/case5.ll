; ModuleID = 'cases/case5.c'
source_filename = "cases/case5.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@llvm.used = appending global [1 x ptr] [ptr @check], section "llvm.metadata"

; Function Attrs: noinline nounwind ssp uwtable
define void @check(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 19, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp sge i32 %6, 5
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 5, ptr %3, align 4
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32, ptr %2, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 10, ptr %3, align 4
  br label %14

13:                                               ; preds = %9
  store i32 20, ptr %3, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, ptr %3, align 4
  %16 = load i32, ptr %2, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, ptr %5, align 4
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
