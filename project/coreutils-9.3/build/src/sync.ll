; ModuleID = 'coreutils-9.3/build/src/sync.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION] [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [137 x i8] c"Synchronize cached writes to persistent storage\0A\0AIf one or more files are specified, sync only them,\0Aor their containing file systems.\0A\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"  -d, --data             sync only file data, no unneeded metadata\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [71 x i8] c"  -f, --file-system      sync the file systems that contain the files\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [5 x i8] c"sync\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [3 x i8] c"df\00", align 1, !dbg !47
@long_options = internal constant [5 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.32, i32 0, ptr null, i32 100 }, %struct.rpl_option { ptr @.str.33, i32 0, ptr null, i32 102 }, %struct.rpl_option { ptr @.str.34, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.35, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !52
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !89
@Version = external global ptr, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !94
@.str.12 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1, !dbg !99
@rpl_optind = external global i32, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"cannot specify both --data and --file-system\00", align 1, !dbg !104
@.str.14 = private unnamed_addr constant [35 x i8] c"--data needs at least one argument\00", align 1, !dbg !109
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !114
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !119
@.str.17 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !124
@.str.18 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !129
@.str.19 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !134
@.str.20 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !136
@.str.21 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !141
@.str.22 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !143
@.str.23 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !145
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.15, ptr @.str.16 }, %struct.infomap { ptr @.str.17, ptr @.str.18 }, %struct.infomap { ptr @.str.19, ptr @.str.20 }, %struct.infomap { ptr @.str.21, ptr @.str.20 }, %struct.infomap { ptr @.str.22, ptr @.str.20 }, %struct.infomap { ptr @.str.23, ptr @.str.20 }, %struct.infomap zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !147
@.str.25 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !152
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !157
@.str.27 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !162
@.str.28 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !164
@.str.29 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !166
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !171
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !176
@.str.32 = private unnamed_addr constant [5 x i8] c"data\00", align 1, !dbg !181
@.str.33 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1, !dbg !183
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !185
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !187
@.str.36 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1, !dbg !192
@.str.37 = private unnamed_addr constant [36 x i8] c"couldn't reset non-blocking mode %s\00", align 1, !dbg !197
@.str.38 = private unnamed_addr constant [17 x i8] c"error syncing %s\00", align 1, !dbg !202
@.str.39 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1, !dbg !204

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !226 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !230, metadata !DIExpression()), !dbg !231
  %2 = icmp ne i32 %0, 0, !dbg !232
  br i1 %2, label %3, label %9, !dbg !234

3:                                                ; preds = %1
  br label %4, !dbg !235

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !236, !tbaa !238
  %6 = load ptr, ptr @program_name, align 8, !dbg !236, !tbaa !238
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !236
  br label %8, !dbg !236

8:                                                ; preds = %4
  br label %22, !dbg !236

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !242, !tbaa !238
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !244
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !245, !tbaa !238
  %13 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %12), !dbg !246
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !247, !tbaa !238
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %14), !dbg !248
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !249, !tbaa !238
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %16), !dbg !250
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !251, !tbaa !238
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %18), !dbg !252
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !253, !tbaa !238
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %20), !dbg !254
  call void @emit_ancillary_info(ptr noundef @.str.7), !dbg !255
  br label %22

22:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #8, !dbg !256
  unreachable, !dbg !256
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !257 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !318 i32 @printf(ptr noundef, ...) #2

declare !dbg !321 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !324 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !328, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #9, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %2, metadata !329, metadata !DIExpression()), !dbg !345
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !345
  call void @llvm.dbg.value(metadata ptr %0, metadata !338, metadata !DIExpression()), !dbg !343
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !346
  call void @llvm.dbg.value(metadata ptr %3, metadata !339, metadata !DIExpression()), !dbg !343
  br label %4, !dbg !347

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !343
  call void @llvm.dbg.value(metadata ptr %.0, metadata !339, metadata !DIExpression()), !dbg !343
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !348
  %6 = load ptr, ptr %5, align 8, !dbg !348, !tbaa !349
  %7 = icmp ne ptr %6, null, !dbg !351
  br i1 %7, label %8, label %14, !dbg !352

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !353
  %10 = load ptr, ptr %9, align 8, !dbg !353, !tbaa !349
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !353
  %12 = icmp eq i32 %11, 0, !dbg !353
  %13 = xor i1 %12, true, !dbg !354
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !343
  br i1 %15, label %16, label %18, !dbg !347

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !355
  call void @llvm.dbg.value(metadata ptr %17, metadata !339, metadata !DIExpression()), !dbg !343
  br label %4, !dbg !347, !llvm.loop !356

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !359
  %20 = load ptr, ptr %19, align 8, !dbg !359, !tbaa !361
  %21 = icmp ne ptr %20, null, !dbg !362
  br i1 %21, label %22, label %25, !dbg !363

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !364
  %24 = load ptr, ptr %23, align 8, !dbg !364, !tbaa !361
  call void @llvm.dbg.value(metadata ptr %24, metadata !338, metadata !DIExpression()), !dbg !343
  br label %25, !dbg !365

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !343
  call void @llvm.dbg.value(metadata ptr %.01, metadata !338, metadata !DIExpression()), !dbg !343
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef @.str.10, ptr noundef @.str.25), !dbg !366
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !367
  call void @llvm.dbg.value(metadata ptr %27, metadata !341, metadata !DIExpression()), !dbg !343
  %28 = icmp ne ptr %27, null, !dbg !368
  br i1 %28, label %29, label %35, !dbg !370

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.26, i64 noundef 3), !dbg !371
  %31 = icmp ne i32 %30, 0, !dbg !371
  br i1 %31, label %32, label %35, !dbg !372

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !373, !tbaa !238
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.27, ptr noundef %33), !dbg !375
  br label %35, !dbg !376

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.15), !dbg !377
  %37 = icmp eq i32 %36, 0, !dbg !377
  br i1 %37, label %38, label %39, !dbg !377

38:                                               ; preds = %35
  br label %40, !dbg !377

39:                                               ; preds = %35
  br label %40, !dbg !377

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.28, %38 ], [ %0, %39 ], !dbg !377
  call void @llvm.dbg.value(metadata ptr %41, metadata !342, metadata !DIExpression()), !dbg !343
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.29, ptr noundef @.str.25, ptr noundef %41), !dbg !378
  %43 = icmp eq ptr %.01, %0, !dbg !379
  %44 = zext i1 %43 to i64, !dbg !380
  %45 = select i1 %43, ptr @.str.31, ptr @.str.8, !dbg !380
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.30, ptr noundef %.01, ptr noundef %45), !dbg !381
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #9, !dbg !382
  ret void, !dbg !382
}

; Function Attrs: noreturn
declare !dbg !383 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !385 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !389 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !393 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !400 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !405, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata ptr %1, metadata !406, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i8 0, metadata !410, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i8 0, metadata !411, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i8 1, metadata !413, metadata !DIExpression()), !dbg !414
  %3 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !415
  %4 = load ptr, ptr %3, align 8, !dbg !415, !tbaa !238
  call void @set_program_name(ptr noundef %4), !dbg !416
  %5 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.8), !dbg !417
  %6 = call i32 @atexit(ptr noundef @close_stdout), !dbg !418
  br label %7, !dbg !419

7:                                                ; preds = %18, %2
  %.05 = phi i8 [ 0, %2 ], [ %.16, %18 ], !dbg !420
  %.03 = phi i8 [ 0, %2 ], [ %.14, %18 ], !dbg !414
  call void @llvm.dbg.value(metadata i8 %.03, metadata !411, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i8 %.05, metadata !410, metadata !DIExpression()), !dbg !414
  %8 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.9, ptr noundef @long_options, ptr noundef null), !dbg !421
  call void @llvm.dbg.value(metadata i32 %8, metadata !407, metadata !DIExpression()), !dbg !414
  %9 = icmp ne i32 %8, -1, !dbg !422
  br i1 %9, label %10, label %19, !dbg !419

10:                                               ; preds = %7
  switch i32 %8, label %17 [
    i32 100, label %11
    i32 102, label %12
    i32 -130, label %13
    i32 -131, label %14
  ], !dbg !423

11:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8 1, metadata !410, metadata !DIExpression()), !dbg !414
  br label %18, !dbg !425

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8 1, metadata !411, metadata !DIExpression()), !dbg !414
  br label %18, !dbg !427

13:                                               ; preds = %10
  call void @usage(i32 noundef 0) #8, !dbg !428
  unreachable, !dbg !428

14:                                               ; preds = %10
  %15 = load ptr, ptr @__stdoutp, align 8, !dbg !429, !tbaa !238
  %16 = load ptr, ptr @Version, align 8, !dbg !429, !tbaa !238
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %15, ptr noundef @.str.7, ptr noundef @.str.10, ptr noundef %16, ptr noundef @.str.11, ptr noundef @.str.12, ptr noundef null), !dbg !429
  call void @exit(i32 noundef 0) #8, !dbg !429
  unreachable, !dbg !429

17:                                               ; preds = %10
  call void @usage(i32 noundef 1) #8, !dbg !430
  unreachable, !dbg !430

18:                                               ; preds = %12, %11
  %.16 = phi i8 [ %.05, %12 ], [ 1, %11 ], !dbg !414
  %.14 = phi i8 [ 1, %12 ], [ %.03, %11 ], !dbg !414
  call void @llvm.dbg.value(metadata i8 %.14, metadata !411, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i8 %.16, metadata !410, metadata !DIExpression()), !dbg !414
  br label %7, !dbg !419, !llvm.loop !431

19:                                               ; preds = %7
  %20 = load i32, ptr @rpl_optind, align 4, !dbg !433, !tbaa !434
  %21 = icmp slt i32 %20, %0, !dbg !436
  %22 = zext i1 %21 to i8, !dbg !437
  call void @llvm.dbg.value(metadata i8 %22, metadata !408, metadata !DIExpression()), !dbg !414
  %23 = trunc i8 %.05 to i1, !dbg !438
  br i1 %23, label %24, label %27, !dbg !440

24:                                               ; preds = %19
  %25 = trunc i8 %.03 to i1, !dbg !441
  br i1 %25, label %26, label %27, !dbg !442

26:                                               ; preds = %24
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.13), !dbg !443
  unreachable, !dbg !443

27:                                               ; preds = %24, %19
  %28 = trunc i8 %22 to i1, !dbg !445
  br i1 %28, label %32, label %29, !dbg !447

29:                                               ; preds = %27
  %30 = trunc i8 %.05 to i1, !dbg !448
  br i1 %30, label %31, label %32, !dbg !449

31:                                               ; preds = %29
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.14), !dbg !450
  unreachable, !dbg !450

32:                                               ; preds = %29, %27
  %33 = trunc i8 %22 to i1, !dbg !451
  br i1 %33, label %34, label %36, !dbg !453

34:                                               ; preds = %32
  %35 = trunc i8 %.03 to i1, !dbg !454
  br i1 %35, label %36, label %37, !dbg !455

36:                                               ; preds = %34, %32
  call void @llvm.dbg.value(metadata i32 3, metadata !412, metadata !DIExpression()), !dbg !414
  br label %46, !dbg !456

37:                                               ; preds = %34
  %38 = trunc i8 %.03 to i1, !dbg !457
  br i1 %38, label %39, label %40, !dbg !459

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 2, metadata !412, metadata !DIExpression()), !dbg !414
  br label %45, !dbg !460

40:                                               ; preds = %37
  %41 = trunc i8 %.05 to i1, !dbg !461
  br i1 %41, label %43, label %42, !dbg !463

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()), !dbg !414
  br label %44, !dbg !464

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !412, metadata !DIExpression()), !dbg !414
  br label %44

44:                                               ; preds = %43, %42
  %.01 = phi i32 [ 1, %43 ], [ 0, %42 ], !dbg !465
  call void @llvm.dbg.value(metadata i32 %.01, metadata !412, metadata !DIExpression()), !dbg !414
  br label %45

45:                                               ; preds = %44, %39
  %.12 = phi i32 [ 2, %39 ], [ %.01, %44 ], !dbg !466
  call void @llvm.dbg.value(metadata i32 %.12, metadata !412, metadata !DIExpression()), !dbg !414
  br label %46

46:                                               ; preds = %45, %36
  %.2 = phi i32 [ 3, %36 ], [ %.12, %45 ], !dbg !467
  call void @llvm.dbg.value(metadata i32 %.2, metadata !412, metadata !DIExpression()), !dbg !414
  %47 = icmp eq i32 %.2, 3, !dbg !468
  br i1 %47, label %48, label %49, !dbg !470

48:                                               ; preds = %46
  call void @sync(), !dbg !471
  br label %69, !dbg !471

49:                                               ; preds = %46
  br label %50, !dbg !472

50:                                               ; preds = %65, %49
  %.0 = phi i8 [ 1, %49 ], [ %64, %65 ], !dbg !414
  call void @llvm.dbg.value(metadata i8 %.0, metadata !413, metadata !DIExpression()), !dbg !414
  %51 = load i32, ptr @rpl_optind, align 4, !dbg !474, !tbaa !434
  %52 = icmp slt i32 %51, %0, !dbg !477
  br i1 %52, label %53, label %68, !dbg !478

53:                                               ; preds = %50
  %54 = load i32, ptr @rpl_optind, align 4, !dbg !479, !tbaa !434
  %55 = sext i32 %54 to i64, !dbg !480
  %56 = getelementptr inbounds ptr, ptr %1, i64 %55, !dbg !480
  %57 = load ptr, ptr %56, align 8, !dbg !480, !tbaa !238
  %58 = call zeroext i1 @sync_arg(i32 noundef %.2, ptr noundef %57), !dbg !481
  %59 = zext i1 %58 to i32, !dbg !481
  %60 = trunc i8 %.0 to i1, !dbg !482
  %61 = zext i1 %60 to i32, !dbg !482
  %62 = and i32 %61, %59, !dbg !482
  %63 = icmp ne i32 %62, 0, !dbg !482
  %64 = zext i1 %63 to i8, !dbg !482
  call void @llvm.dbg.value(metadata i8 %64, metadata !413, metadata !DIExpression()), !dbg !414
  br label %65, !dbg !483

65:                                               ; preds = %53
  %66 = load i32, ptr @rpl_optind, align 4, !dbg !484, !tbaa !434
  %67 = add nsw i32 %66, 1, !dbg !484
  store i32 %67, ptr @rpl_optind, align 4, !dbg !484, !tbaa !434
  br label %50, !dbg !485, !llvm.loop !486

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %48
  %.1 = phi i8 [ 1, %48 ], [ %.0, %68 ], !dbg !488
  call void @llvm.dbg.value(metadata i8 %.1, metadata !413, metadata !DIExpression()), !dbg !414
  %70 = trunc i8 %.1 to i1, !dbg !489
  %71 = zext i1 %70 to i64, !dbg !489
  %72 = select i1 %70, i32 0, i32 1, !dbg !489
  ret i32 %72, !dbg !490
}

declare !dbg !491 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !493 i32 @atexit(ptr noundef) #2

declare !dbg !499 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !503 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !507 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !511 void @sync() #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @sync_arg(i32 noundef %0, ptr noundef %1) #7 !dbg !513 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !517, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata ptr %1, metadata !518, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i8 1, metadata !519, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32 4, metadata !520, metadata !DIExpression()), !dbg !529
  %3 = call i32 (ptr, i32, ...) @rpl_open(ptr noundef %1, i32 noundef 4), !dbg !530
  call void @llvm.dbg.value(metadata i32 %3, metadata !521, metadata !DIExpression()), !dbg !529
  %4 = icmp slt i32 %3, 0, !dbg !531
  br i1 %4, label %5, label %18, !dbg !532

5:                                                ; preds = %2
  %6 = call ptr @__error(), !dbg !533
  %7 = load i32, ptr %6, align 4, !dbg !533, !tbaa !434
  call void @llvm.dbg.value(metadata i32 %7, metadata !522, metadata !DIExpression()), !dbg !534
  %8 = icmp ne i32 4, 5, !dbg !535
  br i1 %8, label %9, label %11, !dbg !537

9:                                                ; preds = %5
  %10 = call i32 (ptr, i32, ...) @rpl_open(ptr noundef %1, i32 noundef 5), !dbg !538
  call void @llvm.dbg.value(metadata i32 %10, metadata !521, metadata !DIExpression()), !dbg !529
  br label %11, !dbg !539

11:                                               ; preds = %9, %5
  %.05 = phi i32 [ %10, %9 ], [ %3, %5 ], !dbg !529
  call void @llvm.dbg.value(metadata i32 %.05, metadata !521, metadata !DIExpression()), !dbg !529
  %12 = icmp slt i32 %.05, 0, !dbg !540
  br i1 %12, label %13, label %15, !dbg !542

13:                                               ; preds = %11
  %14 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %1), !dbg !543
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef @.str.36, ptr noundef %14), !dbg !545
  br label %16, !dbg !546

15:                                               ; preds = %11
  br label %16, !dbg !547

16:                                               ; preds = %15, %13
  %.02 = phi i32 [ 1, %13 ], [ 0, %15 ]
  switch i32 %.02, label %55 [
    i32 0, label %17
  ]

17:                                               ; preds = %16
  br label %18, !dbg !548

18:                                               ; preds = %17, %2
  %.16 = phi i32 [ %.05, %17 ], [ %3, %2 ], !dbg !529
  call void @llvm.dbg.value(metadata i32 %.16, metadata !521, metadata !DIExpression()), !dbg !529
  %19 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %.16, i32 noundef 3), !dbg !549
  call void @llvm.dbg.value(metadata i32 %19, metadata !525, metadata !DIExpression()), !dbg !529
  %20 = icmp eq i32 %19, -1, !dbg !550
  br i1 %20, label %25, label %21, !dbg !552

21:                                               ; preds = %18
  %22 = and i32 %19, -5, !dbg !553
  %23 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %.16, i32 noundef 4, i32 noundef %22), !dbg !554
  %24 = icmp slt i32 %23, 0, !dbg !555
  br i1 %24, label %25, label %29, !dbg !556

25:                                               ; preds = %21, %18
  %26 = call ptr @__error(), !dbg !557
  %27 = load i32, ptr %26, align 4, !dbg !557, !tbaa !434
  %28 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %1), !dbg !559
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %27, ptr noundef @.str.37, ptr noundef %28), !dbg !560
  call void @llvm.dbg.value(metadata i8 0, metadata !519, metadata !DIExpression()), !dbg !529
  br label %29, !dbg !561

29:                                               ; preds = %25, %21
  %.03 = phi i8 [ 0, %25 ], [ 1, %21 ], !dbg !529
  call void @llvm.dbg.value(metadata i8 %.03, metadata !519, metadata !DIExpression()), !dbg !529
  %30 = trunc i8 %.03 to i1, !dbg !562
  %31 = zext i1 %30 to i32, !dbg !562
  %32 = icmp eq i32 %31, 1, !dbg !563
  br i1 %32, label %33, label %46, !dbg !564

33:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 -1, metadata !526, metadata !DIExpression()), !dbg !565
  switch i32 %0, label %38 [
    i32 1, label %34
    i32 0, label %36
  ], !dbg !566

34:                                               ; preds = %33
  %35 = call i32 @fdatasync(i32 noundef %.16), !dbg !567
  call void @llvm.dbg.value(metadata i32 %35, metadata !526, metadata !DIExpression()), !dbg !565
  br label %39, !dbg !569

36:                                               ; preds = %33
  %37 = call i32 @"\01_fsync"(i32 noundef %.16), !dbg !570
  call void @llvm.dbg.value(metadata i32 %37, metadata !526, metadata !DIExpression()), !dbg !565
  br label %39, !dbg !571

38:                                               ; preds = %33
  br label %39, !dbg !572

39:                                               ; preds = %38, %36, %34
  %.01 = phi i32 [ -1, %38 ], [ %37, %36 ], [ %35, %34 ], !dbg !565
  call void @llvm.dbg.value(metadata i32 %.01, metadata !526, metadata !DIExpression()), !dbg !565
  %40 = icmp slt i32 %.01, 0, !dbg !573
  br i1 %40, label %41, label %45, !dbg !575

41:                                               ; preds = %39
  %42 = call ptr @__error(), !dbg !576
  %43 = load i32, ptr %42, align 4, !dbg !576, !tbaa !434
  %44 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %1), !dbg !578
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %43, ptr noundef @.str.38, ptr noundef %44), !dbg !579
  call void @llvm.dbg.value(metadata i8 0, metadata !519, metadata !DIExpression()), !dbg !529
  br label %45, !dbg !580

45:                                               ; preds = %41, %39
  %.14 = phi i8 [ 0, %41 ], [ %.03, %39 ], !dbg !529
  call void @llvm.dbg.value(metadata i8 %.14, metadata !519, metadata !DIExpression()), !dbg !529
  br label %46, !dbg !581

46:                                               ; preds = %45, %29
  %.2 = phi i8 [ %.14, %45 ], [ %.03, %29 ], !dbg !529
  call void @llvm.dbg.value(metadata i8 %.2, metadata !519, metadata !DIExpression()), !dbg !529
  %47 = call i32 @"\01_close"(i32 noundef %.16), !dbg !582
  %48 = icmp slt i32 %47, 0, !dbg !584
  br i1 %48, label %49, label %53, !dbg !585

49:                                               ; preds = %46
  %50 = call ptr @__error(), !dbg !586
  %51 = load i32, ptr %50, align 4, !dbg !586, !tbaa !434
  %52 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %1), !dbg !588
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %51, ptr noundef @.str.39, ptr noundef %52), !dbg !589
  call void @llvm.dbg.value(metadata i8 0, metadata !519, metadata !DIExpression()), !dbg !529
  br label %53, !dbg !590

53:                                               ; preds = %49, %46
  %.3 = phi i8 [ 0, %49 ], [ %.2, %46 ], !dbg !529
  call void @llvm.dbg.value(metadata i8 %.3, metadata !519, metadata !DIExpression()), !dbg !529
  %54 = trunc i8 %.3 to i1, !dbg !591
  br label %55

55:                                               ; preds = %53, %16
  %.1 = phi i1 [ false, %16 ], [ %54, %53 ], !dbg !529
  ret i1 %.1, !dbg !592
}

declare !dbg !593 i32 @rpl_open(ptr noundef, i32 noundef, ...) #2

declare !dbg !597 ptr @__error() #2

declare !dbg !601 ptr @quotearg_style(i32 noundef, ptr noundef) #2

declare !dbg !604 i32 @"\01_fcntl"(i32 noundef, i32 noundef, ...) #2

declare !dbg !608 i32 @fdatasync(i32 noundef) #2

declare !dbg !612 i32 @"\01_fsync"(i32 noundef) #2

declare !dbg !613 i32 @"\01_close"(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noreturn nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!54}
!llvm.ident = !{!219}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/sync.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1096, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 137)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 68)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 71)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 48)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 57)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 5)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 3)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "long_options", scope: !54, file: !2, line: 48, type: !209, isLocal: true, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !83, globals: !88, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!55 = !{!56, !63, !69}
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sync_mode", file: !2, line: 40, baseType: !57, size: 32, elements: !58)
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "MODE_FILE", value: 0)
!60 = !DIEnumerator(name: "MODE_DATA", value: 1)
!61 = !DIEnumerator(name: "MODE_FILE_SYSTEM", value: 2)
!62 = !DIEnumerator(name: "MODE_SYNC", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 332, baseType: !65, size: 32, elements: !66)
!64 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!68 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !70, line: 32, baseType: !57, size: 32, elements: !71)
!70 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!72 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!73 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!74 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!75 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!76 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!77 = !DIEnumerator(name: "c_quoting_style", value: 5)
!78 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!79 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!80 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!81 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!82 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!83 = !{!84, !86, !87}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !89, !94, !99, !104, !109, !114, !119, !124, !129, !134, !136, !141, !143, !145, !147, !152, !157, !162, !164, !166, !171, !176, !181, !183, !185, !187, !52, !192, !197, !202, !204}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 14)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 13)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 18)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 45)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 35)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !64, line: 660, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 2)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !64, line: 660, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 16)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !64, line: 661, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 10)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !64, line: 661, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 22)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !64, line: 662, type: !126, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !64, line: 662, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 15)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !64, line: 663, type: !126, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !64, line: 664, type: !126, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !64, line: 665, type: !126, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !64, line: 678, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 23)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !64, line: 678, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 40)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !64, line: 683, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 4)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !64, line: 689, type: !24, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !64, line: 695, type: !39, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !64, line: 696, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 27)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !64, line: 698, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 51)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !64, line: 699, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 12)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !39, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !178, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !39, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 17)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 36)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !194, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 19)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 1280, elements: !40)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !212, line: 50, size: 256, elements: !213)
!212 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!213 = !{!214, !215, !216, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !212, line: 52, baseType: !84, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !211, file: !212, line: 55, baseType: !65, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !211, file: !212, line: 56, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !211, file: !212, line: 57, baseType: !65, size: 32, offset: 192)
!219 = !{!"Homebrew clang version 16.0.4"}
!220 = !{i32 7, !"Dwarf Version", i32 4}
!221 = !{i32 2, !"Debug Info Version", i32 3}
!222 = !{i32 1, !"wchar_size", i32 4}
!223 = !{i32 8, !"PIC Level", i32 2}
!224 = !{i32 7, !"uwtable", i32 2}
!225 = !{i32 7, !"frame-pointer", i32 2}
!226 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 58, type: !227, scopeLine: 59, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !65}
!229 = !{!230}
!230 = !DILocalVariable(name: "status", arg: 1, scope: !226, file: !2, line: 58, type: !65)
!231 = !DILocation(line: 0, scope: !226)
!232 = !DILocation(line: 60, column: 14, scope: !233)
!233 = distinct !DILexicalBlock(scope: !226, file: !2, line: 60, column: 7)
!234 = !DILocation(line: 60, column: 7, scope: !226)
!235 = !DILocation(line: 61, column: 5, scope: !233)
!236 = !DILocation(line: 61, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !2, line: 61, column: 5)
!238 = !{!239, !239, i64 0}
!239 = !{!"any pointer", !240, i64 0}
!240 = !{!"omnipotent char", !241, i64 0}
!241 = !{!"Simple C/C++ TBAA"}
!242 = !DILocation(line: 64, column: 52, scope: !243)
!243 = distinct !DILexicalBlock(scope: !233, file: !2, line: 63, column: 5)
!244 = !DILocation(line: 64, column: 7, scope: !243)
!245 = !DILocation(line: 71, column: 5, scope: !243)
!246 = !DILocation(line: 65, column: 7, scope: !243)
!247 = !DILocation(line: 75, column: 5, scope: !243)
!248 = !DILocation(line: 73, column: 7, scope: !243)
!249 = !DILocation(line: 78, column: 5, scope: !243)
!250 = !DILocation(line: 76, column: 7, scope: !243)
!251 = !DILocation(line: 80, column: 39, scope: !243)
!252 = !DILocation(line: 80, column: 7, scope: !243)
!253 = !DILocation(line: 81, column: 42, scope: !243)
!254 = !DILocation(line: 81, column: 7, scope: !243)
!255 = !DILocation(line: 82, column: 7, scope: !243)
!256 = !DILocation(line: 84, column: 3, scope: !226)
!257 = !DISubprogram(name: "fprintf", scope: !258, file: !258, line: 155, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!258 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!259 = !DISubroutineType(types: !260)
!260 = !{!65, !261, !316, null}
!261 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !264, line: 157, baseType: !265)
!264 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !264, line: 126, size: 1216, elements: !266)
!266 = !{!267, !270, !271, !272, !274, !275, !280, !281, !282, !286, !290, !300, !304, !305, !308, !309, !311, !313, !314, !315}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !265, file: !264, line: 127, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !265, file: !264, line: 128, baseType: !65, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !265, file: !264, line: 129, baseType: !65, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !265, file: !264, line: 130, baseType: !273, size: 16, offset: 128)
!273 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !265, file: !264, line: 131, baseType: !273, size: 16, offset: 144)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !265, file: !264, line: 132, baseType: !276, size: 128, offset: 192)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !264, line: 92, size: 128, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !276, file: !264, line: 93, baseType: !268, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !276, file: !264, line: 94, baseType: !65, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !265, file: !264, line: 133, baseType: !65, size: 32, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !265, file: !264, line: 136, baseType: !87, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !265, file: !264, line: 137, baseType: !283, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!65, !87}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !265, file: !264, line: 138, baseType: !287, size: 64, offset: 512)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!65, !87, !86, !65}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !265, file: !264, line: 139, baseType: !291, size: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !87, !294, !65}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !264, line: 81, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !296, line: 71, baseType: !297)
!296 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !298, line: 48, baseType: !299)
!298 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!299 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !265, file: !264, line: 140, baseType: !301, size: 64, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!65, !87, !84, !65}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !265, file: !264, line: 143, baseType: !276, size: 128, offset: 704)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !265, file: !264, line: 144, baseType: !306, size: 64, offset: 832)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !264, line: 98, flags: DIFlagFwdDecl)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !265, file: !264, line: 145, baseType: !65, size: 32, offset: 896)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !265, file: !264, line: 148, baseType: !310, size: 24, offset: 928)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 24, elements: !50)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !265, file: !264, line: 149, baseType: !312, size: 8, offset: 952)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 8, elements: !45)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !265, file: !264, line: 152, baseType: !276, size: 128, offset: 960)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !265, file: !264, line: 155, baseType: !65, size: 32, offset: 1088)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !265, file: !264, line: 156, baseType: !294, size: 64, offset: 1152)
!316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!317 = !{}
!318 = !DISubprogram(name: "printf", scope: !258, file: !258, line: 175, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!319 = !DISubroutineType(types: !320)
!320 = !{!65, !316, null}
!321 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !258, file: !258, line: 157, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!322 = !DISubroutineType(types: !323)
!323 = !{!65, !316, !261}
!324 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !64, file: !64, line: 657, type: !325, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !84}
!327 = !{!328, !329, !338, !339, !341, !342}
!328 = !DILocalVariable(name: "program", arg: 1, scope: !324, file: !64, line: 657, type: !84)
!329 = !DILocalVariable(name: "infomap", scope: !324, file: !64, line: 659, type: !330)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 896, elements: !336)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !324, file: !64, line: 659, size: 128, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !332, file: !64, line: 659, baseType: !84, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !332, file: !64, line: 659, baseType: !84, size: 64, offset: 64)
!336 = !{!337}
!337 = !DISubrange(count: 7)
!338 = !DILocalVariable(name: "node", scope: !324, file: !64, line: 669, type: !84)
!339 = !DILocalVariable(name: "map_prog", scope: !324, file: !64, line: 670, type: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!341 = !DILocalVariable(name: "lc_messages", scope: !324, file: !64, line: 682, type: !84)
!342 = !DILocalVariable(name: "url_program", scope: !324, file: !64, line: 695, type: !84)
!343 = !DILocation(line: 0, scope: !324)
!344 = !DILocation(line: 659, column: 3, scope: !324)
!345 = !DILocation(line: 659, column: 67, scope: !324)
!346 = !DILocation(line: 670, column: 36, scope: !324)
!347 = !DILocation(line: 672, column: 3, scope: !324)
!348 = !DILocation(line: 672, column: 20, scope: !324)
!349 = !{!350, !239, i64 0}
!350 = !{!"infomap", !239, i64 0, !239, i64 8}
!351 = !DILocation(line: 672, column: 10, scope: !324)
!352 = !DILocation(line: 672, column: 28, scope: !324)
!353 = !DILocation(line: 672, column: 33, scope: !324)
!354 = !DILocation(line: 672, column: 31, scope: !324)
!355 = !DILocation(line: 673, column: 13, scope: !324)
!356 = distinct !{!356, !347, !355, !357, !358}
!357 = !{!"llvm.loop.mustprogress"}
!358 = !{!"llvm.loop.unroll.disable"}
!359 = !DILocation(line: 675, column: 17, scope: !360)
!360 = distinct !DILexicalBlock(scope: !324, file: !64, line: 675, column: 7)
!361 = !{!350, !239, i64 8}
!362 = !DILocation(line: 675, column: 7, scope: !360)
!363 = !DILocation(line: 675, column: 7, scope: !324)
!364 = !DILocation(line: 676, column: 22, scope: !360)
!365 = !DILocation(line: 676, column: 5, scope: !360)
!366 = !DILocation(line: 678, column: 3, scope: !324)
!367 = !DILocation(line: 682, column: 29, scope: !324)
!368 = !DILocation(line: 683, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !324, file: !64, line: 683, column: 7)
!370 = !DILocation(line: 683, column: 19, scope: !369)
!371 = !DILocation(line: 683, column: 22, scope: !369)
!372 = !DILocation(line: 683, column: 7, scope: !324)
!373 = !DILocation(line: 690, column: 61, scope: !374)
!374 = distinct !DILexicalBlock(scope: !369, file: !64, line: 684, column: 5)
!375 = !DILocation(line: 689, column: 7, scope: !374)
!376 = !DILocation(line: 691, column: 5, scope: !374)
!377 = !DILocation(line: 695, column: 29, scope: !324)
!378 = !DILocation(line: 696, column: 3, scope: !324)
!379 = !DILocation(line: 699, column: 22, scope: !324)
!380 = !DILocation(line: 699, column: 17, scope: !324)
!381 = !DILocation(line: 698, column: 3, scope: !324)
!382 = !DILocation(line: 700, column: 1, scope: !324)
!383 = !DISubprogram(name: "exit", scope: !384, file: !384, line: 145, type: !227, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !317)
!384 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!385 = !DISubprogram(name: "strcmp", scope: !386, file: !386, line: 77, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!386 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!387 = !DISubroutineType(types: !388)
!388 = !{!65, !84, !84}
!389 = !DISubprogram(name: "setlocale", scope: !390, file: !390, line: 53, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!390 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!391 = !DISubroutineType(types: !392)
!392 = !{!86, !65, !84}
!393 = !DISubprogram(name: "strncmp", scope: !386, file: !386, line: 84, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!394 = !DISubroutineType(types: !395)
!395 = !{!65, !84, !84, !396}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !397, line: 31, baseType: !398)
!397 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !298, line: 94, baseType: !399)
!399 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!400 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 172, type: !401, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !404)
!401 = !DISubroutineType(types: !402)
!402 = !{!65, !65, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!404 = !{!405, !406, !407, !408, !410, !411, !412, !413}
!405 = !DILocalVariable(name: "argc", arg: 1, scope: !400, file: !2, line: 172, type: !65)
!406 = !DILocalVariable(name: "argv", arg: 2, scope: !400, file: !2, line: 172, type: !403)
!407 = !DILocalVariable(name: "c", scope: !400, file: !2, line: 174, type: !65)
!408 = !DILocalVariable(name: "args_specified", scope: !400, file: !2, line: 175, type: !409)
!409 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!410 = !DILocalVariable(name: "arg_data", scope: !400, file: !2, line: 176, type: !409)
!411 = !DILocalVariable(name: "arg_file_system", scope: !400, file: !2, line: 176, type: !409)
!412 = !DILocalVariable(name: "mode", scope: !400, file: !2, line: 177, type: !56)
!413 = !DILocalVariable(name: "ok", scope: !400, file: !2, line: 178, type: !409)
!414 = !DILocation(line: 0, scope: !400)
!415 = !DILocation(line: 181, column: 21, scope: !400)
!416 = !DILocation(line: 181, column: 3, scope: !400)
!417 = !DILocation(line: 182, column: 3, scope: !400)
!418 = !DILocation(line: 186, column: 3, scope: !400)
!419 = !DILocation(line: 188, column: 3, scope: !400)
!420 = !DILocation(line: 176, column: 8, scope: !400)
!421 = !DILocation(line: 188, column: 15, scope: !400)
!422 = !DILocation(line: 189, column: 10, scope: !400)
!423 = !DILocation(line: 191, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !400, file: !2, line: 190, column: 5)
!425 = !DILocation(line: 195, column: 11, scope: !426)
!426 = distinct !DILexicalBlock(scope: !424, file: !2, line: 192, column: 9)
!427 = !DILocation(line: 199, column: 11, scope: !426)
!428 = !DILocation(line: 201, column: 9, scope: !426)
!429 = !DILocation(line: 203, column: 9, scope: !426)
!430 = !DILocation(line: 206, column: 11, scope: !426)
!431 = distinct !{!431, !419, !432, !357, !358}
!432 = !DILocation(line: 208, column: 5, scope: !400)
!433 = !DILocation(line: 210, column: 20, scope: !400)
!434 = !{!435, !435, i64 0}
!435 = !{!"int", !240, i64 0}
!436 = !DILocation(line: 210, column: 27, scope: !400)
!437 = !DILocation(line: 210, column: 18, scope: !400)
!438 = !DILocation(line: 212, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !400, file: !2, line: 212, column: 7)
!440 = !DILocation(line: 212, column: 16, scope: !439)
!441 = !DILocation(line: 212, column: 19, scope: !439)
!442 = !DILocation(line: 212, column: 7, scope: !400)
!443 = !DILocation(line: 214, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !2, line: 213, column: 5)
!445 = !DILocation(line: 218, column: 8, scope: !446)
!446 = distinct !DILexicalBlock(scope: !400, file: !2, line: 218, column: 7)
!447 = !DILocation(line: 218, column: 23, scope: !446)
!448 = !DILocation(line: 218, column: 26, scope: !446)
!449 = !DILocation(line: 218, column: 7, scope: !400)
!450 = !DILocation(line: 219, column: 5, scope: !446)
!451 = !DILocation(line: 221, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !400, file: !2, line: 221, column: 7)
!453 = !DILocation(line: 221, column: 24, scope: !452)
!454 = !DILocation(line: 221, column: 28, scope: !452)
!455 = !DILocation(line: 221, column: 7, scope: !400)
!456 = !DILocation(line: 222, column: 5, scope: !452)
!457 = !DILocation(line: 223, column: 12, scope: !458)
!458 = distinct !DILexicalBlock(scope: !452, file: !2, line: 223, column: 12)
!459 = !DILocation(line: 223, column: 12, scope: !452)
!460 = !DILocation(line: 224, column: 5, scope: !458)
!461 = !DILocation(line: 225, column: 14, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !2, line: 225, column: 12)
!463 = !DILocation(line: 225, column: 12, scope: !458)
!464 = !DILocation(line: 226, column: 5, scope: !462)
!465 = !DILocation(line: 0, scope: !462)
!466 = !DILocation(line: 0, scope: !458)
!467 = !DILocation(line: 0, scope: !452)
!468 = !DILocation(line: 230, column: 12, scope: !469)
!469 = distinct !DILexicalBlock(scope: !400, file: !2, line: 230, column: 7)
!470 = !DILocation(line: 230, column: 7, scope: !400)
!471 = !DILocation(line: 231, column: 5, scope: !469)
!472 = !DILocation(line: 234, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !2, line: 233, column: 5)
!474 = !DILocation(line: 234, column: 14, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !2, line: 234, column: 7)
!476 = distinct !DILexicalBlock(scope: !473, file: !2, line: 234, column: 7)
!477 = !DILocation(line: 234, column: 21, scope: !475)
!478 = !DILocation(line: 234, column: 7, scope: !476)
!479 = !DILocation(line: 235, column: 36, scope: !475)
!480 = !DILocation(line: 235, column: 31, scope: !475)
!481 = !DILocation(line: 235, column: 15, scope: !475)
!482 = !DILocation(line: 235, column: 12, scope: !475)
!483 = !DILocation(line: 235, column: 9, scope: !475)
!484 = !DILocation(line: 234, column: 35, scope: !475)
!485 = !DILocation(line: 234, column: 7, scope: !475)
!486 = distinct !{!486, !478, !487, !357, !358}
!487 = !DILocation(line: 235, column: 43, scope: !476)
!488 = !DILocation(line: 178, column: 8, scope: !400)
!489 = !DILocation(line: 238, column: 10, scope: !400)
!490 = !DILocation(line: 238, column: 3, scope: !400)
!491 = !DISubprogram(name: "set_program_name", scope: !492, file: !492, line: 37, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!492 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!493 = !DISubprogram(name: "atexit", scope: !384, file: !384, line: 133, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!494 = !DISubroutineType(types: !495)
!495 = !{!65, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null}
!499 = !DISubprogram(name: "rpl_getopt_long", scope: !212, file: !212, line: 66, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!500 = !DISubroutineType(types: !501)
!501 = !{!65, !65, !403, !84, !502, !217}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!503 = !DISubprogram(name: "version_etc", scope: !504, file: !504, line: 65, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!504 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!505 = !DISubroutineType(types: !506)
!506 = !{null, !262, !84, !84, !84, null}
!507 = !DISubprogram(name: "error", scope: !508, file: !508, line: 395, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!508 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!509 = !DISubroutineType(types: !510)
!510 = !{null, !65, !65, !84, null}
!511 = !DISubprogram(name: "sync", scope: !512, file: !512, line: 598, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!512 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/unistd.h", directory: "")
!513 = distinct !DISubprogram(name: "sync_arg", scope: !2, file: !2, line: 91, type: !514, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{!409, !56, !84}
!516 = !{!517, !518, !519, !520, !521, !522, !525, !526}
!517 = !DILocalVariable(name: "mode", arg: 1, scope: !513, file: !2, line: 91, type: !56)
!518 = !DILocalVariable(name: "file", arg: 2, scope: !513, file: !2, line: 91, type: !84)
!519 = !DILocalVariable(name: "ret", scope: !513, file: !2, line: 93, type: !409)
!520 = !DILocalVariable(name: "open_flags", scope: !513, file: !2, line: 94, type: !65)
!521 = !DILocalVariable(name: "fd", scope: !513, file: !2, line: 95, type: !65)
!522 = !DILocalVariable(name: "rd_errno", scope: !523, file: !2, line: 110, type: !65)
!523 = distinct !DILexicalBlock(scope: !524, file: !2, line: 107, column: 5)
!524 = distinct !DILexicalBlock(scope: !513, file: !2, line: 106, column: 7)
!525 = !DILocalVariable(name: "fdflags", scope: !513, file: !2, line: 122, type: !65)
!526 = !DILocalVariable(name: "sync_status", scope: !527, file: !2, line: 133, type: !65)
!527 = distinct !DILexicalBlock(scope: !528, file: !2, line: 132, column: 5)
!528 = distinct !DILexicalBlock(scope: !513, file: !2, line: 131, column: 7)
!529 = !DILocation(line: 0, scope: !513)
!530 = !DILocation(line: 105, column: 8, scope: !513)
!531 = !DILocation(line: 106, column: 10, scope: !524)
!532 = !DILocation(line: 106, column: 7, scope: !513)
!533 = !DILocation(line: 110, column: 22, scope: !523)
!534 = !DILocation(line: 0, scope: !523)
!535 = !DILocation(line: 111, column: 22, scope: !536)
!536 = distinct !DILexicalBlock(scope: !523, file: !2, line: 111, column: 11)
!537 = !DILocation(line: 111, column: 11, scope: !523)
!538 = !DILocation(line: 112, column: 14, scope: !536)
!539 = !DILocation(line: 112, column: 9, scope: !536)
!540 = !DILocation(line: 113, column: 14, scope: !541)
!541 = distinct !DILexicalBlock(scope: !523, file: !2, line: 113, column: 11)
!542 = !DILocation(line: 113, column: 11, scope: !523)
!543 = !DILocation(line: 115, column: 54, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !2, line: 114, column: 9)
!545 = !DILocation(line: 115, column: 11, scope: !544)
!546 = !DILocation(line: 116, column: 11, scope: !544)
!547 = !DILocation(line: 118, column: 5, scope: !524)
!548 = !DILocation(line: 118, column: 5, scope: !523)
!549 = !DILocation(line: 122, column: 17, scope: !513)
!550 = !DILocation(line: 123, column: 15, scope: !551)
!551 = distinct !DILexicalBlock(scope: !513, file: !2, line: 123, column: 7)
!552 = !DILocation(line: 124, column: 7, scope: !551)
!553 = !DILocation(line: 124, column: 38, scope: !551)
!554 = !DILocation(line: 124, column: 10, scope: !551)
!555 = !DILocation(line: 124, column: 53, scope: !551)
!556 = !DILocation(line: 123, column: 7, scope: !513)
!557 = !DILocation(line: 126, column: 17, scope: !558)
!558 = distinct !DILexicalBlock(scope: !551, file: !2, line: 125, column: 5)
!559 = !DILocation(line: 127, column: 14, scope: !558)
!560 = !DILocation(line: 126, column: 7, scope: !558)
!561 = !DILocation(line: 129, column: 5, scope: !558)
!562 = !DILocation(line: 131, column: 7, scope: !528)
!563 = !DILocation(line: 131, column: 11, scope: !528)
!564 = !DILocation(line: 131, column: 7, scope: !513)
!565 = !DILocation(line: 0, scope: !527)
!566 = !DILocation(line: 135, column: 7, scope: !527)
!567 = !DILocation(line: 138, column: 25, scope: !568)
!568 = distinct !DILexicalBlock(scope: !527, file: !2, line: 136, column: 9)
!569 = !DILocation(line: 139, column: 11, scope: !568)
!570 = !DILocation(line: 142, column: 25, scope: !568)
!571 = !DILocation(line: 143, column: 11, scope: !568)
!572 = !DILocation(line: 153, column: 9, scope: !568)
!573 = !DILocation(line: 155, column: 23, scope: !574)
!574 = distinct !DILexicalBlock(scope: !527, file: !2, line: 155, column: 11)
!575 = !DILocation(line: 155, column: 11, scope: !527)
!576 = !DILocation(line: 157, column: 21, scope: !577)
!577 = distinct !DILexicalBlock(scope: !574, file: !2, line: 156, column: 9)
!578 = !DILocation(line: 157, column: 51, scope: !577)
!579 = !DILocation(line: 157, column: 11, scope: !577)
!580 = !DILocation(line: 159, column: 9, scope: !577)
!581 = !DILocation(line: 160, column: 5, scope: !527)
!582 = !DILocation(line: 162, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !513, file: !2, line: 162, column: 7)
!584 = !DILocation(line: 162, column: 18, scope: !583)
!585 = !DILocation(line: 162, column: 7, scope: !513)
!586 = !DILocation(line: 164, column: 17, scope: !587)
!587 = distinct !DILexicalBlock(scope: !583, file: !2, line: 163, column: 5)
!588 = !DILocation(line: 164, column: 49, scope: !587)
!589 = !DILocation(line: 164, column: 7, scope: !587)
!590 = !DILocation(line: 166, column: 5, scope: !587)
!591 = !DILocation(line: 168, column: 10, scope: !513)
!592 = !DILocation(line: 169, column: 1, scope: !513)
!593 = !DISubprogram(name: "rpl_open", scope: !594, file: !594, line: 674, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!594 = !DIFile(filename: "./lib/fcntl.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!595 = !DISubroutineType(types: !596)
!596 = !{!65, !84, !65, null}
!597 = !DISubprogram(name: "__error", scope: !598, file: !598, line: 80, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!598 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!599 = !DISubroutineType(types: !600)
!600 = !{!217}
!601 = !DISubprogram(name: "quotearg_style", scope: !70, file: !70, line: 383, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!602 = !DISubroutineType(types: !603)
!603 = !{!86, !69, !84}
!604 = !DISubprogram(name: "fcntl", linkageName: "\01_fcntl", scope: !605, file: !605, line: 580, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!605 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/fcntl.h", directory: "")
!606 = !DISubroutineType(types: !607)
!607 = !{!65, !65, !65, null}
!608 = !DISubprogram(name: "fdatasync", scope: !609, file: !609, line: 1548, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!609 = !DIFile(filename: "./lib/unistd.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!610 = !DISubroutineType(types: !611)
!611 = !{!65, !65}
!612 = !DISubprogram(name: "fsync", linkageName: "\01_fsync", scope: !512, file: !512, line: 609, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
!613 = !DISubprogram(name: "close", linkageName: "\01_close", scope: !512, file: !512, line: 437, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !317)
