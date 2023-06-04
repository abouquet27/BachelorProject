; ModuleID = 'cases/cryptkvs.ll'
source_filename = "/Users/adrienbouquet/Epfl/4_BA/PPOS/pps22-projet-vhdlisfun/done/cryptkvs.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.ckvs_command_mapping = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cryptkvs [<database>|<url>] stats\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"cryptkvs [<database>|<url>] get <key> <password>\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"cryptkvs [<database>|<url>] set <key> <password> <filename>\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"cryptkvs [<database>|<url>] new <key> <password>\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"httpd\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"cryptkvs <database> httpd <url>\00", align 1
@commands = constant [5 x %struct.ckvs_command_mapping] [%struct.ckvs_command_mapping { ptr @.str, ptr @.str.1, ptr @ckvs_local_stats, ptr @ckvs_client_stats }, %struct.ckvs_command_mapping { ptr @.str.2, ptr @.str.3, ptr @ckvs_local_get, ptr @ckvs_client_get }, %struct.ckvs_command_mapping { ptr @.str.4, ptr @.str.5, ptr @ckvs_local_set, ptr @ckvs_client_set }, %struct.ckvs_command_mapping { ptr @.str.6, ptr @.str.7, ptr @ckvs_local_new, ptr @ckvs_client_new }, %struct.ckvs_command_mapping { ptr @.str.8, ptr @.str.9, ptr @ckvs_httpd_mainloop, ptr @ckvs_httpd_mainloop }], align 16
@.str.10 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"http://\00", align 1

declare i32 @ckvs_local_stats(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @ckvs_client_stats(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @ckvs_local_get(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @ckvs_client_get(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @ckvs_local_set(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @ckvs_client_set(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @ckvs_local_new(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @ckvs_client_new(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @ckvs_httpd_mainloop(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ckvs_do_one_cmd(i32 noundef %0, ptr noundef %1) #1 {
  %3 = icmp slt i32 %0, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %52

5:                                                ; preds = %2
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds ptr, ptr %1, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strncmp(ptr noundef %7, ptr noundef @.str.10, i64 noundef 8)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = call i32 @strncmp(ptr noundef %7, ptr noundef @.str.11, i64 noundef 7)
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i1 [ true, %5 ], [ %14, %12 ]
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %49, %15
  %.01 = phi ptr [ @commands, %15 ], [ %50, %49 ]
  %19 = icmp ult ptr %.01, getelementptr (i8, ptr @commands, i64 160)
  br i1 %19, label %20, label %51

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ckvs_command_mapping, ptr %.01, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @strcmp(ptr noundef %9, ptr noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = sub nsw i32 %0, 3
  %27 = getelementptr inbounds ptr, ptr %1, i64 3
  %28 = trunc i8 %17 to i1
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ckvs_command_mapping, ptr %.01, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ckvs_command_mapping, ptr %.01, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 %35(ptr noundef %7, i32 noundef %26, ptr noundef %27)
  br label %52

37:                                               ; preds = %29
  br label %47

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.ckvs_command_mapping, ptr %.01, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ckvs_command_mapping, ptr %.01, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = call i32 %44(ptr noundef %7, i32 noundef %26, ptr noundef %27)
  br label %52

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47, %20
  br label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.ckvs_command_mapping, ptr %.01, i32 1
  br label %18, !llvm.loop !5

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %51, %42, %33, %4
  %.0 = phi i32 [ 6, %4 ], [ %36, %33 ], [ %45, %42 ], [ 6, %51 ]
  ret i32 %.0
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #0

declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #1 {
  %3 = call i32 @ckvs_do_one_cmd(i32 noundef %0, ptr noundef %1)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds ptr, ptr %1, i64 0
  %7 = load ptr, ptr %6, align 8
  call void @usage(ptr noundef %7, i32 noundef %3)
  br label %8

8:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @usage(ptr noundef %0, i32 noundef %1) #1 {
  ret void
}

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Homebrew clang version 16.0.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
