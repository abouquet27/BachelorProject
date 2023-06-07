; ModuleID = 'coreutils-9.3/build/src/head.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__sFILE = type { ptr, i32, i32, i16, i16, %struct.__sbuf, i32, ptr, ptr, ptr, ptr, ptr, %struct.__sbuf, ptr, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sbuf = type { ptr, i32 }
%struct.linebuffer = type { [1025 x i8], i64, i64, ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [133 x i8] c"Print the first %d lines of each FILE to standard output.\0AWith more than one FILE, precede each with a header giving the file name.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [398 x i8] c"  -c, --bytes=[-]NUM       print the first NUM bytes of each file;\0A                             with the leading '-', print all but the last\0A                             NUM bytes of each file\0A  -n, --lines=[-]NUM       print the first NUM lines instead of the first %d;\0A                             with the leading '-', print all but the last\0A                             NUM lines of each file\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [132 x i8] c"  -q, --quiet, --silent    never print headers giving file names\0A  -v, --verbose            always print headers giving file names\0A\00", align 1, !dbg !22
@__stdoutp = external global ptr, align 8
@.str.5 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [218 x i8] c"\0ANUM may have a multiplier suffix:\0Ab 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024,\0AGB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y, R, Q.\0ABinary prefixes can be used, too: KiB=K, MiB=M, and so on.\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [5 x i8] c"head\00", align 1, !dbg !47
@main.default_file_list = internal constant [2 x ptr] [ptr @.str.10, ptr null], align 16, !dbg !52
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !113
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !118
@have_read_stdin = internal global i8 0, align 1, !dbg !165
@print_headers = internal global i8 0, align 1, !dbg !161
@line_end = internal global i8 0, align 1, !dbg !163
@.str.12 = private unnamed_addr constant [30 x i8] c"invalid trailing option -- %c\00", align 1, !dbg !123
@.str.13 = private unnamed_addr constant [18 x i8] c"c:n:qvz0123456789\00", align 1, !dbg !128
@long_options = internal constant [10 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.40, i32 1, ptr null, i32 99 }, %struct.rpl_option { ptr @.str.41, i32 1, ptr null, i32 110 }, %struct.rpl_option { ptr @.str.42, i32 0, ptr null, i32 128 }, %struct.rpl_option { ptr @.str.43, i32 0, ptr null, i32 113 }, %struct.rpl_option { ptr @.str.44, i32 0, ptr null, i32 113 }, %struct.rpl_option { ptr @.str.45, i32 0, ptr null, i32 118 }, %struct.rpl_option { ptr @.str.46, i32 0, ptr null, i32 122 }, %struct.rpl_option { ptr @.str.47, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.48, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !272
@presume_input_pipe = internal global i8 0, align 1, !dbg !158
@rpl_optarg = external global ptr, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !133
@Version = external global ptr, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !138
@.str.16 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !143
@rpl_optind = external global i32, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !148
@.str.18 = private unnamed_addr constant [24 x i8] c"invalid number of bytes\00", align 1, !dbg !153
@.str.19 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !167
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !172
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !177
@.str.22 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !179
@.str.23 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !181
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !186
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !191
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !193
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !198
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !200
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !202
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.21, ptr @.str.22 }, %struct.infomap { ptr @.str.23, ptr @.str.24 }, %struct.infomap { ptr @.str.25, ptr @.str.26 }, %struct.infomap { ptr @.str.27, ptr @.str.26 }, %struct.infomap { ptr @.str.28, ptr @.str.26 }, %struct.infomap { ptr @.str.29, ptr @.str.26 }, %struct.infomap zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !204
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !209
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !214
@.str.33 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !219
@.str.34 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !224
@.str.35 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !226
@.str.36 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !231
@.str.37 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !236
@.str.38 = private unnamed_addr constant [15 x i8] c"bkKmMGTPEZYRQ0\00", align 1, !dbg !241
@.str.39 = private unnamed_addr constant [24 x i8] c"invalid number of lines\00", align 1, !dbg !243
@.str.40 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1, !dbg !245
@.str.41 = private unnamed_addr constant [6 x i8] c"lines\00", align 1, !dbg !250
@.str.42 = private unnamed_addr constant [20 x i8] c"-presume-input-pipe\00", align 1, !dbg !252
@.str.43 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1, !dbg !257
@.str.44 = private unnamed_addr constant [7 x i8] c"silent\00", align 1, !dbg !259
@.str.45 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !261
@.str.46 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !266
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !268
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !270
@.str.49 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1, !dbg !284
@.str.50 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1, !dbg !286
@.str.51 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1, !dbg !288
@.str.52 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1, !dbg !293
@write_header.first_file = internal global i8 1, align 1, !dbg !295
@.str.53 = private unnamed_addr constant [14 x i8] c"%s==> %s <==\0A\00", align 1, !dbg !302
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !304
@.str.55 = private unnamed_addr constant [29 x i8] c"%s: cannot seek to offset %s\00", align 1, !dbg !306
@.str.56 = private unnamed_addr constant [38 x i8] c"%s: cannot seek to relative offset %s\00", align 1, !dbg !311
@.str.57 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1, !dbg !316
@.str.58 = private unnamed_addr constant [17 x i8] c"error writing %s\00", align 1, !dbg !321
@.str.59 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1, !dbg !323
@.str.60 = private unnamed_addr constant [29 x i8] c"%s: file has shrunk too much\00", align 1, !dbg !325
@.str.61 = private unnamed_addr constant [33 x i8] c"%s: number of bytes is too large\00", align 1, !dbg !327

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !362 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !366, metadata !DIExpression()), !dbg !367
  %2 = icmp ne i32 %0, 0, !dbg !368
  br i1 %2, label %3, label %9, !dbg !370

3:                                                ; preds = %1
  br label %4, !dbg !371

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !372, !tbaa !374
  %6 = load ptr, ptr @program_name, align 8, !dbg !372, !tbaa !374
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !372
  br label %8, !dbg !372

8:                                                ; preds = %4
  br label %24, !dbg !372

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !378, !tbaa !374
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !380
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 10), !dbg !381
  call void @emit_stdin_note(), !dbg !382
  call void @emit_mandatory_arg_note(), !dbg !383
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef 10), !dbg !384
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !385, !tbaa !374
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %14), !dbg !386
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !387, !tbaa !374
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %16), !dbg !388
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !389, !tbaa !374
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %18), !dbg !390
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !391, !tbaa !374
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %20), !dbg !392
  %22 = load ptr, ptr @__stdoutp, align 8, !dbg !393, !tbaa !374
  %23 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %22), !dbg !394
  call void @emit_ancillary_info(ptr noundef @.str.9), !dbg !395
  br label %24

24:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #14, !dbg !396
  unreachable, !dbg !396
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !397 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !455 i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_stdin_note() #3 !dbg !458 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !461, !tbaa !374
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.19, ptr noundef %1), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !464 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !465, !tbaa !374
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.20, ptr noundef %1), !dbg !466
  ret void, !dbg !467
}

declare !dbg !468 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !471 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !473, metadata !DIExpression()), !dbg !486
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #15, !dbg !487
  call void @llvm.dbg.declare(metadata ptr %2, metadata !474, metadata !DIExpression()), !dbg !488
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !488
  call void @llvm.dbg.value(metadata ptr %0, metadata !481, metadata !DIExpression()), !dbg !486
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !489
  call void @llvm.dbg.value(metadata ptr %3, metadata !482, metadata !DIExpression()), !dbg !486
  br label %4, !dbg !490

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !486
  call void @llvm.dbg.value(metadata ptr %.0, metadata !482, metadata !DIExpression()), !dbg !486
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !491
  %6 = load ptr, ptr %5, align 8, !dbg !491, !tbaa !492
  %7 = icmp ne ptr %6, null, !dbg !494
  br i1 %7, label %8, label %14, !dbg !495

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !496
  %10 = load ptr, ptr %9, align 8, !dbg !496, !tbaa !492
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !496
  %12 = icmp eq i32 %11, 0, !dbg !496
  %13 = xor i1 %12, true, !dbg !497
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !486
  br i1 %15, label %16, label %18, !dbg !490

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !498
  call void @llvm.dbg.value(metadata ptr %17, metadata !482, metadata !DIExpression()), !dbg !486
  br label %4, !dbg !490, !llvm.loop !499

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !502
  %20 = load ptr, ptr %19, align 8, !dbg !502, !tbaa !504
  %21 = icmp ne ptr %20, null, !dbg !505
  br i1 %21, label %22, label %25, !dbg !506

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !507
  %24 = load ptr, ptr %23, align 8, !dbg !507, !tbaa !504
  call void @llvm.dbg.value(metadata ptr %24, metadata !481, metadata !DIExpression()), !dbg !486
  br label %25, !dbg !508

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !486
  call void @llvm.dbg.value(metadata ptr %.01, metadata !481, metadata !DIExpression()), !dbg !486
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.30, ptr noundef @.str.14, ptr noundef @.str.31), !dbg !509
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !510
  call void @llvm.dbg.value(metadata ptr %27, metadata !484, metadata !DIExpression()), !dbg !486
  %28 = icmp ne ptr %27, null, !dbg !511
  br i1 %28, label %29, label %35, !dbg !513

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.32, i64 noundef 3), !dbg !514
  %31 = icmp ne i32 %30, 0, !dbg !514
  br i1 %31, label %32, label %35, !dbg !515

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !516, !tbaa !374
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.33, ptr noundef %33), !dbg !518
  br label %35, !dbg !519

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.21), !dbg !520
  %37 = icmp eq i32 %36, 0, !dbg !520
  br i1 %37, label %38, label %39, !dbg !520

38:                                               ; preds = %35
  br label %40, !dbg !520

39:                                               ; preds = %35
  br label %40, !dbg !520

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.34, %38 ], [ %0, %39 ], !dbg !520
  call void @llvm.dbg.value(metadata ptr %41, metadata !485, metadata !DIExpression()), !dbg !486
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.35, ptr noundef @.str.31, ptr noundef %41), !dbg !521
  %43 = icmp eq ptr %.01, %0, !dbg !522
  %44 = zext i1 %43 to i64, !dbg !523
  %45 = select i1 %43, ptr @.str.37, ptr @.str.11, !dbg !523
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef %.01, ptr noundef %45), !dbg !524
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #15, !dbg !525
  ret void, !dbg !525
}

; Function Attrs: noreturn
declare !dbg !526 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !528 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !532 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !536 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !54 {
  %3 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !330, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %1, metadata !331, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 0, metadata !332, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 1, metadata !333, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 10, metadata !336, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 1, metadata !339, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 0, metadata !340, metadata !DIExpression()), !dbg !539
  %4 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !540
  %5 = load ptr, ptr %4, align 8, !dbg !540, !tbaa !374
  call void @set_program_name(ptr noundef %5), !dbg !541
  %6 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.11), !dbg !542
  %7 = call i32 @atexit(ptr noundef @close_stdout), !dbg !543
  store i8 0, ptr @have_read_stdin, align 1, !dbg !544, !tbaa !545
  store i8 0, ptr @print_headers, align 1, !dbg !547, !tbaa !545
  store i8 10, ptr @line_end, align 1, !dbg !548, !tbaa !549
  %8 = icmp slt i32 1, %0, !dbg !550
  br i1 %8, label %9, label %67, !dbg !551

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !552
  %11 = load ptr, ptr %10, align 8, !dbg !552, !tbaa !374
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !552
  %13 = load i8, ptr %12, align 1, !dbg !552, !tbaa !549
  %14 = sext i8 %13 to i32, !dbg !552
  %15 = icmp eq i32 %14, 45, !dbg !553
  br i1 %15, label %16, label %67, !dbg !554

16:                                               ; preds = %9
  %17 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !555
  %18 = load ptr, ptr %17, align 8, !dbg !555, !tbaa !374
  %19 = getelementptr inbounds i8, ptr %18, i64 1, !dbg !555
  %20 = load i8, ptr %19, align 1, !dbg !555, !tbaa !549
  %21 = sext i8 %20 to i32, !dbg !555
  %22 = sub i32 %21, 48, !dbg !555
  %23 = icmp ule i32 %22, 9, !dbg !555
  br i1 %23, label %24, label %67, !dbg !556

24:                                               ; preds = %16
  %25 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !557
  %26 = load ptr, ptr %25, align 8, !dbg !557, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %26, metadata !342, metadata !DIExpression()), !dbg !558
  %27 = getelementptr inbounds i8, ptr %26, i32 1, !dbg !559
  call void @llvm.dbg.value(metadata ptr %27, metadata !342, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata ptr %27, metadata !345, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i8 0, metadata !347, metadata !DIExpression()), !dbg !558
  br label %28, !dbg !560

28:                                               ; preds = %30, %24
  %.017 = phi ptr [ %27, %24 ], [ %29, %30 ], !dbg !558
  call void @llvm.dbg.value(metadata ptr %.017, metadata !342, metadata !DIExpression()), !dbg !558
  %29 = getelementptr inbounds i8, ptr %.017, i32 1, !dbg !561
  call void @llvm.dbg.value(metadata ptr %29, metadata !342, metadata !DIExpression()), !dbg !558
  br label %30, !dbg !561

30:                                               ; preds = %28
  %31 = load i8, ptr %29, align 1, !dbg !562, !tbaa !549
  %32 = sext i8 %31 to i32, !dbg !562
  %33 = sub i32 %32, 48, !dbg !562
  %34 = icmp ule i32 %33, 9, !dbg !562
  br i1 %34, label %28, label %35, !dbg !561, !llvm.loop !563

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata ptr %29, metadata !346, metadata !DIExpression()), !dbg !558
  br label %36, !dbg !565

36:                                               ; preds = %53, %35
  %.118 = phi ptr [ %29, %35 ], [ %54, %53 ], !dbg !558
  %.010 = phi i8 [ 1, %35 ], [ %.111, %53 ], !dbg !566
  %.03 = phi i32 [ 0, %35 ], [ %.14, %53 ], !dbg !567
  %.0 = phi i8 [ 0, %35 ], [ %.1, %53 ], !dbg !568
  call void @llvm.dbg.value(metadata i8 %.0, metadata !347, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 %.03, metadata !332, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 %.010, metadata !339, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %.118, metadata !342, metadata !DIExpression()), !dbg !558
  %37 = load i8, ptr %.118, align 1, !dbg !569, !tbaa !549
  %38 = icmp ne i8 %37, 0, !dbg !572
  br i1 %38, label %39, label %55, !dbg !572

39:                                               ; preds = %36
  %40 = load i8, ptr %.118, align 1, !dbg !573, !tbaa !549
  %41 = sext i8 %40 to i32, !dbg !573
  switch i32 %41, label %49 [
    i32 99, label %42
    i32 98, label %43
    i32 107, label %43
    i32 109, label %43
    i32 108, label %45
    i32 113, label %46
    i32 118, label %47
    i32 122, label %48
  ], !dbg !575

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i8 0, metadata !339, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 0, metadata !347, metadata !DIExpression()), !dbg !558
  br label %52, !dbg !576

43:                                               ; preds = %39, %39, %39
  call void @llvm.dbg.value(metadata i8 0, metadata !339, metadata !DIExpression()), !dbg !539
  %44 = load i8, ptr %.118, align 1, !dbg !578, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %44, metadata !347, metadata !DIExpression()), !dbg !558
  br label %52, !dbg !579

45:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i8 1, metadata !339, metadata !DIExpression()), !dbg !539
  br label %52, !dbg !580

46:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i32 2, metadata !332, metadata !DIExpression()), !dbg !539
  br label %52, !dbg !581

47:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i32 1, metadata !332, metadata !DIExpression()), !dbg !539
  br label %52, !dbg !582

48:                                               ; preds = %39
  store i8 0, ptr @line_end, align 1, !dbg !583, !tbaa !549
  br label %52, !dbg !584

49:                                               ; preds = %39
  %50 = load i8, ptr %.118, align 1, !dbg !585, !tbaa !549
  %51 = sext i8 %50 to i32, !dbg !585
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.12, i32 noundef %51), !dbg !586
  call void @usage(i32 noundef 1) #14, !dbg !587
  unreachable, !dbg !587

52:                                               ; preds = %48, %47, %46, %45, %43, %42
  %.111 = phi i8 [ %.010, %48 ], [ %.010, %47 ], [ %.010, %46 ], [ 1, %45 ], [ 0, %43 ], [ 0, %42 ], !dbg !539
  %.14 = phi i32 [ %.03, %48 ], [ 1, %47 ], [ 2, %46 ], [ %.03, %45 ], [ %.03, %43 ], [ %.03, %42 ], !dbg !539
  %.1 = phi i8 [ %.0, %48 ], [ %.0, %47 ], [ %.0, %46 ], [ %.0, %45 ], [ %44, %43 ], [ 0, %42 ], !dbg !558
  call void @llvm.dbg.value(metadata i8 %.1, metadata !347, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 %.14, metadata !332, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 %.111, metadata !339, metadata !DIExpression()), !dbg !539
  br label %53, !dbg !588

53:                                               ; preds = %52
  %54 = getelementptr inbounds i8, ptr %.118, i32 1, !dbg !589
  call void @llvm.dbg.value(metadata ptr %54, metadata !342, metadata !DIExpression()), !dbg !558
  br label %36, !dbg !590, !llvm.loop !591

55:                                               ; preds = %36
  store i8 %.0, ptr %29, align 1, !dbg !593, !tbaa !549
  %56 = icmp ne i8 %.0, 0, !dbg !594
  br i1 %56, label %57, label %59, !dbg !596

57:                                               ; preds = %55
  %58 = getelementptr inbounds i8, ptr %29, i32 1, !dbg !597
  call void @llvm.dbg.value(metadata ptr %58, metadata !346, metadata !DIExpression()), !dbg !558
  store i8 0, ptr %58, align 1, !dbg !598, !tbaa !549
  br label %59, !dbg !599

59:                                               ; preds = %57, %55
  %60 = trunc i8 %.010 to i1, !dbg !600
  %61 = call i64 @string_to_integer(i1 noundef zeroext %60, ptr noundef %27), !dbg !601
  call void @llvm.dbg.value(metadata i64 %61, metadata !336, metadata !DIExpression()), !dbg !539
  %62 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !602
  %63 = load ptr, ptr %62, align 8, !dbg !602, !tbaa !374
  %64 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !603
  store ptr %63, ptr %64, align 8, !dbg !604, !tbaa !374
  %65 = getelementptr inbounds ptr, ptr %1, i32 1, !dbg !605
  call void @llvm.dbg.value(metadata ptr %65, metadata !331, metadata !DIExpression()), !dbg !539
  %66 = add nsw i32 %0, -1, !dbg !606
  call void @llvm.dbg.value(metadata i32 %66, metadata !330, metadata !DIExpression()), !dbg !539
  br label %67, !dbg !607

67:                                               ; preds = %59, %16, %9, %2
  %.212 = phi i8 [ %.010, %59 ], [ 1, %16 ], [ 1, %9 ], [ 1, %2 ], !dbg !566
  %.07 = phi i64 [ %61, %59 ], [ 10, %16 ], [ 10, %9 ], [ 10, %2 ], !dbg !539
  %.2 = phi i32 [ %.03, %59 ], [ 0, %16 ], [ 0, %9 ], [ 0, %2 ], !dbg !567
  %.02 = phi ptr [ %65, %59 ], [ %1, %16 ], [ %1, %9 ], [ %1, %2 ]
  %.01 = phi i32 [ %66, %59 ], [ %0, %16 ], [ %0, %9 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !330, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %.02, metadata !331, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 %.2, metadata !332, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 %.07, metadata !336, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 %.212, metadata !339, metadata !DIExpression()), !dbg !539
  br label %68, !dbg !608

68:                                               ; preds = %113, %67
  %.015 = phi i8 [ 0, %67 ], [ %.116, %113 ], !dbg !609
  %.313 = phi i8 [ %.212, %67 ], [ %.414, %113 ], !dbg !566
  %.18 = phi i64 [ %.07, %67 ], [ %.29, %113 ], !dbg !610
  %.3 = phi i32 [ %.2, %67 ], [ %.4, %113 ], !dbg !567
  call void @llvm.dbg.value(metadata i32 %.3, metadata !332, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 %.18, metadata !336, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 %.313, metadata !339, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 %.015, metadata !340, metadata !DIExpression()), !dbg !539
  %69 = call i32 @rpl_getopt_long(i32 noundef %.01, ptr noundef %.02, ptr noundef @.str.13, ptr noundef @long_options, ptr noundef null), !dbg !611
  call void @llvm.dbg.value(metadata i32 %69, metadata !334, metadata !DIExpression()), !dbg !539
  %70 = icmp ne i32 %69, -1, !dbg !612
  br i1 %70, label %71, label %114, !dbg !608

71:                                               ; preds = %68
  switch i32 %69, label %108 [
    i32 128, label %72
    i32 99, label %73
    i32 110, label %87
    i32 113, label %101
    i32 118, label %102
    i32 122, label %103
    i32 -130, label %104
    i32 -131, label %105
  ], !dbg !613

72:                                               ; preds = %71
  store i8 1, ptr @presume_input_pipe, align 1, !dbg !615, !tbaa !545
  br label %113, !dbg !617

73:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i8 0, metadata !339, metadata !DIExpression()), !dbg !539
  %74 = load ptr, ptr @rpl_optarg, align 8, !dbg !618, !tbaa !374
  %75 = load i8, ptr %74, align 1, !dbg !619, !tbaa !549
  %76 = sext i8 %75 to i32, !dbg !619
  %77 = icmp eq i32 %76, 45, !dbg !620
  %78 = zext i1 %77 to i8, !dbg !621
  call void @llvm.dbg.value(metadata i8 %78, metadata !340, metadata !DIExpression()), !dbg !539
  %79 = trunc i8 %78 to i1, !dbg !622
  br i1 %79, label %80, label %83, !dbg !624

80:                                               ; preds = %73
  %81 = load ptr, ptr @rpl_optarg, align 8, !dbg !625, !tbaa !374
  %82 = getelementptr inbounds i8, ptr %81, i32 1, !dbg !625
  store ptr %82, ptr @rpl_optarg, align 8, !dbg !625, !tbaa !374
  br label %83, !dbg !625

83:                                               ; preds = %80, %73
  %84 = trunc i8 0 to i1, !dbg !626
  %85 = load ptr, ptr @rpl_optarg, align 8, !dbg !627, !tbaa !374
  %86 = call i64 @string_to_integer(i1 noundef zeroext %84, ptr noundef %85), !dbg !628
  call void @llvm.dbg.value(metadata i64 %86, metadata !336, metadata !DIExpression()), !dbg !539
  br label %113, !dbg !629

87:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i8 1, metadata !339, metadata !DIExpression()), !dbg !539
  %88 = load ptr, ptr @rpl_optarg, align 8, !dbg !630, !tbaa !374
  %89 = load i8, ptr %88, align 1, !dbg !631, !tbaa !549
  %90 = sext i8 %89 to i32, !dbg !631
  %91 = icmp eq i32 %90, 45, !dbg !632
  %92 = zext i1 %91 to i8, !dbg !633
  call void @llvm.dbg.value(metadata i8 %92, metadata !340, metadata !DIExpression()), !dbg !539
  %93 = trunc i8 %92 to i1, !dbg !634
  br i1 %93, label %94, label %97, !dbg !636

94:                                               ; preds = %87
  %95 = load ptr, ptr @rpl_optarg, align 8, !dbg !637, !tbaa !374
  %96 = getelementptr inbounds i8, ptr %95, i32 1, !dbg !637
  store ptr %96, ptr @rpl_optarg, align 8, !dbg !637, !tbaa !374
  br label %97, !dbg !637

97:                                               ; preds = %94, %87
  %98 = trunc i8 1 to i1, !dbg !638
  %99 = load ptr, ptr @rpl_optarg, align 8, !dbg !639, !tbaa !374
  %100 = call i64 @string_to_integer(i1 noundef zeroext %98, ptr noundef %99), !dbg !640
  call void @llvm.dbg.value(metadata i64 %100, metadata !336, metadata !DIExpression()), !dbg !539
  br label %113, !dbg !641

101:                                              ; preds = %71
  call void @llvm.dbg.value(metadata i32 2, metadata !332, metadata !DIExpression()), !dbg !539
  br label %113, !dbg !642

102:                                              ; preds = %71
  call void @llvm.dbg.value(metadata i32 1, metadata !332, metadata !DIExpression()), !dbg !539
  br label %113, !dbg !643

103:                                              ; preds = %71
  store i8 0, ptr @line_end, align 1, !dbg !644, !tbaa !549
  br label %113, !dbg !645

104:                                              ; preds = %71
  call void @usage(i32 noundef 0) #14, !dbg !646
  unreachable, !dbg !646

105:                                              ; preds = %71
  %106 = load ptr, ptr @__stdoutp, align 8, !dbg !647, !tbaa !374
  %107 = load ptr, ptr @Version, align 8, !dbg !647, !tbaa !374
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %106, ptr noundef @.str.9, ptr noundef @.str.14, ptr noundef %107, ptr noundef @.str.15, ptr noundef @.str.16, ptr noundef null), !dbg !647
  call void @exit(i32 noundef 0) #14, !dbg !647
  unreachable, !dbg !647

108:                                              ; preds = %71
  %109 = sub i32 %69, 48, !dbg !648
  %110 = icmp ule i32 %109, 9, !dbg !648
  br i1 %110, label %111, label %112, !dbg !650

111:                                              ; preds = %108
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.12, i32 noundef %69), !dbg !651
  br label %112, !dbg !651

112:                                              ; preds = %111, %108
  call void @usage(i32 noundef 1) #14, !dbg !652
  unreachable, !dbg !652

113:                                              ; preds = %103, %102, %101, %97, %83, %72
  %.116 = phi i8 [ %.015, %103 ], [ %.015, %102 ], [ %.015, %101 ], [ %92, %97 ], [ %78, %83 ], [ %.015, %72 ], !dbg !539
  %.414 = phi i8 [ %.313, %103 ], [ %.313, %102 ], [ %.313, %101 ], [ 1, %97 ], [ 0, %83 ], [ %.313, %72 ], !dbg !539
  %.29 = phi i64 [ %.18, %103 ], [ %.18, %102 ], [ %.18, %101 ], [ %100, %97 ], [ %86, %83 ], [ %.18, %72 ], !dbg !539
  %.4 = phi i32 [ %.3, %103 ], [ 1, %102 ], [ 2, %101 ], [ %.3, %97 ], [ %.3, %83 ], [ %.3, %72 ], !dbg !539
  call void @llvm.dbg.value(metadata i32 %.4, metadata !332, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 %.29, metadata !336, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 %.414, metadata !339, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8 %.116, metadata !340, metadata !DIExpression()), !dbg !539
  br label %68, !dbg !608, !llvm.loop !653

114:                                              ; preds = %68
  %115 = icmp eq i32 %.3, 1, !dbg !655
  br i1 %115, label %122, label %116, !dbg !657

116:                                              ; preds = %114
  %117 = icmp eq i32 %.3, 0, !dbg !658
  br i1 %117, label %118, label %123, !dbg !659

118:                                              ; preds = %116
  %119 = load i32, ptr @rpl_optind, align 4, !dbg !660, !tbaa !661
  %120 = sub nsw i32 %.01, 1, !dbg !663
  %121 = icmp slt i32 %119, %120, !dbg !664
  br i1 %121, label %122, label %123, !dbg !665

122:                                              ; preds = %118, %114
  store i8 1, ptr @print_headers, align 1, !dbg !666, !tbaa !545
  br label %123, !dbg !667

123:                                              ; preds = %122, %118, %116
  %124 = trunc i8 %.313 to i1, !dbg !668
  br i1 %124, label %133, label %125, !dbg !669

125:                                              ; preds = %123
  %126 = trunc i8 %.015 to i1, !dbg !670
  br i1 %126, label %127, label %133, !dbg !671

127:                                              ; preds = %125
  %128 = icmp ult i64 9223372036854775807, %.18, !dbg !672
  br i1 %128, label %129, label %133, !dbg !673

129:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 21, ptr %3) #15, !dbg !674
  call void @llvm.dbg.declare(metadata ptr %3, metadata !348, metadata !DIExpression()), !dbg !675
  %130 = getelementptr inbounds [21 x i8], ptr %3, i64 0, i64 0, !dbg !676
  %131 = call ptr @umaxtostr(i64 noundef %.18, ptr noundef %130), !dbg !676
  %132 = call ptr @quote(ptr noundef %131), !dbg !676
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 84, ptr noundef @.str.17, ptr noundef @.str.18, ptr noundef %132), !dbg !676
  unreachable, !dbg !676

133:                                              ; preds = %127, %125, %123
  %134 = load i32, ptr @rpl_optind, align 4, !dbg !677, !tbaa !661
  %135 = icmp slt i32 %134, %.01, !dbg !678
  br i1 %135, label %136, label %140, !dbg !677

136:                                              ; preds = %133
  %137 = load i32, ptr @rpl_optind, align 4, !dbg !679, !tbaa !661
  %138 = sext i32 %137 to i64, !dbg !680
  %139 = getelementptr inbounds ptr, ptr %.02, i64 %138, !dbg !680
  br label %141, !dbg !677

140:                                              ; preds = %133
  br label %141, !dbg !677

141:                                              ; preds = %140, %136
  %142 = phi ptr [ %139, %136 ], [ @main.default_file_list, %140 ], !dbg !677
  call void @llvm.dbg.value(metadata ptr %142, metadata !341, metadata !DIExpression()), !dbg !539
  call void @xset_binary_mode(i32 noundef 1, i32 noundef 0), !dbg !681
  call void @llvm.dbg.value(metadata i64 0, metadata !335, metadata !DIExpression()), !dbg !539
  br label %143, !dbg !682

143:                                              ; preds = %159, %141
  %.06 = phi i64 [ 0, %141 ], [ %160, %159 ], !dbg !684
  %.05 = phi i8 [ 1, %141 ], [ %158, %159 ], !dbg !539
  call void @llvm.dbg.value(metadata i8 %.05, metadata !333, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 %.06, metadata !335, metadata !DIExpression()), !dbg !539
  %144 = getelementptr inbounds ptr, ptr %142, i64 %.06, !dbg !685
  %145 = load ptr, ptr %144, align 8, !dbg !685, !tbaa !374
  %146 = icmp ne ptr %145, null, !dbg !687
  br i1 %146, label %147, label %161, !dbg !687

147:                                              ; preds = %143
  %148 = getelementptr inbounds ptr, ptr %142, i64 %.06, !dbg !688
  %149 = load ptr, ptr %148, align 8, !dbg !688, !tbaa !374
  %150 = trunc i8 %.313 to i1, !dbg !689
  %151 = trunc i8 %.015 to i1, !dbg !690
  %152 = call zeroext i1 @head_file(ptr noundef %149, i64 noundef %.18, i1 noundef zeroext %150, i1 noundef zeroext %151), !dbg !691
  %153 = zext i1 %152 to i32, !dbg !691
  %154 = trunc i8 %.05 to i1, !dbg !692
  %155 = zext i1 %154 to i32, !dbg !692
  %156 = and i32 %155, %153, !dbg !692
  %157 = icmp ne i32 %156, 0, !dbg !692
  %158 = zext i1 %157 to i8, !dbg !692
  call void @llvm.dbg.value(metadata i8 %158, metadata !333, metadata !DIExpression()), !dbg !539
  br label %159, !dbg !693

159:                                              ; preds = %147
  %160 = add i64 %.06, 1, !dbg !694
  call void @llvm.dbg.value(metadata i64 %160, metadata !335, metadata !DIExpression()), !dbg !539
  br label %143, !dbg !695, !llvm.loop !696

161:                                              ; preds = %143
  %162 = load i8, ptr @have_read_stdin, align 1, !dbg !698, !tbaa !545, !range !700, !noundef !454
  %163 = trunc i8 %162 to i1, !dbg !698
  br i1 %163, label %164, label %170, !dbg !701

164:                                              ; preds = %161
  %165 = call i32 @"\01_close"(i32 noundef 0), !dbg !702
  %166 = icmp slt i32 %165, 0, !dbg !703
  br i1 %166, label %167, label %170, !dbg !704

167:                                              ; preds = %164
  %168 = call ptr @__error(), !dbg !705
  %169 = load i32, ptr %168, align 4, !dbg !705, !tbaa !661
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %169, ptr noundef @.str.10), !dbg !705
  unreachable, !dbg !705

170:                                              ; preds = %164, %161
  %171 = trunc i8 %.05 to i1, !dbg !706
  %172 = zext i1 %171 to i64, !dbg !706
  %173 = select i1 %171, i32 0, i32 1, !dbg !706
  ret i32 %173, !dbg !707
}

declare !dbg !708 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !710 i32 @atexit(ptr noundef) #2

declare !dbg !714 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @string_to_integer(i1 noundef zeroext %0, ptr noundef %1) #7 !dbg !718 {
  %3 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %3, metadata !722, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %1, metadata !723, metadata !DIExpression()), !dbg !724
  %4 = trunc i8 %3 to i1, !dbg !725
  %5 = zext i1 %4 to i64, !dbg !725
  %6 = select i1 %4, ptr @.str.39, ptr @.str.18, !dbg !725
  %7 = call i64 @xdectoumax(ptr noundef %1, i64 noundef 0, i64 noundef -1, ptr noundef @.str.38, ptr noundef %6, i32 noundef 0), !dbg !726
  ret i64 %7, !dbg !727
}

declare !dbg !728 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !732 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !736 ptr @umaxtostr(i64 noundef, ptr noundef) #2

declare !dbg !740 ptr @quote(ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @xset_binary_mode(i32 noundef %0, i32 noundef %1) #3 !dbg !744 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !749, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i32 %1, metadata !750, metadata !DIExpression()), !dbg !751
  %3 = call i32 @set_binary_mode(i32 noundef %0, i32 noundef %1), !dbg !752
  %4 = icmp slt i32 %3, 0, !dbg !754
  br i1 %4, label %5, label %6, !dbg !755

5:                                                ; preds = %2
  call void @xset_binary_mode_error(), !dbg !756
  br label %6, !dbg !756

6:                                                ; preds = %5, %2
  ret void, !dbg !757
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @head_file(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #7 !dbg !758 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !762, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i64 %1, metadata !763, metadata !DIExpression()), !dbg !769
  %5 = zext i1 %2 to i8
  call void @llvm.dbg.value(metadata i8 %5, metadata !764, metadata !DIExpression()), !dbg !769
  %6 = zext i1 %3 to i8
  call void @llvm.dbg.value(metadata i8 %6, metadata !765, metadata !DIExpression()), !dbg !769
  %7 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.10), !dbg !770
  %8 = icmp eq i32 %7, 0, !dbg !770
  %9 = zext i1 %8 to i8, !dbg !771
  call void @llvm.dbg.value(metadata i8 %9, metadata !768, metadata !DIExpression()), !dbg !769
  %10 = trunc i8 %9 to i1, !dbg !772
  br i1 %10, label %11, label %12, !dbg !774

11:                                               ; preds = %4
  store i8 1, ptr @have_read_stdin, align 1, !dbg !775, !tbaa !545
  call void @llvm.dbg.value(metadata i32 0, metadata !766, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata ptr @.str.49, metadata !762, metadata !DIExpression()), !dbg !769
  call void @xset_binary_mode(i32 noundef 0, i32 noundef 0), !dbg !777
  br label %20, !dbg !778

12:                                               ; preds = %4
  %13 = call i32 (ptr, i32, ...) @rpl_open(ptr noundef %0, i32 noundef 0), !dbg !779
  call void @llvm.dbg.value(metadata i32 %13, metadata !766, metadata !DIExpression()), !dbg !769
  %14 = icmp slt i32 %13, 0, !dbg !781
  br i1 %14, label %15, label %19, !dbg !783

15:                                               ; preds = %12
  %16 = call ptr @__error(), !dbg !784
  %17 = load i32, ptr %16, align 4, !dbg !784, !tbaa !661
  %18 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !786
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %17, ptr noundef @.str.50, ptr noundef %18), !dbg !787
  br label %35, !dbg !788

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %11
  %.02 = phi i32 [ 0, %11 ], [ %13, %19 ], !dbg !789
  %.01 = phi ptr [ @.str.49, %11 ], [ %0, %19 ]
  call void @llvm.dbg.value(metadata ptr %.01, metadata !762, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i32 %.02, metadata !766, metadata !DIExpression()), !dbg !769
  %21 = trunc i8 %5 to i1, !dbg !790
  %22 = trunc i8 %6 to i1, !dbg !791
  %23 = call zeroext i1 @head(ptr noundef %.01, i32 noundef %.02, i64 noundef %1, i1 noundef zeroext %21, i1 noundef zeroext %22), !dbg !792
  %24 = zext i1 %23 to i8, !dbg !793
  call void @llvm.dbg.value(metadata i8 %24, metadata !767, metadata !DIExpression()), !dbg !769
  %25 = trunc i8 %9 to i1, !dbg !794
  br i1 %25, label %33, label %26, !dbg !796

26:                                               ; preds = %20
  %27 = call i32 @"\01_close"(i32 noundef %.02), !dbg !797
  %28 = icmp ne i32 %27, 0, !dbg !798
  br i1 %28, label %29, label %33, !dbg !799

29:                                               ; preds = %26
  %30 = call ptr @__error(), !dbg !800
  %31 = load i32, ptr %30, align 4, !dbg !800, !tbaa !661
  %32 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %.01), !dbg !802
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %31, ptr noundef @.str.51, ptr noundef %32), !dbg !803
  br label %35, !dbg !804

33:                                               ; preds = %26, %20
  %34 = trunc i8 %24 to i1, !dbg !805
  br label %35, !dbg !806

35:                                               ; preds = %33, %29, %15
  %.0 = phi i1 [ %34, %33 ], [ false, %29 ], [ false, %15 ], !dbg !769
  ret i1 %.0, !dbg !807
}

declare !dbg !808 i32 @"\01_close"(i32 noundef) #2

declare !dbg !812 ptr @__error() #2

declare !dbg !816 i32 @rpl_open(ptr noundef, i32 noundef, ...) #2

declare !dbg !820 ptr @quotearg_style(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @head(ptr noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #7 !dbg !823 {
  %6 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !827, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 %1, metadata !828, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i64 %2, metadata !829, metadata !DIExpression()), !dbg !892
  %7 = zext i1 %3 to i8
  call void @llvm.dbg.value(metadata i8 %7, metadata !830, metadata !DIExpression()), !dbg !892
  %8 = zext i1 %4 to i8
  call void @llvm.dbg.value(metadata i8 %8, metadata !831, metadata !DIExpression()), !dbg !892
  %9 = load i8, ptr @print_headers, align 1, !dbg !893, !tbaa !545, !range !700, !noundef !454
  %10 = trunc i8 %9 to i1, !dbg !893
  br i1 %10, label %11, label %12, !dbg !895

11:                                               ; preds = %5
  call void @write_header(ptr noundef %0), !dbg !896
  br label %12, !dbg !896

12:                                               ; preds = %11, %5
  %13 = trunc i8 %8 to i1, !dbg !897
  br i1 %13, label %14, label %38, !dbg !898

14:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 -1, metadata !832, metadata !DIExpression()), !dbg !899
  call void @llvm.lifetime.start.p0(i64 144, ptr %6) #15, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %6, metadata !835, metadata !DIExpression()), !dbg !901
  %15 = call i32 @"\01_fstat$INODE64"(i32 noundef %1, ptr noundef %6), !dbg !902
  %16 = icmp ne i32 %15, 0, !dbg !904
  br i1 %16, label %17, label %21, !dbg !905

17:                                               ; preds = %14
  %18 = call ptr @__error(), !dbg !906
  %19 = load i32, ptr %18, align 4, !dbg !906, !tbaa !661
  %20 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !908
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %19, ptr noundef @.str.52, ptr noundef %20), !dbg !909
  br label %37, !dbg !910

21:                                               ; preds = %14
  %22 = load i8, ptr @presume_input_pipe, align 1, !dbg !911, !tbaa !545, !range !700, !noundef !454
  %23 = trunc i8 %22 to i1, !dbg !911
  br i1 %23, label %31, label %24, !dbg !913

24:                                               ; preds = %21
  %25 = call zeroext i1 @usable_st_size(ptr noundef %6), !dbg !914
  br i1 %25, label %26, label %31, !dbg !915

26:                                               ; preds = %24
  %27 = call i64 @elseek(i32 noundef %1, i64 noundef 0, i32 noundef 1, ptr noundef %0), !dbg !916
  call void @llvm.dbg.value(metadata i64 %27, metadata !832, metadata !DIExpression()), !dbg !899
  %28 = icmp slt i64 %27, 0, !dbg !918
  br i1 %28, label %29, label %30, !dbg !920

29:                                               ; preds = %26
  br label %37, !dbg !921

30:                                               ; preds = %26
  br label %31, !dbg !922

31:                                               ; preds = %30, %24, %21
  %.01 = phi i64 [ -1, %21 ], [ %27, %30 ], [ -1, %24 ], !dbg !899
  call void @llvm.dbg.value(metadata i64 %.01, metadata !832, metadata !DIExpression()), !dbg !899
  %32 = trunc i8 %7 to i1, !dbg !923
  br i1 %32, label %33, label %35, !dbg !925

33:                                               ; preds = %31
  %34 = call zeroext i1 @elide_tail_lines_file(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %6, i64 noundef %.01), !dbg !926
  br label %37, !dbg !927

35:                                               ; preds = %31
  %36 = call zeroext i1 @elide_tail_bytes_file(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %6, i64 noundef %.01), !dbg !928
  br label %37, !dbg !929

37:                                               ; preds = %35, %33, %29, %17
  %.0 = phi i1 [ false, %17 ], [ %34, %33 ], [ %36, %35 ], [ false, %29 ], !dbg !899
  call void @llvm.lifetime.end.p0(i64 144, ptr %6) #15, !dbg !930
  br label %44

38:                                               ; preds = %12
  %39 = trunc i8 %7 to i1, !dbg !931
  br i1 %39, label %40, label %42, !dbg !933

40:                                               ; preds = %38
  %41 = call zeroext i1 @head_lines(ptr noundef %0, i32 noundef %1, i64 noundef %2), !dbg !934
  br label %44, !dbg !935

42:                                               ; preds = %38
  %43 = call zeroext i1 @head_bytes(ptr noundef %0, i32 noundef %1, i64 noundef %2), !dbg !936
  br label %44, !dbg !937

44:                                               ; preds = %42, %40, %37
  %.1 = phi i1 [ %.0, %37 ], [ %41, %40 ], [ %43, %42 ], !dbg !892
  ret i1 %.1, !dbg !938
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_header(ptr noundef %0) #7 !dbg !297 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !301, metadata !DIExpression()), !dbg !939
  %2 = load i8, ptr @write_header.first_file, align 1, !dbg !940, !tbaa !545, !range !700, !noundef !454
  %3 = trunc i8 %2 to i1, !dbg !940
  %4 = zext i1 %3 to i64, !dbg !940
  %5 = select i1 %3, ptr @.str.11, ptr @.str.54, !dbg !940
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.53, ptr noundef %5, ptr noundef %0), !dbg !941
  store i8 0, ptr @write_header.first_file, align 1, !dbg !942, !tbaa !545
  ret void, !dbg !943
}

declare !dbg !944 i32 @"\01_fstat$INODE64"(i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @usable_st_size(ptr noundef %0) #3 !dbg !948 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !954, metadata !DIExpression()), !dbg !955
  %2 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 1, !dbg !956
  %3 = load i16, ptr %2, align 4, !dbg !956, !tbaa !957
  %4 = zext i16 %3 to i32, !dbg !956
  %5 = and i32 %4, 61440, !dbg !956
  %6 = icmp eq i32 %5, 32768, !dbg !956
  br i1 %6, label %14, label %7, !dbg !963

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 1, !dbg !964
  %9 = load i16, ptr %8, align 4, !dbg !964, !tbaa !957
  %10 = zext i16 %9 to i32, !dbg !964
  %11 = and i32 %10, 61440, !dbg !964
  %12 = icmp eq i32 %11, 40960, !dbg !964
  br i1 %12, label %14, label %13, !dbg !965

13:                                               ; preds = %7
  br label %14, !dbg !965

14:                                               ; preds = %13, %7, %1
  %15 = phi i1 [ true, %7 ], [ true, %1 ], [ false, %13 ]
  ret i1 %15, !dbg !966
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @elseek(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #7 !dbg !967 {
  %5 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !971, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i64 %1, metadata !972, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i32 %2, metadata !973, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata ptr %3, metadata !974, metadata !DIExpression()), !dbg !977
  %6 = call i64 @lseek(i32 noundef %0, i64 noundef %1, i32 noundef %2), !dbg !978
  call void @llvm.dbg.value(metadata i64 %6, metadata !975, metadata !DIExpression()), !dbg !977
  call void @llvm.lifetime.start.p0(i64 21, ptr %5) #15, !dbg !979
  call void @llvm.dbg.declare(metadata ptr %5, metadata !976, metadata !DIExpression()), !dbg !980
  %7 = icmp slt i64 %6, 0, !dbg !981
  br i1 %7, label %8, label %17, !dbg !983

8:                                                ; preds = %4
  %9 = call ptr @__error(), !dbg !984
  %10 = load i32, ptr %9, align 4, !dbg !984, !tbaa !661
  %11 = icmp eq i32 %2, 0, !dbg !985
  %12 = zext i1 %11 to i64, !dbg !985
  %13 = select i1 %11, ptr @.str.55, ptr @.str.56, !dbg !985
  %14 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %3), !dbg !986
  %15 = getelementptr inbounds [21 x i8], ptr %5, i64 0, i64 0, !dbg !987
  %16 = call ptr @offtostr(i64 noundef %1, ptr noundef %15), !dbg !988
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %10, ptr noundef %13, ptr noundef %14, ptr noundef %16), !dbg !989
  br label %17, !dbg !989

17:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 21, ptr %5) #15, !dbg !990
  ret i64 %6, !dbg !991
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @elide_tail_lines_file(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #7 !dbg !992 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !996, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i32 %1, metadata !997, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %2, metadata !998, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr %3, metadata !999, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %4, metadata !1000, metadata !DIExpression()), !dbg !1002
  %6 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 11, !dbg !1003
  %7 = load i64, ptr %6, align 8, !dbg !1003, !tbaa !1004
  call void @llvm.dbg.value(metadata i64 %7, metadata !1001, metadata !DIExpression()), !dbg !1002
  %8 = load i8, ptr @presume_input_pipe, align 1, !dbg !1005, !tbaa !545, !range !700, !noundef !454
  %9 = trunc i8 %8 to i1, !dbg !1005
  br i1 %9, label %29, label %10, !dbg !1007

10:                                               ; preds = %5
  %11 = icmp slt i64 %4, 0, !dbg !1008
  br i1 %11, label %29, label %12, !dbg !1009

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 13, !dbg !1010
  %14 = load i32, ptr %13, align 8, !dbg !1010, !tbaa !1011
  %15 = icmp slt i32 0, %14, !dbg !1010
  br i1 %15, label %16, label %24, !dbg !1010

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 13, !dbg !1010
  %18 = load i32, ptr %17, align 8, !dbg !1010, !tbaa !1011
  %19 = sext i32 %18 to i64, !dbg !1010
  %20 = icmp ule i64 %19, 2305843009213693952, !dbg !1010
  br i1 %20, label %21, label %24, !dbg !1010

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 13, !dbg !1010
  %23 = load i32, ptr %22, align 8, !dbg !1010, !tbaa !1011
  br label %25, !dbg !1010

24:                                               ; preds = %16, %12
  br label %25, !dbg !1010

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 512, %24 ], !dbg !1010
  %27 = sext i32 %26 to i64, !dbg !1010
  %28 = icmp sle i64 %7, %27, !dbg !1012
  br i1 %28, label %29, label %31, !dbg !1013

29:                                               ; preds = %25, %10, %5
  %30 = call zeroext i1 @elide_tail_lines_pipe(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %4), !dbg !1014
  br label %37, !dbg !1015

31:                                               ; preds = %25
  %32 = icmp sle i64 %7, %4, !dbg !1016
  br i1 %32, label %35, label %33, !dbg !1018

33:                                               ; preds = %31
  %34 = call zeroext i1 @elide_tail_lines_seekable(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %4, i64 noundef %7), !dbg !1019
  br label %35, !dbg !1018

35:                                               ; preds = %33, %31
  %36 = phi i1 [ true, %31 ], [ %34, %33 ]
  br label %37, !dbg !1020

37:                                               ; preds = %35, %29
  %.0 = phi i1 [ %30, %29 ], [ %36, %35 ], !dbg !1021
  ret i1 %.0, !dbg !1022
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @elide_tail_bytes_file(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #7 !dbg !1023 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1025, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 %1, metadata !1026, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %2, metadata !1027, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %3, metadata !1028, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %4, metadata !1029, metadata !DIExpression()), !dbg !1036
  %6 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 11, !dbg !1037
  %7 = load i64, ptr %6, align 8, !dbg !1037, !tbaa !1004
  call void @llvm.dbg.value(metadata i64 %7, metadata !1030, metadata !DIExpression()), !dbg !1036
  %8 = load i8, ptr @presume_input_pipe, align 1, !dbg !1038, !tbaa !545, !range !700, !noundef !454
  %9 = trunc i8 %8 to i1, !dbg !1038
  br i1 %9, label %29, label %10, !dbg !1039

10:                                               ; preds = %5
  %11 = icmp slt i64 %4, 0, !dbg !1040
  br i1 %11, label %29, label %12, !dbg !1041

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 13, !dbg !1042
  %14 = load i32, ptr %13, align 8, !dbg !1042, !tbaa !1011
  %15 = icmp slt i32 0, %14, !dbg !1042
  br i1 %15, label %16, label %24, !dbg !1042

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 13, !dbg !1042
  %18 = load i32, ptr %17, align 8, !dbg !1042, !tbaa !1011
  %19 = sext i32 %18 to i64, !dbg !1042
  %20 = icmp ule i64 %19, 2305843009213693952, !dbg !1042
  br i1 %20, label %21, label %24, !dbg !1042

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 13, !dbg !1042
  %23 = load i32, ptr %22, align 8, !dbg !1042, !tbaa !1011
  br label %25, !dbg !1042

24:                                               ; preds = %16, %12
  br label %25, !dbg !1042

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 512, %24 ], !dbg !1042
  %27 = sext i32 %26 to i64, !dbg !1042
  %28 = icmp sle i64 %7, %27, !dbg !1043
  br i1 %28, label %29, label %31, !dbg !1044

29:                                               ; preds = %25, %10, %5
  %30 = call zeroext i1 @elide_tail_bytes_pipe(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %4), !dbg !1045
  br label %48, !dbg !1046

31:                                               ; preds = %25
  %32 = sub nsw i64 %7, %4, !dbg !1047
  call void @llvm.dbg.value(metadata i64 %32, metadata !1031, metadata !DIExpression()), !dbg !1048
  %33 = icmp slt i64 %32, 0, !dbg !1049
  br i1 %33, label %34, label %35, !dbg !1050

34:                                               ; preds = %31
  br label %36, !dbg !1050

35:                                               ; preds = %31
  br label %36, !dbg !1050

36:                                               ; preds = %35, %34
  %37 = phi i64 [ 0, %34 ], [ %32, %35 ], !dbg !1050
  call void @llvm.dbg.value(metadata i64 %37, metadata !1034, metadata !DIExpression()), !dbg !1048
  %38 = icmp ule i64 %37, %2, !dbg !1051
  br i1 %38, label %39, label %40, !dbg !1053

39:                                               ; preds = %36
  br label %47, !dbg !1054

40:                                               ; preds = %36
  %41 = sub i64 %37, %2, !dbg !1055
  %42 = call i32 @copy_fd(i32 noundef %1, i64 noundef %41), !dbg !1056
  call void @llvm.dbg.value(metadata i32 %42, metadata !1035, metadata !DIExpression()), !dbg !1048
  %43 = icmp eq i32 %42, 0, !dbg !1057
  br i1 %43, label %44, label %45, !dbg !1059

44:                                               ; preds = %40
  br label %46, !dbg !1060

45:                                               ; preds = %40
  call void @diagnose_copy_fd_failure(i32 noundef %42, ptr noundef %0), !dbg !1061
  br label %46, !dbg !1062

46:                                               ; preds = %45, %44
  %.0 = phi i1 [ true, %44 ], [ false, %45 ], !dbg !1048
  br label %47

47:                                               ; preds = %46, %39
  %.1 = phi i1 [ true, %39 ], [ %.0, %46 ], !dbg !1048
  br label %48

48:                                               ; preds = %47, %29
  %.2 = phi i1 [ %30, %29 ], [ %.1, %47 ], !dbg !1063
  ret i1 %.2, !dbg !1064
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @head_lines(ptr noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !1065 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1069, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i32 %1, metadata !1070, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 %2, metadata !1071, metadata !DIExpression()), !dbg !1085
  call void @llvm.lifetime.start.p0(i64 1024, ptr %4) #15, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1072, metadata !DIExpression()), !dbg !1087
  br label %6, !dbg !1088

6:                                                ; preds = %56, %3
  %.04 = phi i64 [ %2, %3 ], [ %.4, %56 ]
  %.0 = phi i1 [ undef, %3 ], [ %.1, %56 ]
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1071, metadata !DIExpression()), !dbg !1085
  %7 = icmp ne i64 %.04, 0, !dbg !1088
  br i1 %7, label %8, label %57, !dbg !1088

8:                                                ; preds = %6
  %9 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 0, !dbg !1089
  %10 = call i64 @safe_read(i32 noundef %1, ptr noundef %9, i64 noundef 1024), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %10, metadata !1076, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 0, metadata !1078, metadata !DIExpression()), !dbg !1091
  %11 = icmp eq i64 %10, -1, !dbg !1092
  br i1 %11, label %12, label %16, !dbg !1094

12:                                               ; preds = %8
  %13 = call ptr @__error(), !dbg !1095
  %14 = load i32, ptr %13, align 4, !dbg !1095, !tbaa !661
  %15 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1097
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %14, ptr noundef @.str.57, ptr noundef %15), !dbg !1098
  br label %55, !dbg !1099

16:                                               ; preds = %8
  %17 = icmp eq i64 %10, 0, !dbg !1100
  br i1 %17, label %18, label %19, !dbg !1102

18:                                               ; preds = %16
  br label %55, !dbg !1103

19:                                               ; preds = %16
  br label %20, !dbg !1104

20:                                               ; preds = %52, %19
  %.15 = phi i64 [ %.04, %19 ], [ %.26, %52 ]
  %.02 = phi i64 [ 0, %19 ], [ %23, %52 ], !dbg !1091
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1078, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1071, metadata !DIExpression()), !dbg !1085
  %21 = icmp ult i64 %.02, %10, !dbg !1105
  br i1 %21, label %22, label %53, !dbg !1104

22:                                               ; preds = %20
  %23 = add i64 %.02, 1, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %23, metadata !1078, metadata !DIExpression()), !dbg !1091
  %24 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %.02, !dbg !1107
  %25 = load i8, ptr %24, align 1, !dbg !1107, !tbaa !549
  %26 = sext i8 %25 to i32, !dbg !1107
  %27 = load i8, ptr @line_end, align 1, !dbg !1108, !tbaa !549
  %28 = sext i8 %27 to i32, !dbg !1108
  %29 = icmp eq i32 %26, %28, !dbg !1109
  br i1 %29, label %30, label %52, !dbg !1110

30:                                               ; preds = %22
  %31 = add i64 %.15, -1, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %31, metadata !1071, metadata !DIExpression()), !dbg !1085
  %32 = icmp eq i64 %31, 0, !dbg !1112
  br i1 %32, label %33, label %52, !dbg !1113

33:                                               ; preds = %30
  %34 = sub i64 %10, %23, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %34, metadata !1079, metadata !DIExpression()), !dbg !1115
  %35 = sub nsw i64 0, %34, !dbg !1116
  %36 = call i64 @lseek(i32 noundef %1, i64 noundef %35, i32 noundef 1), !dbg !1117
  %37 = icmp slt i64 %36, 0, !dbg !1118
  br i1 %37, label %38, label %51, !dbg !1119

38:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 144, ptr %5) #15, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1082, metadata !DIExpression()), !dbg !1121
  %39 = call i32 @"\01_fstat$INODE64"(i32 noundef %1, ptr noundef %5), !dbg !1122
  %40 = icmp ne i32 %39, 0, !dbg !1124
  br i1 %40, label %47, label %41, !dbg !1125

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 1, !dbg !1126
  %43 = load i16, ptr %42, align 4, !dbg !1126, !tbaa !957
  %44 = zext i16 %43 to i32, !dbg !1126
  %45 = and i32 %44, 61440, !dbg !1126
  %46 = icmp eq i32 %45, 32768, !dbg !1126
  br i1 %46, label %47, label %50, !dbg !1127

47:                                               ; preds = %41, %38
  %48 = sub nsw i64 0, %34, !dbg !1128
  %49 = call i64 @elseek(i32 noundef %1, i64 noundef %48, i32 noundef 1, ptr noundef %0), !dbg !1129
  br label %50, !dbg !1129

50:                                               ; preds = %47, %41
  call void @llvm.lifetime.end.p0(i64 144, ptr %5) #15, !dbg !1130
  br label %51, !dbg !1131

51:                                               ; preds = %50, %33
  br label %53

52:                                               ; preds = %30, %22
  %.26 = phi i64 [ %31, %30 ], [ %.15, %22 ]
  call void @llvm.dbg.value(metadata i64 %.26, metadata !1071, metadata !DIExpression()), !dbg !1085
  br label %20, !dbg !1104, !llvm.loop !1132

53:                                               ; preds = %51, %20
  %.3 = phi i64 [ %31, %51 ], [ %.15, %20 ]
  %.13 = phi i64 [ %23, %51 ], [ %.02, %20 ], !dbg !1091
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1078, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %.3, metadata !1071, metadata !DIExpression()), !dbg !1085
  %54 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 0, !dbg !1134
  call void @xwrite_stdout(ptr noundef %54, i64 noundef %.13), !dbg !1135
  br label %55, !dbg !1136

55:                                               ; preds = %53, %18, %12
  %.4 = phi i64 [ %.04, %12 ], [ %.04, %18 ], [ %.3, %53 ]
  %.01 = phi i32 [ 1, %12 ], [ 3, %18 ], [ 0, %53 ]
  %.1 = phi i1 [ false, %12 ], [ %.0, %18 ], [ %.0, %53 ]
  call void @llvm.dbg.value(metadata i64 %.4, metadata !1071, metadata !DIExpression()), !dbg !1085
  switch i32 %.01, label %58 [
    i32 0, label %56
    i32 3, label %57
  ]

56:                                               ; preds = %55
  br label %6, !dbg !1088, !llvm.loop !1137

57:                                               ; preds = %55, %6
  br label %58, !dbg !1138

58:                                               ; preds = %57, %55
  %.2 = phi i1 [ %.1, %55 ], [ true, %57 ], !dbg !1085
  call void @llvm.lifetime.end.p0(i64 1024, ptr %4) #15, !dbg !1139
  ret i1 %.2, !dbg !1139
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @head_bytes(ptr noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !1140 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1142, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i32 %1, metadata !1143, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %2, metadata !1144, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 1024, ptr %4) #15, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1145, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 1024, metadata !1146, metadata !DIExpression()), !dbg !1149
  br label %5, !dbg !1152

5:                                                ; preds = %25, %3
  %.04 = phi i64 [ %2, %3 ], [ %.15, %25 ]
  %.02 = phi i64 [ 1024, %3 ], [ %.13, %25 ], !dbg !1149
  %.0 = phi i1 [ undef, %3 ], [ %.1, %25 ]
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1146, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1144, metadata !DIExpression()), !dbg !1149
  %6 = icmp ne i64 %.04, 0, !dbg !1152
  br i1 %6, label %7, label %26, !dbg !1152

7:                                                ; preds = %5
  %8 = icmp ult i64 %.04, %.02, !dbg !1153
  br i1 %8, label %9, label %10, !dbg !1155

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1146, metadata !DIExpression()), !dbg !1149
  br label %10, !dbg !1156

10:                                               ; preds = %9, %7
  %.13 = phi i64 [ %.04, %9 ], [ %.02, %7 ], !dbg !1149
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1146, metadata !DIExpression()), !dbg !1149
  %11 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 0, !dbg !1157
  %12 = call i64 @safe_read(i32 noundef %1, ptr noundef %11, i64 noundef %.13), !dbg !1158
  call void @llvm.dbg.value(metadata i64 %12, metadata !1147, metadata !DIExpression()), !dbg !1159
  %13 = icmp eq i64 %12, -1, !dbg !1160
  br i1 %13, label %14, label %18, !dbg !1162

14:                                               ; preds = %10
  %15 = call ptr @__error(), !dbg !1163
  %16 = load i32, ptr %15, align 4, !dbg !1163, !tbaa !661
  %17 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1165
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef @.str.57, ptr noundef %17), !dbg !1166
  br label %24, !dbg !1167

18:                                               ; preds = %10
  %19 = icmp eq i64 %12, 0, !dbg !1168
  br i1 %19, label %20, label %21, !dbg !1170

20:                                               ; preds = %18
  br label %24, !dbg !1171

21:                                               ; preds = %18
  %22 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 0, !dbg !1172
  call void @xwrite_stdout(ptr noundef %22, i64 noundef %12), !dbg !1173
  %23 = sub i64 %.04, %12, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %23, metadata !1144, metadata !DIExpression()), !dbg !1149
  br label %24, !dbg !1175

24:                                               ; preds = %21, %20, %14
  %.15 = phi i64 [ %.04, %14 ], [ %.04, %20 ], [ %23, %21 ]
  %.01 = phi i32 [ 1, %14 ], [ 3, %20 ], [ 0, %21 ]
  %.1 = phi i1 [ false, %14 ], [ %.0, %20 ], [ %.0, %21 ]
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1144, metadata !DIExpression()), !dbg !1149
  switch i32 %.01, label %27 [
    i32 0, label %25
    i32 3, label %26
  ]

25:                                               ; preds = %24
  br label %5, !dbg !1152, !llvm.loop !1176

26:                                               ; preds = %24, %5
  br label %27, !dbg !1177

27:                                               ; preds = %26, %24
  %.2 = phi i1 [ %.1, %24 ], [ true, %26 ], !dbg !1149
  call void @llvm.lifetime.end.p0(i64 1024, ptr %4) #15, !dbg !1178
  ret i1 %.2, !dbg !1178
}

declare !dbg !1179 i64 @safe_read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @xwrite_stdout(ptr noundef %0, i64 noundef %1) #7 !dbg !1183 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1187, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %1, metadata !1188, metadata !DIExpression()), !dbg !1189
  %3 = icmp ugt i64 %1, 0, !dbg !1190
  br i1 %3, label %4, label %18, !dbg !1192

4:                                                ; preds = %2
  %5 = load ptr, ptr @__stdoutp, align 8, !dbg !1193, !tbaa !374
  %6 = call i64 @"\01_fwrite"(ptr noundef %0, i64 noundef 1, i64 noundef %1, ptr noundef %5), !dbg !1194
  %7 = icmp ult i64 %6, %1, !dbg !1195
  br i1 %7, label %8, label %18, !dbg !1196

8:                                                ; preds = %4
  %9 = load ptr, ptr @__stdoutp, align 8, !dbg !1197, !tbaa !374
  %10 = getelementptr inbounds %struct.__sFILE, ptr %9, i32 0, i32 3, !dbg !1197
  %11 = load i16, ptr %10, align 8, !dbg !1197, !tbaa !1199
  %12 = sext i16 %11 to i32, !dbg !1197
  %13 = and i32 %12, -97, !dbg !1197
  %14 = trunc i32 %13 to i16, !dbg !1197
  store i16 %14, ptr %10, align 8, !dbg !1197, !tbaa !1199
  %15 = call ptr @__error(), !dbg !1202
  %16 = load i32, ptr %15, align 4, !dbg !1202, !tbaa !661
  %17 = call ptr @quotearg_style(i32 noundef 4, ptr noundef @.str.59), !dbg !1202
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %16, ptr noundef @.str.58, ptr noundef %17), !dbg !1202
  unreachable, !dbg !1202

18:                                               ; preds = %4, %2
  ret void, !dbg !1203
}

declare !dbg !1204 i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare !dbg !1210 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @elide_tail_bytes_pipe(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #7 !dbg !1213 {
  %5 = alloca [21 x i8], align 16
  %6 = alloca [2 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1217, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i32 %1, metadata !1218, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %2, metadata !1219, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %3, metadata !1220, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %2, metadata !1221, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %3, metadata !1222, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8 1, metadata !1223, metadata !DIExpression()), !dbg !1262
  %7 = add i64 %2, 1024, !dbg !1263
  %8 = icmp ult i64 -1, %7, !dbg !1264
  br i1 %8, label %9, label %12, !dbg !1265

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 21, ptr %5) #15, !dbg !1266
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1224, metadata !DIExpression()), !dbg !1267
  %10 = getelementptr inbounds [21 x i8], ptr %5, i64 0, i64 0, !dbg !1268
  %11 = call ptr @umaxtostr(i64 noundef %2, ptr noundef %10), !dbg !1268
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.61, ptr noundef %11), !dbg !1268
  unreachable, !dbg !1268

12:                                               ; preds = %4
  %13 = icmp ule i64 %2, 1048576, !dbg !1269
  br i1 %13, label %14, label %82, !dbg !1270

14:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 1, metadata !1227, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 0, metadata !1230, metadata !DIExpression()), !dbg !1271
  %15 = add i64 1024, %2, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %15, metadata !1231, metadata !DIExpression()), !dbg !1271
  call void @llvm.lifetime.start.p0(i64 16, ptr %6) #15, !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1233, metadata !DIExpression()), !dbg !1274
  %16 = call noalias nonnull ptr @xnmalloc(i64 noundef 2, i64 noundef %15) #16, !dbg !1275
  %17 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 0, !dbg !1276
  store ptr %16, ptr %17, align 16, !dbg !1277, !tbaa !374
  %18 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 0, !dbg !1278
  %19 = load ptr, ptr %18, align 16, !dbg !1278, !tbaa !374
  %20 = getelementptr inbounds i8, ptr %19, i64 %15, !dbg !1279
  %21 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1, !dbg !1280
  store ptr %20, ptr %21, align 8, !dbg !1281, !tbaa !374
  call void @llvm.dbg.value(metadata i8 0, metadata !1232, metadata !DIExpression()), !dbg !1271
  br label %22, !dbg !1282

22:                                               ; preds = %75, %14
  %.027 = phi i8 [ 0, %14 ], [ %78, %75 ], !dbg !1283
  %.022 = phi i8 [ 0, %14 ], [ %.224, %75 ], !dbg !1284
  %.020 = phi i8 [ 1, %14 ], [ %.121, %75 ], !dbg !1285
  %.014 = phi i8 [ 1, %14 ], [ %.115, %75 ], !dbg !1262
  %.010 = phi i64 [ %3, %14 ], [ %.313, %75 ], !dbg !1286
  call void @llvm.dbg.value(metadata i64 %.010, metadata !1222, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8 %.014, metadata !1223, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8 %.020, metadata !1227, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %.022, metadata !1230, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %.027, metadata !1232, metadata !DIExpression()), !dbg !1271
  %23 = trunc i8 %.022 to i1, !dbg !1287
  %24 = xor i1 %23, true, !dbg !1288
  br i1 %24, label %25, label %79, !dbg !1289

25:                                               ; preds = %22
  %26 = trunc i8 %.027 to i1, !dbg !1290
  %27 = zext i1 %26 to i64, !dbg !1291
  %28 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %27, !dbg !1291
  %29 = load ptr, ptr %28, align 8, !dbg !1291, !tbaa !374
  %30 = call i64 @full_read(i32 noundef %1, ptr noundef %29, i64 noundef %15), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %30, metadata !1235, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 0, metadata !1239, metadata !DIExpression()), !dbg !1293
  %31 = icmp ult i64 %30, %15, !dbg !1294
  br i1 %31, label %32, label %49, !dbg !1296

32:                                               ; preds = %25
  %33 = call ptr @__error(), !dbg !1297
  %34 = load i32, ptr %33, align 4, !dbg !1297, !tbaa !661
  %35 = icmp ne i32 %34, 0, !dbg !1300
  br i1 %35, label %36, label %40, !dbg !1301

36:                                               ; preds = %32
  %37 = call ptr @__error(), !dbg !1302
  %38 = load i32, ptr %37, align 4, !dbg !1302, !tbaa !661
  %39 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1304
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %38, ptr noundef @.str.57, ptr noundef %39), !dbg !1305
  call void @llvm.dbg.value(metadata i8 0, metadata !1223, metadata !DIExpression()), !dbg !1262
  br label %73, !dbg !1306

40:                                               ; preds = %32
  %41 = icmp ule i64 %30, %2, !dbg !1307
  br i1 %41, label %42, label %48, !dbg !1309

42:                                               ; preds = %40
  %43 = trunc i8 %.020 to i1, !dbg !1310
  br i1 %43, label %44, label %45, !dbg !1313

44:                                               ; preds = %42
  br label %47, !dbg !1314

45:                                               ; preds = %42
  %46 = sub i64 %2, %30, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %46, metadata !1239, metadata !DIExpression()), !dbg !1293
  br label %47

47:                                               ; preds = %45, %44
  %.029 = phi i64 [ 0, %44 ], [ %46, %45 ], !dbg !1293
  call void @llvm.dbg.value(metadata i64 %.029, metadata !1239, metadata !DIExpression()), !dbg !1293
  br label %48, !dbg !1318

48:                                               ; preds = %47, %40
  %.130 = phi i64 [ %.029, %47 ], [ 0, %40 ], !dbg !1319
  call void @llvm.dbg.value(metadata i64 %.130, metadata !1239, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 1, metadata !1230, metadata !DIExpression()), !dbg !1271
  br label %49, !dbg !1320

49:                                               ; preds = %48, %25
  %.231 = phi i64 [ %.130, %48 ], [ 0, %25 ], !dbg !1319
  %.123 = phi i8 [ 1, %48 ], [ %.022, %25 ], !dbg !1271
  call void @llvm.dbg.value(metadata i8 %.123, metadata !1230, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %.231, metadata !1239, metadata !DIExpression()), !dbg !1293
  %50 = trunc i8 %.020 to i1, !dbg !1321
  br i1 %50, label %62, label %51, !dbg !1323

51:                                               ; preds = %49
  %52 = sub i64 %2, %.231, !dbg !1324
  %53 = add i64 %.010, %52, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %53, metadata !1222, metadata !DIExpression()), !dbg !1262
  %54 = trunc i8 %.027 to i1, !dbg !1327
  %55 = xor i1 %54, true, !dbg !1328
  %56 = zext i1 %55 to i32, !dbg !1328
  %57 = sext i32 %56 to i64, !dbg !1329
  %58 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %57, !dbg !1329
  %59 = load ptr, ptr %58, align 8, !dbg !1329, !tbaa !374
  %60 = getelementptr inbounds i8, ptr %59, i64 1024, !dbg !1330
  %61 = sub i64 %2, %.231, !dbg !1331
  call void @xwrite_stdout(ptr noundef %60, i64 noundef %61), !dbg !1332
  br label %62, !dbg !1333

62:                                               ; preds = %51, %49
  %.111 = phi i64 [ %.010, %49 ], [ %53, %51 ], !dbg !1262
  call void @llvm.dbg.value(metadata i64 %.111, metadata !1222, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8 0, metadata !1227, metadata !DIExpression()), !dbg !1271
  %63 = icmp ult i64 %2, %30, !dbg !1334
  br i1 %63, label %64, label %72, !dbg !1336

64:                                               ; preds = %62
  %65 = sub i64 %30, %2, !dbg !1337
  %66 = add i64 %.111, %65, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %66, metadata !1222, metadata !DIExpression()), !dbg !1262
  %67 = trunc i8 %.027 to i1, !dbg !1340
  %68 = zext i1 %67 to i64, !dbg !1341
  %69 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %68, !dbg !1341
  %70 = load ptr, ptr %69, align 8, !dbg !1341, !tbaa !374
  %71 = sub i64 %30, %2, !dbg !1342
  call void @xwrite_stdout(ptr noundef %70, i64 noundef %71), !dbg !1343
  br label %72, !dbg !1344

72:                                               ; preds = %64, %62
  %.212 = phi i64 [ %66, %64 ], [ %.111, %62 ], !dbg !1262
  call void @llvm.dbg.value(metadata i64 %.212, metadata !1222, metadata !DIExpression()), !dbg !1262
  br label %73, !dbg !1345

73:                                               ; preds = %72, %36
  %.032 = phi i32 [ 2, %36 ], [ 0, %72 ]
  %.224 = phi i8 [ %.022, %36 ], [ %.123, %72 ], !dbg !1271
  %.121 = phi i8 [ %.020, %36 ], [ 0, %72 ], !dbg !1271
  %.115 = phi i8 [ 0, %36 ], [ %.014, %72 ], !dbg !1262
  %.313 = phi i64 [ %.010, %36 ], [ %.212, %72 ], !dbg !1262
  call void @llvm.dbg.value(metadata i64 %.313, metadata !1222, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8 %.115, metadata !1223, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8 %.121, metadata !1227, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %.224, metadata !1230, metadata !DIExpression()), !dbg !1271
  switch i32 %.032, label %193 [
    i32 0, label %74
    i32 2, label %79
  ]

74:                                               ; preds = %73
  br label %75, !dbg !1346

75:                                               ; preds = %74
  %76 = trunc i8 %.027 to i1, !dbg !1347
  %77 = xor i1 %76, true, !dbg !1348
  %78 = zext i1 %77 to i8, !dbg !1349
  call void @llvm.dbg.value(metadata i8 %78, metadata !1232, metadata !DIExpression()), !dbg !1271
  br label %22, !dbg !1350, !llvm.loop !1351

79:                                               ; preds = %73, %22
  %.216 = phi i8 [ %.115, %73 ], [ %.014, %22 ], !dbg !1262
  %.4 = phi i64 [ %.313, %73 ], [ %.010, %22 ], !dbg !1286
  call void @llvm.dbg.value(metadata i64 %.4, metadata !1222, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8 %.216, metadata !1223, metadata !DIExpression()), !dbg !1262
  %80 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 0, !dbg !1353
  %81 = load ptr, ptr %80, align 16, !dbg !1353, !tbaa !374
  call void @rpl_free(ptr noundef %81), !dbg !1354
  call void @llvm.lifetime.end.p0(i64 16, ptr %6) #15, !dbg !1355
  br label %185, !dbg !1356

82:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 0, metadata !1240, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr null, metadata !1246, metadata !DIExpression()), !dbg !1357
  %83 = urem i64 %2, 1024, !dbg !1358
  %84 = sub i64 1024, %83, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %84, metadata !1247, metadata !DIExpression()), !dbg !1357
  %85 = add i64 %2, %84, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %85, metadata !1248, metadata !DIExpression()), !dbg !1357
  %86 = udiv i64 %85, 1024, !dbg !1361
  %87 = add i64 %86, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %87, metadata !1249, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 0, metadata !1250, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 0, metadata !1251, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 0, metadata !1243, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 0, metadata !1244, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 1, metadata !1245, metadata !DIExpression()), !dbg !1357
  br label %88, !dbg !1363

88:                                               ; preds = %141, %82
  %.033 = phi i8 [ 0, %82 ], [ %.134, %141 ], !dbg !1357
  %.028 = phi i64 [ undef, %82 ], [ %119, %141 ]
  %.025 = phi i8 [ 0, %82 ], [ %.126, %141 ], !dbg !1357
  %.5 = phi i64 [ %3, %82 ], [ %.6, %141 ], !dbg !1262
  %.08 = phi i64 [ 0, %82 ], [ %.07, %141 ], !dbg !1365
  %.07 = phi i64 [ 1, %82 ], [ %143, %141 ], !dbg !1365
  %.04 = phi ptr [ null, %82 ], [ %.15, %141 ], !dbg !1357
  %.01 = phi i64 [ 0, %82 ], [ %.12, %141 ], !dbg !1366
  %.0 = phi i64 [ 0, %82 ], [ %.3, %141 ], !dbg !1357
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1251, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1250, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr %.04, metadata !1246, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %.07, metadata !1245, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %.08, metadata !1244, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %.5, metadata !1222, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8 %.025, metadata !1243, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %.028, metadata !1242, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 %.033, metadata !1240, metadata !DIExpression()), !dbg !1357
  %89 = trunc i8 %.033 to i1, !dbg !1367
  %90 = xor i1 %89, true, !dbg !1369
  br i1 %90, label %91, label %144, !dbg !1370

91:                                               ; preds = %88
  %92 = icmp eq i64 %.0, %.08, !dbg !1371
  br i1 %92, label %93, label %110, !dbg !1374

93:                                               ; preds = %91
  %94 = icmp eq i64 %.0, 0, !dbg !1375
  br i1 %94, label %95, label %101, !dbg !1378

95:                                               ; preds = %93
  %96 = icmp ult i64 %87, 16, !dbg !1379
  br i1 %96, label %97, label %98, !dbg !1379

97:                                               ; preds = %95
  br label %99, !dbg !1379

98:                                               ; preds = %95
  br label %99, !dbg !1379

99:                                               ; preds = %98, %97
  %100 = phi i64 [ %87, %97 ], [ 16, %98 ], !dbg !1379
  call void @llvm.dbg.value(metadata i64 %100, metadata !1251, metadata !DIExpression()), !dbg !1357
  br label %108, !dbg !1380

101:                                              ; preds = %93
  %102 = udiv i64 %87, 2, !dbg !1381
  %103 = icmp ule i64 %.0, %102, !dbg !1383
  br i1 %103, label %104, label %106, !dbg !1384

104:                                              ; preds = %101
  %105 = mul i64 %.0, 2, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %105, metadata !1251, metadata !DIExpression()), !dbg !1357
  br label %107, !dbg !1386

106:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i64 %87, metadata !1251, metadata !DIExpression()), !dbg !1357
  br label %107

107:                                              ; preds = %106, %104
  %.1 = phi i64 [ %105, %104 ], [ %87, %106 ], !dbg !1387
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1251, metadata !DIExpression()), !dbg !1357
  br label %108

108:                                              ; preds = %107, %99
  %.2 = phi i64 [ %100, %99 ], [ %.1, %107 ], !dbg !1388
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1251, metadata !DIExpression()), !dbg !1357
  %109 = call ptr @xnrealloc(ptr noundef %.04, i64 noundef %.2, i64 noundef 8) #17, !dbg !1389
  call void @llvm.dbg.value(metadata ptr %109, metadata !1246, metadata !DIExpression()), !dbg !1357
  br label %110, !dbg !1390

110:                                              ; preds = %108, %91
  %.15 = phi ptr [ %109, %108 ], [ %.04, %91 ], !dbg !1357
  %.3 = phi i64 [ %.2, %108 ], [ %.0, %91 ], !dbg !1357
  call void @llvm.dbg.value(metadata i64 %.3, metadata !1251, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr %.15, metadata !1246, metadata !DIExpression()), !dbg !1357
  %111 = trunc i8 %.025 to i1, !dbg !1391
  br i1 %111, label %116, label %112, !dbg !1393

112:                                              ; preds = %110
  %113 = call noalias nonnull ptr @xmalloc(i64 noundef 1024) #18, !dbg !1394
  %114 = getelementptr inbounds ptr, ptr %.15, i64 %.08, !dbg !1396
  store ptr %113, ptr %114, align 8, !dbg !1397, !tbaa !374
  %115 = add i64 %.08, 1, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %115, metadata !1250, metadata !DIExpression()), !dbg !1357
  br label %116, !dbg !1399

116:                                              ; preds = %112, %110
  %.12 = phi i64 [ %.01, %110 ], [ %115, %112 ], !dbg !1357
  call void @llvm.dbg.value(metadata i64 %.12, metadata !1250, metadata !DIExpression()), !dbg !1357
  %117 = getelementptr inbounds ptr, ptr %.15, i64 %.08, !dbg !1400
  %118 = load ptr, ptr %117, align 8, !dbg !1400, !tbaa !374
  %119 = call i64 @full_read(i32 noundef %1, ptr noundef %118, i64 noundef 1024), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %119, metadata !1242, metadata !DIExpression()), !dbg !1357
  %120 = icmp ult i64 %119, 1024, !dbg !1402
  br i1 %120, label %121, label %130, !dbg !1404

121:                                              ; preds = %116
  %122 = call ptr @__error(), !dbg !1405
  %123 = load i32, ptr %122, align 4, !dbg !1405, !tbaa !661
  %124 = icmp ne i32 %123, 0, !dbg !1408
  br i1 %124, label %125, label %129, !dbg !1409

125:                                              ; preds = %121
  %126 = call ptr @__error(), !dbg !1410
  %127 = load i32, ptr %126, align 4, !dbg !1410, !tbaa !661
  %128 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1412
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %127, ptr noundef @.str.57, ptr noundef %128), !dbg !1413
  call void @llvm.dbg.value(metadata i8 0, metadata !1223, metadata !DIExpression()), !dbg !1262
  br label %176, !dbg !1414

129:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i8 1, metadata !1240, metadata !DIExpression()), !dbg !1357
  br label %130, !dbg !1415

130:                                              ; preds = %129, %116
  %.134 = phi i8 [ 1, %129 ], [ %.033, %116 ], !dbg !1357
  call void @llvm.dbg.value(metadata i8 %.134, metadata !1240, metadata !DIExpression()), !dbg !1357
  %131 = add i64 %.08, 1, !dbg !1416
  %132 = icmp eq i64 %131, %87, !dbg !1418
  br i1 %132, label %133, label %134, !dbg !1419

133:                                              ; preds = %130
  call void @llvm.dbg.value(metadata i8 1, metadata !1243, metadata !DIExpression()), !dbg !1357
  br label %134, !dbg !1420

134:                                              ; preds = %133, %130
  %.126 = phi i8 [ 1, %133 ], [ %.025, %130 ], !dbg !1357
  call void @llvm.dbg.value(metadata i8 %.126, metadata !1243, metadata !DIExpression()), !dbg !1357
  %135 = trunc i8 %.126 to i1, !dbg !1421
  br i1 %135, label %136, label %140, !dbg !1423

136:                                              ; preds = %134
  %137 = add i64 %.5, %119, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %137, metadata !1222, metadata !DIExpression()), !dbg !1262
  %138 = getelementptr inbounds ptr, ptr %.15, i64 %.07, !dbg !1426
  %139 = load ptr, ptr %138, align 8, !dbg !1426, !tbaa !374
  call void @xwrite_stdout(ptr noundef %139, i64 noundef %119), !dbg !1427
  br label %140, !dbg !1428

140:                                              ; preds = %136, %134
  %.6 = phi i64 [ %137, %136 ], [ %.5, %134 ], !dbg !1262
  call void @llvm.dbg.value(metadata i64 %.6, metadata !1222, metadata !DIExpression()), !dbg !1262
  br label %141, !dbg !1429

141:                                              ; preds = %140
  call void @llvm.dbg.value(metadata i64 %.07, metadata !1244, metadata !DIExpression()), !dbg !1357
  %142 = add i64 %.07, 1, !dbg !1430
  %143 = urem i64 %142, %87, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %143, metadata !1245, metadata !DIExpression()), !dbg !1357
  br label %88, !dbg !1432, !llvm.loop !1433

144:                                              ; preds = %88
  %145 = icmp ne i64 %84, 0, !dbg !1435
  br i1 %145, label %146, label %175, !dbg !1436

146:                                              ; preds = %144
  %147 = trunc i8 %.025 to i1, !dbg !1437
  br i1 %147, label %148, label %164, !dbg !1438

148:                                              ; preds = %146
  %149 = sub i64 1024, %.028, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %149, metadata !1252, metadata !DIExpression()), !dbg !1440
  %150 = add i64 %.5, %84, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %150, metadata !1222, metadata !DIExpression()), !dbg !1262
  %151 = icmp ult i64 %84, %149, !dbg !1442
  br i1 %151, label %152, label %156, !dbg !1444

152:                                              ; preds = %148
  %153 = getelementptr inbounds ptr, ptr %.04, i64 %.08, !dbg !1445
  %154 = load ptr, ptr %153, align 8, !dbg !1445, !tbaa !374
  %155 = getelementptr inbounds i8, ptr %154, i64 %.028, !dbg !1447
  call void @xwrite_stdout(ptr noundef %155, i64 noundef %84), !dbg !1448
  br label %163, !dbg !1449

156:                                              ; preds = %148
  %157 = getelementptr inbounds ptr, ptr %.04, i64 %.08, !dbg !1450
  %158 = load ptr, ptr %157, align 8, !dbg !1450, !tbaa !374
  %159 = getelementptr inbounds i8, ptr %158, i64 %.028, !dbg !1452
  call void @xwrite_stdout(ptr noundef %159, i64 noundef %149), !dbg !1453
  %160 = getelementptr inbounds ptr, ptr %.04, i64 %.07, !dbg !1454
  %161 = load ptr, ptr %160, align 8, !dbg !1454, !tbaa !374
  %162 = sub i64 %84, %149, !dbg !1455
  call void @xwrite_stdout(ptr noundef %161, i64 noundef %162), !dbg !1456
  br label %163

163:                                              ; preds = %156, %152
  br label %174, !dbg !1457

164:                                              ; preds = %146
  %165 = add i64 %.08, 1, !dbg !1458
  %166 = icmp eq i64 %165, %87, !dbg !1459
  br i1 %166, label %167, label %173, !dbg !1460

167:                                              ; preds = %164
  %168 = sub i64 1024, %84, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %168, metadata !1257, metadata !DIExpression()), !dbg !1462
  %169 = sub i64 %.028, %168, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %169, metadata !1260, metadata !DIExpression()), !dbg !1462
  %170 = add i64 %.5, %169, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %170, metadata !1222, metadata !DIExpression()), !dbg !1262
  %171 = getelementptr inbounds ptr, ptr %.04, i64 %.07, !dbg !1465
  %172 = load ptr, ptr %171, align 8, !dbg !1465, !tbaa !374
  call void @xwrite_stdout(ptr noundef %172, i64 noundef %169), !dbg !1466
  br label %173, !dbg !1467

173:                                              ; preds = %167, %164
  %.7 = phi i64 [ %170, %167 ], [ %.5, %164 ], !dbg !1262
  call void @llvm.dbg.value(metadata i64 %.7, metadata !1222, metadata !DIExpression()), !dbg !1262
  br label %174

174:                                              ; preds = %173, %163
  %.8 = phi i64 [ %150, %163 ], [ %.7, %173 ], !dbg !1468
  call void @llvm.dbg.value(metadata i64 %.8, metadata !1222, metadata !DIExpression()), !dbg !1262
  br label %175, !dbg !1469

175:                                              ; preds = %174, %144
  %.9 = phi i64 [ %.8, %174 ], [ %.5, %144 ], !dbg !1262
  call void @llvm.dbg.value(metadata i64 %.9, metadata !1222, metadata !DIExpression()), !dbg !1262
  br label %176, !dbg !1435

176:                                              ; preds = %175, %125
  %.317 = phi i8 [ 0, %125 ], [ 1, %175 ], !dbg !1262
  %.10 = phi i64 [ %.5, %125 ], [ %.9, %175 ], !dbg !1262
  %.26 = phi ptr [ %.15, %125 ], [ %.04, %175 ], !dbg !1357
  %.23 = phi i64 [ %.12, %125 ], [ %.01, %175 ], !dbg !1366
  call void @llvm.dbg.value(metadata i64 %.23, metadata !1250, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr %.26, metadata !1246, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %.10, metadata !1222, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8 %.317, metadata !1223, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.label(metadata !1261), !dbg !1470
  call void @llvm.dbg.value(metadata i64 0, metadata !1244, metadata !DIExpression()), !dbg !1357
  br label %177, !dbg !1471

177:                                              ; preds = %182, %176
  %.19 = phi i64 [ 0, %176 ], [ %183, %182 ], !dbg !1473
  call void @llvm.dbg.value(metadata i64 %.19, metadata !1244, metadata !DIExpression()), !dbg !1357
  %178 = icmp ult i64 %.19, %.23, !dbg !1474
  br i1 %178, label %179, label %184, !dbg !1476

179:                                              ; preds = %177
  %180 = getelementptr inbounds ptr, ptr %.26, i64 %.19, !dbg !1477
  %181 = load ptr, ptr %180, align 8, !dbg !1477, !tbaa !374
  call void @rpl_free(ptr noundef %181), !dbg !1478
  br label %182, !dbg !1478

182:                                              ; preds = %179
  %183 = add i64 %.19, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %183, metadata !1244, metadata !DIExpression()), !dbg !1357
  br label %177, !dbg !1480, !llvm.loop !1481

184:                                              ; preds = %177
  call void @rpl_free(ptr noundef %.26), !dbg !1483
  br label %185

185:                                              ; preds = %184, %79
  %.418 = phi i8 [ %.216, %79 ], [ %.317, %184 ], !dbg !1484
  %.11 = phi i64 [ %.4, %79 ], [ %.10, %184 ], !dbg !1286
  call void @llvm.dbg.value(metadata i64 %.11, metadata !1222, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8 %.418, metadata !1223, metadata !DIExpression()), !dbg !1262
  %186 = icmp sle i64 0, %3, !dbg !1485
  br i1 %186, label %187, label %191, !dbg !1487

187:                                              ; preds = %185
  %188 = call i64 @elseek(i32 noundef %1, i64 noundef %.11, i32 noundef 0, ptr noundef %0), !dbg !1488
  %189 = icmp slt i64 %188, 0, !dbg !1489
  br i1 %189, label %190, label %191, !dbg !1490

190:                                              ; preds = %187
  call void @llvm.dbg.value(metadata i8 0, metadata !1223, metadata !DIExpression()), !dbg !1262
  br label %191, !dbg !1491

191:                                              ; preds = %190, %187, %185
  %.519 = phi i8 [ 0, %190 ], [ %.418, %187 ], [ %.418, %185 ], !dbg !1262
  call void @llvm.dbg.value(metadata i8 %.519, metadata !1223, metadata !DIExpression()), !dbg !1262
  %192 = trunc i8 %.519 to i1, !dbg !1492
  ret i1 %192, !dbg !1493

193:                                              ; preds = %73
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @copy_fd(i32 noundef %0, i64 noundef %1) #7 !dbg !1494 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1498, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %1, metadata !1499, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.start.p0(i64 1024, ptr %3) #15, !dbg !1507
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1500, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i64 1024, metadata !1501, metadata !DIExpression()), !dbg !1506
  br label %4, !dbg !1509

4:                                                ; preds = %25, %2
  %.02 = phi i64 [ %1, %2 ], [ %.13, %25 ]
  %.0 = phi i32 [ undef, %2 ], [ %.1, %25 ]
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1499, metadata !DIExpression()), !dbg !1506
  %5 = icmp ult i64 0, %.02, !dbg !1510
  br i1 %5, label %6, label %26, !dbg !1509

6:                                                ; preds = %4
  %7 = icmp ult i64 1024, %.02, !dbg !1511
  br i1 %7, label %8, label %9, !dbg !1511

8:                                                ; preds = %6
  br label %10, !dbg !1511

9:                                                ; preds = %6
  br label %10, !dbg !1511

10:                                               ; preds = %9, %8
  %11 = phi i64 [ 1024, %8 ], [ %.02, %9 ], !dbg !1511
  call void @llvm.dbg.value(metadata i64 %11, metadata !1503, metadata !DIExpression()), !dbg !1512
  %12 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 0, !dbg !1513
  %13 = call i64 @safe_read(i32 noundef %0, ptr noundef %12, i64 noundef %11), !dbg !1514
  call void @llvm.dbg.value(metadata i64 %13, metadata !1505, metadata !DIExpression()), !dbg !1512
  %14 = icmp eq i64 %13, -1, !dbg !1515
  br i1 %14, label %15, label %16, !dbg !1517

15:                                               ; preds = %10
  br label %24, !dbg !1518

16:                                               ; preds = %10
  %17 = sub i64 %.02, %13, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %17, metadata !1499, metadata !DIExpression()), !dbg !1506
  %18 = icmp eq i64 %13, 0, !dbg !1520
  br i1 %18, label %19, label %22, !dbg !1522

19:                                               ; preds = %16
  %20 = icmp ne i64 %17, 0, !dbg !1523
  br i1 %20, label %21, label %22, !dbg !1524

21:                                               ; preds = %19
  br label %24, !dbg !1525

22:                                               ; preds = %19, %16
  %23 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 0, !dbg !1526
  call void @xwrite_stdout(ptr noundef %23, i64 noundef %13), !dbg !1527
  br label %24, !dbg !1528

24:                                               ; preds = %22, %21, %15
  %.13 = phi i64 [ %.02, %15 ], [ %17, %21 ], [ %17, %22 ]
  %.01 = phi i32 [ 1, %15 ], [ 1, %21 ], [ 0, %22 ]
  %.1 = phi i32 [ 1, %15 ], [ 2, %21 ], [ %.0, %22 ]
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1499, metadata !DIExpression()), !dbg !1506
  switch i32 %.01, label %27 [
    i32 0, label %25
  ]

25:                                               ; preds = %24
  br label %4, !dbg !1509, !llvm.loop !1529

26:                                               ; preds = %4
  br label %27, !dbg !1530

27:                                               ; preds = %26, %24
  %.2 = phi i32 [ %.1, %24 ], [ 0, %26 ], !dbg !1506
  call void @llvm.lifetime.end.p0(i64 1024, ptr %3) #15, !dbg !1531
  ret i32 %.2, !dbg !1531
}

; Function Attrs: nounwind ssp uwtable
define internal void @diagnose_copy_fd_failure(i32 noundef %0, ptr noundef %1) #7 !dbg !1532 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1536, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata ptr %1, metadata !1537, metadata !DIExpression()), !dbg !1538
  switch i32 %0, label %11 [
    i32 1, label %3
    i32 2, label %7
  ], !dbg !1539

3:                                                ; preds = %2
  %4 = call ptr @__error(), !dbg !1540
  %5 = load i32, ptr %4, align 4, !dbg !1540, !tbaa !661
  %6 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %1), !dbg !1542
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %5, ptr noundef @.str.57, ptr noundef %6), !dbg !1543
  br label %12, !dbg !1544

7:                                                ; preds = %2
  %8 = call ptr @__error(), !dbg !1545
  %9 = load i32, ptr %8, align 4, !dbg !1545, !tbaa !661
  %10 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1), !dbg !1546
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %9, ptr noundef @.str.60, ptr noundef %10), !dbg !1547
  br label %12, !dbg !1548

11:                                               ; preds = %2
  call void @abort() #19, !dbg !1549
  unreachable, !dbg !1549

12:                                               ; preds = %7, %3
  ret void, !dbg !1550
}

declare !dbg !1551 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: cold noreturn
declare !dbg !1554 void @abort() #8

; Function Attrs: allocsize(0,1)
declare !dbg !1555 noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) #9

declare !dbg !1559 i64 @full_read(i32 noundef, ptr noundef, i64 noundef) #2

declare !dbg !1561 void @rpl_free(ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp allocsize(1,2) uwtable
define available_externally ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) #10 !dbg !1565 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1569, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %1, metadata !1570, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %2, metadata !1571, metadata !DIExpression()), !dbg !1572
  %4 = call ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #17, !dbg !1573
  ret ptr %4, !dbg !1574
}

; Function Attrs: allocsize(0)
declare !dbg !1575 noalias nonnull ptr @xmalloc(i64 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: allocsize(1,2)
declare !dbg !1578 ptr @xreallocarray(ptr noundef, i64 noundef, i64 noundef) #12

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @elide_tail_lines_pipe(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #7 !dbg !1579 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1581, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i32 %1, metadata !1582, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %2, metadata !1583, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %3, metadata !1584, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %3, metadata !1585, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 0, metadata !1601, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1614
  %5 = call noalias nonnull ptr @xmalloc(i64 noundef 1056) #18, !dbg !1615
  call void @llvm.dbg.value(metadata ptr %5, metadata !1599, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %5, metadata !1586, metadata !DIExpression()), !dbg !1614
  %6 = getelementptr inbounds %struct.linebuffer, ptr %5, i32 0, i32 2, !dbg !1616
  store i64 0, ptr %6, align 8, !dbg !1617, !tbaa !1618
  %7 = getelementptr inbounds %struct.linebuffer, ptr %5, i32 0, i32 1, !dbg !1620
  store i64 0, ptr %7, align 8, !dbg !1621, !tbaa !1622
  %8 = getelementptr inbounds %struct.linebuffer, ptr %5, i32 0, i32 3, !dbg !1623
  store ptr null, ptr %8, align 8, !dbg !1624, !tbaa !1625
  %9 = call noalias nonnull ptr @xmalloc(i64 noundef 1056) #18, !dbg !1626
  call void @llvm.dbg.value(metadata ptr %9, metadata !1600, metadata !DIExpression()), !dbg !1614
  br label %10, !dbg !1627

10:                                               ; preds = %96, %21, %4
  %.017 = phi i64 [ 0, %4 ], [ %.219, %96 ], [ %.017, %21 ], !dbg !1614
  %.013 = phi ptr [ %9, %4 ], [ %.215, %96 ], [ %.013, %21 ], !dbg !1628
  %.011 = phi ptr [ %5, %4 ], [ %.112, %96 ], [ %.011, %21 ], !dbg !1629
  %.07 = phi ptr [ %5, %4 ], [ %.29, %96 ], [ %.07, %21 ], !dbg !1630
  %.05 = phi i64 [ %3, %4 ], [ %.2, %96 ], [ %22, %21 ], !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1585, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.07, metadata !1586, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.011, metadata !1599, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.013, metadata !1600, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.017, metadata !1601, metadata !DIExpression()), !dbg !1614
  br label %11, !dbg !1627

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 0, !dbg !1631
  %13 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !1632
  %14 = call i64 @safe_read(i32 noundef %1, ptr noundef %13, i64 noundef 1024), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %14, metadata !1603, metadata !DIExpression()), !dbg !1614
  %15 = icmp eq i64 %14, 0, !dbg !1634
  br i1 %15, label %18, label %16, !dbg !1636

16:                                               ; preds = %11
  %17 = icmp eq i64 %14, -1, !dbg !1637
  br i1 %17, label %18, label %19, !dbg !1638

18:                                               ; preds = %16, %11
  br label %97, !dbg !1639

19:                                               ; preds = %16
  %20 = icmp ne i64 %2, 0, !dbg !1640
  br i1 %20, label %25, label %21, !dbg !1642

21:                                               ; preds = %19
  %22 = add i64 %.05, %14, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %22, metadata !1585, metadata !DIExpression()), !dbg !1614
  %23 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 0, !dbg !1645
  %24 = getelementptr inbounds [1025 x i8], ptr %23, i64 0, i64 0, !dbg !1646
  call void @xwrite_stdout(ptr noundef %24, i64 noundef %14), !dbg !1647
  br label %10, !dbg !1648, !llvm.loop !1649

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 1, !dbg !1651
  store i64 %14, ptr %26, align 8, !dbg !1652, !tbaa !1622
  %27 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 2, !dbg !1653
  store i64 0, ptr %27, align 8, !dbg !1654, !tbaa !1618
  %28 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 3, !dbg !1655
  store ptr null, ptr %28, align 8, !dbg !1656, !tbaa !1625
  %29 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 0, !dbg !1657
  %30 = getelementptr inbounds [1025 x i8], ptr %29, i64 0, i64 0, !dbg !1658
  %31 = getelementptr inbounds i8, ptr %30, i64 %14, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %31, metadata !1604, metadata !DIExpression()), !dbg !1660
  %32 = load i8, ptr @line_end, align 1, !dbg !1661, !tbaa !549
  store i8 %32, ptr %31, align 1, !dbg !1662, !tbaa !549
  %33 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 0, !dbg !1663
  %34 = getelementptr inbounds [1025 x i8], ptr %33, i64 0, i64 0, !dbg !1664
  call void @llvm.dbg.value(metadata ptr %34, metadata !1607, metadata !DIExpression()), !dbg !1660
  br label %35, !dbg !1665

35:                                               ; preds = %40, %25
  %.02 = phi ptr [ %34, %25 ], [ %41, %40 ], !dbg !1660
  call void @llvm.dbg.value(metadata ptr %.02, metadata !1607, metadata !DIExpression()), !dbg !1660
  %36 = load i8, ptr @line_end, align 1, !dbg !1666, !tbaa !549
  %37 = sext i8 %36 to i32, !dbg !1666
  %38 = call ptr @rawmemchr(ptr noundef %.02, i32 noundef %37) #20, !dbg !1667
  call void @llvm.dbg.value(metadata ptr %38, metadata !1607, metadata !DIExpression()), !dbg !1660
  %39 = icmp ult ptr %38, %31, !dbg !1668
  br i1 %39, label %40, label %45, !dbg !1665

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %38, i32 1, !dbg !1669
  call void @llvm.dbg.value(metadata ptr %41, metadata !1607, metadata !DIExpression()), !dbg !1660
  %42 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 2, !dbg !1671
  %43 = load i64, ptr %42, align 8, !dbg !1672, !tbaa !1618
  %44 = add i64 %43, 1, !dbg !1672
  store i64 %44, ptr %42, align 8, !dbg !1672, !tbaa !1618
  br label %35, !dbg !1665, !llvm.loop !1673

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 2, !dbg !1675
  %47 = load i64, ptr %46, align 8, !dbg !1675, !tbaa !1618
  %48 = add i64 %.017, %47, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %48, metadata !1601, metadata !DIExpression()), !dbg !1614
  %49 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 1, !dbg !1677
  %50 = load i64, ptr %49, align 8, !dbg !1677, !tbaa !1622
  %51 = getelementptr inbounds %struct.linebuffer, ptr %.011, i32 0, i32 1, !dbg !1679
  %52 = load i64, ptr %51, align 8, !dbg !1679, !tbaa !1622
  %53 = add i64 %50, %52, !dbg !1680
  %54 = icmp ult i64 %53, 1024, !dbg !1681
  br i1 %54, label %55, label %74, !dbg !1682

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.linebuffer, ptr %.011, i32 0, i32 0, !dbg !1683
  %57 = getelementptr inbounds %struct.linebuffer, ptr %.011, i32 0, i32 1, !dbg !1685
  %58 = load i64, ptr %57, align 8, !dbg !1685, !tbaa !1622
  %59 = getelementptr inbounds [1025 x i8], ptr %56, i64 0, i64 %58, !dbg !1686
  %60 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 0, !dbg !1687
  %61 = getelementptr inbounds [1025 x i8], ptr %60, i64 0, i64 0, !dbg !1688
  %62 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 1, !dbg !1689
  %63 = load i64, ptr %62, align 8, !dbg !1689, !tbaa !1622
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 8 %61, i64 %63, i1 false), !dbg !1688
  %64 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 1, !dbg !1690
  %65 = load i64, ptr %64, align 8, !dbg !1690, !tbaa !1622
  %66 = getelementptr inbounds %struct.linebuffer, ptr %.011, i32 0, i32 1, !dbg !1691
  %67 = load i64, ptr %66, align 8, !dbg !1692, !tbaa !1622
  %68 = add i64 %67, %65, !dbg !1692
  store i64 %68, ptr %66, align 8, !dbg !1692, !tbaa !1622
  %69 = getelementptr inbounds %struct.linebuffer, ptr %.013, i32 0, i32 2, !dbg !1693
  %70 = load i64, ptr %69, align 8, !dbg !1693, !tbaa !1618
  %71 = getelementptr inbounds %struct.linebuffer, ptr %.011, i32 0, i32 2, !dbg !1694
  %72 = load i64, ptr %71, align 8, !dbg !1695, !tbaa !1618
  %73 = add i64 %72, %70, !dbg !1695
  store i64 %73, ptr %71, align 8, !dbg !1695, !tbaa !1618
  br label %96, !dbg !1696

74:                                               ; preds = %45
  %75 = getelementptr inbounds %struct.linebuffer, ptr %.011, i32 0, i32 3, !dbg !1697
  store ptr %.013, ptr %75, align 8, !dbg !1699, !tbaa !1625
  call void @llvm.dbg.value(metadata ptr %.013, metadata !1599, metadata !DIExpression()), !dbg !1614
  %76 = getelementptr inbounds %struct.linebuffer, ptr %.07, i32 0, i32 2, !dbg !1700
  %77 = load i64, ptr %76, align 8, !dbg !1700, !tbaa !1618
  %78 = sub i64 %48, %77, !dbg !1702
  %79 = icmp ult i64 %2, %78, !dbg !1703
  br i1 %79, label %80, label %93, !dbg !1704

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.linebuffer, ptr %.07, i32 0, i32 1, !dbg !1705
  %82 = load i64, ptr %81, align 8, !dbg !1705, !tbaa !1622
  %83 = add i64 %.05, %82, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %83, metadata !1585, metadata !DIExpression()), !dbg !1614
  %84 = getelementptr inbounds %struct.linebuffer, ptr %.07, i32 0, i32 0, !dbg !1708
  %85 = getelementptr inbounds [1025 x i8], ptr %84, i64 0, i64 0, !dbg !1709
  %86 = getelementptr inbounds %struct.linebuffer, ptr %.07, i32 0, i32 1, !dbg !1710
  %87 = load i64, ptr %86, align 8, !dbg !1710, !tbaa !1622
  call void @xwrite_stdout(ptr noundef %85, i64 noundef %87), !dbg !1711
  call void @llvm.dbg.value(metadata ptr %.07, metadata !1600, metadata !DIExpression()), !dbg !1614
  %88 = getelementptr inbounds %struct.linebuffer, ptr %.07, i32 0, i32 2, !dbg !1712
  %89 = load i64, ptr %88, align 8, !dbg !1712, !tbaa !1618
  %90 = sub i64 %48, %89, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %90, metadata !1601, metadata !DIExpression()), !dbg !1614
  %91 = getelementptr inbounds %struct.linebuffer, ptr %.07, i32 0, i32 3, !dbg !1714
  %92 = load ptr, ptr %91, align 8, !dbg !1714, !tbaa !1625
  call void @llvm.dbg.value(metadata ptr %92, metadata !1586, metadata !DIExpression()), !dbg !1614
  br label %95, !dbg !1715

93:                                               ; preds = %74
  %94 = call noalias nonnull ptr @xmalloc(i64 noundef 1056) #18, !dbg !1716
  call void @llvm.dbg.value(metadata ptr %94, metadata !1600, metadata !DIExpression()), !dbg !1614
  br label %95

95:                                               ; preds = %93, %80
  %.118 = phi i64 [ %90, %80 ], [ %48, %93 ], !dbg !1717
  %.114 = phi ptr [ %.07, %80 ], [ %94, %93 ], !dbg !1718
  %.18 = phi ptr [ %92, %80 ], [ %.07, %93 ], !dbg !1614
  %.16 = phi i64 [ %83, %80 ], [ %.05, %93 ], !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.16, metadata !1585, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.18, metadata !1586, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.114, metadata !1600, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.118, metadata !1601, metadata !DIExpression()), !dbg !1614
  br label %96

96:                                               ; preds = %95, %55
  %.219 = phi i64 [ %48, %55 ], [ %.118, %95 ], !dbg !1717
  %.215 = phi ptr [ %.013, %55 ], [ %.114, %95 ], !dbg !1614
  %.112 = phi ptr [ %.011, %55 ], [ %.013, %95 ], !dbg !1614
  %.29 = phi ptr [ %.07, %55 ], [ %.18, %95 ], !dbg !1614
  %.2 = phi i64 [ %.05, %55 ], [ %.16, %95 ], !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1585, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.29, metadata !1586, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.112, metadata !1599, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.215, metadata !1600, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.219, metadata !1601, metadata !DIExpression()), !dbg !1614
  br label %10, !dbg !1627, !llvm.loop !1649

97:                                               ; preds = %18
  call void @rpl_free(ptr noundef %.013), !dbg !1719
  %98 = icmp eq i64 %14, -1, !dbg !1720
  br i1 %98, label %99, label %103, !dbg !1722

99:                                               ; preds = %97
  %100 = call ptr @__error(), !dbg !1723
  %101 = load i32, ptr %100, align 4, !dbg !1723, !tbaa !661
  %102 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1725
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %101, ptr noundef @.str.57, ptr noundef %102), !dbg !1726
  call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1614
  br label %187, !dbg !1727

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.linebuffer, ptr %.011, i32 0, i32 1, !dbg !1728
  %105 = load i64, ptr %104, align 8, !dbg !1728, !tbaa !1622
  %106 = icmp ne i64 %105, 0, !dbg !1730
  br i1 %106, label %107, label %123, !dbg !1731

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.linebuffer, ptr %.011, i32 0, i32 0, !dbg !1732
  %109 = getelementptr inbounds %struct.linebuffer, ptr %.011, i32 0, i32 1, !dbg !1733
  %110 = load i64, ptr %109, align 8, !dbg !1733, !tbaa !1622
  %111 = sub i64 %110, 1, !dbg !1734
  %112 = getelementptr inbounds [1025 x i8], ptr %108, i64 0, i64 %111, !dbg !1735
  %113 = load i8, ptr %112, align 1, !dbg !1735, !tbaa !549
  %114 = sext i8 %113 to i32, !dbg !1735
  %115 = load i8, ptr @line_end, align 1, !dbg !1736, !tbaa !549
  %116 = sext i8 %115 to i32, !dbg !1736
  %117 = icmp ne i32 %114, %116, !dbg !1737
  br i1 %117, label %118, label %123, !dbg !1738

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.linebuffer, ptr %.011, i32 0, i32 2, !dbg !1739
  %120 = load i64, ptr %119, align 8, !dbg !1741, !tbaa !1618
  %121 = add i64 %120, 1, !dbg !1741
  store i64 %121, ptr %119, align 8, !dbg !1741, !tbaa !1618
  %122 = add i64 %.017, 1, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %122, metadata !1601, metadata !DIExpression()), !dbg !1614
  br label %123, !dbg !1743

123:                                              ; preds = %118, %107, %103
  %.320 = phi i64 [ %122, %118 ], [ %.017, %107 ], [ %.017, %103 ], !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.320, metadata !1601, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.07, metadata !1600, metadata !DIExpression()), !dbg !1614
  br label %124, !dbg !1744

124:                                              ; preds = %140, %123
  %.421 = phi i64 [ %.320, %123 ], [ %139, %140 ], !dbg !1614
  %.316 = phi ptr [ %.07, %123 ], [ %142, %140 ], !dbg !1746
  %.3 = phi i64 [ %.05, %123 ], [ %132, %140 ], !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.3, metadata !1585, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.316, metadata !1600, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.421, metadata !1601, metadata !DIExpression()), !dbg !1614
  %125 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 2, !dbg !1747
  %126 = load i64, ptr %125, align 8, !dbg !1747, !tbaa !1618
  %127 = sub i64 %.421, %126, !dbg !1749
  %128 = icmp ult i64 %2, %127, !dbg !1750
  br i1 %128, label %129, label %143, !dbg !1751

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 1, !dbg !1752
  %131 = load i64, ptr %130, align 8, !dbg !1752, !tbaa !1622
  %132 = add i64 %.3, %131, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %132, metadata !1585, metadata !DIExpression()), !dbg !1614
  %133 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 0, !dbg !1755
  %134 = getelementptr inbounds [1025 x i8], ptr %133, i64 0, i64 0, !dbg !1756
  %135 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 1, !dbg !1757
  %136 = load i64, ptr %135, align 8, !dbg !1757, !tbaa !1622
  call void @xwrite_stdout(ptr noundef %134, i64 noundef %136), !dbg !1758
  %137 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 2, !dbg !1759
  %138 = load i64, ptr %137, align 8, !dbg !1759, !tbaa !1618
  %139 = sub i64 %.421, %138, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %139, metadata !1601, metadata !DIExpression()), !dbg !1614
  br label %140, !dbg !1761

140:                                              ; preds = %129
  %141 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 3, !dbg !1762
  %142 = load ptr, ptr %141, align 8, !dbg !1762, !tbaa !1625
  call void @llvm.dbg.value(metadata ptr %142, metadata !1600, metadata !DIExpression()), !dbg !1614
  br label %124, !dbg !1763, !llvm.loop !1764

143:                                              ; preds = %124
  %144 = icmp ult i64 %2, %.421, !dbg !1766
  br i1 %144, label %145, label %186, !dbg !1767

145:                                              ; preds = %143
  %146 = sub i64 %.421, %2, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %146, metadata !1608, metadata !DIExpression()), !dbg !1769
  %147 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 0, !dbg !1770
  %148 = getelementptr inbounds [1025 x i8], ptr %147, i64 0, i64 0, !dbg !1771
  %149 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 1, !dbg !1772
  %150 = load i64, ptr %149, align 8, !dbg !1772, !tbaa !1622
  %151 = getelementptr inbounds i8, ptr %148, i64 %150, !dbg !1773
  call void @llvm.dbg.value(metadata ptr %151, metadata !1611, metadata !DIExpression()), !dbg !1769
  %152 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 0, !dbg !1774
  %153 = getelementptr inbounds [1025 x i8], ptr %152, i64 0, i64 0, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %153, metadata !1612, metadata !DIExpression()), !dbg !1769
  br label %154, !dbg !1776

154:                                              ; preds = %166, %145
  %.01 = phi i64 [ %146, %145 ], [ %171, %166 ], !dbg !1769
  %.0 = phi ptr [ %153, %145 ], [ %167, %166 ], !dbg !1769
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1612, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1608, metadata !DIExpression()), !dbg !1769
  %155 = icmp ne i64 %.01, 0, !dbg !1777
  br i1 %155, label %156, label %164, !dbg !1778

156:                                              ; preds = %154
  %157 = load i8, ptr @line_end, align 1, !dbg !1779, !tbaa !549
  %158 = sext i8 %157 to i32, !dbg !1779
  %159 = ptrtoint ptr %151 to i64, !dbg !1780
  %160 = ptrtoint ptr %.0 to i64, !dbg !1780
  %161 = sub i64 %159, %160, !dbg !1780
  %162 = call ptr @memchr(ptr noundef %.0, i32 noundef %158, i64 noundef %161), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %162, metadata !1612, metadata !DIExpression()), !dbg !1769
  %163 = icmp ne ptr %162, null, !dbg !1778
  br label %164

164:                                              ; preds = %156, %154
  %.1 = phi ptr [ %162, %156 ], [ %.0, %154 ], !dbg !1769
  %165 = phi i1 [ false, %154 ], [ %163, %156 ], !dbg !1769
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1612, metadata !DIExpression()), !dbg !1769
  br i1 %165, label %166, label %172, !dbg !1776

166:                                              ; preds = %164
  %167 = getelementptr inbounds i8, ptr %.1, i32 1, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %167, metadata !1612, metadata !DIExpression()), !dbg !1769
  %168 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 2, !dbg !1784
  %169 = load i64, ptr %168, align 8, !dbg !1785, !tbaa !1618
  %170 = add i64 %169, 1, !dbg !1785
  store i64 %170, ptr %168, align 8, !dbg !1785, !tbaa !1618
  %171 = add i64 %.01, -1, !dbg !1786
  call void @llvm.dbg.value(metadata i64 %171, metadata !1608, metadata !DIExpression()), !dbg !1769
  br label %154, !dbg !1776, !llvm.loop !1787

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 0, !dbg !1789
  %174 = getelementptr inbounds [1025 x i8], ptr %173, i64 0, i64 0, !dbg !1790
  %175 = ptrtoint ptr %.1 to i64, !dbg !1791
  %176 = ptrtoint ptr %174 to i64, !dbg !1791
  %177 = sub i64 %175, %176, !dbg !1791
  %178 = add i64 %.3, %177, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %178, metadata !1585, metadata !DIExpression()), !dbg !1614
  %179 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 0, !dbg !1793
  %180 = getelementptr inbounds [1025 x i8], ptr %179, i64 0, i64 0, !dbg !1794
  %181 = getelementptr inbounds %struct.linebuffer, ptr %.316, i32 0, i32 0, !dbg !1795
  %182 = getelementptr inbounds [1025 x i8], ptr %181, i64 0, i64 0, !dbg !1796
  %183 = ptrtoint ptr %.1 to i64, !dbg !1797
  %184 = ptrtoint ptr %182 to i64, !dbg !1797
  %185 = sub i64 %183, %184, !dbg !1797
  call void @xwrite_stdout(ptr noundef %180, i64 noundef %185), !dbg !1798
  br label %186, !dbg !1799

186:                                              ; preds = %172, %143
  %.4 = phi i64 [ %178, %172 ], [ %.3, %143 ], !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.4, metadata !1585, metadata !DIExpression()), !dbg !1614
  br label %187, !dbg !1800

187:                                              ; preds = %186, %99
  %.5 = phi i64 [ %.05, %99 ], [ %.4, %186 ], !dbg !1614
  %.03 = phi i8 [ 0, %99 ], [ 1, %186 ], !dbg !1614
  call void @llvm.dbg.value(metadata i8 %.03, metadata !1602, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %.5, metadata !1585, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.label(metadata !1613), !dbg !1801
  br label %188, !dbg !1802

188:                                              ; preds = %190, %187
  %.310 = phi ptr [ %.07, %187 ], [ %192, %190 ], !dbg !1614
  call void @llvm.dbg.value(metadata ptr %.310, metadata !1586, metadata !DIExpression()), !dbg !1614
  %189 = icmp ne ptr %.310, null, !dbg !1802
  br i1 %189, label %190, label %193, !dbg !1802

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.linebuffer, ptr %.310, i32 0, i32 3, !dbg !1803
  %192 = load ptr, ptr %191, align 8, !dbg !1803, !tbaa !1625
  call void @llvm.dbg.value(metadata ptr %192, metadata !1600, metadata !DIExpression()), !dbg !1614
  call void @rpl_free(ptr noundef %.310), !dbg !1805
  call void @llvm.dbg.value(metadata ptr %192, metadata !1586, metadata !DIExpression()), !dbg !1614
  br label %188, !dbg !1802, !llvm.loop !1806

193:                                              ; preds = %188
  %194 = icmp sle i64 0, %3, !dbg !1808
  br i1 %194, label %195, label %199, !dbg !1810

195:                                              ; preds = %193
  %196 = call i64 @elseek(i32 noundef %1, i64 noundef %.5, i32 noundef 0, ptr noundef %0), !dbg !1811
  %197 = icmp slt i64 %196, 0, !dbg !1812
  br i1 %197, label %198, label %199, !dbg !1813

198:                                              ; preds = %195
  call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1614
  br label %199, !dbg !1814

199:                                              ; preds = %198, %195, %193
  %.14 = phi i8 [ 0, %198 ], [ %.03, %195 ], [ %.03, %193 ], !dbg !1614
  call void @llvm.dbg.value(metadata i8 %.14, metadata !1602, metadata !DIExpression()), !dbg !1614
  %200 = trunc i8 %.14 to i1, !dbg !1815
  ret i1 %200, !dbg !1816
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @elide_tail_lines_seekable(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #7 !dbg !1817 {
  %6 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1821, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %1, metadata !1822, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %2, metadata !1823, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %3, metadata !1824, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %4, metadata !1825, metadata !DIExpression()), !dbg !1842
  call void @llvm.lifetime.start.p0(i64 1024, ptr %6) #15, !dbg !1843
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1826, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %4, metadata !1828, metadata !DIExpression()), !dbg !1842
  %7 = sub nsw i64 %4, %3, !dbg !1845
  %8 = srem i64 %7, 1024, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %8, metadata !1827, metadata !DIExpression()), !dbg !1842
  %9 = icmp eq i64 %8, 0, !dbg !1847
  br i1 %9, label %10, label %11, !dbg !1849

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 1024, metadata !1827, metadata !DIExpression()), !dbg !1842
  br label %11, !dbg !1850

11:                                               ; preds = %10, %5
  %.013 = phi i64 [ 1024, %10 ], [ %8, %5 ], !dbg !1842
  call void @llvm.dbg.value(metadata i64 %.013, metadata !1827, metadata !DIExpression()), !dbg !1842
  %12 = sub i64 %4, %.013, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %12, metadata !1828, metadata !DIExpression()), !dbg !1842
  %13 = call i64 @elseek(i32 noundef %1, i64 noundef %12, i32 noundef 0, ptr noundef %0), !dbg !1852
  %14 = icmp slt i64 %13, 0, !dbg !1854
  br i1 %14, label %15, label %16, !dbg !1855

15:                                               ; preds = %11
  br label %112, !dbg !1856

16:                                               ; preds = %11
  %17 = getelementptr inbounds [1024 x i8], ptr %6, i64 0, i64 0, !dbg !1857
  %18 = call i64 @safe_read(i32 noundef %1, ptr noundef %17, i64 noundef %.013), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %18, metadata !1827, metadata !DIExpression()), !dbg !1842
  %19 = icmp eq i64 %18, -1, !dbg !1859
  br i1 %19, label %20, label %24, !dbg !1861

20:                                               ; preds = %16
  %21 = call ptr @__error(), !dbg !1862
  %22 = load i32, ptr %21, align 4, !dbg !1862, !tbaa !661
  %23 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1864
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %22, ptr noundef @.str.57, ptr noundef %23), !dbg !1865
  br label %112, !dbg !1866

24:                                               ; preds = %16
  %25 = icmp ne i64 %2, 0, !dbg !1867
  %26 = xor i1 %25, true, !dbg !1867
  %27 = zext i1 %26 to i8, !dbg !1868
  call void @llvm.dbg.value(metadata i8 %27, metadata !1829, metadata !DIExpression()), !dbg !1842
  %28 = icmp ne i64 %2, 0, !dbg !1869
  br i1 %28, label %29, label %41, !dbg !1871

29:                                               ; preds = %24
  %30 = icmp ne i64 %18, 0, !dbg !1872
  br i1 %30, label %31, label %41, !dbg !1873

31:                                               ; preds = %29
  %32 = sub i64 %18, 1, !dbg !1874
  %33 = getelementptr inbounds [1024 x i8], ptr %6, i64 0, i64 %32, !dbg !1875
  %34 = load i8, ptr %33, align 1, !dbg !1875, !tbaa !549
  %35 = sext i8 %34 to i32, !dbg !1875
  %36 = load i8, ptr @line_end, align 1, !dbg !1876, !tbaa !549
  %37 = sext i8 %36 to i32, !dbg !1876
  %38 = icmp ne i32 %35, %37, !dbg !1877
  br i1 %38, label %39, label %41, !dbg !1878

39:                                               ; preds = %31
  %40 = add i64 %2, -1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %40, metadata !1823, metadata !DIExpression()), !dbg !1842
  br label %41, !dbg !1879

41:                                               ; preds = %39, %31, %29, %24
  %.07 = phi i64 [ %40, %39 ], [ %2, %31 ], [ %2, %29 ], [ %2, %24 ]
  call void @llvm.dbg.value(metadata i64 %.07, metadata !1823, metadata !DIExpression()), !dbg !1842
  br label %42, !dbg !1880

42:                                               ; preds = %110, %41
  %.114 = phi i64 [ %18, %41 ], [ %.215, %110 ], !dbg !1881
  %.011 = phi i64 [ %12, %41 ], [ %.112, %110 ], !dbg !1851
  %.18 = phi i64 [ %.07, %41 ], [ %.310, %110 ], !dbg !1842
  %.0 = phi i1 [ undef, %41 ], [ %.2, %110 ]
  call void @llvm.dbg.value(metadata i64 %.18, metadata !1823, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %.011, metadata !1828, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %.114, metadata !1827, metadata !DIExpression()), !dbg !1842
  br label %43, !dbg !1880

43:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i64 %.114, metadata !1831, metadata !DIExpression()), !dbg !1882
  br label %44, !dbg !1883

44:                                               ; preds = %88, %43
  %.29 = phi i64 [ %.18, %43 ], [ %65, %88 ], !dbg !1842
  %.01 = phi i64 [ %.114, %43 ], [ %.23, %88 ], !dbg !1882
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1831, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %.29, metadata !1823, metadata !DIExpression()), !dbg !1842
  %45 = icmp ne i64 %.01, 0, !dbg !1883
  br i1 %45, label %46, label %89, !dbg !1883

46:                                               ; preds = %44
  %47 = trunc i8 %27 to i1, !dbg !1884
  br i1 %47, label %48, label %50, !dbg !1885

48:                                               ; preds = %46
  %49 = sub i64 %.01, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %49, metadata !1831, metadata !DIExpression()), !dbg !1882
  br label %64, !dbg !1887

50:                                               ; preds = %46
  %51 = getelementptr inbounds [1024 x i8], ptr %6, i64 0, i64 0, !dbg !1888
  %52 = load i8, ptr @line_end, align 1, !dbg !1889, !tbaa !549
  %53 = sext i8 %52 to i32, !dbg !1889
  %54 = call ptr @memrchr(ptr noundef %51, i32 noundef %53, i64 noundef %.01) #20, !dbg !1890
  call void @llvm.dbg.value(metadata ptr %54, metadata !1833, metadata !DIExpression()), !dbg !1891
  %55 = icmp eq ptr %54, null, !dbg !1892
  br i1 %55, label %56, label %57, !dbg !1894

56:                                               ; preds = %50
  br label %62, !dbg !1895

57:                                               ; preds = %50
  %58 = getelementptr inbounds [1024 x i8], ptr %6, i64 0, i64 0, !dbg !1896
  %59 = ptrtoint ptr %54 to i64, !dbg !1897
  %60 = ptrtoint ptr %58 to i64, !dbg !1897
  %61 = sub i64 %59, %60, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %61, metadata !1831, metadata !DIExpression()), !dbg !1882
  br label %62, !dbg !1898

62:                                               ; preds = %57, %56
  %.04 = phi i32 [ 5, %56 ], [ 0, %57 ]
  %.12 = phi i64 [ %.01, %56 ], [ %61, %57 ], !dbg !1882
  call void @llvm.dbg.value(metadata i64 %.12, metadata !1831, metadata !DIExpression()), !dbg !1882
  switch i32 %.04, label %113 [
    i32 0, label %63
    i32 5, label %89
  ]

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %48
  %.23 = phi i64 [ %49, %48 ], [ %.12, %63 ], !dbg !1882
  call void @llvm.dbg.value(metadata i64 %.23, metadata !1831, metadata !DIExpression()), !dbg !1882
  %65 = add i64 %.29, -1, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %65, metadata !1823, metadata !DIExpression()), !dbg !1842
  %66 = icmp eq i64 %.29, 0, !dbg !1900
  br i1 %66, label %67, label %88, !dbg !1901

67:                                               ; preds = %64
  %68 = icmp slt i64 %3, %.011, !dbg !1902
  br i1 %68, label %69, label %81, !dbg !1903

69:                                               ; preds = %67
  %70 = call i64 @elseek(i32 noundef %1, i64 noundef %3, i32 noundef 0, ptr noundef %0), !dbg !1904
  %71 = icmp slt i64 %70, 0, !dbg !1906
  br i1 %71, label %72, label %73, !dbg !1907

72:                                               ; preds = %69
  br label %79, !dbg !1908

73:                                               ; preds = %69
  %74 = sub nsw i64 %.011, %3, !dbg !1909
  %75 = call i32 @copy_fd(i32 noundef %1, i64 noundef %74), !dbg !1910
  call void @llvm.dbg.value(metadata i32 %75, metadata !1837, metadata !DIExpression()), !dbg !1911
  %76 = icmp ne i32 %75, 0, !dbg !1912
  br i1 %76, label %77, label %78, !dbg !1914

77:                                               ; preds = %73
  call void @diagnose_copy_fd_failure(i32 noundef %75, ptr noundef %0), !dbg !1915
  br label %79, !dbg !1917

78:                                               ; preds = %73
  br label %79, !dbg !1918

79:                                               ; preds = %78, %77, %72
  %.15 = phi i32 [ 1, %72 ], [ 1, %77 ], [ 0, %78 ]
  %.1 = phi i1 [ false, %72 ], [ false, %77 ], [ %.0, %78 ]
  switch i32 %.15, label %109 [
    i32 0, label %80
  ]

80:                                               ; preds = %79
  br label %81, !dbg !1919

81:                                               ; preds = %80, %67
  %82 = getelementptr inbounds [1024 x i8], ptr %6, i64 0, i64 0, !dbg !1920
  %83 = add i64 %.23, 1, !dbg !1921
  call void @xwrite_stdout(ptr noundef %82, i64 noundef %83), !dbg !1922
  %84 = add i64 %.011, %.23, !dbg !1923
  %85 = add i64 %84, 1, !dbg !1924
  %86 = call i64 @elseek(i32 noundef %1, i64 noundef %85, i32 noundef 0, ptr noundef %0), !dbg !1925
  %87 = icmp sle i64 0, %86, !dbg !1926
  br label %109, !dbg !1927

88:                                               ; preds = %64
  br label %44, !dbg !1883, !llvm.loop !1928

89:                                               ; preds = %62, %44
  %90 = icmp eq i64 %.011, %3, !dbg !1930
  br i1 %90, label %91, label %92, !dbg !1932

91:                                               ; preds = %89
  br label %109, !dbg !1933

92:                                               ; preds = %89
  %93 = sub nsw i64 %.011, 1024, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %93, metadata !1828, metadata !DIExpression()), !dbg !1842
  %94 = call i64 @elseek(i32 noundef %1, i64 noundef %93, i32 noundef 0, ptr noundef %0), !dbg !1936
  %95 = icmp slt i64 %94, 0, !dbg !1938
  br i1 %95, label %96, label %97, !dbg !1939

96:                                               ; preds = %92
  br label %109, !dbg !1940

97:                                               ; preds = %92
  %98 = getelementptr inbounds [1024 x i8], ptr %6, i64 0, i64 0, !dbg !1941
  %99 = call i64 @safe_read(i32 noundef %1, ptr noundef %98, i64 noundef 1024), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %99, metadata !1827, metadata !DIExpression()), !dbg !1842
  %100 = icmp eq i64 %99, -1, !dbg !1943
  br i1 %100, label %101, label %105, !dbg !1945

101:                                              ; preds = %97
  %102 = call ptr @__error(), !dbg !1946
  %103 = load i32, ptr %102, align 4, !dbg !1946, !tbaa !661
  %104 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1948
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %103, ptr noundef @.str.57, ptr noundef %104), !dbg !1949
  br label %109, !dbg !1950

105:                                              ; preds = %97
  %106 = icmp eq i64 %99, 0, !dbg !1951
  br i1 %106, label %107, label %108, !dbg !1953

107:                                              ; preds = %105
  br label %109, !dbg !1954

108:                                              ; preds = %105
  br label %109, !dbg !1955

109:                                              ; preds = %108, %107, %101, %96, %91, %81, %79
  %.215 = phi i64 [ %.114, %79 ], [ %.114, %81 ], [ %.114, %91 ], [ %.114, %96 ], [ %99, %101 ], [ %99, %107 ], [ %99, %108 ], !dbg !1842
  %.112 = phi i64 [ %.011, %79 ], [ %.011, %81 ], [ %.011, %91 ], [ %93, %96 ], [ %93, %101 ], [ %93, %107 ], [ %93, %108 ], !dbg !1842
  %.310 = phi i64 [ %65, %79 ], [ %65, %81 ], [ %.29, %91 ], [ %.29, %96 ], [ %.29, %101 ], [ %.29, %107 ], [ %.29, %108 ], !dbg !1842
  %.26 = phi i32 [ %.15, %79 ], [ 1, %81 ], [ 1, %91 ], [ 1, %96 ], [ 1, %101 ], [ 1, %107 ], [ 0, %108 ]
  %.2 = phi i1 [ %.1, %79 ], [ %87, %81 ], [ true, %91 ], [ false, %96 ], [ false, %101 ], [ true, %107 ], [ %.0, %108 ]
  call void @llvm.dbg.value(metadata i64 %.310, metadata !1823, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %.112, metadata !1828, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %.215, metadata !1827, metadata !DIExpression()), !dbg !1842
  switch i32 %.26, label %111 [
    i32 0, label %110
  ]

110:                                              ; preds = %109
  br label %42, !dbg !1880, !llvm.loop !1956

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %111, %20, %15
  %.3 = phi i1 [ false, %15 ], [ false, %20 ], [ %.2, %111 ], !dbg !1842
  call void @llvm.lifetime.end.p0(i64 1024, ptr %6) #15, !dbg !1957
  ret i1 %.3, !dbg !1957

113:                                              ; preds = %62
  unreachable
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1958 ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1962 ptr @rawmemchr(ptr noundef, i32 noundef) #13

declare !dbg !1965 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #2

declare !dbg !1966 ptr @offtostr(i64 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @set_binary_mode(i32 noundef %0, i32 noundef %1) #3 !dbg !1969 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1974, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %1, metadata !1975, metadata !DIExpression()), !dbg !1976
  %3 = call i32 @__gl_setmode(i32 noundef %0, i32 noundef %1), !dbg !1977
  ret i32 %3, !dbg !1978
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @xset_binary_mode_error() #3 !dbg !1979 {
  ret void, !dbg !1980
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__gl_setmode(i32 noundef %0, i32 noundef %1) #3 !dbg !1981 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1983, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i32 %1, metadata !1984, metadata !DIExpression()), !dbg !1985
  ret i32 0, !dbg !1986
}

declare !dbg !1987 i64 @xdectoumax(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #2

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
attributes #8 = { cold noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind ssp allocsize(1,2) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(1,2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn }
attributes #15 = { nounwind }
attributes #16 = { allocsize(0,1) }
attributes #17 = { allocsize(1,2) }
attributes #18 = { allocsize(0) }
attributes #19 = { cold noreturn }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!60}
!llvm.ident = !{!355}
!llvm.module.flags = !{!356, !357, !358, !359, !360, !361}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/head.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1064, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 133)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3184, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 398)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1056, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 132)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 63)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 48)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 57)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1744, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 218)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 5)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "default_file_list", scope: !54, file: !2, line: 939, type: !354, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 919, type: !55, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !329)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !57, !58}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!60 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !61, retainedTypes: !95, globals: !112, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!61 = !{!62, !68, !71, !76, !90}
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "header_mode", file: !2, line: 66, baseType: !63, size: 32, elements: !64)
!63 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "multiple_files", value: 0)
!66 = !DIEnumerator(name: "always", value: 1)
!67 = !DIEnumerator(name: "never", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 83, baseType: !63, size: 32, elements: !69)
!69 = !{!70}
!70 = !DIEnumerator(name: "PRESUME_INPUT_PIPE_OPTION", value: 128)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 332, baseType: !57, size: 32, elements: !73)
!72 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!73 = !{!74, !75}
!74 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!75 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !77, line: 32, baseType: !63, size: 32, elements: !78)
!77 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!79 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!80 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!81 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!82 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!83 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!84 = !DIEnumerator(name: "c_quoting_style", value: 5)
!85 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!86 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!87 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!88 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!89 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Copy_fd_status", file: !2, line: 74, baseType: !63, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "COPY_FD_OK", value: 0)
!93 = !DIEnumerator(name: "COPY_FD_READ_ERROR", value: 1)
!94 = !DIEnumerator(name: "COPY_FD_UNEXPECTED_EOF", value: 2)
!95 = !{!96, !63, !59, !98, !99, !106, !108}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !100, line: 31, baseType: !101)
!100 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !102, line: 71, baseType: !103)
!102 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !104, line: 48, baseType: !105)
!104 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!105 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 31, baseType: !110)
!109 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !104, line: 94, baseType: !111)
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !113, !52, !118, !123, !128, !133, !138, !143, !148, !153, !158, !161, !163, !165, !167, !172, !177, !179, !181, !186, !191, !193, !198, !200, !202, !204, !209, !214, !219, !224, !226, !231, !236, !241, !243, !245, !250, !252, !257, !259, !261, !266, !268, !270, !272, !284, !286, !288, !293, !295, !302, !304, !306, !311, !316, !321, !323, !325, !327}
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 939, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 2)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 944, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 1)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1005, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 30)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1024, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 18)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1063, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 14)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1063, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 16)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1063, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 13)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1079, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 7)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1079, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 24)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "presume_input_pipe", scope: !60, file: !2, line: 57, type: !160, isLocal: true, isDefinition: true)
!160 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "print_headers", scope: !60, file: !2, line: 60, type: !160, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "line_end", scope: !60, file: !2, line: 63, type: !4, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !60, file: !2, line: 72, type: !160, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !72, line: 579, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 56)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !72, line: 586, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 75)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !72, line: 660, type: !115, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !72, line: 660, type: !140, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !72, line: 661, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 10)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !72, line: 661, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 22)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !72, line: 662, type: !183, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !72, line: 662, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 15)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !72, line: 663, type: !183, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !72, line: 664, type: !183, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !72, line: 665, type: !183, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !72, line: 678, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 23)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !72, line: 678, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 40)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !72, line: 683, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 4)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !72, line: 689, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 71)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !72, line: 695, type: !49, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !72, line: 696, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 27)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !72, line: 698, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 51)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !72, line: 699, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 12)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 913, type: !195, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 914, type: !155, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 6)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !247, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 20)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !247, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !150, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 8)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !140, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !49, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !263, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "long_options", scope: !60, file: !2, line: 88, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 2560, elements: !184)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !277, line: 50, size: 256, elements: !278)
!277 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!278 = !{!279, !280, !281, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !277, line: 52, baseType: !96, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !276, file: !277, line: 55, baseType: !57, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !276, file: !277, line: 56, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !276, file: !277, line: 57, baseType: !57, size: 32, offset: 192)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !2, line: 882, type: !195, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 890, type: !228, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 898, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 19)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !2, line: 849, type: !140, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "first_file", scope: !297, file: !2, line: 170, type: !160, isLocal: true, isDefinition: true)
!297 = distinct !DISubprogram(name: "write_header", scope: !2, file: !2, line: 168, type: !298, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !96}
!300 = !{!301}
!301 = !DILocalVariable(name: "filename", arg: 1, scope: !297, file: !2, line: 168, type: !96)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !135, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !115, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 29)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 38)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 587, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 17)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !318, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !140, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !308, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !9, isLocal: true, isDefinition: true)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !339, !340, !341, !342, !345, !346, !347, !348}
!330 = !DILocalVariable(name: "argc", arg: 1, scope: !54, file: !2, line: 919, type: !57)
!331 = !DILocalVariable(name: "argv", arg: 2, scope: !54, file: !2, line: 919, type: !58)
!332 = !DILocalVariable(name: "header_mode", scope: !54, file: !2, line: 921, type: !62)
!333 = !DILocalVariable(name: "ok", scope: !54, file: !2, line: 922, type: !160)
!334 = !DILocalVariable(name: "c", scope: !54, file: !2, line: 923, type: !57)
!335 = !DILocalVariable(name: "i", scope: !54, file: !2, line: 924, type: !108)
!336 = !DILocalVariable(name: "n_units", scope: !54, file: !2, line: 927, type: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !338, line: 32, baseType: !111)
!338 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!339 = !DILocalVariable(name: "count_lines", scope: !54, file: !2, line: 931, type: !160)
!340 = !DILocalVariable(name: "elide_from_end", scope: !54, file: !2, line: 935, type: !160)
!341 = !DILocalVariable(name: "file_list", scope: !54, file: !2, line: 940, type: !106)
!342 = !DILocalVariable(name: "a", scope: !343, file: !2, line: 958, type: !59)
!343 = distinct !DILexicalBlock(scope: !344, file: !2, line: 957, column: 5)
!344 = distinct !DILexicalBlock(scope: !54, file: !2, line: 956, column: 7)
!345 = !DILocalVariable(name: "n_string", scope: !343, file: !2, line: 959, type: !59)
!346 = !DILocalVariable(name: "end_n_string", scope: !343, file: !2, line: 960, type: !59)
!347 = !DILocalVariable(name: "multiplier_char", scope: !343, file: !2, line: 961, type: !4)
!348 = !DILocalVariable(name: "umax_buf", scope: !349, file: !2, line: 1078, type: !351)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 1077, column: 5)
!350 = distinct !DILexicalBlock(scope: !54, file: !2, line: 1076, column: 8)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 21)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !116)
!355 = !{!"Homebrew clang version 16.0.4"}
!356 = !{i32 7, !"Dwarf Version", i32 4}
!357 = !{i32 2, !"Debug Info Version", i32 3}
!358 = !{i32 1, !"wchar_size", i32 4}
!359 = !{i32 8, !"PIC Level", i32 2}
!360 = !{i32 7, !"uwtable", i32 2}
!361 = !{i32 7, !"frame-pointer", i32 2}
!362 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 104, type: !363, scopeLine: 105, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !57}
!365 = !{!366}
!366 = !DILocalVariable(name: "status", arg: 1, scope: !362, file: !2, line: 104, type: !57)
!367 = !DILocation(line: 0, scope: !362)
!368 = !DILocation(line: 106, column: 14, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !2, line: 106, column: 7)
!370 = !DILocation(line: 106, column: 7, scope: !362)
!371 = !DILocation(line: 107, column: 5, scope: !369)
!372 = !DILocation(line: 107, column: 5, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !2, line: 107, column: 5)
!374 = !{!375, !375, i64 0}
!375 = !{!"any pointer", !376, i64 0}
!376 = !{!"omnipotent char", !377, i64 0}
!377 = !{!"Simple C/C++ TBAA"}
!378 = !DILocation(line: 113, column: 15, scope: !379)
!379 = distinct !DILexicalBlock(scope: !369, file: !2, line: 109, column: 5)
!380 = !DILocation(line: 110, column: 7, scope: !379)
!381 = !DILocation(line: 114, column: 7, scope: !379)
!382 = !DILocation(line: 119, column: 7, scope: !379)
!383 = !DILocation(line: 120, column: 7, scope: !379)
!384 = !DILocation(line: 122, column: 7, scope: !379)
!385 = !DILocation(line: 133, column: 5, scope: !379)
!386 = !DILocation(line: 130, column: 7, scope: !379)
!387 = !DILocation(line: 136, column: 5, scope: !379)
!388 = !DILocation(line: 134, column: 7, scope: !379)
!389 = !DILocation(line: 137, column: 39, scope: !379)
!390 = !DILocation(line: 137, column: 7, scope: !379)
!391 = !DILocation(line: 138, column: 42, scope: !379)
!392 = !DILocation(line: 138, column: 7, scope: !379)
!393 = !DILocation(line: 145, column: 5, scope: !379)
!394 = !DILocation(line: 139, column: 7, scope: !379)
!395 = !DILocation(line: 146, column: 7, scope: !379)
!396 = !DILocation(line: 148, column: 3, scope: !362)
!397 = !DISubprogram(name: "fprintf", scope: !398, file: !398, line: 155, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!398 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!399 = !DISubroutineType(types: !400)
!400 = !{!57, !401, !453, null}
!401 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !404, line: 157, baseType: !405)
!404 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !404, line: 126, size: 1216, elements: !406)
!406 = !{!407, !410, !411, !412, !414, !415, !420, !421, !422, !426, !430, !435, !439, !440, !443, !444, !448, !450, !451, !452}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !405, file: !404, line: 127, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !405, file: !404, line: 128, baseType: !57, size: 32, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !405, file: !404, line: 129, baseType: !57, size: 32, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !405, file: !404, line: 130, baseType: !413, size: 16, offset: 128)
!413 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !405, file: !404, line: 131, baseType: !413, size: 16, offset: 144)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !405, file: !404, line: 132, baseType: !416, size: 128, offset: 192)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !404, line: 92, size: 128, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !416, file: !404, line: 93, baseType: !408, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !416, file: !404, line: 94, baseType: !57, size: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !405, file: !404, line: 133, baseType: !57, size: 32, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !405, file: !404, line: 136, baseType: !98, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !405, file: !404, line: 137, baseType: !423, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!57, !98}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !405, file: !404, line: 138, baseType: !427, size: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!57, !98, !59, !57}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !405, file: !404, line: 139, baseType: !431, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !98, !434, !57}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !404, line: 81, baseType: !101)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !405, file: !404, line: 140, baseType: !436, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!57, !98, !96, !57}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !405, file: !404, line: 143, baseType: !416, size: 128, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !405, file: !404, line: 144, baseType: !441, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !404, line: 98, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !405, file: !404, line: 145, baseType: !57, size: 32, offset: 896)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !405, file: !404, line: 148, baseType: !445, size: 24, offset: 928)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 24, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 3)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !405, file: !404, line: 149, baseType: !449, size: 8, offset: 952)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 8, elements: !121)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !405, file: !404, line: 152, baseType: !416, size: 128, offset: 960)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !405, file: !404, line: 155, baseType: !57, size: 32, offset: 1088)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !405, file: !404, line: 156, baseType: !434, size: 64, offset: 1152)
!453 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!454 = !{}
!455 = !DISubprogram(name: "printf", scope: !398, file: !398, line: 175, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!456 = !DISubroutineType(types: !457)
!457 = !{!57, !453, null}
!458 = distinct !DISubprogram(name: "emit_stdin_note", scope: !72, file: !72, line: 577, type: !459, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !454)
!459 = !DISubroutineType(types: !460)
!460 = !{null}
!461 = !DILocation(line: 581, column: 5, scope: !458)
!462 = !DILocation(line: 579, column: 3, scope: !458)
!463 = !DILocation(line: 582, column: 1, scope: !458)
!464 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !72, file: !72, line: 584, type: !459, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !454)
!465 = !DILocation(line: 588, column: 5, scope: !464)
!466 = !DILocation(line: 586, column: 3, scope: !464)
!467 = !DILocation(line: 589, column: 1, scope: !464)
!468 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !398, file: !398, line: 157, type: !469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!469 = !DISubroutineType(types: !470)
!470 = !{!57, !453, !401}
!471 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !72, file: !72, line: 657, type: !298, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !472)
!472 = !{!473, !474, !481, !482, !484, !485}
!473 = !DILocalVariable(name: "program", arg: 1, scope: !471, file: !72, line: 657, type: !96)
!474 = !DILocalVariable(name: "infomap", scope: !471, file: !72, line: 659, type: !475)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 896, elements: !151)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !471, file: !72, line: 659, size: 128, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !477, file: !72, line: 659, baseType: !96, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !72, line: 659, baseType: !96, size: 64, offset: 64)
!481 = !DILocalVariable(name: "node", scope: !471, file: !72, line: 669, type: !96)
!482 = !DILocalVariable(name: "map_prog", scope: !471, file: !72, line: 670, type: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!484 = !DILocalVariable(name: "lc_messages", scope: !471, file: !72, line: 682, type: !96)
!485 = !DILocalVariable(name: "url_program", scope: !471, file: !72, line: 695, type: !96)
!486 = !DILocation(line: 0, scope: !471)
!487 = !DILocation(line: 659, column: 3, scope: !471)
!488 = !DILocation(line: 659, column: 67, scope: !471)
!489 = !DILocation(line: 670, column: 36, scope: !471)
!490 = !DILocation(line: 672, column: 3, scope: !471)
!491 = !DILocation(line: 672, column: 20, scope: !471)
!492 = !{!493, !375, i64 0}
!493 = !{!"infomap", !375, i64 0, !375, i64 8}
!494 = !DILocation(line: 672, column: 10, scope: !471)
!495 = !DILocation(line: 672, column: 28, scope: !471)
!496 = !DILocation(line: 672, column: 33, scope: !471)
!497 = !DILocation(line: 672, column: 31, scope: !471)
!498 = !DILocation(line: 673, column: 13, scope: !471)
!499 = distinct !{!499, !490, !498, !500, !501}
!500 = !{!"llvm.loop.mustprogress"}
!501 = !{!"llvm.loop.unroll.disable"}
!502 = !DILocation(line: 675, column: 17, scope: !503)
!503 = distinct !DILexicalBlock(scope: !471, file: !72, line: 675, column: 7)
!504 = !{!493, !375, i64 8}
!505 = !DILocation(line: 675, column: 7, scope: !503)
!506 = !DILocation(line: 675, column: 7, scope: !471)
!507 = !DILocation(line: 676, column: 22, scope: !503)
!508 = !DILocation(line: 676, column: 5, scope: !503)
!509 = !DILocation(line: 678, column: 3, scope: !471)
!510 = !DILocation(line: 682, column: 29, scope: !471)
!511 = !DILocation(line: 683, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !471, file: !72, line: 683, column: 7)
!513 = !DILocation(line: 683, column: 19, scope: !512)
!514 = !DILocation(line: 683, column: 22, scope: !512)
!515 = !DILocation(line: 683, column: 7, scope: !471)
!516 = !DILocation(line: 690, column: 61, scope: !517)
!517 = distinct !DILexicalBlock(scope: !512, file: !72, line: 684, column: 5)
!518 = !DILocation(line: 689, column: 7, scope: !517)
!519 = !DILocation(line: 691, column: 5, scope: !517)
!520 = !DILocation(line: 695, column: 29, scope: !471)
!521 = !DILocation(line: 696, column: 3, scope: !471)
!522 = !DILocation(line: 699, column: 22, scope: !471)
!523 = !DILocation(line: 699, column: 17, scope: !471)
!524 = !DILocation(line: 698, column: 3, scope: !471)
!525 = !DILocation(line: 700, column: 1, scope: !471)
!526 = !DISubprogram(name: "exit", scope: !527, file: !527, line: 145, type: !363, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !454)
!527 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!528 = !DISubprogram(name: "strcmp", scope: !529, file: !529, line: 77, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!529 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!530 = !DISubroutineType(types: !531)
!531 = !{!57, !96, !96}
!532 = !DISubprogram(name: "setlocale", scope: !533, file: !533, line: 53, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!533 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!534 = !DISubroutineType(types: !535)
!535 = !{!59, !57, !96}
!536 = !DISubprogram(name: "strncmp", scope: !529, file: !529, line: 84, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!537 = !DISubroutineType(types: !538)
!538 = !{!57, !96, !96, !108}
!539 = !DILocation(line: 0, scope: !54)
!540 = !DILocation(line: 943, column: 21, scope: !54)
!541 = !DILocation(line: 943, column: 3, scope: !54)
!542 = !DILocation(line: 944, column: 3, scope: !54)
!543 = !DILocation(line: 948, column: 3, scope: !54)
!544 = !DILocation(line: 950, column: 19, scope: !54)
!545 = !{!546, !546, i64 0}
!546 = !{!"_Bool", !376, i64 0}
!547 = !DILocation(line: 952, column: 17, scope: !54)
!548 = !DILocation(line: 954, column: 12, scope: !54)
!549 = !{!376, !376, i64 0}
!550 = !DILocation(line: 956, column: 9, scope: !344)
!551 = !DILocation(line: 956, column: 16, scope: !344)
!552 = !DILocation(line: 956, column: 19, scope: !344)
!553 = !DILocation(line: 956, column: 30, scope: !344)
!554 = !DILocation(line: 956, column: 37, scope: !344)
!555 = !DILocation(line: 956, column: 40, scope: !344)
!556 = !DILocation(line: 956, column: 7, scope: !54)
!557 = !DILocation(line: 958, column: 17, scope: !343)
!558 = !DILocation(line: 0, scope: !343)
!559 = !DILocation(line: 959, column: 24, scope: !343)
!560 = !DILocation(line: 965, column: 7, scope: !343)
!561 = !DILocation(line: 965, column: 10, scope: !343)
!562 = !DILocation(line: 966, column: 14, scope: !343)
!563 = distinct !{!563, !560, !564, !500, !501}
!564 = !DILocation(line: 966, column: 26, scope: !343)
!565 = !DILocation(line: 972, column: 7, scope: !343)
!566 = !DILocation(line: 931, column: 8, scope: !54)
!567 = !DILocation(line: 921, column: 20, scope: !54)
!568 = !DILocation(line: 961, column: 12, scope: !343)
!569 = !DILocation(line: 972, column: 14, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !2, line: 972, column: 7)
!571 = distinct !DILexicalBlock(scope: !343, file: !2, line: 972, column: 7)
!572 = !DILocation(line: 972, column: 7, scope: !571)
!573 = !DILocation(line: 974, column: 19, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !2, line: 973, column: 9)
!575 = !DILocation(line: 974, column: 11, scope: !574)
!576 = !DILocation(line: 979, column: 15, scope: !577)
!577 = distinct !DILexicalBlock(scope: !574, file: !2, line: 975, column: 13)
!578 = !DILocation(line: 985, column: 33, scope: !577)
!579 = !DILocation(line: 986, column: 15, scope: !577)
!580 = !DILocation(line: 990, column: 15, scope: !577)
!581 = !DILocation(line: 994, column: 15, scope: !577)
!582 = !DILocation(line: 998, column: 15, scope: !577)
!583 = !DILocation(line: 1001, column: 24, scope: !577)
!584 = !DILocation(line: 1002, column: 15, scope: !577)
!585 = !DILocation(line: 1005, column: 64, scope: !577)
!586 = !DILocation(line: 1005, column: 15, scope: !577)
!587 = !DILocation(line: 1006, column: 15, scope: !577)
!588 = !DILocation(line: 1008, column: 9, scope: !574)
!589 = !DILocation(line: 972, column: 19, scope: !570)
!590 = !DILocation(line: 972, column: 7, scope: !570)
!591 = distinct !{!591, !572, !592, !500, !501}
!592 = !DILocation(line: 1008, column: 9, scope: !571)
!593 = !DILocation(line: 1012, column: 21, scope: !343)
!594 = !DILocation(line: 1013, column: 11, scope: !595)
!595 = distinct !DILexicalBlock(scope: !343, file: !2, line: 1013, column: 11)
!596 = !DILocation(line: 1013, column: 11, scope: !343)
!597 = !DILocation(line: 1014, column: 11, scope: !595)
!598 = !DILocation(line: 1014, column: 27, scope: !595)
!599 = !DILocation(line: 1014, column: 9, scope: !595)
!600 = !DILocation(line: 1016, column: 36, scope: !343)
!601 = !DILocation(line: 1016, column: 17, scope: !343)
!602 = !DILocation(line: 1019, column: 17, scope: !343)
!603 = !DILocation(line: 1019, column: 7, scope: !343)
!604 = !DILocation(line: 1019, column: 15, scope: !343)
!605 = !DILocation(line: 1020, column: 11, scope: !343)
!606 = !DILocation(line: 1021, column: 11, scope: !343)
!607 = !DILocation(line: 1022, column: 5, scope: !343)
!608 = !DILocation(line: 1024, column: 3, scope: !54)
!609 = !DILocation(line: 935, column: 8, scope: !54)
!610 = !DILocation(line: 1016, column: 15, scope: !343)
!611 = !DILocation(line: 1024, column: 15, scope: !54)
!612 = !DILocation(line: 1025, column: 10, scope: !54)
!613 = !DILocation(line: 1027, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !54, file: !2, line: 1026, column: 5)
!615 = !DILocation(line: 1030, column: 30, scope: !616)
!616 = distinct !DILexicalBlock(scope: !614, file: !2, line: 1028, column: 9)
!617 = !DILocation(line: 1031, column: 11, scope: !616)
!618 = !DILocation(line: 1035, column: 30, scope: !616)
!619 = !DILocation(line: 1035, column: 29, scope: !616)
!620 = !DILocation(line: 1035, column: 37, scope: !616)
!621 = !DILocation(line: 1035, column: 26, scope: !616)
!622 = !DILocation(line: 1036, column: 15, scope: !623)
!623 = distinct !DILexicalBlock(scope: !616, file: !2, line: 1036, column: 15)
!624 = !DILocation(line: 1036, column: 15, scope: !616)
!625 = !DILocation(line: 1037, column: 13, scope: !623)
!626 = !DILocation(line: 1038, column: 40, scope: !616)
!627 = !DILocation(line: 1038, column: 53, scope: !616)
!628 = !DILocation(line: 1038, column: 21, scope: !616)
!629 = !DILocation(line: 1039, column: 11, scope: !616)
!630 = !DILocation(line: 1043, column: 30, scope: !616)
!631 = !DILocation(line: 1043, column: 29, scope: !616)
!632 = !DILocation(line: 1043, column: 37, scope: !616)
!633 = !DILocation(line: 1043, column: 26, scope: !616)
!634 = !DILocation(line: 1044, column: 15, scope: !635)
!635 = distinct !DILexicalBlock(scope: !616, file: !2, line: 1044, column: 15)
!636 = !DILocation(line: 1044, column: 15, scope: !616)
!637 = !DILocation(line: 1045, column: 13, scope: !635)
!638 = !DILocation(line: 1046, column: 40, scope: !616)
!639 = !DILocation(line: 1046, column: 53, scope: !616)
!640 = !DILocation(line: 1046, column: 21, scope: !616)
!641 = !DILocation(line: 1047, column: 11, scope: !616)
!642 = !DILocation(line: 1051, column: 11, scope: !616)
!643 = !DILocation(line: 1055, column: 11, scope: !616)
!644 = !DILocation(line: 1058, column: 20, scope: !616)
!645 = !DILocation(line: 1059, column: 11, scope: !616)
!646 = !DILocation(line: 1061, column: 9, scope: !616)
!647 = !DILocation(line: 1063, column: 9, scope: !616)
!648 = !DILocation(line: 1066, column: 15, scope: !649)
!649 = distinct !DILexicalBlock(scope: !616, file: !2, line: 1066, column: 15)
!650 = !DILocation(line: 1066, column: 15, scope: !616)
!651 = !DILocation(line: 1067, column: 13, scope: !649)
!652 = !DILocation(line: 1068, column: 11, scope: !616)
!653 = distinct !{!653, !608, !654, !500, !501}
!654 = !DILocation(line: 1070, column: 5, scope: !54)
!655 = !DILocation(line: 1072, column: 19, scope: !656)
!656 = distinct !DILexicalBlock(scope: !54, file: !2, line: 1072, column: 7)
!657 = !DILocation(line: 1073, column: 7, scope: !656)
!658 = !DILocation(line: 1073, column: 23, scope: !656)
!659 = !DILocation(line: 1073, column: 41, scope: !656)
!660 = !DILocation(line: 1073, column: 44, scope: !656)
!661 = !{!662, !662, i64 0}
!662 = !{!"int", !376, i64 0}
!663 = !DILocation(line: 1073, column: 58, scope: !656)
!664 = !DILocation(line: 1073, column: 51, scope: !656)
!665 = !DILocation(line: 1072, column: 7, scope: !54)
!666 = !DILocation(line: 1074, column: 19, scope: !656)
!667 = !DILocation(line: 1074, column: 5, scope: !656)
!668 = !DILocation(line: 1076, column: 10, scope: !350)
!669 = !DILocation(line: 1076, column: 22, scope: !350)
!670 = !DILocation(line: 1076, column: 25, scope: !350)
!671 = !DILocation(line: 1076, column: 40, scope: !350)
!672 = !DILocation(line: 1076, column: 53, scope: !350)
!673 = !DILocation(line: 1076, column: 8, scope: !54)
!674 = !DILocation(line: 1078, column: 7, scope: !349)
!675 = !DILocation(line: 1078, column: 12, scope: !349)
!676 = !DILocation(line: 1079, column: 7, scope: !349)
!677 = !DILocation(line: 1083, column: 16, scope: !54)
!678 = !DILocation(line: 1083, column: 23, scope: !54)
!679 = !DILocation(line: 1084, column: 46, scope: !54)
!680 = !DILocation(line: 1084, column: 41, scope: !54)
!681 = !DILocation(line: 1087, column: 3, scope: !54)
!682 = !DILocation(line: 1089, column: 8, scope: !683)
!683 = distinct !DILexicalBlock(scope: !54, file: !2, line: 1089, column: 3)
!684 = !DILocation(line: 1089, scope: !683)
!685 = !DILocation(line: 1089, column: 15, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !2, line: 1089, column: 3)
!687 = !DILocation(line: 1089, column: 3, scope: !683)
!688 = !DILocation(line: 1090, column: 22, scope: !686)
!689 = !DILocation(line: 1090, column: 45, scope: !686)
!690 = !DILocation(line: 1090, column: 58, scope: !686)
!691 = !DILocation(line: 1090, column: 11, scope: !686)
!692 = !DILocation(line: 1090, column: 8, scope: !686)
!693 = !DILocation(line: 1090, column: 5, scope: !686)
!694 = !DILocation(line: 1089, column: 29, scope: !686)
!695 = !DILocation(line: 1089, column: 3, scope: !686)
!696 = distinct !{!696, !687, !697, !500, !501}
!697 = !DILocation(line: 1090, column: 72, scope: !683)
!698 = !DILocation(line: 1092, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !54, file: !2, line: 1092, column: 7)
!700 = !{i8 0, i8 2}
!701 = !DILocation(line: 1092, column: 23, scope: !699)
!702 = !DILocation(line: 1092, column: 26, scope: !699)
!703 = !DILocation(line: 1092, column: 47, scope: !699)
!704 = !DILocation(line: 1092, column: 7, scope: !54)
!705 = !DILocation(line: 1093, column: 5, scope: !699)
!706 = !DILocation(line: 1095, column: 10, scope: !54)
!707 = !DILocation(line: 1095, column: 3, scope: !54)
!708 = !DISubprogram(name: "set_program_name", scope: !709, file: !709, line: 37, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!709 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!710 = !DISubprogram(name: "atexit", scope: !527, file: !527, line: 133, type: !711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!711 = !DISubroutineType(types: !712)
!712 = !{!57, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!714 = !DISubprogram(name: "error", scope: !715, file: !715, line: 395, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!715 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!716 = !DISubroutineType(types: !717)
!717 = !{null, !57, !57, !96, null}
!718 = distinct !DISubprogram(name: "string_to_integer", scope: !2, file: !2, line: 911, type: !719, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!337, !160, !96}
!721 = !{!722, !723}
!722 = !DILocalVariable(name: "count_lines", arg: 1, scope: !718, file: !2, line: 911, type: !160)
!723 = !DILocalVariable(name: "n_string", arg: 2, scope: !718, file: !2, line: 911, type: !96)
!724 = !DILocation(line: 0, scope: !718)
!725 = !DILocation(line: 914, column: 22, scope: !718)
!726 = !DILocation(line: 913, column: 10, scope: !718)
!727 = !DILocation(line: 913, column: 3, scope: !718)
!728 = !DISubprogram(name: "rpl_getopt_long", scope: !277, file: !277, line: 66, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!729 = !DISubroutineType(types: !730)
!730 = !{!57, !57, !58, !96, !731, !282}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!732 = !DISubprogram(name: "version_etc", scope: !733, file: !733, line: 65, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!733 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!734 = !DISubroutineType(types: !735)
!735 = !{null, !402, !96, !96, !96, null}
!736 = !DISubprogram(name: "umaxtostr", scope: !737, file: !737, line: 29, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!737 = !DIFile(filename: "../lib/inttostr.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!738 = !DISubroutineType(types: !739)
!739 = !{!59, !337, !59}
!740 = !DISubprogram(name: "quote", scope: !741, file: !741, line: 44, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!741 = !DIFile(filename: "../lib/quote.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!742 = !DISubroutineType(types: !743)
!743 = !{!96, !96}
!744 = distinct !DISubprogram(name: "xset_binary_mode", scope: !745, file: !745, line: 40, type: !746, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !748)
!745 = !DIFile(filename: "../lib/xbinary-io.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!746 = !DISubroutineType(types: !747)
!747 = !{null, !57, !57}
!748 = !{!749, !750}
!749 = !DILocalVariable(name: "fd", arg: 1, scope: !744, file: !745, line: 40, type: !57)
!750 = !DILocalVariable(name: "mode", arg: 2, scope: !744, file: !745, line: 40, type: !57)
!751 = !DILocation(line: 0, scope: !744)
!752 = !DILocation(line: 42, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !744, file: !745, line: 42, column: 7)
!754 = !DILocation(line: 42, column: 34, scope: !753)
!755 = !DILocation(line: 42, column: 7, scope: !744)
!756 = !DILocation(line: 43, column: 5, scope: !753)
!757 = !DILocation(line: 44, column: 1, scope: !744)
!758 = distinct !DISubprogram(name: "head_file", scope: !2, file: !2, line: 871, type: !759, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !761)
!759 = !DISubroutineType(types: !760)
!760 = !{!160, !96, !337, !160, !160}
!761 = !{!762, !763, !764, !765, !766, !767, !768}
!762 = !DILocalVariable(name: "filename", arg: 1, scope: !758, file: !2, line: 871, type: !96)
!763 = !DILocalVariable(name: "n_units", arg: 2, scope: !758, file: !2, line: 871, type: !337)
!764 = !DILocalVariable(name: "count_lines", arg: 3, scope: !758, file: !2, line: 871, type: !160)
!765 = !DILocalVariable(name: "elide_from_end", arg: 4, scope: !758, file: !2, line: 872, type: !160)
!766 = !DILocalVariable(name: "fd", scope: !758, file: !2, line: 874, type: !57)
!767 = !DILocalVariable(name: "ok", scope: !758, file: !2, line: 875, type: !160)
!768 = !DILocalVariable(name: "is_stdin", scope: !758, file: !2, line: 876, type: !160)
!769 = !DILocation(line: 0, scope: !758)
!770 = !DILocation(line: 876, column: 19, scope: !758)
!771 = !DILocation(line: 876, column: 8, scope: !758)
!772 = !DILocation(line: 878, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !758, file: !2, line: 878, column: 7)
!774 = !DILocation(line: 878, column: 7, scope: !758)
!775 = !DILocation(line: 880, column: 23, scope: !776)
!776 = distinct !DILexicalBlock(scope: !773, file: !2, line: 879, column: 5)
!777 = !DILocation(line: 883, column: 7, scope: !776)
!778 = !DILocation(line: 884, column: 5, scope: !776)
!779 = !DILocation(line: 887, column: 12, scope: !780)
!780 = distinct !DILexicalBlock(scope: !773, file: !2, line: 886, column: 5)
!781 = !DILocation(line: 888, column: 14, scope: !782)
!782 = distinct !DILexicalBlock(scope: !780, file: !2, line: 888, column: 11)
!783 = !DILocation(line: 888, column: 11, scope: !780)
!784 = !DILocation(line: 890, column: 21, scope: !785)
!785 = distinct !DILexicalBlock(scope: !782, file: !2, line: 889, column: 9)
!786 = !DILocation(line: 890, column: 61, scope: !785)
!787 = !DILocation(line: 890, column: 11, scope: !785)
!788 = !DILocation(line: 891, column: 11, scope: !785)
!789 = !DILocation(line: 0, scope: !773)
!790 = !DILocation(line: 895, column: 37, scope: !758)
!791 = !DILocation(line: 895, column: 50, scope: !758)
!792 = !DILocation(line: 895, column: 8, scope: !758)
!793 = !DILocation(line: 895, column: 6, scope: !758)
!794 = !DILocation(line: 896, column: 8, scope: !795)
!795 = distinct !DILexicalBlock(scope: !758, file: !2, line: 896, column: 7)
!796 = !DILocation(line: 896, column: 17, scope: !795)
!797 = !DILocation(line: 896, column: 20, scope: !795)
!798 = !DILocation(line: 896, column: 31, scope: !795)
!799 = !DILocation(line: 896, column: 7, scope: !758)
!800 = !DILocation(line: 898, column: 17, scope: !801)
!801 = distinct !DILexicalBlock(scope: !795, file: !2, line: 897, column: 5)
!802 = !DILocation(line: 898, column: 49, scope: !801)
!803 = !DILocation(line: 898, column: 7, scope: !801)
!804 = !DILocation(line: 899, column: 7, scope: !801)
!805 = !DILocation(line: 901, column: 10, scope: !758)
!806 = !DILocation(line: 901, column: 3, scope: !758)
!807 = !DILocation(line: 902, column: 1, scope: !758)
!808 = !DISubprogram(name: "close", linkageName: "\01_close", scope: !809, file: !809, line: 437, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!809 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/unistd.h", directory: "")
!810 = !DISubroutineType(types: !811)
!811 = !{!57, !57}
!812 = !DISubprogram(name: "__error", scope: !813, file: !813, line: 80, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!813 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!814 = !DISubroutineType(types: !815)
!815 = !{!282}
!816 = !DISubprogram(name: "rpl_open", scope: !817, file: !817, line: 674, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!817 = !DIFile(filename: "./lib/fcntl.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!818 = !DISubroutineType(types: !819)
!819 = !{!57, !96, !57, null}
!820 = !DISubprogram(name: "quotearg_style", scope: !77, file: !77, line: 383, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!821 = !DISubroutineType(types: !822)
!822 = !{!59, !76, !96}
!823 = distinct !DISubprogram(name: "head", scope: !2, file: !2, line: 837, type: !824, scopeLine: 839, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!160, !96, !57, !337, !160, !160}
!826 = !{!827, !828, !829, !830, !831, !832, !835}
!827 = !DILocalVariable(name: "filename", arg: 1, scope: !823, file: !2, line: 837, type: !96)
!828 = !DILocalVariable(name: "fd", arg: 2, scope: !823, file: !2, line: 837, type: !57)
!829 = !DILocalVariable(name: "n_units", arg: 3, scope: !823, file: !2, line: 837, type: !337)
!830 = !DILocalVariable(name: "count_lines", arg: 4, scope: !823, file: !2, line: 837, type: !160)
!831 = !DILocalVariable(name: "elide_from_end", arg: 5, scope: !823, file: !2, line: 838, type: !160)
!832 = !DILocalVariable(name: "current_pos", scope: !833, file: !2, line: 845, type: !99)
!833 = distinct !DILexicalBlock(scope: !834, file: !2, line: 844, column: 5)
!834 = distinct !DILexicalBlock(scope: !823, file: !2, line: 843, column: 7)
!835 = !DILocalVariable(name: "st", scope: !833, file: !2, line: 846, type: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !837, line: 182, size: 1152, elements: !838)
!837 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!838 = !{!839, !844, !850, !853, !857, !862, !866, !867, !875, !876, !877, !878, !879, !883, !887, !888, !889, !890}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !836, file: !837, line: 182, baseType: !840, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !841, line: 31, baseType: !842)
!841 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !102, line: 57, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !104, line: 46, baseType: !57)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !836, file: !837, line: 182, baseType: !845, size: 16, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !846, line: 31, baseType: !847)
!846 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !102, line: 70, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !104, line: 45, baseType: !849)
!849 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !836, file: !837, line: 182, baseType: !851, size: 16, offset: 48)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !852, line: 31, baseType: !848)
!852 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!853 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !836, file: !837, line: 182, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !102, line: 62, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !104, line: 49, baseType: !856)
!856 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !836, file: !837, line: 182, baseType: !858, size: 32, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !859, line: 31, baseType: !860)
!859 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !102, line: 75, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !104, line: 47, baseType: !63)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !836, file: !837, line: 182, baseType: !863, size: 32, offset: 160)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !864, line: 31, baseType: !865)
!864 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !102, line: 60, baseType: !861)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !836, file: !837, line: 182, baseType: !840, size: 32, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !836, file: !837, line: 182, baseType: !868, size: 128, offset: 256)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !869, line: 33, size: 128, elements: !870)
!869 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!870 = !{!871, !874}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !868, file: !869, line: 35, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !104, line: 122, baseType: !873)
!873 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !868, file: !869, line: 36, baseType: !873, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !836, file: !837, line: 182, baseType: !868, size: 128, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !836, file: !837, line: 182, baseType: !868, size: 128, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !836, file: !837, line: 182, baseType: !868, size: 128, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !836, file: !837, line: 182, baseType: !99, size: 64, offset: 768)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !836, file: !837, line: 182, baseType: !880, size: 64, offset: 832)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !881, line: 31, baseType: !882)
!881 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !102, line: 55, baseType: !103)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !836, file: !837, line: 182, baseType: !884, size: 32, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !885, line: 31, baseType: !886)
!885 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !102, line: 56, baseType: !843)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !836, file: !837, line: 182, baseType: !861, size: 32, offset: 928)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !836, file: !837, line: 182, baseType: !861, size: 32, offset: 960)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !836, file: !837, line: 182, baseType: !843, size: 32, offset: 992)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !836, file: !837, line: 182, baseType: !891, size: 128, offset: 1024)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !116)
!892 = !DILocation(line: 0, scope: !823)
!893 = !DILocation(line: 840, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !823, file: !2, line: 840, column: 7)
!895 = !DILocation(line: 840, column: 7, scope: !823)
!896 = !DILocation(line: 841, column: 5, scope: !894)
!897 = !DILocation(line: 843, column: 7, scope: !834)
!898 = !DILocation(line: 843, column: 7, scope: !823)
!899 = !DILocation(line: 0, scope: !833)
!900 = !DILocation(line: 846, column: 7, scope: !833)
!901 = !DILocation(line: 846, column: 19, scope: !833)
!902 = !DILocation(line: 847, column: 11, scope: !903)
!903 = distinct !DILexicalBlock(scope: !833, file: !2, line: 847, column: 11)
!904 = !DILocation(line: 847, column: 27, scope: !903)
!905 = !DILocation(line: 847, column: 11, scope: !833)
!906 = !DILocation(line: 849, column: 21, scope: !907)
!907 = distinct !DILexicalBlock(scope: !903, file: !2, line: 848, column: 9)
!908 = !DILocation(line: 850, column: 18, scope: !907)
!909 = !DILocation(line: 849, column: 11, scope: !907)
!910 = !DILocation(line: 851, column: 11, scope: !907)
!911 = !DILocation(line: 853, column: 13, scope: !912)
!912 = distinct !DILexicalBlock(scope: !833, file: !2, line: 853, column: 11)
!913 = !DILocation(line: 853, column: 32, scope: !912)
!914 = !DILocation(line: 853, column: 35, scope: !912)
!915 = !DILocation(line: 853, column: 11, scope: !833)
!916 = !DILocation(line: 855, column: 25, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !2, line: 854, column: 9)
!918 = !DILocation(line: 856, column: 27, scope: !919)
!919 = distinct !DILexicalBlock(scope: !917, file: !2, line: 856, column: 15)
!920 = !DILocation(line: 856, column: 15, scope: !917)
!921 = !DILocation(line: 857, column: 13, scope: !919)
!922 = !DILocation(line: 858, column: 9, scope: !917)
!923 = !DILocation(line: 859, column: 11, scope: !924)
!924 = distinct !DILexicalBlock(scope: !833, file: !2, line: 859, column: 11)
!925 = !DILocation(line: 859, column: 11, scope: !833)
!926 = !DILocation(line: 860, column: 16, scope: !924)
!927 = !DILocation(line: 860, column: 9, scope: !924)
!928 = !DILocation(line: 862, column: 16, scope: !924)
!929 = !DILocation(line: 862, column: 9, scope: !924)
!930 = !DILocation(line: 863, column: 5, scope: !834)
!931 = !DILocation(line: 864, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !823, file: !2, line: 864, column: 7)
!933 = !DILocation(line: 864, column: 7, scope: !823)
!934 = !DILocation(line: 865, column: 12, scope: !932)
!935 = !DILocation(line: 865, column: 5, scope: !932)
!936 = !DILocation(line: 867, column: 12, scope: !932)
!937 = !DILocation(line: 867, column: 5, scope: !932)
!938 = !DILocation(line: 868, column: 1, scope: !823)
!939 = !DILocation(line: 0, scope: !297)
!940 = !DILocation(line: 172, column: 30, scope: !297)
!941 = !DILocation(line: 172, column: 3, scope: !297)
!942 = !DILocation(line: 173, column: 14, scope: !297)
!943 = !DILocation(line: 174, column: 1, scope: !297)
!944 = !DISubprogram(name: "fstat", linkageName: "\01_fstat$INODE64", scope: !837, file: !837, line: 382, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!945 = !DISubroutineType(types: !946)
!946 = !{!57, !57, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!948 = distinct !DISubprogram(name: "usable_st_size", scope: !72, file: !72, line: 732, type: !949, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !953)
!949 = !DISubroutineType(types: !950)
!950 = !{!160, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!953 = !{!954}
!954 = !DILocalVariable(name: "sb", arg: 1, scope: !948, file: !72, line: 732, type: !951)
!955 = !DILocation(line: 0, scope: !948)
!956 = !DILocation(line: 734, column: 11, scope: !948)
!957 = !{!958, !959, i64 4}
!958 = !{!"stat", !662, i64 0, !959, i64 4, !959, i64 6, !960, i64 8, !662, i64 16, !662, i64 20, !662, i64 24, !961, i64 32, !961, i64 48, !961, i64 64, !961, i64 80, !960, i64 96, !960, i64 104, !662, i64 112, !662, i64 116, !662, i64 120, !662, i64 124, !376, i64 128}
!959 = !{!"short", !376, i64 0}
!960 = !{!"long long", !376, i64 0}
!961 = !{!"timespec", !962, i64 0, !962, i64 8}
!962 = !{!"long", !376, i64 0}
!963 = !DILocation(line: 734, column: 33, scope: !948)
!964 = !DILocation(line: 734, column: 36, scope: !948)
!965 = !DILocation(line: 735, column: 31, scope: !948)
!966 = !DILocation(line: 734, column: 3, scope: !948)
!967 = distinct !DISubprogram(name: "elseek", scope: !2, file: !2, line: 224, type: !968, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!99, !57, !99, !57, !96}
!970 = !{!971, !972, !973, !974, !975, !976}
!971 = !DILocalVariable(name: "fd", arg: 1, scope: !967, file: !2, line: 224, type: !57)
!972 = !DILocalVariable(name: "offset", arg: 2, scope: !967, file: !2, line: 224, type: !99)
!973 = !DILocalVariable(name: "whence", arg: 3, scope: !967, file: !2, line: 224, type: !57)
!974 = !DILocalVariable(name: "filename", arg: 4, scope: !967, file: !2, line: 224, type: !96)
!975 = !DILocalVariable(name: "new_offset", scope: !967, file: !2, line: 226, type: !99)
!976 = !DILocalVariable(name: "buf", scope: !967, file: !2, line: 227, type: !351)
!977 = !DILocation(line: 0, scope: !967)
!978 = !DILocation(line: 226, column: 22, scope: !967)
!979 = !DILocation(line: 227, column: 3, scope: !967)
!980 = !DILocation(line: 227, column: 8, scope: !967)
!981 = !DILocation(line: 229, column: 18, scope: !982)
!982 = distinct !DILexicalBlock(scope: !967, file: !2, line: 229, column: 7)
!983 = !DILocation(line: 229, column: 7, scope: !967)
!984 = !DILocation(line: 230, column: 15, scope: !982)
!985 = !DILocation(line: 231, column: 12, scope: !982)
!986 = !DILocation(line: 234, column: 12, scope: !982)
!987 = !DILocation(line: 235, column: 30, scope: !982)
!988 = !DILocation(line: 235, column: 12, scope: !982)
!989 = !DILocation(line: 230, column: 5, scope: !982)
!990 = !DILocation(line: 238, column: 1, scope: !967)
!991 = !DILocation(line: 237, column: 3, scope: !967)
!992 = distinct !DISubprogram(name: "elide_tail_lines_file", scope: !2, file: !2, line: 755, type: !993, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{!160, !96, !57, !337, !951, !99}
!995 = !{!996, !997, !998, !999, !1000, !1001}
!996 = !DILocalVariable(name: "filename", arg: 1, scope: !992, file: !2, line: 755, type: !96)
!997 = !DILocalVariable(name: "fd", arg: 2, scope: !992, file: !2, line: 755, type: !57)
!998 = !DILocalVariable(name: "n_elide", arg: 3, scope: !992, file: !2, line: 755, type: !337)
!999 = !DILocalVariable(name: "st", arg: 4, scope: !992, file: !2, line: 756, type: !951)
!1000 = !DILocalVariable(name: "current_pos", arg: 5, scope: !992, file: !2, line: 756, type: !99)
!1001 = !DILocalVariable(name: "size", scope: !992, file: !2, line: 758, type: !99)
!1002 = !DILocation(line: 0, scope: !992)
!1003 = !DILocation(line: 758, column: 20, scope: !992)
!1004 = !{!958, !960, i64 96}
!1005 = !DILocation(line: 759, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !992, file: !2, line: 759, column: 7)
!1007 = !DILocation(line: 759, column: 26, scope: !1006)
!1008 = !DILocation(line: 759, column: 41, scope: !1006)
!1009 = !DILocation(line: 759, column: 45, scope: !1006)
!1010 = !DILocation(line: 759, column: 56, scope: !1006)
!1011 = !{!958, !662, i64 112}
!1012 = !DILocation(line: 759, column: 53, scope: !1006)
!1013 = !DILocation(line: 759, column: 7, scope: !992)
!1014 = !DILocation(line: 760, column: 12, scope: !1006)
!1015 = !DILocation(line: 760, column: 5, scope: !1006)
!1016 = !DILocation(line: 768, column: 20, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 762, column: 5)
!1018 = !DILocation(line: 769, column: 15, scope: !1017)
!1019 = !DILocation(line: 769, column: 18, scope: !1017)
!1020 = !DILocation(line: 768, column: 7, scope: !1017)
!1021 = !DILocation(line: 0, scope: !1006)
!1022 = !DILocation(line: 772, column: 1, scope: !992)
!1023 = distinct !DISubprogram(name: "elide_tail_bytes_file", scope: !2, file: !2, line: 465, type: !993, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1034, !1035}
!1025 = !DILocalVariable(name: "filename", arg: 1, scope: !1023, file: !2, line: 465, type: !96)
!1026 = !DILocalVariable(name: "fd", arg: 2, scope: !1023, file: !2, line: 465, type: !57)
!1027 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1023, file: !2, line: 465, type: !337)
!1028 = !DILocalVariable(name: "st", arg: 4, scope: !1023, file: !2, line: 466, type: !951)
!1029 = !DILocalVariable(name: "current_pos", arg: 5, scope: !1023, file: !2, line: 466, type: !99)
!1030 = !DILocalVariable(name: "size", scope: !1023, file: !2, line: 468, type: !99)
!1031 = !DILocalVariable(name: "diff", scope: !1032, file: !2, line: 475, type: !99)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 472, column: 5)
!1033 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 469, column: 7)
!1034 = !DILocalVariable(name: "bytes_remaining", scope: !1032, file: !2, line: 476, type: !99)
!1035 = !DILocalVariable(name: "err", scope: !1032, file: !2, line: 481, type: !90)
!1036 = !DILocation(line: 0, scope: !1023)
!1037 = !DILocation(line: 468, column: 20, scope: !1023)
!1038 = !DILocation(line: 469, column: 7, scope: !1033)
!1039 = !DILocation(line: 469, column: 26, scope: !1033)
!1040 = !DILocation(line: 469, column: 41, scope: !1033)
!1041 = !DILocation(line: 469, column: 45, scope: !1033)
!1042 = !DILocation(line: 469, column: 56, scope: !1033)
!1043 = !DILocation(line: 469, column: 53, scope: !1033)
!1044 = !DILocation(line: 469, column: 7, scope: !1023)
!1045 = !DILocation(line: 470, column: 12, scope: !1033)
!1046 = !DILocation(line: 470, column: 5, scope: !1033)
!1047 = !DILocation(line: 475, column: 25, scope: !1032)
!1048 = !DILocation(line: 0, scope: !1032)
!1049 = !DILocation(line: 476, column: 36, scope: !1032)
!1050 = !DILocation(line: 476, column: 31, scope: !1032)
!1051 = !DILocation(line: 478, column: 27, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 478, column: 11)
!1053 = !DILocation(line: 478, column: 11, scope: !1032)
!1054 = !DILocation(line: 479, column: 9, scope: !1052)
!1055 = !DILocation(line: 481, column: 62, scope: !1032)
!1056 = !DILocation(line: 481, column: 33, scope: !1032)
!1057 = !DILocation(line: 482, column: 15, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 482, column: 11)
!1059 = !DILocation(line: 482, column: 11, scope: !1032)
!1060 = !DILocation(line: 483, column: 9, scope: !1058)
!1061 = !DILocation(line: 485, column: 7, scope: !1032)
!1062 = !DILocation(line: 486, column: 7, scope: !1032)
!1063 = !DILocation(line: 0, scope: !1033)
!1064 = !DILocation(line: 488, column: 1, scope: !1023)
!1065 = distinct !DISubprogram(name: "head_lines", scope: !2, file: !2, line: 800, type: !1066, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1068)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!160, !96, !57, !337}
!1068 = !{!1069, !1070, !1071, !1072, !1076, !1078, !1079, !1082}
!1069 = !DILocalVariable(name: "filename", arg: 1, scope: !1065, file: !2, line: 800, type: !96)
!1070 = !DILocalVariable(name: "fd", arg: 2, scope: !1065, file: !2, line: 800, type: !57)
!1071 = !DILocalVariable(name: "lines_to_write", arg: 3, scope: !1065, file: !2, line: 800, type: !337)
!1072 = !DILocalVariable(name: "buffer", scope: !1065, file: !2, line: 802, type: !1073)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1074)
!1074 = !{!1075}
!1075 = !DISubrange(count: 1024)
!1076 = !DILocalVariable(name: "bytes_read", scope: !1077, file: !2, line: 806, type: !108)
!1077 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 805, column: 5)
!1078 = !DILocalVariable(name: "bytes_to_write", scope: !1077, file: !2, line: 807, type: !108)
!1079 = !DILocalVariable(name: "n_bytes_past_EOL", scope: !1080, file: !2, line: 819, type: !99)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 818, column: 11)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 817, column: 13)
!1082 = !DILocalVariable(name: "st", scope: !1083, file: !2, line: 825, type: !836)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 824, column: 15)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 823, column: 17)
!1085 = !DILocation(line: 0, scope: !1065)
!1086 = !DILocation(line: 802, column: 3, scope: !1065)
!1087 = !DILocation(line: 802, column: 8, scope: !1065)
!1088 = !DILocation(line: 804, column: 3, scope: !1065)
!1089 = !DILocation(line: 806, column: 42, scope: !1077)
!1090 = !DILocation(line: 806, column: 27, scope: !1077)
!1091 = !DILocation(line: 0, scope: !1077)
!1092 = !DILocation(line: 809, column: 22, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 809, column: 11)
!1094 = !DILocation(line: 809, column: 11, scope: !1077)
!1095 = !DILocation(line: 811, column: 21, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 810, column: 9)
!1097 = !DILocation(line: 811, column: 51, scope: !1096)
!1098 = !DILocation(line: 811, column: 11, scope: !1096)
!1099 = !DILocation(line: 812, column: 11, scope: !1096)
!1100 = !DILocation(line: 814, column: 22, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 814, column: 11)
!1102 = !DILocation(line: 814, column: 11, scope: !1077)
!1103 = !DILocation(line: 815, column: 9, scope: !1101)
!1104 = !DILocation(line: 816, column: 7, scope: !1077)
!1105 = !DILocation(line: 816, column: 29, scope: !1077)
!1106 = !DILocation(line: 817, column: 34, scope: !1081)
!1107 = !DILocation(line: 817, column: 13, scope: !1081)
!1108 = !DILocation(line: 817, column: 41, scope: !1081)
!1109 = !DILocation(line: 817, column: 38, scope: !1081)
!1110 = !DILocation(line: 817, column: 50, scope: !1081)
!1111 = !DILocation(line: 817, column: 53, scope: !1081)
!1112 = !DILocation(line: 817, column: 70, scope: !1081)
!1113 = !DILocation(line: 817, column: 13, scope: !1077)
!1114 = !DILocation(line: 819, column: 49, scope: !1080)
!1115 = !DILocation(line: 0, scope: !1080)
!1116 = !DILocation(line: 823, column: 28, scope: !1084)
!1117 = !DILocation(line: 823, column: 17, scope: !1084)
!1118 = !DILocation(line: 823, column: 57, scope: !1084)
!1119 = !DILocation(line: 823, column: 17, scope: !1080)
!1120 = !DILocation(line: 825, column: 17, scope: !1083)
!1121 = !DILocation(line: 825, column: 29, scope: !1083)
!1122 = !DILocation(line: 826, column: 21, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 826, column: 21)
!1124 = !DILocation(line: 826, column: 37, scope: !1123)
!1125 = !DILocation(line: 826, column: 42, scope: !1123)
!1126 = !DILocation(line: 826, column: 45, scope: !1123)
!1127 = !DILocation(line: 826, column: 21, scope: !1083)
!1128 = !DILocation(line: 827, column: 31, scope: !1123)
!1129 = !DILocation(line: 827, column: 19, scope: !1123)
!1130 = !DILocation(line: 828, column: 15, scope: !1084)
!1131 = !DILocation(line: 828, column: 15, scope: !1083)
!1132 = distinct !{!1132, !1104, !1133, !500, !501}
!1133 = !DILocation(line: 830, column: 11, scope: !1077)
!1134 = !DILocation(line: 831, column: 22, scope: !1077)
!1135 = !DILocation(line: 831, column: 7, scope: !1077)
!1136 = !DILocation(line: 832, column: 5, scope: !1065)
!1137 = distinct !{!1137, !1088, !1136, !500, !501}
!1138 = !DILocation(line: 833, column: 3, scope: !1065)
!1139 = !DILocation(line: 834, column: 1, scope: !1065)
!1140 = distinct !DISubprogram(name: "head_bytes", scope: !2, file: !2, line: 775, type: !1066, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147}
!1142 = !DILocalVariable(name: "filename", arg: 1, scope: !1140, file: !2, line: 775, type: !96)
!1143 = !DILocalVariable(name: "fd", arg: 2, scope: !1140, file: !2, line: 775, type: !57)
!1144 = !DILocalVariable(name: "bytes_to_write", arg: 3, scope: !1140, file: !2, line: 775, type: !337)
!1145 = !DILocalVariable(name: "buffer", scope: !1140, file: !2, line: 777, type: !1073)
!1146 = !DILocalVariable(name: "bytes_to_read", scope: !1140, file: !2, line: 778, type: !108)
!1147 = !DILocalVariable(name: "bytes_read", scope: !1148, file: !2, line: 782, type: !108)
!1148 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 781, column: 5)
!1149 = !DILocation(line: 0, scope: !1140)
!1150 = !DILocation(line: 777, column: 3, scope: !1140)
!1151 = !DILocation(line: 777, column: 8, scope: !1140)
!1152 = !DILocation(line: 780, column: 3, scope: !1140)
!1153 = !DILocation(line: 783, column: 26, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 783, column: 11)
!1155 = !DILocation(line: 783, column: 11, scope: !1148)
!1156 = !DILocation(line: 784, column: 9, scope: !1154)
!1157 = !DILocation(line: 785, column: 35, scope: !1148)
!1158 = !DILocation(line: 785, column: 20, scope: !1148)
!1159 = !DILocation(line: 0, scope: !1148)
!1160 = !DILocation(line: 786, column: 22, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 786, column: 11)
!1162 = !DILocation(line: 786, column: 11, scope: !1148)
!1163 = !DILocation(line: 788, column: 21, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 787, column: 9)
!1165 = !DILocation(line: 788, column: 51, scope: !1164)
!1166 = !DILocation(line: 788, column: 11, scope: !1164)
!1167 = !DILocation(line: 789, column: 11, scope: !1164)
!1168 = !DILocation(line: 791, column: 22, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 791, column: 11)
!1170 = !DILocation(line: 791, column: 11, scope: !1148)
!1171 = !DILocation(line: 792, column: 9, scope: !1169)
!1172 = !DILocation(line: 793, column: 22, scope: !1148)
!1173 = !DILocation(line: 793, column: 7, scope: !1148)
!1174 = !DILocation(line: 794, column: 22, scope: !1148)
!1175 = !DILocation(line: 795, column: 5, scope: !1140)
!1176 = distinct !{!1176, !1152, !1175, !500, !501}
!1177 = !DILocation(line: 796, column: 3, scope: !1140)
!1178 = !DILocation(line: 797, column: 1, scope: !1140)
!1179 = !DISubprogram(name: "safe_read", scope: !1180, file: !1180, line: 42, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1180 = !DIFile(filename: "../lib/safe-read.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!108, !57, !98, !108}
!1183 = distinct !DISubprogram(name: "xwrite_stdout", scope: !2, file: !2, line: 180, type: !1184, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !96, !108}
!1186 = !{!1187, !1188}
!1187 = !DILocalVariable(name: "buffer", arg: 1, scope: !1183, file: !2, line: 180, type: !96)
!1188 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !1183, file: !2, line: 180, type: !108)
!1189 = !DILocation(line: 0, scope: !1183)
!1190 = !DILocation(line: 182, column: 15, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 182, column: 7)
!1192 = !DILocation(line: 182, column: 19, scope: !1191)
!1193 = !DILocation(line: 182, column: 50, scope: !1191)
!1194 = !DILocation(line: 182, column: 22, scope: !1191)
!1195 = !DILocation(line: 182, column: 58, scope: !1191)
!1196 = !DILocation(line: 182, column: 7, scope: !1183)
!1197 = !DILocation(line: 184, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 183, column: 5)
!1199 = !{!1200, !959, i64 16}
!1200 = !{!"__sFILE", !375, i64 0, !662, i64 8, !662, i64 12, !959, i64 16, !959, i64 18, !1201, i64 24, !662, i64 40, !375, i64 48, !375, i64 56, !375, i64 64, !375, i64 72, !375, i64 80, !1201, i64 88, !375, i64 104, !662, i64 112, !376, i64 116, !376, i64 119, !1201, i64 120, !662, i64 136, !960, i64 144}
!1201 = !{!"__sbuf", !375, i64 0, !662, i64 8}
!1202 = !DILocation(line: 185, column: 7, scope: !1198)
!1203 = !DILocation(line: 188, column: 1, scope: !1183)
!1204 = !DISubprogram(name: "fwrite", linkageName: "\01_fwrite", scope: !398, file: !398, line: 165, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!111, !1207, !108, !108, !401}
!1207 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1210 = !DISubprogram(name: "lseek", scope: !809, file: !809, line: 465, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!99, !57, !99, !57}
!1213 = distinct !DISubprogram(name: "elide_tail_bytes_pipe", scope: !2, file: !2, line: 248, type: !1214, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!160, !96, !57, !337, !99}
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1227, !1230, !1231, !1232, !1233, !1235, !1239, !1240, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1257, !1260, !1261}
!1217 = !DILocalVariable(name: "filename", arg: 1, scope: !1213, file: !2, line: 248, type: !96)
!1218 = !DILocalVariable(name: "fd", arg: 2, scope: !1213, file: !2, line: 248, type: !57)
!1219 = !DILocalVariable(name: "n_elide_0", arg: 3, scope: !1213, file: !2, line: 248, type: !337)
!1220 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1213, file: !2, line: 249, type: !99)
!1221 = !DILocalVariable(name: "n_elide", scope: !1213, file: !2, line: 251, type: !108)
!1222 = !DILocalVariable(name: "desired_pos", scope: !1213, file: !2, line: 252, type: !337)
!1223 = !DILocalVariable(name: "ok", scope: !1213, file: !2, line: 253, type: !160)
!1224 = !DILocalVariable(name: "umax_buf", scope: !1225, file: !2, line: 274, type: !351)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !2, line: 273, column: 5)
!1226 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 272, column: 7)
!1227 = !DILocalVariable(name: "first", scope: !1228, file: !2, line: 292, type: !160)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 291, column: 5)
!1229 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 290, column: 7)
!1230 = !DILocalVariable(name: "eof", scope: !1228, file: !2, line: 293, type: !160)
!1231 = !DILocalVariable(name: "n_to_read", scope: !1228, file: !2, line: 294, type: !108)
!1232 = !DILocalVariable(name: "i", scope: !1228, file: !2, line: 295, type: !160)
!1233 = !DILocalVariable(name: "b", scope: !1228, file: !2, line: 296, type: !1234)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !116)
!1235 = !DILocalVariable(name: "n_read", scope: !1236, file: !2, line: 302, type: !108)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 301, column: 9)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 300, column: 7)
!1238 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 300, column: 7)
!1239 = !DILocalVariable(name: "delta", scope: !1236, file: !2, line: 303, type: !108)
!1240 = !DILocalVariable(name: "eof", scope: !1241, file: !2, line: 353, type: !160)
!1241 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 349, column: 5)
!1242 = !DILocalVariable(name: "n_read", scope: !1241, file: !2, line: 354, type: !108)
!1243 = !DILocalVariable(name: "buffered_enough", scope: !1241, file: !2, line: 355, type: !160)
!1244 = !DILocalVariable(name: "i", scope: !1241, file: !2, line: 356, type: !108)
!1245 = !DILocalVariable(name: "i_next", scope: !1241, file: !2, line: 356, type: !108)
!1246 = !DILocalVariable(name: "b", scope: !1241, file: !2, line: 357, type: !58)
!1247 = !DILocalVariable(name: "rem", scope: !1241, file: !2, line: 359, type: !108)
!1248 = !DILocalVariable(name: "n_elide_round", scope: !1241, file: !2, line: 360, type: !108)
!1249 = !DILocalVariable(name: "n_bufs", scope: !1241, file: !2, line: 361, type: !108)
!1250 = !DILocalVariable(name: "n_alloc", scope: !1241, file: !2, line: 362, type: !108)
!1251 = !DILocalVariable(name: "n_array_alloc", scope: !1241, file: !2, line: 363, type: !108)
!1252 = !DILocalVariable(name: "n_bytes_left_in_b_i", scope: !1253, file: !2, line: 412, type: !108)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 411, column: 13)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 410, column: 15)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 409, column: 9)
!1256 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 408, column: 11)
!1257 = !DILocalVariable(name: "y", scope: !1258, file: !2, line: 438, type: !108)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 425, column: 13)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 424, column: 20)
!1260 = !DILocalVariable(name: "x", scope: !1258, file: !2, line: 439, type: !108)
!1261 = !DILabel(scope: !1241, name: "free_mem", file: !2, line: 445)
!1262 = !DILocation(line: 0, scope: !1213)
!1263 = !DILocation(line: 272, column: 28, scope: !1226)
!1264 = !DILocation(line: 272, column: 16, scope: !1226)
!1265 = !DILocation(line: 272, column: 7, scope: !1213)
!1266 = !DILocation(line: 274, column: 7, scope: !1225)
!1267 = !DILocation(line: 274, column: 12, scope: !1225)
!1268 = !DILocation(line: 275, column: 7, scope: !1225)
!1269 = !DILocation(line: 290, column: 15, scope: !1229)
!1270 = !DILocation(line: 290, column: 7, scope: !1213)
!1271 = !DILocation(line: 0, scope: !1228)
!1272 = !DILocation(line: 294, column: 39, scope: !1228)
!1273 = !DILocation(line: 296, column: 7, scope: !1228)
!1274 = !DILocation(line: 296, column: 13, scope: !1228)
!1275 = !DILocation(line: 297, column: 14, scope: !1228)
!1276 = !DILocation(line: 297, column: 7, scope: !1228)
!1277 = !DILocation(line: 297, column: 12, scope: !1228)
!1278 = !DILocation(line: 298, column: 14, scope: !1228)
!1279 = !DILocation(line: 298, column: 19, scope: !1228)
!1280 = !DILocation(line: 298, column: 7, scope: !1228)
!1281 = !DILocation(line: 298, column: 12, scope: !1228)
!1282 = !DILocation(line: 300, column: 12, scope: !1238)
!1283 = !DILocation(line: 300, scope: !1238)
!1284 = !DILocation(line: 293, column: 12, scope: !1228)
!1285 = !DILocation(line: 292, column: 12, scope: !1228)
!1286 = !DILocation(line: 252, column: 13, scope: !1213)
!1287 = !DILocation(line: 300, column: 25, scope: !1237)
!1288 = !DILocation(line: 300, column: 23, scope: !1237)
!1289 = !DILocation(line: 300, column: 7, scope: !1238)
!1290 = !DILocation(line: 302, column: 44, scope: !1236)
!1291 = !DILocation(line: 302, column: 42, scope: !1236)
!1292 = !DILocation(line: 302, column: 27, scope: !1236)
!1293 = !DILocation(line: 0, scope: !1236)
!1294 = !DILocation(line: 304, column: 22, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 304, column: 15)
!1296 = !DILocation(line: 304, column: 15, scope: !1236)
!1297 = !DILocation(line: 306, column: 19, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 306, column: 19)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 305, column: 13)
!1300 = !DILocation(line: 306, column: 25, scope: !1298)
!1301 = !DILocation(line: 306, column: 19, scope: !1299)
!1302 = !DILocation(line: 308, column: 29, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 307, column: 17)
!1304 = !DILocation(line: 308, column: 59, scope: !1303)
!1305 = !DILocation(line: 308, column: 19, scope: !1303)
!1306 = !DILocation(line: 310, column: 19, scope: !1303)
!1307 = !DILocation(line: 314, column: 26, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 314, column: 19)
!1309 = !DILocation(line: 314, column: 19, scope: !1299)
!1310 = !DILocation(line: 316, column: 23, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 316, column: 23)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 315, column: 17)
!1313 = !DILocation(line: 316, column: 23, scope: !1312)
!1314 = !DILocation(line: 321, column: 21, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 317, column: 21)
!1316 = !DILocation(line: 324, column: 39, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 323, column: 21)
!1318 = !DILocation(line: 326, column: 17, scope: !1312)
!1319 = !DILocation(line: 303, column: 18, scope: !1236)
!1320 = !DILocation(line: 328, column: 13, scope: !1299)
!1321 = !DILocation(line: 332, column: 17, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 332, column: 15)
!1323 = !DILocation(line: 332, column: 15, scope: !1236)
!1324 = !DILocation(line: 334, column: 38, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 333, column: 13)
!1326 = !DILocation(line: 334, column: 27, scope: !1325)
!1327 = !DILocation(line: 335, column: 33, scope: !1325)
!1328 = !DILocation(line: 335, column: 32, scope: !1325)
!1329 = !DILocation(line: 335, column: 30, scope: !1325)
!1330 = !DILocation(line: 335, column: 36, scope: !1325)
!1331 = !DILocation(line: 335, column: 60, scope: !1325)
!1332 = !DILocation(line: 335, column: 15, scope: !1325)
!1333 = !DILocation(line: 336, column: 13, scope: !1325)
!1334 = !DILocation(line: 339, column: 23, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 339, column: 15)
!1336 = !DILocation(line: 339, column: 15, scope: !1236)
!1337 = !DILocation(line: 341, column: 37, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 340, column: 13)
!1339 = !DILocation(line: 341, column: 27, scope: !1338)
!1340 = !DILocation(line: 342, column: 32, scope: !1338)
!1341 = !DILocation(line: 342, column: 30, scope: !1338)
!1342 = !DILocation(line: 342, column: 43, scope: !1338)
!1343 = !DILocation(line: 342, column: 15, scope: !1338)
!1344 = !DILocation(line: 343, column: 13, scope: !1338)
!1345 = !DILocation(line: 344, column: 9, scope: !1237)
!1346 = !DILocation(line: 344, column: 9, scope: !1236)
!1347 = !DILocation(line: 300, column: 36, scope: !1237)
!1348 = !DILocation(line: 300, column: 35, scope: !1237)
!1349 = !DILocation(line: 300, column: 33, scope: !1237)
!1350 = !DILocation(line: 300, column: 7, scope: !1237)
!1351 = distinct !{!1351, !1289, !1352, !500, !501}
!1352 = !DILocation(line: 344, column: 9, scope: !1238)
!1353 = !DILocation(line: 346, column: 13, scope: !1228)
!1354 = !DILocation(line: 346, column: 7, scope: !1228)
!1355 = !DILocation(line: 347, column: 5, scope: !1229)
!1356 = !DILocation(line: 347, column: 5, scope: !1228)
!1357 = !DILocation(line: 0, scope: !1241)
!1358 = !DILocation(line: 359, column: 44, scope: !1241)
!1359 = !DILocation(line: 359, column: 33, scope: !1241)
!1360 = !DILocation(line: 360, column: 38, scope: !1241)
!1361 = !DILocation(line: 361, column: 37, scope: !1241)
!1362 = !DILocation(line: 361, column: 52, scope: !1241)
!1363 = !DILocation(line: 366, column: 12, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 366, column: 7)
!1365 = !DILocation(line: 366, scope: !1364)
!1366 = !DILocation(line: 362, column: 14, scope: !1241)
!1367 = !DILocation(line: 366, column: 32, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 366, column: 7)
!1369 = !DILocation(line: 366, column: 31, scope: !1368)
!1370 = !DILocation(line: 366, column: 7, scope: !1364)
!1371 = !DILocation(line: 368, column: 29, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 368, column: 15)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 367, column: 9)
!1374 = !DILocation(line: 368, column: 15, scope: !1373)
!1375 = !DILocation(line: 371, column: 33, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 371, column: 19)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 369, column: 13)
!1378 = !DILocation(line: 371, column: 19, scope: !1377)
!1379 = !DILocation(line: 372, column: 33, scope: !1376)
!1380 = !DILocation(line: 372, column: 17, scope: !1376)
!1381 = !DILocation(line: 373, column: 48, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 373, column: 24)
!1383 = !DILocation(line: 373, column: 38, scope: !1382)
!1384 = !DILocation(line: 373, column: 24, scope: !1376)
!1385 = !DILocation(line: 374, column: 31, scope: !1382)
!1386 = !DILocation(line: 374, column: 17, scope: !1382)
!1387 = !DILocation(line: 0, scope: !1382)
!1388 = !DILocation(line: 0, scope: !1376)
!1389 = !DILocation(line: 377, column: 19, scope: !1377)
!1390 = !DILocation(line: 378, column: 13, scope: !1377)
!1391 = !DILocation(line: 380, column: 17, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 380, column: 15)
!1393 = !DILocation(line: 380, column: 15, scope: !1373)
!1394 = !DILocation(line: 382, column: 22, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 381, column: 13)
!1396 = !DILocation(line: 382, column: 15, scope: !1395)
!1397 = !DILocation(line: 382, column: 20, scope: !1395)
!1398 = !DILocation(line: 383, column: 27, scope: !1395)
!1399 = !DILocation(line: 384, column: 13, scope: !1395)
!1400 = !DILocation(line: 385, column: 35, scope: !1373)
!1401 = !DILocation(line: 385, column: 20, scope: !1373)
!1402 = !DILocation(line: 386, column: 22, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 386, column: 15)
!1404 = !DILocation(line: 386, column: 15, scope: !1373)
!1405 = !DILocation(line: 388, column: 19, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 388, column: 19)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !2, line: 387, column: 13)
!1408 = !DILocation(line: 388, column: 25, scope: !1406)
!1409 = !DILocation(line: 388, column: 19, scope: !1407)
!1410 = !DILocation(line: 390, column: 29, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 389, column: 17)
!1412 = !DILocation(line: 390, column: 59, scope: !1411)
!1413 = !DILocation(line: 390, column: 19, scope: !1411)
!1414 = !DILocation(line: 392, column: 19, scope: !1411)
!1415 = !DILocation(line: 395, column: 13, scope: !1407)
!1416 = !DILocation(line: 397, column: 17, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 397, column: 15)
!1418 = !DILocation(line: 397, column: 21, scope: !1417)
!1419 = !DILocation(line: 397, column: 15, scope: !1373)
!1420 = !DILocation(line: 398, column: 13, scope: !1417)
!1421 = !DILocation(line: 400, column: 15, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 400, column: 15)
!1423 = !DILocation(line: 400, column: 15, scope: !1373)
!1424 = !DILocation(line: 402, column: 27, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 401, column: 13)
!1426 = !DILocation(line: 403, column: 30, scope: !1425)
!1427 = !DILocation(line: 403, column: 15, scope: !1425)
!1428 = !DILocation(line: 404, column: 13, scope: !1425)
!1429 = !DILocation(line: 405, column: 9, scope: !1373)
!1430 = !DILocation(line: 366, column: 66, scope: !1368)
!1431 = !DILocation(line: 366, column: 71, scope: !1368)
!1432 = !DILocation(line: 366, column: 7, scope: !1368)
!1433 = distinct !{!1433, !1370, !1434, !500, !501}
!1434 = !DILocation(line: 405, column: 9, scope: !1364)
!1435 = !DILocation(line: 408, column: 11, scope: !1256)
!1436 = !DILocation(line: 408, column: 11, scope: !1241)
!1437 = !DILocation(line: 410, column: 15, scope: !1254)
!1438 = !DILocation(line: 410, column: 15, scope: !1255)
!1439 = !DILocation(line: 412, column: 57, scope: !1253)
!1440 = !DILocation(line: 0, scope: !1253)
!1441 = !DILocation(line: 413, column: 27, scope: !1253)
!1442 = !DILocation(line: 414, column: 23, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 414, column: 19)
!1444 = !DILocation(line: 414, column: 19, scope: !1253)
!1445 = !DILocation(line: 416, column: 34, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 415, column: 17)
!1447 = !DILocation(line: 416, column: 39, scope: !1446)
!1448 = !DILocation(line: 416, column: 19, scope: !1446)
!1449 = !DILocation(line: 417, column: 17, scope: !1446)
!1450 = !DILocation(line: 420, column: 34, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 419, column: 17)
!1452 = !DILocation(line: 420, column: 39, scope: !1451)
!1453 = !DILocation(line: 420, column: 19, scope: !1451)
!1454 = !DILocation(line: 421, column: 34, scope: !1451)
!1455 = !DILocation(line: 421, column: 49, scope: !1451)
!1456 = !DILocation(line: 421, column: 19, scope: !1451)
!1457 = !DILocation(line: 423, column: 13, scope: !1253)
!1458 = !DILocation(line: 424, column: 22, scope: !1259)
!1459 = !DILocation(line: 424, column: 26, scope: !1259)
!1460 = !DILocation(line: 424, column: 20, scope: !1254)
!1461 = !DILocation(line: 438, column: 39, scope: !1258)
!1462 = !DILocation(line: 0, scope: !1258)
!1463 = !DILocation(line: 439, column: 33, scope: !1258)
!1464 = !DILocation(line: 440, column: 27, scope: !1258)
!1465 = !DILocation(line: 441, column: 30, scope: !1258)
!1466 = !DILocation(line: 441, column: 15, scope: !1258)
!1467 = !DILocation(line: 442, column: 13, scope: !1258)
!1468 = !DILocation(line: 0, scope: !1254)
!1469 = !DILocation(line: 443, column: 9, scope: !1255)
!1470 = !DILocation(line: 445, column: 5, scope: !1241)
!1471 = !DILocation(line: 446, column: 12, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 446, column: 7)
!1473 = !DILocation(line: 446, scope: !1472)
!1474 = !DILocation(line: 446, column: 21, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 446, column: 7)
!1476 = !DILocation(line: 446, column: 7, scope: !1472)
!1477 = !DILocation(line: 447, column: 15, scope: !1475)
!1478 = !DILocation(line: 447, column: 9, scope: !1475)
!1479 = !DILocation(line: 446, column: 33, scope: !1475)
!1480 = !DILocation(line: 446, column: 7, scope: !1475)
!1481 = distinct !{!1481, !1476, !1482, !500, !501}
!1482 = !DILocation(line: 447, column: 19, scope: !1472)
!1483 = !DILocation(line: 448, column: 7, scope: !1241)
!1484 = !DILocation(line: 0, scope: !1229)
!1485 = !DILocation(line: 451, column: 9, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 451, column: 7)
!1487 = !DILocation(line: 451, column: 24, scope: !1486)
!1488 = !DILocation(line: 451, column: 27, scope: !1486)
!1489 = !DILocation(line: 451, column: 72, scope: !1486)
!1490 = !DILocation(line: 451, column: 7, scope: !1213)
!1491 = !DILocation(line: 452, column: 5, scope: !1486)
!1492 = !DILocation(line: 453, column: 10, scope: !1213)
!1493 = !DILocation(line: 453, column: 3, scope: !1213)
!1494 = distinct !DISubprogram(name: "copy_fd", scope: !2, file: !2, line: 194, type: !1495, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!90, !57, !337}
!1497 = !{!1498, !1499, !1500, !1501, !1503, !1505}
!1498 = !DILocalVariable(name: "src_fd", arg: 1, scope: !1494, file: !2, line: 194, type: !57)
!1499 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !1494, file: !2, line: 194, type: !337)
!1500 = !DILocalVariable(name: "buf", scope: !1494, file: !2, line: 196, type: !1073)
!1501 = !DILocalVariable(name: "buf_size", scope: !1494, file: !2, line: 197, type: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!1503 = !DILocalVariable(name: "n_to_read", scope: !1504, file: !2, line: 202, type: !108)
!1504 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 201, column: 5)
!1505 = !DILocalVariable(name: "n_read", scope: !1504, file: !2, line: 203, type: !108)
!1506 = !DILocation(line: 0, scope: !1494)
!1507 = !DILocation(line: 196, column: 3, scope: !1494)
!1508 = !DILocation(line: 196, column: 8, scope: !1494)
!1509 = !DILocation(line: 200, column: 3, scope: !1494)
!1510 = !DILocation(line: 200, column: 12, scope: !1494)
!1511 = !DILocation(line: 202, column: 26, scope: !1504)
!1512 = !DILocation(line: 0, scope: !1504)
!1513 = !DILocation(line: 203, column: 42, scope: !1504)
!1514 = !DILocation(line: 203, column: 23, scope: !1504)
!1515 = !DILocation(line: 204, column: 18, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 204, column: 11)
!1517 = !DILocation(line: 204, column: 11, scope: !1504)
!1518 = !DILocation(line: 205, column: 9, scope: !1516)
!1519 = !DILocation(line: 207, column: 15, scope: !1504)
!1520 = !DILocation(line: 209, column: 18, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 209, column: 11)
!1522 = !DILocation(line: 209, column: 23, scope: !1521)
!1523 = !DILocation(line: 209, column: 34, scope: !1521)
!1524 = !DILocation(line: 209, column: 11, scope: !1504)
!1525 = !DILocation(line: 210, column: 9, scope: !1521)
!1526 = !DILocation(line: 212, column: 22, scope: !1504)
!1527 = !DILocation(line: 212, column: 7, scope: !1504)
!1528 = !DILocation(line: 213, column: 5, scope: !1494)
!1529 = distinct !{!1529, !1509, !1528, !500, !501}
!1530 = !DILocation(line: 215, column: 3, scope: !1494)
!1531 = !DILocation(line: 216, column: 1, scope: !1494)
!1532 = distinct !DISubprogram(name: "diagnose_copy_fd_failure", scope: !2, file: !2, line: 152, type: !1533, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1535)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !90, !96}
!1535 = !{!1536, !1537}
!1536 = !DILocalVariable(name: "err", arg: 1, scope: !1532, file: !2, line: 152, type: !90)
!1537 = !DILocalVariable(name: "filename", arg: 2, scope: !1532, file: !2, line: 152, type: !96)
!1538 = !DILocation(line: 0, scope: !1532)
!1539 = !DILocation(line: 154, column: 3, scope: !1532)
!1540 = !DILocation(line: 157, column: 17, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 155, column: 5)
!1542 = !DILocation(line: 157, column: 47, scope: !1541)
!1543 = !DILocation(line: 157, column: 7, scope: !1541)
!1544 = !DILocation(line: 158, column: 7, scope: !1541)
!1545 = !DILocation(line: 160, column: 17, scope: !1541)
!1546 = !DILocation(line: 160, column: 59, scope: !1541)
!1547 = !DILocation(line: 160, column: 7, scope: !1541)
!1548 = !DILocation(line: 161, column: 7, scope: !1541)
!1549 = !DILocation(line: 163, column: 7, scope: !1541)
!1550 = !DILocation(line: 165, column: 1, scope: !1532)
!1551 = !DISubprogram(name: "quotearg_n_style_colon", scope: !77, file: !77, line: 403, type: !1552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!59, !57, !76, !96}
!1554 = !DISubprogram(name: "abort", scope: !527, file: !527, line: 131, type: !459, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1555 = !DISubprogram(name: "xnmalloc", scope: !1556, file: !1556, line: 132, type: !1557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1556 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!98, !108, !108}
!1559 = !DISubprogram(name: "full_read", scope: !1560, file: !1560, line: 23, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1560 = !DIFile(filename: "../lib/full-read.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1561 = !DISubprogram(name: "rpl_free", scope: !1562, file: !1562, line: 756, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1562 = !DIFile(filename: "./lib/stdlib.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !98}
!1565 = distinct !DISubprogram(name: "xnrealloc", scope: !1556, file: !1556, line: 143, type: !1566, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!98, !98, !108, !108}
!1568 = !{!1569, !1570, !1571}
!1569 = !DILocalVariable(name: "p", arg: 1, scope: !1565, file: !1556, line: 143, type: !98)
!1570 = !DILocalVariable(name: "n", arg: 2, scope: !1565, file: !1556, line: 143, type: !108)
!1571 = !DILocalVariable(name: "s", arg: 3, scope: !1565, file: !1556, line: 143, type: !108)
!1572 = !DILocation(line: 0, scope: !1565)
!1573 = !DILocation(line: 145, column: 10, scope: !1565)
!1574 = !DILocation(line: 145, column: 3, scope: !1565)
!1575 = !DISubprogram(name: "xmalloc", scope: !1556, file: !1556, line: 55, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!98, !108}
!1578 = !DISubprogram(name: "xreallocarray", scope: !1556, file: !1556, line: 80, type: !1566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1579 = distinct !DISubprogram(name: "elide_tail_lines_pipe", scope: !2, file: !2, line: 498, type: !1214, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1599, !1600, !1601, !1602, !1603, !1604, !1607, !1608, !1611, !1612, !1613}
!1581 = !DILocalVariable(name: "filename", arg: 1, scope: !1579, file: !2, line: 498, type: !96)
!1582 = !DILocalVariable(name: "fd", arg: 2, scope: !1579, file: !2, line: 498, type: !57)
!1583 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1579, file: !2, line: 498, type: !337)
!1584 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1579, file: !2, line: 499, type: !99)
!1585 = !DILocalVariable(name: "desired_pos", scope: !1579, file: !2, line: 508, type: !337)
!1586 = !DILocalVariable(name: "first", scope: !1579, file: !2, line: 510, type: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "LBUFFER", scope: !1579, file: !2, line: 509, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", scope: !1579, file: !2, line: 501, size: 8448, elements: !1590)
!1590 = !{!1591, !1595, !1596, !1597}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1589, file: !2, line: 503, baseType: !1592, size: 8200)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !1593)
!1593 = !{!1594}
!1594 = !DISubrange(count: 1025)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !1589, file: !2, line: 504, baseType: !108, size: 64, offset: 8256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !1589, file: !2, line: 505, baseType: !108, size: 64, offset: 8320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1589, file: !2, line: 506, baseType: !1598, size: 64, offset: 8384)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1599 = !DILocalVariable(name: "last", scope: !1579, file: !2, line: 510, type: !1587)
!1600 = !DILocalVariable(name: "tmp", scope: !1579, file: !2, line: 510, type: !1587)
!1601 = !DILocalVariable(name: "total_lines", scope: !1579, file: !2, line: 511, type: !108)
!1602 = !DILocalVariable(name: "ok", scope: !1579, file: !2, line: 512, type: !160)
!1603 = !DILocalVariable(name: "n_read", scope: !1579, file: !2, line: 513, type: !108)
!1604 = !DILocalVariable(name: "buffer_end", scope: !1605, file: !2, line: 542, type: !59)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 541, column: 7)
!1606 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 524, column: 5)
!1607 = !DILocalVariable(name: "p", scope: !1605, file: !2, line: 544, type: !96)
!1608 = !DILocalVariable(name: "n", scope: !1609, file: !2, line: 610, type: !108)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 609, column: 5)
!1610 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 608, column: 7)
!1611 = !DILocalVariable(name: "buffer_end", scope: !1609, file: !2, line: 611, type: !96)
!1612 = !DILocalVariable(name: "p", scope: !1609, file: !2, line: 612, type: !96)
!1613 = !DILabel(scope: !1579, name: "free_lbuffers", file: !2, line: 623)
!1614 = !DILocation(line: 0, scope: !1579)
!1615 = !DILocation(line: 515, column: 18, scope: !1579)
!1616 = !DILocation(line: 516, column: 26, scope: !1579)
!1617 = !DILocation(line: 516, column: 33, scope: !1579)
!1618 = !{!1619, !962, i64 1040}
!1619 = !{!"linebuffer", !376, i64 0, !962, i64 1032, !962, i64 1040, !375, i64 1048}
!1620 = !DILocation(line: 516, column: 10, scope: !1579)
!1621 = !DILocation(line: 516, column: 17, scope: !1579)
!1622 = !{!1619, !962, i64 1032}
!1623 = !DILocation(line: 517, column: 10, scope: !1579)
!1624 = !DILocation(line: 517, column: 15, scope: !1579)
!1625 = !{!1619, !375, i64 1048}
!1626 = !DILocation(line: 518, column: 9, scope: !1579)
!1627 = !DILocation(line: 523, column: 3, scope: !1579)
!1628 = !DILocation(line: 518, column: 7, scope: !1579)
!1629 = !DILocation(line: 515, column: 16, scope: !1579)
!1630 = !DILocation(line: 515, column: 9, scope: !1579)
!1631 = !DILocation(line: 525, column: 36, scope: !1606)
!1632 = !DILocation(line: 525, column: 31, scope: !1606)
!1633 = !DILocation(line: 525, column: 16, scope: !1606)
!1634 = !DILocation(line: 526, column: 18, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 526, column: 11)
!1636 = !DILocation(line: 526, column: 23, scope: !1635)
!1637 = !DILocation(line: 526, column: 33, scope: !1635)
!1638 = !DILocation(line: 526, column: 11, scope: !1606)
!1639 = !DILocation(line: 527, column: 9, scope: !1635)
!1640 = !DILocation(line: 529, column: 13, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 529, column: 11)
!1642 = !DILocation(line: 529, column: 11, scope: !1606)
!1643 = !DILocation(line: 531, column: 23, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 530, column: 9)
!1645 = !DILocation(line: 532, column: 31, scope: !1644)
!1646 = !DILocation(line: 532, column: 26, scope: !1644)
!1647 = !DILocation(line: 532, column: 11, scope: !1644)
!1648 = !DILocation(line: 533, column: 11, scope: !1644)
!1649 = distinct !{!1649, !1627, !1650, !501}
!1650 = !DILocation(line: 581, column: 5, scope: !1579)
!1651 = !DILocation(line: 536, column: 12, scope: !1606)
!1652 = !DILocation(line: 536, column: 19, scope: !1606)
!1653 = !DILocation(line: 537, column: 12, scope: !1606)
!1654 = !DILocation(line: 537, column: 19, scope: !1606)
!1655 = !DILocation(line: 538, column: 12, scope: !1606)
!1656 = !DILocation(line: 538, column: 17, scope: !1606)
!1657 = !DILocation(line: 542, column: 33, scope: !1605)
!1658 = !DILocation(line: 542, column: 28, scope: !1605)
!1659 = !DILocation(line: 542, column: 40, scope: !1605)
!1660 = !DILocation(line: 0, scope: !1605)
!1661 = !DILocation(line: 543, column: 23, scope: !1605)
!1662 = !DILocation(line: 543, column: 21, scope: !1605)
!1663 = !DILocation(line: 544, column: 30, scope: !1605)
!1664 = !DILocation(line: 544, column: 25, scope: !1605)
!1665 = !DILocation(line: 545, column: 9, scope: !1605)
!1666 = !DILocation(line: 545, column: 35, scope: !1605)
!1667 = !DILocation(line: 545, column: 21, scope: !1605)
!1668 = !DILocation(line: 545, column: 46, scope: !1605)
!1669 = !DILocation(line: 547, column: 13, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 546, column: 11)
!1671 = !DILocation(line: 548, column: 20, scope: !1670)
!1672 = !DILocation(line: 548, column: 13, scope: !1670)
!1673 = distinct !{!1673, !1665, !1674, !500, !501}
!1674 = !DILocation(line: 549, column: 11, scope: !1605)
!1675 = !DILocation(line: 551, column: 27, scope: !1606)
!1676 = !DILocation(line: 551, column: 19, scope: !1606)
!1677 = !DILocation(line: 556, column: 16, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 556, column: 11)
!1679 = !DILocation(line: 556, column: 31, scope: !1678)
!1680 = !DILocation(line: 556, column: 23, scope: !1678)
!1681 = !DILocation(line: 556, column: 38, scope: !1678)
!1682 = !DILocation(line: 556, column: 11, scope: !1606)
!1683 = !DILocation(line: 558, column: 26, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 557, column: 9)
!1685 = !DILocation(line: 558, column: 39, scope: !1684)
!1686 = !DILocation(line: 558, column: 20, scope: !1684)
!1687 = !DILocation(line: 558, column: 53, scope: !1684)
!1688 = !DILocation(line: 558, column: 11, scope: !1684)
!1689 = !DILocation(line: 558, column: 66, scope: !1684)
!1690 = !DILocation(line: 559, column: 32, scope: !1684)
!1691 = !DILocation(line: 559, column: 17, scope: !1684)
!1692 = !DILocation(line: 559, column: 24, scope: !1684)
!1693 = !DILocation(line: 560, column: 32, scope: !1684)
!1694 = !DILocation(line: 560, column: 17, scope: !1684)
!1695 = !DILocation(line: 560, column: 24, scope: !1684)
!1696 = !DILocation(line: 561, column: 9, scope: !1684)
!1697 = !DILocation(line: 569, column: 24, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 563, column: 9)
!1699 = !DILocation(line: 569, column: 29, scope: !1698)
!1700 = !DILocation(line: 570, column: 46, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 570, column: 15)
!1702 = !DILocation(line: 570, column: 37, scope: !1701)
!1703 = !DILocation(line: 570, column: 23, scope: !1701)
!1704 = !DILocation(line: 570, column: 15, scope: !1698)
!1705 = !DILocation(line: 572, column: 37, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 571, column: 13)
!1707 = !DILocation(line: 572, column: 27, scope: !1706)
!1708 = !DILocation(line: 573, column: 37, scope: !1706)
!1709 = !DILocation(line: 573, column: 30, scope: !1706)
!1710 = !DILocation(line: 573, column: 52, scope: !1706)
!1711 = !DILocation(line: 573, column: 15, scope: !1706)
!1712 = !DILocation(line: 575, column: 37, scope: !1706)
!1713 = !DILocation(line: 575, column: 27, scope: !1706)
!1714 = !DILocation(line: 576, column: 30, scope: !1706)
!1715 = !DILocation(line: 577, column: 13, scope: !1706)
!1716 = !DILocation(line: 579, column: 19, scope: !1701)
!1717 = !DILocation(line: 0, scope: !1606)
!1718 = !DILocation(line: 0, scope: !1701)
!1719 = !DILocation(line: 583, column: 3, scope: !1579)
!1720 = !DILocation(line: 585, column: 14, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 585, column: 7)
!1722 = !DILocation(line: 585, column: 7, scope: !1579)
!1723 = !DILocation(line: 587, column: 17, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 586, column: 5)
!1725 = !DILocation(line: 587, column: 47, scope: !1724)
!1726 = !DILocation(line: 587, column: 7, scope: !1724)
!1727 = !DILocation(line: 589, column: 7, scope: !1724)
!1728 = !DILocation(line: 594, column: 13, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 594, column: 7)
!1730 = !DILocation(line: 594, column: 7, scope: !1729)
!1731 = !DILocation(line: 594, column: 20, scope: !1729)
!1732 = !DILocation(line: 594, column: 29, scope: !1729)
!1733 = !DILocation(line: 594, column: 42, scope: !1729)
!1734 = !DILocation(line: 594, column: 49, scope: !1729)
!1735 = !DILocation(line: 594, column: 23, scope: !1729)
!1736 = !DILocation(line: 594, column: 57, scope: !1729)
!1737 = !DILocation(line: 594, column: 54, scope: !1729)
!1738 = !DILocation(line: 594, column: 7, scope: !1579)
!1739 = !DILocation(line: 596, column: 15, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 595, column: 5)
!1741 = !DILocation(line: 596, column: 7, scope: !1740)
!1742 = !DILocation(line: 597, column: 7, scope: !1740)
!1743 = !DILocation(line: 598, column: 5, scope: !1740)
!1744 = !DILocation(line: 600, column: 8, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 600, column: 3)
!1746 = !DILocation(line: 600, scope: !1745)
!1747 = !DILocation(line: 600, column: 50, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 600, column: 3)
!1749 = !DILocation(line: 600, column: 43, scope: !1748)
!1750 = !DILocation(line: 600, column: 29, scope: !1748)
!1751 = !DILocation(line: 600, column: 3, scope: !1745)
!1752 = !DILocation(line: 602, column: 27, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 601, column: 5)
!1754 = !DILocation(line: 602, column: 19, scope: !1753)
!1755 = !DILocation(line: 603, column: 27, scope: !1753)
!1756 = !DILocation(line: 603, column: 22, scope: !1753)
!1757 = !DILocation(line: 603, column: 40, scope: !1753)
!1758 = !DILocation(line: 603, column: 7, scope: !1753)
!1759 = !DILocation(line: 604, column: 27, scope: !1753)
!1760 = !DILocation(line: 604, column: 19, scope: !1753)
!1761 = !DILocation(line: 605, column: 5, scope: !1753)
!1762 = !DILocation(line: 600, column: 69, scope: !1748)
!1763 = !DILocation(line: 600, column: 3, scope: !1748)
!1764 = distinct !{!1764, !1751, !1765, !500, !501}
!1765 = !DILocation(line: 605, column: 5, scope: !1745)
!1766 = !DILocation(line: 608, column: 15, scope: !1610)
!1767 = !DILocation(line: 608, column: 7, scope: !1579)
!1768 = !DILocation(line: 610, column: 30, scope: !1609)
!1769 = !DILocation(line: 0, scope: !1609)
!1770 = !DILocation(line: 611, column: 37, scope: !1609)
!1771 = !DILocation(line: 611, column: 32, scope: !1609)
!1772 = !DILocation(line: 611, column: 51, scope: !1609)
!1773 = !DILocation(line: 611, column: 44, scope: !1609)
!1774 = !DILocation(line: 612, column: 28, scope: !1609)
!1775 = !DILocation(line: 612, column: 23, scope: !1609)
!1776 = !DILocation(line: 613, column: 7, scope: !1609)
!1777 = !DILocation(line: 613, column: 14, scope: !1609)
!1778 = !DILocation(line: 613, column: 16, scope: !1609)
!1779 = !DILocation(line: 613, column: 35, scope: !1609)
!1780 = !DILocation(line: 613, column: 56, scope: !1609)
!1781 = !DILocation(line: 613, column: 24, scope: !1609)
!1782 = !DILocation(line: 615, column: 11, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 614, column: 9)
!1784 = !DILocation(line: 616, column: 18, scope: !1783)
!1785 = !DILocation(line: 616, column: 11, scope: !1783)
!1786 = !DILocation(line: 617, column: 11, scope: !1783)
!1787 = distinct !{!1787, !1776, !1788, !500, !501}
!1788 = !DILocation(line: 618, column: 9, scope: !1609)
!1789 = !DILocation(line: 619, column: 31, scope: !1609)
!1790 = !DILocation(line: 619, column: 26, scope: !1609)
!1791 = !DILocation(line: 619, column: 24, scope: !1609)
!1792 = !DILocation(line: 619, column: 19, scope: !1609)
!1793 = !DILocation(line: 620, column: 27, scope: !1609)
!1794 = !DILocation(line: 620, column: 22, scope: !1609)
!1795 = !DILocation(line: 620, column: 44, scope: !1609)
!1796 = !DILocation(line: 620, column: 39, scope: !1609)
!1797 = !DILocation(line: 620, column: 37, scope: !1609)
!1798 = !DILocation(line: 620, column: 7, scope: !1609)
!1799 = !DILocation(line: 621, column: 5, scope: !1609)
!1800 = !DILocation(line: 608, column: 17, scope: !1610)
!1801 = !DILocation(line: 623, column: 1, scope: !1579)
!1802 = !DILocation(line: 624, column: 3, scope: !1579)
!1803 = !DILocation(line: 626, column: 20, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 625, column: 5)
!1805 = !DILocation(line: 627, column: 7, scope: !1804)
!1806 = distinct !{!1806, !1802, !1807, !500, !501}
!1807 = !DILocation(line: 629, column: 5, scope: !1579)
!1808 = !DILocation(line: 631, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 631, column: 7)
!1810 = !DILocation(line: 631, column: 24, scope: !1809)
!1811 = !DILocation(line: 631, column: 27, scope: !1809)
!1812 = !DILocation(line: 631, column: 72, scope: !1809)
!1813 = !DILocation(line: 631, column: 7, scope: !1579)
!1814 = !DILocation(line: 632, column: 5, scope: !1809)
!1815 = !DILocation(line: 633, column: 10, scope: !1579)
!1816 = !DILocation(line: 633, column: 3, scope: !1579)
!1817 = distinct !DISubprogram(name: "elide_tail_lines_seekable", scope: !2, file: !2, line: 648, type: !1818, scopeLine: 651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!160, !96, !57, !337, !99, !99}
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1831, !1833, !1837}
!1821 = !DILocalVariable(name: "pretty_filename", arg: 1, scope: !1817, file: !2, line: 648, type: !96)
!1822 = !DILocalVariable(name: "fd", arg: 2, scope: !1817, file: !2, line: 648, type: !57)
!1823 = !DILocalVariable(name: "n_lines", arg: 3, scope: !1817, file: !2, line: 649, type: !337)
!1824 = !DILocalVariable(name: "start_pos", arg: 4, scope: !1817, file: !2, line: 650, type: !99)
!1825 = !DILocalVariable(name: "size", arg: 5, scope: !1817, file: !2, line: 650, type: !99)
!1826 = !DILocalVariable(name: "buffer", scope: !1817, file: !2, line: 652, type: !1073)
!1827 = !DILocalVariable(name: "bytes_read", scope: !1817, file: !2, line: 653, type: !108)
!1828 = !DILocalVariable(name: "pos", scope: !1817, file: !2, line: 654, type: !99)
!1829 = !DILocalVariable(name: "all_lines", scope: !1817, file: !2, line: 674, type: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!1831 = !DILocalVariable(name: "n", scope: !1832, file: !2, line: 684, type: !108)
!1832 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 681, column: 5)
!1833 = !DILocalVariable(name: "nl", scope: !1834, file: !2, line: 691, type: !96)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 690, column: 13)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 687, column: 15)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 686, column: 9)
!1837 = !DILocalVariable(name: "err", scope: !1838, file: !2, line: 704, type: !90)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 703, column: 17)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 702, column: 19)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !2, line: 698, column: 13)
!1841 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 697, column: 15)
!1842 = !DILocation(line: 0, scope: !1817)
!1843 = !DILocation(line: 652, column: 3, scope: !1817)
!1844 = !DILocation(line: 652, column: 8, scope: !1817)
!1845 = !DILocation(line: 658, column: 21, scope: !1817)
!1846 = !DILocation(line: 658, column: 34, scope: !1817)
!1847 = !DILocation(line: 659, column: 18, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 659, column: 7)
!1849 = !DILocation(line: 659, column: 7, scope: !1817)
!1850 = !DILocation(line: 660, column: 5, scope: !1848)
!1851 = !DILocation(line: 663, column: 7, scope: !1817)
!1852 = !DILocation(line: 664, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 664, column: 7)
!1854 = !DILocation(line: 664, column: 51, scope: !1853)
!1855 = !DILocation(line: 664, column: 7, scope: !1817)
!1856 = !DILocation(line: 665, column: 5, scope: !1853)
!1857 = !DILocation(line: 666, column: 31, scope: !1817)
!1858 = !DILocation(line: 666, column: 16, scope: !1817)
!1859 = !DILocation(line: 667, column: 18, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 667, column: 7)
!1861 = !DILocation(line: 667, column: 7, scope: !1817)
!1862 = !DILocation(line: 669, column: 17, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 668, column: 5)
!1864 = !DILocation(line: 669, column: 47, scope: !1863)
!1865 = !DILocation(line: 669, column: 7, scope: !1863)
!1866 = !DILocation(line: 670, column: 7, scope: !1863)
!1867 = !DILocation(line: 674, column: 26, scope: !1817)
!1868 = !DILocation(line: 674, column: 14, scope: !1817)
!1869 = !DILocation(line: 677, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 677, column: 7)
!1871 = !DILocation(line: 677, column: 15, scope: !1870)
!1872 = !DILocation(line: 677, column: 18, scope: !1870)
!1873 = !DILocation(line: 677, column: 29, scope: !1870)
!1874 = !DILocation(line: 677, column: 50, scope: !1870)
!1875 = !DILocation(line: 677, column: 32, scope: !1870)
!1876 = !DILocation(line: 677, column: 58, scope: !1870)
!1877 = !DILocation(line: 677, column: 55, scope: !1870)
!1878 = !DILocation(line: 677, column: 7, scope: !1817)
!1879 = !DILocation(line: 678, column: 5, scope: !1870)
!1880 = !DILocation(line: 680, column: 3, scope: !1817)
!1881 = !DILocation(line: 666, column: 14, scope: !1817)
!1882 = !DILocation(line: 0, scope: !1832)
!1883 = !DILocation(line: 685, column: 7, scope: !1832)
!1884 = !DILocation(line: 687, column: 15, scope: !1835)
!1885 = !DILocation(line: 687, column: 15, scope: !1836)
!1886 = !DILocation(line: 688, column: 15, scope: !1835)
!1887 = !DILocation(line: 688, column: 13, scope: !1835)
!1888 = !DILocation(line: 692, column: 29, scope: !1834)
!1889 = !DILocation(line: 692, column: 37, scope: !1834)
!1890 = !DILocation(line: 692, column: 20, scope: !1834)
!1891 = !DILocation(line: 0, scope: !1834)
!1892 = !DILocation(line: 693, column: 22, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 693, column: 19)
!1894 = !DILocation(line: 693, column: 19, scope: !1834)
!1895 = !DILocation(line: 694, column: 17, scope: !1893)
!1896 = !DILocation(line: 695, column: 24, scope: !1834)
!1897 = !DILocation(line: 695, column: 22, scope: !1834)
!1898 = !DILocation(line: 696, column: 13, scope: !1835)
!1899 = !DILocation(line: 697, column: 22, scope: !1841)
!1900 = !DILocation(line: 697, column: 25, scope: !1841)
!1901 = !DILocation(line: 697, column: 15, scope: !1836)
!1902 = !DILocation(line: 702, column: 29, scope: !1839)
!1903 = !DILocation(line: 702, column: 19, scope: !1840)
!1904 = !DILocation(line: 705, column: 23, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1838, file: !2, line: 705, column: 23)
!1906 = !DILocation(line: 705, column: 73, scope: !1905)
!1907 = !DILocation(line: 705, column: 23, scope: !1838)
!1908 = !DILocation(line: 706, column: 21, scope: !1905)
!1909 = !DILocation(line: 708, column: 42, scope: !1838)
!1910 = !DILocation(line: 708, column: 25, scope: !1838)
!1911 = !DILocation(line: 0, scope: !1838)
!1912 = !DILocation(line: 709, column: 27, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1838, file: !2, line: 709, column: 23)
!1914 = !DILocation(line: 709, column: 23, scope: !1838)
!1915 = !DILocation(line: 711, column: 23, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 710, column: 21)
!1917 = !DILocation(line: 712, column: 23, scope: !1916)
!1918 = !DILocation(line: 714, column: 17, scope: !1839)
!1919 = !DILocation(line: 714, column: 17, scope: !1838)
!1920 = !DILocation(line: 718, column: 30, scope: !1840)
!1921 = !DILocation(line: 718, column: 40, scope: !1840)
!1922 = !DILocation(line: 718, column: 15, scope: !1840)
!1923 = !DILocation(line: 721, column: 43, scope: !1840)
!1924 = !DILocation(line: 721, column: 47, scope: !1840)
!1925 = !DILocation(line: 721, column: 27, scope: !1840)
!1926 = !DILocation(line: 721, column: 24, scope: !1840)
!1927 = !DILocation(line: 721, column: 15, scope: !1840)
!1928 = distinct !{!1928, !1883, !1929, !500, !501}
!1929 = !DILocation(line: 723, column: 9, scope: !1832)
!1930 = !DILocation(line: 726, column: 15, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 726, column: 11)
!1932 = !DILocation(line: 726, column: 11, scope: !1832)
!1933 = !DILocation(line: 729, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 727, column: 9)
!1935 = !DILocation(line: 731, column: 11, scope: !1832)
!1936 = !DILocation(line: 732, column: 11, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 732, column: 11)
!1938 = !DILocation(line: 732, column: 55, scope: !1937)
!1939 = !DILocation(line: 732, column: 11, scope: !1832)
!1940 = !DILocation(line: 733, column: 9, scope: !1937)
!1941 = !DILocation(line: 735, column: 35, scope: !1832)
!1942 = !DILocation(line: 735, column: 20, scope: !1832)
!1943 = !DILocation(line: 736, column: 22, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 736, column: 11)
!1945 = !DILocation(line: 736, column: 11, scope: !1832)
!1946 = !DILocation(line: 738, column: 21, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 737, column: 9)
!1948 = !DILocation(line: 738, column: 51, scope: !1947)
!1949 = !DILocation(line: 738, column: 11, scope: !1947)
!1950 = !DILocation(line: 739, column: 11, scope: !1947)
!1951 = !DILocation(line: 744, column: 22, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 744, column: 11)
!1953 = !DILocation(line: 744, column: 11, scope: !1832)
!1954 = !DILocation(line: 745, column: 9, scope: !1952)
!1955 = !DILocation(line: 746, column: 5, scope: !1817)
!1956 = distinct !{!1956, !1880, !1955, !501}
!1957 = !DILocation(line: 747, column: 1, scope: !1817)
!1958 = !DISubprogram(name: "memrchr", scope: !1959, file: !1959, line: 859, type: !1960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1959 = !DIFile(filename: "./lib/string.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!98, !1208, !57, !108}
!1962 = !DISubprogram(name: "rawmemchr", scope: !1959, file: !1959, line: 907, type: !1963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!98, !1208, !57}
!1965 = !DISubprogram(name: "memchr", scope: !529, file: !529, line: 70, type: !1960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1966 = !DISubprogram(name: "offtostr", scope: !737, file: !737, line: 27, type: !1967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!59, !99, !59}
!1969 = distinct !DISubprogram(name: "set_binary_mode", scope: !1970, file: !1970, line: 66, type: !1971, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1973)
!1970 = !DIFile(filename: "../lib/binary-io.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!57, !57, !57}
!1973 = !{!1974, !1975}
!1974 = !DILocalVariable(name: "fd", arg: 1, scope: !1969, file: !1970, line: 66, type: !57)
!1975 = !DILocalVariable(name: "mode", arg: 2, scope: !1969, file: !1970, line: 66, type: !57)
!1976 = !DILocation(line: 0, scope: !1969)
!1977 = !DILocation(line: 68, column: 10, scope: !1969)
!1978 = !DILocation(line: 68, column: 3, scope: !1969)
!1979 = distinct !DISubprogram(name: "xset_binary_mode_error", scope: !745, file: !745, line: 33, type: !459, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !454)
!1980 = !DILocation(line: 33, column: 55, scope: !1979)
!1981 = distinct !DISubprogram(name: "__gl_setmode", scope: !1970, file: !1970, line: 50, type: !1971, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1982)
!1982 = !{!1983, !1984}
!1983 = !DILocalVariable(name: "fd", arg: 1, scope: !1981, file: !1970, line: 50, type: !57)
!1984 = !DILocalVariable(name: "mode", arg: 2, scope: !1981, file: !1970, line: 50, type: !57)
!1985 = !DILocation(line: 0, scope: !1981)
!1986 = !DILocation(line: 52, column: 3, scope: !1981)
!1987 = !DISubprogram(name: "xdectoumax", scope: !1988, file: !1988, line: 33, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !454)
!1988 = !DIFile(filename: "../lib/xdectoint.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!337, !96, !337, !337, !96, !96, !57}
