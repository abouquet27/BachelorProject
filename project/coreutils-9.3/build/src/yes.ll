; ModuleID = 'coreutils-9.3/build/src/yes.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.infomap = type { ptr, ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !37
@Version = external global ptr, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !42
@rpl_optind = external global i32, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"y\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !57
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !59
@.str.14 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !64
@.str.15 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !69
@.str.16 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !71
@.str.17 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !76
@.str.18 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !78
@.str.19 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !80
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.11, ptr @.str.12 }, %struct.infomap { ptr @.str.13, ptr @.str.14 }, %struct.infomap { ptr @.str.15, ptr @.str.16 }, %struct.infomap { ptr @.str.17, ptr @.str.16 }, %struct.infomap { ptr @.str.18, ptr @.str.16 }, %struct.infomap { ptr @.str.19, ptr @.str.16 }, %struct.infomap zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !82
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !87
@.str.22 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !89
@.str.23 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !91
@.str.24 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !96
@.str.25 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !101
@.str.26 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !106
@.str.27 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !111

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !130 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !135, metadata !DIExpression()), !dbg !136
  %2 = icmp ne i32 %0, 0, !dbg !137
  br i1 %2, label %3, label %9, !dbg !139

3:                                                ; preds = %1
  br label %4, !dbg !140

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !141, !tbaa !143
  %6 = load ptr, ptr @program_name, align 8, !dbg !141, !tbaa !143
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !141
  br label %8, !dbg !141

8:                                                ; preds = %4
  br label %19, !dbg !141

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !147, !tbaa !143
  %11 = load ptr, ptr @program_name, align 8, !dbg !149, !tbaa !143
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10, ptr noundef %11), !dbg !150
  %13 = load ptr, ptr @__stdoutp, align 8, !dbg !151, !tbaa !143
  %14 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %13), !dbg !152
  %15 = load ptr, ptr @__stdoutp, align 8, !dbg !153, !tbaa !143
  %16 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %15), !dbg !154
  %17 = load ptr, ptr @__stdoutp, align 8, !dbg !155, !tbaa !143
  %18 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %17), !dbg !156
  call void @emit_ancillary_info(ptr noundef @.str.5), !dbg !157
  br label %19

19:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #9, !dbg !158
  unreachable, !dbg !158
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !159 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !222 i32 @printf(ptr noundef, ...) #2

declare !dbg !225 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !228 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !232, metadata !DIExpression()), !dbg !247
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #10, !dbg !248
  call void @llvm.dbg.declare(metadata ptr %2, metadata !233, metadata !DIExpression()), !dbg !249
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !249
  call void @llvm.dbg.value(metadata ptr %0, metadata !242, metadata !DIExpression()), !dbg !247
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !250
  call void @llvm.dbg.value(metadata ptr %3, metadata !243, metadata !DIExpression()), !dbg !247
  br label %4, !dbg !251

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !247
  call void @llvm.dbg.value(metadata ptr %.0, metadata !243, metadata !DIExpression()), !dbg !247
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !252
  %6 = load ptr, ptr %5, align 8, !dbg !252, !tbaa !253
  %7 = icmp ne ptr %6, null, !dbg !255
  br i1 %7, label %8, label %14, !dbg !256

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !257
  %10 = load ptr, ptr %9, align 8, !dbg !257, !tbaa !253
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !257
  %12 = icmp eq i32 %11, 0, !dbg !257
  %13 = xor i1 %12, true, !dbg !258
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !247
  br i1 %15, label %16, label %18, !dbg !251

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !259
  call void @llvm.dbg.value(metadata ptr %17, metadata !243, metadata !DIExpression()), !dbg !247
  br label %4, !dbg !251, !llvm.loop !260

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !263
  %20 = load ptr, ptr %19, align 8, !dbg !263, !tbaa !265
  %21 = icmp ne ptr %20, null, !dbg !266
  br i1 %21, label %22, label %25, !dbg !267

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !268
  %24 = load ptr, ptr %23, align 8, !dbg !268, !tbaa !265
  call void @llvm.dbg.value(metadata ptr %24, metadata !242, metadata !DIExpression()), !dbg !247
  br label %25, !dbg !269

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !247
  call void @llvm.dbg.value(metadata ptr %.01, metadata !242, metadata !DIExpression()), !dbg !247
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, ptr noundef @.str.7, ptr noundef @.str.21), !dbg !270
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !271
  call void @llvm.dbg.value(metadata ptr %27, metadata !245, metadata !DIExpression()), !dbg !247
  %28 = icmp ne ptr %27, null, !dbg !272
  br i1 %28, label %29, label %35, !dbg !274

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.22, i64 noundef 3), !dbg !275
  %31 = icmp ne i32 %30, 0, !dbg !275
  br i1 %31, label %32, label %35, !dbg !276

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !277, !tbaa !143
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.23, ptr noundef %33), !dbg !279
  br label %35, !dbg !280

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.11), !dbg !281
  %37 = icmp eq i32 %36, 0, !dbg !281
  br i1 %37, label %38, label %39, !dbg !281

38:                                               ; preds = %35
  br label %40, !dbg !281

39:                                               ; preds = %35
  br label %40, !dbg !281

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.24, %38 ], [ %0, %39 ], !dbg !281
  call void @llvm.dbg.value(metadata ptr %41, metadata !246, metadata !DIExpression()), !dbg !247
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.25, ptr noundef @.str.21, ptr noundef %41), !dbg !282
  %43 = icmp eq ptr %.01, %0, !dbg !283
  %44 = zext i1 %43 to i64, !dbg !284
  %45 = select i1 %43, ptr @.str.27, ptr @.str.6, !dbg !284
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.26, ptr noundef %.01, ptr noundef %45), !dbg !285
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #10, !dbg !286
  ret void, !dbg !286
}

; Function Attrs: noreturn
declare !dbg !287 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !289 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !293 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !297 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !304 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !309, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata ptr %1, metadata !310, metadata !DIExpression()), !dbg !326
  %3 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !327
  %4 = load ptr, ptr %3, align 8, !dbg !327, !tbaa !143
  call void @set_program_name(ptr noundef %4), !dbg !328
  %5 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.6), !dbg !329
  %6 = call i32 @atexit(ptr noundef @close_stdout), !dbg !330
  %7 = load ptr, ptr @Version, align 8, !dbg !331, !tbaa !143
  call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef @.str.5, ptr noundef @.str.7, ptr noundef %7, i1 noundef zeroext true, ptr noundef @usage, ptr noundef @.str.8, ptr noundef null), !dbg !332
  %8 = load i32, ptr @rpl_optind, align 4, !dbg !333, !tbaa !334
  %9 = sext i32 %8 to i64, !dbg !336
  %10 = getelementptr inbounds ptr, ptr %1, i64 %9, !dbg !336
  call void @llvm.dbg.value(metadata ptr %10, metadata !311, metadata !DIExpression()), !dbg !326
  %11 = sext i32 %0 to i64, !dbg !337
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11, !dbg !337
  call void @llvm.dbg.value(metadata ptr %12, metadata !312, metadata !DIExpression()), !dbg !326
  %13 = load i32, ptr @rpl_optind, align 4, !dbg !338, !tbaa !334
  %14 = icmp eq i32 %13, %0, !dbg !340
  br i1 %14, label %15, label %18, !dbg !341

15:                                               ; preds = %2
  %16 = call ptr @bad_cast(ptr noundef @.str.9), !dbg !342
  %17 = getelementptr inbounds ptr, ptr %12, i32 1, !dbg !343
  call void @llvm.dbg.value(metadata ptr %17, metadata !312, metadata !DIExpression()), !dbg !326
  store ptr %16, ptr %12, align 8, !dbg !344, !tbaa !143
  br label %18, !dbg !345

18:                                               ; preds = %15, %2
  %.06 = phi ptr [ %17, %15 ], [ %12, %2 ], !dbg !326
  call void @llvm.dbg.value(metadata ptr %.06, metadata !312, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i8 1, metadata !314, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata ptr %10, metadata !316, metadata !DIExpression()), !dbg !326
  br label %19, !dbg !346

19:                                               ; preds = %35, %18
  %.07 = phi i64 [ 0, %18 ], [ %23, %35 ], !dbg !326
  %.04 = phi i8 [ 1, %18 ], [ %.15, %35 ], !dbg !326
  %.02 = phi ptr [ %10, %18 ], [ %36, %35 ], !dbg !326
  call void @llvm.dbg.value(metadata ptr %.02, metadata !316, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i8 %.04, metadata !314, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 %.07, metadata !313, metadata !DIExpression()), !dbg !326
  %20 = load ptr, ptr %.02, align 8, !dbg !347, !tbaa !143
  %21 = call i64 @strlen(ptr noundef %20), !dbg !348
  call void @llvm.dbg.value(metadata i64 %21, metadata !317, metadata !DIExpression()), !dbg !349
  %22 = add i64 %21, 1, !dbg !350
  %23 = add i64 %.07, %22, !dbg !351
  call void @llvm.dbg.value(metadata i64 %23, metadata !313, metadata !DIExpression()), !dbg !326
  %24 = getelementptr inbounds ptr, ptr %.02, i64 1, !dbg !352
  %25 = icmp ult ptr %24, %.06, !dbg !354
  br i1 %25, label %26, label %34, !dbg !355

26:                                               ; preds = %19
  %27 = load ptr, ptr %.02, align 8, !dbg !356, !tbaa !143
  %28 = getelementptr inbounds i8, ptr %27, i64 %21, !dbg !357
  %29 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !358
  %30 = getelementptr inbounds ptr, ptr %.02, i64 1, !dbg !359
  %31 = load ptr, ptr %30, align 8, !dbg !359, !tbaa !143
  %32 = icmp ne ptr %29, %31, !dbg !360
  br i1 %32, label %33, label %34, !dbg !361

33:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !314, metadata !DIExpression()), !dbg !326
  br label %34, !dbg !362

34:                                               ; preds = %33, %26, %19
  %.15 = phi i8 [ 0, %33 ], [ %.04, %26 ], [ %.04, %19 ], !dbg !326
  call void @llvm.dbg.value(metadata i8 %.15, metadata !314, metadata !DIExpression()), !dbg !326
  br label %35, !dbg !363

35:                                               ; preds = %34
  %36 = getelementptr inbounds ptr, ptr %.02, i32 1, !dbg !364
  call void @llvm.dbg.value(metadata ptr %36, metadata !316, metadata !DIExpression()), !dbg !326
  %37 = icmp ult ptr %36, %.06, !dbg !365
  br i1 %37, label %19, label %38, !dbg !363, !llvm.loop !366

38:                                               ; preds = %35
  %39 = icmp ule i64 %23, 512, !dbg !368
  br i1 %39, label %40, label %41, !dbg !370

40:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 1024, metadata !313, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i8 0, metadata !314, metadata !DIExpression()), !dbg !326
  br label %41, !dbg !371

41:                                               ; preds = %40, %38
  %.18 = phi i64 [ 1024, %40 ], [ %23, %38 ], !dbg !326
  %.2 = phi i8 [ 0, %40 ], [ %.15, %38 ], !dbg !326
  call void @llvm.dbg.value(metadata i8 %.2, metadata !314, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 %.18, metadata !313, metadata !DIExpression()), !dbg !326
  %42 = trunc i8 %.2 to i1, !dbg !373
  br i1 %42, label %43, label %45, !dbg !373

43:                                               ; preds = %41
  %44 = load ptr, ptr %10, align 8, !dbg !374, !tbaa !143
  br label %47, !dbg !373

45:                                               ; preds = %41
  %46 = call noalias nonnull ptr @xmalloc(i64 noundef %.18) #11, !dbg !375
  br label %47, !dbg !373

47:                                               ; preds = %45, %43
  %48 = phi ptr [ %44, %43 ], [ %46, %45 ], !dbg !373
  call void @llvm.dbg.value(metadata ptr %48, metadata !319, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata ptr %10, metadata !316, metadata !DIExpression()), !dbg !326
  br label %49, !dbg !376

49:                                               ; preds = %60, %47
  %.13 = phi ptr [ %10, %47 ], [ %61, %60 ], !dbg !326
  %.01 = phi i64 [ 0, %47 ], [ %58, %60 ], !dbg !326
  call void @llvm.dbg.value(metadata i64 %.01, metadata !320, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata ptr %.13, metadata !316, metadata !DIExpression()), !dbg !326
  %50 = load ptr, ptr %.13, align 8, !dbg !377, !tbaa !143
  %51 = call i64 @strlen(ptr noundef %50), !dbg !378
  call void @llvm.dbg.value(metadata i64 %51, metadata !321, metadata !DIExpression()), !dbg !379
  %52 = trunc i8 %.2 to i1, !dbg !380
  br i1 %52, label %56, label %53, !dbg !382

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %48, i64 %.01, !dbg !383
  %55 = load ptr, ptr %.13, align 8, !dbg !384, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %55, i64 %51, i1 false), !dbg !385
  br label %56, !dbg !385

56:                                               ; preds = %53, %49
  %57 = add i64 %.01, %51, !dbg !386
  call void @llvm.dbg.value(metadata i64 %57, metadata !320, metadata !DIExpression()), !dbg !326
  %58 = add i64 %57, 1, !dbg !387
  call void @llvm.dbg.value(metadata i64 %58, metadata !320, metadata !DIExpression()), !dbg !326
  %59 = getelementptr inbounds i8, ptr %48, i64 %57, !dbg !388
  store i8 32, ptr %59, align 1, !dbg !389, !tbaa !390
  br label %60, !dbg !391

60:                                               ; preds = %56
  %61 = getelementptr inbounds ptr, ptr %.13, i32 1, !dbg !392
  call void @llvm.dbg.value(metadata ptr %61, metadata !316, metadata !DIExpression()), !dbg !326
  %62 = icmp ult ptr %61, %.06, !dbg !393
  br i1 %62, label %49, label %63, !dbg !391, !llvm.loop !394

63:                                               ; preds = %60
  %64 = sub i64 %58, 1, !dbg !396
  %65 = getelementptr inbounds i8, ptr %48, i64 %64, !dbg !397
  store i8 10, ptr %65, align 1, !dbg !398, !tbaa !390
  call void @llvm.dbg.value(metadata i64 %58, metadata !323, metadata !DIExpression()), !dbg !326
  %66 = udiv i64 %.18, %58, !dbg !399
  call void @llvm.dbg.value(metadata i64 %66, metadata !324, metadata !DIExpression()), !dbg !400
  br label %67, !dbg !401

67:                                               ; preds = %71, %63
  %.1 = phi i64 [ %58, %63 ], [ %73, %71 ], !dbg !326
  %.0 = phi i64 [ %66, %63 ], [ %68, %71 ], !dbg !402
  call void @llvm.dbg.value(metadata i64 %.0, metadata !324, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %.1, metadata !320, metadata !DIExpression()), !dbg !326
  %68 = add i64 %.0, -1, !dbg !403
  call void @llvm.dbg.value(metadata i64 %68, metadata !324, metadata !DIExpression()), !dbg !400
  %69 = icmp ne i64 %68, 0, !dbg !405
  br i1 %69, label %71, label %70, !dbg !405

70:                                               ; preds = %67
  br label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %48, i64 %.1, !dbg !406
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr align 1 %48, i64 %58, i1 false), !dbg !408
  %73 = add i64 %.1, %58, !dbg !409
  call void @llvm.dbg.value(metadata i64 %73, metadata !320, metadata !DIExpression()), !dbg !326
  br label %67, !dbg !410, !llvm.loop !411

74:                                               ; preds = %70
  br label %75, !dbg !413

75:                                               ; preds = %78, %74
  %76 = call i64 @full_write(i32 noundef 1, ptr noundef %48, i64 noundef %.1), !dbg !414
  %77 = icmp eq i64 %76, %.1, !dbg !415
  br i1 %77, label %78, label %79, !dbg !413

78:                                               ; preds = %75
  br label %75, !dbg !416, !llvm.loop !417

79:                                               ; preds = %75
  %80 = call ptr @__error(), !dbg !418
  %81 = load i32, ptr %80, align 4, !dbg !418, !tbaa !334
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef @.str.10), !dbg !419
  ret i32 1, !dbg !420
}

declare !dbg !421 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !423 i32 @atexit(ptr noundef) #2

declare !dbg !429 void @parse_gnu_standard_options_only(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal ptr @bad_cast(ptr noundef %0) #3 !dbg !434 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !438, metadata !DIExpression()), !dbg !439
  ret ptr %0, !dbg !440
}

declare !dbg !441 i64 @strlen(ptr noundef) #2

; Function Attrs: allocsize(0)
declare !dbg !444 noalias nonnull ptr @xmalloc(i64 noundef) #8

declare !dbg !448 i64 @full_write(i32 noundef, ptr noundef, i64 noundef) #2

declare !dbg !454 ptr @__error() #2

declare !dbg !459 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

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
attributes #8 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { allocsize(0) }

!llvm.dbg.cu = !{!116}
!llvm.ident = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/yes.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 40)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 65)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 48)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 57)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 4)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 14)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 16)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 2)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !44, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !56, line: 660, type: !49, isLocal: true, isDefinition: true)
!56 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !56, line: 660, type: !44, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !56, line: 661, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 10)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !56, line: 661, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 22)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !56, line: 662, type: !61, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !56, line: 662, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 15)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !56, line: 663, type: !61, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !56, line: 664, type: !61, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !56, line: 665, type: !61, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !56, line: 678, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 23)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !56, line: 678, type: !9, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !56, line: 683, type: !29, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !56, line: 689, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 71)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !56, line: 695, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 5)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !56, line: 696, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 27)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !56, line: 698, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 51)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !56, line: 699, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 12)
!116 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !117, globals: !122, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!117 = !{!118, !120, !121}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!122 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !54, !57, !59, !64, !69, !71, !76, !78, !80, !82, !87, !89, !91, !96, !101, !106, !111}
!123 = !{!"Homebrew clang version 16.0.4"}
!124 = !{i32 7, !"Dwarf Version", i32 4}
!125 = !{i32 2, !"Debug Info Version", i32 3}
!126 = !{i32 1, !"wchar_size", i32 4}
!127 = !{i32 8, !"PIC Level", i32 2}
!128 = !{i32 7, !"uwtable", i32 2}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 35, type: !131, scopeLine: 36, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !134)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !133}
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !{!135}
!135 = !DILocalVariable(name: "status", arg: 1, scope: !130, file: !2, line: 35, type: !133)
!136 = !DILocation(line: 0, scope: !130)
!137 = !DILocation(line: 37, column: 14, scope: !138)
!138 = distinct !DILexicalBlock(scope: !130, file: !2, line: 37, column: 7)
!139 = !DILocation(line: 37, column: 7, scope: !130)
!140 = !DILocation(line: 38, column: 5, scope: !138)
!141 = !DILocation(line: 38, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !2, line: 38, column: 5)
!143 = !{!144, !144, i64 0}
!144 = !{!"any pointer", !145, i64 0}
!145 = !{!"omnipotent char", !146, i64 0}
!146 = !{!"Simple C/C++ TBAA"}
!147 = !DILocation(line: 45, column: 15, scope: !148)
!148 = distinct !DILexicalBlock(scope: !138, file: !2, line: 40, column: 5)
!149 = !DILocation(line: 45, column: 29, scope: !148)
!150 = !DILocation(line: 41, column: 7, scope: !148)
!151 = !DILocation(line: 50, column: 5, scope: !148)
!152 = !DILocation(line: 47, column: 7, scope: !148)
!153 = !DILocation(line: 51, column: 39, scope: !148)
!154 = !DILocation(line: 51, column: 7, scope: !148)
!155 = !DILocation(line: 52, column: 42, scope: !148)
!156 = !DILocation(line: 52, column: 7, scope: !148)
!157 = !DILocation(line: 53, column: 7, scope: !148)
!158 = !DILocation(line: 55, column: 3, scope: !130)
!159 = !DISubprogram(name: "fprintf", scope: !160, file: !160, line: 155, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!160 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!161 = !DISubroutineType(types: !162)
!162 = !{!133, !163, !220, null}
!163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !166, line: 157, baseType: !167)
!166 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !166, line: 126, size: 1216, elements: !168)
!168 = !{!169, !172, !173, !174, !176, !177, !182, !183, !184, !188, !192, !202, !206, !207, !210, !211, !215, !217, !218, !219}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !167, file: !166, line: 127, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !167, file: !166, line: 128, baseType: !133, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !167, file: !166, line: 129, baseType: !133, size: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !167, file: !166, line: 130, baseType: !175, size: 16, offset: 128)
!175 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !167, file: !166, line: 131, baseType: !175, size: 16, offset: 144)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !167, file: !166, line: 132, baseType: !178, size: 128, offset: 192)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !166, line: 92, size: 128, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !178, file: !166, line: 93, baseType: !170, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !178, file: !166, line: 94, baseType: !133, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !167, file: !166, line: 133, baseType: !133, size: 32, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !167, file: !166, line: 136, baseType: !120, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !167, file: !166, line: 137, baseType: !185, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!133, !120}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !167, file: !166, line: 138, baseType: !189, size: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!133, !120, !121, !133}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !167, file: !166, line: 139, baseType: !193, size: 64, offset: 576)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !120, !196, !133}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !166, line: 81, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !198, line: 71, baseType: !199)
!198 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !200, line: 48, baseType: !201)
!200 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!201 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !167, file: !166, line: 140, baseType: !203, size: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!133, !120, !118, !133}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !167, file: !166, line: 143, baseType: !178, size: 128, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !167, file: !166, line: 144, baseType: !208, size: 64, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !166, line: 98, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !167, file: !166, line: 145, baseType: !133, size: 32, offset: 896)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !167, file: !166, line: 148, baseType: !212, size: 24, offset: 928)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 24, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 3)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !167, file: !166, line: 149, baseType: !216, size: 8, offset: 952)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 8, elements: !35)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !167, file: !166, line: 152, baseType: !178, size: 128, offset: 960)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !167, file: !166, line: 155, baseType: !133, size: 32, offset: 1088)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !167, file: !166, line: 156, baseType: !196, size: 64, offset: 1152)
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!221 = !{}
!222 = !DISubprogram(name: "printf", scope: !160, file: !160, line: 175, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!223 = !DISubroutineType(types: !224)
!224 = !{!133, !220, null}
!225 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !160, file: !160, line: 157, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!226 = !DISubroutineType(types: !227)
!227 = !{!133, !220, !163}
!228 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !56, file: !56, line: 657, type: !229, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !118}
!231 = !{!232, !233, !242, !243, !245, !246}
!232 = !DILocalVariable(name: "program", arg: 1, scope: !228, file: !56, line: 657, type: !118)
!233 = !DILocalVariable(name: "infomap", scope: !228, file: !56, line: 659, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 896, elements: !240)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !228, file: !56, line: 659, size: 128, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !236, file: !56, line: 659, baseType: !118, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !236, file: !56, line: 659, baseType: !118, size: 64, offset: 64)
!240 = !{!241}
!241 = !DISubrange(count: 7)
!242 = !DILocalVariable(name: "node", scope: !228, file: !56, line: 669, type: !118)
!243 = !DILocalVariable(name: "map_prog", scope: !228, file: !56, line: 670, type: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!245 = !DILocalVariable(name: "lc_messages", scope: !228, file: !56, line: 682, type: !118)
!246 = !DILocalVariable(name: "url_program", scope: !228, file: !56, line: 695, type: !118)
!247 = !DILocation(line: 0, scope: !228)
!248 = !DILocation(line: 659, column: 3, scope: !228)
!249 = !DILocation(line: 659, column: 67, scope: !228)
!250 = !DILocation(line: 670, column: 36, scope: !228)
!251 = !DILocation(line: 672, column: 3, scope: !228)
!252 = !DILocation(line: 672, column: 20, scope: !228)
!253 = !{!254, !144, i64 0}
!254 = !{!"infomap", !144, i64 0, !144, i64 8}
!255 = !DILocation(line: 672, column: 10, scope: !228)
!256 = !DILocation(line: 672, column: 28, scope: !228)
!257 = !DILocation(line: 672, column: 33, scope: !228)
!258 = !DILocation(line: 672, column: 31, scope: !228)
!259 = !DILocation(line: 673, column: 13, scope: !228)
!260 = distinct !{!260, !251, !259, !261, !262}
!261 = !{!"llvm.loop.mustprogress"}
!262 = !{!"llvm.loop.unroll.disable"}
!263 = !DILocation(line: 675, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !228, file: !56, line: 675, column: 7)
!265 = !{!254, !144, i64 8}
!266 = !DILocation(line: 675, column: 7, scope: !264)
!267 = !DILocation(line: 675, column: 7, scope: !228)
!268 = !DILocation(line: 676, column: 22, scope: !264)
!269 = !DILocation(line: 676, column: 5, scope: !264)
!270 = !DILocation(line: 678, column: 3, scope: !228)
!271 = !DILocation(line: 682, column: 29, scope: !228)
!272 = !DILocation(line: 683, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !228, file: !56, line: 683, column: 7)
!274 = !DILocation(line: 683, column: 19, scope: !273)
!275 = !DILocation(line: 683, column: 22, scope: !273)
!276 = !DILocation(line: 683, column: 7, scope: !228)
!277 = !DILocation(line: 690, column: 61, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !56, line: 684, column: 5)
!279 = !DILocation(line: 689, column: 7, scope: !278)
!280 = !DILocation(line: 691, column: 5, scope: !278)
!281 = !DILocation(line: 695, column: 29, scope: !228)
!282 = !DILocation(line: 696, column: 3, scope: !228)
!283 = !DILocation(line: 699, column: 22, scope: !228)
!284 = !DILocation(line: 699, column: 17, scope: !228)
!285 = !DILocation(line: 698, column: 3, scope: !228)
!286 = !DILocation(line: 700, column: 1, scope: !228)
!287 = !DISubprogram(name: "exit", scope: !288, file: !288, line: 145, type: !131, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !221)
!288 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!289 = !DISubprogram(name: "strcmp", scope: !290, file: !290, line: 77, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!290 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!291 = !DISubroutineType(types: !292)
!292 = !{!133, !118, !118}
!293 = !DISubprogram(name: "setlocale", scope: !294, file: !294, line: 53, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!294 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!295 = !DISubroutineType(types: !296)
!296 = !{!121, !133, !118}
!297 = !DISubprogram(name: "strncmp", scope: !290, file: !290, line: 84, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!298 = !DISubroutineType(types: !299)
!299 = !{!133, !118, !118, !300}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !301, line: 31, baseType: !302)
!301 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !200, line: 94, baseType: !303)
!303 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!304 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 59, type: !305, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !308)
!305 = !DISubroutineType(types: !306)
!306 = !{!133, !133, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!308 = !{!309, !310, !311, !312, !313, !314, !316, !317, !319, !320, !321, !323, !324}
!309 = !DILocalVariable(name: "argc", arg: 1, scope: !304, file: !2, line: 59, type: !133)
!310 = !DILocalVariable(name: "argv", arg: 2, scope: !304, file: !2, line: 59, type: !307)
!311 = !DILocalVariable(name: "operands", scope: !304, file: !2, line: 73, type: !307)
!312 = !DILocalVariable(name: "operand_lim", scope: !304, file: !2, line: 74, type: !307)
!313 = !DILocalVariable(name: "bufalloc", scope: !304, file: !2, line: 80, type: !300)
!314 = !DILocalVariable(name: "reuse_operand_strings", scope: !304, file: !2, line: 81, type: !315)
!315 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!316 = !DILocalVariable(name: "operandp", scope: !304, file: !2, line: 82, type: !307)
!317 = !DILocalVariable(name: "operand_len", scope: !318, file: !2, line: 85, type: !300)
!318 = distinct !DILexicalBlock(scope: !304, file: !2, line: 84, column: 5)
!319 = !DILocalVariable(name: "buf", scope: !304, file: !2, line: 102, type: !121)
!320 = !DILocalVariable(name: "bufused", scope: !304, file: !2, line: 103, type: !300)
!321 = !DILocalVariable(name: "operand_len", scope: !322, file: !2, line: 107, type: !300)
!322 = distinct !DILexicalBlock(scope: !304, file: !2, line: 106, column: 5)
!323 = !DILocalVariable(name: "copysize", scope: !304, file: !2, line: 118, type: !300)
!324 = !DILocalVariable(name: "copies", scope: !325, file: !2, line: 119, type: !300)
!325 = distinct !DILexicalBlock(scope: !304, file: !2, line: 119, column: 3)
!326 = !DILocation(line: 0, scope: !304)
!327 = !DILocation(line: 62, column: 21, scope: !304)
!328 = !DILocation(line: 62, column: 3, scope: !304)
!329 = !DILocation(line: 63, column: 3, scope: !304)
!330 = !DILocation(line: 67, column: 3, scope: !304)
!331 = !DILocation(line: 70, column: 36, scope: !304)
!332 = !DILocation(line: 69, column: 3, scope: !304)
!333 = !DILocation(line: 73, column: 28, scope: !304)
!334 = !{!335, !335, i64 0}
!335 = !{!"int", !145, i64 0}
!336 = !DILocation(line: 73, column: 26, scope: !304)
!337 = !DILocation(line: 74, column: 29, scope: !304)
!338 = !DILocation(line: 75, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !304, file: !2, line: 75, column: 7)
!340 = !DILocation(line: 75, column: 14, scope: !339)
!341 = !DILocation(line: 75, column: 7, scope: !304)
!342 = !DILocation(line: 76, column: 22, scope: !339)
!343 = !DILocation(line: 76, column: 17, scope: !339)
!344 = !DILocation(line: 76, column: 20, scope: !339)
!345 = !DILocation(line: 76, column: 5, scope: !339)
!346 = !DILocation(line: 83, column: 3, scope: !304)
!347 = !DILocation(line: 85, column: 36, scope: !318)
!348 = !DILocation(line: 85, column: 28, scope: !318)
!349 = !DILocation(line: 0, scope: !318)
!350 = !DILocation(line: 86, column: 31, scope: !318)
!351 = !DILocation(line: 86, column: 16, scope: !318)
!352 = !DILocation(line: 87, column: 20, scope: !353)
!353 = distinct !DILexicalBlock(scope: !318, file: !2, line: 87, column: 11)
!354 = !DILocation(line: 87, column: 24, scope: !353)
!355 = !DILocation(line: 88, column: 11, scope: !353)
!356 = !DILocation(line: 88, column: 14, scope: !353)
!357 = !DILocation(line: 88, column: 24, scope: !353)
!358 = !DILocation(line: 88, column: 38, scope: !353)
!359 = !DILocation(line: 88, column: 45, scope: !353)
!360 = !DILocation(line: 88, column: 42, scope: !353)
!361 = !DILocation(line: 87, column: 11, scope: !318)
!362 = !DILocation(line: 89, column: 9, scope: !353)
!363 = !DILocation(line: 90, column: 5, scope: !318)
!364 = !DILocation(line: 91, column: 10, scope: !304)
!365 = !DILocation(line: 91, column: 21, scope: !304)
!366 = distinct !{!366, !346, !367, !261, !262}
!367 = !DILocation(line: 91, column: 34, scope: !304)
!368 = !DILocation(line: 94, column: 16, scope: !369)
!369 = distinct !DILexicalBlock(scope: !304, file: !2, line: 94, column: 7)
!370 = !DILocation(line: 94, column: 7, scope: !304)
!371 = !DILocation(line: 98, column: 5, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !2, line: 95, column: 5)
!373 = !DILocation(line: 102, column: 15, scope: !304)
!374 = !DILocation(line: 102, column: 39, scope: !304)
!375 = !DILocation(line: 102, column: 51, scope: !304)
!376 = !DILocation(line: 105, column: 3, scope: !304)
!377 = !DILocation(line: 107, column: 36, scope: !322)
!378 = !DILocation(line: 107, column: 28, scope: !322)
!379 = !DILocation(line: 0, scope: !322)
!380 = !DILocation(line: 108, column: 13, scope: !381)
!381 = distinct !DILexicalBlock(scope: !322, file: !2, line: 108, column: 11)
!382 = !DILocation(line: 108, column: 11, scope: !322)
!383 = !DILocation(line: 109, column: 21, scope: !381)
!384 = !DILocation(line: 109, column: 32, scope: !381)
!385 = !DILocation(line: 109, column: 9, scope: !381)
!386 = !DILocation(line: 110, column: 15, scope: !322)
!387 = !DILocation(line: 111, column: 18, scope: !322)
!388 = !DILocation(line: 111, column: 7, scope: !322)
!389 = !DILocation(line: 111, column: 22, scope: !322)
!390 = !{!145, !145, i64 0}
!391 = !DILocation(line: 112, column: 5, scope: !322)
!392 = !DILocation(line: 113, column: 10, scope: !304)
!393 = !DILocation(line: 113, column: 21, scope: !304)
!394 = distinct !{!394, !376, !395, !261, !262}
!395 = !DILocation(line: 113, column: 34, scope: !304)
!396 = !DILocation(line: 114, column: 15, scope: !304)
!397 = !DILocation(line: 114, column: 3, scope: !304)
!398 = !DILocation(line: 114, column: 20, scope: !304)
!399 = !DILocation(line: 119, column: 33, scope: !325)
!400 = !DILocation(line: 0, scope: !325)
!401 = !DILocation(line: 119, column: 8, scope: !325)
!402 = !DILocation(line: 119, scope: !325)
!403 = !DILocation(line: 119, column: 45, scope: !404)
!404 = distinct !DILexicalBlock(scope: !325, file: !2, line: 119, column: 3)
!405 = !DILocation(line: 119, column: 3, scope: !325)
!406 = !DILocation(line: 121, column: 19, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !2, line: 120, column: 5)
!408 = !DILocation(line: 121, column: 7, scope: !407)
!409 = !DILocation(line: 122, column: 15, scope: !407)
!410 = !DILocation(line: 119, column: 3, scope: !404)
!411 = distinct !{!411, !405, !412, !261, !262}
!412 = !DILocation(line: 123, column: 5, scope: !325)
!413 = !DILocation(line: 126, column: 3, scope: !304)
!414 = !DILocation(line: 126, column: 10, scope: !304)
!415 = !DILocation(line: 126, column: 51, scope: !304)
!416 = !DILocation(line: 127, column: 5, scope: !304)
!417 = distinct !{!417, !413, !416, !261, !262}
!418 = !DILocation(line: 128, column: 13, scope: !304)
!419 = !DILocation(line: 128, column: 3, scope: !304)
!420 = !DILocation(line: 129, column: 3, scope: !304)
!421 = !DISubprogram(name: "set_program_name", scope: !422, file: !422, line: 37, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!422 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!423 = !DISubprogram(name: "atexit", scope: !288, file: !288, line: 133, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!424 = !DISubroutineType(types: !425)
!425 = !{!133, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null}
!429 = !DISubprogram(name: "parse_gnu_standard_options_only", scope: !430, file: !430, line: 31, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!430 = !DIFile(filename: "../lib/long-options.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!431 = !DISubroutineType(types: !432)
!432 = !{null, !133, !307, !118, !118, !118, !315, !433, null}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!434 = distinct !DISubprogram(name: "bad_cast", scope: !56, file: !56, line: 725, type: !435, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!121, !118}
!437 = !{!438}
!438 = !DILocalVariable(name: "s", arg: 1, scope: !434, file: !56, line: 725, type: !118)
!439 = !DILocation(line: 0, scope: !434)
!440 = !DILocation(line: 727, column: 3, scope: !434)
!441 = !DISubprogram(name: "strlen", scope: !290, file: !290, line: 82, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!442 = !DISubroutineType(types: !443)
!443 = !{!303, !118}
!444 = !DISubprogram(name: "xmalloc", scope: !445, file: !445, line: 55, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!445 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!446 = !DISubroutineType(types: !447)
!447 = !{!120, !300}
!448 = !DISubprogram(name: "full_write", scope: !449, file: !449, line: 29, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!449 = !DIFile(filename: "../lib/full-write.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!450 = !DISubroutineType(types: !451)
!451 = !{!300, !133, !452, !300}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!454 = !DISubprogram(name: "__error", scope: !455, file: !455, line: 80, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!455 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!456 = !DISubroutineType(types: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!459 = !DISubprogram(name: "error", scope: !460, file: !460, line: 395, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!460 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!461 = !DISubroutineType(types: !462)
!462 = !{null, !133, !133, !118, null}
