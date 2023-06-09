; ModuleID = 'coreutils-9.3/build/src/paste.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct.__sFILE = type { ptr, i32, i32, i16, i16, %struct.__sbuf, i32, ptr, ptr, ptr, ptr, ptr, %struct.__sbuf, ptr, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sbuf = type { ptr, i32 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [119 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [144 x i8] c"  -d, --delimiters=LIST   reuse characters from LIST instead of TABs\0A  -s, --serial            paste one file at a time instead of in parallel\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [6 x i8] c"paste\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !47
@have_read_stdin = internal global i8 0, align 1, !dbg !52
@serial_merge = internal global i8 0, align 1, !dbg !124
@.str.10 = private unnamed_addr constant [5 x i8] c"d:sz\00", align 1, !dbg !92
@longopts = internal constant [6 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.36, i32 0, ptr null, i32 115 }, %struct.rpl_option { ptr @.str.37, i32 1, ptr null, i32 100 }, %struct.rpl_option { ptr @.str.38, i32 0, ptr null, i32 122 }, %struct.rpl_option { ptr @.str.39, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.40, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !219
@rpl_optarg = external global ptr, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1, !dbg !97
@line_delim = internal global i8 10, align 1, !dbg !231
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !102
@Version = external global ptr, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1, !dbg !107
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !112
@rpl_optind = external global i32, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !117
@.str.16 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1, !dbg !119
@delims = internal global ptr null, align 8, !dbg !127
@__stdinp = external global ptr, align 8
@.str.17 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !129
@.str.18 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !134
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !139
@.str.20 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !141
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !143
@.str.22 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !148
@.str.23 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !153
@.str.24 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !155
@.str.25 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !157
@.str.26 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !159
@.str.27 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !161
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.19, ptr @.str.20 }, %struct.infomap { ptr @.str.21, ptr @.str.22 }, %struct.infomap { ptr @.str.23, ptr @.str.24 }, %struct.infomap { ptr @.str.25, ptr @.str.24 }, %struct.infomap { ptr @.str.26, ptr @.str.24 }, %struct.infomap { ptr @.str.27, ptr @.str.24 }, %struct.infomap zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !163
@.str.29 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !168
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !173
@.str.31 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !178
@.str.32 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !183
@.str.33 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !185
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !190
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !195
@.str.36 = private unnamed_addr constant [7 x i8] c"serial\00", align 1, !dbg !200
@.str.37 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1, !dbg !205
@.str.38 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !210
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !212
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !214
@delim_end = internal global ptr null, align 8, !dbg !234
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !236
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !238
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !240
@.str.44 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1, !dbg !242

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !258, metadata !DIExpression()), !dbg !259
  %2 = icmp ne i32 %0, 0, !dbg !260
  br i1 %2, label %3, label %9, !dbg !262

3:                                                ; preds = %1
  br label %4, !dbg !263

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !264, !tbaa !266
  %6 = load ptr, ptr @program_name, align 8, !dbg !264, !tbaa !266
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !264
  br label %8, !dbg !264

8:                                                ; preds = %4
  br label %22, !dbg !264

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !270, !tbaa !266
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !272
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !273, !tbaa !266
  %13 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %12), !dbg !274
  call void @emit_stdin_note(), !dbg !275
  call void @emit_mandatory_arg_note(), !dbg !276
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !277, !tbaa !266
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %14), !dbg !278
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !279, !tbaa !266
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %16), !dbg !280
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !281, !tbaa !266
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %18), !dbg !282
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !283, !tbaa !266
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %20), !dbg !284
  call void @emit_ancillary_info(ptr noundef @.str.7), !dbg !285
  br label %22

22:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #10, !dbg !286
  unreachable, !dbg !286
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !287 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !347 i32 @printf(ptr noundef, ...) #2

declare !dbg !350 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_stdin_note() #3 !dbg !353 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !356, !tbaa !266
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.17, ptr noundef %1), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !359 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !360, !tbaa !266
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.18, ptr noundef %1), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !363 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !367, metadata !DIExpression()), !dbg !380
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #11, !dbg !381
  call void @llvm.dbg.declare(metadata ptr %2, metadata !368, metadata !DIExpression()), !dbg !382
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !382
  call void @llvm.dbg.value(metadata ptr %0, metadata !375, metadata !DIExpression()), !dbg !380
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !383
  call void @llvm.dbg.value(metadata ptr %3, metadata !376, metadata !DIExpression()), !dbg !380
  br label %4, !dbg !384

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !380
  call void @llvm.dbg.value(metadata ptr %.0, metadata !376, metadata !DIExpression()), !dbg !380
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !385
  %6 = load ptr, ptr %5, align 8, !dbg !385, !tbaa !386
  %7 = icmp ne ptr %6, null, !dbg !388
  br i1 %7, label %8, label %14, !dbg !389

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !390
  %10 = load ptr, ptr %9, align 8, !dbg !390, !tbaa !386
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !390
  %12 = icmp eq i32 %11, 0, !dbg !390
  %13 = xor i1 %12, true, !dbg !391
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !380
  br i1 %15, label %16, label %18, !dbg !384

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !392
  call void @llvm.dbg.value(metadata ptr %17, metadata !376, metadata !DIExpression()), !dbg !380
  br label %4, !dbg !384, !llvm.loop !393

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !396
  %20 = load ptr, ptr %19, align 8, !dbg !396, !tbaa !398
  %21 = icmp ne ptr %20, null, !dbg !399
  br i1 %21, label %22, label %25, !dbg !400

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !401
  %24 = load ptr, ptr %23, align 8, !dbg !401, !tbaa !398
  call void @llvm.dbg.value(metadata ptr %24, metadata !375, metadata !DIExpression()), !dbg !380
  br label %25, !dbg !402

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !380
  call void @llvm.dbg.value(metadata ptr %.01, metadata !375, metadata !DIExpression()), !dbg !380
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.28, ptr noundef @.str.12, ptr noundef @.str.29), !dbg !403
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !404
  call void @llvm.dbg.value(metadata ptr %27, metadata !378, metadata !DIExpression()), !dbg !380
  %28 = icmp ne ptr %27, null, !dbg !405
  br i1 %28, label %29, label %35, !dbg !407

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.30, i64 noundef 3), !dbg !408
  %31 = icmp ne i32 %30, 0, !dbg !408
  br i1 %31, label %32, label %35, !dbg !409

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !410, !tbaa !266
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.31, ptr noundef %33), !dbg !412
  br label %35, !dbg !413

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.19), !dbg !414
  %37 = icmp eq i32 %36, 0, !dbg !414
  br i1 %37, label %38, label %39, !dbg !414

38:                                               ; preds = %35
  br label %40, !dbg !414

39:                                               ; preds = %35
  br label %40, !dbg !414

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.32, %38 ], [ %0, %39 ], !dbg !414
  call void @llvm.dbg.value(metadata ptr %41, metadata !379, metadata !DIExpression()), !dbg !380
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.33, ptr noundef @.str.29, ptr noundef %41), !dbg !415
  %43 = icmp eq ptr %.01, %0, !dbg !416
  %44 = zext i1 %43 to i64, !dbg !417
  %45 = select i1 %43, ptr @.str.35, ptr @.str.9, !dbg !417
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, ptr noundef %.01, ptr noundef %45), !dbg !418
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #11, !dbg !419
  ret void, !dbg !419
}

; Function Attrs: noreturn
declare !dbg !420 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !422 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !426 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !430 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !437 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !442, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata ptr %1, metadata !443, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata ptr @.str.8, metadata !445, metadata !DIExpression()), !dbg !448
  %3 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !449
  %4 = load ptr, ptr %3, align 8, !dbg !449, !tbaa !266
  call void @set_program_name(ptr noundef %4), !dbg !450
  %5 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.9), !dbg !451
  %6 = call i32 @atexit(ptr noundef @close_stdout), !dbg !452
  store i8 0, ptr @have_read_stdin, align 1, !dbg !453, !tbaa !454
  store i8 0, ptr @serial_merge, align 1, !dbg !456, !tbaa !454
  br label %7, !dbg !457

7:                                                ; preds = %29, %2
  %.01 = phi ptr [ @.str.8, %2 ], [ %.1, %29 ], !dbg !458
  call void @llvm.dbg.value(metadata ptr %.01, metadata !445, metadata !DIExpression()), !dbg !448
  %8 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.10, ptr noundef @longopts, ptr noundef null), !dbg !459
  call void @llvm.dbg.value(metadata i32 %8, metadata !444, metadata !DIExpression()), !dbg !448
  %9 = icmp ne i32 %8, -1, !dbg !460
  br i1 %9, label %10, label %30, !dbg !457

10:                                               ; preds = %7
  switch i32 %8, label %28 [
    i32 100, label %11
    i32 115, label %22
    i32 122, label %23
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !461

11:                                               ; preds = %10
  %12 = load ptr, ptr @rpl_optarg, align 8, !dbg !463, !tbaa !266
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !463
  %14 = load i8, ptr %13, align 1, !dbg !463, !tbaa !465
  %15 = sext i8 %14 to i32, !dbg !463
  %16 = icmp eq i32 %15, 0, !dbg !466
  br i1 %16, label %17, label %18, !dbg !463

17:                                               ; preds = %11
  br label %20, !dbg !463

18:                                               ; preds = %11
  %19 = load ptr, ptr @rpl_optarg, align 8, !dbg !467, !tbaa !266
  br label %20, !dbg !463

20:                                               ; preds = %18, %17
  %21 = phi ptr [ @.str.11, %17 ], [ %19, %18 ], !dbg !463
  call void @llvm.dbg.value(metadata ptr %21, metadata !445, metadata !DIExpression()), !dbg !448
  br label %29, !dbg !468

22:                                               ; preds = %10
  store i8 1, ptr @serial_merge, align 1, !dbg !469, !tbaa !454
  br label %29, !dbg !470

23:                                               ; preds = %10
  store i8 0, ptr @line_delim, align 1, !dbg !471, !tbaa !465
  br label %29, !dbg !472

24:                                               ; preds = %10
  call void @usage(i32 noundef 0) #10, !dbg !473
  unreachable, !dbg !473

25:                                               ; preds = %10
  %26 = load ptr, ptr @__stdoutp, align 8, !dbg !474, !tbaa !266
  %27 = load ptr, ptr @Version, align 8, !dbg !474, !tbaa !266
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %26, ptr noundef @.str.7, ptr noundef @.str.12, ptr noundef %27, ptr noundef @.str.13, ptr noundef @.str.14, ptr noundef null), !dbg !474
  call void @exit(i32 noundef 0) #10, !dbg !474
  unreachable, !dbg !474

28:                                               ; preds = %10
  call void @usage(i32 noundef 1) #10, !dbg !475
  unreachable, !dbg !475

29:                                               ; preds = %23, %22, %20
  %.1 = phi ptr [ %.01, %23 ], [ %.01, %22 ], [ %21, %20 ], !dbg !448
  call void @llvm.dbg.value(metadata ptr %.1, metadata !445, metadata !DIExpression()), !dbg !448
  br label %7, !dbg !457, !llvm.loop !476

30:                                               ; preds = %7
  %31 = load i32, ptr @rpl_optind, align 4, !dbg !478, !tbaa !479
  %32 = sub nsw i32 %0, %31, !dbg !481
  call void @llvm.dbg.value(metadata i32 %32, metadata !446, metadata !DIExpression()), !dbg !448
  %33 = icmp eq i32 %32, 0, !dbg !482
  br i1 %33, label %34, label %40, !dbg !484

34:                                               ; preds = %30
  %35 = call ptr @bad_cast(ptr noundef @.str.15), !dbg !485
  %36 = load i32, ptr @rpl_optind, align 4, !dbg !487, !tbaa !479
  %37 = sext i32 %36 to i64, !dbg !488
  %38 = getelementptr inbounds ptr, ptr %1, i64 %37, !dbg !488
  store ptr %35, ptr %38, align 8, !dbg !489, !tbaa !266
  %39 = add nsw i32 %32, 1, !dbg !490
  call void @llvm.dbg.value(metadata i32 %39, metadata !446, metadata !DIExpression()), !dbg !448
  br label %40, !dbg !491

40:                                               ; preds = %34, %30
  %.0 = phi i32 [ %39, %34 ], [ %32, %30 ], !dbg !448
  call void @llvm.dbg.value(metadata i32 %.0, metadata !446, metadata !DIExpression()), !dbg !448
  %41 = call i32 @collapse_escapes(ptr noundef %.01), !dbg !492
  %42 = icmp ne i32 %41, 0, !dbg !492
  br i1 %42, label %43, label %45, !dbg !494

43:                                               ; preds = %40
  %44 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 6, ptr noundef %.01), !dbg !495
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.16, ptr noundef %44), !dbg !495
  unreachable, !dbg !495

45:                                               ; preds = %40
  %46 = load i8, ptr @serial_merge, align 1, !dbg !497, !tbaa !454, !range !498, !noundef !346
  %47 = trunc i8 %46 to i1, !dbg !497
  %48 = zext i1 %47 to i64, !dbg !497
  %49 = select i1 %47, ptr @paste_serial, ptr @paste_parallel, !dbg !497
  %50 = sext i32 %.0 to i64, !dbg !499
  %51 = load i32, ptr @rpl_optind, align 4, !dbg !500, !tbaa !479
  %52 = sext i32 %51 to i64, !dbg !501
  %53 = getelementptr inbounds ptr, ptr %1, i64 %52, !dbg !501
  %54 = call zeroext i1 %49(i64 noundef %50, ptr noundef %53), !dbg !502
  %55 = zext i1 %54 to i8, !dbg !503
  call void @llvm.dbg.value(metadata i8 %55, metadata !447, metadata !DIExpression()), !dbg !448
  %56 = load ptr, ptr @delims, align 8, !dbg !504, !tbaa !266
  call void @rpl_free(ptr noundef %56), !dbg !505
  %57 = load i8, ptr @have_read_stdin, align 1, !dbg !506, !tbaa !454, !range !498, !noundef !346
  %58 = trunc i8 %57 to i1, !dbg !506
  br i1 %58, label %59, label %66, !dbg !508

59:                                               ; preds = %45
  %60 = load ptr, ptr @__stdinp, align 8, !dbg !509, !tbaa !266
  %61 = call i32 @rpl_fclose(ptr noundef %60), !dbg !510
  %62 = icmp eq i32 %61, -1, !dbg !511
  br i1 %62, label %63, label %66, !dbg !512

63:                                               ; preds = %59
  %64 = call ptr @__error(), !dbg !513
  %65 = load i32, ptr %64, align 4, !dbg !513, !tbaa !479
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %65, ptr noundef @.str.15), !dbg !513
  unreachable, !dbg !513

66:                                               ; preds = %59, %45
  %67 = trunc i8 %55 to i1, !dbg !514
  %68 = zext i1 %67 to i64, !dbg !514
  %69 = select i1 %67, i32 0, i32 1, !dbg !514
  ret i32 %69, !dbg !515
}

declare !dbg !516 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !518 i32 @atexit(ptr noundef) #2

declare !dbg !522 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !526 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal ptr @bad_cast(ptr noundef %0) #3 !dbg !530 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !534, metadata !DIExpression()), !dbg !535
  ret ptr %0, !dbg !536
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @collapse_escapes(ptr noundef %0) #7 !dbg !537 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !541, metadata !DIExpression()), !dbg !545
  %2 = call noalias nonnull ptr @xstrdup(ptr noundef %0), !dbg !546
  call void @llvm.dbg.value(metadata ptr %2, metadata !542, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i8 0, metadata !543, metadata !DIExpression()), !dbg !545
  store ptr %2, ptr @delims, align 8, !dbg !547, !tbaa !266
  br label %3, !dbg !548

3:                                                ; preds = %40, %1
  %.01 = phi ptr [ %2, %1 ], [ %.2, %40 ], !dbg !545
  %.0 = phi ptr [ %0, %1 ], [ %.1, %40 ]
  call void @llvm.dbg.value(metadata ptr %.0, metadata !541, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata ptr %.01, metadata !542, metadata !DIExpression()), !dbg !545
  %4 = load i8, ptr %.0, align 1, !dbg !549, !tbaa !465
  %5 = icmp ne i8 %4, 0, !dbg !548
  br i1 %5, label %6, label %41, !dbg !548

6:                                                ; preds = %3
  %7 = load i8, ptr %.0, align 1, !dbg !550, !tbaa !465
  %8 = sext i8 %7 to i32, !dbg !550
  %9 = icmp ne i32 %8, 92, !dbg !553
  br i1 %9, label %10, label %14, !dbg !554

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %.0, i32 1, !dbg !555
  call void @llvm.dbg.value(metadata ptr %11, metadata !541, metadata !DIExpression()), !dbg !545
  %12 = load i8, ptr %.0, align 1, !dbg !556, !tbaa !465
  %13 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !557
  call void @llvm.dbg.value(metadata ptr %13, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 %12, ptr %.01, align 1, !dbg !558, !tbaa !465
  br label %40, !dbg !559

14:                                               ; preds = %6
  %15 = getelementptr inbounds i8, ptr %.0, i32 1, !dbg !560
  call void @llvm.dbg.value(metadata ptr %15, metadata !541, metadata !DIExpression()), !dbg !545
  %16 = load i8, ptr %15, align 1, !dbg !562, !tbaa !465
  %17 = sext i8 %16 to i32, !dbg !562
  switch i32 %17, label %35 [
    i32 48, label %18
    i32 98, label %20
    i32 102, label %22
    i32 110, label %24
    i32 114, label %26
    i32 116, label %28
    i32 118, label %30
    i32 92, label %32
    i32 0, label %34
  ], !dbg !563

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !564
  call void @llvm.dbg.value(metadata ptr %19, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 0, ptr %.01, align 1, !dbg !566, !tbaa !465
  br label %38, !dbg !567

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !568
  call void @llvm.dbg.value(metadata ptr %21, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 8, ptr %.01, align 1, !dbg !569, !tbaa !465
  br label %38, !dbg !570

22:                                               ; preds = %14
  %23 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !571
  call void @llvm.dbg.value(metadata ptr %23, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 12, ptr %.01, align 1, !dbg !572, !tbaa !465
  br label %38, !dbg !573

24:                                               ; preds = %14
  %25 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !574
  call void @llvm.dbg.value(metadata ptr %25, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 10, ptr %.01, align 1, !dbg !575, !tbaa !465
  br label %38, !dbg !576

26:                                               ; preds = %14
  %27 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !577
  call void @llvm.dbg.value(metadata ptr %27, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 13, ptr %.01, align 1, !dbg !578, !tbaa !465
  br label %38, !dbg !579

28:                                               ; preds = %14
  %29 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !580
  call void @llvm.dbg.value(metadata ptr %29, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 9, ptr %.01, align 1, !dbg !581, !tbaa !465
  br label %38, !dbg !582

30:                                               ; preds = %14
  %31 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !583
  call void @llvm.dbg.value(metadata ptr %31, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 11, ptr %.01, align 1, !dbg !584, !tbaa !465
  br label %38, !dbg !585

32:                                               ; preds = %14
  %33 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !586
  call void @llvm.dbg.value(metadata ptr %33, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 92, ptr %.01, align 1, !dbg !587, !tbaa !465
  br label %38, !dbg !588

34:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !543, metadata !DIExpression()), !dbg !545
  br label %42, !dbg !589

35:                                               ; preds = %14
  %36 = load i8, ptr %15, align 1, !dbg !590, !tbaa !465
  %37 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !591
  call void @llvm.dbg.value(metadata ptr %37, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 %36, ptr %.01, align 1, !dbg !592, !tbaa !465
  br label %38, !dbg !593

38:                                               ; preds = %35, %32, %30, %28, %26, %24, %22, %20, %18
  %.12 = phi ptr [ %37, %35 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], !dbg !594
  call void @llvm.dbg.value(metadata ptr %.12, metadata !542, metadata !DIExpression()), !dbg !545
  %39 = getelementptr inbounds i8, ptr %15, i32 1, !dbg !595
  call void @llvm.dbg.value(metadata ptr %39, metadata !541, metadata !DIExpression()), !dbg !545
  br label %40

40:                                               ; preds = %38, %10
  %.2 = phi ptr [ %13, %10 ], [ %.12, %38 ], !dbg !596
  %.1 = phi ptr [ %11, %10 ], [ %39, %38 ], !dbg !596
  call void @llvm.dbg.value(metadata ptr %.1, metadata !541, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata ptr %.2, metadata !542, metadata !DIExpression()), !dbg !545
  br label %3, !dbg !548, !llvm.loop !597

41:                                               ; preds = %3
  br label %42, !dbg !548

42:                                               ; preds = %41, %34
  %.03 = phi i8 [ 1, %34 ], [ 0, %41 ], !dbg !545
  call void @llvm.dbg.value(metadata i8 %.03, metadata !543, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.label(metadata !544), !dbg !599
  store ptr %.01, ptr @delim_end, align 8, !dbg !600, !tbaa !266
  %43 = trunc i8 %.03 to i1, !dbg !601
  %44 = zext i1 %43 to i64, !dbg !601
  %45 = select i1 %43, i32 1, i32 0, !dbg !601
  ret i32 %45, !dbg !602
}

declare !dbg !603 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

declare !dbg !606 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @paste_serial(i64 noundef %0, ptr noundef %1) #7 !dbg !610 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !614, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata ptr %1, metadata !615, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i8 1, metadata !616, metadata !DIExpression()), !dbg !626
  br label %3, !dbg !627

3:                                                ; preds = %121, %2
  %.02 = phi i8 [ 1, %2 ], [ %.2, %121 ], !dbg !626
  %.01 = phi ptr [ %1, %2 ], [ %123, %121 ]
  %.0 = phi i64 [ %0, %2 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata i64 %.0, metadata !614, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata ptr %.01, metadata !615, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i8 %.02, metadata !616, metadata !DIExpression()), !dbg !626
  %4 = icmp ne i64 %.0, 0, !dbg !628
  br i1 %4, label %5, label %124, !dbg !628

5:                                                ; preds = %3
  %6 = load ptr, ptr %.01, align 8, !dbg !629, !tbaa !266
  %7 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.15), !dbg !629
  %8 = icmp eq i32 %7, 0, !dbg !629
  %9 = zext i1 %8 to i8, !dbg !630
  call void @llvm.dbg.value(metadata i8 %9, metadata !625, metadata !DIExpression()), !dbg !631
  %10 = trunc i8 %9 to i1, !dbg !632
  br i1 %10, label %11, label %13, !dbg !634

11:                                               ; preds = %5
  store i8 1, ptr @have_read_stdin, align 1, !dbg !635, !tbaa !454
  %12 = load ptr, ptr @__stdinp, align 8, !dbg !637, !tbaa !266
  call void @llvm.dbg.value(metadata ptr %12, metadata !620, metadata !DIExpression()), !dbg !626
  br label %23, !dbg !638

13:                                               ; preds = %5
  %14 = load ptr, ptr %.01, align 8, !dbg !639, !tbaa !266
  %15 = call ptr @rpl_fopen(ptr noundef %14, ptr noundef @.str.41), !dbg !641
  call void @llvm.dbg.value(metadata ptr %15, metadata !620, metadata !DIExpression()), !dbg !626
  %16 = icmp eq ptr %15, null, !dbg !642
  br i1 %16, label %17, label %22, !dbg !644

17:                                               ; preds = %13
  %18 = call ptr @__error(), !dbg !645
  %19 = load i32, ptr %18, align 4, !dbg !645, !tbaa !479
  %20 = load ptr, ptr %.01, align 8, !dbg !647, !tbaa !266
  %21 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %20), !dbg !647
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %19, ptr noundef @.str.42, ptr noundef %21), !dbg !648
  call void @llvm.dbg.value(metadata i8 0, metadata !616, metadata !DIExpression()), !dbg !626
  br label %119, !dbg !649

22:                                               ; preds = %13
  call void @fadvise(ptr noundef %15, i32 noundef 1), !dbg !650
  br label %23

23:                                               ; preds = %22, %11
  %.09 = phi ptr [ %12, %11 ], [ %15, %22 ], !dbg !651
  call void @llvm.dbg.value(metadata ptr %.09, metadata !620, metadata !DIExpression()), !dbg !626
  %24 = load ptr, ptr @delims, align 8, !dbg !652, !tbaa !266
  call void @llvm.dbg.value(metadata ptr %24, metadata !619, metadata !DIExpression()), !dbg !626
  %25 = getelementptr inbounds %struct.__sFILE, ptr %.09, i32 0, i32 1, !dbg !653
  %26 = load i32, ptr %25, align 8, !dbg !653, !tbaa !654
  %27 = add nsw i32 %26, -1, !dbg !653
  store i32 %27, ptr %25, align 8, !dbg !653, !tbaa !654
  %28 = icmp slt i32 %27, 0, !dbg !653
  br i1 %28, label %29, label %31, !dbg !653

29:                                               ; preds = %23
  %30 = call i32 @__srget(ptr noundef %.09), !dbg !653
  br label %37, !dbg !653

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.__sFILE, ptr %.09, i32 0, i32 0, !dbg !653
  %33 = load ptr, ptr %32, align 8, !dbg !653, !tbaa !659
  %34 = getelementptr inbounds i8, ptr %33, i32 1, !dbg !653
  store ptr %34, ptr %32, align 8, !dbg !653, !tbaa !659
  %35 = load i8, ptr %33, align 1, !dbg !653, !tbaa !465
  %36 = zext i8 %35 to i32, !dbg !653
  br label %37, !dbg !653

37:                                               ; preds = %31, %29
  %38 = phi i32 [ %30, %29 ], [ %36, %31 ], !dbg !653
  call void @llvm.dbg.value(metadata i32 %38, metadata !618, metadata !DIExpression()), !dbg !626
  %39 = call ptr @__error(), !dbg !660
  %40 = load i32, ptr %39, align 4, !dbg !660, !tbaa !479
  call void @llvm.dbg.value(metadata i32 %40, metadata !621, metadata !DIExpression()), !dbg !631
  %41 = icmp ne i32 %38, -1, !dbg !661
  br i1 %41, label %42, label %83, !dbg !663

42:                                               ; preds = %37
  br label %43, !dbg !664

43:                                               ; preds = %78, %42
  %.06 = phi ptr [ %24, %42 ], [ %.28, %78 ], !dbg !631
  %.04 = phi i32 [ %38, %42 ], [ %57, %78 ], !dbg !631
  call void @llvm.dbg.value(metadata i32 %.04, metadata !618, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata ptr %.06, metadata !619, metadata !DIExpression()), !dbg !626
  %44 = getelementptr inbounds %struct.__sFILE, ptr %.09, i32 0, i32 1, !dbg !666
  %45 = load i32, ptr %44, align 8, !dbg !666, !tbaa !654
  %46 = add nsw i32 %45, -1, !dbg !666
  store i32 %46, ptr %44, align 8, !dbg !666, !tbaa !654
  %47 = icmp slt i32 %46, 0, !dbg !666
  br i1 %47, label %48, label %50, !dbg !666

48:                                               ; preds = %43
  %49 = call i32 @__srget(ptr noundef %.09), !dbg !666
  br label %56, !dbg !666

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.__sFILE, ptr %.09, i32 0, i32 0, !dbg !666
  %52 = load ptr, ptr %51, align 8, !dbg !666, !tbaa !659
  %53 = getelementptr inbounds i8, ptr %52, i32 1, !dbg !666
  store ptr %53, ptr %51, align 8, !dbg !666, !tbaa !659
  %54 = load i8, ptr %52, align 1, !dbg !666, !tbaa !465
  %55 = zext i8 %54 to i32, !dbg !666
  br label %56, !dbg !666

56:                                               ; preds = %50, %48
  %57 = phi i32 [ %49, %48 ], [ %55, %50 ], !dbg !666
  call void @llvm.dbg.value(metadata i32 %57, metadata !617, metadata !DIExpression()), !dbg !626
  %58 = icmp ne i32 %57, -1, !dbg !667
  br i1 %58, label %59, label %79, !dbg !664

59:                                               ; preds = %56
  %60 = load i8, ptr @line_delim, align 1, !dbg !668, !tbaa !465
  %61 = zext i8 %60 to i32, !dbg !668
  %62 = icmp eq i32 %.04, %61, !dbg !671
  br i1 %62, label %63, label %76, !dbg !672

63:                                               ; preds = %59
  %64 = load i8, ptr %.06, align 1, !dbg !673, !tbaa !465
  %65 = sext i8 %64 to i32, !dbg !673
  %66 = icmp ne i32 %65, 0, !dbg !676
  br i1 %66, label %67, label %69, !dbg !677

67:                                               ; preds = %63
  %68 = load i8, ptr %.06, align 1, !dbg !678, !tbaa !465
  call void @xputchar(i8 noundef signext %68), !dbg !679
  br label %69, !dbg !679

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds i8, ptr %.06, i32 1, !dbg !680
  call void @llvm.dbg.value(metadata ptr %70, metadata !619, metadata !DIExpression()), !dbg !626
  %71 = load ptr, ptr @delim_end, align 8, !dbg !682, !tbaa !266
  %72 = icmp eq ptr %70, %71, !dbg !683
  br i1 %72, label %73, label %75, !dbg !684

73:                                               ; preds = %69
  %74 = load ptr, ptr @delims, align 8, !dbg !685, !tbaa !266
  call void @llvm.dbg.value(metadata ptr %74, metadata !619, metadata !DIExpression()), !dbg !626
  br label %75, !dbg !686

75:                                               ; preds = %73, %69
  %.17 = phi ptr [ %74, %73 ], [ %70, %69 ], !dbg !687
  call void @llvm.dbg.value(metadata ptr %.17, metadata !619, metadata !DIExpression()), !dbg !626
  br label %78, !dbg !688

76:                                               ; preds = %59
  %77 = trunc i32 %.04 to i8, !dbg !689
  call void @xputchar(i8 noundef signext %77), !dbg !690
  br label %78

78:                                               ; preds = %76, %75
  %.28 = phi ptr [ %.17, %75 ], [ %.06, %76 ], !dbg !631
  call void @llvm.dbg.value(metadata ptr %.28, metadata !619, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32 %57, metadata !618, metadata !DIExpression()), !dbg !626
  br label %43, !dbg !664, !llvm.loop !691

79:                                               ; preds = %56
  %80 = call ptr @__error(), !dbg !693
  %81 = load i32, ptr %80, align 4, !dbg !693, !tbaa !479
  call void @llvm.dbg.value(metadata i32 %81, metadata !621, metadata !DIExpression()), !dbg !631
  %82 = trunc i32 %.04 to i8, !dbg !694
  call void @xputchar(i8 noundef signext %82), !dbg !695
  br label %83, !dbg !696

83:                                               ; preds = %79, %37
  %.010 = phi i32 [ %81, %79 ], [ %40, %37 ], !dbg !631
  %.15 = phi i32 [ %.04, %79 ], [ %38, %37 ], !dbg !697
  call void @llvm.dbg.value(metadata i32 %.15, metadata !618, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32 %.010, metadata !621, metadata !DIExpression()), !dbg !631
  %84 = load i8, ptr @line_delim, align 1, !dbg !698, !tbaa !465
  %85 = zext i8 %84 to i32, !dbg !698
  %86 = icmp ne i32 %.15, %85, !dbg !700
  br i1 %86, label %87, label %89, !dbg !701

87:                                               ; preds = %83
  %88 = load i8, ptr @line_delim, align 1, !dbg !702, !tbaa !465
  call void @xputchar(i8 noundef signext %88), !dbg !703
  br label %89, !dbg !703

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds %struct.__sFILE, ptr %.09, i32 0, i32 3, !dbg !704
  %91 = load i16, ptr %90, align 8, !dbg !704, !tbaa !706
  %92 = sext i16 %91 to i32, !dbg !704
  %93 = and i32 %92, 64, !dbg !704
  %94 = icmp ne i32 %93, 0, !dbg !704
  br i1 %94, label %96, label %95, !dbg !707

95:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i32 0, metadata !621, metadata !DIExpression()), !dbg !631
  br label %96, !dbg !708

96:                                               ; preds = %95, %89
  %.111 = phi i32 [ %.010, %89 ], [ 0, %95 ], !dbg !631
  call void @llvm.dbg.value(metadata i32 %.111, metadata !621, metadata !DIExpression()), !dbg !631
  %97 = trunc i8 %9 to i1, !dbg !709
  br i1 %97, label %98, label %104, !dbg !711

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.__sFILE, ptr %.09, i32 0, i32 3, !dbg !712
  %100 = load i16, ptr %99, align 8, !dbg !712, !tbaa !706
  %101 = sext i16 %100 to i32, !dbg !712
  %102 = and i32 %101, -97, !dbg !712
  %103 = trunc i32 %102 to i16, !dbg !712
  store i16 %103, ptr %99, align 8, !dbg !712, !tbaa !706
  br label %113, !dbg !712

104:                                              ; preds = %96
  %105 = call i32 @rpl_fclose(ptr noundef %.09), !dbg !713
  %106 = icmp ne i32 %105, 0, !dbg !715
  br i1 %106, label %107, label %112, !dbg !716

107:                                              ; preds = %104
  %108 = icmp ne i32 %.111, 0, !dbg !717
  br i1 %108, label %112, label %109, !dbg !718

109:                                              ; preds = %107
  %110 = call ptr @__error(), !dbg !719
  %111 = load i32, ptr %110, align 4, !dbg !719, !tbaa !479
  call void @llvm.dbg.value(metadata i32 %111, metadata !621, metadata !DIExpression()), !dbg !631
  br label %112, !dbg !720

112:                                              ; preds = %109, %107, %104
  %.212 = phi i32 [ %.111, %107 ], [ %111, %109 ], [ %.111, %104 ], !dbg !631
  call void @llvm.dbg.value(metadata i32 %.212, metadata !621, metadata !DIExpression()), !dbg !631
  br label %113

113:                                              ; preds = %112, %98
  %.3 = phi i32 [ %.111, %98 ], [ %.212, %112 ], !dbg !721
  call void @llvm.dbg.value(metadata i32 %.3, metadata !621, metadata !DIExpression()), !dbg !631
  %114 = icmp ne i32 %.3, 0, !dbg !722
  br i1 %114, label %115, label %118, !dbg !724

115:                                              ; preds = %113
  %116 = load ptr, ptr %.01, align 8, !dbg !725, !tbaa !266
  %117 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %116), !dbg !725
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %.3, ptr noundef @.str.42, ptr noundef %117), !dbg !727
  call void @llvm.dbg.value(metadata i8 0, metadata !616, metadata !DIExpression()), !dbg !626
  br label %118, !dbg !728

118:                                              ; preds = %115, %113
  %.1 = phi i8 [ 0, %115 ], [ %.02, %113 ], !dbg !626
  call void @llvm.dbg.value(metadata i8 %.1, metadata !616, metadata !DIExpression()), !dbg !626
  br label %119, !dbg !729

119:                                              ; preds = %118, %17
  %.03 = phi i32 [ 0, %118 ], [ 4, %17 ]
  %.2 = phi i8 [ %.1, %118 ], [ 0, %17 ], !dbg !631
  call void @llvm.dbg.value(metadata i8 %.2, metadata !616, metadata !DIExpression()), !dbg !626
  switch i32 %.03, label %126 [
    i32 0, label %120
    i32 4, label %121
  ]

120:                                              ; preds = %119
  br label %121, !dbg !730

121:                                              ; preds = %120, %119
  %122 = add i64 %.0, -1, !dbg !731
  call void @llvm.dbg.value(metadata i64 %122, metadata !614, metadata !DIExpression()), !dbg !626
  %123 = getelementptr inbounds ptr, ptr %.01, i32 1, !dbg !732
  call void @llvm.dbg.value(metadata ptr %123, metadata !615, metadata !DIExpression()), !dbg !626
  br label %3, !dbg !733, !llvm.loop !734

124:                                              ; preds = %3
  %125 = trunc i8 %.02 to i1, !dbg !736
  ret i1 %125, !dbg !737

126:                                              ; preds = %119
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @paste_parallel(i64 noundef %0, ptr noundef %1) #7 !dbg !738 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !740, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata ptr %1, metadata !741, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 1, metadata !742, metadata !DIExpression()), !dbg !764
  %3 = add i64 %0, 2, !dbg !765
  %4 = call noalias nonnull ptr @xmalloc(i64 noundef %3) #12, !dbg !766
  call void @llvm.dbg.value(metadata ptr %4, metadata !743, metadata !DIExpression()), !dbg !764
  %5 = add i64 %0, 1, !dbg !767
  %6 = call noalias nonnull ptr @xnmalloc(i64 noundef %5, i64 noundef 8) #13, !dbg !768
  call void @llvm.dbg.value(metadata ptr %6, metadata !744, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 0, metadata !747, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i64 0, metadata !746, metadata !DIExpression()), !dbg !764
  br label %7, !dbg !769

7:                                                ; preds = %42, %2
  %.021 = phi i8 [ 0, %2 ], [ %.223, %42 ], !dbg !771
  %.015 = phi i64 [ 0, %2 ], [ %43, %42 ], !dbg !772
  call void @llvm.dbg.value(metadata i64 %.015, metadata !746, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 %.021, metadata !747, metadata !DIExpression()), !dbg !764
  %8 = icmp ult i64 %.015, %0, !dbg !773
  br i1 %8, label %9, label %44, !dbg !775

9:                                                ; preds = %7
  %10 = getelementptr inbounds ptr, ptr %1, i64 %.015, !dbg !776
  %11 = load ptr, ptr %10, align 8, !dbg !776, !tbaa !266
  %12 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.15), !dbg !776
  %13 = icmp eq i32 %12, 0, !dbg !776
  br i1 %13, label %14, label %17, !dbg !779

14:                                               ; preds = %9
  store i8 1, ptr @have_read_stdin, align 1, !dbg !780, !tbaa !454
  %15 = load ptr, ptr @__stdinp, align 8, !dbg !782, !tbaa !266
  %16 = getelementptr inbounds ptr, ptr %6, i64 %.015, !dbg !783
  store ptr %15, ptr %16, align 8, !dbg !784, !tbaa !266
  br label %41, !dbg !785

17:                                               ; preds = %9
  %18 = getelementptr inbounds ptr, ptr %1, i64 %.015, !dbg !786
  %19 = load ptr, ptr %18, align 8, !dbg !786, !tbaa !266
  %20 = call ptr @rpl_fopen(ptr noundef %19, ptr noundef @.str.41), !dbg !788
  %21 = getelementptr inbounds ptr, ptr %6, i64 %.015, !dbg !789
  store ptr %20, ptr %21, align 8, !dbg !790, !tbaa !266
  %22 = getelementptr inbounds ptr, ptr %6, i64 %.015, !dbg !791
  %23 = load ptr, ptr %22, align 8, !dbg !791, !tbaa !266
  %24 = icmp eq ptr %23, null, !dbg !793
  br i1 %24, label %25, label %31, !dbg !794

25:                                               ; preds = %17
  %26 = call ptr @__error(), !dbg !795
  %27 = load i32, ptr %26, align 4, !dbg !795, !tbaa !479
  %28 = getelementptr inbounds ptr, ptr %1, i64 %.015, !dbg !795
  %29 = load ptr, ptr %28, align 8, !dbg !795, !tbaa !266
  %30 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %29), !dbg !795
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %27, ptr noundef @.str.42, ptr noundef %30), !dbg !795
  unreachable, !dbg !795

31:                                               ; preds = %17
  %32 = getelementptr inbounds ptr, ptr %6, i64 %.015, !dbg !796
  %33 = load ptr, ptr %32, align 8, !dbg !796, !tbaa !266
  %34 = call i32 @fileno(ptr noundef %33), !dbg !798
  %35 = icmp eq i32 %34, 0, !dbg !799
  br i1 %35, label %36, label %37, !dbg !800

36:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8 1, metadata !747, metadata !DIExpression()), !dbg !764
  br label %37, !dbg !801

37:                                               ; preds = %36, %31
  %.122 = phi i8 [ 1, %36 ], [ %.021, %31 ], !dbg !764
  call void @llvm.dbg.value(metadata i8 %.122, metadata !747, metadata !DIExpression()), !dbg !764
  br label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds ptr, ptr %6, i64 %.015, !dbg !802
  %40 = load ptr, ptr %39, align 8, !dbg !802, !tbaa !266
  call void @fadvise(ptr noundef %40, i32 noundef 1), !dbg !803
  br label %41

41:                                               ; preds = %38, %14
  %.223 = phi i8 [ %.021, %14 ], [ %.122, %38 ], !dbg !764
  call void @llvm.dbg.value(metadata i8 %.223, metadata !747, metadata !DIExpression()), !dbg !764
  br label %42, !dbg !804

42:                                               ; preds = %41
  %43 = add i64 %.015, 1, !dbg !805
  call void @llvm.dbg.value(metadata i64 %43, metadata !746, metadata !DIExpression()), !dbg !764
  br label %7, !dbg !806, !llvm.loop !807

44:                                               ; preds = %7
  %45 = trunc i8 %.021 to i1, !dbg !809
  br i1 %45, label %46, label %50, !dbg !811

46:                                               ; preds = %44
  %47 = load i8, ptr @have_read_stdin, align 1, !dbg !812, !tbaa !454, !range !498, !noundef !346
  %48 = trunc i8 %47 to i1, !dbg !812
  br i1 %48, label %49, label %50, !dbg !813

49:                                               ; preds = %46
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.44), !dbg !814
  unreachable, !dbg !814

50:                                               ; preds = %46, %44
  br label %51, !dbg !815

51:                                               ; preds = %250, %50
  %.116 = phi i64 [ %.015, %50 ], [ %.217, %250 ], !dbg !816
  %.010 = phi i32 [ undef, %50 ], [ %.111, %250 ]
  %.04 = phi i8 [ 1, %50 ], [ %.15, %250 ], !dbg !817
  %.01 = phi i32 [ undef, %50 ], [ %.12, %250 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !757, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i8 %.04, metadata !742, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i32 %.010, metadata !754, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i64 %.116, metadata !746, metadata !DIExpression()), !dbg !764
  %52 = icmp ne i64 %.116, 0, !dbg !815
  br i1 %52, label %53, label %251, !dbg !815

53:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i8 0, metadata !748, metadata !DIExpression()), !dbg !819
  %54 = load ptr, ptr @delims, align 8, !dbg !820, !tbaa !266
  call void @llvm.dbg.value(metadata ptr %54, metadata !750, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 0, metadata !751, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 0, metadata !752, metadata !DIExpression()), !dbg !821
  br label %55, !dbg !822

55:                                               ; preds = %248, %53
  %.041 = phi i64 [ 0, %53 ], [ %249, %248 ], !dbg !823
  %.033 = phi i64 [ 0, %53 ], [ %.740, %248 ], !dbg !819
  %.027 = phi ptr [ %54, %53 ], [ %.532, %248 ], !dbg !819
  %.024 = phi i8 [ 0, %53 ], [ %.226, %248 ], !dbg !819
  %.217 = phi i64 [ %.116, %53 ], [ %.520, %248 ], !dbg !816
  %.111 = phi i32 [ %.010, %53 ], [ %.313, %248 ]
  %.15 = phi i8 [ %.04, %53 ], [ %.59, %248 ], !dbg !817
  %.12 = phi i32 [ %.01, %53 ], [ %.9, %248 ]
  call void @llvm.dbg.value(metadata i32 %.12, metadata !757, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i8 %.15, metadata !742, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i32 %.111, metadata !754, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i64 %.217, metadata !746, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 %.024, metadata !748, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata ptr %.027, metadata !750, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %.033, metadata !751, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %.041, metadata !752, metadata !DIExpression()), !dbg !821
  %56 = icmp ult i64 %.041, %0, !dbg !824
  br i1 %56, label %57, label %59, !dbg !825

57:                                               ; preds = %55
  %58 = icmp ne i64 %.217, 0, !dbg !825
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i1 [ false, %55 ], [ %58, %57 ], !dbg !826
  br i1 %60, label %62, label %61, !dbg !827

61:                                               ; preds = %59
  br label %250

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i8 0, metadata !758, metadata !DIExpression()), !dbg !818
  %63 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !828
  %64 = load ptr, ptr %63, align 8, !dbg !828, !tbaa !266
  %65 = icmp ne ptr %64, null, !dbg !828
  br i1 %65, label %66, label %131, !dbg !830

66:                                               ; preds = %62
  %67 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !831
  %68 = load ptr, ptr %67, align 8, !dbg !831, !tbaa !266
  %69 = getelementptr inbounds %struct.__sFILE, ptr %68, i32 0, i32 1, !dbg !831
  %70 = load i32, ptr %69, align 8, !dbg !831, !tbaa !654
  %71 = add nsw i32 %70, -1, !dbg !831
  store i32 %71, ptr %69, align 8, !dbg !831, !tbaa !654
  %72 = icmp slt i32 %71, 0, !dbg !831
  br i1 %72, label %73, label %77, !dbg !831

73:                                               ; preds = %66
  %74 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !831
  %75 = load ptr, ptr %74, align 8, !dbg !831, !tbaa !266
  %76 = call i32 @__srget(ptr noundef %75), !dbg !831
  br label %85, !dbg !831

77:                                               ; preds = %66
  %78 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !831
  %79 = load ptr, ptr %78, align 8, !dbg !831, !tbaa !266
  %80 = getelementptr inbounds %struct.__sFILE, ptr %79, i32 0, i32 0, !dbg !831
  %81 = load ptr, ptr %80, align 8, !dbg !831, !tbaa !659
  %82 = getelementptr inbounds i8, ptr %81, i32 1, !dbg !831
  store ptr %82, ptr %80, align 8, !dbg !831, !tbaa !659
  %83 = load i8, ptr %81, align 1, !dbg !831, !tbaa !465
  %84 = zext i8 %83 to i32, !dbg !831
  br label %85, !dbg !831

85:                                               ; preds = %77, %73
  %86 = phi i32 [ %76, %73 ], [ %84, %77 ], !dbg !831
  call void @llvm.dbg.value(metadata i32 %86, metadata !754, metadata !DIExpression()), !dbg !818
  %87 = call ptr @__error(), !dbg !833
  %88 = load i32, ptr %87, align 4, !dbg !833, !tbaa !479
  call void @llvm.dbg.value(metadata i32 %88, metadata !757, metadata !DIExpression()), !dbg !818
  %89 = icmp ne i32 %86, -1, !dbg !834
  br i1 %89, label %90, label %98, !dbg !836

90:                                               ; preds = %85
  %91 = icmp ne i64 %.033, 0, !dbg !837
  br i1 %91, label %92, label %98, !dbg !838

92:                                               ; preds = %90
  %93 = load ptr, ptr @__stdoutp, align 8, !dbg !839, !tbaa !266
  %94 = call i64 @"\01_fwrite"(ptr noundef %4, i64 noundef 1, i64 noundef %.033, ptr noundef %93), !dbg !842
  %95 = icmp ne i64 %94, %.033, !dbg !843
  br i1 %95, label %96, label %97, !dbg !844

96:                                               ; preds = %92
  call void @write_error(), !dbg !845
  br label %97, !dbg !845

97:                                               ; preds = %96, %92
  call void @llvm.dbg.value(metadata i64 0, metadata !751, metadata !DIExpression()), !dbg !819
  br label %98, !dbg !846

98:                                               ; preds = %97, %90, %85
  %.134 = phi i64 [ 0, %97 ], [ %.033, %90 ], [ %.033, %85 ], !dbg !819
  call void @llvm.dbg.value(metadata i64 %.134, metadata !751, metadata !DIExpression()), !dbg !819
  br label %99, !dbg !847

99:                                               ; preds = %126, %98
  %.212 = phi i32 [ %86, %98 ], [ %127, %126 ], !dbg !848
  %.23 = phi i32 [ %88, %98 ], [ %129, %126 ], !dbg !848
  %.0 = phi i8 [ 0, %98 ], [ 1, %126 ], !dbg !818
  call void @llvm.dbg.value(metadata i8 %.0, metadata !758, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i32 %.23, metadata !757, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i32 %.212, metadata !754, metadata !DIExpression()), !dbg !818
  %100 = icmp ne i32 %.212, -1, !dbg !849
  br i1 %100, label %101, label %130, !dbg !847

101:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 1, metadata !758, metadata !DIExpression()), !dbg !818
  %102 = load i8, ptr @line_delim, align 1, !dbg !850, !tbaa !465
  %103 = zext i8 %102 to i32, !dbg !850
  %104 = icmp eq i32 %.212, %103, !dbg !853
  br i1 %104, label %105, label %106, !dbg !854

105:                                              ; preds = %101
  br label %130, !dbg !855

106:                                              ; preds = %101
  %107 = trunc i32 %.212 to i8, !dbg !856
  call void @xputchar(i8 noundef signext %107), !dbg !857
  %108 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !858
  %109 = load ptr, ptr %108, align 8, !dbg !858, !tbaa !266
  %110 = getelementptr inbounds %struct.__sFILE, ptr %109, i32 0, i32 1, !dbg !858
  %111 = load i32, ptr %110, align 8, !dbg !858, !tbaa !654
  %112 = add nsw i32 %111, -1, !dbg !858
  store i32 %112, ptr %110, align 8, !dbg !858, !tbaa !654
  %113 = icmp slt i32 %112, 0, !dbg !858
  br i1 %113, label %114, label %118, !dbg !858

114:                                              ; preds = %106
  %115 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !858
  %116 = load ptr, ptr %115, align 8, !dbg !858, !tbaa !266
  %117 = call i32 @__srget(ptr noundef %116), !dbg !858
  br label %126, !dbg !858

118:                                              ; preds = %106
  %119 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !858
  %120 = load ptr, ptr %119, align 8, !dbg !858, !tbaa !266
  %121 = getelementptr inbounds %struct.__sFILE, ptr %120, i32 0, i32 0, !dbg !858
  %122 = load ptr, ptr %121, align 8, !dbg !858, !tbaa !659
  %123 = getelementptr inbounds i8, ptr %122, i32 1, !dbg !858
  store ptr %123, ptr %121, align 8, !dbg !858, !tbaa !659
  %124 = load i8, ptr %122, align 1, !dbg !858, !tbaa !465
  %125 = zext i8 %124 to i32, !dbg !858
  br label %126, !dbg !858

126:                                              ; preds = %118, %114
  %127 = phi i32 [ %117, %114 ], [ %125, %118 ], !dbg !858
  call void @llvm.dbg.value(metadata i32 %127, metadata !754, metadata !DIExpression()), !dbg !818
  %128 = call ptr @__error(), !dbg !859
  %129 = load i32, ptr %128, align 4, !dbg !859, !tbaa !479
  call void @llvm.dbg.value(metadata i32 %129, metadata !757, metadata !DIExpression()), !dbg !818
  br label %99, !dbg !847, !llvm.loop !860

130:                                              ; preds = %105, %99
  %.1 = phi i8 [ 1, %105 ], [ %.0, %99 ], !dbg !818
  call void @llvm.dbg.value(metadata i8 %.1, metadata !758, metadata !DIExpression()), !dbg !818
  br label %131, !dbg !862

131:                                              ; preds = %130, %62
  %.235 = phi i64 [ %.134, %130 ], [ %.033, %62 ], !dbg !819
  %.313 = phi i32 [ %.212, %130 ], [ %.111, %62 ]
  %.3 = phi i32 [ %.23, %130 ], [ %.12, %62 ]
  %.2 = phi i8 [ %.1, %130 ], [ 0, %62 ], !dbg !818
  call void @llvm.dbg.value(metadata i8 %.2, metadata !758, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i32 %.3, metadata !757, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i32 %.313, metadata !754, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i64 %.235, metadata !751, metadata !DIExpression()), !dbg !819
  %132 = trunc i8 %.2 to i1, !dbg !863
  br i1 %132, label %211, label %133, !dbg !864

133:                                              ; preds = %131
  %134 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !865
  %135 = load ptr, ptr %134, align 8, !dbg !865, !tbaa !266
  %136 = icmp ne ptr %135, null, !dbg !865
  br i1 %136, label %137, label %179, !dbg !868

137:                                              ; preds = %133
  %138 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !869
  %139 = load ptr, ptr %138, align 8, !dbg !869, !tbaa !266
  %140 = getelementptr inbounds %struct.__sFILE, ptr %139, i32 0, i32 3, !dbg !869
  %141 = load i16, ptr %140, align 8, !dbg !869, !tbaa !706
  %142 = sext i16 %141 to i32, !dbg !869
  %143 = and i32 %142, 64, !dbg !869
  %144 = icmp ne i32 %143, 0, !dbg !869
  br i1 %144, label %146, label %145, !dbg !872

145:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i32 0, metadata !757, metadata !DIExpression()), !dbg !818
  br label %146, !dbg !873

146:                                              ; preds = %145, %137
  %.4 = phi i32 [ %.3, %137 ], [ 0, %145 ], !dbg !818
  call void @llvm.dbg.value(metadata i32 %.4, metadata !757, metadata !DIExpression()), !dbg !818
  %147 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !874
  %148 = load ptr, ptr %147, align 8, !dbg !874, !tbaa !266
  %149 = load ptr, ptr @__stdinp, align 8, !dbg !876, !tbaa !266
  %150 = icmp eq ptr %148, %149, !dbg !877
  br i1 %150, label %151, label %159, !dbg !878

151:                                              ; preds = %146
  %152 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !879
  %153 = load ptr, ptr %152, align 8, !dbg !879, !tbaa !266
  %154 = getelementptr inbounds %struct.__sFILE, ptr %153, i32 0, i32 3, !dbg !879
  %155 = load i16, ptr %154, align 8, !dbg !879, !tbaa !706
  %156 = sext i16 %155 to i32, !dbg !879
  %157 = and i32 %156, -97, !dbg !879
  %158 = trunc i32 %157 to i16, !dbg !879
  store i16 %158, ptr %154, align 8, !dbg !879, !tbaa !706
  br label %170, !dbg !879

159:                                              ; preds = %146
  %160 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !880
  %161 = load ptr, ptr %160, align 8, !dbg !880, !tbaa !266
  %162 = call i32 @rpl_fclose(ptr noundef %161), !dbg !882
  %163 = icmp eq i32 %162, -1, !dbg !883
  br i1 %163, label %164, label %169, !dbg !884

164:                                              ; preds = %159
  %165 = icmp ne i32 %.4, 0, !dbg !885
  br i1 %165, label %169, label %166, !dbg !886

166:                                              ; preds = %164
  %167 = call ptr @__error(), !dbg !887
  %168 = load i32, ptr %167, align 4, !dbg !887, !tbaa !479
  call void @llvm.dbg.value(metadata i32 %168, metadata !757, metadata !DIExpression()), !dbg !818
  br label %169, !dbg !888

169:                                              ; preds = %166, %164, %159
  %.5 = phi i32 [ %.4, %164 ], [ %168, %166 ], [ %.4, %159 ], !dbg !818
  call void @llvm.dbg.value(metadata i32 %.5, metadata !757, metadata !DIExpression()), !dbg !818
  br label %170

170:                                              ; preds = %169, %151
  %.6 = phi i32 [ %.4, %151 ], [ %.5, %169 ], !dbg !889
  call void @llvm.dbg.value(metadata i32 %.6, metadata !757, metadata !DIExpression()), !dbg !818
  %171 = icmp ne i32 %.6, 0, !dbg !890
  br i1 %171, label %172, label %176, !dbg !892

172:                                              ; preds = %170
  %173 = getelementptr inbounds ptr, ptr %1, i64 %.041, !dbg !893
  %174 = load ptr, ptr %173, align 8, !dbg !893, !tbaa !266
  %175 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %174), !dbg !893
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %.6, ptr noundef @.str.42, ptr noundef %175), !dbg !895
  call void @llvm.dbg.value(metadata i8 0, metadata !742, metadata !DIExpression()), !dbg !764
  br label %176, !dbg !896

176:                                              ; preds = %172, %170
  %.26 = phi i8 [ 0, %172 ], [ %.15, %170 ], !dbg !764
  call void @llvm.dbg.value(metadata i8 %.26, metadata !742, metadata !DIExpression()), !dbg !764
  %177 = getelementptr inbounds ptr, ptr %6, i64 %.041, !dbg !897
  store ptr null, ptr %177, align 8, !dbg !898, !tbaa !266
  %178 = add i64 %.217, -1, !dbg !899
  call void @llvm.dbg.value(metadata i64 %178, metadata !746, metadata !DIExpression()), !dbg !764
  br label %179, !dbg !900

179:                                              ; preds = %176, %133
  %.318 = phi i64 [ %178, %176 ], [ %.217, %133 ], !dbg !764
  %.37 = phi i8 [ %.26, %176 ], [ %.15, %133 ], !dbg !764
  %.7 = phi i32 [ %.6, %176 ], [ %.3, %133 ], !dbg !889
  call void @llvm.dbg.value(metadata i32 %.7, metadata !757, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i8 %.37, metadata !742, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i64 %.318, metadata !746, metadata !DIExpression()), !dbg !764
  %180 = add i64 %.041, 1, !dbg !901
  %181 = icmp eq i64 %180, %0, !dbg !903
  br i1 %181, label %182, label %195, !dbg !904

182:                                              ; preds = %179
  %183 = trunc i8 %.024 to i1, !dbg !905
  br i1 %183, label %184, label %194, !dbg !908

184:                                              ; preds = %182
  %185 = icmp ne i64 %.235, 0, !dbg !909
  br i1 %185, label %186, label %192, !dbg !912

186:                                              ; preds = %184
  %187 = load ptr, ptr @__stdoutp, align 8, !dbg !913, !tbaa !266
  %188 = call i64 @"\01_fwrite"(ptr noundef %4, i64 noundef 1, i64 noundef %.235, ptr noundef %187), !dbg !916
  %189 = icmp ne i64 %188, %.235, !dbg !917
  br i1 %189, label %190, label %191, !dbg !918

190:                                              ; preds = %186
  call void @write_error(), !dbg !919
  br label %191, !dbg !919

191:                                              ; preds = %190, %186
  call void @llvm.dbg.value(metadata i64 0, metadata !751, metadata !DIExpression()), !dbg !819
  br label %192, !dbg !920

192:                                              ; preds = %191, %184
  %.336 = phi i64 [ 0, %191 ], [ %.235, %184 ], !dbg !818
  call void @llvm.dbg.value(metadata i64 %.336, metadata !751, metadata !DIExpression()), !dbg !819
  %193 = load i8, ptr @line_delim, align 1, !dbg !921, !tbaa !465
  call void @xputchar(i8 noundef signext %193), !dbg !922
  br label %194, !dbg !923

194:                                              ; preds = %192, %182
  %.437 = phi i64 [ %.336, %192 ], [ %.235, %182 ], !dbg !818
  call void @llvm.dbg.value(metadata i64 %.437, metadata !751, metadata !DIExpression()), !dbg !819
  br label %246, !dbg !924

195:                                              ; preds = %179
  %196 = load i8, ptr %.027, align 1, !dbg !925, !tbaa !465
  %197 = sext i8 %196 to i32, !dbg !925
  %198 = icmp ne i32 %197, 0, !dbg !928
  br i1 %198, label %199, label %203, !dbg !929

199:                                              ; preds = %195
  %200 = load i8, ptr %.027, align 1, !dbg !930, !tbaa !465
  %201 = add i64 %.235, 1, !dbg !931
  call void @llvm.dbg.value(metadata i64 %201, metadata !751, metadata !DIExpression()), !dbg !819
  %202 = getelementptr inbounds i8, ptr %4, i64 %.235, !dbg !932
  store i8 %200, ptr %202, align 1, !dbg !933, !tbaa !465
  br label %203, !dbg !932

203:                                              ; preds = %199, %195
  %.538 = phi i64 [ %201, %199 ], [ %.235, %195 ], !dbg !818
  call void @llvm.dbg.value(metadata i64 %.538, metadata !751, metadata !DIExpression()), !dbg !819
  %204 = getelementptr inbounds i8, ptr %.027, i32 1, !dbg !934
  call void @llvm.dbg.value(metadata ptr %204, metadata !750, metadata !DIExpression()), !dbg !819
  %205 = load ptr, ptr @delim_end, align 8, !dbg !936, !tbaa !266
  %206 = icmp eq ptr %204, %205, !dbg !937
  br i1 %206, label %207, label %209, !dbg !938

207:                                              ; preds = %203
  %208 = load ptr, ptr @delims, align 8, !dbg !939, !tbaa !266
  call void @llvm.dbg.value(metadata ptr %208, metadata !750, metadata !DIExpression()), !dbg !819
  br label %209, !dbg !940

209:                                              ; preds = %207, %203
  %.128 = phi ptr [ %208, %207 ], [ %204, %203 ], !dbg !941
  call void @llvm.dbg.value(metadata ptr %.128, metadata !750, metadata !DIExpression()), !dbg !819
  br label %210

210:                                              ; preds = %209
  br label %245, !dbg !942

211:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i8 1, metadata !748, metadata !DIExpression()), !dbg !819
  %212 = add i64 %.041, 1, !dbg !943
  %213 = icmp ne i64 %212, %0, !dbg !944
  br i1 %213, label %214, label %235, !dbg !945

214:                                              ; preds = %211
  %215 = load i8, ptr @line_delim, align 1, !dbg !946, !tbaa !465
  %216 = zext i8 %215 to i32, !dbg !946
  %217 = icmp ne i32 %.313, %216, !dbg !949
  br i1 %217, label %218, label %222, !dbg !950

218:                                              ; preds = %214
  %219 = icmp ne i32 %.313, -1, !dbg !951
  br i1 %219, label %220, label %222, !dbg !952

220:                                              ; preds = %218
  %221 = trunc i32 %.313 to i8, !dbg !953
  call void @xputchar(i8 noundef signext %221), !dbg !954
  br label %222, !dbg !954

222:                                              ; preds = %220, %218, %214
  %223 = load i8, ptr %.027, align 1, !dbg !955, !tbaa !465
  %224 = sext i8 %223 to i32, !dbg !955
  %225 = icmp ne i32 %224, 0, !dbg !957
  br i1 %225, label %226, label %228, !dbg !958

226:                                              ; preds = %222
  %227 = load i8, ptr %.027, align 1, !dbg !959, !tbaa !465
  call void @xputchar(i8 noundef signext %227), !dbg !960
  br label %228, !dbg !960

228:                                              ; preds = %226, %222
  %229 = getelementptr inbounds i8, ptr %.027, i32 1, !dbg !961
  call void @llvm.dbg.value(metadata ptr %229, metadata !750, metadata !DIExpression()), !dbg !819
  %230 = load ptr, ptr @delim_end, align 8, !dbg !963, !tbaa !266
  %231 = icmp eq ptr %229, %230, !dbg !964
  br i1 %231, label %232, label %234, !dbg !965

232:                                              ; preds = %228
  %233 = load ptr, ptr @delims, align 8, !dbg !966, !tbaa !266
  call void @llvm.dbg.value(metadata ptr %233, metadata !750, metadata !DIExpression()), !dbg !819
  br label %234, !dbg !967

234:                                              ; preds = %232, %228
  %.229 = phi ptr [ %233, %232 ], [ %229, %228 ], !dbg !968
  call void @llvm.dbg.value(metadata ptr %.229, metadata !750, metadata !DIExpression()), !dbg !819
  br label %244, !dbg !969

235:                                              ; preds = %211
  %236 = icmp eq i32 %.313, -1, !dbg !970
  br i1 %236, label %237, label %240, !dbg !971

237:                                              ; preds = %235
  %238 = load i8, ptr @line_delim, align 1, !dbg !972, !tbaa !465
  %239 = zext i8 %238 to i32, !dbg !972
  br label %241, !dbg !971

240:                                              ; preds = %235
  br label %241, !dbg !971

241:                                              ; preds = %240, %237
  %242 = phi i32 [ %239, %237 ], [ %.313, %240 ], !dbg !971
  %243 = trunc i32 %242 to i8, !dbg !973
  call void @llvm.dbg.value(metadata i8 %243, metadata !759, metadata !DIExpression()), !dbg !974
  call void @xputchar(i8 noundef signext %243), !dbg !975
  br label %244

244:                                              ; preds = %241, %234
  %.330 = phi ptr [ %.229, %234 ], [ %.027, %241 ], !dbg !819
  call void @llvm.dbg.value(metadata ptr %.330, metadata !750, metadata !DIExpression()), !dbg !819
  br label %245

245:                                              ; preds = %244, %210
  %.639 = phi i64 [ %.235, %244 ], [ %.538, %210 ], !dbg !818
  %.431 = phi ptr [ %.330, %244 ], [ %.128, %210 ], !dbg !976
  %.125 = phi i8 [ 1, %244 ], [ %.024, %210 ], !dbg !819
  %.419 = phi i64 [ %.217, %244 ], [ %.318, %210 ], !dbg !764
  %.48 = phi i8 [ %.15, %244 ], [ %.37, %210 ], !dbg !764
  %.8 = phi i32 [ %.3, %244 ], [ %.7, %210 ], !dbg !889
  call void @llvm.dbg.value(metadata i32 %.8, metadata !757, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i8 %.48, metadata !742, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i64 %.419, metadata !746, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 %.125, metadata !748, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata ptr %.431, metadata !750, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %.639, metadata !751, metadata !DIExpression()), !dbg !819
  br label %246, !dbg !977

246:                                              ; preds = %245, %194
  %.740 = phi i64 [ %.639, %245 ], [ %.437, %194 ], !dbg !818
  %.532 = phi ptr [ %.431, %245 ], [ %.027, %194 ], !dbg !819
  %.226 = phi i8 [ %.125, %245 ], [ %.024, %194 ], !dbg !819
  %.520 = phi i64 [ %.419, %245 ], [ %.318, %194 ], !dbg !764
  %.014 = phi i32 [ 0, %245 ], [ 9, %194 ]
  %.59 = phi i8 [ %.48, %245 ], [ %.37, %194 ], !dbg !764
  %.9 = phi i32 [ %.8, %245 ], [ %.7, %194 ], !dbg !889
  call void @llvm.dbg.value(metadata i32 %.9, metadata !757, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i8 %.59, metadata !742, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i64 %.520, metadata !746, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 %.226, metadata !748, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata ptr %.532, metadata !750, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %.740, metadata !751, metadata !DIExpression()), !dbg !819
  switch i32 %.014, label %253 [
    i32 0, label %247
    i32 9, label %248
  ]

247:                                              ; preds = %246
  br label %248, !dbg !978

248:                                              ; preds = %247, %246
  %249 = add i64 %.041, 1, !dbg !979
  call void @llvm.dbg.value(metadata i64 %249, metadata !752, metadata !DIExpression()), !dbg !821
  br label %55, !dbg !980, !llvm.loop !981

250:                                              ; preds = %61
  br label %51, !dbg !815, !llvm.loop !983

251:                                              ; preds = %51
  call void @rpl_free(ptr noundef %6), !dbg !985
  call void @rpl_free(ptr noundef %4), !dbg !986
  %252 = trunc i8 %.04 to i1, !dbg !987
  ret i1 %252, !dbg !988

253:                                              ; preds = %246
  unreachable
}

declare !dbg !989 void @rpl_free(ptr noundef) #2

declare !dbg !993 i32 @rpl_fclose(ptr noundef) #2

declare !dbg !997 ptr @__error() #2

; Function Attrs: allocsize(0)
declare !dbg !1001 noalias nonnull ptr @xmalloc(i64 noundef) #8

; Function Attrs: allocsize(0,1)
declare !dbg !1005 noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) #9

declare !dbg !1008 ptr @rpl_fopen(ptr noundef, ptr noundef) #2

declare !dbg !1011 i32 @fileno(ptr noundef) #2

declare !dbg !1012 void @fadvise(ptr noundef, i32 noundef) #2

declare !dbg !1016 i32 @__srget(ptr noundef) #2

declare !dbg !1017 i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @write_error() #7 !dbg !1023 {
  %1 = call ptr @__error(), !dbg !1024
  %2 = load i32, ptr %1, align 4, !dbg !1024, !tbaa !479
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %2, ptr noundef @.str.43), !dbg !1024
  unreachable, !dbg !1024
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @xputchar(i8 noundef signext %0) #3 !dbg !1025 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1029, metadata !DIExpression()), !dbg !1030
  %2 = sext i8 %0 to i32, !dbg !1031
  %3 = load ptr, ptr @__stdoutp, align 8, !dbg !1031, !tbaa !266
  %4 = call i32 @putc_unlocked(i32 noundef %2, ptr noundef %3), !dbg !1031
  %5 = icmp slt i32 %4, 0, !dbg !1033
  br i1 %5, label %6, label %7, !dbg !1034

6:                                                ; preds = %1
  call void @write_error(), !dbg !1035
  br label %7, !dbg !1035

7:                                                ; preds = %6, %1
  ret void, !dbg !1036
}

declare !dbg !1037 i32 @putc_unlocked(i32 noundef, ptr noundef) #2

declare !dbg !1040 noalias nonnull ptr @xstrdup(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

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
attributes #9 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { allocsize(0) }
attributes #13 = { allocsize(0,1) }

!llvm.dbg.cu = !{!54}
!llvm.ident = !{!247}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 430, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/paste.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 437, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 952, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 119)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 445, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1152, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 144)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 449, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 63)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 452, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 48)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 453, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 57)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 455, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 6)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 2)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !54, file: !2, line: 59, type: !126, isLocal: true, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !86, globals: !91, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!55 = !{!56, !62, !77}
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 332, baseType: !58, size: 32, elements: !59)
!57 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !{!60, !61}
!60 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!61 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !63, line: 32, baseType: !64, size: 32, elements: !65)
!63 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!64 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!66 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!67 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!68 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!69 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!70 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!71 = !DIEnumerator(name: "c_quoting_style", value: 5)
!72 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!73 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!74 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!75 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!76 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 53, baseType: !64, size: 32, elements: !79)
!78 = !DIFile(filename: "../lib/fadvise.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!79 = !{!80, !81, !82, !83, !84, !85}
!80 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!81 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 1)
!82 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 2)
!83 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 3)
!84 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 4)
!85 = !DIEnumerator(name: "FADVISE_RANDOM", value: 5)
!86 = !{!87, !89, !90, !58}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !92, !97, !102, !107, !112, !117, !119, !52, !124, !127, !129, !134, !139, !141, !143, !148, !153, !155, !157, !159, !161, !163, !168, !173, !178, !183, !185, !190, !195, !200, !205, !210, !212, !214, !219, !231, !234, !236, !238, !240, !242}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 477, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 5)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 3)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 14)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 15)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 16)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !44, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 52)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "serial_merge", scope: !54, file: !2, line: 63, type: !126, isLocal: true, isDefinition: true)
!126 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "delims", scope: !54, file: !2, line: 66, type: !89, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !57, line: 579, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 56)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !57, line: 586, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 75)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !57, line: 660, type: !44, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !57, line: 660, type: !114, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !57, line: 661, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 10)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !57, line: 661, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 22)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !57, line: 662, type: !145, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !57, line: 662, type: !109, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !57, line: 663, type: !145, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !57, line: 664, type: !145, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !57, line: 665, type: !145, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !57, line: 678, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 23)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !57, line: 678, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 40)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !57, line: 683, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 4)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !57, line: 689, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 71)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !57, line: 695, type: !94, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !57, line: 696, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 27)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !57, line: 698, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 51)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !57, line: 699, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 12)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 7)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 11)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !114, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !94, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 8)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "longopts", scope: !54, file: !2, line: 73, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1536, elements: !40)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !224, line: 50, size: 256, elements: !225)
!224 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!225 = !{!226, !227, !228, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !224, line: 52, baseType: !87, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !223, file: !224, line: 55, baseType: !58, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !223, file: !224, line: 56, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !223, file: !224, line: 57, baseType: !58, size: 32, offset: 192)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "line_delim", scope: !54, file: !2, line: 71, type: !233, isLocal: true, isDefinition: true)
!233 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "delim_end", scope: !54, file: !2, line: 69, type: !87, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !44, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !99, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !197, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 221, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 25)
!247 = !{!"Homebrew clang version 16.0.4"}
!248 = !{i32 7, !"Dwarf Version", i32 4}
!249 = !{i32 2, !"Debug Info Version", i32 3}
!250 = !{i32 1, !"wchar_size", i32 4}
!251 = !{i32 8, !"PIC Level", i32 2}
!252 = !{i32 7, !"uwtable", i32 2}
!253 = !{i32 7, !"frame-pointer", i32 2}
!254 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 427, type: !255, scopeLine: 428, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !58}
!257 = !{!258}
!258 = !DILocalVariable(name: "status", arg: 1, scope: !254, file: !2, line: 427, type: !58)
!259 = !DILocation(line: 0, scope: !254)
!260 = !DILocation(line: 429, column: 14, scope: !261)
!261 = distinct !DILexicalBlock(scope: !254, file: !2, line: 429, column: 7)
!262 = !DILocation(line: 429, column: 7, scope: !254)
!263 = !DILocation(line: 430, column: 5, scope: !261)
!264 = !DILocation(line: 430, column: 5, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !2, line: 430, column: 5)
!266 = !{!267, !267, i64 0}
!267 = !{!"any pointer", !268, i64 0}
!268 = !{!"omnipotent char", !269, i64 0}
!269 = !{!"Simple C/C++ TBAA"}
!270 = !DILocation(line: 436, column: 15, scope: !271)
!271 = distinct !DILexicalBlock(scope: !261, file: !2, line: 432, column: 5)
!272 = !DILocation(line: 433, column: 7, scope: !271)
!273 = !DILocation(line: 440, column: 5, scope: !271)
!274 = !DILocation(line: 437, column: 7, scope: !271)
!275 = !DILocation(line: 442, column: 7, scope: !271)
!276 = !DILocation(line: 443, column: 7, scope: !271)
!277 = !DILocation(line: 448, column: 5, scope: !271)
!278 = !DILocation(line: 445, column: 7, scope: !271)
!279 = !DILocation(line: 451, column: 5, scope: !271)
!280 = !DILocation(line: 449, column: 7, scope: !271)
!281 = !DILocation(line: 452, column: 39, scope: !271)
!282 = !DILocation(line: 452, column: 7, scope: !271)
!283 = !DILocation(line: 453, column: 42, scope: !271)
!284 = !DILocation(line: 453, column: 7, scope: !271)
!285 = !DILocation(line: 455, column: 7, scope: !271)
!286 = !DILocation(line: 457, column: 3, scope: !254)
!287 = !DISubprogram(name: "fprintf", scope: !288, file: !288, line: 155, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!288 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!289 = !DISubroutineType(types: !290)
!290 = !{!58, !291, !345, null}
!291 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !294, line: 157, baseType: !295)
!294 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !294, line: 126, size: 1216, elements: !296)
!296 = !{!297, !299, !300, !301, !303, !304, !309, !310, !311, !315, !319, !329, !333, !334, !337, !338, !340, !342, !343, !344}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !295, file: !294, line: 127, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !295, file: !294, line: 128, baseType: !58, size: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !295, file: !294, line: 129, baseType: !58, size: 32, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !295, file: !294, line: 130, baseType: !302, size: 16, offset: 128)
!302 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !295, file: !294, line: 131, baseType: !302, size: 16, offset: 144)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !295, file: !294, line: 132, baseType: !305, size: 128, offset: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !294, line: 92, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !305, file: !294, line: 93, baseType: !298, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !305, file: !294, line: 94, baseType: !58, size: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !295, file: !294, line: 133, baseType: !58, size: 32, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !295, file: !294, line: 136, baseType: !90, size: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !295, file: !294, line: 137, baseType: !312, size: 64, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!58, !90}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !295, file: !294, line: 138, baseType: !316, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!58, !90, !89, !58}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !295, file: !294, line: 139, baseType: !320, size: 64, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!323, !90, !323, !58}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !294, line: 81, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !325, line: 71, baseType: !326)
!325 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !327, line: 48, baseType: !328)
!327 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!328 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !295, file: !294, line: 140, baseType: !330, size: 64, offset: 640)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!58, !90, !87, !58}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !295, file: !294, line: 143, baseType: !305, size: 128, offset: 704)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !295, file: !294, line: 144, baseType: !335, size: 64, offset: 832)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !294, line: 98, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !295, file: !294, line: 145, baseType: !58, size: 32, offset: 896)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !295, file: !294, line: 148, baseType: !339, size: 24, offset: 928)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 24, elements: !100)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !295, file: !294, line: 149, baseType: !341, size: 8, offset: 952)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 8, elements: !50)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !295, file: !294, line: 152, baseType: !305, size: 128, offset: 960)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !295, file: !294, line: 155, baseType: !58, size: 32, offset: 1088)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !295, file: !294, line: 156, baseType: !323, size: 64, offset: 1152)
!345 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!346 = !{}
!347 = !DISubprogram(name: "printf", scope: !288, file: !288, line: 175, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!348 = !DISubroutineType(types: !349)
!349 = !{!58, !345, null}
!350 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !288, file: !288, line: 157, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!351 = !DISubroutineType(types: !352)
!352 = !{!58, !345, !291}
!353 = distinct !DISubprogram(name: "emit_stdin_note", scope: !57, file: !57, line: 577, type: !354, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !346)
!354 = !DISubroutineType(types: !355)
!355 = !{null}
!356 = !DILocation(line: 581, column: 5, scope: !353)
!357 = !DILocation(line: 579, column: 3, scope: !353)
!358 = !DILocation(line: 582, column: 1, scope: !353)
!359 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !57, file: !57, line: 584, type: !354, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !346)
!360 = !DILocation(line: 588, column: 5, scope: !359)
!361 = !DILocation(line: 586, column: 3, scope: !359)
!362 = !DILocation(line: 589, column: 1, scope: !359)
!363 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !57, file: !57, line: 657, type: !364, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !87}
!366 = !{!367, !368, !375, !376, !378, !379}
!367 = !DILocalVariable(name: "program", arg: 1, scope: !363, file: !57, line: 657, type: !87)
!368 = !DILocalVariable(name: "infomap", scope: !363, file: !57, line: 659, type: !369)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 896, elements: !203)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !363, file: !57, line: 659, size: 128, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !371, file: !57, line: 659, baseType: !87, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !371, file: !57, line: 659, baseType: !87, size: 64, offset: 64)
!375 = !DILocalVariable(name: "node", scope: !363, file: !57, line: 669, type: !87)
!376 = !DILocalVariable(name: "map_prog", scope: !363, file: !57, line: 670, type: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!378 = !DILocalVariable(name: "lc_messages", scope: !363, file: !57, line: 682, type: !87)
!379 = !DILocalVariable(name: "url_program", scope: !363, file: !57, line: 695, type: !87)
!380 = !DILocation(line: 0, scope: !363)
!381 = !DILocation(line: 659, column: 3, scope: !363)
!382 = !DILocation(line: 659, column: 67, scope: !363)
!383 = !DILocation(line: 670, column: 36, scope: !363)
!384 = !DILocation(line: 672, column: 3, scope: !363)
!385 = !DILocation(line: 672, column: 20, scope: !363)
!386 = !{!387, !267, i64 0}
!387 = !{!"infomap", !267, i64 0, !267, i64 8}
!388 = !DILocation(line: 672, column: 10, scope: !363)
!389 = !DILocation(line: 672, column: 28, scope: !363)
!390 = !DILocation(line: 672, column: 33, scope: !363)
!391 = !DILocation(line: 672, column: 31, scope: !363)
!392 = !DILocation(line: 673, column: 13, scope: !363)
!393 = distinct !{!393, !384, !392, !394, !395}
!394 = !{!"llvm.loop.mustprogress"}
!395 = !{!"llvm.loop.unroll.disable"}
!396 = !DILocation(line: 675, column: 17, scope: !397)
!397 = distinct !DILexicalBlock(scope: !363, file: !57, line: 675, column: 7)
!398 = !{!387, !267, i64 8}
!399 = !DILocation(line: 675, column: 7, scope: !397)
!400 = !DILocation(line: 675, column: 7, scope: !363)
!401 = !DILocation(line: 676, column: 22, scope: !397)
!402 = !DILocation(line: 676, column: 5, scope: !397)
!403 = !DILocation(line: 678, column: 3, scope: !363)
!404 = !DILocation(line: 682, column: 29, scope: !363)
!405 = !DILocation(line: 683, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !363, file: !57, line: 683, column: 7)
!407 = !DILocation(line: 683, column: 19, scope: !406)
!408 = !DILocation(line: 683, column: 22, scope: !406)
!409 = !DILocation(line: 683, column: 7, scope: !363)
!410 = !DILocation(line: 690, column: 61, scope: !411)
!411 = distinct !DILexicalBlock(scope: !406, file: !57, line: 684, column: 5)
!412 = !DILocation(line: 689, column: 7, scope: !411)
!413 = !DILocation(line: 691, column: 5, scope: !411)
!414 = !DILocation(line: 695, column: 29, scope: !363)
!415 = !DILocation(line: 696, column: 3, scope: !363)
!416 = !DILocation(line: 699, column: 22, scope: !363)
!417 = !DILocation(line: 699, column: 17, scope: !363)
!418 = !DILocation(line: 698, column: 3, scope: !363)
!419 = !DILocation(line: 700, column: 1, scope: !363)
!420 = !DISubprogram(name: "exit", scope: !421, file: !421, line: 145, type: !255, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !346)
!421 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!422 = !DISubprogram(name: "strcmp", scope: !423, file: !423, line: 77, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!423 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!424 = !DISubroutineType(types: !425)
!425 = !{!58, !87, !87}
!426 = !DISubprogram(name: "setlocale", scope: !427, file: !427, line: 53, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!427 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!428 = !DISubroutineType(types: !429)
!429 = !{!89, !58, !87}
!430 = !DISubprogram(name: "strncmp", scope: !423, file: !423, line: 84, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!431 = !DISubroutineType(types: !432)
!432 = !{!58, !87, !87, !433}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !434, line: 31, baseType: !435)
!434 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !327, line: 94, baseType: !436)
!436 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!437 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 461, type: !438, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !441)
!438 = !DISubroutineType(types: !439)
!439 = !{!58, !58, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!441 = !{!442, !443, !444, !445, !446, !447}
!442 = !DILocalVariable(name: "argc", arg: 1, scope: !437, file: !2, line: 461, type: !58)
!443 = !DILocalVariable(name: "argv", arg: 2, scope: !437, file: !2, line: 461, type: !440)
!444 = !DILocalVariable(name: "optc", scope: !437, file: !2, line: 463, type: !58)
!445 = !DILocalVariable(name: "delim_arg", scope: !437, file: !2, line: 464, type: !87)
!446 = !DILocalVariable(name: "nfiles", scope: !437, file: !2, line: 503, type: !58)
!447 = !DILocalVariable(name: "ok", scope: !437, file: !2, line: 519, type: !126)
!448 = !DILocation(line: 0, scope: !437)
!449 = !DILocation(line: 467, column: 21, scope: !437)
!450 = !DILocation(line: 467, column: 3, scope: !437)
!451 = !DILocation(line: 468, column: 3, scope: !437)
!452 = !DILocation(line: 472, column: 3, scope: !437)
!453 = !DILocation(line: 474, column: 19, scope: !437)
!454 = !{!455, !455, i64 0}
!455 = !{!"_Bool", !268, i64 0}
!456 = !DILocation(line: 475, column: 16, scope: !437)
!457 = !DILocation(line: 477, column: 3, scope: !437)
!458 = !DILocation(line: 464, column: 15, scope: !437)
!459 = !DILocation(line: 477, column: 18, scope: !437)
!460 = !DILocation(line: 477, column: 68, scope: !437)
!461 = !DILocation(line: 479, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !437, file: !2, line: 478, column: 5)
!463 = !DILocation(line: 483, column: 24, scope: !464)
!464 = distinct !DILexicalBlock(scope: !462, file: !2, line: 480, column: 9)
!465 = !{!268, !268, i64 0}
!466 = !DILocation(line: 483, column: 34, scope: !464)
!467 = !DILocation(line: 483, column: 52, scope: !464)
!468 = !DILocation(line: 484, column: 11, scope: !464)
!469 = !DILocation(line: 487, column: 24, scope: !464)
!470 = !DILocation(line: 488, column: 11, scope: !464)
!471 = !DILocation(line: 491, column: 22, scope: !464)
!472 = !DILocation(line: 492, column: 11, scope: !464)
!473 = !DILocation(line: 494, column: 9, scope: !464)
!474 = !DILocation(line: 496, column: 9, scope: !464)
!475 = !DILocation(line: 499, column: 11, scope: !464)
!476 = distinct !{!476, !457, !477, !394, !395}
!477 = !DILocation(line: 501, column: 5, scope: !437)
!478 = !DILocation(line: 503, column: 23, scope: !437)
!479 = !{!480, !480, i64 0}
!480 = !{!"int", !268, i64 0}
!481 = !DILocation(line: 503, column: 21, scope: !437)
!482 = !DILocation(line: 504, column: 14, scope: !483)
!483 = distinct !DILexicalBlock(scope: !437, file: !2, line: 504, column: 7)
!484 = !DILocation(line: 504, column: 7, scope: !437)
!485 = !DILocation(line: 506, column: 22, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !2, line: 505, column: 5)
!487 = !DILocation(line: 506, column: 12, scope: !486)
!488 = !DILocation(line: 506, column: 7, scope: !486)
!489 = !DILocation(line: 506, column: 20, scope: !486)
!490 = !DILocation(line: 507, column: 13, scope: !486)
!491 = !DILocation(line: 508, column: 5, scope: !486)
!492 = !DILocation(line: 510, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !437, file: !2, line: 510, column: 7)
!494 = !DILocation(line: 510, column: 7, scope: !437)
!495 = !DILocation(line: 514, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !2, line: 511, column: 5)
!497 = !DILocation(line: 519, column: 15, scope: !437)
!498 = !{i8 0, i8 2}
!499 = !DILocation(line: 520, column: 15, scope: !437)
!500 = !DILocation(line: 520, column: 29, scope: !437)
!501 = !DILocation(line: 520, column: 24, scope: !437)
!502 = !DILocation(line: 519, column: 14, scope: !437)
!503 = !DILocation(line: 519, column: 8, scope: !437)
!504 = !DILocation(line: 522, column: 9, scope: !437)
!505 = !DILocation(line: 522, column: 3, scope: !437)
!506 = !DILocation(line: 524, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !437, file: !2, line: 524, column: 7)
!508 = !DILocation(line: 524, column: 23, scope: !507)
!509 = !DILocation(line: 524, column: 34, scope: !507)
!510 = !DILocation(line: 524, column: 26, scope: !507)
!511 = !DILocation(line: 524, column: 41, scope: !507)
!512 = !DILocation(line: 524, column: 7, scope: !437)
!513 = !DILocation(line: 525, column: 5, scope: !507)
!514 = !DILocation(line: 526, column: 10, scope: !437)
!515 = !DILocation(line: 526, column: 3, scope: !437)
!516 = !DISubprogram(name: "set_program_name", scope: !517, file: !517, line: 37, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!517 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!518 = !DISubprogram(name: "atexit", scope: !421, file: !421, line: 133, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!519 = !DISubroutineType(types: !520)
!520 = !{!58, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!522 = !DISubprogram(name: "rpl_getopt_long", scope: !224, file: !224, line: 66, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!523 = !DISubroutineType(types: !524)
!524 = !{!58, !58, !440, !87, !525, !229}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!526 = !DISubprogram(name: "version_etc", scope: !527, file: !527, line: 65, type: !528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!527 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!528 = !DISubroutineType(types: !529)
!529 = !{null, !292, !87, !87, !87, null}
!530 = distinct !DISubprogram(name: "bad_cast", scope: !57, file: !57, line: 725, type: !531, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !533)
!531 = !DISubroutineType(types: !532)
!532 = !{!89, !87}
!533 = !{!534}
!534 = !DILocalVariable(name: "s", arg: 1, scope: !530, file: !57, line: 725, type: !87)
!535 = !DILocation(line: 0, scope: !530)
!536 = !DILocation(line: 727, column: 3, scope: !530)
!537 = distinct !DISubprogram(name: "collapse_escapes", scope: !2, file: !2, line: 92, type: !538, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!58, !87}
!540 = !{!541, !542, !543, !544}
!541 = !DILocalVariable(name: "strptr", arg: 1, scope: !537, file: !2, line: 92, type: !87)
!542 = !DILocalVariable(name: "strout", scope: !537, file: !2, line: 94, type: !89)
!543 = !DILocalVariable(name: "backslash_at_end", scope: !537, file: !2, line: 95, type: !126)
!544 = !DILabel(scope: !537, name: "done", file: !2, line: 151)
!545 = !DILocation(line: 0, scope: !537)
!546 = !DILocation(line: 94, column: 18, scope: !537)
!547 = !DILocation(line: 97, column: 10, scope: !537)
!548 = !DILocation(line: 99, column: 3, scope: !537)
!549 = !DILocation(line: 99, column: 10, scope: !537)
!550 = !DILocation(line: 101, column: 11, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !2, line: 101, column: 11)
!552 = distinct !DILexicalBlock(scope: !537, file: !2, line: 100, column: 5)
!553 = !DILocation(line: 101, column: 19, scope: !551)
!554 = !DILocation(line: 101, column: 11, scope: !552)
!555 = !DILocation(line: 102, column: 28, scope: !551)
!556 = !DILocation(line: 102, column: 21, scope: !551)
!557 = !DILocation(line: 102, column: 16, scope: !551)
!558 = !DILocation(line: 102, column: 19, scope: !551)
!559 = !DILocation(line: 102, column: 9, scope: !551)
!560 = !DILocation(line: 105, column: 20, scope: !561)
!561 = distinct !DILexicalBlock(scope: !551, file: !2, line: 104, column: 9)
!562 = !DILocation(line: 105, column: 19, scope: !561)
!563 = !DILocation(line: 105, column: 11, scope: !561)
!564 = !DILocation(line: 108, column: 22, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !2, line: 106, column: 13)
!566 = !DILocation(line: 108, column: 25, scope: !565)
!567 = !DILocation(line: 109, column: 15, scope: !565)
!568 = !DILocation(line: 112, column: 22, scope: !565)
!569 = !DILocation(line: 112, column: 25, scope: !565)
!570 = !DILocation(line: 113, column: 15, scope: !565)
!571 = !DILocation(line: 116, column: 22, scope: !565)
!572 = !DILocation(line: 116, column: 25, scope: !565)
!573 = !DILocation(line: 117, column: 15, scope: !565)
!574 = !DILocation(line: 120, column: 22, scope: !565)
!575 = !DILocation(line: 120, column: 25, scope: !565)
!576 = !DILocation(line: 121, column: 15, scope: !565)
!577 = !DILocation(line: 124, column: 22, scope: !565)
!578 = !DILocation(line: 124, column: 25, scope: !565)
!579 = !DILocation(line: 125, column: 15, scope: !565)
!580 = !DILocation(line: 128, column: 22, scope: !565)
!581 = !DILocation(line: 128, column: 25, scope: !565)
!582 = !DILocation(line: 129, column: 15, scope: !565)
!583 = !DILocation(line: 132, column: 22, scope: !565)
!584 = !DILocation(line: 132, column: 25, scope: !565)
!585 = !DILocation(line: 133, column: 15, scope: !565)
!586 = !DILocation(line: 136, column: 22, scope: !565)
!587 = !DILocation(line: 136, column: 25, scope: !565)
!588 = !DILocation(line: 137, column: 15, scope: !565)
!589 = !DILocation(line: 141, column: 15, scope: !565)
!590 = !DILocation(line: 144, column: 27, scope: !565)
!591 = !DILocation(line: 144, column: 22, scope: !565)
!592 = !DILocation(line: 144, column: 25, scope: !565)
!593 = !DILocation(line: 145, column: 15, scope: !565)
!594 = !DILocation(line: 0, scope: !565)
!595 = !DILocation(line: 147, column: 17, scope: !561)
!596 = !DILocation(line: 0, scope: !551)
!597 = distinct !{!597, !548, !598, !394, !395}
!598 = !DILocation(line: 149, column: 5, scope: !537)
!599 = !DILocation(line: 151, column: 2, scope: !537)
!600 = !DILocation(line: 153, column: 13, scope: !537)
!601 = !DILocation(line: 154, column: 10, scope: !537)
!602 = !DILocation(line: 154, column: 3, scope: !537)
!603 = !DISubprogram(name: "quotearg_n_style_colon", scope: !63, file: !63, line: 403, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!604 = !DISubroutineType(types: !605)
!605 = !{!89, !58, !62, !87}
!606 = !DISubprogram(name: "error", scope: !607, file: !607, line: 395, type: !608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!607 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!608 = !DISubroutineType(types: !609)
!609 = !{null, !58, !58, !87, null}
!610 = distinct !DISubprogram(name: "paste_serial", scope: !2, file: !2, line: 346, type: !611, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!126, !433, !440}
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !625}
!614 = !DILocalVariable(name: "nfiles", arg: 1, scope: !610, file: !2, line: 346, type: !433)
!615 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !610, file: !2, line: 346, type: !440)
!616 = !DILocalVariable(name: "ok", scope: !610, file: !2, line: 348, type: !126)
!617 = !DILocalVariable(name: "charnew", scope: !610, file: !2, line: 349, type: !58)
!618 = !DILocalVariable(name: "charold", scope: !610, file: !2, line: 349, type: !58)
!619 = !DILocalVariable(name: "delimptr", scope: !610, file: !2, line: 350, type: !87)
!620 = !DILocalVariable(name: "fileptr", scope: !610, file: !2, line: 351, type: !292)
!621 = !DILocalVariable(name: "saved_errno", scope: !622, file: !2, line: 355, type: !58)
!622 = distinct !DILexicalBlock(scope: !623, file: !2, line: 354, column: 5)
!623 = distinct !DILexicalBlock(scope: !624, file: !2, line: 353, column: 3)
!624 = distinct !DILexicalBlock(scope: !610, file: !2, line: 353, column: 3)
!625 = !DILocalVariable(name: "is_stdin", scope: !622, file: !2, line: 356, type: !126)
!626 = !DILocation(line: 0, scope: !610)
!627 = !DILocation(line: 353, column: 3, scope: !610)
!628 = !DILocation(line: 353, column: 3, scope: !624)
!629 = !DILocation(line: 356, column: 23, scope: !622)
!630 = !DILocation(line: 356, column: 12, scope: !622)
!631 = !DILocation(line: 0, scope: !622)
!632 = !DILocation(line: 357, column: 11, scope: !633)
!633 = distinct !DILexicalBlock(scope: !622, file: !2, line: 357, column: 11)
!634 = !DILocation(line: 357, column: 11, scope: !622)
!635 = !DILocation(line: 359, column: 27, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !2, line: 358, column: 9)
!637 = !DILocation(line: 360, column: 21, scope: !636)
!638 = !DILocation(line: 361, column: 9, scope: !636)
!639 = !DILocation(line: 364, column: 28, scope: !640)
!640 = distinct !DILexicalBlock(scope: !633, file: !2, line: 363, column: 9)
!641 = !DILocation(line: 364, column: 21, scope: !640)
!642 = !DILocation(line: 365, column: 23, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !2, line: 365, column: 15)
!644 = !DILocation(line: 365, column: 15, scope: !640)
!645 = !DILocation(line: 367, column: 25, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !2, line: 366, column: 13)
!647 = !DILocation(line: 367, column: 38, scope: !646)
!648 = !DILocation(line: 367, column: 15, scope: !646)
!649 = !DILocation(line: 369, column: 15, scope: !646)
!650 = !DILocation(line: 371, column: 11, scope: !640)
!651 = !DILocation(line: 0, scope: !633)
!652 = !DILocation(line: 374, column: 18, scope: !622)
!653 = !DILocation(line: 376, column: 17, scope: !622)
!654 = !{!655, !480, i64 8}
!655 = !{!"__sFILE", !267, i64 0, !480, i64 8, !480, i64 12, !656, i64 16, !656, i64 18, !657, i64 24, !480, i64 40, !267, i64 48, !267, i64 56, !267, i64 64, !267, i64 72, !267, i64 80, !657, i64 88, !267, i64 104, !480, i64 112, !268, i64 116, !268, i64 119, !657, i64 120, !480, i64 136, !658, i64 144}
!656 = !{!"short", !268, i64 0}
!657 = !{!"__sbuf", !267, i64 0, !480, i64 8}
!658 = !{!"long long", !268, i64 0}
!659 = !{!655, !267, i64 0}
!660 = !DILocation(line: 377, column: 21, scope: !622)
!661 = !DILocation(line: 378, column: 19, scope: !662)
!662 = distinct !DILexicalBlock(scope: !622, file: !2, line: 378, column: 11)
!663 = !DILocation(line: 378, column: 11, scope: !622)
!664 = !DILocation(line: 386, column: 11, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !2, line: 379, column: 9)
!666 = !DILocation(line: 386, column: 29, scope: !665)
!667 = !DILocation(line: 386, column: 45, scope: !665)
!668 = !DILocation(line: 389, column: 30, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !2, line: 389, column: 19)
!670 = distinct !DILexicalBlock(scope: !665, file: !2, line: 387, column: 13)
!671 = !DILocation(line: 389, column: 27, scope: !669)
!672 = !DILocation(line: 389, column: 19, scope: !670)
!673 = !DILocation(line: 391, column: 23, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !2, line: 391, column: 23)
!675 = distinct !DILexicalBlock(scope: !669, file: !2, line: 390, column: 17)
!676 = !DILocation(line: 391, column: 33, scope: !674)
!677 = !DILocation(line: 391, column: 23, scope: !675)
!678 = !DILocation(line: 392, column: 31, scope: !674)
!679 = !DILocation(line: 392, column: 21, scope: !674)
!680 = !DILocation(line: 394, column: 23, scope: !681)
!681 = distinct !DILexicalBlock(scope: !675, file: !2, line: 394, column: 23)
!682 = !DILocation(line: 394, column: 37, scope: !681)
!683 = !DILocation(line: 394, column: 34, scope: !681)
!684 = !DILocation(line: 394, column: 23, scope: !675)
!685 = !DILocation(line: 395, column: 32, scope: !681)
!686 = !DILocation(line: 395, column: 21, scope: !681)
!687 = !DILocation(line: 0, scope: !681)
!688 = !DILocation(line: 396, column: 17, scope: !675)
!689 = !DILocation(line: 398, column: 27, scope: !669)
!690 = !DILocation(line: 398, column: 17, scope: !669)
!691 = distinct !{!691, !664, !692, !394, !395}
!692 = !DILocation(line: 401, column: 13, scope: !665)
!693 = !DILocation(line: 402, column: 25, scope: !665)
!694 = !DILocation(line: 405, column: 21, scope: !665)
!695 = !DILocation(line: 405, column: 11, scope: !665)
!696 = !DILocation(line: 406, column: 9, scope: !665)
!697 = !DILocation(line: 376, column: 15, scope: !622)
!698 = !DILocation(line: 408, column: 22, scope: !699)
!699 = distinct !DILexicalBlock(scope: !622, file: !2, line: 408, column: 11)
!700 = !DILocation(line: 408, column: 19, scope: !699)
!701 = !DILocation(line: 408, column: 11, scope: !622)
!702 = !DILocation(line: 409, column: 19, scope: !699)
!703 = !DILocation(line: 409, column: 9, scope: !699)
!704 = !DILocation(line: 411, column: 12, scope: !705)
!705 = distinct !DILexicalBlock(scope: !622, file: !2, line: 411, column: 11)
!706 = !{!655, !656, i64 16}
!707 = !DILocation(line: 411, column: 11, scope: !622)
!708 = !DILocation(line: 412, column: 9, scope: !705)
!709 = !DILocation(line: 413, column: 11, scope: !710)
!710 = distinct !DILexicalBlock(scope: !622, file: !2, line: 413, column: 11)
!711 = !DILocation(line: 413, column: 11, scope: !622)
!712 = !DILocation(line: 414, column: 9, scope: !710)
!713 = !DILocation(line: 415, column: 16, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !2, line: 415, column: 16)
!715 = !DILocation(line: 415, column: 33, scope: !714)
!716 = !DILocation(line: 415, column: 38, scope: !714)
!717 = !DILocation(line: 415, column: 42, scope: !714)
!718 = !DILocation(line: 415, column: 16, scope: !710)
!719 = !DILocation(line: 416, column: 23, scope: !714)
!720 = !DILocation(line: 416, column: 9, scope: !714)
!721 = !DILocation(line: 402, column: 23, scope: !665)
!722 = !DILocation(line: 417, column: 11, scope: !723)
!723 = distinct !DILexicalBlock(scope: !622, file: !2, line: 417, column: 11)
!724 = !DILocation(line: 417, column: 11, scope: !622)
!725 = !DILocation(line: 419, column: 40, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !2, line: 418, column: 9)
!727 = !DILocation(line: 419, column: 11, scope: !726)
!728 = !DILocation(line: 421, column: 9, scope: !726)
!729 = !DILocation(line: 422, column: 5, scope: !623)
!730 = !DILocation(line: 422, column: 5, scope: !622)
!731 = !DILocation(line: 353, column: 24, scope: !623)
!732 = !DILocation(line: 353, column: 35, scope: !623)
!733 = !DILocation(line: 353, column: 3, scope: !623)
!734 = distinct !{!734, !628, !735, !394, !395}
!735 = !DILocation(line: 422, column: 5, scope: !624)
!736 = !DILocation(line: 423, column: 10, scope: !610)
!737 = !DILocation(line: 423, column: 3, scope: !610)
!738 = distinct !DISubprogram(name: "paste_parallel", scope: !2, file: !2, line: 179, type: !611, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !739)
!739 = !{!740, !741, !742, !743, !744, !746, !747, !748, !750, !751, !752, !754, !757, !758, !759}
!740 = !DILocalVariable(name: "nfiles", arg: 1, scope: !738, file: !2, line: 179, type: !433)
!741 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !738, file: !2, line: 179, type: !440)
!742 = !DILocalVariable(name: "ok", scope: !738, file: !2, line: 181, type: !126)
!743 = !DILocalVariable(name: "delbuf", scope: !738, file: !2, line: 186, type: !89)
!744 = !DILocalVariable(name: "fileptr", scope: !738, file: !2, line: 190, type: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!746 = !DILocalVariable(name: "files_open", scope: !738, file: !2, line: 193, type: !433)
!747 = !DILocalVariable(name: "opened_stdin", scope: !738, file: !2, line: 196, type: !126)
!748 = !DILocalVariable(name: "somedone", scope: !749, file: !2, line: 230, type: !126)
!749 = distinct !DILexicalBlock(scope: !738, file: !2, line: 228, column: 5)
!750 = !DILocalVariable(name: "delimptr", scope: !749, file: !2, line: 231, type: !87)
!751 = !DILocalVariable(name: "delims_saved", scope: !749, file: !2, line: 232, type: !433)
!752 = !DILocalVariable(name: "i", scope: !753, file: !2, line: 234, type: !433)
!753 = distinct !DILexicalBlock(scope: !749, file: !2, line: 234, column: 7)
!754 = !DILocalVariable(name: "chr", scope: !755, file: !2, line: 236, type: !58)
!755 = distinct !DILexicalBlock(scope: !756, file: !2, line: 235, column: 9)
!756 = distinct !DILexicalBlock(scope: !753, file: !2, line: 234, column: 7)
!757 = !DILocalVariable(name: "err", scope: !755, file: !2, line: 237, type: !58)
!758 = !DILocalVariable(name: "sometodo", scope: !755, file: !2, line: 238, type: !126)
!759 = !DILocalVariable(name: "c", scope: !760, file: !2, line: 330, type: !4)
!760 = distinct !DILexicalBlock(scope: !761, file: !2, line: 327, column: 17)
!761 = distinct !DILexicalBlock(scope: !762, file: !2, line: 317, column: 19)
!762 = distinct !DILexicalBlock(scope: !763, file: !2, line: 312, column: 13)
!763 = distinct !DILexicalBlock(scope: !755, file: !2, line: 262, column: 15)
!764 = !DILocation(line: 0, scope: !738)
!765 = !DILocation(line: 186, column: 34, scope: !738)
!766 = !DILocation(line: 186, column: 18, scope: !738)
!767 = !DILocation(line: 190, column: 37, scope: !738)
!768 = !DILocation(line: 190, column: 20, scope: !738)
!769 = !DILocation(line: 202, column: 8, scope: !770)
!770 = distinct !DILexicalBlock(scope: !738, file: !2, line: 202, column: 3)
!771 = !DILocation(line: 196, column: 8, scope: !738)
!772 = !DILocation(line: 202, scope: !770)
!773 = !DILocation(line: 202, column: 35, scope: !774)
!774 = distinct !DILexicalBlock(scope: !770, file: !2, line: 202, column: 3)
!775 = !DILocation(line: 202, column: 3, scope: !770)
!776 = !DILocation(line: 204, column: 11, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !2, line: 204, column: 11)
!778 = distinct !DILexicalBlock(scope: !774, file: !2, line: 203, column: 5)
!779 = !DILocation(line: 204, column: 11, scope: !778)
!780 = !DILocation(line: 206, column: 27, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !2, line: 205, column: 9)
!782 = !DILocation(line: 207, column: 33, scope: !781)
!783 = !DILocation(line: 207, column: 11, scope: !781)
!784 = !DILocation(line: 207, column: 31, scope: !781)
!785 = !DILocation(line: 208, column: 9, scope: !781)
!786 = !DILocation(line: 211, column: 40, scope: !787)
!787 = distinct !DILexicalBlock(scope: !777, file: !2, line: 210, column: 9)
!788 = !DILocation(line: 211, column: 33, scope: !787)
!789 = !DILocation(line: 211, column: 11, scope: !787)
!790 = !DILocation(line: 211, column: 31, scope: !787)
!791 = !DILocation(line: 212, column: 15, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !2, line: 212, column: 15)
!793 = !DILocation(line: 212, column: 35, scope: !792)
!794 = !DILocation(line: 212, column: 15, scope: !787)
!795 = !DILocation(line: 213, column: 13, scope: !792)
!796 = !DILocation(line: 214, column: 28, scope: !797)
!797 = distinct !DILexicalBlock(scope: !792, file: !2, line: 214, column: 20)
!798 = !DILocation(line: 214, column: 20, scope: !797)
!799 = !DILocation(line: 214, column: 49, scope: !797)
!800 = !DILocation(line: 214, column: 20, scope: !792)
!801 = !DILocation(line: 215, column: 13, scope: !797)
!802 = !DILocation(line: 216, column: 20, scope: !787)
!803 = !DILocation(line: 216, column: 11, scope: !787)
!804 = !DILocation(line: 218, column: 5, scope: !778)
!805 = !DILocation(line: 202, column: 45, scope: !774)
!806 = !DILocation(line: 202, column: 3, scope: !774)
!807 = distinct !{!807, !775, !808, !394, !395}
!808 = !DILocation(line: 218, column: 5, scope: !770)
!809 = !DILocation(line: 220, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !738, file: !2, line: 220, column: 7)
!811 = !DILocation(line: 220, column: 20, scope: !810)
!812 = !DILocation(line: 220, column: 23, scope: !810)
!813 = !DILocation(line: 220, column: 7, scope: !738)
!814 = !DILocation(line: 221, column: 5, scope: !810)
!815 = !DILocation(line: 227, column: 3, scope: !738)
!816 = !DILocation(line: 202, column: 19, scope: !770)
!817 = !DILocation(line: 181, column: 8, scope: !738)
!818 = !DILocation(line: 0, scope: !755)
!819 = !DILocation(line: 0, scope: !749)
!820 = !DILocation(line: 231, column: 30, scope: !749)
!821 = !DILocation(line: 0, scope: !753)
!822 = !DILocation(line: 234, column: 12, scope: !753)
!823 = !DILocation(line: 234, scope: !753)
!824 = !DILocation(line: 234, column: 28, scope: !756)
!825 = !DILocation(line: 234, column: 37, scope: !756)
!826 = !DILocation(line: 0, scope: !756)
!827 = !DILocation(line: 234, column: 7, scope: !753)
!828 = !DILocation(line: 240, column: 15, scope: !829)
!829 = distinct !DILexicalBlock(scope: !755, file: !2, line: 240, column: 15)
!830 = !DILocation(line: 240, column: 15, scope: !755)
!831 = !DILocation(line: 242, column: 21, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !2, line: 241, column: 13)
!833 = !DILocation(line: 243, column: 21, scope: !832)
!834 = !DILocation(line: 244, column: 23, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !2, line: 244, column: 19)
!836 = !DILocation(line: 244, column: 30, scope: !835)
!837 = !DILocation(line: 244, column: 33, scope: !835)
!838 = !DILocation(line: 244, column: 19, scope: !832)
!839 = !DILocation(line: 246, column: 56, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 246, column: 23)
!841 = distinct !DILexicalBlock(scope: !835, file: !2, line: 245, column: 17)
!842 = !DILocation(line: 246, column: 23, scope: !840)
!843 = !DILocation(line: 246, column: 64, scope: !840)
!844 = !DILocation(line: 246, column: 23, scope: !841)
!845 = !DILocation(line: 247, column: 21, scope: !840)
!846 = !DILocation(line: 249, column: 17, scope: !841)
!847 = !DILocation(line: 251, column: 15, scope: !832)
!848 = !DILocation(line: 0, scope: !832)
!849 = !DILocation(line: 251, column: 26, scope: !832)
!850 = !DILocation(line: 254, column: 30, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !2, line: 254, column: 23)
!852 = distinct !DILexicalBlock(scope: !832, file: !2, line: 252, column: 17)
!853 = !DILocation(line: 254, column: 27, scope: !851)
!854 = !DILocation(line: 254, column: 23, scope: !852)
!855 = !DILocation(line: 255, column: 21, scope: !851)
!856 = !DILocation(line: 256, column: 29, scope: !852)
!857 = !DILocation(line: 256, column: 19, scope: !852)
!858 = !DILocation(line: 257, column: 25, scope: !852)
!859 = !DILocation(line: 258, column: 25, scope: !852)
!860 = distinct !{!860, !847, !861, !394, !395}
!861 = !DILocation(line: 259, column: 17, scope: !832)
!862 = !DILocation(line: 260, column: 13, scope: !832)
!863 = !DILocation(line: 262, column: 17, scope: !763)
!864 = !DILocation(line: 262, column: 15, scope: !755)
!865 = !DILocation(line: 266, column: 19, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !2, line: 266, column: 19)
!867 = distinct !DILexicalBlock(scope: !763, file: !2, line: 263, column: 13)
!868 = !DILocation(line: 266, column: 19, scope: !867)
!869 = !DILocation(line: 268, column: 24, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 268, column: 23)
!871 = distinct !DILexicalBlock(scope: !866, file: !2, line: 267, column: 17)
!872 = !DILocation(line: 268, column: 23, scope: !871)
!873 = !DILocation(line: 269, column: 21, scope: !870)
!874 = !DILocation(line: 270, column: 23, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !2, line: 270, column: 23)
!876 = !DILocation(line: 270, column: 37, scope: !875)
!877 = !DILocation(line: 270, column: 34, scope: !875)
!878 = !DILocation(line: 270, column: 23, scope: !871)
!879 = !DILocation(line: 271, column: 21, scope: !875)
!880 = !DILocation(line: 272, column: 36, scope: !881)
!881 = distinct !DILexicalBlock(scope: !875, file: !2, line: 272, column: 28)
!882 = !DILocation(line: 272, column: 28, scope: !881)
!883 = !DILocation(line: 272, column: 48, scope: !881)
!884 = !DILocation(line: 272, column: 55, scope: !881)
!885 = !DILocation(line: 272, column: 59, scope: !881)
!886 = !DILocation(line: 272, column: 28, scope: !875)
!887 = !DILocation(line: 273, column: 27, scope: !881)
!888 = !DILocation(line: 273, column: 21, scope: !881)
!889 = !DILocation(line: 243, column: 19, scope: !832)
!890 = !DILocation(line: 274, column: 23, scope: !891)
!891 = distinct !DILexicalBlock(scope: !871, file: !2, line: 274, column: 23)
!892 = !DILocation(line: 274, column: 23, scope: !871)
!893 = !DILocation(line: 276, column: 44, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !2, line: 275, column: 21)
!895 = !DILocation(line: 276, column: 23, scope: !894)
!896 = !DILocation(line: 278, column: 21, scope: !894)
!897 = !DILocation(line: 280, column: 19, scope: !871)
!898 = !DILocation(line: 280, column: 30, scope: !871)
!899 = !DILocation(line: 281, column: 29, scope: !871)
!900 = !DILocation(line: 282, column: 17, scope: !871)
!901 = !DILocation(line: 284, column: 21, scope: !902)
!902 = distinct !DILexicalBlock(scope: !867, file: !2, line: 284, column: 19)
!903 = !DILocation(line: 284, column: 25, scope: !902)
!904 = !DILocation(line: 284, column: 19, scope: !867)
!905 = !DILocation(line: 288, column: 23, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !2, line: 288, column: 23)
!907 = distinct !DILexicalBlock(scope: !902, file: !2, line: 285, column: 17)
!908 = !DILocation(line: 288, column: 23, scope: !907)
!909 = !DILocation(line: 291, column: 27, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !2, line: 291, column: 27)
!911 = distinct !DILexicalBlock(scope: !906, file: !2, line: 289, column: 21)
!912 = !DILocation(line: 291, column: 27, scope: !911)
!913 = !DILocation(line: 293, column: 64, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !2, line: 293, column: 31)
!915 = distinct !DILexicalBlock(scope: !910, file: !2, line: 292, column: 25)
!916 = !DILocation(line: 293, column: 31, scope: !914)
!917 = !DILocation(line: 294, column: 31, scope: !914)
!918 = !DILocation(line: 293, column: 31, scope: !915)
!919 = !DILocation(line: 295, column: 29, scope: !914)
!920 = !DILocation(line: 297, column: 25, scope: !915)
!921 = !DILocation(line: 298, column: 33, scope: !911)
!922 = !DILocation(line: 298, column: 23, scope: !911)
!923 = !DILocation(line: 299, column: 21, scope: !911)
!924 = !DILocation(line: 300, column: 19, scope: !907)
!925 = !DILocation(line: 305, column: 23, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !2, line: 305, column: 23)
!927 = distinct !DILexicalBlock(scope: !902, file: !2, line: 303, column: 17)
!928 = !DILocation(line: 305, column: 33, scope: !926)
!929 = !DILocation(line: 305, column: 23, scope: !927)
!930 = !DILocation(line: 306, column: 46, scope: !926)
!931 = !DILocation(line: 306, column: 40, scope: !926)
!932 = !DILocation(line: 306, column: 21, scope: !926)
!933 = !DILocation(line: 306, column: 44, scope: !926)
!934 = !DILocation(line: 307, column: 23, scope: !935)
!935 = distinct !DILexicalBlock(scope: !927, file: !2, line: 307, column: 23)
!936 = !DILocation(line: 307, column: 37, scope: !935)
!937 = !DILocation(line: 307, column: 34, scope: !935)
!938 = !DILocation(line: 307, column: 23, scope: !927)
!939 = !DILocation(line: 308, column: 32, scope: !935)
!940 = !DILocation(line: 308, column: 21, scope: !935)
!941 = !DILocation(line: 0, scope: !935)
!942 = !DILocation(line: 310, column: 13, scope: !867)
!943 = !DILocation(line: 317, column: 21, scope: !761)
!944 = !DILocation(line: 317, column: 25, scope: !761)
!945 = !DILocation(line: 317, column: 19, scope: !762)
!946 = !DILocation(line: 319, column: 30, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !2, line: 319, column: 23)
!948 = distinct !DILexicalBlock(scope: !761, file: !2, line: 318, column: 17)
!949 = !DILocation(line: 319, column: 27, scope: !947)
!950 = !DILocation(line: 319, column: 41, scope: !947)
!951 = !DILocation(line: 319, column: 48, scope: !947)
!952 = !DILocation(line: 319, column: 23, scope: !948)
!953 = !DILocation(line: 320, column: 31, scope: !947)
!954 = !DILocation(line: 320, column: 21, scope: !947)
!955 = !DILocation(line: 321, column: 23, scope: !956)
!956 = distinct !DILexicalBlock(scope: !948, file: !2, line: 321, column: 23)
!957 = !DILocation(line: 321, column: 33, scope: !956)
!958 = !DILocation(line: 321, column: 23, scope: !948)
!959 = !DILocation(line: 322, column: 31, scope: !956)
!960 = !DILocation(line: 322, column: 21, scope: !956)
!961 = !DILocation(line: 323, column: 23, scope: !962)
!962 = distinct !DILexicalBlock(scope: !948, file: !2, line: 323, column: 23)
!963 = !DILocation(line: 323, column: 37, scope: !962)
!964 = !DILocation(line: 323, column: 34, scope: !962)
!965 = !DILocation(line: 323, column: 23, scope: !948)
!966 = !DILocation(line: 324, column: 32, scope: !962)
!967 = !DILocation(line: 324, column: 21, scope: !962)
!968 = !DILocation(line: 0, scope: !962)
!969 = !DILocation(line: 325, column: 17, scope: !948)
!970 = !DILocation(line: 330, column: 33, scope: !760)
!971 = !DILocation(line: 330, column: 29, scope: !760)
!972 = !DILocation(line: 330, column: 42, scope: !760)
!973 = !DILocation(line: 330, column: 28, scope: !760)
!974 = !DILocation(line: 0, scope: !760)
!975 = !DILocation(line: 331, column: 19, scope: !760)
!976 = !DILocation(line: 0, scope: !763)
!977 = !DILocation(line: 334, column: 9, scope: !756)
!978 = !DILocation(line: 334, column: 9, scope: !755)
!979 = !DILocation(line: 234, column: 53, scope: !756)
!980 = !DILocation(line: 234, column: 7, scope: !756)
!981 = distinct !{!981, !827, !982, !394, !395}
!982 = !DILocation(line: 334, column: 9, scope: !753)
!983 = distinct !{!983, !815, !984, !394, !395}
!984 = !DILocation(line: 335, column: 5, scope: !738)
!985 = !DILocation(line: 336, column: 3, scope: !738)
!986 = !DILocation(line: 337, column: 3, scope: !738)
!987 = !DILocation(line: 338, column: 10, scope: !738)
!988 = !DILocation(line: 338, column: 3, scope: !738)
!989 = !DISubprogram(name: "rpl_free", scope: !990, file: !990, line: 756, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!990 = !DIFile(filename: "./lib/stdlib.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!991 = !DISubroutineType(types: !992)
!992 = !{null, !90}
!993 = !DISubprogram(name: "rpl_fclose", scope: !994, file: !994, line: 778, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!994 = !DIFile(filename: "./lib/stdio.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!995 = !DISubroutineType(types: !996)
!996 = !{!58, !292}
!997 = !DISubprogram(name: "__error", scope: !998, file: !998, line: 80, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!998 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!999 = !DISubroutineType(types: !1000)
!1000 = !{!229}
!1001 = !DISubprogram(name: "xmalloc", scope: !1002, file: !1002, line: 55, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!1002 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!90, !433}
!1005 = !DISubprogram(name: "xnmalloc", scope: !1002, file: !1002, line: 132, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!90, !433, !433}
!1008 = !DISubprogram(name: "rpl_fopen", scope: !994, file: !994, line: 958, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!292, !345, !345}
!1011 = !DISubprogram(name: "fileno", scope: !288, file: !288, line: 229, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!1012 = !DISubprogram(name: "fadvise", scope: !78, file: !78, line: 71, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !292, !1015}
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !78, line: 60, baseType: !77)
!1016 = !DISubprogram(name: "__srget", scope: !288, file: !288, line: 259, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!1017 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !288, file: !288, line: 165, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!436, !1020, !433, !433, !291}
!1020 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1023 = distinct !DISubprogram(name: "write_error", scope: !2, file: !2, line: 160, type: !354, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !346)
!1024 = !DILocation(line: 162, column: 3, scope: !1023)
!1025 = distinct !DISubprogram(name: "xputchar", scope: !2, file: !2, line: 168, type: !1026, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !4}
!1028 = !{!1029}
!1029 = !DILocalVariable(name: "c", arg: 1, scope: !1025, file: !2, line: 168, type: !4)
!1030 = !DILocation(line: 0, scope: !1025)
!1031 = !DILocation(line: 170, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 170, column: 7)
!1033 = !DILocation(line: 170, column: 19, scope: !1032)
!1034 = !DILocation(line: 170, column: 7, scope: !1025)
!1035 = !DILocation(line: 171, column: 5, scope: !1032)
!1036 = !DILocation(line: 172, column: 1, scope: !1025)
!1037 = !DISubprogram(name: "putc_unlocked", scope: !288, file: !288, line: 301, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!58, !58, !292}
!1040 = !DISubprogram(name: "xstrdup", scope: !1002, file: !1002, line: 99, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !346)
