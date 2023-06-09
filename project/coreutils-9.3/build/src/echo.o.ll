; ModuleID = 'coreutils-9.3/build/src/echo.o.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.infomap = type { ptr, ptr }
%struct._RuneLocale = type { [8 x i8], [32 x i8], ptr, ptr, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, ptr, i32, i32, ptr }
%struct._RuneRange = type { i32, ptr }

@__func__.usage = private unnamed_addr constant [6 x i8] c"usage\00", align 1, !dbg !0
@.str = private unnamed_addr constant [7 x i8] c"echo.c\00", align 1, !dbg !8
@.str.1 = private unnamed_addr constant [23 x i8] c"status == EXIT_SUCCESS\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1, !dbg !18
@program_name = external global ptr, align 8
@.str.3 = private unnamed_addr constant [93 x i8] c"Echo the STRING(s) to standard output.\0A\0A  -n             do not output the trailing newline\0A\00", align 1, !dbg !23
@__stdoutp = external global ptr, align 8
@.str.4 = private unnamed_addr constant [132 x i8] c"  -e             enable interpretation of backslash escapes\0A  -E             disable interpretation of backslash escapes (default)\0A\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [63 x i8] c"\0AIf -e is in effect, the following sequences are recognized:\0A\0A\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [229 x i8] c"  \\\\      backslash\0A  \\a      alert (BEL)\0A  \\b      backspace\0A  \\c      produce no further output\0A  \\e      escape\0A  \\f      form feed\0A  \\n      new line\0A  \\r      carriage return\0A  \\t      horizontal tab\0A  \\v      vertical tab\0A\00", align 1, !dbg !45
@.str.9 = private unnamed_addr constant [110 x i8] c"  \\0NNN   byte with octal value NNN (1 to 3 digits)\0A  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\0A\00", align 1, !dbg !50
@.str.10 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !55
@.str.11 = private unnamed_addr constant [5 x i8] c"echo\00", align 1, !dbg !60
@.str.12 = private unnamed_addr constant [105 x i8] c"\0ANOTE: printf(1) is a preferred alternative,\0Awhich does not have issues outputting option-like strings.\0A\00", align 1, !dbg !65
@.str.13 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1, !dbg !70
@.str.14 = private unnamed_addr constant [3 x i8] c"-n\00", align 1, !dbg !75
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !80
@.str.16 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !85
@.str.17 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !87
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !92
@Version = external global ptr, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1, !dbg !97
@.str.20 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1, !dbg !99
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !104
@.str.22 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !110
@.str.23 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !112
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !114
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !119
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !121
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !126
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !128
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !130
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.21, ptr @.str.22 }, %struct.infomap { ptr @.str.23, ptr @.str.24 }, %struct.infomap { ptr @.str.25, ptr @.str.26 }, %struct.infomap { ptr @.str.27, ptr @.str.26 }, %struct.infomap { ptr @.str.28, ptr @.str.26 }, %struct.infomap { ptr @.str.29, ptr @.str.26 }, %struct.infomap zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !132
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !134
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !139
@.str.33 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !144
@.str.34 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !149
@.str.35 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !151
@.str.36 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !156
@.str.37 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !161
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !184 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !189, metadata !DIExpression()), !dbg !190
  %2 = icmp eq i32 %0, 0, !dbg !191
  %3 = xor i1 %2, true, !dbg !191
  %4 = zext i1 %3 to i32, !dbg !191
  %5 = sext i32 %4 to i64, !dbg !191
  %6 = call i64 @llvm.expect.i64(i64 %5, i64 0), !dbg !191
  %7 = icmp ne i64 %6, 0, !dbg !191
  br i1 %7, label %8, label %10, !dbg !191

8:                                                ; preds = %1
  call void @__assert_rtn(ptr noundef @__func__.usage, ptr noundef @.str, i32 noundef 40, ptr noundef @.str.1) #11, !dbg !191
  unreachable, !dbg !191

9:                                                ; No predecessors!
  br label %11, !dbg !191

10:                                               ; preds = %1
  br label %11, !dbg !191

11:                                               ; preds = %10, %9
  %12 = load ptr, ptr @program_name, align 8, !dbg !192, !tbaa !193
  %13 = load ptr, ptr @program_name, align 8, !dbg !197, !tbaa !193
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %12, ptr noundef %13), !dbg !198
  %15 = load ptr, ptr @__stdoutp, align 8, !dbg !199, !tbaa !193
  %16 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %15), !dbg !200
  %17 = load ptr, ptr @__stdoutp, align 8, !dbg !201, !tbaa !193
  %18 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %17), !dbg !202
  %19 = load ptr, ptr @__stdoutp, align 8, !dbg !203, !tbaa !193
  %20 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %19), !dbg !204
  %21 = load ptr, ptr @__stdoutp, align 8, !dbg !205, !tbaa !193
  %22 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %21), !dbg !206
  %23 = load ptr, ptr @__stdoutp, align 8, !dbg !207, !tbaa !193
  %24 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %23), !dbg !208
  %25 = load ptr, ptr @__stdoutp, align 8, !dbg !209, !tbaa !193
  %26 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %25), !dbg !210
  %27 = load ptr, ptr @__stdoutp, align 8, !dbg !211, !tbaa !193
  %28 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %27), !dbg !212
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef @.str.11), !dbg !213
  %30 = load ptr, ptr @__stdoutp, align 8, !dbg !214, !tbaa !193
  %31 = call i32 @"\01_fputs"(ptr noundef @.str.12, ptr noundef %30), !dbg !215
  call void @emit_ancillary_info(ptr noundef @.str.11), !dbg !216
  call void @exit(i32 noundef %0) #12, !dbg !217
  unreachable, !dbg !217
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #2

; Function Attrs: cold noreturn
declare !dbg !218 void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare !dbg !223 i32 @printf(ptr noundef, ...) #4

declare !dbg !228 i32 @"\01_fputs"(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #5 !dbg !286 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !290, metadata !DIExpression()), !dbg !303
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #13, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %2, metadata !291, metadata !DIExpression()), !dbg !305
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !305
  call void @llvm.dbg.value(metadata ptr %0, metadata !298, metadata !DIExpression()), !dbg !303
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !306
  call void @llvm.dbg.value(metadata ptr %3, metadata !299, metadata !DIExpression()), !dbg !303
  br label %4, !dbg !307

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !303
  call void @llvm.dbg.value(metadata ptr %.0, metadata !299, metadata !DIExpression()), !dbg !303
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !308
  %6 = load ptr, ptr %5, align 8, !dbg !308, !tbaa !309
  %7 = icmp ne ptr %6, null, !dbg !311
  br i1 %7, label %8, label %14, !dbg !312

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !313
  %10 = load ptr, ptr %9, align 8, !dbg !313, !tbaa !309
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !313
  %12 = icmp eq i32 %11, 0, !dbg !313
  %13 = xor i1 %12, true, !dbg !314
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !303
  br i1 %15, label %16, label %18, !dbg !307

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !315
  call void @llvm.dbg.value(metadata ptr %17, metadata !299, metadata !DIExpression()), !dbg !303
  br label %4, !dbg !307, !llvm.loop !316

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !319
  %20 = load ptr, ptr %19, align 8, !dbg !319, !tbaa !321
  %21 = icmp ne ptr %20, null, !dbg !322
  br i1 %21, label %22, label %25, !dbg !323

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !324
  %24 = load ptr, ptr %23, align 8, !dbg !324, !tbaa !321
  call void @llvm.dbg.value(metadata ptr %24, metadata !298, metadata !DIExpression()), !dbg !303
  br label %25, !dbg !325

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !303
  call void @llvm.dbg.value(metadata ptr %.01, metadata !298, metadata !DIExpression()), !dbg !303
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.30, ptr noundef @.str.18, ptr noundef @.str.31), !dbg !326
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !327
  call void @llvm.dbg.value(metadata ptr %27, metadata !301, metadata !DIExpression()), !dbg !303
  %28 = icmp ne ptr %27, null, !dbg !328
  br i1 %28, label %29, label %35, !dbg !330

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.32, i64 noundef 3), !dbg !331
  %31 = icmp ne i32 %30, 0, !dbg !331
  br i1 %31, label %32, label %35, !dbg !332

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !333, !tbaa !193
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.33, ptr noundef %33), !dbg !335
  br label %35, !dbg !336

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.21), !dbg !337
  %37 = icmp eq i32 %36, 0, !dbg !337
  br i1 %37, label %38, label %39, !dbg !337

38:                                               ; preds = %35
  br label %40, !dbg !337

39:                                               ; preds = %35
  br label %40, !dbg !337

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.34, %38 ], [ %0, %39 ], !dbg !337
  call void @llvm.dbg.value(metadata ptr %41, metadata !302, metadata !DIExpression()), !dbg !303
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.35, ptr noundef @.str.31, ptr noundef %41), !dbg !338
  %43 = icmp eq ptr %.01, %0, !dbg !339
  %44 = zext i1 %43 to i64, !dbg !340
  %45 = select i1 %43, ptr @.str.37, ptr @.str.15, !dbg !340
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef %.01, ptr noundef %45), !dbg !341
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #13, !dbg !342
  ret void, !dbg !342
}

; Function Attrs: noreturn
declare !dbg !343 void @exit(i32 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare !dbg !345 i32 @strcmp(ptr noundef, ptr noundef) #4

declare !dbg !349 ptr @setlocale(i32 noundef, ptr noundef) #4

declare !dbg !353 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #9 !dbg !360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !365, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %1, metadata !366, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 1, metadata !367, metadata !DIExpression()), !dbg !389
  %3 = call ptr @getenv(ptr noundef @.str.13), !dbg !390
  %4 = icmp ne ptr %3, null, !dbg !391
  %5 = xor i1 %4, true, !dbg !391
  %6 = xor i1 %5, true, !dbg !392
  %7 = zext i1 %6 to i8, !dbg !393
  call void @llvm.dbg.value(metadata i8 %7, metadata !369, metadata !DIExpression()), !dbg !389
  %8 = trunc i8 %7 to i1, !dbg !394
  br i1 %8, label %9, label %18, !dbg !395

9:                                                ; preds = %2
  %10 = icmp slt i32 1, %0, !dbg !396
  br i1 %10, label %11, label %16, !dbg !397

11:                                               ; preds = %9
  %12 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !398
  %13 = load ptr, ptr %12, align 8, !dbg !398, !tbaa !193
  %14 = call i32 @strcmp(ptr noundef %13, ptr noundef @.str.14), !dbg !398
  %15 = icmp eq i32 %14, 0, !dbg !398
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i1 [ false, %9 ], [ %15, %11 ], !dbg !389
  br label %18, !dbg !395

18:                                               ; preds = %16, %2
  %19 = phi i1 [ true, %2 ], [ %17, %16 ]
  %20 = zext i1 %19 to i8, !dbg !399
  call void @llvm.dbg.value(metadata i8 %20, metadata !370, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 0, metadata !371, metadata !DIExpression()), !dbg !389
  %21 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !400
  %22 = load ptr, ptr %21, align 8, !dbg !400, !tbaa !193
  call void @set_program_name(ptr noundef %22), !dbg !401
  %23 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.15), !dbg !402
  %24 = call i32 @atexit(ptr noundef @close_stdout), !dbg !403
  %25 = trunc i8 %20 to i1, !dbg !404
  br i1 %25, label %26, label %43, !dbg !406

26:                                               ; preds = %18
  %27 = icmp eq i32 %0, 2, !dbg !407
  br i1 %27, label %28, label %43, !dbg !408

28:                                               ; preds = %26
  %29 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !409
  %30 = load ptr, ptr %29, align 8, !dbg !409, !tbaa !193
  %31 = call i32 @strcmp(ptr noundef %30, ptr noundef @.str.16), !dbg !409
  %32 = icmp eq i32 %31, 0, !dbg !409
  br i1 %32, label %33, label %34, !dbg !412

33:                                               ; preds = %28
  call void @usage(i32 noundef 0) #12, !dbg !413
  unreachable, !dbg !413

34:                                               ; preds = %28
  %35 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !414
  %36 = load ptr, ptr %35, align 8, !dbg !414, !tbaa !193
  %37 = call i32 @strcmp(ptr noundef %36, ptr noundef @.str.17), !dbg !414
  %38 = icmp eq i32 %37, 0, !dbg !414
  br i1 %38, label %39, label %42, !dbg !416

39:                                               ; preds = %34
  %40 = load ptr, ptr @__stdoutp, align 8, !dbg !417, !tbaa !193
  %41 = load ptr, ptr @Version, align 8, !dbg !419, !tbaa !193
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %40, ptr noundef @.str.11, ptr noundef @.str.18, ptr noundef %41, ptr noundef @.str.19, ptr noundef @.str.20, ptr noundef null), !dbg !420
  br label %247, !dbg !421

42:                                               ; preds = %34
  br label %43, !dbg !422

43:                                               ; preds = %42, %26, %18
  %44 = add nsw i32 %0, -1, !dbg !423
  call void @llvm.dbg.value(metadata i32 %44, metadata !365, metadata !DIExpression()), !dbg !389
  %45 = getelementptr inbounds ptr, ptr %1, i32 1, !dbg !424
  call void @llvm.dbg.value(metadata ptr %45, metadata !366, metadata !DIExpression()), !dbg !389
  %46 = trunc i8 %20 to i1, !dbg !425
  br i1 %46, label %47, label %96, !dbg !426

47:                                               ; preds = %43
  br label %48, !dbg !427

48:                                               ; preds = %94, %47
  %.024 = phi i8 [ 0, %47 ], [ %.327, %94 ], !dbg !428
  %.011 = phi i8 [ 1, %47 ], [ %.314, %94 ], !dbg !429
  %.04 = phi ptr [ %45, %47 ], [ %.15, %94 ], !dbg !424
  %.01 = phi i32 [ %44, %47 ], [ %.12, %94 ], !dbg !423
  call void @llvm.dbg.value(metadata i32 %.01, metadata !365, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %.04, metadata !366, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %.011, metadata !367, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %.024, metadata !371, metadata !DIExpression()), !dbg !389
  %49 = icmp sgt i32 %.01, 0, !dbg !430
  br i1 %49, label %50, label %56, !dbg !431

50:                                               ; preds = %48
  %51 = getelementptr inbounds ptr, ptr %.04, i64 0, !dbg !432
  %52 = load ptr, ptr %51, align 8, !dbg !432, !tbaa !193
  %53 = load i8, ptr %52, align 1, !dbg !433, !tbaa !434
  %54 = sext i8 %53 to i32, !dbg !433
  %55 = icmp eq i32 %54, 45, !dbg !435
  br label %56

56:                                               ; preds = %50, %48
  %57 = phi i1 [ false, %48 ], [ %55, %50 ], !dbg !436
  br i1 %57, label %58, label %95, !dbg !427

58:                                               ; preds = %56
  %59 = getelementptr inbounds ptr, ptr %.04, i64 0, !dbg !437
  %60 = load ptr, ptr %59, align 8, !dbg !437, !tbaa !193
  %61 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !438
  call void @llvm.dbg.value(metadata ptr %61, metadata !372, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 0, metadata !375, metadata !DIExpression()), !dbg !439
  br label %62, !dbg !440

62:                                               ; preds = %73, %58
  %.034 = phi i64 [ 0, %58 ], [ %74, %73 ], !dbg !442
  call void @llvm.dbg.value(metadata i64 %.034, metadata !375, metadata !DIExpression()), !dbg !439
  %63 = getelementptr inbounds i8, ptr %61, i64 %.034, !dbg !443
  %64 = load i8, ptr %63, align 1, !dbg !443, !tbaa !434
  %65 = icmp ne i8 %64, 0, !dbg !445
  br i1 %65, label %66, label %75, !dbg !445

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %61, i64 %.034, !dbg !446
  %68 = load i8, ptr %67, align 1, !dbg !446, !tbaa !434
  %69 = sext i8 %68 to i32, !dbg !446
  switch i32 %69, label %71 [
    i32 101, label %70
    i32 69, label %70
    i32 110, label %70
  ], !dbg !447

70:                                               ; preds = %66, %66, %66
  br label %72, !dbg !448

71:                                               ; preds = %66
  br label %93, !dbg !450

72:                                               ; preds = %70
  br label %73, !dbg !451

73:                                               ; preds = %72
  %74 = add i64 %.034, 1, !dbg !452
  call void @llvm.dbg.value(metadata i64 %74, metadata !375, metadata !DIExpression()), !dbg !439
  br label %62, !dbg !453, !llvm.loop !454

75:                                               ; preds = %62
  %76 = icmp eq i64 %.034, 0, !dbg !456
  br i1 %76, label %77, label %78, !dbg !458

77:                                               ; preds = %75
  br label %93, !dbg !459

78:                                               ; preds = %75
  br label %79, !dbg !460

79:                                               ; preds = %89, %78
  %.033 = phi ptr [ %61, %78 ], [ %83, %89 ], !dbg !439
  %.125 = phi i8 [ %.024, %78 ], [ %.226, %89 ], !dbg !428
  %.112 = phi i8 [ %.011, %78 ], [ %.213, %89 ], !dbg !429
  call void @llvm.dbg.value(metadata i8 %.112, metadata !367, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %.125, metadata !371, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %.033, metadata !372, metadata !DIExpression()), !dbg !439
  %80 = load i8, ptr %.033, align 1, !dbg !461, !tbaa !434
  %81 = icmp ne i8 %80, 0, !dbg !460
  br i1 %81, label %82, label %90, !dbg !460

82:                                               ; preds = %79
  %83 = getelementptr inbounds i8, ptr %.033, i32 1, !dbg !462
  call void @llvm.dbg.value(metadata ptr %83, metadata !372, metadata !DIExpression()), !dbg !439
  %84 = load i8, ptr %.033, align 1, !dbg !463, !tbaa !434
  %85 = sext i8 %84 to i32, !dbg !463
  switch i32 %85, label %89 [
    i32 101, label %86
    i32 69, label %87
    i32 110, label %88
  ], !dbg !464

86:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i8 1, metadata !371, metadata !DIExpression()), !dbg !389
  br label %89, !dbg !465

87:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i8 0, metadata !371, metadata !DIExpression()), !dbg !389
  br label %89, !dbg !467

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i8 0, metadata !367, metadata !DIExpression()), !dbg !389
  br label %89, !dbg !468

89:                                               ; preds = %88, %87, %86, %82
  %.226 = phi i8 [ %.125, %82 ], [ %.125, %88 ], [ 0, %87 ], [ 1, %86 ], !dbg !389
  %.213 = phi i8 [ %.112, %82 ], [ 0, %88 ], [ %.112, %87 ], [ %.112, %86 ], !dbg !389
  call void @llvm.dbg.value(metadata i8 %.213, metadata !367, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %.226, metadata !371, metadata !DIExpression()), !dbg !389
  br label %79, !dbg !460, !llvm.loop !469

90:                                               ; preds = %79
  %91 = add nsw i32 %.01, -1, !dbg !471
  call void @llvm.dbg.value(metadata i32 %91, metadata !365, metadata !DIExpression()), !dbg !389
  %92 = getelementptr inbounds ptr, ptr %.04, i32 1, !dbg !472
  call void @llvm.dbg.value(metadata ptr %92, metadata !366, metadata !DIExpression()), !dbg !389
  br label %93, !dbg !473

93:                                               ; preds = %90, %77, %71
  %.030 = phi i32 [ 8, %71 ], [ 8, %77 ], [ 0, %90 ]
  %.327 = phi i8 [ %.024, %71 ], [ %.024, %77 ], [ %.125, %90 ], !dbg !428
  %.314 = phi i8 [ %.011, %71 ], [ %.011, %77 ], [ %.112, %90 ], !dbg !429
  %.15 = phi ptr [ %.04, %71 ], [ %.04, %77 ], [ %92, %90 ], !dbg !389
  %.12 = phi i32 [ %.01, %71 ], [ %.01, %77 ], [ %91, %90 ], !dbg !389
  call void @llvm.dbg.value(metadata i32 %.12, metadata !365, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %.15, metadata !366, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %.314, metadata !367, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %.327, metadata !371, metadata !DIExpression()), !dbg !389
  switch i32 %.030, label %247 [
    i32 0, label %94
    i32 8, label %97
  ]

94:                                               ; preds = %93
  br label %48, !dbg !427, !llvm.loop !474

95:                                               ; preds = %56
  br label %96, !dbg !427

96:                                               ; preds = %95, %43
  %.428 = phi i8 [ %.024, %95 ], [ 0, %43 ], !dbg !428
  %.415 = phi i8 [ %.011, %95 ], [ 1, %43 ], !dbg !429
  %.26 = phi ptr [ %.04, %95 ], [ %45, %43 ], !dbg !424
  %.23 = phi i32 [ %.01, %95 ], [ %44, %43 ], !dbg !423
  call void @llvm.dbg.value(metadata i32 %.23, metadata !365, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %.26, metadata !366, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %.415, metadata !367, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %.428, metadata !371, metadata !DIExpression()), !dbg !389
  br label %97, !dbg !425

97:                                               ; preds = %96, %93
  %.529 = phi i8 [ %.327, %93 ], [ %.428, %96 ], !dbg !428
  %.516 = phi i8 [ %.314, %93 ], [ %.415, %96 ], !dbg !429
  %.37 = phi ptr [ %.15, %93 ], [ %.26, %96 ], !dbg !424
  %.3 = phi i32 [ %.12, %93 ], [ %.23, %96 ], !dbg !423
  call void @llvm.dbg.value(metadata i32 %.3, metadata !365, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %.37, metadata !366, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %.516, metadata !367, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %.529, metadata !371, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.label(metadata !387), !dbg !475
  %98 = trunc i8 %.529 to i1, !dbg !476
  br i1 %98, label %101, label %99, !dbg !477

99:                                               ; preds = %97
  %100 = trunc i8 %7 to i1, !dbg !478
  br i1 %100, label %101, label %225, !dbg !479

101:                                              ; preds = %99, %97
  br label %102, !dbg !480

102:                                              ; preds = %223, %101
  %.48 = phi ptr [ %.37, %101 ], [ %.59, %223 ], !dbg !424
  %.4 = phi i32 [ %.3, %101 ], [ %.5, %223 ], !dbg !423
  %.0 = phi i32 [ 0, %101 ], [ %.1, %223 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !365, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %.48, metadata !366, metadata !DIExpression()), !dbg !389
  %103 = icmp sgt i32 %.4, 0, !dbg !481
  br i1 %103, label %104, label %224, !dbg !480

104:                                              ; preds = %102
  %105 = getelementptr inbounds ptr, ptr %.48, i64 0, !dbg !482
  %106 = load ptr, ptr %105, align 8, !dbg !482, !tbaa !193
  call void @llvm.dbg.value(metadata ptr %106, metadata !376, metadata !DIExpression()), !dbg !483
  br label %107, !dbg !484

107:                                              ; preds = %210, %104
  %.035 = phi ptr [ %106, %104 ], [ %.8, %210 ], !dbg !483
  call void @llvm.dbg.value(metadata ptr %.035, metadata !376, metadata !DIExpression()), !dbg !483
  %108 = getelementptr inbounds i8, ptr %.035, i32 1, !dbg !485
  call void @llvm.dbg.value(metadata ptr %108, metadata !376, metadata !DIExpression()), !dbg !483
  %109 = load i8, ptr %.035, align 1, !dbg !486, !tbaa !434
  call void @llvm.dbg.value(metadata i8 %109, metadata !380, metadata !DIExpression()), !dbg !483
  %110 = icmp ne i8 %109, 0, !dbg !484
  br i1 %110, label %111, label %214, !dbg !484

111:                                              ; preds = %107
  %112 = zext i8 %109 to i32, !dbg !487
  %113 = icmp eq i32 %112, 92, !dbg !488
  br i1 %113, label %114, label %210, !dbg !489

114:                                              ; preds = %111
  %115 = load i8, ptr %108, align 1, !dbg !490, !tbaa !434
  %116 = sext i8 %115 to i32, !dbg !490
  %117 = icmp ne i32 %116, 0, !dbg !490
  br i1 %117, label %118, label %210, !dbg !491

118:                                              ; preds = %114
  %119 = getelementptr inbounds i8, ptr %108, i32 1, !dbg !492
  call void @llvm.dbg.value(metadata ptr %119, metadata !376, metadata !DIExpression()), !dbg !483
  %120 = load i8, ptr %108, align 1, !dbg !493, !tbaa !434
  call void @llvm.dbg.value(metadata i8 %120, metadata !380, metadata !DIExpression()), !dbg !483
  %121 = zext i8 %120 to i32, !dbg !494
  switch i32 %121, label %206 [
    i32 97, label %122
    i32 98, label %123
    i32 99, label %124
    i32 101, label %125
    i32 102, label %126
    i32 110, label %127
    i32 114, label %128
    i32 116, label %129
    i32 118, label %130
    i32 120, label %131
    i32 48, label %155
    i32 49, label %167
    i32 50, label %167
    i32 51, label %167
    i32 52, label %167
    i32 53, label %167
    i32 54, label %167
    i32 55, label %167
    i32 92, label %209
  ], !dbg !495

122:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8 7, metadata !380, metadata !DIExpression()), !dbg !483
  br label %209, !dbg !496

123:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8 8, metadata !380, metadata !DIExpression()), !dbg !483
  br label %209, !dbg !497

124:                                              ; preds = %118
  br label %222, !dbg !498

125:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8 27, metadata !380, metadata !DIExpression()), !dbg !483
  br label %209, !dbg !499

126:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8 12, metadata !380, metadata !DIExpression()), !dbg !483
  br label %209, !dbg !500

127:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8 10, metadata !380, metadata !DIExpression()), !dbg !483
  br label %209, !dbg !501

128:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8 13, metadata !380, metadata !DIExpression()), !dbg !483
  br label %209, !dbg !502

129:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8 9, metadata !380, metadata !DIExpression()), !dbg !483
  br label %209, !dbg !503

130:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8 11, metadata !380, metadata !DIExpression()), !dbg !483
  br label %209, !dbg !504

131:                                              ; preds = %118
  %132 = load i8, ptr %119, align 1, !dbg !505, !tbaa !434
  call void @llvm.dbg.value(metadata i8 %132, metadata !381, metadata !DIExpression()), !dbg !506
  %133 = zext i8 %132 to i32, !dbg !507
  %134 = call i32 @isxdigit(i32 noundef %133) #14, !dbg !509
  %135 = icmp ne i32 %134, 0, !dbg !509
  br i1 %135, label %137, label %136, !dbg !510

136:                                              ; preds = %131
  br label %153, !dbg !511

137:                                              ; preds = %131
  %138 = getelementptr inbounds i8, ptr %119, i32 1, !dbg !512
  call void @llvm.dbg.value(metadata ptr %138, metadata !376, metadata !DIExpression()), !dbg !483
  %139 = call i32 @hextobin(i8 noundef zeroext %132), !dbg !513
  %140 = trunc i32 %139 to i8, !dbg !513
  call void @llvm.dbg.value(metadata i8 %140, metadata !380, metadata !DIExpression()), !dbg !483
  %141 = load i8, ptr %138, align 1, !dbg !514, !tbaa !434
  call void @llvm.dbg.value(metadata i8 %141, metadata !381, metadata !DIExpression()), !dbg !506
  %142 = zext i8 %141 to i32, !dbg !515
  %143 = call i32 @isxdigit(i32 noundef %142) #14, !dbg !517
  %144 = icmp ne i32 %143, 0, !dbg !517
  br i1 %144, label %145, label %152, !dbg !518

145:                                              ; preds = %137
  %146 = getelementptr inbounds i8, ptr %138, i32 1, !dbg !519
  call void @llvm.dbg.value(metadata ptr %146, metadata !376, metadata !DIExpression()), !dbg !483
  %147 = zext i8 %140 to i32, !dbg !521
  %148 = mul nsw i32 %147, 16, !dbg !522
  %149 = call i32 @hextobin(i8 noundef zeroext %141), !dbg !523
  %150 = add nsw i32 %148, %149, !dbg !524
  %151 = trunc i32 %150 to i8, !dbg !521
  call void @llvm.dbg.value(metadata i8 %151, metadata !380, metadata !DIExpression()), !dbg !483
  br label %152, !dbg !525

152:                                              ; preds = %145, %137
  %.136 = phi ptr [ %146, %145 ], [ %138, %137 ], !dbg !506
  %.017 = phi i8 [ %151, %145 ], [ %140, %137 ], !dbg !506
  call void @llvm.dbg.value(metadata i8 %.017, metadata !380, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %.136, metadata !376, metadata !DIExpression()), !dbg !483
  br label %153, !dbg !526

153:                                              ; preds = %152, %136
  %.237 = phi ptr [ %.136, %152 ], [ %119, %136 ], !dbg !527
  %.131 = phi i32 [ 0, %152 ], [ 17, %136 ]
  %.118 = phi i8 [ %.017, %152 ], [ %120, %136 ], !dbg !527
  call void @llvm.dbg.value(metadata i8 %.118, metadata !380, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %.237, metadata !376, metadata !DIExpression()), !dbg !483
  switch i32 %.131, label %222 [
    i32 0, label %154
    i32 17, label %205
  ]

154:                                              ; preds = %153
  br label %209, !dbg !528

155:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8 0, metadata !380, metadata !DIExpression()), !dbg !483
  %156 = load i8, ptr %119, align 1, !dbg !529, !tbaa !434
  %157 = sext i8 %156 to i32, !dbg !529
  %158 = icmp sle i32 48, %157, !dbg !531
  br i1 %158, label %159, label %163, !dbg !532

159:                                              ; preds = %155
  %160 = load i8, ptr %119, align 1, !dbg !533, !tbaa !434
  %161 = sext i8 %160 to i32, !dbg !533
  %162 = icmp sle i32 %161, 55, !dbg !534
  br i1 %162, label %164, label %163, !dbg !535

163:                                              ; preds = %159, %155
  br label %209, !dbg !536

164:                                              ; preds = %159
  %165 = getelementptr inbounds i8, ptr %119, i32 1, !dbg !537
  call void @llvm.dbg.value(metadata ptr %165, metadata !376, metadata !DIExpression()), !dbg !483
  %166 = load i8, ptr %119, align 1, !dbg !538, !tbaa !434
  call void @llvm.dbg.value(metadata i8 %166, metadata !380, metadata !DIExpression()), !dbg !483
  br label %167, !dbg !539

167:                                              ; preds = %164, %118, %118, %118, %118, %118, %118, %118
  %.338 = phi ptr [ %119, %118 ], [ %119, %118 ], [ %119, %118 ], [ %119, %118 ], [ %119, %118 ], [ %119, %118 ], [ %119, %118 ], [ %165, %164 ], !dbg !527
  %.219 = phi i8 [ %120, %118 ], [ %120, %118 ], [ %120, %118 ], [ %120, %118 ], [ %120, %118 ], [ %120, %118 ], [ %120, %118 ], [ %166, %164 ], !dbg !527
  call void @llvm.dbg.value(metadata i8 %.219, metadata !380, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %.338, metadata !376, metadata !DIExpression()), !dbg !483
  %168 = zext i8 %.219 to i32, !dbg !540
  %169 = sub nsw i32 %168, 48, !dbg !540
  %170 = trunc i32 %169 to i8, !dbg !540
  call void @llvm.dbg.value(metadata i8 %170, metadata !380, metadata !DIExpression()), !dbg !483
  %171 = load i8, ptr %.338, align 1, !dbg !541, !tbaa !434
  %172 = sext i8 %171 to i32, !dbg !541
  %173 = icmp sle i32 48, %172, !dbg !543
  br i1 %173, label %174, label %187, !dbg !544

174:                                              ; preds = %167
  %175 = load i8, ptr %.338, align 1, !dbg !545, !tbaa !434
  %176 = sext i8 %175 to i32, !dbg !545
  %177 = icmp sle i32 %176, 55, !dbg !546
  br i1 %177, label %178, label %187, !dbg !547

178:                                              ; preds = %174
  %179 = zext i8 %170 to i32, !dbg !548
  %180 = mul nsw i32 %179, 8, !dbg !549
  %181 = getelementptr inbounds i8, ptr %.338, i32 1, !dbg !550
  call void @llvm.dbg.value(metadata ptr %181, metadata !376, metadata !DIExpression()), !dbg !483
  %182 = load i8, ptr %.338, align 1, !dbg !551, !tbaa !434
  %183 = sext i8 %182 to i32, !dbg !551
  %184 = sub nsw i32 %183, 48, !dbg !552
  %185 = add nsw i32 %180, %184, !dbg !553
  %186 = trunc i32 %185 to i8, !dbg !548
  call void @llvm.dbg.value(metadata i8 %186, metadata !380, metadata !DIExpression()), !dbg !483
  br label %187, !dbg !554

187:                                              ; preds = %178, %174, %167
  %.439 = phi ptr [ %181, %178 ], [ %.338, %174 ], [ %.338, %167 ], !dbg !527
  %.320 = phi i8 [ %186, %178 ], [ %170, %174 ], [ %170, %167 ], !dbg !555
  call void @llvm.dbg.value(metadata i8 %.320, metadata !380, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %.439, metadata !376, metadata !DIExpression()), !dbg !483
  %188 = load i8, ptr %.439, align 1, !dbg !556, !tbaa !434
  %189 = sext i8 %188 to i32, !dbg !556
  %190 = icmp sle i32 48, %189, !dbg !558
  br i1 %190, label %191, label %204, !dbg !559

191:                                              ; preds = %187
  %192 = load i8, ptr %.439, align 1, !dbg !560, !tbaa !434
  %193 = sext i8 %192 to i32, !dbg !560
  %194 = icmp sle i32 %193, 55, !dbg !561
  br i1 %194, label %195, label %204, !dbg !562

195:                                              ; preds = %191
  %196 = zext i8 %.320 to i32, !dbg !563
  %197 = mul nsw i32 %196, 8, !dbg !564
  %198 = getelementptr inbounds i8, ptr %.439, i32 1, !dbg !565
  call void @llvm.dbg.value(metadata ptr %198, metadata !376, metadata !DIExpression()), !dbg !483
  %199 = load i8, ptr %.439, align 1, !dbg !566, !tbaa !434
  %200 = sext i8 %199 to i32, !dbg !566
  %201 = sub nsw i32 %200, 48, !dbg !567
  %202 = add nsw i32 %197, %201, !dbg !568
  %203 = trunc i32 %202 to i8, !dbg !563
  call void @llvm.dbg.value(metadata i8 %203, metadata !380, metadata !DIExpression()), !dbg !483
  br label %204, !dbg !569

204:                                              ; preds = %195, %191, %187
  %.540 = phi ptr [ %198, %195 ], [ %.439, %191 ], [ %.439, %187 ], !dbg !555
  %.421 = phi i8 [ %203, %195 ], [ %.320, %191 ], [ %.320, %187 ], !dbg !555
  call void @llvm.dbg.value(metadata i8 %.421, metadata !380, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %.540, metadata !376, metadata !DIExpression()), !dbg !483
  br label %209, !dbg !570

205:                                              ; preds = %153
  call void @llvm.dbg.label(metadata !388), !dbg !571
  br label %206, !dbg !570

206:                                              ; preds = %205, %118
  %.641 = phi ptr [ %119, %118 ], [ %.237, %205 ], !dbg !527
  %.522 = phi i8 [ %120, %118 ], [ %.118, %205 ], !dbg !527
  call void @llvm.dbg.value(metadata i8 %.522, metadata !380, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %.641, metadata !376, metadata !DIExpression()), !dbg !483
  %207 = load ptr, ptr @__stdoutp, align 8, !dbg !572, !tbaa !193
  %208 = call i32 @putc_unlocked(i32 noundef 92, ptr noundef %207), !dbg !572
  br label %209, !dbg !573

209:                                              ; preds = %206, %204, %163, %154, %130, %129, %128, %127, %126, %125, %123, %122, %118
  %.742 = phi ptr [ %.641, %206 ], [ %119, %118 ], [ %.540, %204 ], [ %119, %163 ], [ %.237, %154 ], [ %119, %130 ], [ %119, %129 ], [ %119, %128 ], [ %119, %127 ], [ %119, %126 ], [ %119, %125 ], [ %119, %123 ], [ %119, %122 ], !dbg !527
  %.623 = phi i8 [ %.522, %206 ], [ %120, %118 ], [ %.421, %204 ], [ 0, %163 ], [ %.118, %154 ], [ 11, %130 ], [ 9, %129 ], [ 13, %128 ], [ 10, %127 ], [ 12, %126 ], [ 27, %125 ], [ 8, %123 ], [ 7, %122 ], !dbg !527
  call void @llvm.dbg.value(metadata i8 %.623, metadata !380, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %.742, metadata !376, metadata !DIExpression()), !dbg !483
  br label %210, !dbg !574

210:                                              ; preds = %209, %114, %111
  %.8 = phi ptr [ %.742, %209 ], [ %108, %114 ], [ %108, %111 ], !dbg !483
  %.7 = phi i8 [ %.623, %209 ], [ %109, %114 ], [ %109, %111 ], !dbg !483
  call void @llvm.dbg.value(metadata i8 %.7, metadata !380, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %.8, metadata !376, metadata !DIExpression()), !dbg !483
  %211 = zext i8 %.7 to i32, !dbg !575
  %212 = load ptr, ptr @__stdoutp, align 8, !dbg !575, !tbaa !193
  %213 = call i32 @putc_unlocked(i32 noundef %211, ptr noundef %212), !dbg !575
  br label %107, !dbg !484, !llvm.loop !576

214:                                              ; preds = %107
  %215 = add nsw i32 %.4, -1, !dbg !578
  call void @llvm.dbg.value(metadata i32 %215, metadata !365, metadata !DIExpression()), !dbg !389
  %216 = getelementptr inbounds ptr, ptr %.48, i32 1, !dbg !579
  call void @llvm.dbg.value(metadata ptr %216, metadata !366, metadata !DIExpression()), !dbg !389
  %217 = icmp sgt i32 %215, 0, !dbg !580
  br i1 %217, label %218, label %221, !dbg !582

218:                                              ; preds = %214
  %219 = load ptr, ptr @__stdoutp, align 8, !dbg !583, !tbaa !193
  %220 = call i32 @putc_unlocked(i32 noundef 32, ptr noundef %219), !dbg !583
  br label %221, !dbg !583

221:                                              ; preds = %218, %214
  br label %222, !dbg !584

222:                                              ; preds = %221, %153, %124
  %.232 = phi i32 [ %.131, %153 ], [ 1, %124 ], [ 0, %221 ]
  %.59 = phi ptr [ %.48, %153 ], [ %.48, %124 ], [ %216, %221 ], !dbg !389
  %.5 = phi i32 [ %.4, %153 ], [ %.4, %124 ], [ %215, %221 ], !dbg !389
  %.1 = phi i32 [ %.0, %153 ], [ 0, %124 ], [ %.0, %221 ]
  call void @llvm.dbg.value(metadata i32 %.5, metadata !365, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %.59, metadata !366, metadata !DIExpression()), !dbg !389
  switch i32 %.232, label %247 [
    i32 0, label %223
  ]

223:                                              ; preds = %222
  br label %102, !dbg !480, !llvm.loop !585

224:                                              ; preds = %102
  br label %241, !dbg !586

225:                                              ; preds = %99
  br label %226, !dbg !587

226:                                              ; preds = %239, %225
  %.610 = phi ptr [ %.37, %225 ], [ %234, %239 ], !dbg !389
  %.6 = phi i32 [ %.3, %225 ], [ %233, %239 ], !dbg !389
  call void @llvm.dbg.value(metadata i32 %.6, metadata !365, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %.610, metadata !366, metadata !DIExpression()), !dbg !389
  %227 = icmp sgt i32 %.6, 0, !dbg !589
  br i1 %227, label %228, label %240, !dbg !587

228:                                              ; preds = %226
  %229 = getelementptr inbounds ptr, ptr %.610, i64 0, !dbg !590
  %230 = load ptr, ptr %229, align 8, !dbg !590, !tbaa !193
  %231 = load ptr, ptr @__stdoutp, align 8, !dbg !592, !tbaa !193
  %232 = call i32 @"\01_fputs"(ptr noundef %230, ptr noundef %231), !dbg !593
  %233 = add nsw i32 %.6, -1, !dbg !594
  call void @llvm.dbg.value(metadata i32 %233, metadata !365, metadata !DIExpression()), !dbg !389
  %234 = getelementptr inbounds ptr, ptr %.610, i32 1, !dbg !595
  call void @llvm.dbg.value(metadata ptr %234, metadata !366, metadata !DIExpression()), !dbg !389
  %235 = icmp sgt i32 %233, 0, !dbg !596
  br i1 %235, label %236, label %239, !dbg !598

236:                                              ; preds = %228
  %237 = load ptr, ptr @__stdoutp, align 8, !dbg !599, !tbaa !193
  %238 = call i32 @putc_unlocked(i32 noundef 32, ptr noundef %237), !dbg !599
  br label %239, !dbg !599

239:                                              ; preds = %236, %228
  br label %226, !dbg !587, !llvm.loop !600

240:                                              ; preds = %226
  br label %241

241:                                              ; preds = %240, %224
  %242 = trunc i8 %.516 to i1, !dbg !602
  br i1 %242, label %243, label %246, !dbg !604

243:                                              ; preds = %241
  %244 = load ptr, ptr @__stdoutp, align 8, !dbg !605, !tbaa !193
  %245 = call i32 @putc_unlocked(i32 noundef 10, ptr noundef %244), !dbg !605
  br label %246, !dbg !605

246:                                              ; preds = %243, %241
  br label %247, !dbg !606

247:                                              ; preds = %246, %222, %93, %39
  %.2 = phi i32 [ 0, %39 ], [ 0, %93 ], [ %.1, %222 ], [ 0, %246 ]
  ret i32 %.2, !dbg !607
}

declare !dbg !608 ptr @getenv(ptr noundef) #4

declare !dbg !611 void @set_program_name(ptr noundef) #4

declare void @close_stdout() #4

declare !dbg !613 i32 @atexit(ptr noundef) #4

declare !dbg !619 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally i32 @isxdigit(i32 noundef %0) #10 !dbg !623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !628, metadata !DIExpression()), !dbg !629
  %2 = call i32 @__isctype(i32 noundef %0, i64 noundef 65536), !dbg !630
  ret i32 %2, !dbg !631
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @hextobin(i8 noundef zeroext %0) #9 !dbg !632 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !636, metadata !DIExpression()), !dbg !637
  %2 = zext i8 %0 to i32, !dbg !638
  switch i32 %2, label %3 [
    i32 97, label %6
    i32 65, label %6
    i32 98, label %7
    i32 66, label %7
    i32 99, label %8
    i32 67, label %8
    i32 100, label %9
    i32 68, label %9
    i32 101, label %10
    i32 69, label %10
    i32 102, label %11
    i32 70, label %11
  ], !dbg !639

3:                                                ; preds = %1
  %4 = zext i8 %0 to i32, !dbg !640
  %5 = sub nsw i32 %4, 48, !dbg !642
  br label %12, !dbg !643

6:                                                ; preds = %1, %1
  br label %12, !dbg !644

7:                                                ; preds = %1, %1
  br label %12, !dbg !645

8:                                                ; preds = %1, %1
  br label %12, !dbg !646

9:                                                ; preds = %1, %1
  br label %12, !dbg !647

10:                                               ; preds = %1, %1
  br label %12, !dbg !648

11:                                               ; preds = %1, %1
  br label %12, !dbg !649

12:                                               ; preds = %11, %10, %9, %8, %7, %6, %3
  %.0 = phi i32 [ %5, %3 ], [ 15, %11 ], [ 14, %10 ], [ 13, %9 ], [ 12, %8 ], [ 11, %7 ], [ 10, %6 ], !dbg !650
  ret i32 %.0, !dbg !651
}

declare !dbg !652 i32 @putc_unlocked(i32 noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__isctype(i32 noundef %0, i64 noundef %1) #5 !dbg !655 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !660, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 %1, metadata !661, metadata !DIExpression()), !dbg !662
  %3 = icmp slt i32 %0, 0, !dbg !663
  br i1 %3, label %6, label %4, !dbg !664

4:                                                ; preds = %2
  %5 = icmp sge i32 %0, 256, !dbg !665
  br i1 %5, label %6, label %7, !dbg !666

6:                                                ; preds = %4, %2
  br label %17, !dbg !666

7:                                                ; preds = %4
  %8 = sext i32 %0 to i64, !dbg !667
  %9 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (%struct._RuneLocale, ptr @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %8, !dbg !667
  %10 = load i32, ptr %9, align 4, !dbg !667, !tbaa !668
  %11 = zext i32 %10 to i64, !dbg !667
  %12 = and i64 %11, %1, !dbg !670
  %13 = icmp ne i64 %12, 0, !dbg !671
  %14 = xor i1 %13, true, !dbg !671
  %15 = xor i1 %14, true, !dbg !672
  %16 = zext i1 %15 to i32, !dbg !672
  br label %17, !dbg !666

17:                                               ; preds = %7, %6
  %18 = phi i32 [ 0, %6 ], [ %16, %7 ], !dbg !666
  ret i32 %18, !dbg !673
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noreturn nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { noreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!166}
!llvm.ident = !{!177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/echo.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 6)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 56, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 7)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 184, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 23)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 504, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 63)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 744, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 93)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1056, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 132)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 384, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 48)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 456, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 57)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !20, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1832, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 229)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 880, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 110)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1528, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 191)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 40, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 5)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 840, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 105)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 16)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 3)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 1)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !10, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 80, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 10)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 112, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 14)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !89, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 88, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 11)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !106, line: 660, type: !107, isLocal: true, isDefinition: true)
!106 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 16, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 2)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !106, line: 660, type: !72, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !106, line: 661, type: !89, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !106, line: 661, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 176, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 22)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !106, line: 662, type: !89, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !106, line: 662, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 120, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 15)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !106, line: 663, type: !89, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !106, line: 664, type: !89, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !106, line: 665, type: !89, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !106, line: 678, type: !15, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !106, line: 678, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 40)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !106, line: 683, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 4)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !106, line: 689, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 568, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 71)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !106, line: 695, type: !62, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !106, line: 696, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 216, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 27)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !106, line: 698, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 408, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 51)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !106, line: 699, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 12)
!166 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !172, globals: !176, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!167 = !{!168}
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 32, baseType: !169, size: 32, elements: !170)
!169 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!170 = !{!171}
!171 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0)
!172 = !{!173, !174, !175}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!176 = !{!0, !8, !13, !18, !23, !28, !33, !38, !43, !45, !50, !55, !60, !65, !70, !75, !80, !85, !87, !92, !97, !99, !104, !110, !112, !114, !119, !121, !126, !128, !130, !132, !134, !139, !144, !149, !151, !156, !161}
!177 = !{!"Homebrew clang version 16.0.4"}
!178 = !{i32 7, !"Dwarf Version", i32 4}
!179 = !{i32 2, !"Debug Info Version", i32 3}
!180 = !{i32 1, !"wchar_size", i32 4}
!181 = !{i32 8, !"PIC Level", i32 2}
!182 = !{i32 7, !"uwtable", i32 2}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 36, type: !185, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !188)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !187}
!187 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!188 = !{!189}
!189 = !DILocalVariable(name: "status", arg: 1, scope: !184, file: !2, line: 36, type: !187)
!190 = !DILocation(line: 0, scope: !184)
!191 = !DILocation(line: 40, column: 3, scope: !184)
!192 = !DILocation(line: 45, column: 5, scope: !184)
!193 = !{!194, !194, i64 0}
!194 = !{!"any pointer", !195, i64 0}
!195 = !{!"omnipotent char", !196, i64 0}
!196 = !{!"Simple C/C++ TBAA"}
!197 = !DILocation(line: 45, column: 19, scope: !184)
!198 = !DILocation(line: 42, column: 3, scope: !184)
!199 = !DILocation(line: 50, column: 5, scope: !184)
!200 = !DILocation(line: 46, column: 3, scope: !184)
!201 = !DILocation(line: 58, column: 10, scope: !184)
!202 = !DILocation(line: 51, column: 3, scope: !184)
!203 = !DILocation(line: 59, column: 35, scope: !184)
!204 = !DILocation(line: 59, column: 3, scope: !184)
!205 = !DILocation(line: 60, column: 38, scope: !184)
!206 = !DILocation(line: 60, column: 3, scope: !184)
!207 = !DILocation(line: 65, column: 5, scope: !184)
!208 = !DILocation(line: 61, column: 3, scope: !184)
!209 = !DILocation(line: 77, column: 5, scope: !184)
!210 = !DILocation(line: 66, column: 3, scope: !184)
!211 = !DILocation(line: 81, column: 5, scope: !184)
!212 = !DILocation(line: 78, column: 3, scope: !184)
!213 = !DILocation(line: 82, column: 3, scope: !184)
!214 = !DILocation(line: 86, column: 5, scope: !184)
!215 = !DILocation(line: 83, column: 3, scope: !184)
!216 = !DILocation(line: 87, column: 3, scope: !184)
!217 = !DILocation(line: 88, column: 3, scope: !184)
!218 = !DISubprogram(name: "__assert_rtn", scope: !219, file: !219, line: 82, type: !220, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !222)
!219 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/assert.h", directory: "")
!220 = !DISubroutineType(types: !221)
!221 = !{null, !173, !173, !187, !173}
!222 = !{}
!223 = !DISubprogram(name: "printf", scope: !224, file: !224, line: 175, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!224 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!225 = !DISubroutineType(types: !226)
!226 = !{!187, !227, null}
!227 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!228 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !224, file: !224, line: 157, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!229 = !DISubroutineType(types: !230)
!230 = !{!187, !227, !231}
!231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 157, baseType: !235)
!234 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !234, line: 126, size: 1216, elements: !236)
!236 = !{!237, !240, !241, !242, !244, !245, !250, !251, !252, !256, !260, !270, !274, !275, !278, !279, !281, !283, !284, !285}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !235, file: !234, line: 127, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !235, file: !234, line: 128, baseType: !187, size: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !235, file: !234, line: 129, baseType: !187, size: 32, offset: 96)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !235, file: !234, line: 130, baseType: !243, size: 16, offset: 128)
!243 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !235, file: !234, line: 131, baseType: !243, size: 16, offset: 144)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !235, file: !234, line: 132, baseType: !246, size: 128, offset: 192)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !234, line: 92, size: 128, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !246, file: !234, line: 93, baseType: !238, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !246, file: !234, line: 94, baseType: !187, size: 32, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !235, file: !234, line: 133, baseType: !187, size: 32, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !235, file: !234, line: 136, baseType: !175, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !235, file: !234, line: 137, baseType: !253, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!187, !175}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !235, file: !234, line: 138, baseType: !257, size: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!187, !175, !174, !187}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !235, file: !234, line: 139, baseType: !261, size: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !175, !264, !187}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !234, line: 81, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !266, line: 71, baseType: !267)
!266 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !268, line: 48, baseType: !269)
!268 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!269 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !235, file: !234, line: 140, baseType: !271, size: 64, offset: 640)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!187, !175, !173, !187}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !235, file: !234, line: 143, baseType: !246, size: 128, offset: 704)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !235, file: !234, line: 144, baseType: !276, size: 64, offset: 832)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !234, line: 98, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !235, file: !234, line: 145, baseType: !187, size: 32, offset: 896)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !235, file: !234, line: 148, baseType: !280, size: 24, offset: 928)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 24, elements: !78)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !235, file: !234, line: 149, baseType: !282, size: 8, offset: 952)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 8, elements: !83)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !235, file: !234, line: 152, baseType: !246, size: 128, offset: 960)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !235, file: !234, line: 155, baseType: !187, size: 32, offset: 1088)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !235, file: !234, line: 156, baseType: !264, size: 64, offset: 1152)
!286 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !106, file: !106, line: 657, type: !287, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !173}
!289 = !{!290, !291, !298, !299, !301, !302}
!290 = !DILocalVariable(name: "program", arg: 1, scope: !286, file: !106, line: 657, type: !173)
!291 = !DILocalVariable(name: "infomap", scope: !286, file: !106, line: 659, type: !292)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 896, elements: !11)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !286, file: !106, line: 659, size: 128, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !294, file: !106, line: 659, baseType: !173, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !294, file: !106, line: 659, baseType: !173, size: 64, offset: 64)
!298 = !DILocalVariable(name: "node", scope: !286, file: !106, line: 669, type: !173)
!299 = !DILocalVariable(name: "map_prog", scope: !286, file: !106, line: 670, type: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!301 = !DILocalVariable(name: "lc_messages", scope: !286, file: !106, line: 682, type: !173)
!302 = !DILocalVariable(name: "url_program", scope: !286, file: !106, line: 695, type: !173)
!303 = !DILocation(line: 0, scope: !286)
!304 = !DILocation(line: 659, column: 3, scope: !286)
!305 = !DILocation(line: 659, column: 67, scope: !286)
!306 = !DILocation(line: 670, column: 36, scope: !286)
!307 = !DILocation(line: 672, column: 3, scope: !286)
!308 = !DILocation(line: 672, column: 20, scope: !286)
!309 = !{!310, !194, i64 0}
!310 = !{!"infomap", !194, i64 0, !194, i64 8}
!311 = !DILocation(line: 672, column: 10, scope: !286)
!312 = !DILocation(line: 672, column: 28, scope: !286)
!313 = !DILocation(line: 672, column: 33, scope: !286)
!314 = !DILocation(line: 672, column: 31, scope: !286)
!315 = !DILocation(line: 673, column: 13, scope: !286)
!316 = distinct !{!316, !307, !315, !317, !318}
!317 = !{!"llvm.loop.mustprogress"}
!318 = !{!"llvm.loop.unroll.disable"}
!319 = !DILocation(line: 675, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !286, file: !106, line: 675, column: 7)
!321 = !{!310, !194, i64 8}
!322 = !DILocation(line: 675, column: 7, scope: !320)
!323 = !DILocation(line: 675, column: 7, scope: !286)
!324 = !DILocation(line: 676, column: 22, scope: !320)
!325 = !DILocation(line: 676, column: 5, scope: !320)
!326 = !DILocation(line: 678, column: 3, scope: !286)
!327 = !DILocation(line: 682, column: 29, scope: !286)
!328 = !DILocation(line: 683, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !286, file: !106, line: 683, column: 7)
!330 = !DILocation(line: 683, column: 19, scope: !329)
!331 = !DILocation(line: 683, column: 22, scope: !329)
!332 = !DILocation(line: 683, column: 7, scope: !286)
!333 = !DILocation(line: 690, column: 61, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !106, line: 684, column: 5)
!335 = !DILocation(line: 689, column: 7, scope: !334)
!336 = !DILocation(line: 691, column: 5, scope: !334)
!337 = !DILocation(line: 695, column: 29, scope: !286)
!338 = !DILocation(line: 696, column: 3, scope: !286)
!339 = !DILocation(line: 699, column: 22, scope: !286)
!340 = !DILocation(line: 699, column: 17, scope: !286)
!341 = !DILocation(line: 698, column: 3, scope: !286)
!342 = !DILocation(line: 700, column: 1, scope: !286)
!343 = !DISubprogram(name: "exit", scope: !344, file: !344, line: 145, type: !185, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !222)
!344 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!345 = !DISubprogram(name: "strcmp", scope: !346, file: !346, line: 77, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!346 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!347 = !DISubroutineType(types: !348)
!348 = !{!187, !173, !173}
!349 = !DISubprogram(name: "setlocale", scope: !350, file: !350, line: 53, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!350 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!351 = !DISubroutineType(types: !352)
!352 = !{!174, !187, !173}
!353 = !DISubprogram(name: "strncmp", scope: !346, file: !346, line: 84, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!354 = !DISubroutineType(types: !355)
!355 = !{!187, !173, !173, !356}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !357, line: 31, baseType: !358)
!357 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !268, line: 94, baseType: !359)
!359 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!360 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 112, type: !361, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !364)
!361 = !DISubroutineType(types: !362)
!362 = !{!187, !187, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!364 = !{!365, !366, !367, !369, !370, !371, !372, !375, !376, !380, !381, !387, !388}
!365 = !DILocalVariable(name: "argc", arg: 1, scope: !360, file: !2, line: 112, type: !187)
!366 = !DILocalVariable(name: "argv", arg: 2, scope: !360, file: !2, line: 112, type: !363)
!367 = !DILocalVariable(name: "display_return", scope: !360, file: !2, line: 114, type: !368)
!368 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!369 = !DILocalVariable(name: "posixly_correct", scope: !360, file: !2, line: 115, type: !368)
!370 = !DILocalVariable(name: "allow_options", scope: !360, file: !2, line: 116, type: !368)
!371 = !DILocalVariable(name: "do_v9", scope: !360, file: !2, line: 123, type: !368)
!372 = !DILocalVariable(name: "temp", scope: !373, file: !2, line: 154, type: !173)
!373 = distinct !DILexicalBlock(scope: !374, file: !2, line: 153, column: 7)
!374 = distinct !DILexicalBlock(scope: !360, file: !2, line: 151, column: 7)
!375 = !DILocalVariable(name: "i", scope: !373, file: !2, line: 155, type: !356)
!376 = !DILocalVariable(name: "s", scope: !377, file: !2, line: 201, type: !173)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 200, column: 9)
!378 = distinct !DILexicalBlock(scope: !379, file: !2, line: 198, column: 5)
!379 = distinct !DILexicalBlock(scope: !360, file: !2, line: 197, column: 7)
!380 = !DILocalVariable(name: "c", scope: !377, file: !2, line: 202, type: !239)
!381 = !DILocalVariable(name: "ch", scope: !382, file: !2, line: 221, type: !239)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 220, column: 23)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 209, column: 21)
!384 = distinct !DILexicalBlock(scope: !385, file: !2, line: 207, column: 17)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 206, column: 19)
!386 = distinct !DILexicalBlock(scope: !377, file: !2, line: 205, column: 13)
!387 = !DILabel(scope: !360, name: "just_echo", file: !2, line: 195)
!388 = !DILabel(scope: !383, name: "not_an_escape", file: !2, line: 250)
!389 = !DILocation(line: 0, scope: !360)
!390 = !DILocation(line: 115, column: 28, scope: !360)
!391 = !DILocation(line: 115, column: 27, scope: !360)
!392 = !DILocation(line: 115, column: 26, scope: !360)
!393 = !DILocation(line: 115, column: 8, scope: !360)
!394 = !DILocation(line: 117, column: 8, scope: !360)
!395 = !DILocation(line: 118, column: 6, scope: !360)
!396 = !DILocation(line: 118, column: 37, scope: !360)
!397 = !DILocation(line: 118, column: 44, scope: !360)
!398 = !DILocation(line: 118, column: 47, scope: !360)
!399 = !DILocation(line: 116, column: 8, scope: !360)
!400 = !DILocation(line: 126, column: 21, scope: !360)
!401 = !DILocation(line: 126, column: 3, scope: !360)
!402 = !DILocation(line: 127, column: 3, scope: !360)
!403 = !DILocation(line: 131, column: 3, scope: !360)
!404 = !DILocation(line: 135, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !360, file: !2, line: 135, column: 7)
!406 = !DILocation(line: 135, column: 21, scope: !405)
!407 = !DILocation(line: 135, column: 29, scope: !405)
!408 = !DILocation(line: 135, column: 7, scope: !360)
!409 = !DILocation(line: 137, column: 11, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 137, column: 11)
!411 = distinct !DILexicalBlock(scope: !405, file: !2, line: 136, column: 5)
!412 = !DILocation(line: 137, column: 11, scope: !411)
!413 = !DILocation(line: 138, column: 9, scope: !410)
!414 = !DILocation(line: 140, column: 11, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !2, line: 140, column: 11)
!416 = !DILocation(line: 140, column: 11, scope: !411)
!417 = !DILocation(line: 142, column: 24, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !2, line: 141, column: 9)
!419 = !DILocation(line: 142, column: 60, scope: !418)
!420 = !DILocation(line: 142, column: 11, scope: !418)
!421 = !DILocation(line: 144, column: 11, scope: !418)
!422 = !DILocation(line: 146, column: 5, scope: !411)
!423 = !DILocation(line: 148, column: 3, scope: !360)
!424 = !DILocation(line: 149, column: 3, scope: !360)
!425 = !DILocation(line: 151, column: 7, scope: !374)
!426 = !DILocation(line: 151, column: 7, scope: !360)
!427 = !DILocation(line: 152, column: 5, scope: !374)
!428 = !DILocation(line: 123, column: 8, scope: !360)
!429 = !DILocation(line: 114, column: 8, scope: !360)
!430 = !DILocation(line: 152, column: 17, scope: !374)
!431 = !DILocation(line: 152, column: 21, scope: !374)
!432 = !DILocation(line: 152, column: 25, scope: !374)
!433 = !DILocation(line: 152, column: 24, scope: !374)
!434 = !{!195, !195, i64 0}
!435 = !DILocation(line: 152, column: 33, scope: !374)
!436 = !DILocation(line: 0, scope: !374)
!437 = !DILocation(line: 154, column: 28, scope: !373)
!438 = !DILocation(line: 154, column: 36, scope: !373)
!439 = !DILocation(line: 0, scope: !373)
!440 = !DILocation(line: 161, column: 14, scope: !441)
!441 = distinct !DILexicalBlock(scope: !373, file: !2, line: 161, column: 9)
!442 = !DILocation(line: 161, scope: !441)
!443 = !DILocation(line: 161, column: 21, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !2, line: 161, column: 9)
!445 = !DILocation(line: 161, column: 9, scope: !441)
!446 = !DILocation(line: 162, column: 19, scope: !444)
!447 = !DILocation(line: 162, column: 11, scope: !444)
!448 = !DILocation(line: 165, column: 15, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !2, line: 163, column: 13)
!450 = !DILocation(line: 167, column: 15, scope: !449)
!451 = !DILocation(line: 168, column: 13, scope: !449)
!452 = !DILocation(line: 161, column: 31, scope: !444)
!453 = !DILocation(line: 161, column: 9, scope: !444)
!454 = distinct !{!454, !445, !455, !317, !318}
!455 = !DILocation(line: 168, column: 13, scope: !441)
!456 = !DILocation(line: 170, column: 15, scope: !457)
!457 = distinct !DILexicalBlock(scope: !373, file: !2, line: 170, column: 13)
!458 = !DILocation(line: 170, column: 13, scope: !373)
!459 = !DILocation(line: 171, column: 11, scope: !457)
!460 = !DILocation(line: 175, column: 9, scope: !373)
!461 = !DILocation(line: 175, column: 16, scope: !373)
!462 = !DILocation(line: 176, column: 24, scope: !373)
!463 = !DILocation(line: 176, column: 19, scope: !373)
!464 = !DILocation(line: 176, column: 11, scope: !373)
!465 = !DILocation(line: 180, column: 15, scope: !466)
!466 = distinct !DILexicalBlock(scope: !373, file: !2, line: 177, column: 13)
!467 = !DILocation(line: 184, column: 15, scope: !466)
!468 = !DILocation(line: 188, column: 15, scope: !466)
!469 = distinct !{!469, !460, !470, !317, !318}
!470 = !DILocation(line: 189, column: 13, scope: !373)
!471 = !DILocation(line: 191, column: 13, scope: !373)
!472 = !DILocation(line: 192, column: 13, scope: !373)
!473 = !DILocation(line: 193, column: 7, scope: !374)
!474 = distinct !{!474, !427, !473, !317, !318}
!475 = !DILocation(line: 195, column: 1, scope: !360)
!476 = !DILocation(line: 197, column: 7, scope: !379)
!477 = !DILocation(line: 197, column: 13, scope: !379)
!478 = !DILocation(line: 197, column: 16, scope: !379)
!479 = !DILocation(line: 197, column: 7, scope: !360)
!480 = !DILocation(line: 199, column: 7, scope: !378)
!481 = !DILocation(line: 199, column: 19, scope: !378)
!482 = !DILocation(line: 201, column: 27, scope: !377)
!483 = !DILocation(line: 0, scope: !377)
!484 = !DILocation(line: 204, column: 11, scope: !377)
!485 = !DILocation(line: 204, column: 25, scope: !377)
!486 = !DILocation(line: 204, column: 23, scope: !377)
!487 = !DILocation(line: 206, column: 19, scope: !385)
!488 = !DILocation(line: 206, column: 21, scope: !385)
!489 = !DILocation(line: 206, column: 29, scope: !385)
!490 = !DILocation(line: 206, column: 32, scope: !385)
!491 = !DILocation(line: 206, column: 19, scope: !386)
!492 = !DILocation(line: 208, column: 33, scope: !384)
!493 = !DILocation(line: 208, column: 31, scope: !384)
!494 = !DILocation(line: 208, column: 27, scope: !384)
!495 = !DILocation(line: 208, column: 19, scope: !384)
!496 = !DILocation(line: 210, column: 41, scope: !383)
!497 = !DILocation(line: 211, column: 41, scope: !383)
!498 = !DILocation(line: 212, column: 31, scope: !383)
!499 = !DILocation(line: 213, column: 43, scope: !383)
!500 = !DILocation(line: 214, column: 41, scope: !383)
!501 = !DILocation(line: 215, column: 41, scope: !383)
!502 = !DILocation(line: 216, column: 41, scope: !383)
!503 = !DILocation(line: 217, column: 41, scope: !383)
!504 = !DILocation(line: 218, column: 41, scope: !383)
!505 = !DILocation(line: 221, column: 44, scope: !382)
!506 = !DILocation(line: 0, scope: !382)
!507 = !DILocation(line: 222, column: 41, scope: !508)
!508 = distinct !DILexicalBlock(scope: !382, file: !2, line: 222, column: 29)
!509 = !DILocation(line: 222, column: 31, scope: !508)
!510 = !DILocation(line: 222, column: 29, scope: !382)
!511 = !DILocation(line: 223, column: 27, scope: !508)
!512 = !DILocation(line: 224, column: 26, scope: !382)
!513 = !DILocation(line: 225, column: 29, scope: !382)
!514 = !DILocation(line: 226, column: 30, scope: !382)
!515 = !DILocation(line: 227, column: 39, scope: !516)
!516 = distinct !DILexicalBlock(scope: !382, file: !2, line: 227, column: 29)
!517 = !DILocation(line: 227, column: 29, scope: !516)
!518 = !DILocation(line: 227, column: 29, scope: !382)
!519 = !DILocation(line: 229, column: 30, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !2, line: 228, column: 27)
!521 = !DILocation(line: 230, column: 33, scope: !520)
!522 = !DILocation(line: 230, column: 35, scope: !520)
!523 = !DILocation(line: 230, column: 42, scope: !520)
!524 = !DILocation(line: 230, column: 40, scope: !520)
!525 = !DILocation(line: 231, column: 27, scope: !520)
!526 = !DILocation(line: 232, column: 23, scope: !383)
!527 = !DILocation(line: 0, scope: !384)
!528 = !DILocation(line: 233, column: 23, scope: !383)
!529 = !DILocation(line: 236, column: 37, scope: !530)
!530 = distinct !DILexicalBlock(scope: !383, file: !2, line: 236, column: 27)
!531 = !DILocation(line: 236, column: 34, scope: !530)
!532 = !DILocation(line: 236, column: 40, scope: !530)
!533 = !DILocation(line: 236, column: 43, scope: !530)
!534 = !DILocation(line: 236, column: 46, scope: !530)
!535 = !DILocation(line: 236, column: 27, scope: !383)
!536 = !DILocation(line: 237, column: 25, scope: !530)
!537 = !DILocation(line: 238, column: 29, scope: !383)
!538 = !DILocation(line: 238, column: 27, scope: !383)
!539 = !DILocation(line: 238, column: 23, scope: !383)
!540 = !DILocation(line: 242, column: 25, scope: !383)
!541 = !DILocation(line: 243, column: 34, scope: !542)
!542 = distinct !DILexicalBlock(scope: !383, file: !2, line: 243, column: 27)
!543 = !DILocation(line: 243, column: 31, scope: !542)
!544 = !DILocation(line: 243, column: 37, scope: !542)
!545 = !DILocation(line: 243, column: 40, scope: !542)
!546 = !DILocation(line: 243, column: 43, scope: !542)
!547 = !DILocation(line: 243, column: 27, scope: !383)
!548 = !DILocation(line: 244, column: 29, scope: !542)
!549 = !DILocation(line: 244, column: 31, scope: !542)
!550 = !DILocation(line: 244, column: 40, scope: !542)
!551 = !DILocation(line: 244, column: 38, scope: !542)
!552 = !DILocation(line: 244, column: 43, scope: !542)
!553 = !DILocation(line: 244, column: 35, scope: !542)
!554 = !DILocation(line: 244, column: 25, scope: !542)
!555 = !DILocation(line: 0, scope: !383)
!556 = !DILocation(line: 245, column: 34, scope: !557)
!557 = distinct !DILexicalBlock(scope: !383, file: !2, line: 245, column: 27)
!558 = !DILocation(line: 245, column: 31, scope: !557)
!559 = !DILocation(line: 245, column: 37, scope: !557)
!560 = !DILocation(line: 245, column: 40, scope: !557)
!561 = !DILocation(line: 245, column: 43, scope: !557)
!562 = !DILocation(line: 245, column: 27, scope: !383)
!563 = !DILocation(line: 246, column: 29, scope: !557)
!564 = !DILocation(line: 246, column: 31, scope: !557)
!565 = !DILocation(line: 246, column: 40, scope: !557)
!566 = !DILocation(line: 246, column: 38, scope: !557)
!567 = !DILocation(line: 246, column: 43, scope: !557)
!568 = !DILocation(line: 246, column: 35, scope: !557)
!569 = !DILocation(line: 246, column: 25, scope: !557)
!570 = !DILocation(line: 247, column: 23, scope: !383)
!571 = !DILocation(line: 250, column: 21, scope: !383)
!572 = !DILocation(line: 251, column: 31, scope: !383)
!573 = !DILocation(line: 251, column: 47, scope: !383)
!574 = !DILocation(line: 253, column: 17, scope: !384)
!575 = !DILocation(line: 254, column: 15, scope: !386)
!576 = distinct !{!576, !484, !577, !317, !318}
!577 = !DILocation(line: 255, column: 13, scope: !377)
!578 = !DILocation(line: 256, column: 15, scope: !377)
!579 = !DILocation(line: 257, column: 15, scope: !377)
!580 = !DILocation(line: 258, column: 20, scope: !581)
!581 = distinct !DILexicalBlock(scope: !377, file: !2, line: 258, column: 15)
!582 = !DILocation(line: 258, column: 15, scope: !377)
!583 = !DILocation(line: 259, column: 13, scope: !581)
!584 = !DILocation(line: 260, column: 9, scope: !378)
!585 = distinct !{!585, !480, !584, !317, !318}
!586 = !DILocation(line: 261, column: 5, scope: !378)
!587 = !DILocation(line: 264, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !379, file: !2, line: 263, column: 5)
!589 = !DILocation(line: 264, column: 19, scope: !588)
!590 = !DILocation(line: 266, column: 18, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !2, line: 265, column: 9)
!592 = !DILocation(line: 266, column: 27, scope: !591)
!593 = !DILocation(line: 266, column: 11, scope: !591)
!594 = !DILocation(line: 267, column: 15, scope: !591)
!595 = !DILocation(line: 268, column: 15, scope: !591)
!596 = !DILocation(line: 269, column: 20, scope: !597)
!597 = distinct !DILexicalBlock(scope: !591, file: !2, line: 269, column: 15)
!598 = !DILocation(line: 269, column: 15, scope: !591)
!599 = !DILocation(line: 270, column: 13, scope: !597)
!600 = distinct !{!600, !587, !601, !317, !318}
!601 = !DILocation(line: 271, column: 9, scope: !588)
!602 = !DILocation(line: 274, column: 7, scope: !603)
!603 = distinct !DILexicalBlock(scope: !360, file: !2, line: 274, column: 7)
!604 = !DILocation(line: 274, column: 7, scope: !360)
!605 = !DILocation(line: 275, column: 5, scope: !603)
!606 = !DILocation(line: 276, column: 3, scope: !360)
!607 = !DILocation(line: 277, column: 1, scope: !360)
!608 = !DISubprogram(name: "getenv", scope: !344, file: !344, line: 147, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!609 = !DISubroutineType(types: !610)
!610 = !{!174, !173}
!611 = !DISubprogram(name: "set_program_name", scope: !612, file: !612, line: 37, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!612 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!613 = !DISubprogram(name: "atexit", scope: !344, file: !344, line: 133, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!614 = !DISubroutineType(types: !615)
!615 = !{!187, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{null}
!619 = !DISubprogram(name: "version_etc", scope: !620, file: !620, line: 65, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!620 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!621 = !DISubroutineType(types: !622)
!622 = !{null, !232, !173, !173, !173, null}
!623 = distinct !DISubprogram(name: "isxdigit", scope: !624, file: !624, line: 280, type: !625, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !627)
!624 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_ctype.h", directory: "")
!625 = !DISubroutineType(types: !626)
!626 = !{!187, !187}
!627 = !{!628}
!628 = !DILocalVariable(name: "_c", arg: 1, scope: !623, file: !624, line: 280, type: !187)
!629 = !DILocation(line: 0, scope: !623)
!630 = !DILocation(line: 282, column: 10, scope: !623)
!631 = !DILocation(line: 282, column: 2, scope: !623)
!632 = distinct !DISubprogram(name: "hextobin", scope: !2, file: !2, line: 93, type: !633, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !635)
!633 = !DISubroutineType(types: !634)
!634 = !{!187, !239}
!635 = !{!636}
!636 = !DILocalVariable(name: "c", arg: 1, scope: !632, file: !2, line: 93, type: !239)
!637 = !DILocation(line: 0, scope: !632)
!638 = !DILocation(line: 95, column: 11, scope: !632)
!639 = !DILocation(line: 95, column: 3, scope: !632)
!640 = !DILocation(line: 97, column: 21, scope: !641)
!641 = distinct !DILexicalBlock(scope: !632, file: !2, line: 96, column: 5)
!642 = !DILocation(line: 97, column: 23, scope: !641)
!643 = !DILocation(line: 97, column: 14, scope: !641)
!644 = !DILocation(line: 98, column: 25, scope: !641)
!645 = !DILocation(line: 99, column: 25, scope: !641)
!646 = !DILocation(line: 100, column: 25, scope: !641)
!647 = !DILocation(line: 101, column: 25, scope: !641)
!648 = !DILocation(line: 102, column: 25, scope: !641)
!649 = !DILocation(line: 103, column: 25, scope: !641)
!650 = !DILocation(line: 0, scope: !641)
!651 = !DILocation(line: 105, column: 1, scope: !632)
!652 = !DISubprogram(name: "putc_unlocked", scope: !224, file: !224, line: 301, type: !653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!653 = !DISubroutineType(types: !654)
!654 = !{!187, !187, !232}
!655 = distinct !DISubprogram(name: "__isctype", scope: !624, file: !624, line: 164, type: !656, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !659)
!656 = !DISubroutineType(types: !657)
!657 = !{!658, !658, !359}
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !268, line: 72, baseType: !187)
!659 = !{!660, !661}
!660 = !DILocalVariable(name: "_c", arg: 1, scope: !655, file: !624, line: 164, type: !658)
!661 = !DILocalVariable(name: "_f", arg: 2, scope: !655, file: !624, line: 164, type: !359)
!662 = !DILocation(line: 0, scope: !655)
!663 = !DILocation(line: 169, column: 13, scope: !655)
!664 = !DILocation(line: 169, column: 17, scope: !655)
!665 = !DILocation(line: 169, column: 23, scope: !655)
!666 = !DILocation(line: 169, column: 9, scope: !655)
!667 = !DILocation(line: 170, column: 6, scope: !655)
!668 = !{!669, !669, i64 0}
!669 = !{!"int", !195, i64 0}
!670 = !DILocation(line: 170, column: 40, scope: !655)
!671 = !DILocation(line: 170, column: 4, scope: !655)
!672 = !DILocation(line: 170, column: 3, scope: !655)
!673 = !DILocation(line: 169, column: 2, scope: !655)
