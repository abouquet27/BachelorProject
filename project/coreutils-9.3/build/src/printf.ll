; ModuleID = 'coreutils-9.3/build/src/printf.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.infomap = type { ptr, ptr }
%struct._RuneLocale = type { [8 x i8], [32 x i8], ptr, ptr, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, ptr, i32, i32, ptr }
%struct._RuneRange = type { i32, ptr }
%union.__mbstate_t = type { i64, [120 x i8] }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Usage: %s FORMAT [ARGUMENT]...\0A  or:  %s OPTION\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [73 x i8] c"Print ARGUMENT(s) according to FORMAT, or execute according to OPTION:\0A\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [97 x i8] c"\0AFORMAT controls the output as in C printf.  Interpreted sequences are:\0A\0A  \\\22      double quote\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [229 x i8] c"  \\\\      backslash\0A  \\a      alert (BEL)\0A  \\b      backspace\0A  \\c      produce no further output\0A  \\e      escape\0A  \\f      form feed\0A  \\n      new line\0A  \\r      carriage return\0A  \\t      horizontal tab\0A  \\v      vertical tab\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [252 x i8] c"  \\NNN    byte with octal value NNN (1 to 3 digits)\0A  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\0A  \\uHHHH  Unicode (ISO/IEC 10646) character with hex value HHHH (4 digits)\0A  \\UHHHHHHHH  Unicode character with hex value HHHHHHHH (8 digits)\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [448 x i8] c"  %%      a single %\0A  %b      ARGUMENT as a string with '\\' escapes interpreted,\0A          except that octal escapes are of the form \\0 or \\0NNN\0A  %q      ARGUMENT is printed in a format that can be reused as shell input,\0A          escaping non-printable characters with the proposed POSIX $'' syntax.\0A\0Aand all C format specifications ending with one of diouxXfeEgGcs, with\0AARGUMENTs converted to proper type first.  Variable widths are handled.\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [7 x i8] c"printf\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !57
@exit_status = internal global i32 0, align 4, !dbg !62
@.str.12 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1, !dbg !88
@posixly_correct = internal global i8 0, align 1, !dbg !119
@.str.13 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !93
@.str.14 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !95
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !100
@Version = external global ptr, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !105
@.str.17 = private unnamed_addr constant [3 x i8] c"--\00", align 1, !dbg !107
@.str.18 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !112
@.str.19 = private unnamed_addr constant [53 x i8] c"warning: ignoring excess arguments, starting with %s\00", align 1, !dbg !114
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !122
@.str.21 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !128
@.str.22 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !130
@.str.23 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !132
@.str.24 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !137
@.str.25 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !139
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !144
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !146
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !148
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.20, ptr @.str.21 }, %struct.infomap { ptr @.str.22, ptr @.str.23 }, %struct.infomap { ptr @.str.24, ptr @.str.25 }, %struct.infomap { ptr @.str.26, ptr @.str.25 }, %struct.infomap { ptr @.str.27, ptr @.str.25 }, %struct.infomap { ptr @.str.28, ptr @.str.25 }, %struct.infomap zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !150
@.str.30 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !155
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !160
@.str.32 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !165
@.str.33 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !170
@.str.34 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !175
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !180
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !185
@.str.37 = private unnamed_addr constant [24 x i8] c"invalid field width: %s\00", align 1, !dbg !190
@.str.38 = private unnamed_addr constant [22 x i8] c"invalid precision: %s\00", align 1, !dbg !195
@.str.39 = private unnamed_addr constant [39 x i8] c"%.*s: invalid conversion specification\00", align 1, !dbg !197
@.str.40 = private unnamed_addr constant [73 x i8] c"warning: %s: character(s) following character constant have been ignored\00", align 1, !dbg !199
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !204
@.str.42 = private unnamed_addr constant [29 x i8] c"%s: expected a numeric value\00", align 1, !dbg !206
@.str.43 = private unnamed_addr constant [35 x i8] c"%s: value not completely converted\00", align 1, !dbg !211
@.str.44 = private unnamed_addr constant [3 x i8] c"jd\00", align 1, !dbg !216
@.str.45 = private unnamed_addr constant [2 x i8] c"L\00", align 1, !dbg !218
@.str.46 = private unnamed_addr constant [37 x i8] c"missing hexadecimal number in escape\00", align 1, !dbg !220
@.str.47 = private unnamed_addr constant [12 x i8] c"\22\\abcefnrtv\00", align 1, !dbg !225
@.str.48 = private unnamed_addr constant [41 x i8] c"invalid universal character name \\%c%0*x\00", align 1, !dbg !227
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !239 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !243, metadata !DIExpression()), !dbg !244
  %2 = icmp ne i32 %0, 0, !dbg !245
  br i1 %2, label %3, label %9, !dbg !247

3:                                                ; preds = %1
  br label %4, !dbg !248

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !249, !tbaa !251
  %6 = load ptr, ptr @program_name, align 8, !dbg !249, !tbaa !251
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !249
  br label %8, !dbg !249

8:                                                ; preds = %4
  br label %28, !dbg !249

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !255, !tbaa !251
  %11 = load ptr, ptr @program_name, align 8, !dbg !257, !tbaa !251
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10, ptr noundef %11), !dbg !258
  %13 = load ptr, ptr @__stdoutp, align 8, !dbg !259, !tbaa !251
  %14 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %13), !dbg !260
  %15 = load ptr, ptr @__stdoutp, align 8, !dbg !261, !tbaa !251
  %16 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %15), !dbg !262
  %17 = load ptr, ptr @__stdoutp, align 8, !dbg !263, !tbaa !251
  %18 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %17), !dbg !264
  %19 = load ptr, ptr @__stdoutp, align 8, !dbg !265, !tbaa !251
  %20 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %19), !dbg !266
  %21 = load ptr, ptr @__stdoutp, align 8, !dbg !267, !tbaa !251
  %22 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %21), !dbg !268
  %23 = load ptr, ptr @__stdoutp, align 8, !dbg !269, !tbaa !251
  %24 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %23), !dbg !270
  %25 = load ptr, ptr @__stdoutp, align 8, !dbg !271, !tbaa !251
  %26 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %25), !dbg !272
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef @.str.10), !dbg !273
  call void @emit_ancillary_info(ptr noundef @.str.10), !dbg !274
  br label %28

28:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #11, !dbg !275
  unreachable, !dbg !275
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !276 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !337 i32 @printf(ptr noundef, ...) #2

declare !dbg !340 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !343 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !347, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #12, !dbg !361
  call void @llvm.dbg.declare(metadata ptr %2, metadata !348, metadata !DIExpression()), !dbg !362
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !362
  call void @llvm.dbg.value(metadata ptr %0, metadata !355, metadata !DIExpression()), !dbg !360
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !363
  call void @llvm.dbg.value(metadata ptr %3, metadata !356, metadata !DIExpression()), !dbg !360
  br label %4, !dbg !364

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !360
  call void @llvm.dbg.value(metadata ptr %.0, metadata !356, metadata !DIExpression()), !dbg !360
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !365
  %6 = load ptr, ptr %5, align 8, !dbg !365, !tbaa !366
  %7 = icmp ne ptr %6, null, !dbg !368
  br i1 %7, label %8, label %14, !dbg !369

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !370
  %10 = load ptr, ptr %9, align 8, !dbg !370, !tbaa !366
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !370
  %12 = icmp eq i32 %11, 0, !dbg !370
  %13 = xor i1 %12, true, !dbg !371
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !360
  br i1 %15, label %16, label %18, !dbg !364

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !372
  call void @llvm.dbg.value(metadata ptr %17, metadata !356, metadata !DIExpression()), !dbg !360
  br label %4, !dbg !364, !llvm.loop !373

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !376
  %20 = load ptr, ptr %19, align 8, !dbg !376, !tbaa !378
  %21 = icmp ne ptr %20, null, !dbg !379
  br i1 %21, label %22, label %25, !dbg !380

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !381
  %24 = load ptr, ptr %23, align 8, !dbg !381, !tbaa !378
  call void @llvm.dbg.value(metadata ptr %24, metadata !355, metadata !DIExpression()), !dbg !360
  br label %25, !dbg !382

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !360
  call void @llvm.dbg.value(metadata ptr %.01, metadata !355, metadata !DIExpression()), !dbg !360
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.29, ptr noundef @.str.15, ptr noundef @.str.30), !dbg !383
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !384
  call void @llvm.dbg.value(metadata ptr %27, metadata !358, metadata !DIExpression()), !dbg !360
  %28 = icmp ne ptr %27, null, !dbg !385
  br i1 %28, label %29, label %35, !dbg !387

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.31, i64 noundef 3), !dbg !388
  %31 = icmp ne i32 %30, 0, !dbg !388
  br i1 %31, label %32, label %35, !dbg !389

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !390, !tbaa !251
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.32, ptr noundef %33), !dbg !392
  br label %35, !dbg !393

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.20), !dbg !394
  %37 = icmp eq i32 %36, 0, !dbg !394
  br i1 %37, label %38, label %39, !dbg !394

38:                                               ; preds = %35
  br label %40, !dbg !394

39:                                               ; preds = %35
  br label %40, !dbg !394

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.33, %38 ], [ %0, %39 ], !dbg !394
  call void @llvm.dbg.value(metadata ptr %41, metadata !359, metadata !DIExpression()), !dbg !360
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, ptr noundef @.str.30, ptr noundef %41), !dbg !395
  %43 = icmp eq ptr %.01, %0, !dbg !396
  %44 = zext i1 %43 to i64, !dbg !397
  %45 = select i1 %43, ptr @.str.36, ptr @.str.11, !dbg !397
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.35, ptr noundef %.01, ptr noundef %45), !dbg !398
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #12, !dbg !399
  ret void, !dbg !399
}

; Function Attrs: noreturn
declare !dbg !400 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !402 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !406 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !410 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !417 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !422, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata ptr %1, metadata !423, metadata !DIExpression()), !dbg !426
  %3 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !427
  %4 = load ptr, ptr %3, align 8, !dbg !427, !tbaa !251
  call void @set_program_name(ptr noundef %4), !dbg !428
  %5 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.11), !dbg !429
  %6 = call i32 @atexit(ptr noundef @close_stdout), !dbg !430
  store i32 0, ptr @exit_status, align 4, !dbg !431, !tbaa !432
  %7 = call ptr @getenv(ptr noundef @.str.12), !dbg !434
  %8 = icmp ne ptr %7, null, !dbg !435
  %9 = zext i1 %8 to i8, !dbg !436
  store i8 %9, ptr @posixly_correct, align 1, !dbg !436, !tbaa !437
  %10 = icmp eq i32 %0, 2, !dbg !439
  br i1 %10, label %11, label %26, !dbg !441

11:                                               ; preds = %2
  %12 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !442
  %13 = load ptr, ptr %12, align 8, !dbg !442, !tbaa !251
  %14 = call i32 @strcmp(ptr noundef %13, ptr noundef @.str.13), !dbg !442
  %15 = icmp eq i32 %14, 0, !dbg !442
  br i1 %15, label %16, label %17, !dbg !445

16:                                               ; preds = %11
  call void @usage(i32 noundef 0) #11, !dbg !446
  unreachable, !dbg !446

17:                                               ; preds = %11
  %18 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !447
  %19 = load ptr, ptr %18, align 8, !dbg !447, !tbaa !251
  %20 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str.14), !dbg !447
  %21 = icmp eq i32 %20, 0, !dbg !447
  br i1 %21, label %22, label %25, !dbg !449

22:                                               ; preds = %17
  %23 = load ptr, ptr @__stdoutp, align 8, !dbg !450, !tbaa !251
  %24 = load ptr, ptr @Version, align 8, !dbg !452, !tbaa !251
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef @.str.10, ptr noundef @.str.15, ptr noundef %24, ptr noundef @.str.16, ptr noundef null), !dbg !453
  br label %63, !dbg !454

25:                                               ; preds = %17
  br label %26, !dbg !455

26:                                               ; preds = %25, %2
  %27 = icmp slt i32 1, %0, !dbg !456
  br i1 %27, label %28, label %36, !dbg !458

28:                                               ; preds = %26
  %29 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !459
  %30 = load ptr, ptr %29, align 8, !dbg !459, !tbaa !251
  %31 = call i32 @strcmp(ptr noundef %30, ptr noundef @.str.17), !dbg !459
  %32 = icmp eq i32 %31, 0, !dbg !459
  br i1 %32, label %33, label %36, !dbg !460

33:                                               ; preds = %28
  %34 = add nsw i32 %0, -1, !dbg !461
  call void @llvm.dbg.value(metadata i32 %34, metadata !422, metadata !DIExpression()), !dbg !426
  %35 = getelementptr inbounds ptr, ptr %1, i32 1, !dbg !463
  call void @llvm.dbg.value(metadata ptr %35, metadata !423, metadata !DIExpression()), !dbg !426
  br label %36, !dbg !464

36:                                               ; preds = %33, %28, %26
  %.02 = phi ptr [ %35, %33 ], [ %1, %28 ], [ %1, %26 ]
  %.01 = phi i32 [ %34, %33 ], [ %0, %28 ], [ %0, %26 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !422, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata ptr %.02, metadata !423, metadata !DIExpression()), !dbg !426
  %37 = icmp sle i32 %.01, 1, !dbg !465
  br i1 %37, label %38, label %39, !dbg !467

38:                                               ; preds = %36
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.18), !dbg !468
  call void @usage(i32 noundef 1) #11, !dbg !470
  unreachable, !dbg !470

39:                                               ; preds = %36
  %40 = getelementptr inbounds ptr, ptr %.02, i64 1, !dbg !471
  %41 = load ptr, ptr %40, align 8, !dbg !471, !tbaa !251
  call void @llvm.dbg.value(metadata ptr %41, metadata !424, metadata !DIExpression()), !dbg !426
  %42 = sub nsw i32 %.01, 2, !dbg !472
  call void @llvm.dbg.value(metadata i32 %42, metadata !422, metadata !DIExpression()), !dbg !426
  %43 = getelementptr inbounds ptr, ptr %.02, i64 2, !dbg !473
  call void @llvm.dbg.value(metadata ptr %43, metadata !423, metadata !DIExpression()), !dbg !426
  br label %44, !dbg !474

44:                                               ; preds = %53, %39
  %.13 = phi ptr [ %43, %39 ], [ %48, %53 ], !dbg !426
  %.1 = phi i32 [ %42, %39 ], [ %46, %53 ], !dbg !426
  call void @llvm.dbg.value(metadata i32 %.1, metadata !422, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata ptr %.13, metadata !423, metadata !DIExpression()), !dbg !426
  %45 = call i32 @print_formatted(ptr noundef %41, i32 noundef %.1, ptr noundef %.13), !dbg !475
  call void @llvm.dbg.value(metadata i32 %45, metadata !425, metadata !DIExpression()), !dbg !426
  %46 = sub nsw i32 %.1, %45, !dbg !477
  call void @llvm.dbg.value(metadata i32 %46, metadata !422, metadata !DIExpression()), !dbg !426
  %47 = sext i32 %45 to i64, !dbg !478
  %48 = getelementptr inbounds ptr, ptr %.13, i64 %47, !dbg !478
  call void @llvm.dbg.value(metadata ptr %48, metadata !423, metadata !DIExpression()), !dbg !426
  br label %49, !dbg !479

49:                                               ; preds = %44
  %50 = icmp sgt i32 %45, 0, !dbg !480
  br i1 %50, label %51, label %53, !dbg !481

51:                                               ; preds = %49
  %52 = icmp sgt i32 %46, 0, !dbg !482
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i1 [ false, %49 ], [ %52, %51 ], !dbg !426
  br i1 %54, label %44, label %55, !dbg !479, !llvm.loop !483

55:                                               ; preds = %53
  %56 = icmp sgt i32 %46, 0, !dbg !485
  br i1 %56, label %57, label %61, !dbg !487

57:                                               ; preds = %55
  %58 = getelementptr inbounds ptr, ptr %48, i64 0, !dbg !488
  %59 = load ptr, ptr %58, align 8, !dbg !488, !tbaa !251
  %60 = call ptr @quote(ptr noundef %59), !dbg !489
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.19, ptr noundef %60), !dbg !490
  br label %61, !dbg !490

61:                                               ; preds = %57, %55
  %62 = load i32, ptr @exit_status, align 4, !dbg !491, !tbaa !432
  br label %63, !dbg !492

63:                                               ; preds = %61, %22
  %.0 = phi i32 [ 0, %22 ], [ %62, %61 ], !dbg !426
  ret i32 %.0, !dbg !493
}

declare !dbg !494 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !496 i32 @atexit(ptr noundef) #2

declare !dbg !502 ptr @getenv(ptr noundef) #2

declare !dbg !505 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !509 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_formatted(ptr noundef %0, i32 noundef %1, ptr noundef %2) #7 !dbg !513 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !517, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %1, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %2, metadata !519, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %1, metadata !520, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 0, metadata !525, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 0, metadata !527, metadata !DIExpression()), !dbg !554
  call void @llvm.lifetime.start.p0(i64 256, ptr %4) #12, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %4, metadata !528, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %0, metadata !521, metadata !DIExpression()), !dbg !554
  br label %5, !dbg !557

5:                                                ; preds = %231, %3
  %.028 = phi i32 [ 0, %3 ], [ %.331, %231 ], !dbg !558
  %.019 = phi ptr [ %0, %3 ], [ %232, %231 ], !dbg !559
  %.07 = phi ptr [ %2, %3 ], [ %.916, %231 ]
  %.01 = phi i32 [ %1, %3 ], [ %.9, %231 ]
  %.0 = phi i32 [ 0, %3 ], [ %.5, %231 ], !dbg !560
  call void @llvm.dbg.value(metadata i32 %.0, metadata !527, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %.01, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.07, metadata !519, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.019, metadata !521, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %.028, metadata !525, metadata !DIExpression()), !dbg !554
  %6 = load i8, ptr %.019, align 1, !dbg !561, !tbaa !562
  %7 = icmp ne i8 %6, 0, !dbg !563
  br i1 %7, label %8, label %233, !dbg !563

8:                                                ; preds = %5
  %9 = load i8, ptr %.019, align 1, !dbg !564, !tbaa !562
  %10 = sext i8 %9 to i32, !dbg !564
  switch i32 %10, label %225 [
    i32 37, label %11
    i32 92, label %221
  ], !dbg !565

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %.019, i32 1, !dbg !566
  call void @llvm.dbg.value(metadata ptr %12, metadata !521, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.019, metadata !522, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i64 1, metadata !523, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i8 0, metadata !526, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i8 0, metadata !524, metadata !DIExpression()), !dbg !554
  %13 = load i8, ptr %12, align 1, !dbg !567, !tbaa !562
  %14 = sext i8 %13 to i32, !dbg !567
  %15 = icmp eq i32 %14, 37, !dbg !569
  br i1 %15, label %16, label %19, !dbg !570

16:                                               ; preds = %11
  %17 = load ptr, ptr @__stdoutp, align 8, !dbg !571, !tbaa !251
  %18 = call i32 @putc_unlocked(i32 noundef 37, ptr noundef %17), !dbg !571
  br label %230, !dbg !573

19:                                               ; preds = %11
  %20 = load i8, ptr %12, align 1, !dbg !574, !tbaa !562
  %21 = sext i8 %20 to i32, !dbg !574
  %22 = icmp eq i32 %21, 98, !dbg !576
  br i1 %22, label %23, label %30, !dbg !577

23:                                               ; preds = %19
  %24 = icmp sgt i32 %.01, 0, !dbg !578
  br i1 %24, label %25, label %29, !dbg !581

25:                                               ; preds = %23
  %26 = load ptr, ptr %.07, align 8, !dbg !582, !tbaa !251
  call void @print_esc_string(ptr noundef %26), !dbg !584
  %27 = getelementptr inbounds ptr, ptr %.07, i32 1, !dbg !585
  call void @llvm.dbg.value(metadata ptr %27, metadata !519, metadata !DIExpression()), !dbg !554
  %28 = add nsw i32 %.01, -1, !dbg !586
  call void @llvm.dbg.value(metadata i32 %28, metadata !518, metadata !DIExpression()), !dbg !554
  br label %29, !dbg !587

29:                                               ; preds = %25, %23
  %.18 = phi ptr [ %27, %25 ], [ %.07, %23 ]
  %.12 = phi i32 [ %28, %25 ], [ %.01, %23 ]
  call void @llvm.dbg.value(metadata i32 %.12, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.18, metadata !519, metadata !DIExpression()), !dbg !554
  br label %230, !dbg !588

30:                                               ; preds = %19
  %31 = load i8, ptr %12, align 1, !dbg !589, !tbaa !562
  %32 = sext i8 %31 to i32, !dbg !589
  %33 = icmp eq i32 %32, 113, !dbg !591
  br i1 %33, label %34, label %44, !dbg !592

34:                                               ; preds = %30
  %35 = icmp sgt i32 %.01, 0, !dbg !593
  br i1 %35, label %36, label %43, !dbg !596

36:                                               ; preds = %34
  %37 = load ptr, ptr %.07, align 8, !dbg !597, !tbaa !251
  %38 = call ptr @quotearg_style(i32 noundef 3, ptr noundef %37), !dbg !599
  %39 = load ptr, ptr @__stdoutp, align 8, !dbg !600, !tbaa !251
  %40 = call i32 @"\01_fputs"(ptr noundef %38, ptr noundef %39), !dbg !601
  %41 = getelementptr inbounds ptr, ptr %.07, i32 1, !dbg !602
  call void @llvm.dbg.value(metadata ptr %41, metadata !519, metadata !DIExpression()), !dbg !554
  %42 = add nsw i32 %.01, -1, !dbg !603
  call void @llvm.dbg.value(metadata i32 %42, metadata !518, metadata !DIExpression()), !dbg !554
  br label %43, !dbg !604

43:                                               ; preds = %36, %34
  %.29 = phi ptr [ %41, %36 ], [ %.07, %34 ]
  %.23 = phi i32 [ %42, %36 ], [ %.01, %34 ]
  call void @llvm.dbg.value(metadata i32 %.23, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.29, metadata !519, metadata !DIExpression()), !dbg !554
  br label %230, !dbg !605

44:                                               ; preds = %30
  %45 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 0, !dbg !606
  call void @llvm.memset.p0.i64(ptr align 16 %45, i8 0, i64 256, i1 false), !dbg !606
  %46 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 88, !dbg !607
  store i8 1, ptr %46, align 8, !dbg !608, !tbaa !562
  %47 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 120, !dbg !609
  store i8 1, ptr %47, align 8, !dbg !610, !tbaa !562
  %48 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 117, !dbg !611
  store i8 1, ptr %48, align 1, !dbg !612, !tbaa !562
  %49 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 115, !dbg !613
  store i8 1, ptr %49, align 1, !dbg !614, !tbaa !562
  %50 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 111, !dbg !615
  store i8 1, ptr %50, align 1, !dbg !616, !tbaa !562
  %51 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 105, !dbg !617
  store i8 1, ptr %51, align 1, !dbg !618, !tbaa !562
  %52 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 71, !dbg !619
  store i8 1, ptr %52, align 1, !dbg !620, !tbaa !562
  %53 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 103, !dbg !621
  store i8 1, ptr %53, align 1, !dbg !622, !tbaa !562
  %54 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 70, !dbg !623
  store i8 1, ptr %54, align 2, !dbg !624, !tbaa !562
  %55 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 102, !dbg !625
  store i8 1, ptr %55, align 2, !dbg !626, !tbaa !562
  %56 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 69, !dbg !627
  store i8 1, ptr %56, align 1, !dbg !628, !tbaa !562
  %57 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 101, !dbg !629
  store i8 1, ptr %57, align 1, !dbg !630, !tbaa !562
  %58 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 100, !dbg !631
  store i8 1, ptr %58, align 4, !dbg !632, !tbaa !562
  %59 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 99, !dbg !633
  store i8 1, ptr %59, align 1, !dbg !634, !tbaa !562
  %60 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 65, !dbg !635
  store i8 1, ptr %60, align 1, !dbg !636, !tbaa !562
  %61 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 97, !dbg !637
  store i8 1, ptr %61, align 1, !dbg !638, !tbaa !562
  br label %62, !dbg !639

62:                                               ; preds = %87, %44
  %.032 = phi i64 [ 1, %44 ], [ %89, %87 ], !dbg !640
  %.120 = phi ptr [ %12, %44 ], [ %88, %87 ], !dbg !640
  call void @llvm.dbg.value(metadata ptr %.120, metadata !521, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i64 %.032, metadata !523, metadata !DIExpression()), !dbg !554
  %63 = load i8, ptr %.120, align 1, !dbg !641, !tbaa !562
  %64 = sext i8 %63 to i32, !dbg !641
  switch i32 %64, label %85 [
    i32 39, label %65
    i32 45, label %75
    i32 43, label %75
    i32 32, label %75
    i32 35, label %76
    i32 48, label %82
  ], !dbg !644

65:                                               ; preds = %62
  %66 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 88, !dbg !645
  store i8 0, ptr %66, align 8, !dbg !647, !tbaa !562
  %67 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 120, !dbg !648
  store i8 0, ptr %67, align 8, !dbg !649, !tbaa !562
  %68 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 115, !dbg !650
  store i8 0, ptr %68, align 1, !dbg !651, !tbaa !562
  %69 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 111, !dbg !652
  store i8 0, ptr %69, align 1, !dbg !653, !tbaa !562
  %70 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 69, !dbg !654
  store i8 0, ptr %70, align 1, !dbg !655, !tbaa !562
  %71 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 101, !dbg !656
  store i8 0, ptr %71, align 1, !dbg !657, !tbaa !562
  %72 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 99, !dbg !658
  store i8 0, ptr %72, align 1, !dbg !659, !tbaa !562
  %73 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 65, !dbg !660
  store i8 0, ptr %73, align 1, !dbg !661, !tbaa !562
  %74 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 97, !dbg !662
  store i8 0, ptr %74, align 1, !dbg !663, !tbaa !562
  br label %86, !dbg !664

75:                                               ; preds = %62, %62, %62
  br label %86, !dbg !665

76:                                               ; preds = %62
  %77 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 117, !dbg !666
  store i8 0, ptr %77, align 1, !dbg !667, !tbaa !562
  %78 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 115, !dbg !668
  store i8 0, ptr %78, align 1, !dbg !669, !tbaa !562
  %79 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 105, !dbg !670
  store i8 0, ptr %79, align 1, !dbg !671, !tbaa !562
  %80 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 100, !dbg !672
  store i8 0, ptr %80, align 4, !dbg !673, !tbaa !562
  %81 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 99, !dbg !674
  store i8 0, ptr %81, align 1, !dbg !675, !tbaa !562
  br label %86, !dbg !676

82:                                               ; preds = %62
  %83 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 115, !dbg !677
  store i8 0, ptr %83, align 1, !dbg !678, !tbaa !562
  %84 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 99, !dbg !679
  store i8 0, ptr %84, align 1, !dbg !680, !tbaa !562
  br label %86, !dbg !681

85:                                               ; preds = %62
  br label %90, !dbg !682

86:                                               ; preds = %82, %76, %75, %65
  br label %87, !dbg !683

87:                                               ; preds = %86
  %88 = getelementptr inbounds i8, ptr %.120, i32 1, !dbg !684
  call void @llvm.dbg.value(metadata ptr %88, metadata !521, metadata !DIExpression()), !dbg !554
  %89 = add i64 %.032, 1, !dbg !685
  call void @llvm.dbg.value(metadata i64 %89, metadata !523, metadata !DIExpression()), !dbg !554
  br label %62, !dbg !686, !llvm.loop !687

90:                                               ; preds = %85
  call void @llvm.dbg.label(metadata !553), !dbg !690
  %91 = load i8, ptr %.120, align 1, !dbg !691, !tbaa !562
  %92 = sext i8 %91 to i32, !dbg !691
  %93 = icmp eq i32 %92, 42, !dbg !692
  br i1 %93, label %94, label %114, !dbg !693

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %.120, i32 1, !dbg !694
  call void @llvm.dbg.value(metadata ptr %95, metadata !521, metadata !DIExpression()), !dbg !554
  %96 = add i64 %.032, 1, !dbg !695
  call void @llvm.dbg.value(metadata i64 %96, metadata !523, metadata !DIExpression()), !dbg !554
  %97 = icmp sgt i32 %.01, 0, !dbg !696
  br i1 %97, label %98, label %112, !dbg !697

98:                                               ; preds = %94
  %99 = load ptr, ptr %.07, align 8, !dbg !698, !tbaa !251
  %100 = call i64 @vstrtoimax(ptr noundef %99), !dbg !699
  call void @llvm.dbg.value(metadata i64 %100, metadata !532, metadata !DIExpression()), !dbg !700
  %101 = icmp sle i64 -2147483648, %100, !dbg !701
  br i1 %101, label %102, label %106, !dbg !703

102:                                              ; preds = %98
  %103 = icmp sle i64 %100, 2147483647, !dbg !704
  br i1 %103, label %104, label %106, !dbg !705

104:                                              ; preds = %102
  %105 = trunc i64 %100 to i32, !dbg !706
  call void @llvm.dbg.value(metadata i32 %105, metadata !525, metadata !DIExpression()), !dbg !554
  br label %109, !dbg !707

106:                                              ; preds = %102, %98
  %107 = load ptr, ptr %.07, align 8, !dbg !708, !tbaa !251
  %108 = call ptr @quote(ptr noundef %107), !dbg !708
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.37, ptr noundef %108), !dbg !708
  unreachable, !dbg !708

109:                                              ; preds = %104
  %110 = getelementptr inbounds ptr, ptr %.07, i32 1, !dbg !709
  call void @llvm.dbg.value(metadata ptr %110, metadata !519, metadata !DIExpression()), !dbg !554
  %111 = add nsw i32 %.01, -1, !dbg !710
  call void @llvm.dbg.value(metadata i32 %111, metadata !518, metadata !DIExpression()), !dbg !554
  br label %113, !dbg !711

112:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i32 0, metadata !525, metadata !DIExpression()), !dbg !554
  br label %113

113:                                              ; preds = %112, %109
  %.129 = phi i32 [ %105, %109 ], [ 0, %112 ], !dbg !712
  %.310 = phi ptr [ %110, %109 ], [ %.07, %112 ]
  %.34 = phi i32 [ %111, %109 ], [ %.01, %112 ]
  call void @llvm.dbg.value(metadata i32 %.34, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.310, metadata !519, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %.129, metadata !525, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i8 1, metadata !524, metadata !DIExpression()), !dbg !554
  br label %124, !dbg !713

114:                                              ; preds = %90
  br label %115, !dbg !714

115:                                              ; preds = %120, %114
  %.133 = phi i64 [ %.032, %114 ], [ %122, %120 ], !dbg !640
  %.221 = phi ptr [ %.120, %114 ], [ %121, %120 ], !dbg !640
  call void @llvm.dbg.value(metadata ptr %.221, metadata !521, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i64 %.133, metadata !523, metadata !DIExpression()), !dbg !554
  %116 = load i8, ptr %.221, align 1, !dbg !715, !tbaa !562
  %117 = sext i8 %116 to i32, !dbg !715
  %118 = sub i32 %117, 48, !dbg !715
  %119 = icmp ule i32 %118, 9, !dbg !715
  br i1 %119, label %120, label %123, !dbg !714

120:                                              ; preds = %115
  %121 = getelementptr inbounds i8, ptr %.221, i32 1, !dbg !716
  call void @llvm.dbg.value(metadata ptr %121, metadata !521, metadata !DIExpression()), !dbg !554
  %122 = add i64 %.133, 1, !dbg !718
  call void @llvm.dbg.value(metadata i64 %122, metadata !523, metadata !DIExpression()), !dbg !554
  br label %115, !dbg !714, !llvm.loop !719

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123, %113
  %.038 = phi i8 [ 1, %113 ], [ 0, %123 ], !dbg !640
  %.234 = phi i64 [ %96, %113 ], [ %.133, %123 ], !dbg !640
  %.230 = phi i32 [ %.129, %113 ], [ %.028, %123 ], !dbg !554
  %.322 = phi ptr [ %95, %113 ], [ %.221, %123 ], !dbg !640
  %.411 = phi ptr [ %.310, %113 ], [ %.07, %123 ]
  %.45 = phi i32 [ %.34, %113 ], [ %.01, %123 ]
  call void @llvm.dbg.value(metadata i32 %.45, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.411, metadata !519, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.322, metadata !521, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %.230, metadata !525, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i64 %.234, metadata !523, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i8 %.038, metadata !524, metadata !DIExpression()), !dbg !554
  %125 = load i8, ptr %.322, align 1, !dbg !721, !tbaa !562
  %126 = sext i8 %125 to i32, !dbg !721
  %127 = icmp eq i32 %126, 46, !dbg !722
  br i1 %127, label %128, label %168, !dbg !723

128:                                              ; preds = %124
  %129 = getelementptr inbounds i8, ptr %.322, i32 1, !dbg !724
  call void @llvm.dbg.value(metadata ptr %129, metadata !521, metadata !DIExpression()), !dbg !554
  %130 = add i64 %.234, 1, !dbg !725
  call void @llvm.dbg.value(metadata i64 %130, metadata !523, metadata !DIExpression()), !dbg !554
  %131 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 99, !dbg !726
  store i8 0, ptr %131, align 1, !dbg !727, !tbaa !562
  %132 = load i8, ptr %129, align 1, !dbg !728, !tbaa !562
  %133 = sext i8 %132 to i32, !dbg !728
  %134 = icmp eq i32 %133, 42, !dbg !729
  br i1 %134, label %135, label %157, !dbg !730

135:                                              ; preds = %128
  %136 = getelementptr inbounds i8, ptr %129, i32 1, !dbg !731
  call void @llvm.dbg.value(metadata ptr %136, metadata !521, metadata !DIExpression()), !dbg !554
  %137 = add i64 %130, 1, !dbg !732
  call void @llvm.dbg.value(metadata i64 %137, metadata !523, metadata !DIExpression()), !dbg !554
  %138 = icmp sgt i32 %.45, 0, !dbg !733
  br i1 %138, label %139, label %155, !dbg !734

139:                                              ; preds = %135
  %140 = load ptr, ptr %.411, align 8, !dbg !735, !tbaa !251
  %141 = call i64 @vstrtoimax(ptr noundef %140), !dbg !736
  call void @llvm.dbg.value(metadata i64 %141, metadata !544, metadata !DIExpression()), !dbg !737
  %142 = icmp slt i64 %141, 0, !dbg !738
  br i1 %142, label %143, label %144, !dbg !740

143:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i32 -1, metadata !527, metadata !DIExpression()), !dbg !554
  br label %152, !dbg !741

144:                                              ; preds = %139
  %145 = icmp slt i64 2147483647, %141, !dbg !743
  br i1 %145, label %146, label %149, !dbg !745

146:                                              ; preds = %144
  %147 = load ptr, ptr %.411, align 8, !dbg !746, !tbaa !251
  %148 = call ptr @quote(ptr noundef %147), !dbg !746
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.38, ptr noundef %148), !dbg !746
  unreachable, !dbg !746

149:                                              ; preds = %144
  %150 = trunc i64 %141 to i32, !dbg !747
  call void @llvm.dbg.value(metadata i32 %150, metadata !527, metadata !DIExpression()), !dbg !554
  br label %151

151:                                              ; preds = %149
  br label %152

152:                                              ; preds = %151, %143
  %.1 = phi i32 [ -1, %143 ], [ %150, %151 ], !dbg !748
  call void @llvm.dbg.value(metadata i32 %.1, metadata !527, metadata !DIExpression()), !dbg !554
  %153 = getelementptr inbounds ptr, ptr %.411, i32 1, !dbg !749
  call void @llvm.dbg.value(metadata ptr %153, metadata !519, metadata !DIExpression()), !dbg !554
  %154 = add nsw i32 %.45, -1, !dbg !750
  call void @llvm.dbg.value(metadata i32 %154, metadata !518, metadata !DIExpression()), !dbg !554
  br label %156, !dbg !751

155:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i32 0, metadata !527, metadata !DIExpression()), !dbg !554
  br label %156

156:                                              ; preds = %155, %152
  %.512 = phi ptr [ %153, %152 ], [ %.411, %155 ], !dbg !640
  %.56 = phi i32 [ %154, %152 ], [ %.45, %155 ], !dbg !640
  %.2 = phi i32 [ %.1, %152 ], [ 0, %155 ], !dbg !752
  call void @llvm.dbg.value(metadata i32 %.2, metadata !527, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %.56, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.512, metadata !519, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i8 1, metadata !526, metadata !DIExpression()), !dbg !554
  br label %167, !dbg !753

157:                                              ; preds = %128
  br label %158, !dbg !754

158:                                              ; preds = %163, %157
  %.335 = phi i64 [ %130, %157 ], [ %165, %163 ], !dbg !755
  %.423 = phi ptr [ %129, %157 ], [ %164, %163 ], !dbg !755
  call void @llvm.dbg.value(metadata ptr %.423, metadata !521, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i64 %.335, metadata !523, metadata !DIExpression()), !dbg !554
  %159 = load i8, ptr %.423, align 1, !dbg !756, !tbaa !562
  %160 = sext i8 %159 to i32, !dbg !756
  %161 = sub i32 %160, 48, !dbg !756
  %162 = icmp ule i32 %161, 9, !dbg !756
  br i1 %162, label %163, label %166, !dbg !754

163:                                              ; preds = %158
  %164 = getelementptr inbounds i8, ptr %.423, i32 1, !dbg !757
  call void @llvm.dbg.value(metadata ptr %164, metadata !521, metadata !DIExpression()), !dbg !554
  %165 = add i64 %.335, 1, !dbg !759
  call void @llvm.dbg.value(metadata i64 %165, metadata !523, metadata !DIExpression()), !dbg !554
  br label %158, !dbg !754, !llvm.loop !760

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %156
  %.436 = phi i64 [ %137, %156 ], [ %.335, %166 ], !dbg !755
  %.524 = phi ptr [ %136, %156 ], [ %.423, %166 ], !dbg !755
  %.017 = phi i8 [ 1, %156 ], [ 0, %166 ], !dbg !640
  %.613 = phi ptr [ %.512, %156 ], [ %.411, %166 ], !dbg !640
  %.6 = phi i32 [ %.56, %156 ], [ %.45, %166 ], !dbg !640
  %.3 = phi i32 [ %.2, %156 ], [ %.0, %166 ], !dbg !554
  call void @llvm.dbg.value(metadata i32 %.3, metadata !527, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %.6, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.613, metadata !519, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i8 %.017, metadata !526, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.524, metadata !521, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i64 %.436, metadata !523, metadata !DIExpression()), !dbg !554
  br label %168, !dbg !762

168:                                              ; preds = %167, %124
  %.537 = phi i64 [ %.436, %167 ], [ %.234, %124 ], !dbg !640
  %.625 = phi ptr [ %.524, %167 ], [ %.322, %124 ], !dbg !640
  %.118 = phi i8 [ %.017, %167 ], [ 0, %124 ], !dbg !640
  %.714 = phi ptr [ %.613, %167 ], [ %.411, %124 ], !dbg !640
  %.7 = phi i32 [ %.6, %167 ], [ %.45, %124 ], !dbg !640
  %.4 = phi i32 [ %.3, %167 ], [ %.0, %124 ], !dbg !554
  call void @llvm.dbg.value(metadata i32 %.4, metadata !527, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %.7, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.714, metadata !519, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i8 %.118, metadata !526, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.625, metadata !521, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i64 %.537, metadata !523, metadata !DIExpression()), !dbg !554
  br label %169, !dbg !763

169:                                              ; preds = %195, %168
  %.726 = phi ptr [ %.625, %168 ], [ %196, %195 ], !dbg !640
  call void @llvm.dbg.value(metadata ptr %.726, metadata !521, metadata !DIExpression()), !dbg !554
  %170 = load i8, ptr %.726, align 1, !dbg !764, !tbaa !562
  %171 = sext i8 %170 to i32, !dbg !764
  %172 = icmp eq i32 %171, 108, !dbg !765
  br i1 %172, label %193, label %173, !dbg !766

173:                                              ; preds = %169
  %174 = load i8, ptr %.726, align 1, !dbg !767, !tbaa !562
  %175 = sext i8 %174 to i32, !dbg !767
  %176 = icmp eq i32 %175, 76, !dbg !768
  br i1 %176, label %193, label %177, !dbg !769

177:                                              ; preds = %173
  %178 = load i8, ptr %.726, align 1, !dbg !770, !tbaa !562
  %179 = sext i8 %178 to i32, !dbg !770
  %180 = icmp eq i32 %179, 104, !dbg !771
  br i1 %180, label %193, label %181, !dbg !772

181:                                              ; preds = %177
  %182 = load i8, ptr %.726, align 1, !dbg !773, !tbaa !562
  %183 = sext i8 %182 to i32, !dbg !773
  %184 = icmp eq i32 %183, 106, !dbg !774
  br i1 %184, label %193, label %185, !dbg !775

185:                                              ; preds = %181
  %186 = load i8, ptr %.726, align 1, !dbg !776, !tbaa !562
  %187 = sext i8 %186 to i32, !dbg !776
  %188 = icmp eq i32 %187, 116, !dbg !777
  br i1 %188, label %193, label %189, !dbg !778

189:                                              ; preds = %185
  %190 = load i8, ptr %.726, align 1, !dbg !779, !tbaa !562
  %191 = sext i8 %190 to i32, !dbg !779
  %192 = icmp eq i32 %191, 122, !dbg !780
  br label %193, !dbg !778

193:                                              ; preds = %189, %185, %181, %177, %173, %169
  %194 = phi i1 [ true, %185 ], [ true, %181 ], [ true, %177 ], [ true, %173 ], [ true, %169 ], [ %192, %189 ]
  br i1 %194, label %195, label %197, !dbg !763

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %.726, i32 1, !dbg !781
  call void @llvm.dbg.value(metadata ptr %196, metadata !521, metadata !DIExpression()), !dbg !554
  br label %169, !dbg !763, !llvm.loop !782

197:                                              ; preds = %193
  %198 = load i8, ptr %.726, align 1, !dbg !784, !tbaa !562
  call void @llvm.dbg.value(metadata i8 %198, metadata !551, metadata !DIExpression()), !dbg !785
  %199 = zext i8 %198 to i64, !dbg !786
  %200 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 %199, !dbg !786
  %201 = load i8, ptr %200, align 1, !dbg !786, !tbaa !562
  %202 = icmp ne i8 %201, 0, !dbg !786
  br i1 %202, label %209, label %203, !dbg !788

203:                                              ; preds = %197
  %204 = getelementptr inbounds i8, ptr %.726, i64 1, !dbg !789
  %205 = ptrtoint ptr %204 to i64, !dbg !789
  %206 = ptrtoint ptr %.019 to i64, !dbg !789
  %207 = sub i64 %205, %206, !dbg !789
  %208 = trunc i64 %207 to i32, !dbg !789
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.39, i32 noundef %208, ptr noundef %.019), !dbg !789
  unreachable, !dbg !789

209:                                              ; preds = %197
  %210 = load i8, ptr %.726, align 1, !dbg !790, !tbaa !562
  %211 = trunc i8 %.038 to i1, !dbg !791
  %212 = trunc i8 %.118 to i1, !dbg !792
  %213 = icmp sle i32 %.7, 0, !dbg !793
  br i1 %213, label %214, label %215, !dbg !794

214:                                              ; preds = %209
  br label %219, !dbg !794

215:                                              ; preds = %209
  %216 = add nsw i32 %.7, -1, !dbg !795
  call void @llvm.dbg.value(metadata i32 %216, metadata !518, metadata !DIExpression()), !dbg !554
  %217 = getelementptr inbounds ptr, ptr %.714, i32 1, !dbg !796
  call void @llvm.dbg.value(metadata ptr %217, metadata !519, metadata !DIExpression()), !dbg !554
  %218 = load ptr, ptr %.714, align 8, !dbg !797, !tbaa !251
  br label %219, !dbg !794

219:                                              ; preds = %215, %214
  %.815 = phi ptr [ %.714, %214 ], [ %217, %215 ], !dbg !640
  %.8 = phi i32 [ %.7, %214 ], [ %216, %215 ], !dbg !640
  %220 = phi ptr [ @.str.11, %214 ], [ %218, %215 ], !dbg !794
  call void @llvm.dbg.value(metadata i32 %.8, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.815, metadata !519, metadata !DIExpression()), !dbg !554
  call void @print_direc(ptr noundef %.019, i64 noundef %.537, i8 noundef signext %210, i1 noundef zeroext %211, i32 noundef %.230, i1 noundef zeroext %212, i32 noundef %.4, ptr noundef %220), !dbg !798
  br label %230, !dbg !799

221:                                              ; preds = %8
  %222 = call i32 @print_esc(ptr noundef %.019, i1 noundef zeroext false), !dbg !800
  %223 = sext i32 %222 to i64, !dbg !801
  %224 = getelementptr inbounds i8, ptr %.019, i64 %223, !dbg !801
  call void @llvm.dbg.value(metadata ptr %224, metadata !521, metadata !DIExpression()), !dbg !554
  br label %230, !dbg !802

225:                                              ; preds = %8
  %226 = load i8, ptr %.019, align 1, !dbg !803, !tbaa !562
  %227 = sext i8 %226 to i32, !dbg !803
  %228 = load ptr, ptr @__stdoutp, align 8, !dbg !803, !tbaa !251
  %229 = call i32 @putc_unlocked(i32 noundef %227, ptr noundef %228), !dbg !803
  br label %230, !dbg !804

230:                                              ; preds = %225, %221, %219, %43, %29, %16
  %.331 = phi i32 [ %.028, %225 ], [ %.028, %221 ], [ %.028, %16 ], [ %.028, %29 ], [ %.028, %43 ], [ %.230, %219 ], !dbg !554
  %.827 = phi ptr [ %.019, %225 ], [ %224, %221 ], [ %12, %16 ], [ %12, %29 ], [ %12, %43 ], [ %.726, %219 ], !dbg !805
  %.916 = phi ptr [ %.07, %225 ], [ %.07, %221 ], [ %.07, %16 ], [ %.18, %29 ], [ %.29, %43 ], [ %.815, %219 ]
  %.9 = phi i32 [ %.01, %225 ], [ %.01, %221 ], [ %.01, %16 ], [ %.12, %29 ], [ %.23, %43 ], [ %.8, %219 ]
  %.5 = phi i32 [ %.0, %225 ], [ %.0, %221 ], [ %.0, %16 ], [ %.0, %29 ], [ %.0, %43 ], [ %.4, %219 ], !dbg !554
  call void @llvm.dbg.value(metadata i32 %.5, metadata !527, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %.9, metadata !518, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.916, metadata !519, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata ptr %.827, metadata !521, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %.331, metadata !525, metadata !DIExpression()), !dbg !554
  br label %231, !dbg !806

231:                                              ; preds = %230
  %232 = getelementptr inbounds i8, ptr %.827, i32 1, !dbg !807
  call void @llvm.dbg.value(metadata ptr %232, metadata !521, metadata !DIExpression()), !dbg !554
  br label %5, !dbg !808, !llvm.loop !809

233:                                              ; preds = %5
  %234 = sub nsw i32 %1, %.01, !dbg !811
  call void @llvm.lifetime.end.p0(i64 256, ptr %4) #12, !dbg !812
  ret i32 %234, !dbg !813
}

declare !dbg !814 ptr @quote(ptr noundef) #2

declare !dbg !818 i32 @putc_unlocked(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @print_esc_string(ptr noundef %0) #7 !dbg !821 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !823, metadata !DIExpression()), !dbg !824
  br label %2, !dbg !825

2:                                                ; preds = %19, %1
  %.0 = phi ptr [ %0, %1 ], [ %20, %19 ]
  call void @llvm.dbg.value(metadata ptr %.0, metadata !823, metadata !DIExpression()), !dbg !824
  %3 = load i8, ptr %.0, align 1, !dbg !826, !tbaa !562
  %4 = icmp ne i8 %3, 0, !dbg !829
  br i1 %4, label %5, label %21, !dbg !829

5:                                                ; preds = %2
  %6 = load i8, ptr %.0, align 1, !dbg !830, !tbaa !562
  %7 = sext i8 %6 to i32, !dbg !830
  %8 = icmp eq i32 %7, 92, !dbg !832
  br i1 %8, label %9, label %13, !dbg !833

9:                                                ; preds = %5
  %10 = call i32 @print_esc(ptr noundef %.0, i1 noundef zeroext true), !dbg !834
  %11 = sext i32 %10 to i64, !dbg !835
  %12 = getelementptr inbounds i8, ptr %.0, i64 %11, !dbg !835
  call void @llvm.dbg.value(metadata ptr %12, metadata !823, metadata !DIExpression()), !dbg !824
  br label %18, !dbg !836

13:                                               ; preds = %5
  %14 = load i8, ptr %.0, align 1, !dbg !837, !tbaa !562
  %15 = sext i8 %14 to i32, !dbg !837
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !837, !tbaa !251
  %17 = call i32 @putc_unlocked(i32 noundef %15, ptr noundef %16), !dbg !837
  br label %18

18:                                               ; preds = %13, %9
  %.1 = phi ptr [ %12, %9 ], [ %.0, %13 ]
  call void @llvm.dbg.value(metadata ptr %.1, metadata !823, metadata !DIExpression()), !dbg !824
  br label %19, !dbg !838

19:                                               ; preds = %18
  %20 = getelementptr inbounds i8, ptr %.1, i32 1, !dbg !839
  call void @llvm.dbg.value(metadata ptr %20, metadata !823, metadata !DIExpression()), !dbg !824
  br label %2, !dbg !840, !llvm.loop !841

21:                                               ; preds = %2
  ret void, !dbg !843
}

declare !dbg !844 ptr @quotearg_style(i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind ssp uwtable
define internal i64 @vstrtoimax(ptr noundef %0) #7 !dbg !847 {
  %2 = alloca ptr, align 8
  %3 = alloca %union.__mbstate_t, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !851, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #12, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %2, metadata !852, metadata !DIExpression()), !dbg !880
  %5 = load i8, ptr %0, align 1, !dbg !881, !tbaa !562
  %6 = sext i8 %5 to i32, !dbg !881
  %7 = icmp eq i32 %6, 34, !dbg !881
  br i1 %7, label %12, label %8, !dbg !881

8:                                                ; preds = %1
  %9 = load i8, ptr %0, align 1, !dbg !881, !tbaa !562
  %10 = sext i8 %9 to i32, !dbg !881
  %11 = icmp eq i32 %10, 39, !dbg !881
  br i1 %11, label %12, label %48, !dbg !881

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !881
  %14 = load i8, ptr %13, align 1, !dbg !881, !tbaa !562
  %15 = sext i8 %14 to i32, !dbg !881
  %16 = icmp ne i32 %15, 0, !dbg !881
  br i1 %16, label %17, label %48, !dbg !880

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %0, i32 1, !dbg !882
  call void @llvm.dbg.value(metadata ptr %18, metadata !851, metadata !DIExpression()), !dbg !879
  %19 = load i8, ptr %18, align 1, !dbg !882, !tbaa !562
  call void @llvm.dbg.value(metadata i8 %19, metadata !854, metadata !DIExpression()), !dbg !883
  %20 = zext i8 %19 to i64, !dbg !882
  call void @llvm.dbg.value(metadata i64 %20, metadata !853, metadata !DIExpression()), !dbg !879
  %21 = call i32 @___mb_cur_max(), !dbg !884
  %22 = icmp sgt i32 %21, 1, !dbg !884
  br i1 %22, label %23, label %38, !dbg !884

23:                                               ; preds = %17
  %24 = getelementptr inbounds i8, ptr %18, i64 1, !dbg !884
  %25 = load i8, ptr %24, align 1, !dbg !884, !tbaa !562
  %26 = sext i8 %25 to i32, !dbg !884
  %27 = icmp ne i32 %26, 0, !dbg !884
  br i1 %27, label %28, label %38, !dbg !882

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 128, ptr %3) #12, !dbg !885
  call void @llvm.dbg.declare(metadata ptr %3, metadata !857, metadata !DIExpression()), !dbg !885
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 128, i1 false), !dbg !885
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #12, !dbg !885
  call void @llvm.dbg.declare(metadata ptr %4, metadata !871, metadata !DIExpression()), !dbg !885
  %29 = call i64 @strlen(ptr noundef %18), !dbg !885
  call void @llvm.dbg.value(metadata i64 %29, metadata !874, metadata !DIExpression()), !dbg !886
  %30 = call i64 @mbrtowc(ptr noundef %4, ptr noundef %18, i64 noundef %29, ptr noundef %3), !dbg !885
  call void @llvm.dbg.value(metadata i64 %30, metadata !875, metadata !DIExpression()), !dbg !886
  %31 = icmp slt i64 0, %30, !dbg !887
  br i1 %31, label %32, label %37, !dbg !885

32:                                               ; preds = %28
  %33 = load i32, ptr %4, align 4, !dbg !889, !tbaa !432
  %34 = sext i32 %33 to i64, !dbg !889
  call void @llvm.dbg.value(metadata i64 %34, metadata !853, metadata !DIExpression()), !dbg !879
  %35 = sub nsw i64 %30, 1, !dbg !889
  %36 = getelementptr inbounds i8, ptr %18, i64 %35, !dbg !889
  call void @llvm.dbg.value(metadata ptr %36, metadata !851, metadata !DIExpression()), !dbg !879
  br label %37, !dbg !889

37:                                               ; preds = %32, %28
  %.01 = phi i64 [ %34, %32 ], [ %20, %28 ], !dbg !882
  %.0 = phi ptr [ %36, %32 ], [ %18, %28 ], !dbg !882
  call void @llvm.dbg.value(metadata ptr %.0, metadata !851, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 %.01, metadata !853, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #12, !dbg !884
  call void @llvm.lifetime.end.p0(i64 128, ptr %3) #12, !dbg !884
  br label %38, !dbg !885

38:                                               ; preds = %37, %23, %17
  %.12 = phi i64 [ %.01, %37 ], [ %20, %23 ], [ %20, %17 ], !dbg !882
  %.1 = phi ptr [ %.0, %37 ], [ %18, %23 ], [ %18, %17 ], !dbg !882
  call void @llvm.dbg.value(metadata ptr %.1, metadata !851, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 %.12, metadata !853, metadata !DIExpression()), !dbg !879
  %39 = getelementptr inbounds i8, ptr %.1, i32 1, !dbg !891
  call void @llvm.dbg.value(metadata ptr %39, metadata !851, metadata !DIExpression()), !dbg !879
  %40 = load i8, ptr %39, align 1, !dbg !891, !tbaa !562
  %41 = sext i8 %40 to i32, !dbg !891
  %42 = icmp ne i32 %41, 0, !dbg !891
  br i1 %42, label %43, label %47, !dbg !891

43:                                               ; preds = %38
  %44 = load i8, ptr @posixly_correct, align 1, !dbg !891, !tbaa !437, !range !893, !noundef !336
  %45 = trunc i8 %44 to i1, !dbg !891
  br i1 %45, label %47, label %46, !dbg !882

46:                                               ; preds = %43
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.40, ptr noundef %39), !dbg !891
  br label %47, !dbg !891

47:                                               ; preds = %46, %43, %38
  br label %52, !dbg !882

48:                                               ; preds = %12, %8
  %49 = call ptr @__error(), !dbg !894
  store i32 0, ptr %49, align 4, !dbg !894, !tbaa !432
  %50 = call i64 @strtoimax(ptr noundef %0, ptr noundef %2, i32 noundef 0), !dbg !894
  call void @llvm.dbg.value(metadata i64 %50, metadata !853, metadata !DIExpression()), !dbg !879
  %51 = load ptr, ptr %2, align 8, !dbg !894, !tbaa !251
  call void @verify_numeric(ptr noundef %0, ptr noundef %51), !dbg !894
  br label %52

52:                                               ; preds = %48, %47
  %.2 = phi i64 [ %.12, %47 ], [ %50, %48 ], !dbg !881
  call void @llvm.dbg.value(metadata i64 %.2, metadata !853, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #12, !dbg !880
  ret i64 %.2, !dbg !880
}

; Function Attrs: nounwind ssp uwtable
define internal void @print_direc(ptr noundef %0, i64 noundef %1, i8 noundef signext %2, i1 noundef zeroext %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7) #7 !dbg !896 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !900, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64 %1, metadata !901, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i8 %2, metadata !902, metadata !DIExpression()), !dbg !923
  %9 = zext i1 %3 to i8
  call void @llvm.dbg.value(metadata i8 %9, metadata !903, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 %4, metadata !904, metadata !DIExpression()), !dbg !923
  %10 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %10, metadata !905, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 %6, metadata !906, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %7, metadata !907, metadata !DIExpression()), !dbg !923
  %11 = sext i8 %2 to i32, !dbg !924
  switch i32 %11, label %14 [
    i32 100, label %12
    i32 105, label %12
    i32 111, label %12
    i32 117, label %12
    i32 120, label %12
    i32 88, label %12
    i32 97, label %13
    i32 101, label %13
    i32 102, label %13
    i32 103, label %13
    i32 65, label %13
    i32 69, label %13
    i32 70, label %13
    i32 71, label %13
  ], !dbg !925

12:                                               ; preds = %8, %8, %8, %8, %8, %8
  call void @llvm.dbg.value(metadata ptr @.str.44, metadata !911, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 1, metadata !912, metadata !DIExpression()), !dbg !926
  br label %15, !dbg !927

13:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8
  call void @llvm.dbg.value(metadata ptr @.str.45, metadata !911, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 1, metadata !912, metadata !DIExpression()), !dbg !926
  br label %15, !dbg !929

14:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %0, metadata !911, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 0, metadata !912, metadata !DIExpression()), !dbg !926
  br label %15, !dbg !930

15:                                               ; preds = %14, %13, %12
  %.01 = phi ptr [ %0, %14 ], [ @.str.45, %13 ], [ @.str.44, %12 ], !dbg !931
  %.0 = phi i64 [ 0, %14 ], [ 1, %13 ], [ 1, %12 ], !dbg !931
  call void @llvm.dbg.value(metadata i64 %.0, metadata !912, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata ptr %.01, metadata !911, metadata !DIExpression()), !dbg !926
  %16 = add i64 %1, %.0, !dbg !932
  %17 = add i64 %16, 2, !dbg !933
  %18 = call noalias nonnull ptr @xmalloc(i64 noundef %17) #13, !dbg !934
  call void @llvm.dbg.value(metadata ptr %18, metadata !908, metadata !DIExpression()), !dbg !923
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %0, i64 %1, i1 false), !dbg !935
  %19 = getelementptr inbounds i8, ptr %18, i64 %1, !dbg !935
  call void @llvm.dbg.value(metadata ptr %19, metadata !909, metadata !DIExpression()), !dbg !926
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %.01, i64 %.0, i1 false), !dbg !936
  %20 = getelementptr inbounds i8, ptr %19, i64 %.0, !dbg !936
  call void @llvm.dbg.value(metadata ptr %20, metadata !909, metadata !DIExpression()), !dbg !926
  %21 = getelementptr inbounds i8, ptr %20, i32 1, !dbg !937
  call void @llvm.dbg.value(metadata ptr %21, metadata !909, metadata !DIExpression()), !dbg !926
  store i8 %2, ptr %20, align 1, !dbg !938, !tbaa !562
  store i8 0, ptr %21, align 1, !dbg !939, !tbaa !562
  %22 = sext i8 %2 to i32, !dbg !940
  switch i32 %22, label %105 [
    i32 100, label %23
    i32 105, label %23
    i32 111, label %41
    i32 117, label %41
    i32 120, label %41
    i32 88, label %41
    i32 97, label %59
    i32 65, label %59
    i32 101, label %59
    i32 69, label %59
    i32 102, label %59
    i32 70, label %59
    i32 103, label %59
    i32 71, label %59
    i32 99, label %77
    i32 115, label %88
  ], !dbg !941

23:                                               ; preds = %15, %15
  %24 = call i64 @vstrtoimax(ptr noundef %7), !dbg !942
  call void @llvm.dbg.value(metadata i64 %24, metadata !913, metadata !DIExpression()), !dbg !943
  %25 = trunc i8 %9 to i1, !dbg !944
  br i1 %25, label %33, label %26, !dbg !946

26:                                               ; preds = %23
  %27 = trunc i8 %10 to i1, !dbg !947
  br i1 %27, label %30, label %28, !dbg !950

28:                                               ; preds = %26
  %29 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i64 noundef %24), !dbg !951
  br label %32, !dbg !951

30:                                               ; preds = %26
  %31 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %6, i64 noundef %24), !dbg !952
  br label %32

32:                                               ; preds = %30, %28
  br label %40, !dbg !953

33:                                               ; preds = %23
  %34 = trunc i8 %10 to i1, !dbg !954
  br i1 %34, label %37, label %35, !dbg !957

35:                                               ; preds = %33
  %36 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %4, i64 noundef %24), !dbg !958
  br label %39, !dbg !958

37:                                               ; preds = %33
  %38 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %4, i32 noundef %6, i64 noundef %24), !dbg !959
  br label %39

39:                                               ; preds = %37, %35
  br label %40

40:                                               ; preds = %39, %32
  br label %105, !dbg !960

41:                                               ; preds = %15, %15, %15, %15
  %42 = call i64 @vstrtoumax(ptr noundef %7), !dbg !961
  call void @llvm.dbg.value(metadata i64 %42, metadata !916, metadata !DIExpression()), !dbg !962
  %43 = trunc i8 %9 to i1, !dbg !963
  br i1 %43, label %51, label %44, !dbg !965

44:                                               ; preds = %41
  %45 = trunc i8 %10 to i1, !dbg !966
  br i1 %45, label %48, label %46, !dbg !969

46:                                               ; preds = %44
  %47 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i64 noundef %42), !dbg !970
  br label %50, !dbg !970

48:                                               ; preds = %44
  %49 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %6, i64 noundef %42), !dbg !971
  br label %50

50:                                               ; preds = %48, %46
  br label %58, !dbg !972

51:                                               ; preds = %41
  %52 = trunc i8 %10 to i1, !dbg !973
  br i1 %52, label %55, label %53, !dbg !976

53:                                               ; preds = %51
  %54 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %4, i64 noundef %42), !dbg !977
  br label %57, !dbg !977

55:                                               ; preds = %51
  %56 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %4, i32 noundef %6, i64 noundef %42), !dbg !978
  br label %57

57:                                               ; preds = %55, %53
  br label %58

58:                                               ; preds = %57, %50
  br label %105, !dbg !979

59:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15
  %60 = call x86_fp80 @vstrtold(ptr noundef %7), !dbg !980
  call void @llvm.dbg.value(metadata x86_fp80 %60, metadata !920, metadata !DIExpression()), !dbg !981
  %61 = trunc i8 %9 to i1, !dbg !982
  br i1 %61, label %69, label %62, !dbg !984

62:                                               ; preds = %59
  %63 = trunc i8 %10 to i1, !dbg !985
  br i1 %63, label %66, label %64, !dbg !988

64:                                               ; preds = %62
  %65 = call i32 (ptr, ...) @xprintf(ptr noundef %18, x86_fp80 noundef %60), !dbg !989
  br label %68, !dbg !989

66:                                               ; preds = %62
  %67 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %6, x86_fp80 noundef %60), !dbg !990
  br label %68

68:                                               ; preds = %66, %64
  br label %76, !dbg !991

69:                                               ; preds = %59
  %70 = trunc i8 %10 to i1, !dbg !992
  br i1 %70, label %73, label %71, !dbg !995

71:                                               ; preds = %69
  %72 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %4, x86_fp80 noundef %60), !dbg !996
  br label %75, !dbg !996

73:                                               ; preds = %69
  %74 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %4, i32 noundef %6, x86_fp80 noundef %60), !dbg !997
  br label %75

75:                                               ; preds = %73, %71
  br label %76

76:                                               ; preds = %75, %68
  br label %105, !dbg !998

77:                                               ; preds = %15
  %78 = trunc i8 %9 to i1, !dbg !999
  br i1 %78, label %83, label %79, !dbg !1001

79:                                               ; preds = %77
  %80 = load i8, ptr %7, align 1, !dbg !1002, !tbaa !562
  %81 = sext i8 %80 to i32, !dbg !1002
  %82 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %81), !dbg !1003
  br label %87, !dbg !1003

83:                                               ; preds = %77
  %84 = load i8, ptr %7, align 1, !dbg !1004, !tbaa !562
  %85 = sext i8 %84 to i32, !dbg !1004
  %86 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %4, i32 noundef %85), !dbg !1005
  br label %87

87:                                               ; preds = %83, %79
  br label %105, !dbg !1006

88:                                               ; preds = %15
  %89 = trunc i8 %9 to i1, !dbg !1007
  br i1 %89, label %97, label %90, !dbg !1009

90:                                               ; preds = %88
  %91 = trunc i8 %10 to i1, !dbg !1010
  br i1 %91, label %94, label %92, !dbg !1013

92:                                               ; preds = %90
  %93 = call i32 (ptr, ...) @xprintf(ptr noundef %18, ptr noundef %7), !dbg !1014
  br label %96, !dbg !1014

94:                                               ; preds = %90
  %95 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %6, ptr noundef %7), !dbg !1015
  br label %96

96:                                               ; preds = %94, %92
  br label %104, !dbg !1016

97:                                               ; preds = %88
  %98 = trunc i8 %10 to i1, !dbg !1017
  br i1 %98, label %101, label %99, !dbg !1020

99:                                               ; preds = %97
  %100 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %4, ptr noundef %7), !dbg !1021
  br label %103, !dbg !1021

101:                                              ; preds = %97
  %102 = call i32 (ptr, ...) @xprintf(ptr noundef %18, i32 noundef %4, i32 noundef %6, ptr noundef %7), !dbg !1022
  br label %103

103:                                              ; preds = %101, %99
  br label %104

104:                                              ; preds = %103, %96
  br label %105, !dbg !1023

105:                                              ; preds = %104, %87, %76, %58, %40, %15
  call void @rpl_free(ptr noundef %18), !dbg !1024
  ret void, !dbg !1025
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @print_esc(ptr noundef %0, i1 noundef zeroext %1) #7 !dbg !1026 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1030, metadata !DIExpression()), !dbg !1042
  %3 = zext i1 %1 to i8
  call void @llvm.dbg.value(metadata i8 %3, metadata !1031, metadata !DIExpression()), !dbg !1042
  %4 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1043
  call void @llvm.dbg.value(metadata ptr %4, metadata !1032, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata i32 0, metadata !1033, metadata !DIExpression()), !dbg !1042
  %5 = load i8, ptr %4, align 1, !dbg !1044, !tbaa !562
  %6 = sext i8 %5 to i32, !dbg !1044
  %7 = icmp eq i32 %6, 120, !dbg !1045
  br i1 %7, label %8, label %65, !dbg !1046

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1034, metadata !DIExpression()), !dbg !1042
  %9 = getelementptr inbounds i8, ptr %4, i32 1, !dbg !1047
  call void @llvm.dbg.value(metadata ptr %9, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %10, !dbg !1050

10:                                               ; preds = %56, %8
  %.05 = phi i32 [ 0, %8 ], [ %55, %56 ], !dbg !1042
  %.02 = phi ptr [ %9, %8 ], [ %58, %56 ], !dbg !1051
  %.01 = phi i32 [ 0, %8 ], [ %57, %56 ], !dbg !1051
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1034, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata ptr %.02, metadata !1032, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1033, metadata !DIExpression()), !dbg !1042
  %11 = icmp slt i32 %.01, 2, !dbg !1052
  br i1 %11, label %12, label %18, !dbg !1054

12:                                               ; preds = %10
  %13 = load i8, ptr %.02, align 1, !dbg !1055, !tbaa !562
  %14 = call zeroext i8 @to_uchar(i8 noundef signext %13), !dbg !1056
  %15 = zext i8 %14 to i32, !dbg !1056
  %16 = call i32 @isxdigit(i32 noundef %15) #14, !dbg !1057
  %17 = icmp ne i32 %16, 0, !dbg !1054
  br label %18

18:                                               ; preds = %12, %10
  %19 = phi i1 [ false, %10 ], [ %17, %12 ], !dbg !1058
  br i1 %19, label %20, label %59, !dbg !1059

20:                                               ; preds = %18
  %21 = mul nsw i32 %.05, 16, !dbg !1060
  %22 = load i8, ptr %.02, align 1, !dbg !1061, !tbaa !562
  %23 = sext i8 %22 to i32, !dbg !1061
  %24 = icmp sge i32 %23, 97, !dbg !1061
  br i1 %24, label %25, label %34, !dbg !1061

25:                                               ; preds = %20
  %26 = load i8, ptr %.02, align 1, !dbg !1061, !tbaa !562
  %27 = sext i8 %26 to i32, !dbg !1061
  %28 = icmp sle i32 %27, 102, !dbg !1061
  br i1 %28, label %29, label %34, !dbg !1061

29:                                               ; preds = %25
  %30 = load i8, ptr %.02, align 1, !dbg !1061, !tbaa !562
  %31 = sext i8 %30 to i32, !dbg !1061
  %32 = sub nsw i32 %31, 97, !dbg !1061
  %33 = add nsw i32 %32, 10, !dbg !1061
  br label %53, !dbg !1061

34:                                               ; preds = %25, %20
  %35 = load i8, ptr %.02, align 1, !dbg !1061, !tbaa !562
  %36 = sext i8 %35 to i32, !dbg !1061
  %37 = icmp sge i32 %36, 65, !dbg !1061
  br i1 %37, label %38, label %47, !dbg !1061

38:                                               ; preds = %34
  %39 = load i8, ptr %.02, align 1, !dbg !1061, !tbaa !562
  %40 = sext i8 %39 to i32, !dbg !1061
  %41 = icmp sle i32 %40, 70, !dbg !1061
  br i1 %41, label %42, label %47, !dbg !1061

42:                                               ; preds = %38
  %43 = load i8, ptr %.02, align 1, !dbg !1061, !tbaa !562
  %44 = sext i8 %43 to i32, !dbg !1061
  %45 = sub nsw i32 %44, 65, !dbg !1061
  %46 = add nsw i32 %45, 10, !dbg !1061
  br label %51, !dbg !1061

47:                                               ; preds = %38, %34
  %48 = load i8, ptr %.02, align 1, !dbg !1061, !tbaa !562
  %49 = sext i8 %48 to i32, !dbg !1061
  %50 = sub nsw i32 %49, 48, !dbg !1061
  br label %51, !dbg !1061

51:                                               ; preds = %47, %42
  %52 = phi i32 [ %46, %42 ], [ %50, %47 ], !dbg !1061
  br label %53, !dbg !1061

53:                                               ; preds = %51, %29
  %54 = phi i32 [ %33, %29 ], [ %52, %51 ], !dbg !1061
  %55 = add nsw i32 %21, %54, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %55, metadata !1033, metadata !DIExpression()), !dbg !1042
  br label %56, !dbg !1063

56:                                               ; preds = %53
  %57 = add nsw i32 %.01, 1, !dbg !1064
  call void @llvm.dbg.value(metadata i32 %57, metadata !1034, metadata !DIExpression()), !dbg !1042
  %58 = getelementptr inbounds i8, ptr %.02, i32 1, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %58, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %10, !dbg !1066, !llvm.loop !1067

59:                                               ; preds = %18
  %60 = icmp eq i32 %.01, 0, !dbg !1069
  br i1 %60, label %61, label %62, !dbg !1071

61:                                               ; preds = %59
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.46), !dbg !1072
  unreachable, !dbg !1072

62:                                               ; preds = %59
  %63 = load ptr, ptr @__stdoutp, align 8, !dbg !1073, !tbaa !251
  %64 = call i32 @putc_unlocked(i32 noundef %.05, ptr noundef %63), !dbg !1073
  br label %212, !dbg !1074

65:                                               ; preds = %2
  %66 = load i8, ptr %4, align 1, !dbg !1075, !tbaa !562
  %67 = sext i8 %66 to i32, !dbg !1075
  %68 = icmp sge i32 %67, 48, !dbg !1075
  br i1 %68, label %69, label %110, !dbg !1075

69:                                               ; preds = %65
  %70 = load i8, ptr %4, align 1, !dbg !1075, !tbaa !562
  %71 = sext i8 %70 to i32, !dbg !1075
  %72 = icmp sle i32 %71, 55, !dbg !1075
  br i1 %72, label %73, label %110, !dbg !1076

73:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !1034, metadata !DIExpression()), !dbg !1042
  %74 = trunc i8 %3 to i1, !dbg !1077
  br i1 %74, label %75, label %79, !dbg !1080

75:                                               ; preds = %73
  %76 = load i8, ptr %4, align 1, !dbg !1081, !tbaa !562
  %77 = sext i8 %76 to i32, !dbg !1081
  %78 = icmp eq i32 %77, 48, !dbg !1082
  br label %79

79:                                               ; preds = %75, %73
  %80 = phi i1 [ false, %73 ], [ %78, %75 ], !dbg !1083
  %81 = zext i1 %80 to i32, !dbg !1080
  %82 = sext i32 %81 to i64, !dbg !1084
  %83 = getelementptr inbounds i8, ptr %4, i64 %82, !dbg !1084
  call void @llvm.dbg.value(metadata ptr %83, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %84, !dbg !1085

84:                                               ; preds = %104, %79
  %.16 = phi i32 [ 0, %79 ], [ %103, %104 ], !dbg !1042
  %.13 = phi ptr [ %83, %79 ], [ %106, %104 ], !dbg !1083
  %.1 = phi i32 [ 0, %79 ], [ %105, %104 ], !dbg !1083
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1034, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata ptr %.13, metadata !1032, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata i32 %.16, metadata !1033, metadata !DIExpression()), !dbg !1042
  %85 = icmp slt i32 %.1, 3, !dbg !1086
  br i1 %85, label %86, label %96, !dbg !1088

86:                                               ; preds = %84
  %87 = load i8, ptr %.13, align 1, !dbg !1089, !tbaa !562
  %88 = sext i8 %87 to i32, !dbg !1089
  %89 = icmp sge i32 %88, 48, !dbg !1089
  br i1 %89, label %90, label %94, !dbg !1089

90:                                               ; preds = %86
  %91 = load i8, ptr %.13, align 1, !dbg !1089, !tbaa !562
  %92 = sext i8 %91 to i32, !dbg !1089
  %93 = icmp sle i32 %92, 55, !dbg !1089
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i1 [ false, %86 ], [ %93, %90 ], !dbg !1090
  br label %96

96:                                               ; preds = %94, %84
  %97 = phi i1 [ false, %84 ], [ %95, %94 ], !dbg !1090
  br i1 %97, label %98, label %107, !dbg !1091

98:                                               ; preds = %96
  %99 = mul nsw i32 %.16, 8, !dbg !1092
  %100 = load i8, ptr %.13, align 1, !dbg !1093, !tbaa !562
  %101 = sext i8 %100 to i32, !dbg !1093
  %102 = sub nsw i32 %101, 48, !dbg !1093
  %103 = add nsw i32 %99, %102, !dbg !1094
  call void @llvm.dbg.value(metadata i32 %103, metadata !1033, metadata !DIExpression()), !dbg !1042
  br label %104, !dbg !1095

104:                                              ; preds = %98
  %105 = add nsw i32 %.1, 1, !dbg !1096
  call void @llvm.dbg.value(metadata i32 %105, metadata !1034, metadata !DIExpression()), !dbg !1042
  %106 = getelementptr inbounds i8, ptr %.13, i32 1, !dbg !1097
  call void @llvm.dbg.value(metadata ptr %106, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %84, !dbg !1098, !llvm.loop !1099

107:                                              ; preds = %96
  %108 = load ptr, ptr @__stdoutp, align 8, !dbg !1101, !tbaa !251
  %109 = call i32 @putc_unlocked(i32 noundef %.16, ptr noundef %108), !dbg !1101
  br label %211, !dbg !1102

110:                                              ; preds = %69, %65
  %111 = load i8, ptr %4, align 1, !dbg !1103, !tbaa !562
  %112 = sext i8 %111 to i32, !dbg !1103
  %113 = icmp ne i32 %112, 0, !dbg !1103
  br i1 %113, label %114, label %122, !dbg !1104

114:                                              ; preds = %110
  %115 = load i8, ptr %4, align 1, !dbg !1105, !tbaa !562
  %116 = sext i8 %115 to i32, !dbg !1105
  %117 = call ptr @strchr(ptr noundef @.str.47, i32 noundef %116), !dbg !1106
  %118 = icmp ne ptr %117, null, !dbg !1106
  br i1 %118, label %119, label %122, !dbg !1107

119:                                              ; preds = %114
  %120 = getelementptr inbounds i8, ptr %4, i32 1, !dbg !1108
  call void @llvm.dbg.value(metadata ptr %120, metadata !1032, metadata !DIExpression()), !dbg !1042
  %121 = load i8, ptr %4, align 1, !dbg !1109, !tbaa !562
  call void @print_esc_char(i8 noundef signext %121), !dbg !1110
  br label %210, !dbg !1110

122:                                              ; preds = %114, %110
  %123 = load i8, ptr %4, align 1, !dbg !1111, !tbaa !562
  %124 = sext i8 %123 to i32, !dbg !1111
  %125 = icmp eq i32 %124, 117, !dbg !1112
  br i1 %125, label %130, label %126, !dbg !1113

126:                                              ; preds = %122
  %127 = load i8, ptr %4, align 1, !dbg !1114, !tbaa !562
  %128 = sext i8 %127 to i32, !dbg !1114
  %129 = icmp eq i32 %128, 85, !dbg !1115
  br i1 %129, label %130, label %197, !dbg !1116

130:                                              ; preds = %126, %122
  %131 = load i8, ptr %4, align 1, !dbg !1117, !tbaa !562
  call void @llvm.dbg.value(metadata i8 %131, metadata !1035, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 0, metadata !1041, metadata !DIExpression()), !dbg !1118
  %132 = sext i8 %131 to i32, !dbg !1119
  %133 = icmp eq i32 %132, 117, !dbg !1121
  %134 = zext i1 %133 to i64, !dbg !1119
  %135 = select i1 %133, i32 4, i32 8, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %135, metadata !1034, metadata !DIExpression()), !dbg !1042
  %136 = getelementptr inbounds i8, ptr %4, i32 1, !dbg !1122
  call void @llvm.dbg.value(metadata ptr %136, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %137, !dbg !1123

137:                                              ; preds = %182, %130
  %.24 = phi ptr [ %136, %130 ], [ %184, %182 ], !dbg !1124
  %.2 = phi i32 [ %135, %130 ], [ %183, %182 ], !dbg !1124
  %.0 = phi i32 [ 0, %130 ], [ %181, %182 ], !dbg !1118
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1041, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1034, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata ptr %.24, metadata !1032, metadata !DIExpression()), !dbg !1042
  %138 = icmp sgt i32 %.2, 0, !dbg !1125
  br i1 %138, label %139, label %185, !dbg !1127

139:                                              ; preds = %137
  %140 = load i8, ptr %.24, align 1, !dbg !1128, !tbaa !562
  %141 = call zeroext i8 @to_uchar(i8 noundef signext %140), !dbg !1131
  %142 = zext i8 %141 to i32, !dbg !1131
  %143 = call i32 @isxdigit(i32 noundef %142) #14, !dbg !1132
  %144 = icmp ne i32 %143, 0, !dbg !1132
  br i1 %144, label %146, label %145, !dbg !1133

145:                                              ; preds = %139
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.46), !dbg !1134
  unreachable, !dbg !1134

146:                                              ; preds = %139
  %147 = mul i32 %.0, 16, !dbg !1135
  %148 = load i8, ptr %.24, align 1, !dbg !1136, !tbaa !562
  %149 = sext i8 %148 to i32, !dbg !1136
  %150 = icmp sge i32 %149, 97, !dbg !1136
  br i1 %150, label %151, label %160, !dbg !1136

151:                                              ; preds = %146
  %152 = load i8, ptr %.24, align 1, !dbg !1136, !tbaa !562
  %153 = sext i8 %152 to i32, !dbg !1136
  %154 = icmp sle i32 %153, 102, !dbg !1136
  br i1 %154, label %155, label %160, !dbg !1136

155:                                              ; preds = %151
  %156 = load i8, ptr %.24, align 1, !dbg !1136, !tbaa !562
  %157 = sext i8 %156 to i32, !dbg !1136
  %158 = sub nsw i32 %157, 97, !dbg !1136
  %159 = add nsw i32 %158, 10, !dbg !1136
  br label %179, !dbg !1136

160:                                              ; preds = %151, %146
  %161 = load i8, ptr %.24, align 1, !dbg !1136, !tbaa !562
  %162 = sext i8 %161 to i32, !dbg !1136
  %163 = icmp sge i32 %162, 65, !dbg !1136
  br i1 %163, label %164, label %173, !dbg !1136

164:                                              ; preds = %160
  %165 = load i8, ptr %.24, align 1, !dbg !1136, !tbaa !562
  %166 = sext i8 %165 to i32, !dbg !1136
  %167 = icmp sle i32 %166, 70, !dbg !1136
  br i1 %167, label %168, label %173, !dbg !1136

168:                                              ; preds = %164
  %169 = load i8, ptr %.24, align 1, !dbg !1136, !tbaa !562
  %170 = sext i8 %169 to i32, !dbg !1136
  %171 = sub nsw i32 %170, 65, !dbg !1136
  %172 = add nsw i32 %171, 10, !dbg !1136
  br label %177, !dbg !1136

173:                                              ; preds = %164, %160
  %174 = load i8, ptr %.24, align 1, !dbg !1136, !tbaa !562
  %175 = sext i8 %174 to i32, !dbg !1136
  %176 = sub nsw i32 %175, 48, !dbg !1136
  br label %177, !dbg !1136

177:                                              ; preds = %173, %168
  %178 = phi i32 [ %172, %168 ], [ %176, %173 ], !dbg !1136
  br label %179, !dbg !1136

179:                                              ; preds = %177, %155
  %180 = phi i32 [ %159, %155 ], [ %178, %177 ], !dbg !1136
  %181 = add i32 %147, %180, !dbg !1137
  call void @llvm.dbg.value(metadata i32 %181, metadata !1041, metadata !DIExpression()), !dbg !1118
  br label %182, !dbg !1138

182:                                              ; preds = %179
  %183 = add nsw i32 %.2, -1, !dbg !1139
  call void @llvm.dbg.value(metadata i32 %183, metadata !1034, metadata !DIExpression()), !dbg !1042
  %184 = getelementptr inbounds i8, ptr %.24, i32 1, !dbg !1140
  call void @llvm.dbg.value(metadata ptr %184, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %137, !dbg !1141, !llvm.loop !1142

185:                                              ; preds = %137
  %186 = icmp uge i32 %.0, 55296, !dbg !1144
  br i1 %186, label %187, label %195, !dbg !1146

187:                                              ; preds = %185
  %188 = icmp ule i32 %.0, 57343, !dbg !1147
  br i1 %188, label %189, label %195, !dbg !1148

189:                                              ; preds = %187
  %190 = sext i8 %131 to i32, !dbg !1149
  %191 = sext i8 %131 to i32, !dbg !1149
  %192 = icmp eq i32 %191, 117, !dbg !1149
  %193 = zext i1 %192 to i64, !dbg !1149
  %194 = select i1 %192, i32 4, i32 8, !dbg !1149
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.48, i32 noundef %190, i32 noundef %194, i32 noundef %.0), !dbg !1149
  unreachable, !dbg !1149

195:                                              ; preds = %187, %185
  %196 = load ptr, ptr @__stdoutp, align 8, !dbg !1150, !tbaa !251
  call void @print_unicode_char(ptr noundef %196, i32 noundef %.0, i32 noundef 0), !dbg !1151
  br label %209, !dbg !1152

197:                                              ; preds = %126
  %198 = load ptr, ptr @__stdoutp, align 8, !dbg !1153, !tbaa !251
  %199 = call i32 @putc_unlocked(i32 noundef 92, ptr noundef %198), !dbg !1153
  %200 = load i8, ptr %4, align 1, !dbg !1155, !tbaa !562
  %201 = icmp ne i8 %200, 0, !dbg !1155
  br i1 %201, label %202, label %208, !dbg !1157

202:                                              ; preds = %197
  %203 = load i8, ptr %4, align 1, !dbg !1158, !tbaa !562
  %204 = sext i8 %203 to i32, !dbg !1158
  %205 = load ptr, ptr @__stdoutp, align 8, !dbg !1158, !tbaa !251
  %206 = call i32 @putc_unlocked(i32 noundef %204, ptr noundef %205), !dbg !1158
  %207 = getelementptr inbounds i8, ptr %4, i32 1, !dbg !1160
  call void @llvm.dbg.value(metadata ptr %207, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %208, !dbg !1161

208:                                              ; preds = %202, %197
  %.3 = phi ptr [ %207, %202 ], [ %4, %197 ], !dbg !1042
  call void @llvm.dbg.value(metadata ptr %.3, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %209

209:                                              ; preds = %208, %195
  %.4 = phi ptr [ %.24, %195 ], [ %.3, %208 ], !dbg !1162
  call void @llvm.dbg.value(metadata ptr %.4, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %210

210:                                              ; preds = %209, %119
  %.5 = phi ptr [ %120, %119 ], [ %.4, %209 ], !dbg !1163
  call void @llvm.dbg.value(metadata ptr %.5, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %211

211:                                              ; preds = %210, %107
  %.6 = phi ptr [ %.13, %107 ], [ %.5, %210 ], !dbg !1164
  call void @llvm.dbg.value(metadata ptr %.6, metadata !1032, metadata !DIExpression()), !dbg !1042
  br label %212

212:                                              ; preds = %211, %62
  %.7 = phi ptr [ %.02, %62 ], [ %.6, %211 ], !dbg !1165
  call void @llvm.dbg.value(metadata ptr %.7, metadata !1032, metadata !DIExpression()), !dbg !1042
  %213 = ptrtoint ptr %.7 to i64, !dbg !1166
  %214 = ptrtoint ptr %0 to i64, !dbg !1166
  %215 = sub i64 %213, %214, !dbg !1166
  %216 = sub nsw i64 %215, 1, !dbg !1167
  %217 = trunc i64 %216 to i32, !dbg !1168
  ret i32 %217, !dbg !1169
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i8 @to_uchar(i8 noundef signext %0) #3 !dbg !1170 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1174, metadata !DIExpression()), !dbg !1175
  ret i8 %0, !dbg !1176
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally i32 @isxdigit(i32 noundef %0) #9 !dbg !1177 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1182, metadata !DIExpression()), !dbg !1183
  %2 = call i32 @__isctype(i32 noundef %0, i64 noundef 65536), !dbg !1184
  ret i32 %2, !dbg !1185
}

declare !dbg !1186 ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @print_esc_char(i8 noundef signext %0) #7 !dbg !1189 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1193, metadata !DIExpression()), !dbg !1194
  %2 = sext i8 %0 to i32, !dbg !1195
  switch i32 %2, label %28 [
    i32 97, label %3
    i32 98, label %6
    i32 99, label %9
    i32 101, label %10
    i32 102, label %13
    i32 110, label %16
    i32 114, label %19
    i32 116, label %22
    i32 118, label %25
  ], !dbg !1196

3:                                                ; preds = %1
  %4 = load ptr, ptr @__stdoutp, align 8, !dbg !1197, !tbaa !251
  %5 = call i32 @putc_unlocked(i32 noundef 7, ptr noundef %4), !dbg !1197
  br label %32, !dbg !1199

6:                                                ; preds = %1
  %7 = load ptr, ptr @__stdoutp, align 8, !dbg !1200, !tbaa !251
  %8 = call i32 @putc_unlocked(i32 noundef 8, ptr noundef %7), !dbg !1200
  br label %32, !dbg !1201

9:                                                ; preds = %1
  call void @exit(i32 noundef 0) #11, !dbg !1202
  unreachable, !dbg !1202

10:                                               ; preds = %1
  %11 = load ptr, ptr @__stdoutp, align 8, !dbg !1203, !tbaa !251
  %12 = call i32 @putc_unlocked(i32 noundef 27, ptr noundef %11), !dbg !1203
  br label %32, !dbg !1204

13:                                               ; preds = %1
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !1205, !tbaa !251
  %15 = call i32 @putc_unlocked(i32 noundef 12, ptr noundef %14), !dbg !1205
  br label %32, !dbg !1206

16:                                               ; preds = %1
  %17 = load ptr, ptr @__stdoutp, align 8, !dbg !1207, !tbaa !251
  %18 = call i32 @putc_unlocked(i32 noundef 10, ptr noundef %17), !dbg !1207
  br label %32, !dbg !1208

19:                                               ; preds = %1
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !1209, !tbaa !251
  %21 = call i32 @putc_unlocked(i32 noundef 13, ptr noundef %20), !dbg !1209
  br label %32, !dbg !1210

22:                                               ; preds = %1
  %23 = load ptr, ptr @__stdoutp, align 8, !dbg !1211, !tbaa !251
  %24 = call i32 @putc_unlocked(i32 noundef 9, ptr noundef %23), !dbg !1211
  br label %32, !dbg !1212

25:                                               ; preds = %1
  %26 = load ptr, ptr @__stdoutp, align 8, !dbg !1213, !tbaa !251
  %27 = call i32 @putc_unlocked(i32 noundef 11, ptr noundef %26), !dbg !1213
  br label %32, !dbg !1214

28:                                               ; preds = %1
  %29 = sext i8 %0 to i32, !dbg !1215
  %30 = load ptr, ptr @__stdoutp, align 8, !dbg !1215, !tbaa !251
  %31 = call i32 @putc_unlocked(i32 noundef %29, ptr noundef %30), !dbg !1215
  br label %32, !dbg !1216

32:                                               ; preds = %28, %25, %22, %19, %16, %13, %10, %6, %3
  ret void, !dbg !1217
}

declare !dbg !1218 void @print_unicode_char(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__isctype(i32 noundef %0, i64 noundef %1) #3 !dbg !1222 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1227, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %1, metadata !1228, metadata !DIExpression()), !dbg !1229
  %3 = icmp slt i32 %0, 0, !dbg !1230
  br i1 %3, label %6, label %4, !dbg !1231

4:                                                ; preds = %2
  %5 = icmp sge i32 %0, 256, !dbg !1232
  br i1 %5, label %6, label %7, !dbg !1233

6:                                                ; preds = %4, %2
  br label %17, !dbg !1233

7:                                                ; preds = %4
  %8 = sext i32 %0 to i64, !dbg !1234
  %9 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (%struct._RuneLocale, ptr @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %8, !dbg !1234
  %10 = load i32, ptr %9, align 4, !dbg !1234, !tbaa !432
  %11 = zext i32 %10 to i64, !dbg !1234
  %12 = and i64 %11, %1, !dbg !1235
  %13 = icmp ne i64 %12, 0, !dbg !1236
  %14 = xor i1 %13, true, !dbg !1236
  %15 = xor i1 %14, true, !dbg !1237
  %16 = zext i1 %15 to i32, !dbg !1237
  br label %17, !dbg !1233

17:                                               ; preds = %7, %6
  %18 = phi i32 [ 0, %6 ], [ %16, %7 ], !dbg !1233
  ret i32 %18, !dbg !1238
}

; Function Attrs: allocsize(0)
declare !dbg !1239 noalias nonnull ptr @xmalloc(i64 noundef) #10

declare !dbg !1243 i32 @xprintf(ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @vstrtoumax(ptr noundef %0) #7 !dbg !1245 {
  %2 = alloca ptr, align 8
  %3 = alloca %union.__mbstate_t, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1249, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #12, !dbg !1262
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1250, metadata !DIExpression()), !dbg !1262
  %5 = load i8, ptr %0, align 1, !dbg !1263, !tbaa !562
  %6 = sext i8 %5 to i32, !dbg !1263
  %7 = icmp eq i32 %6, 34, !dbg !1263
  br i1 %7, label %12, label %8, !dbg !1263

8:                                                ; preds = %1
  %9 = load i8, ptr %0, align 1, !dbg !1263, !tbaa !562
  %10 = sext i8 %9 to i32, !dbg !1263
  %11 = icmp eq i32 %10, 39, !dbg !1263
  br i1 %11, label %12, label %48, !dbg !1263

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1263
  %14 = load i8, ptr %13, align 1, !dbg !1263, !tbaa !562
  %15 = sext i8 %14 to i32, !dbg !1263
  %16 = icmp ne i32 %15, 0, !dbg !1263
  br i1 %16, label %17, label %48, !dbg !1262

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %0, i32 1, !dbg !1264
  call void @llvm.dbg.value(metadata ptr %18, metadata !1249, metadata !DIExpression()), !dbg !1261
  %19 = load i8, ptr %18, align 1, !dbg !1264, !tbaa !562
  call void @llvm.dbg.value(metadata i8 %19, metadata !1252, metadata !DIExpression()), !dbg !1265
  %20 = zext i8 %19 to i64, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %20, metadata !1251, metadata !DIExpression()), !dbg !1261
  %21 = call i32 @___mb_cur_max(), !dbg !1266
  %22 = icmp sgt i32 %21, 1, !dbg !1266
  br i1 %22, label %23, label %38, !dbg !1266

23:                                               ; preds = %17
  %24 = getelementptr inbounds i8, ptr %18, i64 1, !dbg !1266
  %25 = load i8, ptr %24, align 1, !dbg !1266, !tbaa !562
  %26 = sext i8 %25 to i32, !dbg !1266
  %27 = icmp ne i32 %26, 0, !dbg !1266
  br i1 %27, label %28, label %38, !dbg !1264

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 128, ptr %3) #12, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1255, metadata !DIExpression()), !dbg !1267
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 128, i1 false), !dbg !1267
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #12, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1258, metadata !DIExpression()), !dbg !1267
  %29 = call i64 @strlen(ptr noundef %18), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %29, metadata !1259, metadata !DIExpression()), !dbg !1268
  %30 = call i64 @mbrtowc(ptr noundef %4, ptr noundef %18, i64 noundef %29, ptr noundef %3), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %30, metadata !1260, metadata !DIExpression()), !dbg !1268
  %31 = icmp slt i64 0, %30, !dbg !1269
  br i1 %31, label %32, label %37, !dbg !1267

32:                                               ; preds = %28
  %33 = load i32, ptr %4, align 4, !dbg !1271, !tbaa !432
  %34 = sext i32 %33 to i64, !dbg !1271
  call void @llvm.dbg.value(metadata i64 %34, metadata !1251, metadata !DIExpression()), !dbg !1261
  %35 = sub nsw i64 %30, 1, !dbg !1271
  %36 = getelementptr inbounds i8, ptr %18, i64 %35, !dbg !1271
  call void @llvm.dbg.value(metadata ptr %36, metadata !1249, metadata !DIExpression()), !dbg !1261
  br label %37, !dbg !1271

37:                                               ; preds = %32, %28
  %.01 = phi i64 [ %34, %32 ], [ %20, %28 ], !dbg !1264
  %.0 = phi ptr [ %36, %32 ], [ %18, %28 ], !dbg !1264
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1249, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1251, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #12, !dbg !1266
  call void @llvm.lifetime.end.p0(i64 128, ptr %3) #12, !dbg !1266
  br label %38, !dbg !1267

38:                                               ; preds = %37, %23, %17
  %.12 = phi i64 [ %.01, %37 ], [ %20, %23 ], [ %20, %17 ], !dbg !1264
  %.1 = phi ptr [ %.0, %37 ], [ %18, %23 ], [ %18, %17 ], !dbg !1264
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1249, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 %.12, metadata !1251, metadata !DIExpression()), !dbg !1261
  %39 = getelementptr inbounds i8, ptr %.1, i32 1, !dbg !1273
  call void @llvm.dbg.value(metadata ptr %39, metadata !1249, metadata !DIExpression()), !dbg !1261
  %40 = load i8, ptr %39, align 1, !dbg !1273, !tbaa !562
  %41 = sext i8 %40 to i32, !dbg !1273
  %42 = icmp ne i32 %41, 0, !dbg !1273
  br i1 %42, label %43, label %47, !dbg !1273

43:                                               ; preds = %38
  %44 = load i8, ptr @posixly_correct, align 1, !dbg !1273, !tbaa !437, !range !893, !noundef !336
  %45 = trunc i8 %44 to i1, !dbg !1273
  br i1 %45, label %47, label %46, !dbg !1264

46:                                               ; preds = %43
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.40, ptr noundef %39), !dbg !1273
  br label %47, !dbg !1273

47:                                               ; preds = %46, %43, %38
  br label %52, !dbg !1264

48:                                               ; preds = %12, %8
  %49 = call ptr @__error(), !dbg !1275
  store i32 0, ptr %49, align 4, !dbg !1275, !tbaa !432
  %50 = call i64 @strtoumax(ptr noundef %0, ptr noundef %2, i32 noundef 0), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %50, metadata !1251, metadata !DIExpression()), !dbg !1261
  %51 = load ptr, ptr %2, align 8, !dbg !1275, !tbaa !251
  call void @verify_numeric(ptr noundef %0, ptr noundef %51), !dbg !1275
  br label %52

52:                                               ; preds = %48, %47
  %.2 = phi i64 [ %.12, %47 ], [ %50, %48 ], !dbg !1263
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1251, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #12, !dbg !1262
  ret i64 %.2, !dbg !1262
}

; Function Attrs: nounwind ssp uwtable
define internal x86_fp80 @vstrtold(ptr noundef %0) #7 !dbg !1277 {
  %2 = alloca ptr, align 8
  %3 = alloca %union.__mbstate_t, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1281, metadata !DIExpression()), !dbg !1293
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #12, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1282, metadata !DIExpression()), !dbg !1294
  %5 = load i8, ptr %0, align 1, !dbg !1295, !tbaa !562
  %6 = sext i8 %5 to i32, !dbg !1295
  %7 = icmp eq i32 %6, 34, !dbg !1295
  br i1 %7, label %12, label %8, !dbg !1295

8:                                                ; preds = %1
  %9 = load i8, ptr %0, align 1, !dbg !1295, !tbaa !562
  %10 = sext i8 %9 to i32, !dbg !1295
  %11 = icmp eq i32 %10, 39, !dbg !1295
  br i1 %11, label %12, label %48, !dbg !1295

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1295
  %14 = load i8, ptr %13, align 1, !dbg !1295, !tbaa !562
  %15 = sext i8 %14 to i32, !dbg !1295
  %16 = icmp ne i32 %15, 0, !dbg !1295
  br i1 %16, label %17, label %48, !dbg !1294

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %0, i32 1, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %18, metadata !1281, metadata !DIExpression()), !dbg !1293
  %19 = load i8, ptr %18, align 1, !dbg !1296, !tbaa !562
  call void @llvm.dbg.value(metadata i8 %19, metadata !1284, metadata !DIExpression()), !dbg !1297
  %20 = uitofp i8 %19 to x86_fp80, !dbg !1296
  call void @llvm.dbg.value(metadata x86_fp80 %20, metadata !1283, metadata !DIExpression()), !dbg !1293
  %21 = call i32 @___mb_cur_max(), !dbg !1298
  %22 = icmp sgt i32 %21, 1, !dbg !1298
  br i1 %22, label %23, label %38, !dbg !1298

23:                                               ; preds = %17
  %24 = getelementptr inbounds i8, ptr %18, i64 1, !dbg !1298
  %25 = load i8, ptr %24, align 1, !dbg !1298, !tbaa !562
  %26 = sext i8 %25 to i32, !dbg !1298
  %27 = icmp ne i32 %26, 0, !dbg !1298
  br i1 %27, label %28, label %38, !dbg !1296

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 128, ptr %3) #12, !dbg !1299
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1287, metadata !DIExpression()), !dbg !1299
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 128, i1 false), !dbg !1299
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #12, !dbg !1299
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1290, metadata !DIExpression()), !dbg !1299
  %29 = call i64 @strlen(ptr noundef %18), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %29, metadata !1291, metadata !DIExpression()), !dbg !1300
  %30 = call i64 @mbrtowc(ptr noundef %4, ptr noundef %18, i64 noundef %29, ptr noundef %3), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %30, metadata !1292, metadata !DIExpression()), !dbg !1300
  %31 = icmp slt i64 0, %30, !dbg !1301
  br i1 %31, label %32, label %37, !dbg !1299

32:                                               ; preds = %28
  %33 = load i32, ptr %4, align 4, !dbg !1303, !tbaa !432
  %34 = sitofp i32 %33 to x86_fp80, !dbg !1303
  call void @llvm.dbg.value(metadata x86_fp80 %34, metadata !1283, metadata !DIExpression()), !dbg !1293
  %35 = sub nsw i64 %30, 1, !dbg !1303
  %36 = getelementptr inbounds i8, ptr %18, i64 %35, !dbg !1303
  call void @llvm.dbg.value(metadata ptr %36, metadata !1281, metadata !DIExpression()), !dbg !1293
  br label %37, !dbg !1303

37:                                               ; preds = %32, %28
  %.01 = phi x86_fp80 [ %34, %32 ], [ %20, %28 ], !dbg !1296
  %.0 = phi ptr [ %36, %32 ], [ %18, %28 ], !dbg !1296
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1281, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata x86_fp80 %.01, metadata !1283, metadata !DIExpression()), !dbg !1293
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #12, !dbg !1298
  call void @llvm.lifetime.end.p0(i64 128, ptr %3) #12, !dbg !1298
  br label %38, !dbg !1299

38:                                               ; preds = %37, %23, %17
  %.12 = phi x86_fp80 [ %.01, %37 ], [ %20, %23 ], [ %20, %17 ], !dbg !1296
  %.1 = phi ptr [ %.0, %37 ], [ %18, %23 ], [ %18, %17 ], !dbg !1296
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1281, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata x86_fp80 %.12, metadata !1283, metadata !DIExpression()), !dbg !1293
  %39 = getelementptr inbounds i8, ptr %.1, i32 1, !dbg !1305
  call void @llvm.dbg.value(metadata ptr %39, metadata !1281, metadata !DIExpression()), !dbg !1293
  %40 = load i8, ptr %39, align 1, !dbg !1305, !tbaa !562
  %41 = sext i8 %40 to i32, !dbg !1305
  %42 = icmp ne i32 %41, 0, !dbg !1305
  br i1 %42, label %43, label %47, !dbg !1305

43:                                               ; preds = %38
  %44 = load i8, ptr @posixly_correct, align 1, !dbg !1305, !tbaa !437, !range !893, !noundef !336
  %45 = trunc i8 %44 to i1, !dbg !1305
  br i1 %45, label %47, label %46, !dbg !1296

46:                                               ; preds = %43
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.40, ptr noundef %39), !dbg !1305
  br label %47, !dbg !1305

47:                                               ; preds = %46, %43, %38
  br label %52, !dbg !1296

48:                                               ; preds = %12, %8
  %49 = call ptr @__error(), !dbg !1307
  store i32 0, ptr %49, align 4, !dbg !1307, !tbaa !432
  %50 = call x86_fp80 @cl_strtold(ptr noundef %0, ptr noundef %2), !dbg !1307
  call void @llvm.dbg.value(metadata x86_fp80 %50, metadata !1283, metadata !DIExpression()), !dbg !1293
  %51 = load ptr, ptr %2, align 8, !dbg !1307, !tbaa !251
  call void @verify_numeric(ptr noundef %0, ptr noundef %51), !dbg !1307
  br label %52

52:                                               ; preds = %48, %47
  %.2 = phi x86_fp80 [ %.12, %47 ], [ %50, %48 ], !dbg !1295
  call void @llvm.dbg.value(metadata x86_fp80 %.2, metadata !1283, metadata !DIExpression()), !dbg !1293
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #12, !dbg !1294
  ret x86_fp80 %.2, !dbg !1294
}

declare !dbg !1309 void @rpl_free(ptr noundef) #2

declare !dbg !1313 i32 @___mb_cur_max() #2

declare !dbg !1317 i64 @strlen(ptr noundef) #2

declare !dbg !1320 i64 @mbrtowc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !1328 ptr @__error() #2

declare !dbg !1333 x86_fp80 @cl_strtold(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @verify_numeric(ptr noundef %0, ptr noundef %1) #7 !dbg !1338 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1342, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata ptr %1, metadata !1343, metadata !DIExpression()), !dbg !1344
  %3 = call ptr @__error(), !dbg !1345
  %4 = load i32, ptr %3, align 4, !dbg !1345, !tbaa !432
  %5 = icmp ne i32 %4, 0, !dbg !1345
  br i1 %5, label %6, label %10, !dbg !1347

6:                                                ; preds = %2
  %7 = call ptr @__error(), !dbg !1348
  %8 = load i32, ptr %7, align 4, !dbg !1348, !tbaa !432
  %9 = call ptr @quote(ptr noundef %0), !dbg !1350
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %8, ptr noundef @.str.41, ptr noundef %9), !dbg !1351
  store i32 1, ptr @exit_status, align 4, !dbg !1352, !tbaa !432
  br label %21, !dbg !1353

10:                                               ; preds = %2
  %11 = load i8, ptr %1, align 1, !dbg !1354, !tbaa !562
  %12 = icmp ne i8 %11, 0, !dbg !1354
  br i1 %12, label %13, label %20, !dbg !1356

13:                                               ; preds = %10
  %14 = icmp eq ptr %0, %1, !dbg !1357
  br i1 %14, label %15, label %17, !dbg !1360

15:                                               ; preds = %13
  %16 = call ptr @quote(ptr noundef %0), !dbg !1361
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.42, ptr noundef %16), !dbg !1362
  br label %19, !dbg !1362

17:                                               ; preds = %13
  %18 = call ptr @quote(ptr noundef %0), !dbg !1363
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.43, ptr noundef %18), !dbg !1364
  br label %19

19:                                               ; preds = %17, %15
  store i32 1, ptr @exit_status, align 4, !dbg !1365, !tbaa !432
  br label %20, !dbg !1366

20:                                               ; preds = %19, %10
  br label %21

21:                                               ; preds = %20, %6
  ret void, !dbg !1367
}

declare !dbg !1368 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !1372 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) #2

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
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn }
attributes #12 = { nounwind }
attributes #13 = { allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!64}
!llvm.ident = !{!232}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/printf.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 49)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 73)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 48)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 57)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 776, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 97)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1832, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 229)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2016, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 252)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3584, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 448)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1528, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 191)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 7)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 669, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "exit_status", scope: !64, file: !2, line: 77, type: !86, isLocal: true, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !81, globals: !87, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!65 = !{!66}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !67, line: 32, baseType: !68, size: 32, elements: !69)
!67 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!70 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!71 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!72 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!73 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!74 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!75 = !DIEnumerator(name: "c_quoting_style", value: 5)
!76 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!77 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!78 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!79 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!80 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!81 = !{!82, !84, !85, !68, !86}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !88, !93, !95, !100, !105, !107, !112, !114, !62, !119, !122, !128, !130, !132, !137, !139, !144, !146, !148, !150, !155, !160, !165, !170, !175, !180, !185, !190, !195, !197, !199, !201, !204, !206, !211, !216, !218, !220, !225, !227}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 677, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 16)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 683, type: !54, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 686, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 10)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 688, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 14)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 688, type: !90, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 696, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 3)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 704, type: !90, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 722, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 53)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "posixly_correct", scope: !64, file: !2, line: 80, type: !121, isLocal: true, isDefinition: true)
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !124, line: 660, type: !125, isLocal: true, isDefinition: true)
!124 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 2)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !124, line: 660, type: !90, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !124, line: 661, type: !97, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !124, line: 661, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 22)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !124, line: 662, type: !97, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !124, line: 662, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 15)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !124, line: 663, type: !97, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !124, line: 664, type: !97, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !124, line: 665, type: !97, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !124, line: 678, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 23)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !124, line: 678, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 40)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !124, line: 683, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 4)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !124, line: 689, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 71)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !124, line: 695, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 5)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !124, line: 696, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 27)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !124, line: 698, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 51)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !124, line: 699, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 12)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 577, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 24)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 612, type: !134, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 638, type: !3, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !14, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "cfcc_msg", scope: !64, file: !2, line: 84, type: !203, isLocal: true, isDefinition: true)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !109, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 29)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 35)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 360, type: !109, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 366, type: !125, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 37)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !187, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 41)
!232 = !{!"Homebrew clang version 16.0.4"}
!233 = !{i32 7, !"Dwarf Version", i32 4}
!234 = !{i32 2, !"Debug Info Version", i32 3}
!235 = !{i32 1, !"wchar_size", i32 4}
!236 = !{i32 8, !"PIC Level", i32 2}
!237 = !{i32 7, !"uwtable", i32 2}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 88, type: !240, scopeLine: 89, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !86}
!242 = !{!243}
!243 = !DILocalVariable(name: "status", arg: 1, scope: !239, file: !2, line: 88, type: !86)
!244 = !DILocation(line: 0, scope: !239)
!245 = !DILocation(line: 90, column: 14, scope: !246)
!246 = distinct !DILexicalBlock(scope: !239, file: !2, line: 90, column: 7)
!247 = !DILocation(line: 90, column: 7, scope: !239)
!248 = !DILocation(line: 91, column: 5, scope: !246)
!249 = !DILocation(line: 91, column: 5, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !2, line: 91, column: 5)
!251 = !{!252, !252, i64 0}
!252 = !{!"any pointer", !253, i64 0}
!253 = !{!"omnipotent char", !254, i64 0}
!254 = !{!"Simple C/C++ TBAA"}
!255 = !DILocation(line: 98, column: 15, scope: !256)
!256 = distinct !DILexicalBlock(scope: !246, file: !2, line: 93, column: 5)
!257 = !DILocation(line: 98, column: 29, scope: !256)
!258 = !DILocation(line: 94, column: 7, scope: !256)
!259 = !DILocation(line: 102, column: 5, scope: !256)
!260 = !DILocation(line: 99, column: 7, scope: !256)
!261 = !DILocation(line: 103, column: 39, scope: !256)
!262 = !DILocation(line: 103, column: 7, scope: !256)
!263 = !DILocation(line: 104, column: 42, scope: !256)
!264 = !DILocation(line: 104, column: 7, scope: !256)
!265 = !DILocation(line: 110, column: 5, scope: !256)
!266 = !DILocation(line: 105, column: 7, scope: !256)
!267 = !DILocation(line: 122, column: 5, scope: !256)
!268 = !DILocation(line: 111, column: 7, scope: !256)
!269 = !DILocation(line: 128, column: 5, scope: !256)
!270 = !DILocation(line: 123, column: 7, scope: !256)
!271 = !DILocation(line: 138, column: 5, scope: !256)
!272 = !DILocation(line: 129, column: 7, scope: !256)
!273 = !DILocation(line: 139, column: 7, scope: !256)
!274 = !DILocation(line: 140, column: 7, scope: !256)
!275 = !DILocation(line: 142, column: 3, scope: !239)
!276 = !DISubprogram(name: "fprintf", scope: !277, file: !277, line: 155, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!277 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!278 = !DISubroutineType(types: !279)
!279 = !{!86, !280, !335, null}
!280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !283, line: 157, baseType: !284)
!283 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !283, line: 126, size: 1216, elements: !285)
!285 = !{!286, !289, !290, !291, !293, !294, !299, !300, !301, !305, !309, !319, !323, !324, !327, !328, !330, !332, !333, !334}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !284, file: !283, line: 127, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !284, file: !283, line: 128, baseType: !86, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !284, file: !283, line: 129, baseType: !86, size: 32, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !284, file: !283, line: 130, baseType: !292, size: 16, offset: 128)
!292 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !284, file: !283, line: 131, baseType: !292, size: 16, offset: 144)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !284, file: !283, line: 132, baseType: !295, size: 128, offset: 192)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !283, line: 92, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !295, file: !283, line: 93, baseType: !287, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !295, file: !283, line: 94, baseType: !86, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !284, file: !283, line: 133, baseType: !86, size: 32, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !284, file: !283, line: 136, baseType: !84, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !284, file: !283, line: 137, baseType: !302, size: 64, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!86, !84}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !284, file: !283, line: 138, baseType: !306, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!86, !84, !85, !86}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !284, file: !283, line: 139, baseType: !310, size: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !84, !313, !86}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !283, line: 81, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !315, line: 71, baseType: !316)
!315 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !317, line: 48, baseType: !318)
!317 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!318 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !284, file: !283, line: 140, baseType: !320, size: 64, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!86, !84, !82, !86}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !284, file: !283, line: 143, baseType: !295, size: 128, offset: 704)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !284, file: !283, line: 144, baseType: !325, size: 64, offset: 832)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !283, line: 98, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !284, file: !283, line: 145, baseType: !86, size: 32, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !284, file: !283, line: 148, baseType: !329, size: 24, offset: 928)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 24, elements: !110)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !284, file: !283, line: 149, baseType: !331, size: 8, offset: 952)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 8, elements: !60)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !284, file: !283, line: 152, baseType: !295, size: 128, offset: 960)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !284, file: !283, line: 155, baseType: !86, size: 32, offset: 1088)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !284, file: !283, line: 156, baseType: !313, size: 64, offset: 1152)
!335 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!336 = !{}
!337 = !DISubprogram(name: "printf", scope: !277, file: !277, line: 175, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!338 = !DISubroutineType(types: !339)
!339 = !{!86, !335, null}
!340 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !277, file: !277, line: 157, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!341 = !DISubroutineType(types: !342)
!342 = !{!86, !335, !280}
!343 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !124, file: !124, line: 657, type: !344, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !82}
!346 = !{!347, !348, !355, !356, !358, !359}
!347 = !DILocalVariable(name: "program", arg: 1, scope: !343, file: !124, line: 657, type: !82)
!348 = !DILocalVariable(name: "infomap", scope: !343, file: !124, line: 659, type: !349)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 896, elements: !55)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !343, file: !124, line: 659, size: 128, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !351, file: !124, line: 659, baseType: !82, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !351, file: !124, line: 659, baseType: !82, size: 64, offset: 64)
!355 = !DILocalVariable(name: "node", scope: !343, file: !124, line: 669, type: !82)
!356 = !DILocalVariable(name: "map_prog", scope: !343, file: !124, line: 670, type: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!358 = !DILocalVariable(name: "lc_messages", scope: !343, file: !124, line: 682, type: !82)
!359 = !DILocalVariable(name: "url_program", scope: !343, file: !124, line: 695, type: !82)
!360 = !DILocation(line: 0, scope: !343)
!361 = !DILocation(line: 659, column: 3, scope: !343)
!362 = !DILocation(line: 659, column: 67, scope: !343)
!363 = !DILocation(line: 670, column: 36, scope: !343)
!364 = !DILocation(line: 672, column: 3, scope: !343)
!365 = !DILocation(line: 672, column: 20, scope: !343)
!366 = !{!367, !252, i64 0}
!367 = !{!"infomap", !252, i64 0, !252, i64 8}
!368 = !DILocation(line: 672, column: 10, scope: !343)
!369 = !DILocation(line: 672, column: 28, scope: !343)
!370 = !DILocation(line: 672, column: 33, scope: !343)
!371 = !DILocation(line: 672, column: 31, scope: !343)
!372 = !DILocation(line: 673, column: 13, scope: !343)
!373 = distinct !{!373, !364, !372, !374, !375}
!374 = !{!"llvm.loop.mustprogress"}
!375 = !{!"llvm.loop.unroll.disable"}
!376 = !DILocation(line: 675, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !343, file: !124, line: 675, column: 7)
!378 = !{!367, !252, i64 8}
!379 = !DILocation(line: 675, column: 7, scope: !377)
!380 = !DILocation(line: 675, column: 7, scope: !343)
!381 = !DILocation(line: 676, column: 22, scope: !377)
!382 = !DILocation(line: 676, column: 5, scope: !377)
!383 = !DILocation(line: 678, column: 3, scope: !343)
!384 = !DILocation(line: 682, column: 29, scope: !343)
!385 = !DILocation(line: 683, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !343, file: !124, line: 683, column: 7)
!387 = !DILocation(line: 683, column: 19, scope: !386)
!388 = !DILocation(line: 683, column: 22, scope: !386)
!389 = !DILocation(line: 683, column: 7, scope: !343)
!390 = !DILocation(line: 690, column: 61, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !124, line: 684, column: 5)
!392 = !DILocation(line: 689, column: 7, scope: !391)
!393 = !DILocation(line: 691, column: 5, scope: !391)
!394 = !DILocation(line: 695, column: 29, scope: !343)
!395 = !DILocation(line: 696, column: 3, scope: !343)
!396 = !DILocation(line: 699, column: 22, scope: !343)
!397 = !DILocation(line: 699, column: 17, scope: !343)
!398 = !DILocation(line: 698, column: 3, scope: !343)
!399 = !DILocation(line: 700, column: 1, scope: !343)
!400 = !DISubprogram(name: "exit", scope: !401, file: !401, line: 145, type: !240, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !336)
!401 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!402 = !DISubprogram(name: "strcmp", scope: !403, file: !403, line: 77, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!403 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!404 = !DISubroutineType(types: !405)
!405 = !{!86, !82, !82}
!406 = !DISubprogram(name: "setlocale", scope: !407, file: !407, line: 53, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!407 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!408 = !DISubroutineType(types: !409)
!409 = !{!85, !86, !82}
!410 = !DISubprogram(name: "strncmp", scope: !403, file: !403, line: 84, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!411 = !DISubroutineType(types: !412)
!412 = !{!86, !82, !82, !413}
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !414, line: 31, baseType: !415)
!414 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !317, line: 94, baseType: !416)
!416 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!417 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 662, type: !418, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !421)
!418 = !DISubroutineType(types: !419)
!419 = !{!86, !86, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!421 = !{!422, !423, !424, !425}
!422 = !DILocalVariable(name: "argc", arg: 1, scope: !417, file: !2, line: 662, type: !86)
!423 = !DILocalVariable(name: "argv", arg: 2, scope: !417, file: !2, line: 662, type: !420)
!424 = !DILocalVariable(name: "format", scope: !417, file: !2, line: 664, type: !85)
!425 = !DILocalVariable(name: "args_used", scope: !417, file: !2, line: 665, type: !86)
!426 = !DILocation(line: 0, scope: !417)
!427 = !DILocation(line: 668, column: 21, scope: !417)
!428 = !DILocation(line: 668, column: 3, scope: !417)
!429 = !DILocation(line: 669, column: 3, scope: !417)
!430 = !DILocation(line: 673, column: 3, scope: !417)
!431 = !DILocation(line: 675, column: 15, scope: !417)
!432 = !{!433, !433, i64 0}
!433 = !{!"int", !253, i64 0}
!434 = !DILocation(line: 677, column: 22, scope: !417)
!435 = !DILocation(line: 677, column: 49, scope: !417)
!436 = !DILocation(line: 677, column: 19, scope: !417)
!437 = !{!438, !438, i64 0}
!438 = !{!"_Bool", !253, i64 0}
!439 = !DILocation(line: 681, column: 12, scope: !440)
!440 = distinct !DILexicalBlock(scope: !417, file: !2, line: 681, column: 7)
!441 = !DILocation(line: 681, column: 7, scope: !417)
!442 = !DILocation(line: 683, column: 11, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !2, line: 683, column: 11)
!444 = distinct !DILexicalBlock(scope: !440, file: !2, line: 682, column: 5)
!445 = !DILocation(line: 683, column: 11, scope: !444)
!446 = !DILocation(line: 684, column: 9, scope: !443)
!447 = !DILocation(line: 686, column: 11, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !2, line: 686, column: 11)
!449 = !DILocation(line: 686, column: 11, scope: !444)
!450 = !DILocation(line: 688, column: 24, scope: !451)
!451 = distinct !DILexicalBlock(scope: !448, file: !2, line: 687, column: 9)
!452 = !DILocation(line: 688, column: 60, scope: !451)
!453 = !DILocation(line: 688, column: 11, scope: !451)
!454 = !DILocation(line: 690, column: 11, scope: !451)
!455 = !DILocation(line: 692, column: 5, scope: !444)
!456 = !DILocation(line: 696, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !417, file: !2, line: 696, column: 7)
!458 = !DILocation(line: 696, column: 16, scope: !457)
!459 = !DILocation(line: 696, column: 19, scope: !457)
!460 = !DILocation(line: 696, column: 7, scope: !417)
!461 = !DILocation(line: 698, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !2, line: 697, column: 5)
!463 = !DILocation(line: 699, column: 7, scope: !462)
!464 = !DILocation(line: 700, column: 5, scope: !462)
!465 = !DILocation(line: 702, column: 12, scope: !466)
!466 = distinct !DILexicalBlock(scope: !417, file: !2, line: 702, column: 7)
!467 = !DILocation(line: 702, column: 7, scope: !417)
!468 = !DILocation(line: 704, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !2, line: 703, column: 5)
!470 = !DILocation(line: 705, column: 7, scope: !469)
!471 = !DILocation(line: 708, column: 12, scope: !417)
!472 = !DILocation(line: 709, column: 8, scope: !417)
!473 = !DILocation(line: 710, column: 8, scope: !417)
!474 = !DILocation(line: 712, column: 3, scope: !417)
!475 = !DILocation(line: 714, column: 19, scope: !476)
!476 = distinct !DILexicalBlock(scope: !417, file: !2, line: 713, column: 5)
!477 = !DILocation(line: 715, column: 12, scope: !476)
!478 = !DILocation(line: 716, column: 12, scope: !476)
!479 = !DILocation(line: 717, column: 5, scope: !476)
!480 = !DILocation(line: 718, column: 20, scope: !417)
!481 = !DILocation(line: 718, column: 24, scope: !417)
!482 = !DILocation(line: 718, column: 32, scope: !417)
!483 = distinct !{!483, !474, !484, !374, !375}
!484 = !DILocation(line: 718, column: 35, scope: !417)
!485 = !DILocation(line: 720, column: 12, scope: !486)
!486 = distinct !DILexicalBlock(scope: !417, file: !2, line: 720, column: 7)
!487 = !DILocation(line: 720, column: 7, scope: !417)
!488 = !DILocation(line: 723, column: 19, scope: !486)
!489 = !DILocation(line: 723, column: 12, scope: !486)
!490 = !DILocation(line: 721, column: 5, scope: !486)
!491 = !DILocation(line: 725, column: 10, scope: !417)
!492 = !DILocation(line: 725, column: 3, scope: !417)
!493 = !DILocation(line: 726, column: 1, scope: !417)
!494 = !DISubprogram(name: "set_program_name", scope: !495, file: !495, line: 37, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!495 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!496 = !DISubprogram(name: "atexit", scope: !401, file: !401, line: 133, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!497 = !DISubroutineType(types: !498)
!498 = !{!86, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null}
!502 = !DISubprogram(name: "getenv", scope: !401, file: !401, line: 147, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!503 = !DISubroutineType(types: !504)
!504 = !{!85, !82}
!505 = !DISubprogram(name: "version_etc", scope: !506, file: !506, line: 65, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!506 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!507 = !DISubroutineType(types: !508)
!508 = !{null, !281, !82, !82, !82, null}
!509 = !DISubprogram(name: "error", scope: !510, file: !510, line: 395, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!510 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!511 = !DISubroutineType(types: !512)
!512 = !{null, !86, !86, !82, null}
!513 = distinct !DISubprogram(name: "print_formatted", scope: !2, file: !2, line: 489, type: !514, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{!86, !82, !86, !420}
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !532, !544, !551, !553}
!517 = !DILocalVariable(name: "format", arg: 1, scope: !513, file: !2, line: 489, type: !82)
!518 = !DILocalVariable(name: "argc", arg: 2, scope: !513, file: !2, line: 489, type: !86)
!519 = !DILocalVariable(name: "argv", arg: 3, scope: !513, file: !2, line: 489, type: !420)
!520 = !DILocalVariable(name: "save_argc", scope: !513, file: !2, line: 491, type: !86)
!521 = !DILocalVariable(name: "f", scope: !513, file: !2, line: 492, type: !82)
!522 = !DILocalVariable(name: "direc_start", scope: !513, file: !2, line: 493, type: !82)
!523 = !DILocalVariable(name: "direc_length", scope: !513, file: !2, line: 494, type: !413)
!524 = !DILocalVariable(name: "have_field_width", scope: !513, file: !2, line: 495, type: !121)
!525 = !DILocalVariable(name: "field_width", scope: !513, file: !2, line: 496, type: !86)
!526 = !DILocalVariable(name: "have_precision", scope: !513, file: !2, line: 497, type: !121)
!527 = !DILocalVariable(name: "precision", scope: !513, file: !2, line: 498, type: !86)
!528 = !DILocalVariable(name: "ok", scope: !513, file: !2, line: 499, type: !529)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 256)
!532 = !DILocalVariable(name: "width", scope: !533, file: !2, line: 573, type: !541)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 572, column: 17)
!534 = distinct !DILexicalBlock(scope: !535, file: !2, line: 571, column: 19)
!535 = distinct !DILexicalBlock(scope: !536, file: !2, line: 568, column: 13)
!536 = distinct !DILexicalBlock(scope: !537, file: !2, line: 567, column: 15)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 504, column: 9)
!538 = distinct !DILexicalBlock(scope: !539, file: !2, line: 502, column: 5)
!539 = distinct !DILexicalBlock(scope: !540, file: !2, line: 501, column: 3)
!540 = distinct !DILexicalBlock(scope: !513, file: !2, line: 501, column: 3)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !542, line: 32, baseType: !543)
!542 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_intmax_t.h", directory: "")
!543 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!544 = !DILocalVariable(name: "prec", scope: !545, file: !2, line: 603, type: !541)
!545 = distinct !DILexicalBlock(scope: !546, file: !2, line: 602, column: 21)
!546 = distinct !DILexicalBlock(scope: !547, file: !2, line: 601, column: 23)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 598, column: 17)
!548 = distinct !DILexicalBlock(scope: !549, file: !2, line: 597, column: 19)
!549 = distinct !DILexicalBlock(scope: !550, file: !2, line: 593, column: 13)
!550 = distinct !DILexicalBlock(scope: !537, file: !2, line: 592, column: 15)
!551 = !DILocalVariable(name: "conversion", scope: !552, file: !2, line: 636, type: !288)
!552 = distinct !DILexicalBlock(scope: !537, file: !2, line: 635, column: 11)
!553 = !DILabel(scope: !537, name: "no_more_flag_characters", file: !2, line: 565)
!554 = !DILocation(line: 0, scope: !513)
!555 = !DILocation(line: 499, column: 3, scope: !513)
!556 = !DILocation(line: 499, column: 8, scope: !513)
!557 = !DILocation(line: 501, column: 8, scope: !540)
!558 = !DILocation(line: 496, column: 7, scope: !513)
!559 = !DILocation(line: 501, scope: !540)
!560 = !DILocation(line: 498, column: 7, scope: !513)
!561 = !DILocation(line: 501, column: 20, scope: !539)
!562 = !{!253, !253, i64 0}
!563 = !DILocation(line: 501, column: 3, scope: !540)
!564 = !DILocation(line: 503, column: 15, scope: !538)
!565 = !DILocation(line: 503, column: 7, scope: !538)
!566 = !DILocation(line: 506, column: 26, scope: !537)
!567 = !DILocation(line: 509, column: 15, scope: !568)
!568 = distinct !DILexicalBlock(scope: !537, file: !2, line: 509, column: 15)
!569 = !DILocation(line: 509, column: 18, scope: !568)
!570 = !DILocation(line: 509, column: 15, scope: !537)
!571 = !DILocation(line: 511, column: 15, scope: !572)
!572 = distinct !DILexicalBlock(scope: !568, file: !2, line: 510, column: 13)
!573 = !DILocation(line: 512, column: 15, scope: !572)
!574 = !DILocation(line: 514, column: 15, scope: !575)
!575 = distinct !DILexicalBlock(scope: !537, file: !2, line: 514, column: 15)
!576 = !DILocation(line: 514, column: 18, scope: !575)
!577 = !DILocation(line: 514, column: 15, scope: !537)
!578 = !DILocation(line: 518, column: 24, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !2, line: 518, column: 19)
!580 = distinct !DILexicalBlock(scope: !575, file: !2, line: 515, column: 13)
!581 = !DILocation(line: 518, column: 19, scope: !580)
!582 = !DILocation(line: 520, column: 37, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !2, line: 519, column: 17)
!584 = !DILocation(line: 520, column: 19, scope: !583)
!585 = !DILocation(line: 521, column: 19, scope: !583)
!586 = !DILocation(line: 522, column: 19, scope: !583)
!587 = !DILocation(line: 523, column: 17, scope: !583)
!588 = !DILocation(line: 524, column: 15, scope: !580)
!589 = !DILocation(line: 527, column: 15, scope: !590)
!590 = distinct !DILexicalBlock(scope: !537, file: !2, line: 527, column: 15)
!591 = !DILocation(line: 527, column: 18, scope: !590)
!592 = !DILocation(line: 527, column: 15, scope: !537)
!593 = !DILocation(line: 529, column: 24, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !2, line: 529, column: 19)
!595 = distinct !DILexicalBlock(scope: !590, file: !2, line: 528, column: 13)
!596 = !DILocation(line: 529, column: 19, scope: !595)
!597 = !DILocation(line: 531, column: 70, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !2, line: 530, column: 17)
!599 = !DILocation(line: 531, column: 26, scope: !598)
!600 = !DILocation(line: 532, column: 26, scope: !598)
!601 = !DILocation(line: 531, column: 19, scope: !598)
!602 = !DILocation(line: 533, column: 19, scope: !598)
!603 = !DILocation(line: 534, column: 19, scope: !598)
!604 = !DILocation(line: 535, column: 17, scope: !598)
!605 = !DILocation(line: 536, column: 15, scope: !595)
!606 = !DILocation(line: 539, column: 11, scope: !537)
!607 = !DILocation(line: 542, column: 43, scope: !537)
!608 = !DILocation(line: 542, column: 51, scope: !537)
!609 = !DILocation(line: 542, column: 33, scope: !537)
!610 = !DILocation(line: 542, column: 41, scope: !537)
!611 = !DILocation(line: 542, column: 23, scope: !537)
!612 = !DILocation(line: 542, column: 31, scope: !537)
!613 = !DILocation(line: 542, column: 13, scope: !537)
!614 = !DILocation(line: 542, column: 21, scope: !537)
!615 = !DILocation(line: 541, column: 63, scope: !537)
!616 = !DILocation(line: 541, column: 71, scope: !537)
!617 = !DILocation(line: 541, column: 53, scope: !537)
!618 = !DILocation(line: 541, column: 61, scope: !537)
!619 = !DILocation(line: 541, column: 43, scope: !537)
!620 = !DILocation(line: 541, column: 51, scope: !537)
!621 = !DILocation(line: 541, column: 33, scope: !537)
!622 = !DILocation(line: 541, column: 41, scope: !537)
!623 = !DILocation(line: 541, column: 23, scope: !537)
!624 = !DILocation(line: 541, column: 31, scope: !537)
!625 = !DILocation(line: 541, column: 13, scope: !537)
!626 = !DILocation(line: 541, column: 21, scope: !537)
!627 = !DILocation(line: 540, column: 61, scope: !537)
!628 = !DILocation(line: 540, column: 69, scope: !537)
!629 = !DILocation(line: 540, column: 51, scope: !537)
!630 = !DILocation(line: 540, column: 59, scope: !537)
!631 = !DILocation(line: 540, column: 41, scope: !537)
!632 = !DILocation(line: 540, column: 49, scope: !537)
!633 = !DILocation(line: 540, column: 31, scope: !537)
!634 = !DILocation(line: 540, column: 39, scope: !537)
!635 = !DILocation(line: 540, column: 21, scope: !537)
!636 = !DILocation(line: 540, column: 29, scope: !537)
!637 = !DILocation(line: 540, column: 11, scope: !537)
!638 = !DILocation(line: 540, column: 19, scope: !537)
!639 = !DILocation(line: 544, column: 11, scope: !537)
!640 = !DILocation(line: 0, scope: !537)
!641 = !DILocation(line: 545, column: 21, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !2, line: 544, column: 11)
!643 = distinct !DILexicalBlock(scope: !537, file: !2, line: 544, column: 11)
!644 = !DILocation(line: 545, column: 13, scope: !642)
!645 = !DILocation(line: 552, column: 49, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !2, line: 546, column: 15)
!647 = !DILocation(line: 552, column: 57, scope: !646)
!648 = !DILocation(line: 552, column: 39, scope: !646)
!649 = !DILocation(line: 552, column: 47, scope: !646)
!650 = !DILocation(line: 552, column: 29, scope: !646)
!651 = !DILocation(line: 552, column: 37, scope: !646)
!652 = !DILocation(line: 552, column: 19, scope: !646)
!653 = !DILocation(line: 552, column: 27, scope: !646)
!654 = !DILocation(line: 551, column: 57, scope: !646)
!655 = !DILocation(line: 551, column: 65, scope: !646)
!656 = !DILocation(line: 551, column: 47, scope: !646)
!657 = !DILocation(line: 551, column: 55, scope: !646)
!658 = !DILocation(line: 551, column: 37, scope: !646)
!659 = !DILocation(line: 551, column: 45, scope: !646)
!660 = !DILocation(line: 551, column: 27, scope: !646)
!661 = !DILocation(line: 551, column: 35, scope: !646)
!662 = !DILocation(line: 551, column: 17, scope: !646)
!663 = !DILocation(line: 551, column: 25, scope: !646)
!664 = !DILocation(line: 553, column: 17, scope: !646)
!665 = !DILocation(line: 555, column: 17, scope: !646)
!666 = !DILocation(line: 557, column: 57, scope: !646)
!667 = !DILocation(line: 557, column: 65, scope: !646)
!668 = !DILocation(line: 557, column: 47, scope: !646)
!669 = !DILocation(line: 557, column: 55, scope: !646)
!670 = !DILocation(line: 557, column: 37, scope: !646)
!671 = !DILocation(line: 557, column: 45, scope: !646)
!672 = !DILocation(line: 557, column: 27, scope: !646)
!673 = !DILocation(line: 557, column: 35, scope: !646)
!674 = !DILocation(line: 557, column: 17, scope: !646)
!675 = !DILocation(line: 557, column: 25, scope: !646)
!676 = !DILocation(line: 558, column: 17, scope: !646)
!677 = !DILocation(line: 560, column: 27, scope: !646)
!678 = !DILocation(line: 560, column: 35, scope: !646)
!679 = !DILocation(line: 560, column: 17, scope: !646)
!680 = !DILocation(line: 560, column: 25, scope: !646)
!681 = !DILocation(line: 561, column: 17, scope: !646)
!682 = !DILocation(line: 563, column: 17, scope: !646)
!683 = !DILocation(line: 564, column: 15, scope: !646)
!684 = !DILocation(line: 544, column: 20, scope: !642)
!685 = !DILocation(line: 544, column: 36, scope: !642)
!686 = !DILocation(line: 544, column: 11, scope: !642)
!687 = distinct !{!687, !688, !689, !375}
!688 = !DILocation(line: 544, column: 11, scope: !643)
!689 = !DILocation(line: 564, column: 15, scope: !643)
!690 = !DILocation(line: 565, column: 9, scope: !537)
!691 = !DILocation(line: 567, column: 15, scope: !536)
!692 = !DILocation(line: 567, column: 18, scope: !536)
!693 = !DILocation(line: 567, column: 15, scope: !537)
!694 = !DILocation(line: 569, column: 15, scope: !535)
!695 = !DILocation(line: 570, column: 15, scope: !535)
!696 = !DILocation(line: 571, column: 24, scope: !534)
!697 = !DILocation(line: 571, column: 19, scope: !535)
!698 = !DILocation(line: 573, column: 48, scope: !533)
!699 = !DILocation(line: 573, column: 36, scope: !533)
!700 = !DILocation(line: 0, scope: !533)
!701 = !DILocation(line: 574, column: 31, scope: !702)
!702 = distinct !DILexicalBlock(scope: !533, file: !2, line: 574, column: 23)
!703 = !DILocation(line: 574, column: 40, scope: !702)
!704 = !DILocation(line: 574, column: 49, scope: !702)
!705 = !DILocation(line: 574, column: 23, scope: !533)
!706 = !DILocation(line: 575, column: 35, scope: !702)
!707 = !DILocation(line: 575, column: 21, scope: !702)
!708 = !DILocation(line: 577, column: 21, scope: !702)
!709 = !DILocation(line: 579, column: 19, scope: !533)
!710 = !DILocation(line: 580, column: 19, scope: !533)
!711 = !DILocation(line: 581, column: 17, scope: !533)
!712 = !DILocation(line: 0, scope: !534)
!713 = !DILocation(line: 585, column: 13, scope: !535)
!714 = !DILocation(line: 587, column: 13, scope: !536)
!715 = !DILocation(line: 587, column: 20, scope: !536)
!716 = !DILocation(line: 589, column: 17, scope: !717)
!717 = distinct !DILexicalBlock(scope: !536, file: !2, line: 588, column: 15)
!718 = !DILocation(line: 590, column: 17, scope: !717)
!719 = distinct !{!719, !714, !720, !374, !375}
!720 = !DILocation(line: 591, column: 15, scope: !536)
!721 = !DILocation(line: 592, column: 15, scope: !550)
!722 = !DILocation(line: 592, column: 18, scope: !550)
!723 = !DILocation(line: 592, column: 15, scope: !537)
!724 = !DILocation(line: 594, column: 15, scope: !549)
!725 = !DILocation(line: 595, column: 15, scope: !549)
!726 = !DILocation(line: 596, column: 15, scope: !549)
!727 = !DILocation(line: 596, column: 23, scope: !549)
!728 = !DILocation(line: 597, column: 19, scope: !548)
!729 = !DILocation(line: 597, column: 22, scope: !548)
!730 = !DILocation(line: 597, column: 19, scope: !549)
!731 = !DILocation(line: 599, column: 19, scope: !547)
!732 = !DILocation(line: 600, column: 19, scope: !547)
!733 = !DILocation(line: 601, column: 28, scope: !546)
!734 = !DILocation(line: 601, column: 23, scope: !547)
!735 = !DILocation(line: 603, column: 51, scope: !545)
!736 = !DILocation(line: 603, column: 39, scope: !545)
!737 = !DILocation(line: 0, scope: !545)
!738 = !DILocation(line: 604, column: 32, scope: !739)
!739 = distinct !DILexicalBlock(scope: !545, file: !2, line: 604, column: 27)
!740 = !DILocation(line: 604, column: 27, scope: !545)
!741 = !DILocation(line: 610, column: 25, scope: !742)
!742 = distinct !DILexicalBlock(scope: !739, file: !2, line: 605, column: 25)
!743 = !DILocation(line: 611, column: 40, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !2, line: 611, column: 32)
!745 = !DILocation(line: 611, column: 32, scope: !739)
!746 = !DILocation(line: 612, column: 25, scope: !744)
!747 = !DILocation(line: 615, column: 37, scope: !744)
!748 = !DILocation(line: 0, scope: !739)
!749 = !DILocation(line: 616, column: 23, scope: !545)
!750 = !DILocation(line: 617, column: 23, scope: !545)
!751 = !DILocation(line: 618, column: 21, scope: !545)
!752 = !DILocation(line: 0, scope: !546)
!753 = !DILocation(line: 622, column: 17, scope: !547)
!754 = !DILocation(line: 624, column: 17, scope: !548)
!755 = !DILocation(line: 0, scope: !549)
!756 = !DILocation(line: 624, column: 24, scope: !548)
!757 = !DILocation(line: 626, column: 21, scope: !758)
!758 = distinct !DILexicalBlock(scope: !548, file: !2, line: 625, column: 19)
!759 = !DILocation(line: 627, column: 21, scope: !758)
!760 = distinct !{!760, !754, !761, !374, !375}
!761 = !DILocation(line: 628, column: 19, scope: !548)
!762 = !DILocation(line: 629, column: 13, scope: !549)
!763 = !DILocation(line: 631, column: 11, scope: !537)
!764 = !DILocation(line: 631, column: 18, scope: !537)
!765 = !DILocation(line: 631, column: 21, scope: !537)
!766 = !DILocation(line: 631, column: 28, scope: !537)
!767 = !DILocation(line: 631, column: 31, scope: !537)
!768 = !DILocation(line: 631, column: 34, scope: !537)
!769 = !DILocation(line: 631, column: 41, scope: !537)
!770 = !DILocation(line: 631, column: 44, scope: !537)
!771 = !DILocation(line: 631, column: 47, scope: !537)
!772 = !DILocation(line: 632, column: 18, scope: !537)
!773 = !DILocation(line: 632, column: 21, scope: !537)
!774 = !DILocation(line: 632, column: 24, scope: !537)
!775 = !DILocation(line: 632, column: 31, scope: !537)
!776 = !DILocation(line: 632, column: 34, scope: !537)
!777 = !DILocation(line: 632, column: 37, scope: !537)
!778 = !DILocation(line: 632, column: 44, scope: !537)
!779 = !DILocation(line: 632, column: 47, scope: !537)
!780 = !DILocation(line: 632, column: 50, scope: !537)
!781 = !DILocation(line: 633, column: 13, scope: !537)
!782 = distinct !{!782, !763, !783, !374, !375}
!783 = !DILocation(line: 633, column: 15, scope: !537)
!784 = !DILocation(line: 636, column: 40, scope: !552)
!785 = !DILocation(line: 0, scope: !552)
!786 = !DILocation(line: 637, column: 19, scope: !787)
!787 = distinct !DILexicalBlock(scope: !552, file: !2, line: 637, column: 17)
!788 = !DILocation(line: 637, column: 17, scope: !552)
!789 = !DILocation(line: 638, column: 15, scope: !787)
!790 = !DILocation(line: 643, column: 51, scope: !537)
!791 = !DILocation(line: 644, column: 24, scope: !537)
!792 = !DILocation(line: 645, column: 24, scope: !537)
!793 = !DILocation(line: 646, column: 30, scope: !537)
!794 = !DILocation(line: 646, column: 25, scope: !537)
!795 = !DILocation(line: 646, column: 47, scope: !537)
!796 = !DILocation(line: 646, column: 56, scope: !537)
!797 = !DILocation(line: 646, column: 51, scope: !537)
!798 = !DILocation(line: 643, column: 11, scope: !537)
!799 = !DILocation(line: 647, column: 11, scope: !537)
!800 = !DILocation(line: 650, column: 16, scope: !537)
!801 = !DILocation(line: 650, column: 13, scope: !537)
!802 = !DILocation(line: 651, column: 11, scope: !537)
!803 = !DILocation(line: 654, column: 11, scope: !537)
!804 = !DILocation(line: 655, column: 9, scope: !537)
!805 = !DILocation(line: 0, scope: !540)
!806 = !DILocation(line: 656, column: 5, scope: !538)
!807 = !DILocation(line: 501, column: 24, scope: !539)
!808 = !DILocation(line: 501, column: 3, scope: !539)
!809 = distinct !{!809, !563, !810, !374, !375}
!810 = !DILocation(line: 656, column: 5, scope: !540)
!811 = !DILocation(line: 658, column: 20, scope: !513)
!812 = !DILocation(line: 659, column: 1, scope: !513)
!813 = !DILocation(line: 658, column: 3, scope: !513)
!814 = !DISubprogram(name: "quote", scope: !815, file: !815, line: 44, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!815 = !DIFile(filename: "../lib/quote.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!816 = !DISubroutineType(types: !817)
!817 = !{!82, !82}
!818 = !DISubprogram(name: "putc_unlocked", scope: !277, file: !277, line: 301, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!819 = !DISubroutineType(types: !820)
!820 = !{!86, !86, !281}
!821 = distinct !DISubprogram(name: "print_esc_string", scope: !2, file: !2, line: 324, type: !344, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !822)
!822 = !{!823}
!823 = !DILocalVariable(name: "str", arg: 1, scope: !821, file: !2, line: 324, type: !82)
!824 = !DILocation(line: 0, scope: !821)
!825 = !DILocation(line: 326, column: 3, scope: !821)
!826 = !DILocation(line: 326, column: 10, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !2, line: 326, column: 3)
!828 = distinct !DILexicalBlock(scope: !821, file: !2, line: 326, column: 3)
!829 = !DILocation(line: 326, column: 3, scope: !828)
!830 = !DILocation(line: 327, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !2, line: 327, column: 9)
!832 = !DILocation(line: 327, column: 14, scope: !831)
!833 = !DILocation(line: 327, column: 9, scope: !827)
!834 = !DILocation(line: 328, column: 14, scope: !831)
!835 = !DILocation(line: 328, column: 11, scope: !831)
!836 = !DILocation(line: 328, column: 7, scope: !831)
!837 = !DILocation(line: 330, column: 7, scope: !831)
!838 = !DILocation(line: 327, column: 17, scope: !831)
!839 = !DILocation(line: 326, column: 19, scope: !827)
!840 = !DILocation(line: 326, column: 3, scope: !827)
!841 = distinct !{!841, !829, !842, !374, !375}
!842 = !DILocation(line: 330, column: 7, scope: !828)
!843 = !DILocation(line: 331, column: 1, scope: !821)
!844 = !DISubprogram(name: "quotearg_style", scope: !67, file: !67, line: 383, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!845 = !DISubroutineType(types: !846)
!846 = !{!85, !66, !82}
!847 = distinct !DISubprogram(name: "vstrtoimax", scope: !2, file: !2, line: 205, type: !848, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{!541, !82}
!850 = !{!851, !852, !853, !854, !857, !871, !874, !875}
!851 = !DILocalVariable(name: "s", arg: 1, scope: !847, file: !2, line: 205, type: !82)
!852 = !DILocalVariable(name: "end", scope: !847, file: !2, line: 205, type: !85)
!853 = !DILocalVariable(name: "val", scope: !847, file: !2, line: 205, type: !541)
!854 = !DILocalVariable(name: "ch", scope: !855, file: !2, line: 205, type: !288)
!855 = distinct !DILexicalBlock(scope: !856, file: !2, line: 205, column: 1)
!856 = distinct !DILexicalBlock(scope: !847, file: !2, line: 205, column: 1)
!857 = !DILocalVariable(name: "mbstate", scope: !858, file: !2, line: 205, type: !860)
!858 = distinct !DILexicalBlock(scope: !859, file: !2, line: 205, column: 1)
!859 = distinct !DILexicalBlock(scope: !855, file: !2, line: 205, column: 1)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !861, line: 32, baseType: !862)
!861 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mbstate_t.h", directory: "")
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !317, line: 83, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !317, line: 81, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !317, line: 78, size: 1024, elements: !865)
!865 = !{!866, !870}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !864, file: !317, line: 79, baseType: !867, size: 1024)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !864, file: !317, line: 80, baseType: !318, size: 64)
!871 = !DILocalVariable(name: "wc", scope: !858, file: !2, line: 205, type: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !873, line: 74, baseType: !86)
!873 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!874 = !DILocalVariable(name: "slen", scope: !858, file: !2, line: 205, type: !413)
!875 = !DILocalVariable(name: "bytes", scope: !858, file: !2, line: 205, type: !876)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !877, line: 31, baseType: !878)
!877 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_ssize_t.h", directory: "")
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ssize_t", file: !317, line: 121, baseType: !543)
!879 = !DILocation(line: 0, scope: !847)
!880 = !DILocation(line: 205, column: 1, scope: !847)
!881 = !DILocation(line: 205, column: 1, scope: !856)
!882 = !DILocation(line: 205, column: 1, scope: !855)
!883 = !DILocation(line: 0, scope: !855)
!884 = !DILocation(line: 205, column: 1, scope: !859)
!885 = !DILocation(line: 205, column: 1, scope: !858)
!886 = !DILocation(line: 0, scope: !858)
!887 = !DILocation(line: 205, column: 1, scope: !888)
!888 = distinct !DILexicalBlock(scope: !858, file: !2, line: 205, column: 1)
!889 = !DILocation(line: 205, column: 1, scope: !890)
!890 = distinct !DILexicalBlock(scope: !888, file: !2, line: 205, column: 1)
!891 = !DILocation(line: 205, column: 1, scope: !892)
!892 = distinct !DILexicalBlock(scope: !855, file: !2, line: 205, column: 1)
!893 = !{i8 0, i8 2}
!894 = !DILocation(line: 205, column: 1, scope: !895)
!895 = distinct !DILexicalBlock(scope: !856, file: !2, line: 205, column: 1)
!896 = distinct !DISubprogram(name: "print_direc", scope: !2, file: !2, line: 342, type: !897, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !899)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !82, !413, !4, !121, !86, !121, !86, !82}
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !911, !912, !913, !916, !920}
!900 = !DILocalVariable(name: "start", arg: 1, scope: !896, file: !2, line: 342, type: !82)
!901 = !DILocalVariable(name: "length", arg: 2, scope: !896, file: !2, line: 342, type: !413)
!902 = !DILocalVariable(name: "conversion", arg: 3, scope: !896, file: !2, line: 342, type: !4)
!903 = !DILocalVariable(name: "have_field_width", arg: 4, scope: !896, file: !2, line: 343, type: !121)
!904 = !DILocalVariable(name: "field_width", arg: 5, scope: !896, file: !2, line: 343, type: !86)
!905 = !DILocalVariable(name: "have_precision", arg: 6, scope: !896, file: !2, line: 344, type: !121)
!906 = !DILocalVariable(name: "precision", arg: 7, scope: !896, file: !2, line: 344, type: !86)
!907 = !DILocalVariable(name: "argument", arg: 8, scope: !896, file: !2, line: 345, type: !82)
!908 = !DILocalVariable(name: "p", scope: !896, file: !2, line: 347, type: !85)
!909 = !DILocalVariable(name: "q", scope: !910, file: !2, line: 353, type: !85)
!910 = distinct !DILexicalBlock(scope: !896, file: !2, line: 352, column: 3)
!911 = !DILocalVariable(name: "length_modifier", scope: !910, file: !2, line: 354, type: !82)
!912 = !DILocalVariable(name: "length_modifier_len", scope: !910, file: !2, line: 355, type: !413)
!913 = !DILocalVariable(name: "arg", scope: !914, file: !2, line: 388, type: !541)
!914 = distinct !DILexicalBlock(scope: !915, file: !2, line: 387, column: 7)
!915 = distinct !DILexicalBlock(scope: !896, file: !2, line: 384, column: 5)
!916 = !DILocalVariable(name: "arg", scope: !917, file: !2, line: 411, type: !918)
!917 = distinct !DILexicalBlock(scope: !915, file: !2, line: 410, column: 7)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !919, line: 32, baseType: !416)
!919 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!920 = !DILocalVariable(name: "arg", scope: !921, file: !2, line: 438, type: !922)
!921 = distinct !DILexicalBlock(scope: !915, file: !2, line: 437, column: 7)
!922 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!923 = !DILocation(line: 0, scope: !896)
!924 = !DILocation(line: 357, column: 13, scope: !910)
!925 = !DILocation(line: 357, column: 5, scope: !910)
!926 = !DILocation(line: 0, scope: !910)
!927 = !DILocation(line: 362, column: 9, scope: !928)
!928 = distinct !DILexicalBlock(scope: !910, file: !2, line: 358, column: 7)
!929 = !DILocation(line: 368, column: 9, scope: !928)
!930 = !DILocation(line: 373, column: 9, scope: !928)
!931 = !DILocation(line: 0, scope: !928)
!932 = !DILocation(line: 376, column: 25, scope: !910)
!933 = !DILocation(line: 376, column: 47, scope: !910)
!934 = !DILocation(line: 376, column: 9, scope: !910)
!935 = !DILocation(line: 377, column: 9, scope: !910)
!936 = !DILocation(line: 378, column: 9, scope: !910)
!937 = !DILocation(line: 379, column: 7, scope: !910)
!938 = !DILocation(line: 379, column: 10, scope: !910)
!939 = !DILocation(line: 380, column: 8, scope: !910)
!940 = !DILocation(line: 383, column: 11, scope: !896)
!941 = !DILocation(line: 383, column: 3, scope: !896)
!942 = !DILocation(line: 388, column: 24, scope: !914)
!943 = !DILocation(line: 0, scope: !914)
!944 = !DILocation(line: 389, column: 14, scope: !945)
!945 = distinct !DILexicalBlock(scope: !914, file: !2, line: 389, column: 13)
!946 = !DILocation(line: 389, column: 13, scope: !914)
!947 = !DILocation(line: 391, column: 18, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !2, line: 391, column: 17)
!949 = distinct !DILexicalBlock(scope: !945, file: !2, line: 390, column: 11)
!950 = !DILocation(line: 391, column: 17, scope: !949)
!951 = !DILocation(line: 392, column: 15, scope: !948)
!952 = !DILocation(line: 394, column: 15, scope: !948)
!953 = !DILocation(line: 395, column: 11, scope: !949)
!954 = !DILocation(line: 398, column: 18, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !2, line: 398, column: 17)
!956 = distinct !DILexicalBlock(scope: !945, file: !2, line: 397, column: 11)
!957 = !DILocation(line: 398, column: 17, scope: !956)
!958 = !DILocation(line: 399, column: 15, scope: !955)
!959 = !DILocation(line: 401, column: 15, scope: !955)
!960 = !DILocation(line: 404, column: 7, scope: !915)
!961 = !DILocation(line: 411, column: 25, scope: !917)
!962 = !DILocation(line: 0, scope: !917)
!963 = !DILocation(line: 412, column: 14, scope: !964)
!964 = distinct !DILexicalBlock(scope: !917, file: !2, line: 412, column: 13)
!965 = !DILocation(line: 412, column: 13, scope: !917)
!966 = !DILocation(line: 414, column: 18, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !2, line: 414, column: 17)
!968 = distinct !DILexicalBlock(scope: !964, file: !2, line: 413, column: 11)
!969 = !DILocation(line: 414, column: 17, scope: !968)
!970 = !DILocation(line: 415, column: 15, scope: !967)
!971 = !DILocation(line: 417, column: 15, scope: !967)
!972 = !DILocation(line: 418, column: 11, scope: !968)
!973 = !DILocation(line: 421, column: 18, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !2, line: 421, column: 17)
!975 = distinct !DILexicalBlock(scope: !964, file: !2, line: 420, column: 11)
!976 = !DILocation(line: 421, column: 17, scope: !975)
!977 = !DILocation(line: 422, column: 15, scope: !974)
!978 = !DILocation(line: 424, column: 15, scope: !974)
!979 = !DILocation(line: 427, column: 7, scope: !915)
!980 = !DILocation(line: 438, column: 27, scope: !921)
!981 = !DILocation(line: 0, scope: !921)
!982 = !DILocation(line: 439, column: 14, scope: !983)
!983 = distinct !DILexicalBlock(scope: !921, file: !2, line: 439, column: 13)
!984 = !DILocation(line: 439, column: 13, scope: !921)
!985 = !DILocation(line: 441, column: 18, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !2, line: 441, column: 17)
!987 = distinct !DILexicalBlock(scope: !983, file: !2, line: 440, column: 11)
!988 = !DILocation(line: 441, column: 17, scope: !987)
!989 = !DILocation(line: 442, column: 15, scope: !986)
!990 = !DILocation(line: 444, column: 15, scope: !986)
!991 = !DILocation(line: 445, column: 11, scope: !987)
!992 = !DILocation(line: 448, column: 18, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !2, line: 448, column: 17)
!994 = distinct !DILexicalBlock(scope: !983, file: !2, line: 447, column: 11)
!995 = !DILocation(line: 448, column: 17, scope: !994)
!996 = !DILocation(line: 449, column: 15, scope: !993)
!997 = !DILocation(line: 451, column: 15, scope: !993)
!998 = !DILocation(line: 454, column: 7, scope: !915)
!999 = !DILocation(line: 457, column: 12, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !915, file: !2, line: 457, column: 11)
!1001 = !DILocation(line: 457, column: 11, scope: !915)
!1002 = !DILocation(line: 458, column: 21, scope: !1000)
!1003 = !DILocation(line: 458, column: 9, scope: !1000)
!1004 = !DILocation(line: 460, column: 34, scope: !1000)
!1005 = !DILocation(line: 460, column: 9, scope: !1000)
!1006 = !DILocation(line: 461, column: 7, scope: !915)
!1007 = !DILocation(line: 464, column: 12, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !915, file: !2, line: 464, column: 11)
!1009 = !DILocation(line: 464, column: 11, scope: !915)
!1010 = !DILocation(line: 466, column: 16, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 466, column: 15)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 465, column: 9)
!1013 = !DILocation(line: 466, column: 15, scope: !1012)
!1014 = !DILocation(line: 467, column: 13, scope: !1011)
!1015 = !DILocation(line: 469, column: 13, scope: !1011)
!1016 = !DILocation(line: 470, column: 9, scope: !1012)
!1017 = !DILocation(line: 473, column: 16, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 473, column: 15)
!1019 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 472, column: 9)
!1020 = !DILocation(line: 473, column: 15, scope: !1019)
!1021 = !DILocation(line: 474, column: 13, scope: !1018)
!1022 = !DILocation(line: 476, column: 13, scope: !1018)
!1023 = !DILocation(line: 478, column: 7, scope: !915)
!1024 = !DILocation(line: 481, column: 3, scope: !896)
!1025 = !DILocation(line: 482, column: 1, scope: !896)
!1026 = distinct !DISubprogram(name: "print_esc", scope: !2, file: !2, line: 256, type: !1027, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!86, !82, !121}
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1041}
!1030 = !DILocalVariable(name: "escstart", arg: 1, scope: !1026, file: !2, line: 256, type: !82)
!1031 = !DILocalVariable(name: "octal_0", arg: 2, scope: !1026, file: !2, line: 256, type: !121)
!1032 = !DILocalVariable(name: "p", scope: !1026, file: !2, line: 258, type: !82)
!1033 = !DILocalVariable(name: "esc_value", scope: !1026, file: !2, line: 259, type: !86)
!1034 = !DILocalVariable(name: "esc_length", scope: !1026, file: !2, line: 260, type: !86)
!1035 = !DILocalVariable(name: "esc_char", scope: !1036, file: !2, line: 288, type: !4)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 287, column: 5)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 286, column: 12)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 284, column: 12)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 273, column: 12)
!1040 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 262, column: 7)
!1041 = !DILocalVariable(name: "uni_value", scope: !1036, file: !2, line: 289, type: !68)
!1042 = !DILocation(line: 0, scope: !1026)
!1043 = !DILocation(line: 258, column: 28, scope: !1026)
!1044 = !DILocation(line: 262, column: 7, scope: !1040)
!1045 = !DILocation(line: 262, column: 10, scope: !1040)
!1046 = !DILocation(line: 262, column: 7, scope: !1026)
!1047 = !DILocation(line: 265, column: 28, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 265, column: 7)
!1049 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 263, column: 5)
!1050 = !DILocation(line: 265, column: 12, scope: !1048)
!1051 = !DILocation(line: 0, scope: !1048)
!1052 = !DILocation(line: 266, column: 23, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 265, column: 7)
!1054 = !DILocation(line: 266, column: 27, scope: !1053)
!1055 = !DILocation(line: 266, column: 50, scope: !1053)
!1056 = !DILocation(line: 266, column: 40, scope: !1053)
!1057 = !DILocation(line: 266, column: 30, scope: !1053)
!1058 = !DILocation(line: 0, scope: !1053)
!1059 = !DILocation(line: 265, column: 7, scope: !1048)
!1060 = !DILocation(line: 268, column: 31, scope: !1053)
!1061 = !DILocation(line: 268, column: 38, scope: !1053)
!1062 = !DILocation(line: 268, column: 36, scope: !1053)
!1063 = !DILocation(line: 268, column: 9, scope: !1053)
!1064 = !DILocation(line: 267, column: 12, scope: !1053)
!1065 = !DILocation(line: 267, column: 26, scope: !1053)
!1066 = !DILocation(line: 265, column: 7, scope: !1053)
!1067 = distinct !{!1067, !1059, !1068, !374, !375}
!1068 = !DILocation(line: 268, column: 38, scope: !1048)
!1069 = !DILocation(line: 269, column: 22, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 269, column: 11)
!1071 = !DILocation(line: 269, column: 11, scope: !1049)
!1072 = !DILocation(line: 270, column: 9, scope: !1070)
!1073 = !DILocation(line: 271, column: 7, scope: !1049)
!1074 = !DILocation(line: 272, column: 5, scope: !1049)
!1075 = !DILocation(line: 273, column: 12, scope: !1039)
!1076 = !DILocation(line: 273, column: 12, scope: !1040)
!1077 = !DILocation(line: 278, column: 33, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 278, column: 7)
!1079 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 274, column: 5)
!1080 = !DILocation(line: 278, column: 41, scope: !1078)
!1081 = !DILocation(line: 278, column: 44, scope: !1078)
!1082 = !DILocation(line: 278, column: 47, scope: !1078)
!1083 = !DILocation(line: 0, scope: !1078)
!1084 = !DILocation(line: 278, column: 30, scope: !1078)
!1085 = !DILocation(line: 278, column: 12, scope: !1078)
!1086 = !DILocation(line: 279, column: 23, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 278, column: 7)
!1088 = !DILocation(line: 279, column: 27, scope: !1087)
!1089 = !DILocation(line: 279, column: 30, scope: !1087)
!1090 = !DILocation(line: 0, scope: !1087)
!1091 = !DILocation(line: 278, column: 7, scope: !1078)
!1092 = !DILocation(line: 281, column: 31, scope: !1087)
!1093 = !DILocation(line: 281, column: 37, scope: !1087)
!1094 = !DILocation(line: 281, column: 35, scope: !1087)
!1095 = !DILocation(line: 281, column: 9, scope: !1087)
!1096 = !DILocation(line: 280, column: 12, scope: !1087)
!1097 = !DILocation(line: 280, column: 26, scope: !1087)
!1098 = !DILocation(line: 278, column: 7, scope: !1087)
!1099 = distinct !{!1099, !1091, !1100, !374, !375}
!1100 = !DILocation(line: 281, column: 37, scope: !1078)
!1101 = !DILocation(line: 282, column: 7, scope: !1079)
!1102 = !DILocation(line: 283, column: 5, scope: !1079)
!1103 = !DILocation(line: 284, column: 12, scope: !1038)
!1104 = !DILocation(line: 284, column: 15, scope: !1038)
!1105 = !DILocation(line: 284, column: 43, scope: !1038)
!1106 = !DILocation(line: 284, column: 18, scope: !1038)
!1107 = !DILocation(line: 284, column: 12, scope: !1039)
!1108 = !DILocation(line: 285, column: 23, scope: !1038)
!1109 = !DILocation(line: 285, column: 21, scope: !1038)
!1110 = !DILocation(line: 285, column: 5, scope: !1038)
!1111 = !DILocation(line: 286, column: 12, scope: !1037)
!1112 = !DILocation(line: 286, column: 15, scope: !1037)
!1113 = !DILocation(line: 286, column: 22, scope: !1037)
!1114 = !DILocation(line: 286, column: 25, scope: !1037)
!1115 = !DILocation(line: 286, column: 28, scope: !1037)
!1116 = !DILocation(line: 286, column: 12, scope: !1038)
!1117 = !DILocation(line: 288, column: 23, scope: !1036)
!1118 = !DILocation(line: 0, scope: !1036)
!1119 = !DILocation(line: 292, column: 26, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 292, column: 7)
!1121 = !DILocation(line: 292, column: 35, scope: !1120)
!1122 = !DILocation(line: 292, column: 52, scope: !1120)
!1123 = !DILocation(line: 292, column: 12, scope: !1120)
!1124 = !DILocation(line: 0, scope: !1120)
!1125 = !DILocation(line: 293, column: 23, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 292, column: 7)
!1127 = !DILocation(line: 292, column: 7, scope: !1120)
!1128 = !DILocation(line: 296, column: 37, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 296, column: 15)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 295, column: 9)
!1131 = !DILocation(line: 296, column: 27, scope: !1129)
!1132 = !DILocation(line: 296, column: 17, scope: !1129)
!1133 = !DILocation(line: 296, column: 15, scope: !1130)
!1134 = !DILocation(line: 297, column: 13, scope: !1129)
!1135 = !DILocation(line: 298, column: 33, scope: !1130)
!1136 = !DILocation(line: 298, column: 40, scope: !1130)
!1137 = !DILocation(line: 298, column: 38, scope: !1130)
!1138 = !DILocation(line: 299, column: 9, scope: !1130)
!1139 = !DILocation(line: 294, column: 12, scope: !1126)
!1140 = !DILocation(line: 294, column: 26, scope: !1126)
!1141 = !DILocation(line: 292, column: 7, scope: !1126)
!1142 = distinct !{!1142, !1127, !1143, !374, !375}
!1143 = !DILocation(line: 299, column: 9, scope: !1120)
!1144 = !DILocation(line: 303, column: 21, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 303, column: 11)
!1146 = !DILocation(line: 303, column: 31, scope: !1145)
!1147 = !DILocation(line: 303, column: 44, scope: !1145)
!1148 = !DILocation(line: 303, column: 11, scope: !1036)
!1149 = !DILocation(line: 304, column: 9, scope: !1145)
!1150 = !DILocation(line: 307, column: 27, scope: !1036)
!1151 = !DILocation(line: 307, column: 7, scope: !1036)
!1152 = !DILocation(line: 308, column: 5, scope: !1036)
!1153 = !DILocation(line: 311, column: 7, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 310, column: 5)
!1155 = !DILocation(line: 312, column: 11, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 312, column: 11)
!1157 = !DILocation(line: 312, column: 11, scope: !1154)
!1158 = !DILocation(line: 314, column: 11, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 313, column: 9)
!1160 = !DILocation(line: 315, column: 12, scope: !1159)
!1161 = !DILocation(line: 316, column: 9, scope: !1159)
!1162 = !DILocation(line: 0, scope: !1037)
!1163 = !DILocation(line: 0, scope: !1038)
!1164 = !DILocation(line: 0, scope: !1039)
!1165 = !DILocation(line: 0, scope: !1040)
!1166 = !DILocation(line: 318, column: 12, scope: !1026)
!1167 = !DILocation(line: 318, column: 23, scope: !1026)
!1168 = !DILocation(line: 318, column: 10, scope: !1026)
!1169 = !DILocation(line: 318, column: 3, scope: !1026)
!1170 = distinct !DISubprogram(name: "to_uchar", scope: !124, file: !124, line: 158, type: !1171, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!288, !4}
!1173 = !{!1174}
!1174 = !DILocalVariable(name: "ch", arg: 1, scope: !1170, file: !124, line: 158, type: !4)
!1175 = !DILocation(line: 0, scope: !1170)
!1176 = !DILocation(line: 158, column: 50, scope: !1170)
!1177 = distinct !DISubprogram(name: "isxdigit", scope: !1178, file: !1178, line: 280, type: !1179, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1181)
!1178 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_ctype.h", directory: "")
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!86, !86}
!1181 = !{!1182}
!1182 = !DILocalVariable(name: "_c", arg: 1, scope: !1177, file: !1178, line: 280, type: !86)
!1183 = !DILocation(line: 0, scope: !1177)
!1184 = !DILocation(line: 282, column: 10, scope: !1177)
!1185 = !DILocation(line: 282, column: 2, scope: !1177)
!1186 = !DISubprogram(name: "strchr", scope: !403, file: !403, line: 76, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!85, !82, !86}
!1189 = distinct !DISubprogram(name: "print_esc_char", scope: !2, file: !2, line: 212, type: !1190, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1192)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !4}
!1192 = !{!1193}
!1193 = !DILocalVariable(name: "c", arg: 1, scope: !1189, file: !2, line: 212, type: !4)
!1194 = !DILocation(line: 0, scope: !1189)
!1195 = !DILocation(line: 214, column: 11, scope: !1189)
!1196 = !DILocation(line: 214, column: 3, scope: !1189)
!1197 = !DILocation(line: 217, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 215, column: 5)
!1199 = !DILocation(line: 218, column: 7, scope: !1198)
!1200 = !DILocation(line: 220, column: 7, scope: !1198)
!1201 = !DILocation(line: 221, column: 7, scope: !1198)
!1202 = !DILocation(line: 223, column: 7, scope: !1198)
!1203 = !DILocation(line: 226, column: 7, scope: !1198)
!1204 = !DILocation(line: 227, column: 7, scope: !1198)
!1205 = !DILocation(line: 229, column: 7, scope: !1198)
!1206 = !DILocation(line: 230, column: 7, scope: !1198)
!1207 = !DILocation(line: 232, column: 7, scope: !1198)
!1208 = !DILocation(line: 233, column: 7, scope: !1198)
!1209 = !DILocation(line: 235, column: 7, scope: !1198)
!1210 = !DILocation(line: 236, column: 7, scope: !1198)
!1211 = !DILocation(line: 238, column: 7, scope: !1198)
!1212 = !DILocation(line: 239, column: 7, scope: !1198)
!1213 = !DILocation(line: 241, column: 7, scope: !1198)
!1214 = !DILocation(line: 242, column: 7, scope: !1198)
!1215 = !DILocation(line: 244, column: 7, scope: !1198)
!1216 = !DILocation(line: 245, column: 7, scope: !1198)
!1217 = !DILocation(line: 247, column: 1, scope: !1189)
!1218 = !DISubprogram(name: "print_unicode_char", scope: !1219, file: !1219, line: 40, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1219 = !DIFile(filename: "../lib/unicodeio.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !281, !68, !86}
!1222 = distinct !DISubprogram(name: "__isctype", scope: !1178, file: !1178, line: 164, type: !1223, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1226)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1225, !1225, !416}
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !317, line: 72, baseType: !86)
!1226 = !{!1227, !1228}
!1227 = !DILocalVariable(name: "_c", arg: 1, scope: !1222, file: !1178, line: 164, type: !1225)
!1228 = !DILocalVariable(name: "_f", arg: 2, scope: !1222, file: !1178, line: 164, type: !416)
!1229 = !DILocation(line: 0, scope: !1222)
!1230 = !DILocation(line: 169, column: 13, scope: !1222)
!1231 = !DILocation(line: 169, column: 17, scope: !1222)
!1232 = !DILocation(line: 169, column: 23, scope: !1222)
!1233 = !DILocation(line: 169, column: 9, scope: !1222)
!1234 = !DILocation(line: 170, column: 6, scope: !1222)
!1235 = !DILocation(line: 170, column: 40, scope: !1222)
!1236 = !DILocation(line: 170, column: 4, scope: !1222)
!1237 = !DILocation(line: 170, column: 3, scope: !1222)
!1238 = !DILocation(line: 169, column: 2, scope: !1222)
!1239 = !DISubprogram(name: "xmalloc", scope: !1240, file: !1240, line: 55, type: !1241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1240 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!84, !413}
!1243 = !DISubprogram(name: "xprintf", scope: !1244, file: !1244, line: 23, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1244 = !DIFile(filename: "../lib/xprintf.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1245 = distinct !DISubprogram(name: "vstrtoumax", scope: !2, file: !2, line: 206, type: !1246, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1248)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!918, !82}
!1248 = !{!1249, !1250, !1251, !1252, !1255, !1258, !1259, !1260}
!1249 = !DILocalVariable(name: "s", arg: 1, scope: !1245, file: !2, line: 206, type: !82)
!1250 = !DILocalVariable(name: "end", scope: !1245, file: !2, line: 206, type: !85)
!1251 = !DILocalVariable(name: "val", scope: !1245, file: !2, line: 206, type: !918)
!1252 = !DILocalVariable(name: "ch", scope: !1253, file: !2, line: 206, type: !288)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 206, column: 1)
!1254 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 206, column: 1)
!1255 = !DILocalVariable(name: "mbstate", scope: !1256, file: !2, line: 206, type: !860)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 206, column: 1)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 206, column: 1)
!1258 = !DILocalVariable(name: "wc", scope: !1256, file: !2, line: 206, type: !872)
!1259 = !DILocalVariable(name: "slen", scope: !1256, file: !2, line: 206, type: !413)
!1260 = !DILocalVariable(name: "bytes", scope: !1256, file: !2, line: 206, type: !876)
!1261 = !DILocation(line: 0, scope: !1245)
!1262 = !DILocation(line: 206, column: 1, scope: !1245)
!1263 = !DILocation(line: 206, column: 1, scope: !1254)
!1264 = !DILocation(line: 206, column: 1, scope: !1253)
!1265 = !DILocation(line: 0, scope: !1253)
!1266 = !DILocation(line: 206, column: 1, scope: !1257)
!1267 = !DILocation(line: 206, column: 1, scope: !1256)
!1268 = !DILocation(line: 0, scope: !1256)
!1269 = !DILocation(line: 206, column: 1, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 206, column: 1)
!1271 = !DILocation(line: 206, column: 1, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 206, column: 1)
!1273 = !DILocation(line: 206, column: 1, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 206, column: 1)
!1275 = !DILocation(line: 206, column: 1, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 206, column: 1)
!1277 = distinct !DISubprogram(name: "vstrtold", scope: !2, file: !2, line: 207, type: !1278, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!922, !82}
!1280 = !{!1281, !1282, !1283, !1284, !1287, !1290, !1291, !1292}
!1281 = !DILocalVariable(name: "s", arg: 1, scope: !1277, file: !2, line: 207, type: !82)
!1282 = !DILocalVariable(name: "end", scope: !1277, file: !2, line: 207, type: !85)
!1283 = !DILocalVariable(name: "val", scope: !1277, file: !2, line: 207, type: !922)
!1284 = !DILocalVariable(name: "ch", scope: !1285, file: !2, line: 207, type: !288)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 207, column: 1)
!1286 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 207, column: 1)
!1287 = !DILocalVariable(name: "mbstate", scope: !1288, file: !2, line: 207, type: !860)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 207, column: 1)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 207, column: 1)
!1290 = !DILocalVariable(name: "wc", scope: !1288, file: !2, line: 207, type: !872)
!1291 = !DILocalVariable(name: "slen", scope: !1288, file: !2, line: 207, type: !413)
!1292 = !DILocalVariable(name: "bytes", scope: !1288, file: !2, line: 207, type: !876)
!1293 = !DILocation(line: 0, scope: !1277)
!1294 = !DILocation(line: 207, column: 1, scope: !1277)
!1295 = !DILocation(line: 207, column: 1, scope: !1286)
!1296 = !DILocation(line: 207, column: 1, scope: !1285)
!1297 = !DILocation(line: 0, scope: !1285)
!1298 = !DILocation(line: 207, column: 1, scope: !1289)
!1299 = !DILocation(line: 207, column: 1, scope: !1288)
!1300 = !DILocation(line: 0, scope: !1288)
!1301 = !DILocation(line: 207, column: 1, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 207, column: 1)
!1303 = !DILocation(line: 207, column: 1, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 207, column: 1)
!1305 = !DILocation(line: 207, column: 1, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 207, column: 1)
!1307 = !DILocation(line: 207, column: 1, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 207, column: 1)
!1309 = !DISubprogram(name: "rpl_free", scope: !1310, file: !1310, line: 756, type: !1311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1310 = !DIFile(filename: "./lib/stdlib.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !84}
!1313 = !DISubprogram(name: "___mb_cur_max", scope: !1314, file: !1314, line: 33, type: !1315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1314 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_xlocale.h", directory: "")
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!86}
!1317 = !DISubprogram(name: "strlen", scope: !403, file: !403, line: 82, type: !1318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!416, !82}
!1320 = !DISubprogram(name: "mbrtowc", scope: !1321, file: !1321, line: 108, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1321 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/wchar.h", directory: "")
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!413, !1324, !335, !413, !1326}
!1324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!1328 = !DISubprogram(name: "__error", scope: !1329, file: !1329, line: 80, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1329 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1333 = !DISubprogram(name: "cl_strtold", scope: !1334, file: !1334, line: 3, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1334 = !DIFile(filename: "../lib/cl-strtod.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!922, !82, !1337}
!1337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !420)
!1338 = distinct !DISubprogram(name: "verify_numeric", scope: !2, file: !2, line: 146, type: !1339, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1341)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !82, !82}
!1341 = !{!1342, !1343}
!1342 = !DILocalVariable(name: "s", arg: 1, scope: !1338, file: !2, line: 146, type: !82)
!1343 = !DILocalVariable(name: "end", arg: 2, scope: !1338, file: !2, line: 146, type: !82)
!1344 = !DILocation(line: 0, scope: !1338)
!1345 = !DILocation(line: 148, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 148, column: 7)
!1347 = !DILocation(line: 148, column: 7, scope: !1338)
!1348 = !DILocation(line: 150, column: 17, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 149, column: 5)
!1350 = !DILocation(line: 150, column: 30, scope: !1349)
!1351 = !DILocation(line: 150, column: 7, scope: !1349)
!1352 = !DILocation(line: 151, column: 19, scope: !1349)
!1353 = !DILocation(line: 152, column: 5, scope: !1349)
!1354 = !DILocation(line: 153, column: 12, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 153, column: 12)
!1356 = !DILocation(line: 153, column: 12, scope: !1346)
!1357 = !DILocation(line: 155, column: 13, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 155, column: 11)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 154, column: 5)
!1360 = !DILocation(line: 155, column: 11, scope: !1359)
!1361 = !DILocation(line: 156, column: 57, scope: !1358)
!1362 = !DILocation(line: 156, column: 9, scope: !1358)
!1363 = !DILocation(line: 158, column: 63, scope: !1358)
!1364 = !DILocation(line: 158, column: 9, scope: !1358)
!1365 = !DILocation(line: 159, column: 19, scope: !1359)
!1366 = !DILocation(line: 160, column: 5, scope: !1359)
!1367 = !DILocation(line: 161, column: 1, scope: !1338)
!1368 = !DISubprogram(name: "strtoumax", scope: !1369, file: !1369, line: 257, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1369 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/inttypes.h", directory: "")
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!918, !335, !1337, !86}
!1372 = !DISubprogram(name: "strtoimax", scope: !1369, file: !1369, line: 251, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !336)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!541, !335, !1337, !86}
