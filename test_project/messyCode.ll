; ModuleID = 'messyCode.bc'
source_filename = "messyCode.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @messyFunction(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, ptr %8, align 4
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store i32 %3, ptr %11, align 4
  store i32 %4, ptr %12, align 4
  store i32 %5, ptr %13, align 4
  store i32 %6, ptr %14, align 4
  %16 = load i32, ptr %8, align 4
  %17 = add nsw i32 %16, 4
  store i32 %17, ptr %15, align 4
  %18 = load i32, ptr %9, align 4
  %19 = load i32, ptr %10, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, ptr %15, align 4
  %21 = load i32, ptr %11, align 4
  %22 = load i32, ptr %15, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, ptr %12, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, ptr %15, align 4
  %26 = load i32, ptr %14, align 4
  %27 = load i32, ptr %13, align 4
  %28 = sub nsw i32 %26, %27
  %29 = add nsw i32 %28, 34
  %30 = load i32, ptr %15, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, ptr %15, align 4
  %32 = load i32, ptr %15, align 4
  %33 = icmp sgt i32 %32, 100
  br i1 %33, label %34, label %37

34:                                               ; preds = %7
  %35 = load i32, ptr %15, align 4
  %36 = sub nsw i32 %35, 100
  store i32 %36, ptr %15, align 4
  br label %40

37:                                               ; preds = %7
  %38 = load i32, ptr %15, align 4
  %39 = add nsw i32 %38, 100
  store i32 %39, ptr %15, align 4
  br label %40

40:                                               ; preds = %37, %34
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Homebrew clang version 15.0.7"}
