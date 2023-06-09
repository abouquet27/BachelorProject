; ModuleID = 'coreutils-9.3/build/src/wc.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct._RuneLocale = type { [8 x i8], [32 x i8], ptr, ptr, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, ptr, i32, i32, ptr }
%struct._RuneRange = type { i32, ptr }
%struct.Tokens = type { i64, ptr, ptr, %struct.obstack, %struct.obstack, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, %union.anon, i64, %union.anon.0, %union.anon.0, ptr, i8 }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.fstatus = type { i32, %struct.stat }
%union.__mbstate_t = type { i64, [120 x i8] }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [194 x i8] c"Print newline, word, and byte counts for each FILE, and a total line if\0Amore than one FILE is specified.  A word is a non-zero-length sequence of\0Aprintable characters delimited by white space.\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [301 x i8] c"\0AThe options below may be used to select which counts are printed, always in\0Athe following order: newline, word, character, byte, maximum line length.\0A  -c, --bytes            print the byte counts\0A  -m, --chars            print the character counts\0A  -l, --lines            print the newline counts\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [301 x i8] c"      --files0-from=F    read input from the files specified by\0A                           NUL-terminated names in file F;\0A                           If F is - then read names from standard input\0A  -L, --max-line-length  print the maximum display width\0A  -w, --words            print the word counts\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [132 x i8] c"      --total=WHEN       when to print a line with total counts;\0A                           WHEN can be: auto, always, only, never\0A\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [3 x i8] c"wc\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !44
@page_size = internal global i64 0, align 8, !dbg !49
@.str.10 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1, !dbg !115
@posixly_correct = internal global i8 0, align 1, !dbg !468
@print_bytes = internal global i8 0, align 1, !dbg !460
@print_chars = internal global i8 0, align 1, !dbg !458
@print_words = internal global i8 0, align 1, !dbg !456
@print_lines = internal global i8 0, align 1, !dbg !454
@print_linelength = internal global i8 0, align 1, !dbg !462
@max_line_length = internal global i64 0, align 8, !dbg !452
@total_bytes = internal global i64 0, align 8, !dbg !442
@total_chars = internal global i64 0, align 8, !dbg !440
@total_words = internal global i64 0, align 8, !dbg !438
@total_lines = internal global i64 0, align 8, !dbg !434
@.str.11 = private unnamed_addr constant [6 x i8] c"clLmw\00", align 1, !dbg !120
@longopts = internal constant [11 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.53, i32 0, ptr null, i32 99 }, %struct.rpl_option { ptr @.str.54, i32 0, ptr null, i32 109 }, %struct.rpl_option { ptr @.str.55, i32 0, ptr null, i32 108 }, %struct.rpl_option { ptr @.str.56, i32 0, ptr null, i32 119 }, %struct.rpl_option { ptr @.str.57, i32 0, ptr null, i32 128 }, %struct.rpl_option { ptr @.str.58, i32 1, ptr null, i32 129 }, %struct.rpl_option { ptr @.str.59, i32 0, ptr null, i32 76 }, %struct.rpl_option { ptr @.str.34, i32 1, ptr null, i32 130 }, %struct.rpl_option { ptr @.str.60, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.61, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !539
@debug = internal global i8 0, align 1, !dbg !432
@rpl_optarg = external global ptr, align 8
@total_types = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16, !dbg !551
@.str.12 = private unnamed_addr constant [8 x i8] c"--total\00", align 1, !dbg !125
@total_args = internal constant [5 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr null], align 16, !dbg !566
@argmatch_die = external global ptr, align 8
@total_mode = internal global i32 0, align 4, !dbg !570
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !130
@Version = external global ptr, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1, !dbg !135
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !140
@rpl_optind = external global i32, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !142
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !147
@.str.18 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1, !dbg !152
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !157
@__stdinp = external global ptr, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !162
@.str.21 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1, !dbg !164
@.str.22 = private unnamed_addr constant [31 x i8] c"cannot read file names from %s\00", align 1, !dbg !169
@main.stdin_only = internal global [1 x ptr] zeroinitializer, align 8, !dbg !174
@number_width = internal global i32 0, align 4, !dbg !464
@.str.23 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1, !dbg !387
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !392
@.str.24 = private unnamed_addr constant [5 x i8] c"wc.c\00", align 1, !dbg !397
@.str.25 = private unnamed_addr constant [40 x i8] c"!\22unexpected error code from argv_iter\22\00", align 1, !dbg !400
@.str.26 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1, !dbg !405
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !410
@.str.28 = private unnamed_addr constant [30 x i8] c"invalid zero-length file name\00", align 1, !dbg !412
@.str.29 = private unnamed_addr constant [11 x i8] c"%s:%lu: %s\00", align 1, !dbg !417
@total_lines_overflow = internal global i64 0, align 8, !dbg !444
@.str.30 = private unnamed_addr constant [12 x i8] c"total lines\00", align 1, !dbg !419
@total_words_overflow = internal global i64 0, align 8, !dbg !446
@.str.31 = private unnamed_addr constant [12 x i8] c"total words\00", align 1, !dbg !424
@total_chars_overflow = internal global i64 0, align 8, !dbg !448
@.str.32 = private unnamed_addr constant [17 x i8] c"total characters\00", align 1, !dbg !426
@total_bytes_overflow = internal global i64 0, align 8, !dbg !450
@.str.33 = private unnamed_addr constant [12 x i8] c"total bytes\00", align 1, !dbg !428
@.str.34 = private unnamed_addr constant [6 x i8] c"total\00", align 1, !dbg !430
@have_read_stdin = internal global i8 0, align 1, !dbg !466
@.str.35 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !470
@.str.36 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !475
@.str.37 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !477
@.str.38 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !479
@.str.39 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !484
@.str.40 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !489
@.str.41 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !491
@.str.42 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !493
@.str.43 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !495
@.str.44 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !497
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.36, ptr @.str.37 }, %struct.infomap { ptr @.str.38, ptr @.str.39 }, %struct.infomap { ptr @.str.40, ptr @.str.41 }, %struct.infomap { ptr @.str.42, ptr @.str.41 }, %struct.infomap { ptr @.str.43, ptr @.str.41 }, %struct.infomap { ptr @.str.44, ptr @.str.41 }, %struct.infomap zeroinitializer], align 16
@.str.45 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !499
@.str.46 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !504
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !506
@.str.48 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !508
@.str.49 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !510
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !512
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !514
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !519
@.str.53 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1, !dbg !521
@.str.54 = private unnamed_addr constant [6 x i8] c"chars\00", align 1, !dbg !523
@.str.55 = private unnamed_addr constant [6 x i8] c"lines\00", align 1, !dbg !525
@.str.56 = private unnamed_addr constant [6 x i8] c"words\00", align 1, !dbg !527
@.str.57 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !529
@.str.58 = private unnamed_addr constant [12 x i8] c"files0-from\00", align 1, !dbg !531
@.str.59 = private unnamed_addr constant [16 x i8] c"max-line-length\00", align 1, !dbg !533
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !535
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !537
@.str.62 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !555
@.str.63 = private unnamed_addr constant [7 x i8] c"always\00", align 1, !dbg !557
@.str.64 = private unnamed_addr constant [5 x i8] c"only\00", align 1, !dbg !562
@.str.65 = private unnamed_addr constant [6 x i8] c"never\00", align 1, !dbg !564
@.str.66 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1, !dbg !572
@wc_lines_p = internal global ptr @wc_lines, align 8, !dbg !589
@.str.67 = private unnamed_addr constant [20 x i8] c"failed to get cpuid\00", align 1, !dbg !574
@.str.68 = private unnamed_addr constant [26 x i8] c"avx2 support not detected\00", align 1, !dbg !579
@.str.69 = private unnamed_addr constant [28 x i8] c"using avx2 hardware support\00", align 1, !dbg !584
@is_basic_table = external constant [0 x i32], align 4
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8
@write_counts.format_sp_int = internal constant [5 x i8] c" %*s\00", align 1, !dbg !595
@.str.70 = private unnamed_addr constant [4 x i8] c" %s\00", align 1, !dbg !612

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !621 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !625, metadata !DIExpression()), !dbg !626
  %2 = icmp ne i32 %0, 0, !dbg !627
  br i1 %2, label %3, label %9, !dbg !629

3:                                                ; preds = %1
  br label %4, !dbg !630

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !631, !tbaa !633
  %6 = load ptr, ptr @program_name, align 8, !dbg !631, !tbaa !633
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !631
  br label %8, !dbg !631

8:                                                ; preds = %4
  br label %25, !dbg !631

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !637, !tbaa !633
  %11 = load ptr, ptr @program_name, align 8, !dbg !639, !tbaa !633
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10, ptr noundef %11), !dbg !640
  %13 = load ptr, ptr @__stdoutp, align 8, !dbg !641, !tbaa !633
  %14 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %13), !dbg !642
  call void @emit_stdin_note(), !dbg !643
  %15 = load ptr, ptr @__stdoutp, align 8, !dbg !644, !tbaa !633
  %16 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %15), !dbg !645
  %17 = load ptr, ptr @__stdoutp, align 8, !dbg !646, !tbaa !633
  %18 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %17), !dbg !647
  %19 = load ptr, ptr @__stdoutp, align 8, !dbg !648, !tbaa !633
  %20 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %19), !dbg !649
  %21 = load ptr, ptr @__stdoutp, align 8, !dbg !650, !tbaa !633
  %22 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %21), !dbg !651
  %23 = load ptr, ptr @__stdoutp, align 8, !dbg !652, !tbaa !633
  %24 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %23), !dbg !653
  call void @emit_ancillary_info(ptr noundef @.str.8), !dbg !654
  br label %25

25:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #15, !dbg !655
  unreachable, !dbg !655
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !656 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !663 i32 @printf(ptr noundef, ...) #2

declare !dbg !666 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_stdin_note() #3 !dbg !669 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !672, !tbaa !633
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.35, ptr noundef %1), !dbg !673
  ret void, !dbg !674
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !675 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !679, metadata !DIExpression()), !dbg !692
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #16, !dbg !693
  call void @llvm.dbg.declare(metadata ptr %2, metadata !680, metadata !DIExpression()), !dbg !694
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !694
  call void @llvm.dbg.value(metadata ptr %0, metadata !687, metadata !DIExpression()), !dbg !692
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !695
  call void @llvm.dbg.value(metadata ptr %3, metadata !688, metadata !DIExpression()), !dbg !692
  br label %4, !dbg !696

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !692
  call void @llvm.dbg.value(metadata ptr %.0, metadata !688, metadata !DIExpression()), !dbg !692
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !697
  %6 = load ptr, ptr %5, align 8, !dbg !697, !tbaa !698
  %7 = icmp ne ptr %6, null, !dbg !700
  br i1 %7, label %8, label %14, !dbg !701

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !702
  %10 = load ptr, ptr %9, align 8, !dbg !702, !tbaa !698
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !702
  %12 = icmp eq i32 %11, 0, !dbg !702
  %13 = xor i1 %12, true, !dbg !703
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !692
  br i1 %15, label %16, label %18, !dbg !696

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !704
  call void @llvm.dbg.value(metadata ptr %17, metadata !688, metadata !DIExpression()), !dbg !692
  br label %4, !dbg !696, !llvm.loop !705

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !708
  %20 = load ptr, ptr %19, align 8, !dbg !708, !tbaa !710
  %21 = icmp ne ptr %20, null, !dbg !711
  br i1 %21, label %22, label %25, !dbg !712

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !713
  %24 = load ptr, ptr %23, align 8, !dbg !713, !tbaa !710
  call void @llvm.dbg.value(metadata ptr %24, metadata !687, metadata !DIExpression()), !dbg !692
  br label %25, !dbg !714

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !692
  call void @llvm.dbg.value(metadata ptr %.01, metadata !687, metadata !DIExpression()), !dbg !692
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.45, ptr noundef @.str.13, ptr noundef @.str.46), !dbg !715
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !716
  call void @llvm.dbg.value(metadata ptr %27, metadata !690, metadata !DIExpression()), !dbg !692
  %28 = icmp ne ptr %27, null, !dbg !717
  br i1 %28, label %29, label %35, !dbg !719

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.47, i64 noundef 3), !dbg !720
  %31 = icmp ne i32 %30, 0, !dbg !720
  br i1 %31, label %32, label %35, !dbg !721

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !722, !tbaa !633
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.48, ptr noundef %33), !dbg !724
  br label %35, !dbg !725

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.36), !dbg !726
  %37 = icmp eq i32 %36, 0, !dbg !726
  br i1 %37, label %38, label %39, !dbg !726

38:                                               ; preds = %35
  br label %40, !dbg !726

39:                                               ; preds = %35
  br label %40, !dbg !726

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.49, %38 ], [ %0, %39 ], !dbg !726
  call void @llvm.dbg.value(metadata ptr %41, metadata !691, metadata !DIExpression()), !dbg !692
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.50, ptr noundef @.str.46, ptr noundef %41), !dbg !727
  %43 = icmp eq ptr %.01, %0, !dbg !728
  %44 = zext i1 %43 to i64, !dbg !729
  %45 = select i1 %43, ptr @.str.52, ptr @.str.9, !dbg !729
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.51, ptr noundef %.01, ptr noundef %45), !dbg !730
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #16, !dbg !731
  ret void, !dbg !731
}

; Function Attrs: noreturn
declare !dbg !732 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !734 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !738 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !742 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !176 {
  %3 = alloca %struct.Tokens, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !181, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata ptr %1, metadata !182, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata ptr null, metadata !188, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.start.p0(i64 288, ptr %3) #16, !dbg !746
  call void @llvm.dbg.declare(metadata ptr %3, metadata !257, metadata !DIExpression()), !dbg !747
  %6 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !748
  %7 = load ptr, ptr %6, align 8, !dbg !748, !tbaa !633
  call void @set_program_name(ptr noundef %7), !dbg !749
  %8 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.9), !dbg !750
  %9 = call i32 @atexit(ptr noundef @close_stdout), !dbg !751
  %10 = call i32 @getpagesize() #17, !dbg !752
  %11 = sext i32 %10 to i64, !dbg !752
  store i64 %11, ptr @page_size, align 8, !dbg !753, !tbaa !754
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !756, !tbaa !633
  %13 = call i32 @setvbuf(ptr noundef %12, ptr noundef null, i32 noundef 1, i64 noundef 0), !dbg !757
  %14 = call ptr @getenv(ptr noundef @.str.10), !dbg !758
  %15 = icmp ne ptr %14, null, !dbg !759
  %16 = zext i1 %15 to i8, !dbg !760
  store i8 %16, ptr @posixly_correct, align 1, !dbg !760, !tbaa !761
  store i8 0, ptr @print_bytes, align 1, !dbg !763, !tbaa !761
  store i8 0, ptr @print_chars, align 1, !dbg !764, !tbaa !761
  store i8 0, ptr @print_words, align 1, !dbg !765, !tbaa !761
  store i8 0, ptr @print_lines, align 1, !dbg !766, !tbaa !761
  store i8 0, ptr @print_linelength, align 1, !dbg !767, !tbaa !761
  store i64 0, ptr @max_line_length, align 8, !dbg !768, !tbaa !754
  store i64 0, ptr @total_bytes, align 8, !dbg !769, !tbaa !754
  store i64 0, ptr @total_chars, align 8, !dbg !770, !tbaa !754
  store i64 0, ptr @total_words, align 8, !dbg !771, !tbaa !754
  store i64 0, ptr @total_lines, align 8, !dbg !772, !tbaa !754
  br label %17, !dbg !773

17:                                               ; preds = %40, %2
  %.010 = phi ptr [ null, %2 ], [ %.111, %40 ], !dbg !774
  call void @llvm.dbg.value(metadata ptr %.010, metadata !188, metadata !DIExpression()), !dbg !745
  %18 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.11, ptr noundef @longopts, ptr noundef null), !dbg !775
  call void @llvm.dbg.value(metadata i32 %18, metadata !185, metadata !DIExpression()), !dbg !745
  %19 = icmp ne i32 %18, -1, !dbg !776
  br i1 %19, label %20, label %41, !dbg !773

20:                                               ; preds = %17
  switch i32 %18, label %39 [
    i32 99, label %21
    i32 109, label %22
    i32 108, label %23
    i32 119, label %24
    i32 76, label %25
    i32 128, label %26
    i32 129, label %27
    i32 130, label %29
    i32 -130, label %35
    i32 -131, label %36
  ], !dbg !777

21:                                               ; preds = %20
  store i8 1, ptr @print_bytes, align 1, !dbg !778, !tbaa !761
  br label %40, !dbg !780

22:                                               ; preds = %20
  store i8 1, ptr @print_chars, align 1, !dbg !781, !tbaa !761
  br label %40, !dbg !782

23:                                               ; preds = %20
  store i8 1, ptr @print_lines, align 1, !dbg !783, !tbaa !761
  br label %40, !dbg !784

24:                                               ; preds = %20
  store i8 1, ptr @print_words, align 1, !dbg !785, !tbaa !761
  br label %40, !dbg !786

25:                                               ; preds = %20
  store i8 1, ptr @print_linelength, align 1, !dbg !787, !tbaa !761
  br label %40, !dbg !788

26:                                               ; preds = %20
  store i8 1, ptr @debug, align 1, !dbg !789, !tbaa !761
  br label %40, !dbg !790

27:                                               ; preds = %20
  %28 = load ptr, ptr @rpl_optarg, align 8, !dbg !791, !tbaa !633
  call void @llvm.dbg.value(metadata ptr %28, metadata !188, metadata !DIExpression()), !dbg !745
  br label %40, !dbg !792

29:                                               ; preds = %20
  %30 = load ptr, ptr @rpl_optarg, align 8, !dbg !793, !tbaa !633
  %31 = load ptr, ptr @argmatch_die, align 8, !dbg !793, !tbaa !633
  %32 = call i64 @__xargmatch_internal(ptr noundef @.str.12, ptr noundef %30, ptr noundef @total_args, ptr noundef @total_types, i64 noundef 4, ptr noundef %31, i1 noundef zeroext true), !dbg !793
  %33 = getelementptr inbounds [4 x i32], ptr @total_types, i64 0, i64 %32, !dbg !793
  %34 = load i32, ptr %33, align 4, !dbg !793, !tbaa !794
  store i32 %34, ptr @total_mode, align 4, !dbg !795, !tbaa !794
  br label %40, !dbg !796

35:                                               ; preds = %20
  call void @usage(i32 noundef 0) #15, !dbg !797
  unreachable, !dbg !797

36:                                               ; preds = %20
  %37 = load ptr, ptr @__stdoutp, align 8, !dbg !798, !tbaa !633
  %38 = load ptr, ptr @Version, align 8, !dbg !798, !tbaa !633
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %37, ptr noundef @.str.8, ptr noundef @.str.13, ptr noundef %38, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef null), !dbg !798
  call void @exit(i32 noundef 0) #15, !dbg !798
  unreachable, !dbg !798

39:                                               ; preds = %20
  call void @usage(i32 noundef 1) #15, !dbg !799
  unreachable, !dbg !799

40:                                               ; preds = %29, %27, %26, %25, %24, %23, %22, %21
  %.111 = phi ptr [ %.010, %29 ], [ %28, %27 ], [ %.010, %26 ], [ %.010, %25 ], [ %.010, %24 ], [ %.010, %23 ], [ %.010, %22 ], [ %.010, %21 ], !dbg !745
  call void @llvm.dbg.value(metadata ptr %.111, metadata !188, metadata !DIExpression()), !dbg !745
  br label %17, !dbg !773, !llvm.loop !800

41:                                               ; preds = %17
  %42 = load i8, ptr @print_lines, align 1, !dbg !802, !tbaa !761, !range !804, !noundef !662
  %43 = trunc i8 %42 to i1, !dbg !802
  br i1 %43, label %57, label %44, !dbg !805

44:                                               ; preds = %41
  %45 = load i8, ptr @print_words, align 1, !dbg !806, !tbaa !761, !range !804, !noundef !662
  %46 = trunc i8 %45 to i1, !dbg !806
  br i1 %46, label %57, label %47, !dbg !807

47:                                               ; preds = %44
  %48 = load i8, ptr @print_chars, align 1, !dbg !808, !tbaa !761, !range !804, !noundef !662
  %49 = trunc i8 %48 to i1, !dbg !808
  br i1 %49, label %57, label %50, !dbg !809

50:                                               ; preds = %47
  %51 = load i8, ptr @print_bytes, align 1, !dbg !810, !tbaa !761, !range !804, !noundef !662
  %52 = trunc i8 %51 to i1, !dbg !810
  br i1 %52, label %57, label %53, !dbg !811

53:                                               ; preds = %50
  %54 = load i8, ptr @print_linelength, align 1, !dbg !812, !tbaa !761, !range !804, !noundef !662
  %55 = trunc i8 %54 to i1, !dbg !812
  br i1 %55, label %57, label %56, !dbg !813

56:                                               ; preds = %53
  store i8 1, ptr @print_bytes, align 1, !dbg !814, !tbaa !761
  store i8 1, ptr @print_words, align 1, !dbg !815, !tbaa !761
  store i8 1, ptr @print_lines, align 1, !dbg !816, !tbaa !761
  br label %57, !dbg !817

57:                                               ; preds = %56, %53, %50, %47, %44, %41
  call void @llvm.dbg.value(metadata i8 0, metadata !317, metadata !DIExpression()), !dbg !745
  %58 = icmp ne ptr %.010, null, !dbg !818
  br i1 %58, label %59, label %123, !dbg !819

59:                                               ; preds = %57
  %60 = load i32, ptr @rpl_optind, align 4, !dbg !820, !tbaa !822
  %61 = icmp slt i32 %60, %0, !dbg !824
  br i1 %61, label %62, label %70, !dbg !825

62:                                               ; preds = %59
  %63 = load i32, ptr @rpl_optind, align 4, !dbg !826, !tbaa !822
  %64 = sext i32 %63 to i64, !dbg !826
  %65 = getelementptr inbounds ptr, ptr %1, i64 %64, !dbg !826
  %66 = load ptr, ptr %65, align 8, !dbg !826, !tbaa !633
  %67 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %66), !dbg !826
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.16, ptr noundef %67), !dbg !828
  %68 = load ptr, ptr @__stderrp, align 8, !dbg !829, !tbaa !633
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.17, ptr noundef @.str.18), !dbg !830
  call void @usage(i32 noundef 1) #15, !dbg !831
  unreachable, !dbg !831

70:                                               ; preds = %59
  %71 = call i32 @strcmp(ptr noundef %.010, ptr noundef @.str.19), !dbg !832
  %72 = icmp eq i32 %71, 0, !dbg !832
  br i1 %72, label %73, label %75, !dbg !834

73:                                               ; preds = %70
  %74 = load ptr, ptr @__stdinp, align 8, !dbg !835, !tbaa !633
  call void @llvm.dbg.value(metadata ptr %74, metadata !321, metadata !DIExpression()), !dbg !836
  br label %83, !dbg !837

75:                                               ; preds = %70
  %76 = call ptr @rpl_fopen(ptr noundef %.010, ptr noundef @.str.20), !dbg !838
  call void @llvm.dbg.value(metadata ptr %76, metadata !321, metadata !DIExpression()), !dbg !836
  %77 = icmp eq ptr %76, null, !dbg !840
  br i1 %77, label %78, label %82, !dbg !842

78:                                               ; preds = %75
  %79 = call ptr @__error(), !dbg !843
  %80 = load i32, ptr %79, align 4, !dbg !843, !tbaa !822
  %81 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %.010), !dbg !843
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %80, ptr noundef @.str.21, ptr noundef %81), !dbg !843
  unreachable, !dbg !843

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %73
  %.012 = phi ptr [ %74, %73 ], [ %76, %82 ], !dbg !844
  call void @llvm.dbg.value(metadata ptr %.012, metadata !321, metadata !DIExpression()), !dbg !836
  call void @llvm.lifetime.start.p0(i64 144, ptr %4) #16, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %4, metadata !372, metadata !DIExpression()), !dbg !846
  %84 = call i32 @fileno(ptr noundef %.012), !dbg !847
  %85 = call i32 @"\01_fstat$INODE64"(i32 noundef %84, ptr noundef %4), !dbg !849
  %86 = icmp eq i32 %85, 0, !dbg !850
  br i1 %86, label %87, label %120, !dbg !851

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 1, !dbg !852
  %89 = load i16, ptr %88, align 4, !dbg !852, !tbaa !853
  %90 = zext i16 %89 to i32, !dbg !852
  %91 = and i32 %90, 61440, !dbg !852
  %92 = icmp eq i32 %91, 32768, !dbg !852
  br i1 %92, label %93, label %120, !dbg !858

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 11, !dbg !859
  %95 = load i64, ptr %94, align 8, !dbg !859, !tbaa !860
  %96 = sitofp i64 %95 to double, !dbg !861
  %97 = call double @physmem_available(), !dbg !862
  %98 = fdiv double %97, 2.000000e+00, !dbg !862
  %99 = fcmp olt double 0x4164000000000000, %98, !dbg !862
  br i1 %99, label %100, label %101, !dbg !862

100:                                              ; preds = %93
  br label %104, !dbg !862

101:                                              ; preds = %93
  %102 = call double @physmem_available(), !dbg !862
  %103 = fdiv double %102, 2.000000e+00, !dbg !862
  br label %104, !dbg !862

104:                                              ; preds = %101, %100
  %105 = phi double [ 0x4164000000000000, %100 ], [ %103, %101 ], !dbg !862
  %106 = fcmp ole double %96, %105, !dbg !863
  br i1 %106, label %107, label %120, !dbg !864

107:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 1, metadata !317, metadata !DIExpression()), !dbg !745
  call void @readtokens0_init(ptr noundef %3), !dbg !865
  %108 = call zeroext i1 @readtokens0(ptr noundef %.012, ptr noundef %3), !dbg !867
  br i1 %108, label %109, label %112, !dbg !869

109:                                              ; preds = %107
  %110 = call i32 @rpl_fclose(ptr noundef %.012), !dbg !870
  %111 = icmp ne i32 %110, 0, !dbg !871
  br i1 %111, label %112, label %114, !dbg !872

112:                                              ; preds = %109, %107
  %113 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %.010), !dbg !873
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.22, ptr noundef %113), !dbg !873
  unreachable, !dbg !873

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.Tokens, ptr %3, i32 0, i32 1, !dbg !874
  %116 = load ptr, ptr %115, align 8, !dbg !874, !tbaa !875
  call void @llvm.dbg.value(metadata ptr %116, metadata !187, metadata !DIExpression()), !dbg !745
  %117 = getelementptr inbounds %struct.Tokens, ptr %3, i32 0, i32 0, !dbg !878
  %118 = load i64, ptr %117, align 8, !dbg !878, !tbaa !879
  call void @llvm.dbg.value(metadata i64 %118, metadata !186, metadata !DIExpression()), !dbg !745
  %119 = call ptr @argv_iter_init_argv(ptr noundef %116), !dbg !880
  call void @llvm.dbg.value(metadata ptr %119, metadata !318, metadata !DIExpression()), !dbg !745
  br label %122, !dbg !881

120:                                              ; preds = %104, %87, %83
  call void @llvm.dbg.value(metadata ptr null, metadata !187, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i64 0, metadata !186, metadata !DIExpression()), !dbg !745
  %121 = call ptr @argv_iter_init_stream(ptr noundef %.012), !dbg !882
  call void @llvm.dbg.value(metadata ptr %121, metadata !318, metadata !DIExpression()), !dbg !745
  br label %122

122:                                              ; preds = %120, %114
  %.015 = phi ptr [ %119, %114 ], [ %121, %120 ], !dbg !884
  %.013 = phi i8 [ 1, %114 ], [ 0, %120 ], !dbg !745
  %.08 = phi ptr [ %116, %114 ], [ null, %120 ], !dbg !884
  %.06 = phi i64 [ %118, %114 ], [ 0, %120 ], !dbg !884
  call void @llvm.dbg.value(metadata i64 %.06, metadata !186, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata ptr %.08, metadata !187, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8 %.013, metadata !317, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata ptr %.015, metadata !318, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.end.p0(i64 144, ptr %4) #16, !dbg !885
  br label %143, !dbg !886

123:                                              ; preds = %57
  %124 = load i32, ptr @rpl_optind, align 4, !dbg !887, !tbaa !822
  %125 = icmp slt i32 %124, %0, !dbg !889
  br i1 %125, label %126, label %130, !dbg !887

126:                                              ; preds = %123
  %127 = load i32, ptr @rpl_optind, align 4, !dbg !890, !tbaa !822
  %128 = sext i32 %127 to i64, !dbg !891
  %129 = getelementptr inbounds ptr, ptr %1, i64 %128, !dbg !891
  br label %131, !dbg !887

130:                                              ; preds = %123
  br label %131, !dbg !887

131:                                              ; preds = %130, %126
  %132 = phi ptr [ %129, %126 ], [ @main.stdin_only, %130 ], !dbg !887
  call void @llvm.dbg.value(metadata ptr %132, metadata !187, metadata !DIExpression()), !dbg !745
  %133 = load i32, ptr @rpl_optind, align 4, !dbg !892, !tbaa !822
  %134 = icmp slt i32 %133, %0, !dbg !893
  br i1 %134, label %135, label %138, !dbg !892

135:                                              ; preds = %131
  %136 = load i32, ptr @rpl_optind, align 4, !dbg !894, !tbaa !822
  %137 = sub nsw i32 %0, %136, !dbg !895
  br label %139, !dbg !892

138:                                              ; preds = %131
  br label %139, !dbg !892

139:                                              ; preds = %138, %135
  %140 = phi i32 [ %137, %135 ], [ 1, %138 ], !dbg !892
  %141 = sext i32 %140 to i64, !dbg !896
  call void @llvm.dbg.value(metadata i64 %141, metadata !186, metadata !DIExpression()), !dbg !745
  %142 = call ptr @argv_iter_init_argv(ptr noundef %132), !dbg !897
  call void @llvm.dbg.value(metadata ptr %142, metadata !318, metadata !DIExpression()), !dbg !745
  br label %143

143:                                              ; preds = %139, %122
  %.116 = phi ptr [ %.015, %122 ], [ %142, %139 ], !dbg !898
  %.114 = phi i8 [ %.013, %122 ], [ 0, %139 ], !dbg !745
  %.19 = phi ptr [ %.08, %122 ], [ %132, %139 ], !dbg !898
  %.17 = phi i64 [ %.06, %122 ], [ %141, %139 ], !dbg !898
  call void @llvm.dbg.value(metadata i64 %.17, metadata !186, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata ptr %.19, metadata !187, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8 %.114, metadata !317, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata ptr %.116, metadata !318, metadata !DIExpression()), !dbg !745
  %144 = icmp ne ptr %.116, null, !dbg !899
  br i1 %144, label %146, label %145, !dbg !901

145:                                              ; preds = %143
  call void @xalloc_die() #15, !dbg !902
  unreachable, !dbg !902

146:                                              ; preds = %143
  %147 = call ptr @get_input_fstatus(i64 noundef %.17, ptr noundef %.19), !dbg !903
  call void @llvm.dbg.value(metadata ptr %147, metadata !189, metadata !DIExpression()), !dbg !745
  %148 = load i32, ptr @total_mode, align 4, !dbg !904, !tbaa !794
  %149 = icmp eq i32 %148, 2, !dbg !906
  br i1 %149, label %150, label %151, !dbg !907

150:                                              ; preds = %146
  store i32 1, ptr @number_width, align 4, !dbg !908, !tbaa !822
  br label %153, !dbg !909

151:                                              ; preds = %146
  %152 = call i32 @compute_number_width(i64 noundef %.17, ptr noundef %147) #18, !dbg !910
  store i32 %152, ptr @number_width, align 4, !dbg !911, !tbaa !822
  br label %153

153:                                              ; preds = %151, %150
  call void @llvm.dbg.value(metadata i8 1, metadata !183, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !912
  br label %154, !dbg !913

154:                                              ; preds = %213, %153
  %.05 = phi i32 [ 0, %153 ], [ %214, %213 ], !dbg !914
  %.03 = phi i8 [ 1, %153 ], [ %.2, %213 ], !dbg !745
  call void @llvm.dbg.value(metadata i8 %.03, metadata !183, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i32 %.05, metadata !373, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata i8 0, metadata !375, metadata !DIExpression()), !dbg !915
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #16, !dbg !916
  call void @llvm.dbg.declare(metadata ptr %5, metadata !378, metadata !DIExpression()), !dbg !917
  %155 = call ptr @argv_iter(ptr noundef %.116, ptr noundef %5), !dbg !918
  call void @llvm.dbg.value(metadata ptr %155, metadata !379, metadata !DIExpression()), !dbg !915
  %156 = icmp ne ptr %155, null, !dbg !919
  br i1 %156, label %166, label %157, !dbg !921

157:                                              ; preds = %154
  %158 = load i32, ptr %5, align 4, !dbg !922, !tbaa !794
  switch i32 %158, label %165 [
    i32 2, label %159
    i32 4, label %160
    i32 3, label %164
  ], !dbg !924

159:                                              ; preds = %157
  br label %211, !dbg !925

160:                                              ; preds = %157
  %161 = call ptr @__error(), !dbg !927
  %162 = load i32, ptr %161, align 4, !dbg !927, !tbaa !822
  %163 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %.010), !dbg !928
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %162, ptr noundef @.str.23, ptr noundef %163), !dbg !929
  call void @llvm.dbg.value(metadata i8 0, metadata !183, metadata !DIExpression()), !dbg !745
  br label %211, !dbg !930

164:                                              ; preds = %157
  call void @xalloc_die() #15, !dbg !931
  unreachable, !dbg !931

165:                                              ; preds = %157
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.24, i32 noundef 984, ptr noundef @.str.25) #19, !dbg !932
  unreachable, !dbg !932

166:                                              ; preds = %154
  %167 = icmp ne ptr %.010, null, !dbg !933
  br i1 %167, label %168, label %176, !dbg !935

168:                                              ; preds = %166
  %169 = call i32 @strcmp(ptr noundef %.010, ptr noundef @.str.19), !dbg !936
  %170 = icmp eq i32 %169, 0, !dbg !936
  br i1 %170, label %171, label %176, !dbg !937

171:                                              ; preds = %168
  %172 = call i32 @strcmp(ptr noundef %155, ptr noundef @.str.19), !dbg !938
  %173 = icmp eq i32 %172, 0, !dbg !938
  br i1 %173, label %174, label %176, !dbg !939

174:                                              ; preds = %171
  %175 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %155), !dbg !940
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.26, ptr noundef %175), !dbg !942
  call void @llvm.dbg.value(metadata i8 1, metadata !375, metadata !DIExpression()), !dbg !915
  br label %176, !dbg !943

176:                                              ; preds = %174, %171, %168, %166
  %.02 = phi i8 [ 1, %174 ], [ 0, %171 ], [ 0, %168 ], [ 0, %166 ], !dbg !915
  call void @llvm.dbg.value(metadata i8 %.02, metadata !375, metadata !DIExpression()), !dbg !915
  %177 = getelementptr inbounds i8, ptr %155, i64 0, !dbg !944
  %178 = load i8, ptr %177, align 1, !dbg !944, !tbaa !794
  %179 = icmp ne i8 %178, 0, !dbg !944
  br i1 %179, label %187, label %180, !dbg !945

180:                                              ; preds = %176
  %181 = icmp eq ptr %.010, null, !dbg !946
  br i1 %181, label %182, label %183, !dbg !947

182:                                              ; preds = %180
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.27, ptr noundef @.str.28), !dbg !948
  br label %186, !dbg !948

183:                                              ; preds = %180
  %184 = call i64 @argv_iter_n_args(ptr noundef %.116) #18, !dbg !949
  call void @llvm.dbg.value(metadata i64 %184, metadata !380, metadata !DIExpression()), !dbg !950
  %185 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %.010), !dbg !951
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.29, ptr noundef %185, i64 noundef %184, ptr noundef @.str.28), !dbg !952
  br label %186

186:                                              ; preds = %183, %182
  call void @llvm.dbg.value(metadata i8 1, metadata !375, metadata !DIExpression()), !dbg !915
  br label %187, !dbg !953

187:                                              ; preds = %186, %176
  %.1 = phi i8 [ %.02, %176 ], [ 1, %186 ], !dbg !915
  call void @llvm.dbg.value(metadata i8 %.1, metadata !375, metadata !DIExpression()), !dbg !915
  %188 = trunc i8 %.1 to i1, !dbg !954
  br i1 %188, label %189, label %190, !dbg !956

189:                                              ; preds = %187
  call void @llvm.dbg.value(metadata i8 0, metadata !183, metadata !DIExpression()), !dbg !745
  br label %205, !dbg !957

190:                                              ; preds = %187
  %191 = icmp ne i64 %.17, 0, !dbg !958
  br i1 %191, label %192, label %193, !dbg !958

192:                                              ; preds = %190
  br label %194, !dbg !958

193:                                              ; preds = %190
  br label %194, !dbg !958

194:                                              ; preds = %193, %192
  %195 = phi i32 [ %.05, %192 ], [ 0, %193 ], !dbg !958
  %196 = sext i32 %195 to i64, !dbg !959
  %197 = getelementptr inbounds %struct.fstatus, ptr %147, i64 %196, !dbg !959
  %198 = call zeroext i1 @wc_file(ptr noundef %155, ptr noundef %197), !dbg !960
  %199 = zext i1 %198 to i32, !dbg !960
  %200 = trunc i8 %.03 to i1, !dbg !961
  %201 = zext i1 %200 to i32, !dbg !961
  %202 = and i32 %201, %199, !dbg !961
  %203 = icmp ne i32 %202, 0, !dbg !961
  %204 = zext i1 %203 to i8, !dbg !961
  call void @llvm.dbg.value(metadata i8 %204, metadata !183, metadata !DIExpression()), !dbg !745
  br label %205

205:                                              ; preds = %194, %189
  %.14 = phi i8 [ 0, %189 ], [ %204, %194 ], !dbg !962
  call void @llvm.dbg.value(metadata i8 %.14, metadata !183, metadata !DIExpression()), !dbg !745
  %206 = icmp ne i64 %.17, 0, !dbg !963
  br i1 %206, label %210, label %207, !dbg !965

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.fstatus, ptr %147, i64 0, !dbg !966
  %209 = getelementptr inbounds %struct.fstatus, ptr %208, i32 0, i32 0, !dbg !967
  store i32 1, ptr %209, align 8, !dbg !968, !tbaa !969
  br label %210, !dbg !966

210:                                              ; preds = %207, %205
  br label %211, !dbg !971

211:                                              ; preds = %210, %160, %159
  %.2 = phi i8 [ %.14, %210 ], [ 0, %160 ], [ %.03, %159 ], !dbg !745
  %.01 = phi i32 [ 0, %210 ], [ 9, %160 ], [ 9, %159 ]
  call void @llvm.dbg.value(metadata i8 %.2, metadata !183, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #16, !dbg !971
  switch i32 %.01, label %215 [
    i32 0, label %212
  ]

212:                                              ; preds = %211
  br label %213, !dbg !972

213:                                              ; preds = %212
  %214 = add nsw i32 %.05, 1, !dbg !973
  call void @llvm.dbg.value(metadata i32 %214, metadata !373, metadata !DIExpression()), !dbg !912
  br label %154, !dbg !974, !llvm.loop !975

215:                                              ; preds = %211
  switch i32 %.01, label %283 [
    i32 9, label %216
  ]

216:                                              ; preds = %215
  call void @llvm.dbg.label(metadata !385), !dbg !978
  %217 = trunc i8 %.2 to i1, !dbg !979
  br i1 %217, label %218, label %232, !dbg !981

218:                                              ; preds = %216
  %219 = icmp ne ptr %.010, null, !dbg !982
  br i1 %219, label %232, label %220, !dbg !983

220:                                              ; preds = %218
  %221 = call i64 @argv_iter_n_args(ptr noundef %.116) #18, !dbg !984
  %222 = icmp eq i64 %221, 0, !dbg !985
  br i1 %222, label %223, label %232, !dbg !986

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.fstatus, ptr %147, i64 0, !dbg !987
  %225 = call zeroext i1 @wc_file(ptr noundef null, ptr noundef %224), !dbg !988
  %226 = zext i1 %225 to i32, !dbg !988
  %227 = trunc i8 %.2 to i1, !dbg !989
  %228 = zext i1 %227 to i32, !dbg !989
  %229 = and i32 %228, %226, !dbg !989
  %230 = icmp ne i32 %229, 0, !dbg !989
  %231 = zext i1 %230 to i8, !dbg !989
  call void @llvm.dbg.value(metadata i8 %231, metadata !183, metadata !DIExpression()), !dbg !745
  br label %232, !dbg !990

232:                                              ; preds = %223, %220, %218, %216
  %.3 = phi i8 [ %.2, %218 ], [ %231, %223 ], [ %.2, %220 ], [ %.2, %216 ], !dbg !745
  call void @llvm.dbg.value(metadata i8 %.3, metadata !183, metadata !DIExpression()), !dbg !745
  %233 = trunc i8 %.114 to i1, !dbg !991
  br i1 %233, label %234, label %235, !dbg !993

234:                                              ; preds = %232
  call void @readtokens0_free(ptr noundef %3), !dbg !994
  br label %235, !dbg !994

235:                                              ; preds = %234, %232
  %236 = load i32, ptr @total_mode, align 4, !dbg !995, !tbaa !794
  %237 = icmp ne i32 %236, 3, !dbg !997
  br i1 %237, label %238, label %270, !dbg !998

238:                                              ; preds = %235
  %239 = load i32, ptr @total_mode, align 4, !dbg !999, !tbaa !794
  %240 = icmp ne i32 %239, 0, !dbg !1000
  br i1 %240, label %244, label %241, !dbg !1001

241:                                              ; preds = %238
  %242 = call i64 @argv_iter_n_args(ptr noundef %.116) #18, !dbg !1002
  %243 = icmp ult i64 1, %242, !dbg !1003
  br i1 %243, label %244, label %270, !dbg !1004

244:                                              ; preds = %241, %238
  %245 = load i64, ptr @total_lines_overflow, align 8, !dbg !1005, !tbaa !754
  %246 = icmp ne i64 %245, 0, !dbg !1005
  br i1 %246, label %247, label %248, !dbg !1008

247:                                              ; preds = %244
  store i64 -1, ptr @total_lines, align 8, !dbg !1009, !tbaa !754
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 84, ptr noundef @.str.30), !dbg !1011
  call void @llvm.dbg.value(metadata i8 0, metadata !183, metadata !DIExpression()), !dbg !745
  br label %248, !dbg !1012

248:                                              ; preds = %247, %244
  %.4 = phi i8 [ 0, %247 ], [ %.3, %244 ], !dbg !745
  call void @llvm.dbg.value(metadata i8 %.4, metadata !183, metadata !DIExpression()), !dbg !745
  %249 = load i64, ptr @total_words_overflow, align 8, !dbg !1013, !tbaa !754
  %250 = icmp ne i64 %249, 0, !dbg !1013
  br i1 %250, label %251, label %252, !dbg !1015

251:                                              ; preds = %248
  store i64 -1, ptr @total_words, align 8, !dbg !1016, !tbaa !754
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 84, ptr noundef @.str.31), !dbg !1018
  call void @llvm.dbg.value(metadata i8 0, metadata !183, metadata !DIExpression()), !dbg !745
  br label %252, !dbg !1019

252:                                              ; preds = %251, %248
  %.5 = phi i8 [ 0, %251 ], [ %.4, %248 ], !dbg !1020
  call void @llvm.dbg.value(metadata i8 %.5, metadata !183, metadata !DIExpression()), !dbg !745
  %253 = load i64, ptr @total_chars_overflow, align 8, !dbg !1021, !tbaa !754
  %254 = icmp ne i64 %253, 0, !dbg !1021
  br i1 %254, label %255, label %256, !dbg !1023

255:                                              ; preds = %252
  store i64 -1, ptr @total_chars, align 8, !dbg !1024, !tbaa !754
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 84, ptr noundef @.str.32), !dbg !1026
  call void @llvm.dbg.value(metadata i8 0, metadata !183, metadata !DIExpression()), !dbg !745
  br label %256, !dbg !1027

256:                                              ; preds = %255, %252
  %.6 = phi i8 [ 0, %255 ], [ %.5, %252 ], !dbg !1020
  call void @llvm.dbg.value(metadata i8 %.6, metadata !183, metadata !DIExpression()), !dbg !745
  %257 = load i64, ptr @total_bytes_overflow, align 8, !dbg !1028, !tbaa !754
  %258 = icmp ne i64 %257, 0, !dbg !1028
  br i1 %258, label %259, label %260, !dbg !1030

259:                                              ; preds = %256
  store i64 -1, ptr @total_bytes, align 8, !dbg !1031, !tbaa !754
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 84, ptr noundef @.str.33), !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, metadata !183, metadata !DIExpression()), !dbg !745
  br label %260, !dbg !1034

260:                                              ; preds = %259, %256
  %.7 = phi i8 [ 0, %259 ], [ %.6, %256 ], !dbg !1020
  call void @llvm.dbg.value(metadata i8 %.7, metadata !183, metadata !DIExpression()), !dbg !745
  %261 = load i64, ptr @total_lines, align 8, !dbg !1035, !tbaa !754
  %262 = load i64, ptr @total_words, align 8, !dbg !1036, !tbaa !754
  %263 = load i64, ptr @total_chars, align 8, !dbg !1037, !tbaa !754
  %264 = load i64, ptr @total_bytes, align 8, !dbg !1038, !tbaa !754
  %265 = load i64, ptr @max_line_length, align 8, !dbg !1039, !tbaa !754
  %266 = load i32, ptr @total_mode, align 4, !dbg !1040, !tbaa !794
  %267 = icmp ne i32 %266, 2, !dbg !1041
  %268 = zext i1 %267 to i64, !dbg !1040
  %269 = select i1 %267, ptr @.str.34, ptr null, !dbg !1040
  call void @write_counts(i64 noundef %261, i64 noundef %262, i64 noundef %263, i64 noundef %264, i64 noundef %265, ptr noundef %269), !dbg !1042
  br label %270, !dbg !1043

270:                                              ; preds = %260, %241, %235
  %.8 = phi i8 [ %.7, %260 ], [ %.3, %241 ], [ %.3, %235 ], !dbg !745
  call void @llvm.dbg.value(metadata i8 %.8, metadata !183, metadata !DIExpression()), !dbg !745
  call void @argv_iter_free(ptr noundef %.116), !dbg !1044
  call void @rpl_free(ptr noundef %147), !dbg !1045
  %271 = load i8, ptr @have_read_stdin, align 1, !dbg !1046, !tbaa !761, !range !804, !noundef !662
  %272 = trunc i8 %271 to i1, !dbg !1046
  br i1 %272, label %273, label %279, !dbg !1048

273:                                              ; preds = %270
  %274 = call i32 @"\01_close"(i32 noundef 0), !dbg !1049
  %275 = icmp ne i32 %274, 0, !dbg !1050
  br i1 %275, label %276, label %279, !dbg !1051

276:                                              ; preds = %273
  %277 = call ptr @__error(), !dbg !1052
  %278 = load i32, ptr %277, align 4, !dbg !1052, !tbaa !822
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %278, ptr noundef @.str.19), !dbg !1052
  unreachable, !dbg !1052

279:                                              ; preds = %273, %270
  %280 = trunc i8 %.8 to i1, !dbg !1053
  %281 = zext i1 %280 to i64, !dbg !1053
  %282 = select i1 %280, i32 0, i32 1, !dbg !1053
  br label %283, !dbg !1054

283:                                              ; preds = %279, %215
  %.0 = phi i32 [ 0, %215 ], [ %282, %279 ]
  call void @llvm.lifetime.end.p0(i64 288, ptr %3) #16, !dbg !1055
  ret i32 %.0, !dbg !1055
}

declare !dbg !1056 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !1058 i32 @atexit(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1062 i32 @getpagesize() #8

declare !dbg !1066 i32 @setvbuf(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

declare !dbg !1070 ptr @getenv(ptr noundef) #2

declare !dbg !1073 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1077 i64 @__xargmatch_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #2

declare !dbg !1085 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !1089 ptr @quotearg_style(i32 noundef, ptr noundef) #2

declare !dbg !1092 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !1096 ptr @rpl_fopen(ptr noundef, ptr noundef) #2

declare !dbg !1100 ptr @__error() #2

declare !dbg !1104 i32 @fileno(ptr noundef) #2

declare !dbg !1107 i32 @"\01_fstat$INODE64"(i32 noundef, ptr noundef) #2

declare !dbg !1111 double @physmem_available() #2

declare !dbg !1116 void @readtokens0_init(ptr noundef) #2

declare !dbg !1120 zeroext i1 @readtokens0(ptr noundef, ptr noundef) #2

declare !dbg !1123 i32 @rpl_fclose(ptr noundef) #2

declare !dbg !1124 ptr @argv_iter_init_argv(ptr noundef) #2

declare !dbg !1127 ptr @argv_iter_init_stream(ptr noundef) #2

; Function Attrs: noreturn
declare !dbg !1130 void @xalloc_die() #4

; Function Attrs: nounwind ssp uwtable
define internal ptr @get_input_fstatus(i64 noundef %0, ptr noundef %1) #7 !dbg !1132 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1138, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata ptr %1, metadata !1139, metadata !DIExpression()), !dbg !1145
  %3 = icmp ne i64 %0, 0, !dbg !1146
  br i1 %3, label %4, label %5, !dbg !1146

4:                                                ; preds = %2
  br label %6, !dbg !1146

5:                                                ; preds = %2
  br label %6, !dbg !1146

6:                                                ; preds = %5, %4
  %7 = phi i64 [ %0, %4 ], [ 1, %5 ], !dbg !1146
  %8 = call noalias nonnull ptr @xnmalloc(i64 noundef %7, i64 noundef 152) #20, !dbg !1147
  call void @llvm.dbg.value(metadata ptr %8, metadata !1140, metadata !DIExpression()), !dbg !1145
  %9 = icmp eq i64 %0, 0, !dbg !1148
  br i1 %9, label %33, label %10, !dbg !1149

10:                                               ; preds = %6
  %11 = icmp eq i64 %0, 1, !dbg !1150
  br i1 %11, label %12, label %36, !dbg !1151

12:                                               ; preds = %10
  %13 = load i8, ptr @print_lines, align 1, !dbg !1152, !tbaa !761, !range !804, !noundef !662
  %14 = trunc i8 %13 to i1, !dbg !1152
  %15 = zext i1 %14 to i32, !dbg !1152
  %16 = load i8, ptr @print_words, align 1, !dbg !1153, !tbaa !761, !range !804, !noundef !662
  %17 = trunc i8 %16 to i1, !dbg !1153
  %18 = zext i1 %17 to i32, !dbg !1153
  %19 = add nsw i32 %15, %18, !dbg !1154
  %20 = load i8, ptr @print_chars, align 1, !dbg !1155, !tbaa !761, !range !804, !noundef !662
  %21 = trunc i8 %20 to i1, !dbg !1155
  %22 = zext i1 %21 to i32, !dbg !1155
  %23 = add nsw i32 %19, %22, !dbg !1156
  %24 = load i8, ptr @print_bytes, align 1, !dbg !1157, !tbaa !761, !range !804, !noundef !662
  %25 = trunc i8 %24 to i1, !dbg !1157
  %26 = zext i1 %25 to i32, !dbg !1157
  %27 = add nsw i32 %23, %26, !dbg !1158
  %28 = load i8, ptr @print_linelength, align 1, !dbg !1159, !tbaa !761, !range !804, !noundef !662
  %29 = trunc i8 %28 to i1, !dbg !1159
  %30 = zext i1 %29 to i32, !dbg !1159
  %31 = add nsw i32 %27, %30, !dbg !1160
  %32 = icmp eq i32 %31, 1, !dbg !1161
  br i1 %32, label %33, label %36, !dbg !1162

33:                                               ; preds = %12, %6
  %34 = getelementptr inbounds %struct.fstatus, ptr %8, i64 0, !dbg !1163
  %35 = getelementptr inbounds %struct.fstatus, ptr %34, i32 0, i32 0, !dbg !1164
  store i32 1, ptr %35, align 8, !dbg !1165, !tbaa !969
  br label %66, !dbg !1163

36:                                               ; preds = %12, %10
  call void @llvm.dbg.value(metadata i64 0, metadata !1141, metadata !DIExpression()), !dbg !1166
  br label %37, !dbg !1167

37:                                               ; preds = %63, %36
  %.0 = phi i64 [ 0, %36 ], [ %64, %63 ], !dbg !1168
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1141, metadata !DIExpression()), !dbg !1166
  %38 = icmp ult i64 %.0, %0, !dbg !1169
  br i1 %38, label %40, label %39, !dbg !1171

39:                                               ; preds = %37
  br label %65

40:                                               ; preds = %37
  %41 = getelementptr inbounds ptr, ptr %1, i64 %.0, !dbg !1172
  %42 = load ptr, ptr %41, align 8, !dbg !1172, !tbaa !633
  %43 = icmp ne ptr %42, null, !dbg !1172
  br i1 %43, label %44, label %49, !dbg !1173

44:                                               ; preds = %40
  %45 = getelementptr inbounds ptr, ptr %1, i64 %.0, !dbg !1174
  %46 = load ptr, ptr %45, align 8, !dbg !1174, !tbaa !633
  %47 = call i32 @strcmp(ptr noundef %46, ptr noundef @.str.19), !dbg !1174
  %48 = icmp eq i32 %47, 0, !dbg !1174
  br i1 %48, label %49, label %53, !dbg !1175

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.fstatus, ptr %8, i64 %.0, !dbg !1176
  %51 = getelementptr inbounds %struct.fstatus, ptr %50, i32 0, i32 1, !dbg !1177
  %52 = call i32 @"\01_fstat$INODE64"(i32 noundef 0, ptr noundef %51), !dbg !1178
  br label %59, !dbg !1175

53:                                               ; preds = %44
  %54 = getelementptr inbounds ptr, ptr %1, i64 %.0, !dbg !1179
  %55 = load ptr, ptr %54, align 8, !dbg !1179, !tbaa !633
  %56 = getelementptr inbounds %struct.fstatus, ptr %8, i64 %.0, !dbg !1179
  %57 = getelementptr inbounds %struct.fstatus, ptr %56, i32 0, i32 1, !dbg !1179
  %58 = call i32 @rpl_stat(ptr noundef %55, ptr noundef %57), !dbg !1179
  br label %59, !dbg !1175

59:                                               ; preds = %53, %49
  %60 = phi i32 [ %52, %49 ], [ %58, %53 ], !dbg !1175
  %61 = getelementptr inbounds %struct.fstatus, ptr %8, i64 %.0, !dbg !1180
  %62 = getelementptr inbounds %struct.fstatus, ptr %61, i32 0, i32 0, !dbg !1181
  store i32 %60, ptr %62, align 8, !dbg !1182, !tbaa !969
  br label %63, !dbg !1180

63:                                               ; preds = %59
  %64 = add i64 %.0, 1, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %64, metadata !1141, metadata !DIExpression()), !dbg !1166
  br label %37, !dbg !1184, !llvm.loop !1185

65:                                               ; preds = %39
  br label %66

66:                                               ; preds = %65, %33
  ret ptr %8, !dbg !1187
}

; Function Attrs: nounwind ssp willreturn memory(read) uwtable
define internal i32 @compute_number_width(i64 noundef %0, ptr noundef %1) #9 !dbg !1188 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1194, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr %1, metadata !1195, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i32 1, metadata !1196, metadata !DIExpression()), !dbg !1203
  %3 = icmp ult i64 0, %0, !dbg !1204
  br i1 %3, label %4, label %48, !dbg !1205

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fstatus, ptr %1, i64 0, !dbg !1206
  %6 = getelementptr inbounds %struct.fstatus, ptr %5, i32 0, i32 0, !dbg !1207
  %7 = load i32, ptr %6, align 8, !dbg !1207, !tbaa !969
  %8 = icmp sle i32 %7, 0, !dbg !1208
  br i1 %8, label %9, label %48, !dbg !1209

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !1197, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i64 0, metadata !1200, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i64 0, metadata !1201, metadata !DIExpression()), !dbg !1211
  br label %10, !dbg !1212

10:                                               ; preds = %35, %9
  %.05 = phi i32 [ 1, %9 ], [ %.27, %35 ], !dbg !1213
  %.01 = phi i64 [ 0, %9 ], [ %.2, %35 ], !dbg !1214
  %.0 = phi i64 [ 0, %9 ], [ %36, %35 ], !dbg !1215
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1201, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1200, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1197, metadata !DIExpression()), !dbg !1210
  %11 = icmp ult i64 %.0, %0, !dbg !1216
  br i1 %11, label %13, label %12, !dbg !1218

12:                                               ; preds = %10
  br label %37

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.fstatus, ptr %1, i64 %.0, !dbg !1219
  %15 = getelementptr inbounds %struct.fstatus, ptr %14, i32 0, i32 0, !dbg !1221
  %16 = load i32, ptr %15, align 8, !dbg !1221, !tbaa !969
  %17 = icmp ne i32 %16, 0, !dbg !1219
  br i1 %17, label %34, label %18, !dbg !1222

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.fstatus, ptr %1, i64 %.0, !dbg !1223
  %20 = getelementptr inbounds %struct.fstatus, ptr %19, i32 0, i32 1, !dbg !1223
  %21 = getelementptr inbounds %struct.stat, ptr %20, i32 0, i32 1, !dbg !1223
  %22 = load i16, ptr %21, align 4, !dbg !1223, !tbaa !1226
  %23 = zext i16 %22 to i32, !dbg !1223
  %24 = and i32 %23, 61440, !dbg !1223
  %25 = icmp eq i32 %24, 32768, !dbg !1223
  br i1 %25, label %26, label %32, !dbg !1227

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.fstatus, ptr %1, i64 %.0, !dbg !1228
  %28 = getelementptr inbounds %struct.fstatus, ptr %27, i32 0, i32 1, !dbg !1229
  %29 = getelementptr inbounds %struct.stat, ptr %28, i32 0, i32 11, !dbg !1230
  %30 = load i64, ptr %29, align 8, !dbg !1230, !tbaa !1231
  %31 = add i64 %.01, %30, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %31, metadata !1200, metadata !DIExpression()), !dbg !1210
  br label %33, !dbg !1233

32:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 7, metadata !1197, metadata !DIExpression()), !dbg !1210
  br label %33

33:                                               ; preds = %32, %26
  %.16 = phi i32 [ %.05, %26 ], [ 7, %32 ], !dbg !1210
  %.1 = phi i64 [ %31, %26 ], [ %.01, %32 ], !dbg !1210
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1200, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %.16, metadata !1197, metadata !DIExpression()), !dbg !1210
  br label %34, !dbg !1234

34:                                               ; preds = %33, %13
  %.27 = phi i32 [ %.05, %13 ], [ %.16, %33 ], !dbg !1213
  %.2 = phi i64 [ %.01, %13 ], [ %.1, %33 ], !dbg !1210
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1200, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %.27, metadata !1197, metadata !DIExpression()), !dbg !1210
  br label %35, !dbg !1221

35:                                               ; preds = %34
  %36 = add i64 %.0, 1, !dbg !1235
  call void @llvm.dbg.value(metadata i64 %36, metadata !1201, metadata !DIExpression()), !dbg !1211
  br label %10, !dbg !1236, !llvm.loop !1237

37:                                               ; preds = %12
  br label %38, !dbg !1239

38:                                               ; preds = %42, %37
  %.02 = phi i32 [ 1, %37 ], [ %41, %42 ], !dbg !1203
  %.3 = phi i64 [ %.01, %37 ], [ %43, %42 ], !dbg !1210
  call void @llvm.dbg.value(metadata i64 %.3, metadata !1200, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1196, metadata !DIExpression()), !dbg !1203
  %39 = icmp ule i64 10, %.3, !dbg !1240
  br i1 %39, label %40, label %44, !dbg !1243

40:                                               ; preds = %38
  %41 = add nsw i32 %.02, 1, !dbg !1244
  call void @llvm.dbg.value(metadata i32 %41, metadata !1196, metadata !DIExpression()), !dbg !1203
  br label %42, !dbg !1245

42:                                               ; preds = %40
  %43 = udiv i64 %.3, 10, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %43, metadata !1200, metadata !DIExpression()), !dbg !1210
  br label %38, !dbg !1247, !llvm.loop !1248

44:                                               ; preds = %38
  %45 = icmp slt i32 %.02, %.05, !dbg !1250
  br i1 %45, label %46, label %47, !dbg !1252

46:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1196, metadata !DIExpression()), !dbg !1203
  br label %47, !dbg !1253

47:                                               ; preds = %46, %44
  %.13 = phi i32 [ %.05, %46 ], [ %.02, %44 ], !dbg !1203
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1196, metadata !DIExpression()), !dbg !1203
  br label %48, !dbg !1254

48:                                               ; preds = %47, %4, %2
  %.24 = phi i32 [ %.13, %47 ], [ 1, %4 ], [ 1, %2 ], !dbg !1203
  call void @llvm.dbg.value(metadata i32 %.24, metadata !1196, metadata !DIExpression()), !dbg !1203
  ret i32 %.24, !dbg !1255
}

declare !dbg !1256 ptr @argv_iter(ptr noundef, ptr noundef) #2

declare !dbg !1260 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: cold noreturn
declare !dbg !1263 void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #10

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1267 i64 @argv_iter_n_args(ptr noundef) #11

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @wc_file(ptr noundef %0, ptr noundef %1) #7 !dbg !1272 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1276, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %1, metadata !1277, metadata !DIExpression()), !dbg !1284
  %3 = icmp ne ptr %0, null, !dbg !1285
  br i1 %3, label %4, label %7, !dbg !1286

4:                                                ; preds = %2
  %5 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.19), !dbg !1287
  %6 = icmp eq i32 %5, 0, !dbg !1287
  br i1 %6, label %7, label %9, !dbg !1288

7:                                                ; preds = %4, %2
  store i8 1, ptr @have_read_stdin, align 1, !dbg !1289, !tbaa !761
  call void @xset_binary_mode(i32 noundef 0, i32 noundef 0), !dbg !1291
  %8 = call zeroext i1 @wc(i32 noundef 0, ptr noundef %0, ptr noundef %1, i64 noundef -1), !dbg !1292
  br label %29, !dbg !1293

9:                                                ; preds = %4
  %10 = call i32 (ptr, i32, ...) @rpl_open(ptr noundef %0, i32 noundef 0), !dbg !1294
  call void @llvm.dbg.value(metadata i32 %10, metadata !1278, metadata !DIExpression()), !dbg !1295
  %11 = icmp eq i32 %10, -1, !dbg !1296
  br i1 %11, label %12, label %16, !dbg !1297

12:                                               ; preds = %9
  %13 = call ptr @__error(), !dbg !1298
  %14 = load i32, ptr %13, align 4, !dbg !1298, !tbaa !822
  %15 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0), !dbg !1300
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %14, ptr noundef @.str.27, ptr noundef %15), !dbg !1301
  br label %28, !dbg !1302

16:                                               ; preds = %9
  %17 = call zeroext i1 @wc(i32 noundef %10, ptr noundef %0, ptr noundef %1, i64 noundef 0), !dbg !1303
  %18 = zext i1 %17 to i8, !dbg !1304
  call void @llvm.dbg.value(metadata i8 %18, metadata !1281, metadata !DIExpression()), !dbg !1305
  %19 = call i32 @"\01_close"(i32 noundef %10), !dbg !1306
  %20 = icmp ne i32 %19, 0, !dbg !1308
  br i1 %20, label %21, label %25, !dbg !1309

21:                                               ; preds = %16
  %22 = call ptr @__error(), !dbg !1310
  %23 = load i32, ptr %22, align 4, !dbg !1310, !tbaa !822
  %24 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0), !dbg !1312
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %23, ptr noundef @.str.27, ptr noundef %24), !dbg !1313
  br label %27, !dbg !1314

25:                                               ; preds = %16
  %26 = trunc i8 %18 to i1, !dbg !1315
  br label %27, !dbg !1316

27:                                               ; preds = %25, %21
  %.0 = phi i1 [ false, %21 ], [ %26, %25 ], !dbg !1305
  br label %28

28:                                               ; preds = %27, %12
  %.1 = phi i1 [ false, %12 ], [ %.0, %27 ], !dbg !1317
  br label %29

29:                                               ; preds = %28, %7
  %.2 = phi i1 [ %8, %7 ], [ %.1, %28 ], !dbg !1318
  ret i1 %.2, !dbg !1319
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1320 void @readtokens0_free(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @write_counts(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #7 !dbg !597 {
  %7 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i64 %0, metadata !601, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %1, metadata !602, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %2, metadata !603, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %3, metadata !604, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %4, metadata !605, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr %5, metadata !606, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds (i8, ptr @write_counts.format_sp_int, i64 1), metadata !607, metadata !DIExpression()), !dbg !1321
  call void @llvm.lifetime.start.p0(i64 21, ptr %7) #16, !dbg !1322
  call void @llvm.dbg.declare(metadata ptr %7, metadata !608, metadata !DIExpression()), !dbg !1323
  %8 = load i8, ptr @print_lines, align 1, !dbg !1324, !tbaa !761, !range !804, !noundef !662
  %9 = trunc i8 %8 to i1, !dbg !1324
  br i1 %9, label %10, label %15, !dbg !1326

10:                                               ; preds = %6
  %11 = load i32, ptr @number_width, align 4, !dbg !1327, !tbaa !822
  %12 = getelementptr inbounds [21 x i8], ptr %7, i64 0, i64 0, !dbg !1329
  %13 = call ptr @umaxtostr(i64 noundef %0, ptr noundef %12), !dbg !1330
  %14 = call i32 (ptr, ...) @printf(ptr noundef getelementptr inbounds (i8, ptr @write_counts.format_sp_int, i64 1), i32 noundef %11, ptr noundef %13), !dbg !1331
  call void @llvm.dbg.value(metadata ptr @write_counts.format_sp_int, metadata !607, metadata !DIExpression()), !dbg !1321
  br label %15, !dbg !1332

15:                                               ; preds = %10, %6
  %.0 = phi ptr [ @write_counts.format_sp_int, %10 ], [ getelementptr inbounds (i8, ptr @write_counts.format_sp_int, i64 1), %6 ], !dbg !1321
  call void @llvm.dbg.value(metadata ptr %.0, metadata !607, metadata !DIExpression()), !dbg !1321
  %16 = load i8, ptr @print_words, align 1, !dbg !1333, !tbaa !761, !range !804, !noundef !662
  %17 = trunc i8 %16 to i1, !dbg !1333
  br i1 %17, label %18, label %23, !dbg !1335

18:                                               ; preds = %15
  %19 = load i32, ptr @number_width, align 4, !dbg !1336, !tbaa !822
  %20 = getelementptr inbounds [21 x i8], ptr %7, i64 0, i64 0, !dbg !1338
  %21 = call ptr @umaxtostr(i64 noundef %1, ptr noundef %20), !dbg !1339
  %22 = call i32 (ptr, ...) @printf(ptr noundef %.0, i32 noundef %19, ptr noundef %21), !dbg !1340
  call void @llvm.dbg.value(metadata ptr @write_counts.format_sp_int, metadata !607, metadata !DIExpression()), !dbg !1321
  br label %23, !dbg !1341

23:                                               ; preds = %18, %15
  %.1 = phi ptr [ @write_counts.format_sp_int, %18 ], [ %.0, %15 ], !dbg !1321
  call void @llvm.dbg.value(metadata ptr %.1, metadata !607, metadata !DIExpression()), !dbg !1321
  %24 = load i8, ptr @print_chars, align 1, !dbg !1342, !tbaa !761, !range !804, !noundef !662
  %25 = trunc i8 %24 to i1, !dbg !1342
  br i1 %25, label %26, label %31, !dbg !1344

26:                                               ; preds = %23
  %27 = load i32, ptr @number_width, align 4, !dbg !1345, !tbaa !822
  %28 = getelementptr inbounds [21 x i8], ptr %7, i64 0, i64 0, !dbg !1347
  %29 = call ptr @umaxtostr(i64 noundef %2, ptr noundef %28), !dbg !1348
  %30 = call i32 (ptr, ...) @printf(ptr noundef %.1, i32 noundef %27, ptr noundef %29), !dbg !1349
  call void @llvm.dbg.value(metadata ptr @write_counts.format_sp_int, metadata !607, metadata !DIExpression()), !dbg !1321
  br label %31, !dbg !1350

31:                                               ; preds = %26, %23
  %.2 = phi ptr [ @write_counts.format_sp_int, %26 ], [ %.1, %23 ], !dbg !1321
  call void @llvm.dbg.value(metadata ptr %.2, metadata !607, metadata !DIExpression()), !dbg !1321
  %32 = load i8, ptr @print_bytes, align 1, !dbg !1351, !tbaa !761, !range !804, !noundef !662
  %33 = trunc i8 %32 to i1, !dbg !1351
  br i1 %33, label %34, label %39, !dbg !1353

34:                                               ; preds = %31
  %35 = load i32, ptr @number_width, align 4, !dbg !1354, !tbaa !822
  %36 = getelementptr inbounds [21 x i8], ptr %7, i64 0, i64 0, !dbg !1356
  %37 = call ptr @umaxtostr(i64 noundef %3, ptr noundef %36), !dbg !1357
  %38 = call i32 (ptr, ...) @printf(ptr noundef %.2, i32 noundef %35, ptr noundef %37), !dbg !1358
  call void @llvm.dbg.value(metadata ptr @write_counts.format_sp_int, metadata !607, metadata !DIExpression()), !dbg !1321
  br label %39, !dbg !1359

39:                                               ; preds = %34, %31
  %.3 = phi ptr [ @write_counts.format_sp_int, %34 ], [ %.2, %31 ], !dbg !1321
  call void @llvm.dbg.value(metadata ptr %.3, metadata !607, metadata !DIExpression()), !dbg !1321
  %40 = load i8, ptr @print_linelength, align 1, !dbg !1360, !tbaa !761, !range !804, !noundef !662
  %41 = trunc i8 %40 to i1, !dbg !1360
  br i1 %41, label %42, label %47, !dbg !1362

42:                                               ; preds = %39
  %43 = load i32, ptr @number_width, align 4, !dbg !1363, !tbaa !822
  %44 = getelementptr inbounds [21 x i8], ptr %7, i64 0, i64 0, !dbg !1365
  %45 = call ptr @umaxtostr(i64 noundef %4, ptr noundef %44), !dbg !1366
  %46 = call i32 (ptr, ...) @printf(ptr noundef %.3, i32 noundef %43, ptr noundef %45), !dbg !1367
  br label %47, !dbg !1368

47:                                               ; preds = %42, %39
  %48 = icmp ne ptr %5, null, !dbg !1369
  br i1 %48, label %49, label %58, !dbg !1371

49:                                               ; preds = %47
  %50 = call ptr @strchr(ptr noundef %5, i32 noundef 10), !dbg !1372
  %51 = icmp ne ptr %50, null, !dbg !1372
  br i1 %51, label %52, label %54, !dbg !1372

52:                                               ; preds = %49
  %53 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %5), !dbg !1373
  br label %55, !dbg !1372

54:                                               ; preds = %49
  br label %55, !dbg !1372

55:                                               ; preds = %54, %52
  %56 = phi ptr [ %53, %52 ], [ %5, %54 ], !dbg !1372
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.70, ptr noundef %56), !dbg !1374
  br label %58, !dbg !1374

58:                                               ; preds = %55, %47
  %59 = load ptr, ptr @__stdoutp, align 8, !dbg !1375, !tbaa !633
  %60 = call i32 @putc_unlocked(i32 noundef 10, ptr noundef %59), !dbg !1375
  call void @llvm.lifetime.end.p0(i64 21, ptr %7) #16, !dbg !1376
  ret void, !dbg !1376
}

declare !dbg !1377 void @argv_iter_free(ptr noundef) #2

declare !dbg !1380 void @rpl_free(ptr noundef) #2

declare !dbg !1382 i32 @"\01_close"(i32 noundef) #2

declare !dbg !1385 ptr @umaxtostr(i64 noundef, ptr noundef) #2

declare !dbg !1389 ptr @strchr(ptr noundef, i32 noundef) #2

declare !dbg !1392 i32 @putc_unlocked(i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @xset_binary_mode(i32 noundef %0, i32 noundef %1) #3 !dbg !1395 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1400, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i32 %1, metadata !1401, metadata !DIExpression()), !dbg !1402
  %3 = call i32 @set_binary_mode(i32 noundef %0, i32 noundef %1), !dbg !1403
  %4 = icmp slt i32 %3, 0, !dbg !1405
  br i1 %4, label %5, label %6, !dbg !1406

5:                                                ; preds = %2
  call void @xset_binary_mode_error(), !dbg !1407
  br label %6, !dbg !1407

6:                                                ; preds = %5, %2
  ret void, !dbg !1408
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @wc(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #7 !dbg !1409 {
  %5 = alloca [16385 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.__mbstate_t, align 8
  %9 = alloca %union.__mbstate_t, align 8
  %10 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1413, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata ptr %1, metadata !1414, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata ptr %2, metadata !1415, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %3, metadata !1416, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 1, metadata !1417, metadata !DIExpression()), !dbg !1483
  call void @llvm.lifetime.start.p0(i64 16385, ptr %5) #16, !dbg !1484
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1418, metadata !DIExpression()), !dbg !1485
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #16, !dbg !1486
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #16, !dbg !1486
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1426, metadata !DIExpression()), !dbg !1488
  %11 = icmp ne ptr %1, null, !dbg !1489
  br i1 %11, label %12, label %13, !dbg !1489

12:                                               ; preds = %4
  br label %14, !dbg !1489

13:                                               ; preds = %4
  br label %14, !dbg !1489

14:                                               ; preds = %13, %12
  %15 = phi ptr [ %1, %12 ], [ @.str.66, %13 ], !dbg !1489
  call void @llvm.dbg.value(metadata ptr %15, metadata !1431, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 0, metadata !1427, metadata !DIExpression()), !dbg !1483
  store i64 0, ptr %7, align 8, !dbg !1490, !tbaa !754
  call void @llvm.dbg.value(metadata i64 0, metadata !1425, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 0, metadata !1424, metadata !DIExpression()), !dbg !1483
  store i64 0, ptr %6, align 8, !dbg !1491, !tbaa !754
  %16 = call i32 @___mb_cur_max(), !dbg !1492
  %17 = icmp sgt i32 %16, 1, !dbg !1494
  br i1 %17, label %18, label %25, !dbg !1495

18:                                               ; preds = %14
  %19 = load i8, ptr @print_bytes, align 1, !dbg !1496, !tbaa !761, !range !804, !noundef !662
  %20 = trunc i8 %19 to i1, !dbg !1496
  %21 = zext i1 %20 to i8, !dbg !1498
  call void @llvm.dbg.value(metadata i8 %21, metadata !1428, metadata !DIExpression()), !dbg !1483
  %22 = load i8, ptr @print_chars, align 1, !dbg !1499, !tbaa !761, !range !804, !noundef !662
  %23 = trunc i8 %22 to i1, !dbg !1499
  %24 = zext i1 %23 to i8, !dbg !1500
  call void @llvm.dbg.value(metadata i8 %24, metadata !1429, metadata !DIExpression()), !dbg !1483
  br label %34, !dbg !1501

25:                                               ; preds = %14
  %26 = load i8, ptr @print_bytes, align 1, !dbg !1502, !tbaa !761, !range !804, !noundef !662
  %27 = trunc i8 %26 to i1, !dbg !1502
  br i1 %27, label %31, label %28, !dbg !1504

28:                                               ; preds = %25
  %29 = load i8, ptr @print_chars, align 1, !dbg !1505, !tbaa !761, !range !804, !noundef !662
  %30 = trunc i8 %29 to i1, !dbg !1505
  br label %31, !dbg !1504

31:                                               ; preds = %28, %25
  %32 = phi i1 [ true, %25 ], [ %30, %28 ]
  %33 = zext i1 %32 to i8, !dbg !1506
  call void @llvm.dbg.value(metadata i8 %33, metadata !1428, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 0, metadata !1429, metadata !DIExpression()), !dbg !1483
  br label %34

34:                                               ; preds = %31, %18
  %.058 = phi i8 [ %24, %18 ], [ 0, %31 ], !dbg !1507
  %.057 = phi i8 [ %21, %18 ], [ %33, %31 ], !dbg !1507
  call void @llvm.dbg.value(metadata i8 %.057, metadata !1428, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.058, metadata !1429, metadata !DIExpression()), !dbg !1483
  %35 = load i8, ptr @print_words, align 1, !dbg !1508, !tbaa !761, !range !804, !noundef !662
  %36 = trunc i8 %35 to i1, !dbg !1508
  br i1 %36, label %40, label %37, !dbg !1509

37:                                               ; preds = %34
  %38 = load i8, ptr @print_linelength, align 1, !dbg !1510, !tbaa !761, !range !804, !noundef !662
  %39 = trunc i8 %38 to i1, !dbg !1510
  br label %40, !dbg !1509

40:                                               ; preds = %37, %34
  %41 = phi i1 [ true, %34 ], [ %39, %37 ]
  %42 = zext i1 %41 to i8, !dbg !1511
  call void @llvm.dbg.value(metadata i8 %42, metadata !1430, metadata !DIExpression()), !dbg !1483
  %43 = trunc i8 %.057 to i1, !dbg !1512
  br i1 %43, label %44, label %51, !dbg !1514

44:                                               ; preds = %40
  %45 = trunc i8 %.058 to i1, !dbg !1515
  br i1 %45, label %51, label %46, !dbg !1516

46:                                               ; preds = %44
  %47 = load i8, ptr @print_lines, align 1, !dbg !1517, !tbaa !761, !range !804, !noundef !662
  %48 = trunc i8 %47 to i1, !dbg !1517
  br i1 %48, label %51, label %49, !dbg !1518

49:                                               ; preds = %46
  %50 = trunc i8 %42 to i1, !dbg !1519
  br i1 %50, label %51, label %52, !dbg !1520

51:                                               ; preds = %49, %46, %44, %40
  call void @fdadvise(i32 noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1), !dbg !1521
  br label %52, !dbg !1521

52:                                               ; preds = %51, %49
  %53 = trunc i8 %.057 to i1, !dbg !1522
  br i1 %53, label %54, label %158, !dbg !1523

54:                                               ; preds = %52
  %55 = trunc i8 %.058 to i1, !dbg !1524
  br i1 %55, label %158, label %56, !dbg !1525

56:                                               ; preds = %54
  %57 = load i8, ptr @print_lines, align 1, !dbg !1526, !tbaa !761, !range !804, !noundef !662
  %58 = trunc i8 %57 to i1, !dbg !1526
  br i1 %58, label %158, label %59, !dbg !1527

59:                                               ; preds = %56
  %60 = trunc i8 %42 to i1, !dbg !1528
  br i1 %60, label %158, label %61, !dbg !1529

61:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i8 0, metadata !1432, metadata !DIExpression()), !dbg !1530
  %62 = getelementptr inbounds %struct.fstatus, ptr %2, i32 0, i32 0, !dbg !1531
  %63 = load i32, ptr %62, align 8, !dbg !1531, !tbaa !969
  %64 = icmp slt i32 0, %63, !dbg !1533
  br i1 %64, label %65, label %69, !dbg !1534

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.fstatus, ptr %2, i32 0, i32 1, !dbg !1535
  %67 = call i32 @"\01_fstat$INODE64"(i32 noundef %0, ptr noundef %66), !dbg !1536
  %68 = getelementptr inbounds %struct.fstatus, ptr %2, i32 0, i32 0, !dbg !1537
  store i32 %67, ptr %68, align 8, !dbg !1538, !tbaa !969
  br label %69, !dbg !1539

69:                                               ; preds = %65, %61
  %70 = getelementptr inbounds %struct.fstatus, ptr %2, i32 0, i32 0, !dbg !1540
  %71 = load i32, ptr %70, align 8, !dbg !1540, !tbaa !969
  %72 = icmp ne i32 %71, 0, !dbg !1541
  br i1 %72, label %140, label %73, !dbg !1542

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.fstatus, ptr %2, i32 0, i32 1, !dbg !1543
  %75 = call zeroext i1 @usable_st_size(ptr noundef %74), !dbg !1544
  br i1 %75, label %76, label %140, !dbg !1545

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.fstatus, ptr %2, i32 0, i32 1, !dbg !1546
  %78 = getelementptr inbounds %struct.stat, ptr %77, i32 0, i32 11, !dbg !1547
  %79 = load i64, ptr %78, align 8, !dbg !1547, !tbaa !1231
  %80 = icmp sle i64 0, %79, !dbg !1548
  br i1 %80, label %81, label %140, !dbg !1549

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.fstatus, ptr %2, i32 0, i32 1, !dbg !1550
  %83 = getelementptr inbounds %struct.stat, ptr %82, i32 0, i32 11, !dbg !1551
  %84 = load i64, ptr %83, align 8, !dbg !1551, !tbaa !1231
  call void @llvm.dbg.value(metadata i64 %84, metadata !1435, metadata !DIExpression()), !dbg !1552
  %85 = icmp slt i64 %3, 0, !dbg !1553
  br i1 %85, label %86, label %88, !dbg !1555

86:                                               ; preds = %81
  %87 = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %87, metadata !1416, metadata !DIExpression()), !dbg !1483
  br label %88, !dbg !1557

88:                                               ; preds = %86, %81
  %.08 = phi i64 [ %87, %86 ], [ %3, %81 ]
  call void @llvm.dbg.value(metadata i64 %.08, metadata !1416, metadata !DIExpression()), !dbg !1483
  %89 = load i64, ptr @page_size, align 8, !dbg !1558, !tbaa !754
  %90 = urem i64 %84, %89, !dbg !1559
  %91 = icmp ne i64 %90, 0, !dbg !1559
  br i1 %91, label %92, label %108, !dbg !1560

92:                                               ; preds = %88
  %93 = icmp slt i64 %84, %.08, !dbg !1561
  br i1 %93, label %94, label %95, !dbg !1563

94:                                               ; preds = %92
  br label %97, !dbg !1563

95:                                               ; preds = %92
  %96 = sub nsw i64 %84, %.08, !dbg !1564
  br label %97, !dbg !1563

97:                                               ; preds = %95, %94
  %98 = phi i64 [ 0, %94 ], [ %96, %95 ], !dbg !1563
  store i64 %98, ptr %7, align 8, !dbg !1565, !tbaa !754
  %99 = load i64, ptr %7, align 8, !dbg !1566, !tbaa !754
  %100 = icmp ne i64 %99, 0, !dbg !1566
  br i1 %100, label %101, label %106, !dbg !1568

101:                                              ; preds = %97
  %102 = load i64, ptr %7, align 8, !dbg !1569, !tbaa !754
  %103 = call i64 @lseek(i32 noundef %0, i64 noundef %102, i32 noundef 1), !dbg !1570
  %104 = icmp sle i64 0, %103, !dbg !1571
  br i1 %104, label %105, label %106, !dbg !1572

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i8 1, metadata !1432, metadata !DIExpression()), !dbg !1530
  br label %107, !dbg !1573

106:                                              ; preds = %101, %97
  store i64 0, ptr %7, align 8, !dbg !1574, !tbaa !754
  br label %107

107:                                              ; preds = %106, %105
  %.062 = phi i8 [ 1, %105 ], [ 0, %106 ], !dbg !1530
  call void @llvm.dbg.value(metadata i8 %.062, metadata !1432, metadata !DIExpression()), !dbg !1530
  br label %139, !dbg !1575

108:                                              ; preds = %88
  %109 = getelementptr inbounds %struct.fstatus, ptr %2, i32 0, i32 1, !dbg !1576
  %110 = getelementptr inbounds %struct.stat, ptr %109, i32 0, i32 13, !dbg !1576
  %111 = load i32, ptr %110, align 8, !dbg !1576, !tbaa !1577
  %112 = icmp slt i32 0, %111, !dbg !1576
  br i1 %112, label %113, label %123, !dbg !1576

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.fstatus, ptr %2, i32 0, i32 1, !dbg !1576
  %115 = getelementptr inbounds %struct.stat, ptr %114, i32 0, i32 13, !dbg !1576
  %116 = load i32, ptr %115, align 8, !dbg !1576, !tbaa !1577
  %117 = sext i32 %116 to i64, !dbg !1576
  %118 = icmp ule i64 %117, 2305843009213693952, !dbg !1576
  br i1 %118, label %119, label %123, !dbg !1576

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.fstatus, ptr %2, i32 0, i32 1, !dbg !1576
  %121 = getelementptr inbounds %struct.stat, ptr %120, i32 0, i32 13, !dbg !1576
  %122 = load i32, ptr %121, align 8, !dbg !1576, !tbaa !1577
  br label %124, !dbg !1576

123:                                              ; preds = %113, %108
  br label %124, !dbg !1576

124:                                              ; preds = %123, %119
  %125 = phi i32 [ %122, %119 ], [ 512, %123 ], !dbg !1576
  %126 = add nsw i32 %125, 1, !dbg !1578
  %127 = sext i32 %126 to i64, !dbg !1579
  %128 = srem i64 %84, %127, !dbg !1580
  %129 = sub nsw i64 %84, %128, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %129, metadata !1438, metadata !DIExpression()), !dbg !1582
  %130 = icmp sle i64 0, %.08, !dbg !1583
  br i1 %130, label %131, label %138, !dbg !1585

131:                                              ; preds = %124
  %132 = icmp slt i64 %.08, %129, !dbg !1586
  br i1 %132, label %133, label %138, !dbg !1587

133:                                              ; preds = %131
  %134 = call i64 @lseek(i32 noundef %0, i64 noundef %129, i32 noundef 1), !dbg !1588
  %135 = icmp sle i64 0, %134, !dbg !1589
  br i1 %135, label %136, label %138, !dbg !1590

136:                                              ; preds = %133
  %137 = sub nsw i64 %129, %.08, !dbg !1591
  store i64 %137, ptr %7, align 8, !dbg !1592, !tbaa !754
  br label %138, !dbg !1593

138:                                              ; preds = %136, %133, %131, %124
  br label %139

139:                                              ; preds = %138, %107
  %.163 = phi i8 [ %.062, %107 ], [ 0, %138 ], !dbg !1530
  call void @llvm.dbg.value(metadata i8 %.163, metadata !1432, metadata !DIExpression()), !dbg !1530
  br label %140, !dbg !1594

140:                                              ; preds = %139, %76, %73, %69
  %.264 = phi i8 [ 0, %69 ], [ %.163, %139 ], [ 0, %76 ], [ 0, %73 ], !dbg !1530
  call void @llvm.dbg.value(metadata i8 %.264, metadata !1432, metadata !DIExpression()), !dbg !1530
  %141 = trunc i8 %.264 to i1, !dbg !1595
  br i1 %141, label %157, label %142, !dbg !1597

142:                                              ; preds = %140
  call void @fdadvise(i32 noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1), !dbg !1598
  br label %143, !dbg !1600

143:                                              ; preds = %153, %142
  %144 = getelementptr inbounds [16385 x i8], ptr %5, i64 0, i64 0, !dbg !1601
  %145 = call i64 @safe_read(i32 noundef %0, ptr noundef %144, i64 noundef 16384), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %145, metadata !1422, metadata !DIExpression()), !dbg !1483
  %146 = icmp ugt i64 %145, 0, !dbg !1603
  br i1 %146, label %147, label %156, !dbg !1600

147:                                              ; preds = %143
  %148 = icmp eq i64 %145, -1, !dbg !1604
  br i1 %148, label %149, label %153, !dbg !1607

149:                                              ; preds = %147
  %150 = call ptr @__error(), !dbg !1608
  %151 = load i32, ptr %150, align 4, !dbg !1608, !tbaa !822
  %152 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %15), !dbg !1610
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %151, ptr noundef @.str.27, ptr noundef %152), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1417, metadata !DIExpression()), !dbg !1483
  br label %156, !dbg !1612

153:                                              ; preds = %147
  %154 = load i64, ptr %7, align 8, !dbg !1613, !tbaa !754
  %155 = add i64 %154, %145, !dbg !1613
  store i64 %155, ptr %7, align 8, !dbg !1613, !tbaa !754
  br label %143, !dbg !1600, !llvm.loop !1614

156:                                              ; preds = %149, %143
  %.09 = phi i8 [ 0, %149 ], [ 1, %143 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.09, metadata !1417, metadata !DIExpression()), !dbg !1483
  br label %157, !dbg !1616

157:                                              ; preds = %156, %140
  %.110 = phi i8 [ 1, %140 ], [ %.09, %156 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.110, metadata !1417, metadata !DIExpression()), !dbg !1483
  br label %386, !dbg !1617

158:                                              ; preds = %59, %56, %54, %52
  %159 = trunc i8 %.058 to i1, !dbg !1618
  br i1 %159, label %169, label %160, !dbg !1619

160:                                              ; preds = %158
  %161 = trunc i8 %42 to i1, !dbg !1620
  br i1 %161, label %169, label %162, !dbg !1621

162:                                              ; preds = %160
  %163 = call zeroext i1 @avx2_supported(), !dbg !1622
  br i1 %163, label %164, label %165, !dbg !1625

164:                                              ; preds = %162
  store ptr @wc_lines_avx2, ptr @wc_lines_p, align 8, !dbg !1626, !tbaa !633
  br label %165, !dbg !1627

165:                                              ; preds = %164, %162
  %166 = load ptr, ptr @wc_lines_p, align 8, !dbg !1628, !tbaa !633
  %167 = call zeroext i1 %166(ptr noundef %15, i32 noundef %0, ptr noundef %6, ptr noundef %7), !dbg !1628
  %168 = zext i1 %167 to i8, !dbg !1629
  call void @llvm.dbg.value(metadata i8 %168, metadata !1417, metadata !DIExpression()), !dbg !1483
  br label %385, !dbg !1630

169:                                              ; preds = %160, %158
  %170 = call i32 @___mb_cur_max(), !dbg !1631
  %171 = icmp sgt i32 %170, 1, !dbg !1632
  br i1 %171, label %172, label %308, !dbg !1633

172:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 0, metadata !1441, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 0, metadata !1445, metadata !DIExpression()), !dbg !1634
  call void @llvm.lifetime.start.p0(i64 128, ptr %8) #16, !dbg !1635
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1446, metadata !DIExpression()), !dbg !1636
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 128, i1 false), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1458, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 0, metadata !1459, metadata !DIExpression()), !dbg !1634
  br label %173, !dbg !1637

173:                                              ; preds = %300, %172
  %.097 = phi i64 [ 0, %172 ], [ %.198, %300 ], !dbg !1638
  %.091 = phi i8 [ 0, %172 ], [ %.596, %300 ], !dbg !1639
  %.079 = phi i64 [ 0, %172 ], [ %.1089, %300 ], !dbg !1640
  %.071 = phi i8 [ 0, %172 ], [ %.677, %300 ], !dbg !1641
  %.043 = phi i64 [ 0, %172 ], [ %.649, %300 ], !dbg !1642
  %.034 = phi i64 [ 0, %172 ], [ %.337, %300 ], !dbg !1643
  %.022 = phi i64 [ 0, %172 ], [ %.426, %300 ], !dbg !1644
  %.211 = phi i8 [ 1, %172 ], [ %.312, %300 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.211, metadata !1417, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.022, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.034, metadata !1425, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.043, metadata !1427, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.071, metadata !1441, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.079, metadata !1445, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %.091, metadata !1458, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.097, metadata !1459, metadata !DIExpression()), !dbg !1634
  %174 = getelementptr inbounds [16385 x i8], ptr %5, i64 0, i64 0, !dbg !1645
  %175 = getelementptr inbounds i8, ptr %174, i64 %.097, !dbg !1646
  %176 = sub i64 16384, %.097, !dbg !1647
  %177 = call i64 @safe_read(i32 noundef %0, ptr noundef %175, i64 noundef %176), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %177, metadata !1422, metadata !DIExpression()), !dbg !1483
  %178 = icmp ugt i64 %177, 0, !dbg !1649
  br i1 %178, label %179, label %301, !dbg !1637

179:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 128, ptr %9) #16, !dbg !1650
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1462, metadata !DIExpression()), !dbg !1651
  %180 = icmp eq i64 %177, -1, !dbg !1652
  br i1 %180, label %181, label %185, !dbg !1654

181:                                              ; preds = %179
  %182 = call ptr @__error(), !dbg !1655
  %183 = load i32, ptr %182, align 4, !dbg !1655, !tbaa !822
  %184 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %15), !dbg !1657
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %183, ptr noundef @.str.27, ptr noundef %184), !dbg !1658
  call void @llvm.dbg.value(metadata i8 0, metadata !1417, metadata !DIExpression()), !dbg !1483
  br label %299, !dbg !1659

185:                                              ; preds = %179
  %186 = load i64, ptr %7, align 8, !dbg !1660, !tbaa !754
  %187 = add i64 %186, %177, !dbg !1660
  store i64 %187, ptr %7, align 8, !dbg !1660, !tbaa !754
  %188 = getelementptr inbounds [16385 x i8], ptr %5, i64 0, i64 0, !dbg !1661
  call void @llvm.dbg.value(metadata ptr %188, metadata !1460, metadata !DIExpression()), !dbg !1662
  %189 = add i64 %177, %.097, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %189, metadata !1422, metadata !DIExpression()), !dbg !1483
  br label %190, !dbg !1664

190:                                              ; preds = %287, %185
  %.192 = phi i8 [ %.091, %185 ], [ %.495, %287 ], !dbg !1634
  %.180 = phi i64 [ %.079, %185 ], [ %.988, %287 ], !dbg !1640
  %.172 = phi i8 [ %.071, %185 ], [ %.576, %287 ], !dbg !1641
  %.068 = phi ptr [ %188, %185 ], [ %.169, %287 ], !dbg !1665
  %.144 = phi i64 [ %.043, %185 ], [ %.548, %287 ], !dbg !1642
  %.135 = phi i64 [ %.034, %185 ], [ %.236, %287 ], !dbg !1643
  %.123 = phi i64 [ %.022, %185 ], [ %.325, %287 ], !dbg !1644
  %.017 = phi i64 [ %189, %185 ], [ %.118, %287 ], !dbg !1663
  call void @llvm.dbg.value(metadata i64 %.017, metadata !1422, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.123, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.135, metadata !1425, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.144, metadata !1427, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata ptr %.068, metadata !1460, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %.172, metadata !1441, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.180, metadata !1445, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %.192, metadata !1458, metadata !DIExpression()), !dbg !1634
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #16, !dbg !1666
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1463, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 1, metadata !1467, metadata !DIExpression()), !dbg !1668
  %191 = trunc i8 %.192 to i1, !dbg !1669
  br i1 %191, label %198, label %192, !dbg !1671

192:                                              ; preds = %190
  %193 = load i8, ptr %.068, align 1, !dbg !1672, !tbaa !794
  %194 = call zeroext i1 @is_basic(i8 noundef signext %193), !dbg !1673
  br i1 %194, label %195, label %198, !dbg !1674

195:                                              ; preds = %192
  call void @llvm.dbg.value(metadata i64 1, metadata !1466, metadata !DIExpression()), !dbg !1668
  %196 = load i8, ptr %.068, align 1, !dbg !1675, !tbaa !794
  %197 = sext i8 %196 to i32, !dbg !1675
  store i32 %197, ptr %10, align 4, !dbg !1677, !tbaa !822
  call void @llvm.dbg.value(metadata i8 0, metadata !1467, metadata !DIExpression()), !dbg !1668
  br label %215, !dbg !1678

198:                                              ; preds = %192, %190
  call void @llvm.dbg.value(metadata i8 1, metadata !1458, metadata !DIExpression()), !dbg !1634
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %8, i64 128, i1 false), !dbg !1679, !tbaa.struct !1681
  %199 = call i64 @mbrtowc(ptr noundef %10, ptr noundef %.068, i64 noundef %.017, ptr noundef %8), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %199, metadata !1466, metadata !DIExpression()), !dbg !1668
  %200 = icmp eq i64 %199, -2, !dbg !1684
  br i1 %200, label %201, label %202, !dbg !1686

201:                                              ; preds = %198
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 128, i1 false), !dbg !1687, !tbaa.struct !1681
  br label %285, !dbg !1689

202:                                              ; preds = %198
  %203 = icmp eq i64 %199, -1, !dbg !1690
  br i1 %203, label %204, label %207, !dbg !1692

204:                                              ; preds = %202
  %205 = getelementptr inbounds i8, ptr %.068, i32 1, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %205, metadata !1460, metadata !DIExpression()), !dbg !1662
  %206 = add i64 %.017, -1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %206, metadata !1422, metadata !DIExpression()), !dbg !1483
  br label %285, !dbg !1696

207:                                              ; preds = %202
  %208 = call i32 @mbsinit(ptr noundef %8), !dbg !1697
  %209 = icmp ne i32 %208, 0, !dbg !1697
  br i1 %209, label %210, label %211, !dbg !1699

210:                                              ; preds = %207
  call void @llvm.dbg.value(metadata i8 0, metadata !1458, metadata !DIExpression()), !dbg !1634
  br label %211, !dbg !1700

211:                                              ; preds = %210, %207
  %.293 = phi i8 [ 0, %210 ], [ 1, %207 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8 %.293, metadata !1458, metadata !DIExpression()), !dbg !1634
  %212 = icmp eq i64 %199, 0, !dbg !1702
  br i1 %212, label %213, label %214, !dbg !1704

213:                                              ; preds = %211
  store i32 0, ptr %10, align 4, !dbg !1705, !tbaa !822
  call void @llvm.dbg.value(metadata i64 1, metadata !1466, metadata !DIExpression()), !dbg !1668
  br label %214, !dbg !1707

214:                                              ; preds = %213, %211
  %.060 = phi i64 [ 1, %213 ], [ %199, %211 ], !dbg !1701
  call void @llvm.dbg.value(metadata i64 %.060, metadata !1466, metadata !DIExpression()), !dbg !1668
  br label %215

215:                                              ; preds = %214, %195
  %.394 = phi i8 [ %.293, %214 ], [ %.192, %195 ], !dbg !1634
  %.161 = phi i64 [ %.060, %214 ], [ 1, %195 ], !dbg !1708
  %.059 = phi i8 [ 1, %214 ], [ 0, %195 ], !dbg !1668
  call void @llvm.dbg.value(metadata i8 %.059, metadata !1467, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %.161, metadata !1466, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8 %.394, metadata !1458, metadata !DIExpression()), !dbg !1634
  %216 = load i32, ptr %10, align 4, !dbg !1709, !tbaa !822
  switch i32 %216, label %235 [
    i32 10, label %217
    i32 13, label %220
    i32 12, label %220
    i32 9, label %224
    i32 32, label %228
    i32 11, label %230
  ], !dbg !1710

217:                                              ; preds = %215
  %218 = load i64, ptr %6, align 8, !dbg !1711, !tbaa !754
  %219 = add i64 %218, 1, !dbg !1711
  store i64 %219, ptr %6, align 8, !dbg !1711, !tbaa !754
  br label %220, !dbg !1712

220:                                              ; preds = %217, %215, %215
  %221 = icmp ugt i64 %.180, %.144, !dbg !1713
  br i1 %221, label %222, label %223, !dbg !1715

222:                                              ; preds = %220
  call void @llvm.dbg.value(metadata i64 %.180, metadata !1427, metadata !DIExpression()), !dbg !1483
  br label %223, !dbg !1716

223:                                              ; preds = %222, %220
  %.245 = phi i64 [ %.180, %222 ], [ %.144, %220 ], !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.245, metadata !1427, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 0, metadata !1445, metadata !DIExpression()), !dbg !1634
  br label %231, !dbg !1717

224:                                              ; preds = %215
  %225 = urem i64 %.180, 8, !dbg !1718
  %226 = sub i64 8, %225, !dbg !1719
  %227 = add i64 %.180, %226, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %227, metadata !1445, metadata !DIExpression()), !dbg !1634
  br label %231, !dbg !1721

228:                                              ; preds = %215
  %229 = add i64 %.180, 1, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %229, metadata !1445, metadata !DIExpression()), !dbg !1634
  br label %230, !dbg !1723

230:                                              ; preds = %228, %215
  %.281 = phi i64 [ %.180, %215 ], [ %229, %228 ], !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.281, metadata !1445, metadata !DIExpression()), !dbg !1634
  br label %231, !dbg !1723

231:                                              ; preds = %277, %260, %230, %224, %223
  %.382 = phi i64 [ %.584, %260 ], [ %271, %277 ], [ %.281, %230 ], [ %227, %224 ], [ 0, %223 ], !dbg !1634
  %.346 = phi i64 [ %.144, %260 ], [ %.144, %277 ], [ %.144, %230 ], [ %.144, %224 ], [ %.245, %223 ], !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.346, metadata !1427, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.382, metadata !1445, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.label(metadata !1479), !dbg !1724
  %232 = trunc i8 %.172 to i1, !dbg !1725
  %233 = zext i1 %232 to i64, !dbg !1725
  %234 = add i64 %.123, %233, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %234, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 0, metadata !1441, metadata !DIExpression()), !dbg !1634
  br label %281, !dbg !1727

235:                                              ; preds = %215
  %236 = trunc i8 %.059 to i1, !dbg !1728
  br i1 %236, label %237, label %262, !dbg !1729

237:                                              ; preds = %235
  %238 = load i32, ptr %10, align 4, !dbg !1730, !tbaa !822
  %239 = call i32 @iswprint(i32 noundef %238), !dbg !1731
  %240 = icmp ne i32 %239, 0, !dbg !1731
  br i1 %240, label %241, label %262, !dbg !1732

241:                                              ; preds = %237
  %242 = load i8, ptr @print_linelength, align 1, !dbg !1733, !tbaa !761, !range !804, !noundef !662
  %243 = trunc i8 %242 to i1, !dbg !1733
  br i1 %243, label %244, label %252, !dbg !1734

244:                                              ; preds = %241
  %245 = load i32, ptr %10, align 4, !dbg !1735, !tbaa !822
  %246 = call i32 @rpl_wcwidth(i32 noundef %245) #18, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %246, metadata !1468, metadata !DIExpression()), !dbg !1737
  %247 = icmp sgt i32 %246, 0, !dbg !1738
  br i1 %247, label %248, label %251, !dbg !1740

248:                                              ; preds = %244
  %249 = sext i32 %246 to i64, !dbg !1741
  %250 = add i64 %.180, %249, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %250, metadata !1445, metadata !DIExpression()), !dbg !1634
  br label %251, !dbg !1743

251:                                              ; preds = %248, %244
  %.483 = phi i64 [ %250, %248 ], [ %.180, %244 ], !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.483, metadata !1445, metadata !DIExpression()), !dbg !1634
  br label %252, !dbg !1744

252:                                              ; preds = %251, %241
  %.584 = phi i64 [ %.483, %251 ], [ %.180, %241 ], !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.584, metadata !1445, metadata !DIExpression()), !dbg !1634
  %253 = load i32, ptr %10, align 4, !dbg !1745, !tbaa !822
  %254 = call i32 @iswspace(i32 noundef %253), !dbg !1747
  %255 = icmp ne i32 %254, 0, !dbg !1747
  br i1 %255, label %260, label %256, !dbg !1748

256:                                              ; preds = %252
  %257 = load i32, ptr %10, align 4, !dbg !1749, !tbaa !822
  %258 = call i32 @iswnbspace(i32 noundef %257) #18, !dbg !1750
  %259 = icmp ne i32 %258, 0, !dbg !1750
  br i1 %259, label %260, label %261, !dbg !1751

260:                                              ; preds = %256, %252
  br label %231, !dbg !1752

261:                                              ; preds = %256
  call void @llvm.dbg.value(metadata i8 1, metadata !1441, metadata !DIExpression()), !dbg !1634
  br label %280, !dbg !1753

262:                                              ; preds = %237, %235
  %263 = trunc i8 %.059 to i1, !dbg !1754
  br i1 %263, label %279, label %264, !dbg !1756

264:                                              ; preds = %262
  %265 = load i8, ptr %.068, align 1, !dbg !1757, !tbaa !794
  %266 = call zeroext i8 @to_uchar(i8 noundef signext %265), !dbg !1758
  %267 = zext i8 %266 to i32, !dbg !1758
  %268 = call i32 @isprint(i32 noundef %267) #18, !dbg !1759
  %269 = icmp ne i32 %268, 0, !dbg !1759
  br i1 %269, label %270, label %279, !dbg !1760

270:                                              ; preds = %264
  %271 = add i64 %.180, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %271, metadata !1445, metadata !DIExpression()), !dbg !1634
  %272 = load i8, ptr %.068, align 1, !dbg !1763, !tbaa !794
  %273 = call zeroext i8 @to_uchar(i8 noundef signext %272), !dbg !1765
  %274 = zext i8 %273 to i32, !dbg !1765
  %275 = call i32 @isspace(i32 noundef %274) #18, !dbg !1766
  %276 = icmp ne i32 %275, 0, !dbg !1766
  br i1 %276, label %277, label %278, !dbg !1767

277:                                              ; preds = %270
  br label %231, !dbg !1768

278:                                              ; preds = %270
  call void @llvm.dbg.value(metadata i8 1, metadata !1441, metadata !DIExpression()), !dbg !1634
  br label %279, !dbg !1769

279:                                              ; preds = %278, %264, %262
  %.685 = phi i64 [ %.180, %262 ], [ %271, %278 ], [ %.180, %264 ], !dbg !1634
  %.273 = phi i8 [ %.172, %262 ], [ 1, %278 ], [ %.172, %264 ], !dbg !1634
  call void @llvm.dbg.value(metadata i8 %.273, metadata !1441, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.685, metadata !1445, metadata !DIExpression()), !dbg !1634
  br label %280

280:                                              ; preds = %279, %261
  %.786 = phi i64 [ %.584, %261 ], [ %.685, %279 ], !dbg !1634
  %.374 = phi i8 [ 1, %261 ], [ %.273, %279 ], !dbg !1634
  call void @llvm.dbg.value(metadata i8 %.374, metadata !1441, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.786, metadata !1445, metadata !DIExpression()), !dbg !1634
  br label %281, !dbg !1770

281:                                              ; preds = %280, %231
  %.887 = phi i64 [ %.382, %231 ], [ %.786, %280 ], !dbg !1742
  %.475 = phi i8 [ 0, %231 ], [ %.374, %280 ], !dbg !1771
  %.447 = phi i64 [ %.346, %231 ], [ %.144, %280 ], !dbg !1642
  %.224 = phi i64 [ %234, %231 ], [ %.123, %280 ], !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.224, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.447, metadata !1427, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.475, metadata !1441, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.887, metadata !1445, metadata !DIExpression()), !dbg !1634
  %282 = getelementptr inbounds i8, ptr %.068, i64 %.161, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %282, metadata !1460, metadata !DIExpression()), !dbg !1662
  %283 = sub i64 %.017, %.161, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %283, metadata !1422, metadata !DIExpression()), !dbg !1483
  %284 = add i64 %.135, 1, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %284, metadata !1425, metadata !DIExpression()), !dbg !1483
  br label %285, !dbg !1775

285:                                              ; preds = %281, %204, %201
  %.495 = phi i8 [ 1, %201 ], [ 1, %204 ], [ %.394, %281 ], !dbg !1701
  %.988 = phi i64 [ %.180, %201 ], [ %.180, %204 ], [ %.887, %281 ], !dbg !1634
  %.576 = phi i8 [ %.172, %201 ], [ %.172, %204 ], [ %.475, %281 ], !dbg !1634
  %.169 = phi ptr [ %.068, %201 ], [ %205, %204 ], [ %282, %281 ], !dbg !1662
  %.065 = phi i32 [ 6, %201 ], [ 7, %204 ], [ 0, %281 ]
  %.548 = phi i64 [ %.144, %201 ], [ %.144, %204 ], [ %.447, %281 ], !dbg !1642
  %.236 = phi i64 [ %.135, %201 ], [ %.135, %204 ], [ %284, %281 ], !dbg !1483
  %.325 = phi i64 [ %.123, %201 ], [ %.123, %204 ], [ %.224, %281 ], !dbg !1483
  %.118 = phi i64 [ %.017, %201 ], [ %206, %204 ], [ %283, %281 ], !dbg !1662
  call void @llvm.dbg.value(metadata i64 %.118, metadata !1422, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.325, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.236, metadata !1425, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.548, metadata !1427, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata ptr %.169, metadata !1460, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %.576, metadata !1441, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.988, metadata !1445, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %.495, metadata !1458, metadata !DIExpression()), !dbg !1634
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #16, !dbg !1775
  switch i32 %.065, label %433 [
    i32 0, label %286
    i32 6, label %289
    i32 7, label %287
  ]

286:                                              ; preds = %285
  br label %287, !dbg !1776

287:                                              ; preds = %286, %285
  %288 = icmp ugt i64 %.118, 0, !dbg !1777
  br i1 %288, label %190, label %289, !dbg !1776, !llvm.loop !1778

289:                                              ; preds = %287, %285
  %290 = icmp ugt i64 %.118, 0, !dbg !1780
  br i1 %290, label %291, label %298, !dbg !1782

291:                                              ; preds = %289
  %292 = icmp eq i64 %.118, 16384, !dbg !1783
  br i1 %292, label %293, label %296, !dbg !1786

293:                                              ; preds = %291
  %294 = getelementptr inbounds i8, ptr %.169, i32 1, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %294, metadata !1460, metadata !DIExpression()), !dbg !1662
  %295 = add i64 %.118, -1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %295, metadata !1422, metadata !DIExpression()), !dbg !1483
  br label %296, !dbg !1790

296:                                              ; preds = %293, %291
  %.270 = phi ptr [ %294, %293 ], [ %.169, %291 ], !dbg !1662
  %.219 = phi i64 [ %295, %293 ], [ %.118, %291 ], !dbg !1662
  call void @llvm.dbg.value(metadata i64 %.219, metadata !1422, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata ptr %.270, metadata !1460, metadata !DIExpression()), !dbg !1662
  %297 = getelementptr inbounds [16385 x i8], ptr %5, i64 0, i64 0, !dbg !1791
  call void @llvm.memmove.p0.p0.i64(ptr align 16 %297, ptr align 1 %.270, i64 %.219, i1 false), !dbg !1791
  br label %298, !dbg !1792

298:                                              ; preds = %296, %289
  %.320 = phi i64 [ %.219, %296 ], [ %.118, %289 ], !dbg !1662
  call void @llvm.dbg.value(metadata i64 %.320, metadata !1422, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.320, metadata !1459, metadata !DIExpression()), !dbg !1634
  br label %299, !dbg !1793

299:                                              ; preds = %298, %181
  %.198 = phi i64 [ %.097, %181 ], [ %.320, %298 ], !dbg !1634
  %.596 = phi i8 [ %.091, %181 ], [ %.495, %298 ], !dbg !1634
  %.1089 = phi i64 [ %.079, %181 ], [ %.988, %298 ], !dbg !1640
  %.677 = phi i8 [ %.071, %181 ], [ %.576, %298 ], !dbg !1641
  %.166 = phi i32 [ 5, %181 ], [ 0, %298 ]
  %.649 = phi i64 [ %.043, %181 ], [ %.548, %298 ], !dbg !1642
  %.337 = phi i64 [ %.034, %181 ], [ %.236, %298 ], !dbg !1643
  %.426 = phi i64 [ %.022, %181 ], [ %.325, %298 ], !dbg !1644
  %.312 = phi i8 [ 0, %181 ], [ %.211, %298 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.312, metadata !1417, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.426, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.337, metadata !1425, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.649, metadata !1427, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.677, metadata !1441, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.1089, metadata !1445, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %.596, metadata !1458, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.198, metadata !1459, metadata !DIExpression()), !dbg !1634
  call void @llvm.lifetime.end.p0(i64 128, ptr %9) #16, !dbg !1793
  switch i32 %.166, label %433 [
    i32 0, label %300
    i32 5, label %301
  ]

300:                                              ; preds = %299
  br label %173, !dbg !1637, !llvm.loop !1794

301:                                              ; preds = %299, %173
  %.1190 = phi i64 [ %.1089, %299 ], [ %.079, %173 ], !dbg !1640
  %.778 = phi i8 [ %.677, %299 ], [ %.071, %173 ], !dbg !1641
  %.750 = phi i64 [ %.649, %299 ], [ %.043, %173 ], !dbg !1642
  %.438 = phi i64 [ %.337, %299 ], [ %.034, %173 ], !dbg !1643
  %.527 = phi i64 [ %.426, %299 ], [ %.022, %173 ], !dbg !1644
  %.413 = phi i8 [ %.312, %299 ], [ %.211, %173 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.413, metadata !1417, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.527, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.438, metadata !1425, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.750, metadata !1427, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.778, metadata !1441, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %.1190, metadata !1445, metadata !DIExpression()), !dbg !1634
  %302 = icmp ugt i64 %.1190, %.750, !dbg !1795
  br i1 %302, label %303, label %304, !dbg !1797

303:                                              ; preds = %301
  call void @llvm.dbg.value(metadata i64 %.1190, metadata !1427, metadata !DIExpression()), !dbg !1483
  br label %304, !dbg !1798

304:                                              ; preds = %303, %301
  %.851 = phi i64 [ %.1190, %303 ], [ %.750, %301 ], !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.851, metadata !1427, metadata !DIExpression()), !dbg !1483
  %305 = trunc i8 %.778 to i1, !dbg !1799
  %306 = zext i1 %305 to i64, !dbg !1799
  %307 = add i64 %.527, %306, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %307, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.lifetime.end.p0(i64 128, ptr %8) #16, !dbg !1801
  br label %384, !dbg !1802

308:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 0, metadata !1474, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 0, metadata !1476, metadata !DIExpression()), !dbg !1803
  br label %309, !dbg !1804

309:                                              ; preds = %376, %308
  %.952 = phi i64 [ 0, %308 ], [ %.14, %376 ], !dbg !1642
  %.628 = phi i64 [ 0, %308 ], [ %.931, %376 ], !dbg !1644
  %.514 = phi i8 [ 1, %308 ], [ %.615, %376 ], !dbg !1483
  %.02 = phi i8 [ 0, %308 ], [ %.46, %376 ], !dbg !1805
  %.01 = phi i64 [ 0, %308 ], [ %.6, %376 ], !dbg !1806
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1476, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %.02, metadata !1474, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %.514, metadata !1417, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.628, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.952, metadata !1427, metadata !DIExpression()), !dbg !1483
  %310 = getelementptr inbounds [16385 x i8], ptr %5, i64 0, i64 0, !dbg !1807
  %311 = call i64 @safe_read(i32 noundef %0, ptr noundef %310, i64 noundef 16384), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %311, metadata !1422, metadata !DIExpression()), !dbg !1483
  %312 = icmp ugt i64 %311, 0, !dbg !1809
  br i1 %312, label %313, label %377, !dbg !1804

313:                                              ; preds = %309
  %314 = getelementptr inbounds [16385 x i8], ptr %5, i64 0, i64 0, !dbg !1810
  call void @llvm.dbg.value(metadata ptr %314, metadata !1477, metadata !DIExpression()), !dbg !1811
  %315 = icmp eq i64 %311, -1, !dbg !1812
  br i1 %315, label %316, label %320, !dbg !1814

316:                                              ; preds = %313
  %317 = call ptr @__error(), !dbg !1815
  %318 = load i32, ptr %317, align 4, !dbg !1815, !tbaa !822
  %319 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %15), !dbg !1817
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %318, ptr noundef @.str.27, ptr noundef %319), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1417, metadata !DIExpression()), !dbg !1483
  br label %375, !dbg !1819

320:                                              ; preds = %313
  %321 = load i64, ptr %7, align 8, !dbg !1820, !tbaa !754
  %322 = add i64 %321, %311, !dbg !1820
  store i64 %322, ptr %7, align 8, !dbg !1820, !tbaa !754
  br label %323, !dbg !1821

323:                                              ; preds = %371, %320
  %.1053 = phi i64 [ %.952, %320 ], [ %.1356, %371 ], !dbg !1642
  %.729 = phi i64 [ %.628, %320 ], [ %.830, %371 ], !dbg !1483
  %.421 = phi i64 [ %311, %320 ], [ %372, %371 ], !dbg !1803
  %.13 = phi i8 [ %.02, %320 ], [ %.35, %371 ], !dbg !1803
  %.1 = phi i64 [ %.01, %320 ], [ %.5, %371 ], !dbg !1803
  %.0 = phi ptr [ %314, %320 ], [ %324, %371 ], !dbg !1811
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1477, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1476, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %.13, metadata !1474, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %.421, metadata !1422, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.729, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.1053, metadata !1427, metadata !DIExpression()), !dbg !1483
  %324 = getelementptr inbounds i8, ptr %.0, i32 1, !dbg !1822
  call void @llvm.dbg.value(metadata ptr %324, metadata !1477, metadata !DIExpression()), !dbg !1811
  %325 = load i8, ptr %.0, align 1, !dbg !1823, !tbaa !794
  %326 = sext i8 %325 to i32, !dbg !1823
  switch i32 %326, label %345 [
    i32 10, label %327
    i32 13, label %330
    i32 12, label %330
    i32 9, label %334
    i32 32, label %338
    i32 11, label %340
  ], !dbg !1824

327:                                              ; preds = %323
  %328 = load i64, ptr %6, align 8, !dbg !1825, !tbaa !754
  %329 = add i64 %328, 1, !dbg !1825
  store i64 %329, ptr %6, align 8, !dbg !1825, !tbaa !754
  br label %330, !dbg !1826

330:                                              ; preds = %327, %323, %323
  %331 = icmp ugt i64 %.1, %.1053, !dbg !1827
  br i1 %331, label %332, label %333, !dbg !1829

332:                                              ; preds = %330
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1427, metadata !DIExpression()), !dbg !1483
  br label %333, !dbg !1830

333:                                              ; preds = %332, %330
  %.1154 = phi i64 [ %.1, %332 ], [ %.1053, %330 ], !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.1154, metadata !1427, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 0, metadata !1476, metadata !DIExpression()), !dbg !1803
  br label %341, !dbg !1831

334:                                              ; preds = %323
  %335 = urem i64 %.1, 8, !dbg !1832
  %336 = sub i64 8, %335, !dbg !1833
  %337 = add i64 %.1, %336, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %337, metadata !1476, metadata !DIExpression()), !dbg !1803
  br label %341, !dbg !1835

338:                                              ; preds = %323
  %339 = add i64 %.1, 1, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %339, metadata !1476, metadata !DIExpression()), !dbg !1803
  br label %340, !dbg !1837

340:                                              ; preds = %338, %323
  %.2 = phi i64 [ %.1, %323 ], [ %339, %338 ], !dbg !1803
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1476, metadata !DIExpression()), !dbg !1803
  br label %341, !dbg !1837

341:                                              ; preds = %367, %340, %334, %333
  %.1255 = phi i64 [ %.1053, %367 ], [ %.1053, %340 ], [ %.1053, %334 ], [ %.1154, %333 ], !dbg !1483
  %.3 = phi i64 [ %353, %367 ], [ %.2, %340 ], [ %337, %334 ], [ 0, %333 ], !dbg !1803
  call void @llvm.dbg.value(metadata i64 %.3, metadata !1476, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %.1255, metadata !1427, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.label(metadata !1480), !dbg !1838
  %342 = trunc i8 %.13 to i1, !dbg !1839
  %343 = zext i1 %342 to i64, !dbg !1839
  %344 = add i64 %.729, %343, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %344, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 0, metadata !1474, metadata !DIExpression()), !dbg !1803
  br label %370, !dbg !1841

345:                                              ; preds = %323
  %346 = getelementptr inbounds i8, ptr %324, i64 -1, !dbg !1842
  %347 = load i8, ptr %346, align 1, !dbg !1842, !tbaa !794
  %348 = call zeroext i8 @to_uchar(i8 noundef signext %347), !dbg !1844
  %349 = zext i8 %348 to i32, !dbg !1844
  %350 = call i32 @isprint(i32 noundef %349) #18, !dbg !1845
  %351 = icmp ne i32 %350, 0, !dbg !1845
  br i1 %351, label %352, label %369, !dbg !1846

352:                                              ; preds = %345
  %353 = add i64 %.1, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %353, metadata !1476, metadata !DIExpression()), !dbg !1803
  %354 = getelementptr inbounds i8, ptr %324, i64 -1, !dbg !1849
  %355 = load i8, ptr %354, align 1, !dbg !1849, !tbaa !794
  %356 = call zeroext i8 @to_uchar(i8 noundef signext %355), !dbg !1851
  %357 = zext i8 %356 to i32, !dbg !1851
  %358 = call i32 @isspace(i32 noundef %357) #18, !dbg !1852
  %359 = icmp ne i32 %358, 0, !dbg !1852
  br i1 %359, label %367, label %360, !dbg !1853

360:                                              ; preds = %352
  %361 = getelementptr inbounds i8, ptr %324, i64 -1, !dbg !1854
  %362 = load i8, ptr %361, align 1, !dbg !1854, !tbaa !794
  %363 = call zeroext i8 @to_uchar(i8 noundef signext %362), !dbg !1855
  %364 = zext i8 %363 to i32, !dbg !1855
  %365 = call i32 @isnbspace(i32 noundef %364), !dbg !1856
  %366 = icmp ne i32 %365, 0, !dbg !1856
  br i1 %366, label %367, label %368, !dbg !1857

367:                                              ; preds = %360, %352
  br label %341, !dbg !1858

368:                                              ; preds = %360
  call void @llvm.dbg.value(metadata i8 1, metadata !1474, metadata !DIExpression()), !dbg !1803
  br label %369, !dbg !1859

369:                                              ; preds = %368, %345
  %.24 = phi i8 [ 1, %368 ], [ %.13, %345 ], !dbg !1803
  %.4 = phi i64 [ %353, %368 ], [ %.1, %345 ], !dbg !1803
  call void @llvm.dbg.value(metadata i64 %.4, metadata !1476, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %.24, metadata !1474, metadata !DIExpression()), !dbg !1803
  br label %370, !dbg !1860

370:                                              ; preds = %369, %341
  %.1356 = phi i64 [ %.1255, %341 ], [ %.1053, %369 ], !dbg !1642
  %.830 = phi i64 [ %344, %341 ], [ %.729, %369 ], !dbg !1483
  %.35 = phi i8 [ 0, %341 ], [ %.24, %369 ], !dbg !1861
  %.5 = phi i64 [ %.3, %341 ], [ %.4, %369 ], !dbg !1847
  call void @llvm.dbg.value(metadata i64 %.5, metadata !1476, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %.35, metadata !1474, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %.830, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.1356, metadata !1427, metadata !DIExpression()), !dbg !1483
  br label %371, !dbg !1862

371:                                              ; preds = %370
  %372 = add i64 %.421, -1, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %372, metadata !1422, metadata !DIExpression()), !dbg !1483
  %373 = icmp ne i64 %372, 0, !dbg !1862
  br i1 %373, label %323, label %374, !dbg !1862, !llvm.loop !1864

374:                                              ; preds = %371
  br label %375, !dbg !1866

375:                                              ; preds = %374, %316
  %.267 = phi i32 [ 11, %316 ], [ 0, %374 ]
  %.14 = phi i64 [ %.952, %316 ], [ %.1356, %374 ], !dbg !1642
  %.931 = phi i64 [ %.628, %316 ], [ %.830, %374 ], !dbg !1483
  %.615 = phi i8 [ 0, %316 ], [ %.514, %374 ], !dbg !1483
  %.46 = phi i8 [ %.02, %316 ], [ %.35, %374 ], !dbg !1803
  %.6 = phi i64 [ %.01, %316 ], [ %.5, %374 ], !dbg !1803
  call void @llvm.dbg.value(metadata i64 %.6, metadata !1476, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %.46, metadata !1474, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %.615, metadata !1417, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.931, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.14, metadata !1427, metadata !DIExpression()), !dbg !1483
  switch i32 %.267, label %433 [
    i32 0, label %376
    i32 11, label %377
  ]

376:                                              ; preds = %375
  br label %309, !dbg !1804, !llvm.loop !1867

377:                                              ; preds = %375, %309
  %.15 = phi i64 [ %.14, %375 ], [ %.952, %309 ], !dbg !1642
  %.1032 = phi i64 [ %.931, %375 ], [ %.628, %309 ], !dbg !1644
  %.716 = phi i8 [ %.615, %375 ], [ %.514, %309 ], !dbg !1483
  %.57 = phi i8 [ %.46, %375 ], [ %.02, %309 ], !dbg !1805
  %.7 = phi i64 [ %.6, %375 ], [ %.01, %309 ], !dbg !1806
  call void @llvm.dbg.value(metadata i64 %.7, metadata !1476, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %.57, metadata !1474, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %.716, metadata !1417, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.1032, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1427, metadata !DIExpression()), !dbg !1483
  %378 = icmp ugt i64 %.7, %.15, !dbg !1868
  br i1 %378, label %379, label %380, !dbg !1870

379:                                              ; preds = %377
  call void @llvm.dbg.value(metadata i64 %.7, metadata !1427, metadata !DIExpression()), !dbg !1483
  br label %380, !dbg !1871

380:                                              ; preds = %379, %377
  %.16 = phi i64 [ %.7, %379 ], [ %.15, %377 ], !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.16, metadata !1427, metadata !DIExpression()), !dbg !1483
  %381 = trunc i8 %.57 to i1, !dbg !1872
  %382 = zext i1 %381 to i64, !dbg !1872
  %383 = add i64 %.1032, %382, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %383, metadata !1424, metadata !DIExpression()), !dbg !1483
  br label %384

384:                                              ; preds = %380, %304
  %.17 = phi i64 [ %.851, %304 ], [ %.16, %380 ], !dbg !1874
  %.539 = phi i64 [ %.438, %304 ], [ 0, %380 ], !dbg !1643
  %.11 = phi i64 [ %307, %304 ], [ %383, %380 ], !dbg !1874
  %.8 = phi i8 [ %.413, %304 ], [ %.716, %380 ], !dbg !1874
  call void @llvm.dbg.value(metadata i8 %.8, metadata !1417, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.11, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.539, metadata !1425, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.17, metadata !1427, metadata !DIExpression()), !dbg !1483
  br label %385

385:                                              ; preds = %384, %165
  %.18 = phi i64 [ %.17, %384 ], [ 0, %165 ], !dbg !1483
  %.640 = phi i64 [ %.539, %384 ], [ 0, %165 ], !dbg !1643
  %.12 = phi i64 [ %.11, %384 ], [ 0, %165 ], !dbg !1483
  %.9 = phi i8 [ %.8, %384 ], [ %168, %165 ], !dbg !1875
  call void @llvm.dbg.value(metadata i8 %.9, metadata !1417, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.12, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.640, metadata !1425, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.18, metadata !1427, metadata !DIExpression()), !dbg !1483
  br label %386

386:                                              ; preds = %385, %157
  %.19 = phi i64 [ %.18, %385 ], [ 0, %157 ], !dbg !1483
  %.741 = phi i64 [ %.640, %385 ], [ 0, %157 ], !dbg !1643
  %.1333 = phi i64 [ %.12, %385 ], [ 0, %157 ], !dbg !1483
  %.10 = phi i8 [ %.9, %385 ], [ %.110, %157 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.10, metadata !1417, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.1333, metadata !1424, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.741, metadata !1425, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.19, metadata !1427, metadata !DIExpression()), !dbg !1483
  %387 = trunc i8 %.058 to i1, !dbg !1876
  %388 = zext i1 %387 to i32, !dbg !1876
  %389 = load i8, ptr @print_chars, align 1, !dbg !1878, !tbaa !761, !range !804, !noundef !662
  %390 = trunc i8 %389 to i1, !dbg !1878
  %391 = zext i1 %390 to i32, !dbg !1878
  %392 = icmp slt i32 %388, %391, !dbg !1879
  br i1 %392, label %393, label %395, !dbg !1880

393:                                              ; preds = %386
  %394 = load i64, ptr %7, align 8, !dbg !1881, !tbaa !754
  call void @llvm.dbg.value(metadata i64 %394, metadata !1425, metadata !DIExpression()), !dbg !1483
  br label %395, !dbg !1882

395:                                              ; preds = %393, %386
  %.842 = phi i64 [ %394, %393 ], [ %.741, %386 ], !dbg !1483
  call void @llvm.dbg.value(metadata i64 %.842, metadata !1425, metadata !DIExpression()), !dbg !1483
  %396 = load i32, ptr @total_mode, align 4, !dbg !1883, !tbaa !794
  %397 = icmp ne i32 %396, 2, !dbg !1885
  br i1 %397, label %398, label %401, !dbg !1886

398:                                              ; preds = %395
  %399 = load i64, ptr %6, align 8, !dbg !1887, !tbaa !754
  %400 = load i64, ptr %7, align 8, !dbg !1888, !tbaa !754
  call void @write_counts(i64 noundef %399, i64 noundef %.1333, i64 noundef %.842, i64 noundef %400, i64 noundef %.19, ptr noundef %1), !dbg !1889
  br label %401, !dbg !1889

401:                                              ; preds = %398, %395
  %402 = load i64, ptr @total_lines, align 8, !dbg !1890, !tbaa !754
  %403 = load i64, ptr %6, align 8, !dbg !1890, !tbaa !754
  %404 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %402, i64 %403), !dbg !1890
  %405 = extractvalue { i64, i1 } %404, 1, !dbg !1890
  %406 = extractvalue { i64, i1 } %404, 0, !dbg !1890
  store i64 %406, ptr @total_lines, align 8, !dbg !1890
  br i1 %405, label %407, label %408, !dbg !1892

407:                                              ; preds = %401
  store i64 1, ptr @total_lines_overflow, align 8, !dbg !1893, !tbaa !754
  br label %408, !dbg !1894

408:                                              ; preds = %407, %401
  %409 = load i64, ptr @total_words, align 8, !dbg !1895, !tbaa !754
  %410 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %409, i64 %.1333), !dbg !1895
  %411 = extractvalue { i64, i1 } %410, 1, !dbg !1895
  %412 = extractvalue { i64, i1 } %410, 0, !dbg !1895
  store i64 %412, ptr @total_words, align 8, !dbg !1895
  br i1 %411, label %413, label %414, !dbg !1897

413:                                              ; preds = %408
  store i64 1, ptr @total_words_overflow, align 8, !dbg !1898, !tbaa !754
  br label %414, !dbg !1899

414:                                              ; preds = %413, %408
  %415 = load i64, ptr @total_chars, align 8, !dbg !1900, !tbaa !754
  %416 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %415, i64 %.842), !dbg !1900
  %417 = extractvalue { i64, i1 } %416, 1, !dbg !1900
  %418 = extractvalue { i64, i1 } %416, 0, !dbg !1900
  store i64 %418, ptr @total_chars, align 8, !dbg !1900
  br i1 %417, label %419, label %420, !dbg !1902

419:                                              ; preds = %414
  store i64 1, ptr @total_chars_overflow, align 8, !dbg !1903, !tbaa !754
  br label %420, !dbg !1904

420:                                              ; preds = %419, %414
  %421 = load i64, ptr @total_bytes, align 8, !dbg !1905, !tbaa !754
  %422 = load i64, ptr %7, align 8, !dbg !1905, !tbaa !754
  %423 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %421, i64 %422), !dbg !1905
  %424 = extractvalue { i64, i1 } %423, 1, !dbg !1905
  %425 = extractvalue { i64, i1 } %423, 0, !dbg !1905
  store i64 %425, ptr @total_bytes, align 8, !dbg !1905
  br i1 %424, label %426, label %427, !dbg !1907

426:                                              ; preds = %420
  store i64 1, ptr @total_bytes_overflow, align 8, !dbg !1908, !tbaa !754
  br label %427, !dbg !1909

427:                                              ; preds = %426, %420
  %428 = load i64, ptr @max_line_length, align 8, !dbg !1910, !tbaa !754
  %429 = icmp ugt i64 %.19, %428, !dbg !1912
  br i1 %429, label %430, label %431, !dbg !1913

430:                                              ; preds = %427
  store i64 %.19, ptr @max_line_length, align 8, !dbg !1914, !tbaa !754
  br label %431, !dbg !1915

431:                                              ; preds = %430, %427
  %432 = trunc i8 %.10 to i1, !dbg !1916
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #16, !dbg !1917
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #16, !dbg !1917
  call void @llvm.lifetime.end.p0(i64 16385, ptr %5) #16, !dbg !1917
  ret i1 %432, !dbg !1918

433:                                              ; preds = %375, %299, %285
  unreachable
}

declare !dbg !1919 i32 @rpl_open(ptr noundef, i32 noundef, ...) #2

declare !dbg !1923 i32 @___mb_cur_max() #2

declare !dbg !1925 void @fdadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @usable_st_size(ptr noundef %0) #3 !dbg !1929 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1935, metadata !DIExpression()), !dbg !1936
  %2 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 1, !dbg !1937
  %3 = load i16, ptr %2, align 4, !dbg !1937, !tbaa !853
  %4 = zext i16 %3 to i32, !dbg !1937
  %5 = and i32 %4, 61440, !dbg !1937
  %6 = icmp eq i32 %5, 32768, !dbg !1937
  br i1 %6, label %14, label %7, !dbg !1938

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 1, !dbg !1939
  %9 = load i16, ptr %8, align 4, !dbg !1939, !tbaa !853
  %10 = zext i16 %9 to i32, !dbg !1939
  %11 = and i32 %10, 61440, !dbg !1939
  %12 = icmp eq i32 %11, 40960, !dbg !1939
  br i1 %12, label %14, label %13, !dbg !1940

13:                                               ; preds = %7
  br label %14, !dbg !1940

14:                                               ; preds = %13, %7, %1
  %15 = phi i1 [ true, %7 ], [ true, %1 ], [ false, %13 ]
  ret i1 %15, !dbg !1941
}

declare !dbg !1942 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

declare !dbg !1945 i64 @safe_read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @avx2_supported() #7 !dbg !1949 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #16, !dbg !1959
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1953, metadata !DIExpression()), !dbg !1960
  store i32 0, ptr %1, align 4, !dbg !1960, !tbaa !822
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #16, !dbg !1961
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1954, metadata !DIExpression()), !dbg !1962
  store i32 0, ptr %2, align 4, !dbg !1962, !tbaa !822
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #16, !dbg !1963
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1955, metadata !DIExpression()), !dbg !1964
  store i32 0, ptr %3, align 4, !dbg !1964, !tbaa !822
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #16, !dbg !1965
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1956, metadata !DIExpression()), !dbg !1966
  store i32 0, ptr %4, align 4, !dbg !1966, !tbaa !822
  call void @llvm.dbg.value(metadata i8 0, metadata !1957, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 0, metadata !1958, metadata !DIExpression()), !dbg !1967
  %5 = call i32 @__get_cpuid(i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !1968
  %6 = icmp ne i32 %5, 0, !dbg !1968
  br i1 %6, label %7, label %13, !dbg !1970

7:                                                ; preds = %0
  call void @llvm.dbg.value(metadata i8 1, metadata !1957, metadata !DIExpression()), !dbg !1967
  %8 = load i32, ptr %3, align 4, !dbg !1971, !tbaa !822
  %9 = and i32 %8, 134217728, !dbg !1974
  %10 = icmp ne i32 %9, 0, !dbg !1974
  br i1 %10, label %11, label %12, !dbg !1975

11:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8 1, metadata !1958, metadata !DIExpression()), !dbg !1967
  br label %12, !dbg !1976

12:                                               ; preds = %11, %7
  %.02 = phi i8 [ 1, %11 ], [ 0, %7 ], !dbg !1967
  call void @llvm.dbg.value(metadata i8 %.02, metadata !1958, metadata !DIExpression()), !dbg !1967
  br label %13, !dbg !1977

13:                                               ; preds = %12, %0
  %.13 = phi i8 [ %.02, %12 ], [ 0, %0 ], !dbg !1967
  %.01 = phi i8 [ 1, %12 ], [ 0, %0 ], !dbg !1967
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1957, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %.13, metadata !1958, metadata !DIExpression()), !dbg !1967
  %14 = trunc i8 %.13 to i1, !dbg !1978
  br i1 %14, label %15, label %26, !dbg !1980

15:                                               ; preds = %13
  store i32 0, ptr %4, align 4, !dbg !1981, !tbaa !822
  store i32 0, ptr %3, align 4, !dbg !1983, !tbaa !822
  store i32 0, ptr %2, align 4, !dbg !1984, !tbaa !822
  store i32 0, ptr %1, align 4, !dbg !1985, !tbaa !822
  %16 = call i32 @__get_cpuid_count(i32 noundef 7, i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !1986
  %17 = icmp ne i32 %16, 0, !dbg !1986
  br i1 %17, label %19, label %18, !dbg !1988

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8 0, metadata !1957, metadata !DIExpression()), !dbg !1967
  br label %25, !dbg !1989

19:                                               ; preds = %15
  %20 = load i32, ptr %2, align 4, !dbg !1990, !tbaa !822
  %21 = and i32 %20, 32, !dbg !1993
  %22 = icmp ne i32 %21, 0, !dbg !1993
  br i1 %22, label %24, label %23, !dbg !1994

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8 0, metadata !1958, metadata !DIExpression()), !dbg !1967
  br label %24, !dbg !1995

24:                                               ; preds = %23, %19
  %.24 = phi i8 [ %.13, %19 ], [ 0, %23 ], !dbg !1967
  call void @llvm.dbg.value(metadata i8 %.24, metadata !1958, metadata !DIExpression()), !dbg !1967
  br label %25

25:                                               ; preds = %24, %18
  %.3 = phi i8 [ %.24, %24 ], [ %.13, %18 ], !dbg !1996
  %.1 = phi i8 [ %.01, %24 ], [ 0, %18 ], !dbg !1967
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1957, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %.3, metadata !1958, metadata !DIExpression()), !dbg !1967
  br label %26, !dbg !1997

26:                                               ; preds = %25, %13
  %.4 = phi i8 [ %.3, %25 ], [ %.13, %13 ], !dbg !1996
  %.2 = phi i8 [ %.1, %25 ], [ %.01, %13 ], !dbg !1998
  call void @llvm.dbg.value(metadata i8 %.2, metadata !1957, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %.4, metadata !1958, metadata !DIExpression()), !dbg !1967
  %27 = trunc i8 %.2 to i1, !dbg !1999
  br i1 %27, label %33, label %28, !dbg !2001

28:                                               ; preds = %26
  %29 = load i8, ptr @debug, align 1, !dbg !2002, !tbaa !761, !range !804, !noundef !662
  %30 = trunc i8 %29 to i1, !dbg !2002
  br i1 %30, label %31, label %32, !dbg !2005

31:                                               ; preds = %28
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.27, ptr noundef @.str.67), !dbg !2006
  br label %32, !dbg !2006

32:                                               ; preds = %31, %28
  br label %45, !dbg !2007

33:                                               ; preds = %26
  %34 = trunc i8 %.4 to i1, !dbg !2008
  br i1 %34, label %40, label %35, !dbg !2010

35:                                               ; preds = %33
  %36 = load i8, ptr @debug, align 1, !dbg !2011, !tbaa !761, !range !804, !noundef !662
  %37 = trunc i8 %36 to i1, !dbg !2011
  br i1 %37, label %38, label %39, !dbg !2014

38:                                               ; preds = %35
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.27, ptr noundef @.str.68), !dbg !2015
  br label %39, !dbg !2015

39:                                               ; preds = %38, %35
  br label %45, !dbg !2016

40:                                               ; preds = %33
  %41 = load i8, ptr @debug, align 1, !dbg !2017, !tbaa !761, !range !804, !noundef !662
  %42 = trunc i8 %41 to i1, !dbg !2017
  br i1 %42, label %43, label %44, !dbg !2020

43:                                               ; preds = %40
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.27, ptr noundef @.str.69), !dbg !2021
  br label %44, !dbg !2021

44:                                               ; preds = %43, %40
  br label %45, !dbg !2022

45:                                               ; preds = %44, %39, %32
  %.0 = phi i1 [ true, %44 ], [ false, %39 ], [ false, %32 ], !dbg !2023
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #16, !dbg !2024
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #16, !dbg !2024
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #16, !dbg !2024
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #16, !dbg !2024
  ret i1 %.0, !dbg !2024
}

declare zeroext i1 @wc_lines_avx2(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally zeroext i1 @is_basic(i8 noundef signext %0) #3 !dbg !2025 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2030, metadata !DIExpression()), !dbg !2031
  %2 = zext i8 %0 to i32, !dbg !2032
  %3 = ashr i32 %2, 5, !dbg !2033
  %4 = sext i32 %3 to i64, !dbg !2034
  %5 = getelementptr inbounds [0 x i32], ptr @is_basic_table, i64 0, i64 %4, !dbg !2034
  %6 = load i32, ptr %5, align 4, !dbg !2034, !tbaa !822
  %7 = zext i8 %0 to i32, !dbg !2035
  %8 = and i32 %7, 31, !dbg !2036
  %9 = lshr i32 %6, %8, !dbg !2037
  %10 = and i32 %9, 1, !dbg !2038
  %11 = icmp ne i32 %10, 0, !dbg !2039
  ret i1 %11, !dbg !2040
}

declare !dbg !2041 i64 @mbrtowc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !2049 i32 @mbsinit(ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswprint(i32 noundef %0) #3 !dbg !2054 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2062, metadata !DIExpression()), !dbg !2063
  %2 = call i32 @__istype(i32 noundef %0, i64 noundef 262144), !dbg !2064
  ret i32 %2, !dbg !2065
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2066 i32 @rpl_wcwidth(i32 noundef) #11

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswspace(i32 noundef %0) #3 !dbg !2070 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2072, metadata !DIExpression()), !dbg !2073
  %2 = call i32 @__istype(i32 noundef %0, i64 noundef 16384), !dbg !2074
  ret i32 %2, !dbg !2075
}

; Function Attrs: nounwind ssp willreturn memory(read) uwtable
define internal i32 @iswnbspace(i32 noundef %0) #9 !dbg !2076 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2078, metadata !DIExpression()), !dbg !2079
  %2 = load i8, ptr @posixly_correct, align 1, !dbg !2080, !tbaa !761, !range !804, !noundef !662
  %3 = trunc i8 %2 to i1, !dbg !2080
  br i1 %3, label %14, label %4, !dbg !2081

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 160, !dbg !2082
  br i1 %5, label %12, label %6, !dbg !2083

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 8199, !dbg !2084
  br i1 %7, label %12, label %8, !dbg !2085

8:                                                ; preds = %6
  %9 = icmp eq i32 %0, 8239, !dbg !2086
  br i1 %9, label %12, label %10, !dbg !2087

10:                                               ; preds = %8
  %11 = icmp eq i32 %0, 8288, !dbg !2088
  br label %12, !dbg !2087

12:                                               ; preds = %10, %8, %6, %4
  %13 = phi i1 [ true, %8 ], [ true, %6 ], [ true, %4 ], [ %11, %10 ]
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i1 [ false, %1 ], [ %13, %12 ], !dbg !2079
  %16 = zext i1 %15 to i32, !dbg !2081
  ret i32 %16, !dbg !2089
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i8 @to_uchar(i8 noundef signext %0) #3 !dbg !2090 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2094, metadata !DIExpression()), !dbg !2095
  ret i8 %0, !dbg !2096
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally i32 @isprint(i32 noundef %0) #13 !dbg !2097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2100, metadata !DIExpression()), !dbg !2101
  %2 = call i32 @__istype(i32 noundef %0, i64 noundef 262144), !dbg !2102
  ret i32 %2, !dbg !2103
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally i32 @isspace(i32 noundef %0) #13 !dbg !2104 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2106, metadata !DIExpression()), !dbg !2107
  %2 = call i32 @__istype(i32 noundef %0, i64 noundef 16384), !dbg !2108
  ret i32 %2, !dbg !2109
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind ssp uwtable
define internal i32 @isnbspace(i32 noundef %0) #7 !dbg !2110 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2112, metadata !DIExpression()), !dbg !2113
  %2 = call i32 @btowc(i32 noundef %0), !dbg !2114
  %3 = call i32 @iswnbspace(i32 noundef %2) #18, !dbg !2115
  ret i32 %3, !dbg !2116
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

declare !dbg !2117 i32 @btowc(i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__istype(i32 noundef %0, i64 noundef %1) #3 !dbg !2120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i64 %1, metadata !2126, metadata !DIExpression()), !dbg !2127
  %3 = call i32 @isascii(i32 noundef %0), !dbg !2128
  %4 = icmp ne i32 %3, 0, !dbg !2128
  br i1 %4, label %5, label %15, !dbg !2128

5:                                                ; preds = %2
  %6 = sext i32 %0 to i64, !dbg !2129
  %7 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (%struct._RuneLocale, ptr @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %6, !dbg !2129
  %8 = load i32, ptr %7, align 4, !dbg !2129, !tbaa !822
  %9 = zext i32 %8 to i64, !dbg !2129
  %10 = and i64 %9, %1, !dbg !2130
  %11 = icmp ne i64 %10, 0, !dbg !2131
  %12 = xor i1 %11, true, !dbg !2131
  %13 = xor i1 %12, true, !dbg !2132
  %14 = zext i1 %13 to i32, !dbg !2132
  br label %21, !dbg !2128

15:                                               ; preds = %2
  %16 = call i32 @__maskrune(i32 noundef %0, i64 noundef %1), !dbg !2133
  %17 = icmp ne i32 %16, 0, !dbg !2134
  %18 = xor i1 %17, true, !dbg !2134
  %19 = xor i1 %18, true, !dbg !2135
  %20 = zext i1 %19 to i32, !dbg !2135
  br label %21, !dbg !2128

21:                                               ; preds = %15, %5
  %22 = phi i32 [ %14, %5 ], [ %20, %15 ], !dbg !2128
  ret i32 %22, !dbg !2136
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @isascii(i32 noundef %0) #3 !dbg !2137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2139, metadata !DIExpression()), !dbg !2140
  %2 = and i32 %0, -128, !dbg !2141
  %3 = icmp eq i32 %2, 0, !dbg !2142
  %4 = zext i1 %3 to i32, !dbg !2142
  ret i32 %4, !dbg !2143
}

declare !dbg !2144 i32 @__maskrune(i32 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @wc_lines(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #7 !dbg !2145 {
  %5 = alloca [16385 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2147, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 %1, metadata !2148, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata ptr %2, metadata !2149, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata ptr %3, metadata !2150, metadata !DIExpression()), !dbg !2160
  call void @llvm.lifetime.start.p0(i64 16385, ptr %5) #16, !dbg !2161
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2154, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 0, metadata !2155, metadata !DIExpression()), !dbg !2160
  %6 = icmp ne ptr %2, null, !dbg !2163
  br i1 %6, label %7, label %9, !dbg !2165

7:                                                ; preds = %4
  %8 = icmp ne ptr %3, null, !dbg !2166
  br i1 %8, label %10, label %9, !dbg !2167

9:                                                ; preds = %7, %4
  br label %55, !dbg !2168

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64 0, metadata !2153, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i64 0, metadata !2152, metadata !DIExpression()), !dbg !2160
  br label %11, !dbg !2170

11:                                               ; preds = %53, %10
  %.05 = phi i64 [ 0, %10 ], [ %.3, %53 ], !dbg !2171
  %.04 = phi i64 [ 0, %10 ], [ %22, %53 ], !dbg !2160
  %.02 = phi i8 [ 0, %10 ], [ %.13, %53 ], !dbg !2160
  call void @llvm.dbg.value(metadata i8 %.02, metadata !2155, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %.04, metadata !2153, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %.05, metadata !2152, metadata !DIExpression()), !dbg !2160
  %12 = getelementptr inbounds [16385 x i8], ptr %5, i64 0, i64 0, !dbg !2172
  %13 = call i64 @safe_read(i32 noundef %1, ptr noundef %12, i64 noundef 16384), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %13, metadata !2151, metadata !DIExpression()), !dbg !2160
  %14 = icmp ugt i64 %13, 0, !dbg !2174
  br i1 %14, label %15, label %54, !dbg !2170

15:                                               ; preds = %11
  %16 = icmp eq i64 %13, -1, !dbg !2175
  br i1 %16, label %17, label %21, !dbg !2177

17:                                               ; preds = %15
  %18 = call ptr @__error(), !dbg !2178
  %19 = load i32, ptr %18, align 4, !dbg !2178, !tbaa !822
  %20 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0), !dbg !2180
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %19, ptr noundef @.str.27, ptr noundef %20), !dbg !2181
  br label %55, !dbg !2182

21:                                               ; preds = %15
  %22 = add i64 %.04, %13, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %22, metadata !2153, metadata !DIExpression()), !dbg !2160
  %23 = getelementptr inbounds [16385 x i8], ptr %5, i64 0, i64 0, !dbg !2184
  call void @llvm.dbg.value(metadata ptr %23, metadata !2156, metadata !DIExpression()), !dbg !2185
  %24 = getelementptr inbounds [16385 x i8], ptr %5, i64 0, i64 0, !dbg !2186
  %25 = getelementptr inbounds i8, ptr %24, i64 %13, !dbg !2187
  call void @llvm.dbg.value(metadata ptr %25, metadata !2158, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %.05, metadata !2159, metadata !DIExpression()), !dbg !2185
  %26 = trunc i8 %.02 to i1, !dbg !2188
  br i1 %26, label %39, label %27, !dbg !2190

27:                                               ; preds = %21
  br label %28, !dbg !2191

28:                                               ; preds = %30, %27
  %.16 = phi i64 [ %.05, %27 ], [ %37, %30 ], !dbg !2160
  %.01 = phi ptr [ %23, %27 ], [ %31, %30 ], !dbg !2185
  call void @llvm.dbg.value(metadata ptr %.01, metadata !2156, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %.16, metadata !2152, metadata !DIExpression()), !dbg !2160
  %29 = icmp ne ptr %.01, %25, !dbg !2193
  br i1 %29, label %30, label %38, !dbg !2191

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !2194
  call void @llvm.dbg.value(metadata ptr %31, metadata !2156, metadata !DIExpression()), !dbg !2185
  %32 = load i8, ptr %.01, align 1, !dbg !2195, !tbaa !794
  %33 = sext i8 %32 to i32, !dbg !2195
  %34 = icmp eq i32 %33, 10, !dbg !2196
  %35 = zext i1 %34 to i32, !dbg !2196
  %36 = sext i32 %35 to i64, !dbg !2195
  %37 = add i64 %.16, %36, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %37, metadata !2152, metadata !DIExpression()), !dbg !2160
  br label %28, !dbg !2191, !llvm.loop !2198

38:                                               ; preds = %28
  br label %47, !dbg !2200

39:                                               ; preds = %21
  store i8 10, ptr %25, align 1, !dbg !2201, !tbaa !794
  br label %40, !dbg !2203

40:                                               ; preds = %43, %39
  %.2 = phi i64 [ %.05, %39 ], [ %45, %43 ], !dbg !2160
  %.1 = phi ptr [ %23, %39 ], [ %44, %43 ], !dbg !2185
  call void @llvm.dbg.value(metadata ptr %.1, metadata !2156, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %.2, metadata !2152, metadata !DIExpression()), !dbg !2160
  %41 = call ptr @rawmemchr(ptr noundef %.1, i32 noundef 10) #18, !dbg !2204
  call void @llvm.dbg.value(metadata ptr %41, metadata !2156, metadata !DIExpression()), !dbg !2185
  %42 = icmp ult ptr %41, %25, !dbg !2205
  br i1 %42, label %43, label %46, !dbg !2203

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %41, i32 1, !dbg !2206
  call void @llvm.dbg.value(metadata ptr %44, metadata !2156, metadata !DIExpression()), !dbg !2185
  %45 = add i64 %.2, 1, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %45, metadata !2152, metadata !DIExpression()), !dbg !2160
  br label %40, !dbg !2203, !llvm.loop !2209

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %38
  %.3 = phi i64 [ %.2, %46 ], [ %.16, %38 ], !dbg !2171
  call void @llvm.dbg.value(metadata i64 %.3, metadata !2152, metadata !DIExpression()), !dbg !2160
  %48 = sub i64 %.3, %.05, !dbg !2211
  %49 = udiv i64 %13, 15, !dbg !2213
  %50 = icmp ule i64 %48, %49, !dbg !2214
  br i1 %50, label %51, label %52, !dbg !2215

51:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i8 1, metadata !2155, metadata !DIExpression()), !dbg !2160
  br label %53, !dbg !2216

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i8 0, metadata !2155, metadata !DIExpression()), !dbg !2160
  br label %53

53:                                               ; preds = %52, %51
  %.13 = phi i8 [ 1, %51 ], [ 0, %52 ], !dbg !2217
  call void @llvm.dbg.value(metadata i8 %.13, metadata !2155, metadata !DIExpression()), !dbg !2160
  br label %11, !dbg !2170, !llvm.loop !2218

54:                                               ; preds = %11
  store i64 %.04, ptr %3, align 8, !dbg !2220, !tbaa !754
  store i64 %.05, ptr %2, align 8, !dbg !2221, !tbaa !754
  br label %55, !dbg !2222

55:                                               ; preds = %54, %17, %9
  %.0 = phi i1 [ false, %17 ], [ true, %54 ], [ false, %9 ], !dbg !2160
  call void @llvm.lifetime.end.p0(i64 16385, ptr %5) #16, !dbg !2223
  ret i1 %.0, !dbg !2223
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2224 ptr @rawmemchr(ptr noundef, i32 noundef) #11

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @__get_cpuid(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 !dbg !2228 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2234, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata ptr %1, metadata !2235, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata ptr %2, metadata !2236, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata ptr %3, metadata !2237, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata ptr %4, metadata !2238, metadata !DIExpression()), !dbg !2240
  %6 = and i32 %0, -2147483648, !dbg !2241
  %7 = call i32 @__get_cpuid_max(i32 noundef %6, ptr noundef null), !dbg !2242
  call void @llvm.dbg.value(metadata i32 %7, metadata !2239, metadata !DIExpression()), !dbg !2240
  %8 = icmp eq i32 %7, 0, !dbg !2243
  br i1 %8, label %11, label %9, !dbg !2245

9:                                                ; preds = %5
  %10 = icmp ult i32 %7, %0, !dbg !2246
  br i1 %10, label %11, label %12, !dbg !2247

11:                                               ; preds = %9, %5
  br label %18, !dbg !2248

12:                                               ; preds = %9
  %13 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #21, !dbg !2249, !srcloc !2250
  %14 = extractvalue { i32, i32, i32, i32 } %13, 0, !dbg !2249
  %15 = extractvalue { i32, i32, i32, i32 } %13, 1, !dbg !2249
  %16 = extractvalue { i32, i32, i32, i32 } %13, 2, !dbg !2249
  %17 = extractvalue { i32, i32, i32, i32 } %13, 3, !dbg !2249
  store i32 %14, ptr %1, align 4, !dbg !2249, !tbaa !822
  store i32 %15, ptr %2, align 4, !dbg !2249, !tbaa !822
  store i32 %16, ptr %3, align 4, !dbg !2249, !tbaa !822
  store i32 %17, ptr %4, align 4, !dbg !2249, !tbaa !822
  br label %18, !dbg !2251

18:                                               ; preds = %12, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %12 ], !dbg !2240
  ret i32 %.0, !dbg !2252
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @__get_cpuid_count(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #3 !dbg !2253 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2257, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i32 %1, metadata !2258, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata ptr %2, metadata !2259, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata ptr %3, metadata !2260, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata ptr %4, metadata !2261, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata ptr %5, metadata !2262, metadata !DIExpression()), !dbg !2264
  %7 = and i32 %0, -2147483648, !dbg !2265
  %8 = call i32 @__get_cpuid_max(i32 noundef %7, ptr noundef null), !dbg !2266
  call void @llvm.dbg.value(metadata i32 %8, metadata !2263, metadata !DIExpression()), !dbg !2264
  %9 = icmp eq i32 %8, 0, !dbg !2267
  br i1 %9, label %12, label %10, !dbg !2269

10:                                               ; preds = %6
  %11 = icmp ult i32 %8, %0, !dbg !2270
  br i1 %11, label %12, label %13, !dbg !2271

12:                                               ; preds = %10, %6
  br label %19, !dbg !2272

13:                                               ; preds = %10
  %14 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #21, !dbg !2273, !srcloc !2274
  %15 = extractvalue { i32, i32, i32, i32 } %14, 0, !dbg !2273
  %16 = extractvalue { i32, i32, i32, i32 } %14, 1, !dbg !2273
  %17 = extractvalue { i32, i32, i32, i32 } %14, 2, !dbg !2273
  %18 = extractvalue { i32, i32, i32, i32 } %14, 3, !dbg !2273
  store i32 %15, ptr %2, align 4, !dbg !2273, !tbaa !822
  store i32 %16, ptr %3, align 4, !dbg !2273, !tbaa !822
  store i32 %17, ptr %4, align 4, !dbg !2273, !tbaa !822
  store i32 %18, ptr %5, align 4, !dbg !2273, !tbaa !822
  br label %19, !dbg !2275

19:                                               ; preds = %13, %12
  %.0 = phi i32 [ 0, %12 ], [ 1, %13 ], !dbg !2264
  ret i32 %.0, !dbg !2276
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @__get_cpuid_max(i32 noundef %0, ptr noundef %1) #3 !dbg !2277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata ptr %1, metadata !2282, metadata !DIExpression()), !dbg !2287
  %3 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #21, !dbg !2288, !srcloc !2289
  %4 = extractvalue { i32, i32, i32, i32 } %3, 0, !dbg !2288
  %5 = extractvalue { i32, i32, i32, i32 } %3, 1, !dbg !2288
  %6 = extractvalue { i32, i32, i32, i32 } %3, 2, !dbg !2288
  %7 = extractvalue { i32, i32, i32, i32 } %3, 3, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %4, metadata !2283, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %5, metadata !2284, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %6, metadata !2285, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %7, metadata !2286, metadata !DIExpression()), !dbg !2287
  %8 = icmp ne ptr %1, null, !dbg !2290
  br i1 %8, label %9, label %10, !dbg !2292

9:                                                ; preds = %2
  store i32 %5, ptr %1, align 4, !dbg !2293, !tbaa !822
  br label %10, !dbg !2294

10:                                               ; preds = %9, %2
  ret i32 %4, !dbg !2295
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @set_binary_mode(i32 noundef %0, i32 noundef %1) #3 !dbg !2296 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2301, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i32 %1, metadata !2302, metadata !DIExpression()), !dbg !2303
  %3 = call i32 @__gl_setmode(i32 noundef %0, i32 noundef %1), !dbg !2304
  ret i32 %3, !dbg !2305
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @xset_binary_mode_error() #3 !dbg !2306 {
  ret void, !dbg !2307
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__gl_setmode(i32 noundef %0, i32 noundef %1) #3 !dbg !2308 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %1, metadata !2311, metadata !DIExpression()), !dbg !2312
  ret i32 0, !dbg !2313
}

; Function Attrs: allocsize(0,1)
declare !dbg !2314 noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) #14

declare !dbg !2317 i32 @rpl_stat(ptr noundef, ptr noundef) #2

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
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { inlinehint nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold noreturn }
attributes #20 = { allocsize(0,1) }
attributes #21 = { nounwind memory(none) }

!llvm.dbg.cu = !{!51}
!llvm.ident = !{!614}
!llvm.module.flags = !{!615, !616, !617, !618, !619, !620}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/wc.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 71)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 221, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1552, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 194)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2408, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 301)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1056, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 132)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 48)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 57)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 3)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 834, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 1)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "page_size", scope: !51, file: !2, line: 98, type: !108, isLocal: true, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !101, globals: !114, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!52 = !{!53, !59, !65, !79, !85, !92}
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 116, baseType: !54, size: 32, elements: !55)
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "DEBUG_PROGRAM_OPTION", value: 128)
!57 = !DIEnumerator(name: "FILES0_FROM_OPTION", value: 129)
!58 = !DIEnumerator(name: "TOTAL_OPTION", value: 130)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 332, baseType: !61, size: 32, elements: !62)
!60 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !{!63, !64}
!63 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!64 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !66, line: 32, baseType: !54, size: 32, elements: !67)
!66 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!68 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!69 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!70 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!71 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!72 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!73 = !DIEnumerator(name: "c_quoting_style", value: 5)
!74 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!75 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!76 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!77 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!78 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "total_type", file: !2, line: 138, baseType: !54, size: 32, elements: !80)
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "total_auto", value: 0)
!82 = !DIEnumerator(name: "total_always", value: 1)
!83 = !DIEnumerator(name: "total_only", value: 2)
!84 = !DIEnumerator(name: "total_never", value: 3)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "argv_iter_err", file: !86, line: 24, baseType: !54, size: 32, elements: !87)
!86 = !DIFile(filename: "../lib/argv-iter.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "AI_ERR_OK", value: 1)
!89 = !DIEnumerator(name: "AI_ERR_EOF", value: 2)
!90 = !DIEnumerator(name: "AI_ERR_MEM", value: 3)
!91 = !DIEnumerator(name: "AI_ERR_READ", value: 4)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 53, baseType: !54, size: 32, elements: !94)
!93 = !DIFile(filename: "../lib/fadvise.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!96 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 1)
!97 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 2)
!98 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 3)
!99 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 4)
!100 = !DIEnumerator(name: "FADVISE_RANDOM", value: 5)
!101 = !{!102, !104, !105, !107, !108, !113}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 31, baseType: !110)
!109 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !111, line: 94, baseType: !112)
!111 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !{!0, !7, !12, !17, !22, !24, !29, !34, !39, !44, !115, !120, !125, !130, !135, !140, !142, !147, !152, !157, !162, !164, !169, !174, !387, !392, !397, !400, !405, !410, !412, !417, !419, !424, !426, !428, !430, !432, !434, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !49, !468, !470, !475, !477, !479, !484, !489, !491, !493, !495, !497, !499, !504, !506, !508, !510, !512, !514, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !551, !555, !557, !562, !564, !566, !570, !572, !574, !579, !584, !589, !595, !612}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 845, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 16)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 851, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 6)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 883, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 8)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 888, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 14)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 888, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 11)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 888, type: !117, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 908, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 17)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 909, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 4)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 910, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 52)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 914, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 2)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 918, type: !159, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 920, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 27)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 934, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 31)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "stdin_only", scope: !176, file: !2, line: 949, type: !386, isLocal: true, isDefinition: true)
!176 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 822, type: !177, scopeLine: 823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !180)
!177 = !DISubroutineType(types: !178)
!178 = !{!61, !61, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!180 = !{!181, !182, !183, !185, !186, !187, !188, !189, !257, !317, !318, !321, !372, !373, !375, !378, !379, !380, !385}
!181 = !DILocalVariable(name: "argc", arg: 1, scope: !176, file: !2, line: 822, type: !61)
!182 = !DILocalVariable(name: "argv", arg: 2, scope: !176, file: !2, line: 822, type: !179)
!183 = !DILocalVariable(name: "ok", scope: !176, file: !2, line: 824, type: !184)
!184 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!185 = !DILocalVariable(name: "optc", scope: !176, file: !2, line: 825, type: !61)
!186 = !DILocalVariable(name: "nfiles", scope: !176, file: !2, line: 826, type: !108)
!187 = !DILocalVariable(name: "files", scope: !176, file: !2, line: 827, type: !179)
!188 = !DILocalVariable(name: "files_from", scope: !176, file: !2, line: 828, type: !107)
!189 = !DILocalVariable(name: "fstatus", scope: !176, file: !2, line: 829, type: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fstatus", file: !2, line: 104, size: 1216, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !191, file: !2, line: 108, baseType: !61, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !191, file: !2, line: 111, baseType: !195, size: 1152, offset: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !196, line: 182, size: 1152, elements: !197)
!196 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!197 = !{!198, !204, !210, !213, !217, !222, !226, !227, !235, !236, !237, !238, !244, !248, !252, !253, !254, !255}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !195, file: !196, line: 182, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !200, line: 31, baseType: !201)
!200 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !202, line: 57, baseType: !203)
!202 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !111, line: 46, baseType: !61)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !195, file: !196, line: 182, baseType: !205, size: 16, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !206, line: 31, baseType: !207)
!206 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !202, line: 70, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !111, line: 45, baseType: !209)
!209 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !195, file: !196, line: 182, baseType: !211, size: 16, offset: 48)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !212, line: 31, baseType: !208)
!212 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!213 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !195, file: !196, line: 182, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !202, line: 62, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !111, line: 49, baseType: !216)
!216 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !195, file: !196, line: 182, baseType: !218, size: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !219, line: 31, baseType: !220)
!219 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !202, line: 75, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !111, line: 47, baseType: !54)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !195, file: !196, line: 182, baseType: !223, size: 32, offset: 160)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !224, line: 31, baseType: !225)
!224 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !202, line: 60, baseType: !221)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !195, file: !196, line: 182, baseType: !199, size: 32, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !195, file: !196, line: 182, baseType: !228, size: 128, offset: 256)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !229, line: 33, size: 128, elements: !230)
!229 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!230 = !{!231, !234}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !228, file: !229, line: 35, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !111, line: 122, baseType: !233)
!233 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !228, file: !229, line: 36, baseType: !233, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !195, file: !196, line: 182, baseType: !228, size: 128, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !195, file: !196, line: 182, baseType: !228, size: 128, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !195, file: !196, line: 182, baseType: !228, size: 128, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !195, file: !196, line: 182, baseType: !239, size: 64, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !240, line: 31, baseType: !241)
!240 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !202, line: 71, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !111, line: 48, baseType: !243)
!243 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !195, file: !196, line: 182, baseType: !245, size: 64, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !246, line: 31, baseType: !247)
!246 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !202, line: 55, baseType: !242)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !195, file: !196, line: 182, baseType: !249, size: 32, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !250, line: 31, baseType: !251)
!250 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !202, line: 56, baseType: !203)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !195, file: !196, line: 182, baseType: !221, size: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !195, file: !196, line: 182, baseType: !221, size: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !195, file: !196, line: 182, baseType: !203, size: 32, offset: 992)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !195, file: !196, line: 182, baseType: !256, size: 128, offset: 1024)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !160)
!257 = !DILocalVariable(name: "tok", scope: !176, file: !2, line: 830, type: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tokens", file: !259, line: 27, size: 2304, elements: !260)
!259 = !DIFile(filename: "../lib/readtokens0.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!260 = !{!261, !262, !263, !265, !315, !316}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "n_tok", scope: !258, file: !259, line: 29, baseType: !108, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !258, file: !259, line: 30, baseType: !179, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tok_len", scope: !258, file: !259, line: 31, baseType: !264, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "o_data", scope: !258, file: !259, line: 32, baseType: !266, size: 704, offset: 192)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !267, line: 173, size: 704, elements: !268)
!267 = !DIFile(filename: "../lib/obstack.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!268 = !{!269, !270, !280, !281, !282, !283, !288, !289, !300, !311, !312, !313, !314}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !266, file: !267, line: 175, baseType: !108, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !266, file: !267, line: 176, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !267, line: 166, size: 128, elements: !273)
!273 = !{!274, !275, !276}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !272, file: !267, line: 168, baseType: !107, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !272, file: !267, line: 169, baseType: !271, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !272, file: !267, line: 170, baseType: !277, offset: 128)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: -1)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !266, file: !267, line: 177, baseType: !107, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !266, file: !267, line: 178, baseType: !107, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !266, file: !267, line: 179, baseType: !107, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !266, file: !267, line: 184, baseType: !284, size: 64, offset: 320)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !267, line: 180, size: 64, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !284, file: !267, line: 182, baseType: !108, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !284, file: !267, line: 183, baseType: !104, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !266, file: !267, line: 185, baseType: !108, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !266, file: !267, line: 192, baseType: !290, size: 64, offset: 448)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !267, line: 188, size: 64, elements: !291)
!291 = !{!292, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !290, file: !267, line: 190, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!104, !108}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !290, file: !267, line: 191, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!104, !104, !108}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !266, file: !267, line: 197, baseType: !301, size: 64, offset: 512)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !267, line: 193, size: 64, elements: !302)
!302 = !{!303, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !301, file: !267, line: 195, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !104}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !301, file: !267, line: 196, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !104, !104}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !266, file: !267, line: 199, baseType: !104, size: 64, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !266, file: !267, line: 200, baseType: !54, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !266, file: !267, line: 201, baseType: !54, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !266, file: !267, line: 205, baseType: !54, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok", scope: !258, file: !259, line: 33, baseType: !266, size: 704, offset: 896)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok_len", scope: !258, file: !259, line: 34, baseType: !266, size: 704, offset: 1600)
!317 = !DILocalVariable(name: "read_tokens", scope: !176, file: !2, line: 898, type: !184)
!318 = !DILocalVariable(name: "ai", scope: !176, file: !2, line: 899, type: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "argv_iterator", file: !86, line: 22, flags: DIFlagFwdDecl)
!321 = !DILocalVariable(name: "stream", scope: !322, file: !2, line: 902, type: !324)
!322 = distinct !DILexicalBlock(scope: !323, file: !2, line: 901, column: 5)
!323 = distinct !DILexicalBlock(scope: !176, file: !2, line: 900, column: 7)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !326, line: 157, baseType: !327)
!326 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !326, line: 126, size: 1216, elements: !328)
!328 = !{!329, !331, !332, !333, !335, !336, !341, !342, !343, !347, !351, !356, !360, !361, !364, !365, !367, !369, !370, !371}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !327, file: !326, line: 127, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !327, file: !326, line: 128, baseType: !61, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !327, file: !326, line: 129, baseType: !61, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !327, file: !326, line: 130, baseType: !334, size: 16, offset: 128)
!334 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !327, file: !326, line: 131, baseType: !334, size: 16, offset: 144)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !327, file: !326, line: 132, baseType: !337, size: 128, offset: 192)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !326, line: 92, size: 128, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !337, file: !326, line: 93, baseType: !330, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !337, file: !326, line: 94, baseType: !61, size: 32, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !327, file: !326, line: 133, baseType: !61, size: 32, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !327, file: !326, line: 136, baseType: !104, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !327, file: !326, line: 137, baseType: !344, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!61, !104}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !327, file: !326, line: 138, baseType: !348, size: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!61, !104, !107, !61}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !327, file: !326, line: 139, baseType: !352, size: 64, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !104, !355, !61}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !326, line: 81, baseType: !241)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !327, file: !326, line: 140, baseType: !357, size: 64, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!61, !104, !102, !61}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !327, file: !326, line: 143, baseType: !337, size: 128, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !327, file: !326, line: 144, baseType: !362, size: 64, offset: 832)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !326, line: 98, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !327, file: !326, line: 145, baseType: !61, size: 32, offset: 896)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !327, file: !326, line: 148, baseType: !366, size: 24, offset: 928)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 24, elements: !42)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !327, file: !326, line: 149, baseType: !368, size: 8, offset: 952)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 8, elements: !47)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !327, file: !326, line: 152, baseType: !337, size: 128, offset: 960)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !327, file: !326, line: 155, baseType: !61, size: 32, offset: 1088)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !327, file: !326, line: 156, baseType: !355, size: 64, offset: 1152)
!372 = !DILocalVariable(name: "st", scope: !322, file: !2, line: 926, type: !195)
!373 = !DILocalVariable(name: "i", scope: !374, file: !2, line: 965, type: !61)
!374 = distinct !DILexicalBlock(scope: !176, file: !2, line: 965, column: 3)
!375 = !DILocalVariable(name: "skip_file", scope: !376, file: !2, line: 967, type: !184)
!376 = distinct !DILexicalBlock(scope: !377, file: !2, line: 966, column: 5)
!377 = distinct !DILexicalBlock(scope: !374, file: !2, line: 965, column: 3)
!378 = !DILocalVariable(name: "ai_err", scope: !376, file: !2, line: 968, type: !85)
!379 = !DILocalVariable(name: "file_name", scope: !376, file: !2, line: 969, type: !107)
!380 = !DILocalVariable(name: "file_number", scope: !381, file: !2, line: 1010, type: !112)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 1006, column: 13)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 1003, column: 15)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 998, column: 9)
!384 = distinct !DILexicalBlock(scope: !376, file: !2, line: 997, column: 11)
!385 = !DILabel(scope: !176, name: "argv_iter_done", file: !2, line: 1025)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !47)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !2, line: 977, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 15)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 984, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 40, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 5)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 984, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !395)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !2, line: 984, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 40)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !2, line: 991, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 63)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1004, type: !41, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1004, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 30)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1011, type: !137, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1042, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 12)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1048, type: !421, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1054, type: !144, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1060, type: !421, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1066, type: !122, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "debug", scope: !51, file: !2, line: 73, type: !184, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "total_lines", scope: !51, file: !2, line: 77, type: !436, isLocal: true, isDefinition: true)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !437, line: 32, baseType: !112)
!437 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "total_words", scope: !51, file: !2, line: 78, type: !436, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "total_chars", scope: !51, file: !2, line: 79, type: !436, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "total_bytes", scope: !51, file: !2, line: 80, type: !436, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "total_lines_overflow", scope: !51, file: !2, line: 81, type: !436, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(name: "total_words_overflow", scope: !51, file: !2, line: 82, type: !436, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "total_chars_overflow", scope: !51, file: !2, line: 83, type: !436, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "total_bytes_overflow", scope: !51, file: !2, line: 84, type: !436, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "max_line_length", scope: !51, file: !2, line: 85, type: !436, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "print_lines", scope: !51, file: !2, line: 88, type: !184, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "print_words", scope: !51, file: !2, line: 88, type: !184, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "print_chars", scope: !51, file: !2, line: 88, type: !184, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "print_bytes", scope: !51, file: !2, line: 88, type: !184, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "print_linelength", scope: !51, file: !2, line: 89, type: !184, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "number_width", scope: !51, file: !2, line: 92, type: !61, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !51, file: !2, line: 95, type: !184, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "posixly_correct", scope: !51, file: !2, line: 101, type: !184, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !60, line: 579, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 56)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !60, line: 660, type: !159, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !60, line: 660, type: !117, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !60, line: 661, type: !481, isLocal: true, isDefinition: true)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 10)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !60, line: 661, type: !486, isLocal: true, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 22)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !60, line: 662, type: !481, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !60, line: 662, type: !389, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !60, line: 663, type: !481, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !60, line: 664, type: !481, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !60, line: 665, type: !481, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !60, line: 678, type: !501, isLocal: true, isDefinition: true)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 23)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !60, line: 678, type: !402, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !60, line: 683, type: !149, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !60, line: 689, type: !9, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !60, line: 695, type: !399, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !60, line: 696, type: !166, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !60, line: 698, type: !516, isLocal: true, isDefinition: true)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 51)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !60, line: 699, type: !421, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !122, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !122, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !122, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !122, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !122, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !421, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !117, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !399, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !127, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "longopts", scope: !51, file: !2, line: 123, type: !541, isLocal: true, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 2816, elements: !138)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !544, line: 50, size: 256, elements: !545)
!544 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!545 = !{!546, !547, !548, !550}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !543, file: !544, line: 52, baseType: !102, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !543, file: !544, line: 55, baseType: !61, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !543, file: !544, line: 56, baseType: !549, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !543, file: !544, line: 57, baseType: !61, size: 32, offset: 192)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "total_types", scope: !51, file: !2, line: 149, type: !553, isLocal: true, isDefinition: true)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 128, elements: !150)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !399, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !559, isLocal: true, isDefinition: true)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 7)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !399, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !122, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "total_args", scope: !51, file: !2, line: 145, type: !568, isLocal: true, isDefinition: true)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 320, elements: !395)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "total_mode", scope: !51, file: !2, line: 154, type: !79, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !2, line: 391, type: !389, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 20)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 26)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 28)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "wc_lines_p", scope: !51, file: !2, line: 70, type: !591, isLocal: true, isDefinition: true)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!184, !102, !61, !594, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "format_sp_int", scope: !597, file: !2, line: 281, type: !394, isLocal: true, isDefinition: true)
!597 = distinct !DISubprogram(name: "write_counts", scope: !2, file: !2, line: 274, type: !598, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !436, !436, !436, !436, !436, !102}
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608}
!601 = !DILocalVariable(name: "lines", arg: 1, scope: !597, file: !2, line: 274, type: !436)
!602 = !DILocalVariable(name: "words", arg: 2, scope: !597, file: !2, line: 275, type: !436)
!603 = !DILocalVariable(name: "chars", arg: 3, scope: !597, file: !2, line: 276, type: !436)
!604 = !DILocalVariable(name: "bytes", arg: 4, scope: !597, file: !2, line: 277, type: !436)
!605 = !DILocalVariable(name: "linelength", arg: 5, scope: !597, file: !2, line: 278, type: !436)
!606 = !DILocalVariable(name: "file", arg: 6, scope: !597, file: !2, line: 279, type: !102)
!607 = !DILocalVariable(name: "format_int", scope: !597, file: !2, line: 282, type: !102)
!608 = !DILocalVariable(name: "buf", scope: !597, file: !2, line: 283, type: !609)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 21)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !149, isLocal: true, isDefinition: true)
!614 = !{!"Homebrew clang version 16.0.4"}
!615 = !{i32 7, !"Dwarf Version", i32 4}
!616 = !{i32 2, !"Debug Info Version", i32 3}
!617 = !{i32 1, !"wchar_size", i32 4}
!618 = !{i32 8, !"PIC Level", i32 2}
!619 = !{i32 7, !"uwtable", i32 2}
!620 = !{i32 7, !"frame-pointer", i32 2}
!621 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 210, type: !622, scopeLine: 211, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !61}
!624 = !{!625}
!625 = !DILocalVariable(name: "status", arg: 1, scope: !621, file: !2, line: 210, type: !61)
!626 = !DILocation(line: 0, scope: !621)
!627 = !DILocation(line: 212, column: 14, scope: !628)
!628 = distinct !DILexicalBlock(scope: !621, file: !2, line: 212, column: 7)
!629 = !DILocation(line: 212, column: 7, scope: !621)
!630 = !DILocation(line: 213, column: 5, scope: !628)
!631 = !DILocation(line: 213, column: 5, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !2, line: 213, column: 5)
!633 = !{!634, !634, i64 0}
!634 = !{!"any pointer", !635, i64 0}
!635 = !{!"omnipotent char", !636, i64 0}
!636 = !{!"Simple C/C++ TBAA"}
!637 = !DILocation(line: 220, column: 15, scope: !638)
!638 = distinct !DILexicalBlock(scope: !628, file: !2, line: 215, column: 5)
!639 = !DILocation(line: 220, column: 29, scope: !638)
!640 = !DILocation(line: 216, column: 7, scope: !638)
!641 = !DILocation(line: 225, column: 5, scope: !638)
!642 = !DILocation(line: 221, column: 7, scope: !638)
!643 = !DILocation(line: 227, column: 7, scope: !638)
!644 = !DILocation(line: 236, column: 5, scope: !638)
!645 = !DILocation(line: 229, column: 7, scope: !638)
!646 = !DILocation(line: 243, column: 5, scope: !638)
!647 = !DILocation(line: 237, column: 7, scope: !638)
!648 = !DILocation(line: 247, column: 5, scope: !638)
!649 = !DILocation(line: 244, column: 7, scope: !638)
!650 = !DILocation(line: 248, column: 39, scope: !638)
!651 = !DILocation(line: 248, column: 7, scope: !638)
!652 = !DILocation(line: 249, column: 42, scope: !638)
!653 = !DILocation(line: 249, column: 7, scope: !638)
!654 = !DILocation(line: 250, column: 7, scope: !638)
!655 = !DILocation(line: 252, column: 3, scope: !621)
!656 = !DISubprogram(name: "fprintf", scope: !657, file: !657, line: 155, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!657 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!658 = !DISubroutineType(types: !659)
!659 = !{!61, !660, !661, null}
!660 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !324)
!661 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!662 = !{}
!663 = !DISubprogram(name: "printf", scope: !657, file: !657, line: 175, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!664 = !DISubroutineType(types: !665)
!665 = !{!61, !661, null}
!666 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !657, file: !657, line: 157, type: !667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!667 = !DISubroutineType(types: !668)
!668 = !{!61, !661, !660}
!669 = distinct !DISubprogram(name: "emit_stdin_note", scope: !60, file: !60, line: 577, type: !670, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !662)
!670 = !DISubroutineType(types: !671)
!671 = !{null}
!672 = !DILocation(line: 581, column: 5, scope: !669)
!673 = !DILocation(line: 579, column: 3, scope: !669)
!674 = !DILocation(line: 582, column: 1, scope: !669)
!675 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !60, file: !60, line: 657, type: !676, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !102}
!678 = !{!679, !680, !687, !688, !690, !691}
!679 = !DILocalVariable(name: "program", arg: 1, scope: !675, file: !60, line: 657, type: !102)
!680 = !DILocalVariable(name: "infomap", scope: !675, file: !60, line: 659, type: !681)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 896, elements: !560)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !675, file: !60, line: 659, size: 128, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !683, file: !60, line: 659, baseType: !102, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !683, file: !60, line: 659, baseType: !102, size: 64, offset: 64)
!687 = !DILocalVariable(name: "node", scope: !675, file: !60, line: 669, type: !102)
!688 = !DILocalVariable(name: "map_prog", scope: !675, file: !60, line: 670, type: !689)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!690 = !DILocalVariable(name: "lc_messages", scope: !675, file: !60, line: 682, type: !102)
!691 = !DILocalVariable(name: "url_program", scope: !675, file: !60, line: 695, type: !102)
!692 = !DILocation(line: 0, scope: !675)
!693 = !DILocation(line: 659, column: 3, scope: !675)
!694 = !DILocation(line: 659, column: 67, scope: !675)
!695 = !DILocation(line: 670, column: 36, scope: !675)
!696 = !DILocation(line: 672, column: 3, scope: !675)
!697 = !DILocation(line: 672, column: 20, scope: !675)
!698 = !{!699, !634, i64 0}
!699 = !{!"infomap", !634, i64 0, !634, i64 8}
!700 = !DILocation(line: 672, column: 10, scope: !675)
!701 = !DILocation(line: 672, column: 28, scope: !675)
!702 = !DILocation(line: 672, column: 33, scope: !675)
!703 = !DILocation(line: 672, column: 31, scope: !675)
!704 = !DILocation(line: 673, column: 13, scope: !675)
!705 = distinct !{!705, !696, !704, !706, !707}
!706 = !{!"llvm.loop.mustprogress"}
!707 = !{!"llvm.loop.unroll.disable"}
!708 = !DILocation(line: 675, column: 17, scope: !709)
!709 = distinct !DILexicalBlock(scope: !675, file: !60, line: 675, column: 7)
!710 = !{!699, !634, i64 8}
!711 = !DILocation(line: 675, column: 7, scope: !709)
!712 = !DILocation(line: 675, column: 7, scope: !675)
!713 = !DILocation(line: 676, column: 22, scope: !709)
!714 = !DILocation(line: 676, column: 5, scope: !709)
!715 = !DILocation(line: 678, column: 3, scope: !675)
!716 = !DILocation(line: 682, column: 29, scope: !675)
!717 = !DILocation(line: 683, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !675, file: !60, line: 683, column: 7)
!719 = !DILocation(line: 683, column: 19, scope: !718)
!720 = !DILocation(line: 683, column: 22, scope: !718)
!721 = !DILocation(line: 683, column: 7, scope: !675)
!722 = !DILocation(line: 690, column: 61, scope: !723)
!723 = distinct !DILexicalBlock(scope: !718, file: !60, line: 684, column: 5)
!724 = !DILocation(line: 689, column: 7, scope: !723)
!725 = !DILocation(line: 691, column: 5, scope: !723)
!726 = !DILocation(line: 695, column: 29, scope: !675)
!727 = !DILocation(line: 696, column: 3, scope: !675)
!728 = !DILocation(line: 699, column: 22, scope: !675)
!729 = !DILocation(line: 699, column: 17, scope: !675)
!730 = !DILocation(line: 698, column: 3, scope: !675)
!731 = !DILocation(line: 700, column: 1, scope: !675)
!732 = !DISubprogram(name: "exit", scope: !733, file: !733, line: 145, type: !622, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !662)
!733 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!734 = !DISubprogram(name: "strcmp", scope: !735, file: !735, line: 77, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!735 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!736 = !DISubroutineType(types: !737)
!737 = !{!61, !102, !102}
!738 = !DISubprogram(name: "setlocale", scope: !739, file: !739, line: 53, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!739 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!740 = !DISubroutineType(types: !741)
!741 = !{!107, !61, !102}
!742 = !DISubprogram(name: "strncmp", scope: !735, file: !735, line: 84, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!743 = !DISubroutineType(types: !744)
!744 = !{!61, !102, !102, !108}
!745 = !DILocation(line: 0, scope: !176)
!746 = !DILocation(line: 830, column: 3, scope: !176)
!747 = !DILocation(line: 830, column: 17, scope: !176)
!748 = !DILocation(line: 833, column: 21, scope: !176)
!749 = !DILocation(line: 833, column: 3, scope: !176)
!750 = !DILocation(line: 834, column: 3, scope: !176)
!751 = !DILocation(line: 838, column: 3, scope: !176)
!752 = !DILocation(line: 840, column: 15, scope: !176)
!753 = !DILocation(line: 840, column: 13, scope: !176)
!754 = !{!755, !755, i64 0}
!755 = !{!"long", !635, i64 0}
!756 = !DILocation(line: 843, column: 12, scope: !176)
!757 = !DILocation(line: 843, column: 3, scope: !176)
!758 = !DILocation(line: 845, column: 22, scope: !176)
!759 = !DILocation(line: 845, column: 49, scope: !176)
!760 = !DILocation(line: 845, column: 19, scope: !176)
!761 = !{!762, !762, i64 0}
!762 = !{!"_Bool", !635, i64 0}
!763 = !DILocation(line: 847, column: 57, scope: !176)
!764 = !DILocation(line: 847, column: 43, scope: !176)
!765 = !DILocation(line: 847, column: 29, scope: !176)
!766 = !DILocation(line: 847, column: 15, scope: !176)
!767 = !DILocation(line: 848, column: 20, scope: !176)
!768 = !DILocation(line: 849, column: 75, scope: !176)
!769 = !DILocation(line: 849, column: 57, scope: !176)
!770 = !DILocation(line: 849, column: 43, scope: !176)
!771 = !DILocation(line: 849, column: 29, scope: !176)
!772 = !DILocation(line: 849, column: 15, scope: !176)
!773 = !DILocation(line: 851, column: 3, scope: !176)
!774 = !DILocation(line: 828, column: 9, scope: !176)
!775 = !DILocation(line: 851, column: 18, scope: !176)
!776 = !DILocation(line: 851, column: 69, scope: !176)
!777 = !DILocation(line: 852, column: 5, scope: !176)
!778 = !DILocation(line: 855, column: 21, scope: !779)
!779 = distinct !DILexicalBlock(scope: !176, file: !2, line: 853, column: 7)
!780 = !DILocation(line: 856, column: 9, scope: !779)
!781 = !DILocation(line: 859, column: 21, scope: !779)
!782 = !DILocation(line: 860, column: 9, scope: !779)
!783 = !DILocation(line: 863, column: 21, scope: !779)
!784 = !DILocation(line: 864, column: 9, scope: !779)
!785 = !DILocation(line: 867, column: 21, scope: !779)
!786 = !DILocation(line: 868, column: 9, scope: !779)
!787 = !DILocation(line: 871, column: 26, scope: !779)
!788 = !DILocation(line: 872, column: 9, scope: !779)
!789 = !DILocation(line: 875, column: 15, scope: !779)
!790 = !DILocation(line: 876, column: 9, scope: !779)
!791 = !DILocation(line: 879, column: 22, scope: !779)
!792 = !DILocation(line: 880, column: 9, scope: !779)
!793 = !DILocation(line: 883, column: 22, scope: !779)
!794 = !{!635, !635, i64 0}
!795 = !DILocation(line: 883, column: 20, scope: !779)
!796 = !DILocation(line: 884, column: 9, scope: !779)
!797 = !DILocation(line: 886, column: 7, scope: !779)
!798 = !DILocation(line: 888, column: 7, scope: !779)
!799 = !DILocation(line: 891, column: 9, scope: !779)
!800 = distinct !{!800, !773, !801, !706, !707}
!801 = !DILocation(line: 892, column: 7, scope: !176)
!802 = !DILocation(line: 894, column: 10, scope: !803)
!803 = distinct !DILexicalBlock(scope: !176, file: !2, line: 894, column: 7)
!804 = !{i8 0, i8 2}
!805 = !DILocation(line: 894, column: 22, scope: !803)
!806 = !DILocation(line: 894, column: 25, scope: !803)
!807 = !DILocation(line: 894, column: 37, scope: !803)
!808 = !DILocation(line: 894, column: 40, scope: !803)
!809 = !DILocation(line: 894, column: 52, scope: !803)
!810 = !DILocation(line: 894, column: 55, scope: !803)
!811 = !DILocation(line: 895, column: 10, scope: !803)
!812 = !DILocation(line: 895, column: 13, scope: !803)
!813 = !DILocation(line: 894, column: 7, scope: !176)
!814 = !DILocation(line: 896, column: 45, scope: !803)
!815 = !DILocation(line: 896, column: 31, scope: !803)
!816 = !DILocation(line: 896, column: 17, scope: !803)
!817 = !DILocation(line: 896, column: 5, scope: !803)
!818 = !DILocation(line: 900, column: 7, scope: !323)
!819 = !DILocation(line: 900, column: 7, scope: !176)
!820 = !DILocation(line: 906, column: 11, scope: !821)
!821 = distinct !DILexicalBlock(scope: !322, file: !2, line: 906, column: 11)
!822 = !{!823, !823, i64 0}
!823 = !{!"int", !635, i64 0}
!824 = !DILocation(line: 906, column: 18, scope: !821)
!825 = !DILocation(line: 906, column: 11, scope: !322)
!826 = !DILocation(line: 908, column: 47, scope: !827)
!827 = distinct !DILexicalBlock(scope: !821, file: !2, line: 907, column: 9)
!828 = !DILocation(line: 908, column: 11, scope: !827)
!829 = !DILocation(line: 909, column: 20, scope: !827)
!830 = !DILocation(line: 909, column: 11, scope: !827)
!831 = !DILocation(line: 911, column: 11, scope: !827)
!832 = !DILocation(line: 914, column: 11, scope: !833)
!833 = distinct !DILexicalBlock(scope: !322, file: !2, line: 914, column: 11)
!834 = !DILocation(line: 914, column: 11, scope: !322)
!835 = !DILocation(line: 915, column: 18, scope: !833)
!836 = !DILocation(line: 0, scope: !322)
!837 = !DILocation(line: 915, column: 9, scope: !833)
!838 = !DILocation(line: 918, column: 20, scope: !839)
!839 = distinct !DILexicalBlock(scope: !833, file: !2, line: 917, column: 9)
!840 = !DILocation(line: 919, column: 22, scope: !841)
!841 = distinct !DILexicalBlock(scope: !839, file: !2, line: 919, column: 15)
!842 = !DILocation(line: 919, column: 15, scope: !839)
!843 = !DILocation(line: 920, column: 13, scope: !841)
!844 = !DILocation(line: 0, scope: !833)
!845 = !DILocation(line: 926, column: 7, scope: !322)
!846 = !DILocation(line: 926, column: 19, scope: !322)
!847 = !DILocation(line: 927, column: 18, scope: !848)
!848 = distinct !DILexicalBlock(scope: !322, file: !2, line: 927, column: 11)
!849 = !DILocation(line: 927, column: 11, scope: !848)
!850 = !DILocation(line: 927, column: 40, scope: !848)
!851 = !DILocation(line: 928, column: 11, scope: !848)
!852 = !DILocation(line: 928, column: 14, scope: !848)
!853 = !{!854, !855, i64 4}
!854 = !{!"stat", !823, i64 0, !855, i64 4, !855, i64 6, !856, i64 8, !823, i64 16, !823, i64 20, !823, i64 24, !857, i64 32, !857, i64 48, !857, i64 64, !857, i64 80, !856, i64 96, !856, i64 104, !823, i64 112, !823, i64 116, !823, i64 120, !823, i64 124, !635, i64 128}
!855 = !{!"short", !635, i64 0}
!856 = !{!"long long", !635, i64 0}
!857 = !{!"timespec", !755, i64 0, !755, i64 8}
!858 = !DILocation(line: 929, column: 11, scope: !848)
!859 = !DILocation(line: 929, column: 17, scope: !848)
!860 = !{!854, !856, i64 96}
!861 = !DILocation(line: 929, column: 14, scope: !848)
!862 = !DILocation(line: 929, column: 28, scope: !848)
!863 = !DILocation(line: 929, column: 25, scope: !848)
!864 = !DILocation(line: 927, column: 11, scope: !322)
!865 = !DILocation(line: 932, column: 11, scope: !866)
!866 = distinct !DILexicalBlock(scope: !848, file: !2, line: 930, column: 9)
!867 = !DILocation(line: 933, column: 17, scope: !868)
!868 = distinct !DILexicalBlock(scope: !866, file: !2, line: 933, column: 15)
!869 = !DILocation(line: 933, column: 44, scope: !868)
!870 = !DILocation(line: 933, column: 47, scope: !868)
!871 = !DILocation(line: 933, column: 63, scope: !868)
!872 = !DILocation(line: 933, column: 15, scope: !866)
!873 = !DILocation(line: 934, column: 13, scope: !868)
!874 = !DILocation(line: 936, column: 23, scope: !866)
!875 = !{!876, !634, i64 8}
!876 = !{!"Tokens", !755, i64 0, !634, i64 8, !634, i64 16, !877, i64 24, !877, i64 112, !877, i64 200}
!877 = !{!"obstack", !755, i64 0, !634, i64 8, !634, i64 16, !634, i64 24, !634, i64 32, !635, i64 40, !755, i64 48, !635, i64 56, !635, i64 64, !634, i64 72, !823, i64 80, !823, i64 80, !823, i64 80}
!878 = !DILocation(line: 937, column: 24, scope: !866)
!879 = !{!876, !755, i64 0}
!880 = !DILocation(line: 938, column: 16, scope: !866)
!881 = !DILocation(line: 939, column: 9, scope: !866)
!882 = !DILocation(line: 944, column: 16, scope: !883)
!883 = distinct !DILexicalBlock(scope: !848, file: !2, line: 941, column: 9)
!884 = !DILocation(line: 0, scope: !848)
!885 = !DILocation(line: 946, column: 5, scope: !323)
!886 = !DILocation(line: 946, column: 5, scope: !322)
!887 = !DILocation(line: 950, column: 16, scope: !888)
!888 = distinct !DILexicalBlock(scope: !323, file: !2, line: 948, column: 5)
!889 = !DILocation(line: 950, column: 23, scope: !888)
!890 = !DILocation(line: 950, column: 39, scope: !888)
!891 = !DILocation(line: 950, column: 37, scope: !888)
!892 = !DILocation(line: 951, column: 17, scope: !888)
!893 = !DILocation(line: 951, column: 24, scope: !888)
!894 = !DILocation(line: 951, column: 40, scope: !888)
!895 = !DILocation(line: 951, column: 38, scope: !888)
!896 = !DILocation(line: 951, column: 16, scope: !888)
!897 = !DILocation(line: 952, column: 12, scope: !888)
!898 = !DILocation(line: 0, scope: !323)
!899 = !DILocation(line: 955, column: 8, scope: !900)
!900 = distinct !DILexicalBlock(scope: !176, file: !2, line: 955, column: 7)
!901 = !DILocation(line: 955, column: 7, scope: !176)
!902 = !DILocation(line: 956, column: 5, scope: !900)
!903 = !DILocation(line: 958, column: 13, scope: !176)
!904 = !DILocation(line: 959, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !176, file: !2, line: 959, column: 7)
!906 = !DILocation(line: 959, column: 18, scope: !905)
!907 = !DILocation(line: 959, column: 7, scope: !176)
!908 = !DILocation(line: 960, column: 18, scope: !905)
!909 = !DILocation(line: 960, column: 5, scope: !905)
!910 = !DILocation(line: 962, column: 20, scope: !905)
!911 = !DILocation(line: 962, column: 18, scope: !905)
!912 = !DILocation(line: 0, scope: !374)
!913 = !DILocation(line: 965, column: 8, scope: !374)
!914 = !DILocation(line: 965, scope: !374)
!915 = !DILocation(line: 0, scope: !376)
!916 = !DILocation(line: 968, column: 7, scope: !376)
!917 = !DILocation(line: 968, column: 26, scope: !376)
!918 = !DILocation(line: 969, column: 25, scope: !376)
!919 = !DILocation(line: 970, column: 12, scope: !920)
!920 = distinct !DILexicalBlock(scope: !376, file: !2, line: 970, column: 11)
!921 = !DILocation(line: 970, column: 11, scope: !376)
!922 = !DILocation(line: 972, column: 19, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !2, line: 971, column: 9)
!924 = !DILocation(line: 972, column: 11, scope: !923)
!925 = !DILocation(line: 975, column: 15, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !2, line: 973, column: 13)
!927 = !DILocation(line: 977, column: 25, scope: !926)
!928 = !DILocation(line: 978, column: 22, scope: !926)
!929 = !DILocation(line: 977, column: 15, scope: !926)
!930 = !DILocation(line: 980, column: 15, scope: !926)
!931 = !DILocation(line: 982, column: 15, scope: !926)
!932 = !DILocation(line: 984, column: 15, scope: !926)
!933 = !DILocation(line: 987, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !376, file: !2, line: 987, column: 11)
!935 = !DILocation(line: 987, column: 22, scope: !934)
!936 = !DILocation(line: 987, column: 25, scope: !934)
!937 = !DILocation(line: 987, column: 49, scope: !934)
!938 = !DILocation(line: 987, column: 52, scope: !934)
!939 = !DILocation(line: 987, column: 11, scope: !376)
!940 = !DILocation(line: 993, column: 18, scope: !941)
!941 = distinct !DILexicalBlock(scope: !934, file: !2, line: 988, column: 9)
!942 = !DILocation(line: 991, column: 11, scope: !941)
!943 = !DILocation(line: 995, column: 9, scope: !941)
!944 = !DILocation(line: 997, column: 12, scope: !384)
!945 = !DILocation(line: 997, column: 11, scope: !376)
!946 = !DILocation(line: 1003, column: 26, scope: !382)
!947 = !DILocation(line: 1003, column: 15, scope: !383)
!948 = !DILocation(line: 1004, column: 13, scope: !382)
!949 = !DILocation(line: 1010, column: 47, scope: !381)
!950 = !DILocation(line: 0, scope: !381)
!951 = !DILocation(line: 1011, column: 42, scope: !381)
!952 = !DILocation(line: 1011, column: 15, scope: !381)
!953 = !DILocation(line: 1015, column: 9, scope: !383)
!954 = !DILocation(line: 1017, column: 11, scope: !955)
!955 = distinct !DILexicalBlock(scope: !376, file: !2, line: 1017, column: 11)
!956 = !DILocation(line: 1017, column: 11, scope: !376)
!957 = !DILocation(line: 1018, column: 9, scope: !955)
!958 = !DILocation(line: 1020, column: 44, scope: !955)
!959 = !DILocation(line: 1020, column: 36, scope: !955)
!960 = !DILocation(line: 1020, column: 15, scope: !955)
!961 = !DILocation(line: 1020, column: 12, scope: !955)
!962 = !DILocation(line: 0, scope: !955)
!963 = !DILocation(line: 1022, column: 13, scope: !964)
!964 = distinct !DILexicalBlock(scope: !376, file: !2, line: 1022, column: 11)
!965 = !DILocation(line: 1022, column: 11, scope: !376)
!966 = !DILocation(line: 1023, column: 9, scope: !964)
!967 = !DILocation(line: 1023, column: 20, scope: !964)
!968 = !DILocation(line: 1023, column: 27, scope: !964)
!969 = !{!970, !823, i64 0}
!970 = !{!"fstatus", !823, i64 0, !854, i64 8}
!971 = !DILocation(line: 1024, column: 5, scope: !377)
!972 = !DILocation(line: 1024, column: 5, scope: !376)
!973 = !DILocation(line: 965, column: 27, scope: !377)
!974 = !DILocation(line: 965, column: 3, scope: !377)
!975 = distinct !{!975, !976, !977, !707}
!976 = !DILocation(line: 965, column: 3, scope: !374)
!977 = !DILocation(line: 1024, column: 5, scope: !374)
!978 = !DILocation(line: 1025, column: 2, scope: !176)
!979 = !DILocation(line: 1030, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !176, file: !2, line: 1030, column: 7)
!981 = !DILocation(line: 1030, column: 10, scope: !980)
!982 = !DILocation(line: 1030, column: 14, scope: !980)
!983 = !DILocation(line: 1030, column: 25, scope: !980)
!984 = !DILocation(line: 1030, column: 28, scope: !980)
!985 = !DILocation(line: 1030, column: 50, scope: !980)
!986 = !DILocation(line: 1030, column: 7, scope: !176)
!987 = !DILocation(line: 1031, column: 27, scope: !980)
!988 = !DILocation(line: 1031, column: 11, scope: !980)
!989 = !DILocation(line: 1031, column: 8, scope: !980)
!990 = !DILocation(line: 1031, column: 5, scope: !980)
!991 = !DILocation(line: 1033, column: 7, scope: !992)
!992 = distinct !DILexicalBlock(scope: !176, file: !2, line: 1033, column: 7)
!993 = !DILocation(line: 1033, column: 7, scope: !176)
!994 = !DILocation(line: 1034, column: 5, scope: !992)
!995 = !DILocation(line: 1036, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !176, file: !2, line: 1036, column: 7)
!997 = !DILocation(line: 1036, column: 18, scope: !996)
!998 = !DILocation(line: 1037, column: 7, scope: !996)
!999 = !DILocation(line: 1037, column: 11, scope: !996)
!1000 = !DILocation(line: 1037, column: 22, scope: !996)
!1001 = !DILocation(line: 1037, column: 36, scope: !996)
!1002 = !DILocation(line: 1037, column: 43, scope: !996)
!1003 = !DILocation(line: 1037, column: 41, scope: !996)
!1004 = !DILocation(line: 1036, column: 7, scope: !176)
!1005 = !DILocation(line: 1039, column: 11, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 1039, column: 11)
!1007 = distinct !DILexicalBlock(scope: !996, file: !2, line: 1038, column: 5)
!1008 = !DILocation(line: 1039, column: 11, scope: !1007)
!1009 = !DILocation(line: 1041, column: 23, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 1040, column: 9)
!1011 = !DILocation(line: 1042, column: 11, scope: !1010)
!1012 = !DILocation(line: 1044, column: 9, scope: !1010)
!1013 = !DILocation(line: 1045, column: 11, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 1045, column: 11)
!1015 = !DILocation(line: 1045, column: 11, scope: !1007)
!1016 = !DILocation(line: 1047, column: 23, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 1046, column: 9)
!1018 = !DILocation(line: 1048, column: 11, scope: !1017)
!1019 = !DILocation(line: 1050, column: 9, scope: !1017)
!1020 = !DILocation(line: 0, scope: !1007)
!1021 = !DILocation(line: 1051, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 1051, column: 11)
!1023 = !DILocation(line: 1051, column: 11, scope: !1007)
!1024 = !DILocation(line: 1053, column: 23, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 1052, column: 9)
!1026 = !DILocation(line: 1054, column: 11, scope: !1025)
!1027 = !DILocation(line: 1056, column: 9, scope: !1025)
!1028 = !DILocation(line: 1057, column: 11, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 1057, column: 11)
!1030 = !DILocation(line: 1057, column: 11, scope: !1007)
!1031 = !DILocation(line: 1059, column: 23, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 1058, column: 9)
!1033 = !DILocation(line: 1060, column: 11, scope: !1032)
!1034 = !DILocation(line: 1062, column: 9, scope: !1032)
!1035 = !DILocation(line: 1064, column: 21, scope: !1007)
!1036 = !DILocation(line: 1064, column: 34, scope: !1007)
!1037 = !DILocation(line: 1064, column: 47, scope: !1007)
!1038 = !DILocation(line: 1064, column: 60, scope: !1007)
!1039 = !DILocation(line: 1065, column: 21, scope: !1007)
!1040 = !DILocation(line: 1066, column: 21, scope: !1007)
!1041 = !DILocation(line: 1066, column: 32, scope: !1007)
!1042 = !DILocation(line: 1064, column: 7, scope: !1007)
!1043 = !DILocation(line: 1067, column: 5, scope: !1007)
!1044 = !DILocation(line: 1069, column: 3, scope: !176)
!1045 = !DILocation(line: 1071, column: 3, scope: !176)
!1046 = !DILocation(line: 1073, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !176, file: !2, line: 1073, column: 7)
!1048 = !DILocation(line: 1073, column: 23, scope: !1047)
!1049 = !DILocation(line: 1073, column: 26, scope: !1047)
!1050 = !DILocation(line: 1073, column: 47, scope: !1047)
!1051 = !DILocation(line: 1073, column: 7, scope: !176)
!1052 = !DILocation(line: 1074, column: 5, scope: !1047)
!1053 = !DILocation(line: 1076, column: 10, scope: !176)
!1054 = !DILocation(line: 1076, column: 3, scope: !176)
!1055 = !DILocation(line: 1077, column: 1, scope: !176)
!1056 = !DISubprogram(name: "set_program_name", scope: !1057, file: !1057, line: 37, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1057 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1058 = !DISubprogram(name: "atexit", scope: !733, file: !733, line: 133, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!61, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!1062 = !DISubprogram(name: "getpagesize", scope: !1063, file: !1063, line: 558, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1063 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/unistd.h", directory: "")
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!61}
!1066 = !DISubprogram(name: "setvbuf", scope: !657, file: !657, line: 184, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!61, !660, !1069, !61, !108}
!1069 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!1070 = !DISubprogram(name: "getenv", scope: !733, file: !733, line: 147, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!107, !102}
!1073 = !DISubprogram(name: "rpl_getopt_long", scope: !544, file: !544, line: 66, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!61, !61, !179, !102, !1076, !549}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!1077 = !DISubprogram(name: "__xargmatch_internal", scope: !1078, file: !1078, line: 94, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1078 = !DIFile(filename: "../lib/argmatch.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!1081, !102, !102, !1083, !105, !108, !1084, !184}
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1082, line: 35, baseType: !233)
!1082 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !1078, line: 66, baseType: !1061)
!1085 = !DISubprogram(name: "version_etc", scope: !1086, file: !1086, line: 65, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1086 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !324, !102, !102, !102, null}
!1089 = !DISubprogram(name: "quotearg_style", scope: !66, file: !66, line: 383, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!107, !65, !102}
!1092 = !DISubprogram(name: "error", scope: !1093, file: !1093, line: 395, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1093 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !61, !61, !102, null}
!1096 = !DISubprogram(name: "rpl_fopen", scope: !1097, file: !1097, line: 958, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1097 = !DIFile(filename: "./lib/stdio.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!324, !661, !661}
!1100 = !DISubprogram(name: "__error", scope: !1101, file: !1101, line: 80, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1101 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!549}
!1104 = !DISubprogram(name: "fileno", scope: !657, file: !657, line: 229, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!61, !324}
!1107 = !DISubprogram(name: "fstat", linkageName: "\01_fstat$INODE64", scope: !196, file: !196, line: 382, type: !1108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!61, !61, !1110}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!1111 = !DISubprogram(name: "physmem_available", scope: !1112, file: !1112, line: 24, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1112 = !DIFile(filename: "../lib/physmem.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!1115}
!1115 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1116 = !DISubprogram(name: "readtokens0_init", scope: !259, file: !259, line: 37, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!1120 = !DISubprogram(name: "readtokens0", scope: !259, file: !259, line: 39, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!184, !324, !1119}
!1123 = !DISubprogram(name: "rpl_fclose", scope: !1097, file: !1097, line: 778, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1124 = !DISubprogram(name: "argv_iter_init_argv", scope: !86, file: !86, line: 35, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!319, !179}
!1127 = !DISubprogram(name: "argv_iter_init_stream", scope: !86, file: !86, line: 37, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!319, !324}
!1130 = !DISubprogram(name: "xalloc_die", scope: !1131, file: !1131, line: 49, type: !670, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1131 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1132 = distinct !DISubprogram(name: "get_input_fstatus", scope: !2, file: !2, line: 766, type: !1133, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1137)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!190, !108, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1132, file: !2, line: 766, type: !108)
!1139 = !DILocalVariable(name: "file", arg: 2, scope: !1132, file: !2, line: 766, type: !1135)
!1140 = !DILocalVariable(name: "fstatus", scope: !1132, file: !2, line: 768, type: !190)
!1141 = !DILocalVariable(name: "i", scope: !1142, file: !2, line: 778, type: !108)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 778, column: 7)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 777, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 770, column: 7)
!1145 = !DILocation(line: 0, scope: !1132)
!1146 = !DILocation(line: 768, column: 39, scope: !1132)
!1147 = !DILocation(line: 768, column: 29, scope: !1132)
!1148 = !DILocation(line: 770, column: 14, scope: !1144)
!1149 = !DILocation(line: 771, column: 7, scope: !1144)
!1150 = !DILocation(line: 771, column: 18, scope: !1144)
!1151 = !DILocation(line: 772, column: 11, scope: !1144)
!1152 = !DILocation(line: 772, column: 16, scope: !1144)
!1153 = !DILocation(line: 772, column: 30, scope: !1144)
!1154 = !DILocation(line: 772, column: 28, scope: !1144)
!1155 = !DILocation(line: 772, column: 44, scope: !1144)
!1156 = !DILocation(line: 772, column: 42, scope: !1144)
!1157 = !DILocation(line: 773, column: 18, scope: !1144)
!1158 = !DILocation(line: 773, column: 16, scope: !1144)
!1159 = !DILocation(line: 773, column: 32, scope: !1144)
!1160 = !DILocation(line: 773, column: 30, scope: !1144)
!1161 = !DILocation(line: 774, column: 15, scope: !1144)
!1162 = !DILocation(line: 770, column: 7, scope: !1132)
!1163 = !DILocation(line: 775, column: 5, scope: !1144)
!1164 = !DILocation(line: 775, column: 16, scope: !1144)
!1165 = !DILocation(line: 775, column: 23, scope: !1144)
!1166 = !DILocation(line: 0, scope: !1142)
!1167 = !DILocation(line: 778, column: 12, scope: !1142)
!1168 = !DILocation(line: 778, scope: !1142)
!1169 = !DILocation(line: 778, column: 28, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 778, column: 7)
!1171 = !DILocation(line: 778, column: 7, scope: !1142)
!1172 = !DILocation(line: 779, column: 32, scope: !1170)
!1173 = !DILocation(line: 779, column: 40, scope: !1170)
!1174 = !DILocation(line: 779, column: 43, scope: !1170)
!1175 = !DILocation(line: 779, column: 30, scope: !1170)
!1176 = !DILocation(line: 780, column: 54, scope: !1170)
!1177 = !DILocation(line: 780, column: 65, scope: !1170)
!1178 = !DILocation(line: 780, column: 32, scope: !1170)
!1179 = !DILocation(line: 781, column: 32, scope: !1170)
!1180 = !DILocation(line: 779, column: 9, scope: !1170)
!1181 = !DILocation(line: 779, column: 20, scope: !1170)
!1182 = !DILocation(line: 779, column: 27, scope: !1170)
!1183 = !DILocation(line: 778, column: 39, scope: !1170)
!1184 = !DILocation(line: 778, column: 7, scope: !1170)
!1185 = distinct !{!1185, !1171, !1186, !706, !707}
!1186 = !DILocation(line: 781, column: 62, scope: !1142)
!1187 = !DILocation(line: 784, column: 3, scope: !1132)
!1188 = distinct !DISubprogram(name: "compute_number_width", scope: !2, file: !2, line: 793, type: !1189, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1193)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!61, !108, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!1193 = !{!1194, !1195, !1196, !1197, !1200, !1201}
!1194 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1188, file: !2, line: 793, type: !108)
!1195 = !DILocalVariable(name: "fstatus", arg: 2, scope: !1188, file: !2, line: 793, type: !1191)
!1196 = !DILocalVariable(name: "width", scope: !1188, file: !2, line: 795, type: !61)
!1197 = !DILocalVariable(name: "minimum_width", scope: !1198, file: !2, line: 799, type: !61)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 798, column: 5)
!1199 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 797, column: 7)
!1200 = !DILocalVariable(name: "regular_total", scope: !1198, file: !2, line: 800, type: !436)
!1201 = !DILocalVariable(name: "i", scope: !1202, file: !2, line: 802, type: !108)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 802, column: 7)
!1203 = !DILocation(line: 0, scope: !1188)
!1204 = !DILocation(line: 797, column: 9, scope: !1199)
!1205 = !DILocation(line: 797, column: 18, scope: !1199)
!1206 = !DILocation(line: 797, column: 21, scope: !1199)
!1207 = !DILocation(line: 797, column: 32, scope: !1199)
!1208 = !DILocation(line: 797, column: 39, scope: !1199)
!1209 = !DILocation(line: 797, column: 7, scope: !1188)
!1210 = !DILocation(line: 0, scope: !1198)
!1211 = !DILocation(line: 0, scope: !1202)
!1212 = !DILocation(line: 802, column: 12, scope: !1202)
!1213 = !DILocation(line: 799, column: 11, scope: !1198)
!1214 = !DILocation(line: 800, column: 17, scope: !1198)
!1215 = !DILocation(line: 802, scope: !1202)
!1216 = !DILocation(line: 802, column: 28, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 802, column: 7)
!1218 = !DILocation(line: 802, column: 7, scope: !1202)
!1219 = !DILocation(line: 803, column: 15, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 803, column: 13)
!1221 = !DILocation(line: 803, column: 26, scope: !1220)
!1222 = !DILocation(line: 803, column: 13, scope: !1217)
!1223 = !DILocation(line: 805, column: 17, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 805, column: 17)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 804, column: 11)
!1226 = !{!970, !855, i64 12}
!1227 = !DILocation(line: 805, column: 17, scope: !1225)
!1228 = !DILocation(line: 806, column: 32, scope: !1224)
!1229 = !DILocation(line: 806, column: 43, scope: !1224)
!1230 = !DILocation(line: 806, column: 46, scope: !1224)
!1231 = !{!970, !856, i64 104}
!1232 = !DILocation(line: 806, column: 29, scope: !1224)
!1233 = !DILocation(line: 806, column: 15, scope: !1224)
!1234 = !DILocation(line: 809, column: 11, scope: !1225)
!1235 = !DILocation(line: 802, column: 39, scope: !1217)
!1236 = !DILocation(line: 802, column: 7, scope: !1217)
!1237 = distinct !{!1237, !1218, !1238, !706, !707}
!1238 = !DILocation(line: 809, column: 11, scope: !1202)
!1239 = !DILocation(line: 811, column: 7, scope: !1198)
!1240 = !DILocation(line: 811, column: 17, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 811, column: 7)
!1242 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 811, column: 7)
!1243 = !DILocation(line: 811, column: 7, scope: !1242)
!1244 = !DILocation(line: 812, column: 14, scope: !1241)
!1245 = !DILocation(line: 812, column: 9, scope: !1241)
!1246 = !DILocation(line: 811, column: 49, scope: !1241)
!1247 = !DILocation(line: 811, column: 7, scope: !1241)
!1248 = distinct !{!1248, !1243, !1249, !706, !707}
!1249 = !DILocation(line: 812, column: 14, scope: !1242)
!1250 = !DILocation(line: 813, column: 17, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 813, column: 11)
!1252 = !DILocation(line: 813, column: 11, scope: !1198)
!1253 = !DILocation(line: 814, column: 9, scope: !1251)
!1254 = !DILocation(line: 815, column: 5, scope: !1198)
!1255 = !DILocation(line: 817, column: 3, scope: !1188)
!1256 = !DISubprogram(name: "argv_iter", scope: !86, file: !86, line: 39, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!107, !319, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1260 = !DISubprogram(name: "quotearg_n_style_colon", scope: !66, file: !66, line: 403, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!107, !61, !65, !102}
!1263 = !DISubprogram(name: "__assert_rtn", scope: !1264, file: !1264, line: 82, type: !1265, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1264 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/assert.h", directory: "")
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !102, !102, !61, !102}
!1267 = !DISubprogram(name: "argv_iter_n_args", scope: !86, file: !86, line: 41, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!108, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!1272 = distinct !DISubprogram(name: "wc_file", scope: !2, file: !2, line: 730, type: !1273, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!184, !102, !190}
!1275 = !{!1276, !1277, !1278, !1281}
!1276 = !DILocalVariable(name: "file", arg: 1, scope: !1272, file: !2, line: 730, type: !102)
!1277 = !DILocalVariable(name: "fstatus", arg: 2, scope: !1272, file: !2, line: 730, type: !190)
!1278 = !DILocalVariable(name: "fd", scope: !1279, file: !2, line: 740, type: !61)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 739, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 732, column: 7)
!1281 = !DILocalVariable(name: "ok", scope: !1282, file: !2, line: 748, type: !184)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 747, column: 9)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 741, column: 11)
!1284 = !DILocation(line: 0, scope: !1272)
!1285 = !DILocation(line: 732, column: 9, scope: !1280)
!1286 = !DILocation(line: 732, column: 14, scope: !1280)
!1287 = !DILocation(line: 732, column: 17, scope: !1280)
!1288 = !DILocation(line: 732, column: 7, scope: !1272)
!1289 = !DILocation(line: 734, column: 23, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 733, column: 5)
!1291 = !DILocation(line: 735, column: 7, scope: !1290)
!1292 = !DILocation(line: 736, column: 14, scope: !1290)
!1293 = !DILocation(line: 736, column: 7, scope: !1290)
!1294 = !DILocation(line: 740, column: 16, scope: !1279)
!1295 = !DILocation(line: 0, scope: !1279)
!1296 = !DILocation(line: 741, column: 14, scope: !1283)
!1297 = !DILocation(line: 741, column: 11, scope: !1279)
!1298 = !DILocation(line: 743, column: 21, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 742, column: 9)
!1300 = !DILocation(line: 743, column: 34, scope: !1299)
!1301 = !DILocation(line: 743, column: 11, scope: !1299)
!1302 = !DILocation(line: 744, column: 11, scope: !1299)
!1303 = !DILocation(line: 748, column: 21, scope: !1282)
!1304 = !DILocation(line: 748, column: 16, scope: !1282)
!1305 = !DILocation(line: 0, scope: !1282)
!1306 = !DILocation(line: 749, column: 15, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 749, column: 15)
!1308 = !DILocation(line: 749, column: 26, scope: !1307)
!1309 = !DILocation(line: 749, column: 15, scope: !1282)
!1310 = !DILocation(line: 751, column: 25, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 750, column: 13)
!1312 = !DILocation(line: 751, column: 38, scope: !1311)
!1313 = !DILocation(line: 751, column: 15, scope: !1311)
!1314 = !DILocation(line: 752, column: 15, scope: !1311)
!1315 = !DILocation(line: 754, column: 18, scope: !1282)
!1316 = !DILocation(line: 754, column: 11, scope: !1282)
!1317 = !DILocation(line: 0, scope: !1283)
!1318 = !DILocation(line: 0, scope: !1280)
!1319 = !DILocation(line: 757, column: 1, scope: !1272)
!1320 = !DISubprogram(name: "readtokens0_free", scope: !259, file: !259, line: 38, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1321 = !DILocation(line: 0, scope: !597)
!1322 = !DILocation(line: 283, column: 3, scope: !597)
!1323 = !DILocation(line: 283, column: 8, scope: !597)
!1324 = !DILocation(line: 285, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !597, file: !2, line: 285, column: 7)
!1326 = !DILocation(line: 285, column: 7, scope: !597)
!1327 = !DILocation(line: 287, column: 27, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 286, column: 5)
!1329 = !DILocation(line: 287, column: 59, scope: !1328)
!1330 = !DILocation(line: 287, column: 41, scope: !1328)
!1331 = !DILocation(line: 287, column: 7, scope: !1328)
!1332 = !DILocation(line: 289, column: 5, scope: !1328)
!1333 = !DILocation(line: 290, column: 7, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !597, file: !2, line: 290, column: 7)
!1335 = !DILocation(line: 290, column: 7, scope: !597)
!1336 = !DILocation(line: 292, column: 27, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 291, column: 5)
!1338 = !DILocation(line: 292, column: 59, scope: !1337)
!1339 = !DILocation(line: 292, column: 41, scope: !1337)
!1340 = !DILocation(line: 292, column: 7, scope: !1337)
!1341 = !DILocation(line: 294, column: 5, scope: !1337)
!1342 = !DILocation(line: 295, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !597, file: !2, line: 295, column: 7)
!1344 = !DILocation(line: 295, column: 7, scope: !597)
!1345 = !DILocation(line: 297, column: 27, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 296, column: 5)
!1347 = !DILocation(line: 297, column: 59, scope: !1346)
!1348 = !DILocation(line: 297, column: 41, scope: !1346)
!1349 = !DILocation(line: 297, column: 7, scope: !1346)
!1350 = !DILocation(line: 299, column: 5, scope: !1346)
!1351 = !DILocation(line: 300, column: 7, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !597, file: !2, line: 300, column: 7)
!1353 = !DILocation(line: 300, column: 7, scope: !597)
!1354 = !DILocation(line: 302, column: 27, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 301, column: 5)
!1356 = !DILocation(line: 302, column: 59, scope: !1355)
!1357 = !DILocation(line: 302, column: 41, scope: !1355)
!1358 = !DILocation(line: 302, column: 7, scope: !1355)
!1359 = !DILocation(line: 304, column: 5, scope: !1355)
!1360 = !DILocation(line: 305, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !597, file: !2, line: 305, column: 7)
!1362 = !DILocation(line: 305, column: 7, scope: !597)
!1363 = !DILocation(line: 307, column: 27, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 306, column: 5)
!1365 = !DILocation(line: 307, column: 64, scope: !1364)
!1366 = !DILocation(line: 307, column: 41, scope: !1364)
!1367 = !DILocation(line: 307, column: 7, scope: !1364)
!1368 = !DILocation(line: 308, column: 5, scope: !1364)
!1369 = !DILocation(line: 309, column: 7, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !597, file: !2, line: 309, column: 7)
!1371 = !DILocation(line: 309, column: 7, scope: !597)
!1372 = !DILocation(line: 310, column: 20, scope: !1370)
!1373 = !DILocation(line: 310, column: 42, scope: !1370)
!1374 = !DILocation(line: 310, column: 5, scope: !1370)
!1375 = !DILocation(line: 311, column: 3, scope: !597)
!1376 = !DILocation(line: 312, column: 1, scope: !597)
!1377 = !DISubprogram(name: "argv_iter_free", scope: !86, file: !86, line: 32, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !319}
!1380 = !DISubprogram(name: "rpl_free", scope: !1381, file: !1381, line: 756, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1381 = !DIFile(filename: "./lib/stdlib.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1382 = !DISubprogram(name: "close", linkageName: "\01_close", scope: !1063, file: !1063, line: 437, type: !1383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!61, !61}
!1385 = !DISubprogram(name: "umaxtostr", scope: !1386, file: !1386, line: 29, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1386 = !DIFile(filename: "../lib/inttostr.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!107, !436, !107}
!1389 = !DISubprogram(name: "strchr", scope: !735, file: !735, line: 76, type: !1390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!107, !102, !61}
!1392 = !DISubprogram(name: "putc_unlocked", scope: !657, file: !657, line: 301, type: !1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!61, !61, !324}
!1395 = distinct !DISubprogram(name: "xset_binary_mode", scope: !1396, file: !1396, line: 40, type: !1397, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1399)
!1396 = !DIFile(filename: "../lib/xbinary-io.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !61, !61}
!1399 = !{!1400, !1401}
!1400 = !DILocalVariable(name: "fd", arg: 1, scope: !1395, file: !1396, line: 40, type: !61)
!1401 = !DILocalVariable(name: "mode", arg: 2, scope: !1395, file: !1396, line: 40, type: !61)
!1402 = !DILocation(line: 0, scope: !1395)
!1403 = !DILocation(line: 42, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1395, file: !1396, line: 42, column: 7)
!1405 = !DILocation(line: 42, column: 34, scope: !1404)
!1406 = !DILocation(line: 42, column: 7, scope: !1395)
!1407 = !DILocation(line: 43, column: 5, scope: !1404)
!1408 = !DILocation(line: 44, column: 1, scope: !1395)
!1409 = distinct !DISubprogram(name: "wc", scope: !2, file: !2, line: 384, type: !1410, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1412)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!184, !61, !102, !190, !239}
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1435, !1438, !1441, !1445, !1446, !1458, !1459, !1460, !1462, !1463, !1466, !1467, !1468, !1474, !1476, !1477, !1479, !1480}
!1413 = !DILocalVariable(name: "fd", arg: 1, scope: !1409, file: !2, line: 384, type: !61)
!1414 = !DILocalVariable(name: "file_x", arg: 2, scope: !1409, file: !2, line: 384, type: !102)
!1415 = !DILocalVariable(name: "fstatus", arg: 3, scope: !1409, file: !2, line: 384, type: !190)
!1416 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1409, file: !2, line: 384, type: !239)
!1417 = !DILocalVariable(name: "ok", scope: !1409, file: !2, line: 386, type: !184)
!1418 = !DILocalVariable(name: "buf", scope: !1409, file: !2, line: 387, type: !1419)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 131080, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 16385)
!1422 = !DILocalVariable(name: "bytes_read", scope: !1409, file: !2, line: 388, type: !108)
!1423 = !DILocalVariable(name: "lines", scope: !1409, file: !2, line: 389, type: !436)
!1424 = !DILocalVariable(name: "words", scope: !1409, file: !2, line: 389, type: !436)
!1425 = !DILocalVariable(name: "chars", scope: !1409, file: !2, line: 389, type: !436)
!1426 = !DILocalVariable(name: "bytes", scope: !1409, file: !2, line: 389, type: !436)
!1427 = !DILocalVariable(name: "linelength", scope: !1409, file: !2, line: 389, type: !436)
!1428 = !DILocalVariable(name: "count_bytes", scope: !1409, file: !2, line: 390, type: !184)
!1429 = !DILocalVariable(name: "count_chars", scope: !1409, file: !2, line: 390, type: !184)
!1430 = !DILocalVariable(name: "count_complicated", scope: !1409, file: !2, line: 390, type: !184)
!1431 = !DILocalVariable(name: "file", scope: !1409, file: !2, line: 391, type: !102)
!1432 = !DILocalVariable(name: "skip_read", scope: !1433, file: !2, line: 427, type: !184)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 426, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 425, column: 7)
!1435 = !DILocalVariable(name: "end_pos", scope: !1436, file: !2, line: 438, type: !239)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 437, column: 9)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 435, column: 11)
!1438 = !DILocalVariable(name: "hi_pos", scope: !1439, file: !2, line: 460, type: !239)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !2, line: 459, column: 13)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 442, column: 15)
!1441 = !DILocalVariable(name: "in_word", scope: !1442, file: !2, line: 497, type: !184)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 496, column: 5)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 495, column: 12)
!1444 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 482, column: 12)
!1445 = !DILocalVariable(name: "linepos", scope: !1442, file: !2, line: 498, type: !436)
!1446 = !DILocalVariable(name: "state", scope: !1442, file: !2, line: 499, type: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1448, line: 32, baseType: !1449)
!1448 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mbstate_t.h", directory: "")
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !111, line: 83, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !111, line: 81, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !111, line: 78, size: 1024, elements: !1452)
!1452 = !{!1453, !1457}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !1451, file: !111, line: 79, baseType: !1454, size: 1024)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1455)
!1455 = !{!1456}
!1456 = !DISubrange(count: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !1451, file: !111, line: 80, baseType: !243, size: 64)
!1458 = !DILocalVariable(name: "in_shift", scope: !1442, file: !2, line: 500, type: !184)
!1459 = !DILocalVariable(name: "prev", scope: !1442, file: !2, line: 509, type: !108)
!1460 = !DILocalVariable(name: "p", scope: !1461, file: !2, line: 516, type: !102)
!1461 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 515, column: 9)
!1462 = !DILocalVariable(name: "backup_state", scope: !1461, file: !2, line: 518, type: !1447)
!1463 = !DILocalVariable(name: "wide_char", scope: !1464, file: !2, line: 532, type: !1465)
!1464 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 531, column: 13)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1082, line: 74, baseType: !61)
!1466 = !DILocalVariable(name: "n", scope: !1464, file: !2, line: 533, type: !108)
!1467 = !DILocalVariable(name: "wide", scope: !1464, file: !2, line: 534, type: !184)
!1468 = !DILocalVariable(name: "width", scope: !1469, file: !2, line: 606, type: !61)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 605, column: 25)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 604, column: 27)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 601, column: 21)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 600, column: 23)
!1473 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 578, column: 17)
!1474 = !DILocalVariable(name: "in_word", scope: !1475, file: !2, line: 651, type: !184)
!1475 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 650, column: 5)
!1476 = !DILocalVariable(name: "linepos", scope: !1475, file: !2, line: 652, type: !436)
!1477 = !DILocalVariable(name: "p", scope: !1478, file: !2, line: 656, type: !102)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 655, column: 9)
!1479 = !DILabel(scope: !1473, name: "mb_word_separator", file: !2, line: 595)
!1480 = !DILabel(scope: !1481, name: "word_separator", file: !2, line: 685)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 668, column: 17)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 666, column: 13)
!1483 = !DILocation(line: 0, scope: !1409)
!1484 = !DILocation(line: 387, column: 3, scope: !1409)
!1485 = !DILocation(line: 387, column: 8, scope: !1409)
!1486 = !DILocation(line: 389, column: 3, scope: !1409)
!1487 = !DILocation(line: 389, column: 13, scope: !1409)
!1488 = !DILocation(line: 389, column: 34, scope: !1409)
!1489 = !DILocation(line: 391, column: 22, scope: !1409)
!1490 = !DILocation(line: 393, column: 33, scope: !1409)
!1491 = !DILocation(line: 393, column: 9, scope: !1409)
!1492 = !DILocation(line: 398, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 398, column: 7)
!1494 = !DILocation(line: 398, column: 18, scope: !1493)
!1495 = !DILocation(line: 398, column: 7, scope: !1409)
!1496 = !DILocation(line: 400, column: 21, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 399, column: 5)
!1498 = !DILocation(line: 400, column: 19, scope: !1497)
!1499 = !DILocation(line: 401, column: 21, scope: !1497)
!1500 = !DILocation(line: 401, column: 19, scope: !1497)
!1501 = !DILocation(line: 402, column: 5, scope: !1497)
!1502 = !DILocation(line: 406, column: 21, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 405, column: 5)
!1504 = !DILocation(line: 406, column: 33, scope: !1503)
!1505 = !DILocation(line: 406, column: 36, scope: !1503)
!1506 = !DILocation(line: 406, column: 19, scope: !1503)
!1507 = !DILocation(line: 0, scope: !1493)
!1508 = !DILocation(line: 409, column: 23, scope: !1409)
!1509 = !DILocation(line: 409, column: 35, scope: !1409)
!1510 = !DILocation(line: 409, column: 38, scope: !1409)
!1511 = !DILocation(line: 409, column: 21, scope: !1409)
!1512 = !DILocation(line: 412, column: 8, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 412, column: 7)
!1514 = !DILocation(line: 412, column: 20, scope: !1513)
!1515 = !DILocation(line: 412, column: 23, scope: !1513)
!1516 = !DILocation(line: 412, column: 35, scope: !1513)
!1517 = !DILocation(line: 412, column: 38, scope: !1513)
!1518 = !DILocation(line: 412, column: 50, scope: !1513)
!1519 = !DILocation(line: 412, column: 53, scope: !1513)
!1520 = !DILocation(line: 412, column: 7, scope: !1409)
!1521 = !DILocation(line: 413, column: 5, scope: !1513)
!1522 = !DILocation(line: 425, column: 7, scope: !1434)
!1523 = !DILocation(line: 425, column: 19, scope: !1434)
!1524 = !DILocation(line: 425, column: 23, scope: !1434)
!1525 = !DILocation(line: 425, column: 35, scope: !1434)
!1526 = !DILocation(line: 425, column: 39, scope: !1434)
!1527 = !DILocation(line: 425, column: 51, scope: !1434)
!1528 = !DILocation(line: 425, column: 55, scope: !1434)
!1529 = !DILocation(line: 425, column: 7, scope: !1409)
!1530 = !DILocation(line: 0, scope: !1433)
!1531 = !DILocation(line: 429, column: 24, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 429, column: 11)
!1533 = !DILocation(line: 429, column: 13, scope: !1532)
!1534 = !DILocation(line: 429, column: 11, scope: !1433)
!1535 = !DILocation(line: 430, column: 48, scope: !1532)
!1536 = !DILocation(line: 430, column: 27, scope: !1532)
!1537 = !DILocation(line: 430, column: 18, scope: !1532)
!1538 = !DILocation(line: 430, column: 25, scope: !1532)
!1539 = !DILocation(line: 430, column: 9, scope: !1532)
!1540 = !DILocation(line: 435, column: 22, scope: !1437)
!1541 = !DILocation(line: 435, column: 13, scope: !1437)
!1542 = !DILocation(line: 435, column: 29, scope: !1437)
!1543 = !DILocation(line: 435, column: 58, scope: !1437)
!1544 = !DILocation(line: 435, column: 32, scope: !1437)
!1545 = !DILocation(line: 436, column: 11, scope: !1437)
!1546 = !DILocation(line: 436, column: 28, scope: !1437)
!1547 = !DILocation(line: 436, column: 31, scope: !1437)
!1548 = !DILocation(line: 436, column: 16, scope: !1437)
!1549 = !DILocation(line: 435, column: 11, scope: !1433)
!1550 = !DILocation(line: 438, column: 36, scope: !1436)
!1551 = !DILocation(line: 438, column: 39, scope: !1436)
!1552 = !DILocation(line: 0, scope: !1436)
!1553 = !DILocation(line: 439, column: 27, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 439, column: 15)
!1555 = !DILocation(line: 439, column: 15, scope: !1436)
!1556 = !DILocation(line: 440, column: 27, scope: !1554)
!1557 = !DILocation(line: 440, column: 13, scope: !1554)
!1558 = !DILocation(line: 442, column: 25, scope: !1440)
!1559 = !DILocation(line: 442, column: 23, scope: !1440)
!1560 = !DILocation(line: 442, column: 15, scope: !1436)
!1561 = !DILocation(line: 452, column: 31, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1440, file: !2, line: 443, column: 13)
!1563 = !DILocation(line: 452, column: 23, scope: !1562)
!1564 = !DILocation(line: 452, column: 59, scope: !1562)
!1565 = !DILocation(line: 452, column: 21, scope: !1562)
!1566 = !DILocation(line: 453, column: 19, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 453, column: 19)
!1568 = !DILocation(line: 453, column: 25, scope: !1567)
!1569 = !DILocation(line: 453, column: 44, scope: !1567)
!1570 = !DILocation(line: 453, column: 33, scope: !1567)
!1571 = !DILocation(line: 453, column: 30, scope: !1567)
!1572 = !DILocation(line: 453, column: 19, scope: !1562)
!1573 = !DILocation(line: 454, column: 17, scope: !1567)
!1574 = !DILocation(line: 456, column: 23, scope: !1567)
!1575 = !DILocation(line: 457, column: 13, scope: !1562)
!1576 = !DILocation(line: 460, column: 51, scope: !1439)
!1577 = !{!970, !823, i64 120}
!1578 = !DILocation(line: 460, column: 76, scope: !1439)
!1579 = !DILocation(line: 460, column: 50, scope: !1439)
!1580 = !DILocation(line: 460, column: 48, scope: !1439)
!1581 = !DILocation(line: 460, column: 38, scope: !1439)
!1582 = !DILocation(line: 0, scope: !1439)
!1583 = !DILocation(line: 461, column: 21, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 461, column: 19)
!1585 = !DILocation(line: 461, column: 36, scope: !1584)
!1586 = !DILocation(line: 461, column: 51, scope: !1584)
!1587 = !DILocation(line: 462, column: 19, scope: !1584)
!1588 = !DILocation(line: 462, column: 27, scope: !1584)
!1589 = !DILocation(line: 462, column: 24, scope: !1584)
!1590 = !DILocation(line: 461, column: 19, scope: !1439)
!1591 = !DILocation(line: 463, column: 32, scope: !1584)
!1592 = !DILocation(line: 463, column: 23, scope: !1584)
!1593 = !DILocation(line: 463, column: 17, scope: !1584)
!1594 = !DILocation(line: 465, column: 9, scope: !1436)
!1595 = !DILocation(line: 467, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 467, column: 11)
!1597 = !DILocation(line: 467, column: 11, scope: !1433)
!1598 = !DILocation(line: 469, column: 11, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 468, column: 9)
!1600 = !DILocation(line: 470, column: 11, scope: !1599)
!1601 = !DILocation(line: 470, column: 47, scope: !1599)
!1602 = !DILocation(line: 470, column: 32, scope: !1599)
!1603 = !DILocation(line: 470, column: 66, scope: !1599)
!1604 = !DILocation(line: 472, column: 30, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 472, column: 19)
!1606 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 471, column: 13)
!1607 = !DILocation(line: 472, column: 19, scope: !1606)
!1608 = !DILocation(line: 474, column: 29, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 473, column: 17)
!1610 = !DILocation(line: 474, column: 42, scope: !1609)
!1611 = !DILocation(line: 474, column: 19, scope: !1609)
!1612 = !DILocation(line: 476, column: 19, scope: !1609)
!1613 = !DILocation(line: 478, column: 21, scope: !1606)
!1614 = distinct !{!1614, !1600, !1615, !706, !707}
!1615 = !DILocation(line: 479, column: 13, scope: !1599)
!1616 = !DILocation(line: 480, column: 9, scope: !1599)
!1617 = !DILocation(line: 481, column: 5, scope: !1433)
!1618 = !DILocation(line: 482, column: 13, scope: !1444)
!1619 = !DILocation(line: 482, column: 25, scope: !1444)
!1620 = !DILocation(line: 482, column: 29, scope: !1444)
!1621 = !DILocation(line: 482, column: 12, scope: !1434)
!1622 = !DILocation(line: 485, column: 11, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !2, line: 485, column: 11)
!1624 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 483, column: 5)
!1625 = !DILocation(line: 485, column: 11, scope: !1624)
!1626 = !DILocation(line: 486, column: 20, scope: !1623)
!1627 = !DILocation(line: 486, column: 9, scope: !1623)
!1628 = !DILocation(line: 491, column: 12, scope: !1624)
!1629 = !DILocation(line: 491, column: 10, scope: !1624)
!1630 = !DILocation(line: 492, column: 5, scope: !1624)
!1631 = !DILocation(line: 495, column: 12, scope: !1443)
!1632 = !DILocation(line: 495, column: 23, scope: !1443)
!1633 = !DILocation(line: 495, column: 12, scope: !1444)
!1634 = !DILocation(line: 0, scope: !1442)
!1635 = !DILocation(line: 499, column: 7, scope: !1442)
!1636 = !DILocation(line: 499, column: 17, scope: !1442)
!1637 = !DILocation(line: 514, column: 7, scope: !1442)
!1638 = !DILocation(line: 509, column: 14, scope: !1442)
!1639 = !DILocation(line: 500, column: 12, scope: !1442)
!1640 = !DILocation(line: 498, column: 17, scope: !1442)
!1641 = !DILocation(line: 497, column: 12, scope: !1442)
!1642 = !DILocation(line: 393, column: 46, scope: !1409)
!1643 = !DILocation(line: 393, column: 25, scope: !1409)
!1644 = !DILocation(line: 393, column: 17, scope: !1409)
!1645 = !DILocation(line: 514, column: 43, scope: !1442)
!1646 = !DILocation(line: 514, column: 47, scope: !1442)
!1647 = !DILocation(line: 514, column: 67, scope: !1442)
!1648 = !DILocation(line: 514, column: 28, scope: !1442)
!1649 = !DILocation(line: 514, column: 76, scope: !1442)
!1650 = !DILocation(line: 518, column: 11, scope: !1461)
!1651 = !DILocation(line: 518, column: 21, scope: !1461)
!1652 = !DILocation(line: 520, column: 26, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 520, column: 15)
!1654 = !DILocation(line: 520, column: 15, scope: !1461)
!1655 = !DILocation(line: 522, column: 25, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 521, column: 13)
!1657 = !DILocation(line: 522, column: 38, scope: !1656)
!1658 = !DILocation(line: 522, column: 15, scope: !1656)
!1659 = !DILocation(line: 524, column: 15, scope: !1656)
!1660 = !DILocation(line: 527, column: 17, scope: !1461)
!1661 = !DILocation(line: 528, column: 15, scope: !1461)
!1662 = !DILocation(line: 0, scope: !1461)
!1663 = !DILocation(line: 529, column: 22, scope: !1461)
!1664 = !DILocation(line: 530, column: 11, scope: !1461)
!1665 = !DILocation(line: 528, column: 13, scope: !1461)
!1666 = !DILocation(line: 532, column: 15, scope: !1464)
!1667 = !DILocation(line: 532, column: 23, scope: !1464)
!1668 = !DILocation(line: 0, scope: !1464)
!1669 = !DILocation(line: 536, column: 20, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 536, column: 19)
!1671 = !DILocation(line: 536, column: 29, scope: !1670)
!1672 = !DILocation(line: 536, column: 42, scope: !1670)
!1673 = !DILocation(line: 536, column: 32, scope: !1670)
!1674 = !DILocation(line: 536, column: 19, scope: !1464)
!1675 = !DILocation(line: 541, column: 31, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 537, column: 17)
!1677 = !DILocation(line: 541, column: 29, scope: !1676)
!1678 = !DILocation(line: 543, column: 17, scope: !1676)
!1679 = !DILocation(line: 548, column: 34, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 545, column: 17)
!1681 = !{i64 0, i64 128, !794, i64 0, i64 8, !1682}
!1682 = !{!856, !856, i64 0}
!1683 = !DILocation(line: 550, column: 23, scope: !1680)
!1684 = !DILocation(line: 551, column: 25, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 551, column: 23)
!1686 = !DILocation(line: 551, column: 23, scope: !1680)
!1687 = !DILocation(line: 554, column: 31, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 552, column: 21)
!1689 = !DILocation(line: 556, column: 23, scope: !1688)
!1690 = !DILocation(line: 558, column: 25, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 558, column: 23)
!1692 = !DILocation(line: 558, column: 23, scope: !1680)
!1693 = !DILocation(line: 564, column: 24, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 559, column: 21)
!1695 = !DILocation(line: 565, column: 33, scope: !1694)
!1696 = !DILocation(line: 566, column: 23, scope: !1694)
!1697 = !DILocation(line: 568, column: 23, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 568, column: 23)
!1699 = !DILocation(line: 568, column: 23, scope: !1680)
!1700 = !DILocation(line: 569, column: 21, scope: !1698)
!1701 = !DILocation(line: 0, scope: !1680)
!1702 = !DILocation(line: 570, column: 25, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 570, column: 23)
!1704 = !DILocation(line: 570, column: 23, scope: !1680)
!1705 = !DILocation(line: 572, column: 33, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 571, column: 21)
!1707 = !DILocation(line: 574, column: 21, scope: !1706)
!1708 = !DILocation(line: 0, scope: !1670)
!1709 = !DILocation(line: 577, column: 23, scope: !1464)
!1710 = !DILocation(line: 577, column: 15, scope: !1464)
!1711 = !DILocation(line: 580, column: 24, scope: !1473)
!1712 = !DILocation(line: 580, column: 19, scope: !1473)
!1713 = !DILocation(line: 584, column: 31, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 584, column: 23)
!1715 = !DILocation(line: 584, column: 23, scope: !1473)
!1716 = !DILocation(line: 585, column: 21, scope: !1714)
!1717 = !DILocation(line: 587, column: 19, scope: !1473)
!1718 = !DILocation(line: 589, column: 43, scope: !1473)
!1719 = !DILocation(line: 589, column: 32, scope: !1473)
!1720 = !DILocation(line: 589, column: 27, scope: !1473)
!1721 = !DILocation(line: 590, column: 19, scope: !1473)
!1722 = !DILocation(line: 592, column: 26, scope: !1473)
!1723 = !DILocation(line: 592, column: 19, scope: !1473)
!1724 = !DILocation(line: 595, column: 17, scope: !1473)
!1725 = !DILocation(line: 596, column: 28, scope: !1473)
!1726 = !DILocation(line: 596, column: 25, scope: !1473)
!1727 = !DILocation(line: 598, column: 19, scope: !1473)
!1728 = !DILocation(line: 600, column: 23, scope: !1472)
!1729 = !DILocation(line: 600, column: 28, scope: !1472)
!1730 = !DILocation(line: 600, column: 41, scope: !1472)
!1731 = !DILocation(line: 600, column: 31, scope: !1472)
!1732 = !DILocation(line: 600, column: 23, scope: !1473)
!1733 = !DILocation(line: 604, column: 27, scope: !1470)
!1734 = !DILocation(line: 604, column: 27, scope: !1471)
!1735 = !DILocation(line: 606, column: 48, scope: !1469)
!1736 = !DILocation(line: 606, column: 39, scope: !1469)
!1737 = !DILocation(line: 0, scope: !1469)
!1738 = !DILocation(line: 607, column: 37, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 607, column: 31)
!1740 = !DILocation(line: 607, column: 31, scope: !1469)
!1741 = !DILocation(line: 608, column: 40, scope: !1739)
!1742 = !DILocation(line: 608, column: 37, scope: !1739)
!1743 = !DILocation(line: 608, column: 29, scope: !1739)
!1744 = !DILocation(line: 609, column: 25, scope: !1469)
!1745 = !DILocation(line: 610, column: 37, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 610, column: 27)
!1747 = !DILocation(line: 610, column: 27, scope: !1746)
!1748 = !DILocation(line: 610, column: 48, scope: !1746)
!1749 = !DILocation(line: 610, column: 63, scope: !1746)
!1750 = !DILocation(line: 610, column: 51, scope: !1746)
!1751 = !DILocation(line: 610, column: 27, scope: !1471)
!1752 = !DILocation(line: 611, column: 25, scope: !1746)
!1753 = !DILocation(line: 613, column: 21, scope: !1471)
!1754 = !DILocation(line: 614, column: 29, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 614, column: 28)
!1756 = !DILocation(line: 614, column: 34, scope: !1755)
!1757 = !DILocation(line: 614, column: 56, scope: !1755)
!1758 = !DILocation(line: 614, column: 46, scope: !1755)
!1759 = !DILocation(line: 614, column: 37, scope: !1755)
!1760 = !DILocation(line: 614, column: 28, scope: !1472)
!1761 = !DILocation(line: 616, column: 30, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 615, column: 21)
!1763 = !DILocation(line: 617, column: 46, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 617, column: 27)
!1765 = !DILocation(line: 617, column: 36, scope: !1764)
!1766 = !DILocation(line: 617, column: 27, scope: !1764)
!1767 = !DILocation(line: 617, column: 27, scope: !1762)
!1768 = !DILocation(line: 618, column: 25, scope: !1764)
!1769 = !DILocation(line: 620, column: 21, scope: !1762)
!1770 = !DILocation(line: 621, column: 19, scope: !1473)
!1771 = !DILocation(line: 0, scope: !1473)
!1772 = !DILocation(line: 624, column: 17, scope: !1464)
!1773 = !DILocation(line: 625, column: 26, scope: !1464)
!1774 = !DILocation(line: 626, column: 20, scope: !1464)
!1775 = !DILocation(line: 627, column: 13, scope: !1461)
!1776 = !DILocation(line: 627, column: 13, scope: !1464)
!1777 = !DILocation(line: 628, column: 29, scope: !1461)
!1778 = distinct !{!1778, !1664, !1779, !706, !707}
!1779 = !DILocation(line: 628, column: 32, scope: !1461)
!1780 = !DILocation(line: 631, column: 26, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 631, column: 15)
!1782 = !DILocation(line: 631, column: 15, scope: !1461)
!1783 = !DILocation(line: 633, column: 30, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 633, column: 19)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 632, column: 13)
!1786 = !DILocation(line: 633, column: 19, scope: !1785)
!1787 = !DILocation(line: 636, column: 20, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 634, column: 17)
!1789 = !DILocation(line: 637, column: 29, scope: !1788)
!1790 = !DILocation(line: 638, column: 17, scope: !1788)
!1791 = !DILocation(line: 639, column: 15, scope: !1785)
!1792 = !DILocation(line: 640, column: 13, scope: !1785)
!1793 = !DILocation(line: 643, column: 9, scope: !1442)
!1794 = distinct !{!1794, !1637, !1793, !706, !707}
!1795 = !DILocation(line: 644, column: 19, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 644, column: 11)
!1797 = !DILocation(line: 644, column: 11, scope: !1442)
!1798 = !DILocation(line: 645, column: 9, scope: !1796)
!1799 = !DILocation(line: 646, column: 16, scope: !1442)
!1800 = !DILocation(line: 646, column: 13, scope: !1442)
!1801 = !DILocation(line: 647, column: 5, scope: !1443)
!1802 = !DILocation(line: 647, column: 5, scope: !1442)
!1803 = !DILocation(line: 0, scope: !1475)
!1804 = !DILocation(line: 654, column: 7, scope: !1475)
!1805 = !DILocation(line: 651, column: 12, scope: !1475)
!1806 = !DILocation(line: 652, column: 17, scope: !1475)
!1807 = !DILocation(line: 654, column: 43, scope: !1475)
!1808 = !DILocation(line: 654, column: 28, scope: !1475)
!1809 = !DILocation(line: 654, column: 62, scope: !1475)
!1810 = !DILocation(line: 656, column: 27, scope: !1478)
!1811 = !DILocation(line: 0, scope: !1478)
!1812 = !DILocation(line: 657, column: 26, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 657, column: 15)
!1814 = !DILocation(line: 657, column: 15, scope: !1478)
!1815 = !DILocation(line: 659, column: 25, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 658, column: 13)
!1817 = !DILocation(line: 659, column: 38, scope: !1816)
!1818 = !DILocation(line: 659, column: 15, scope: !1816)
!1819 = !DILocation(line: 661, column: 15, scope: !1816)
!1820 = !DILocation(line: 664, column: 17, scope: !1478)
!1821 = !DILocation(line: 665, column: 11, scope: !1478)
!1822 = !DILocation(line: 667, column: 25, scope: !1482)
!1823 = !DILocation(line: 667, column: 23, scope: !1482)
!1824 = !DILocation(line: 667, column: 15, scope: !1482)
!1825 = !DILocation(line: 670, column: 24, scope: !1481)
!1826 = !DILocation(line: 670, column: 19, scope: !1481)
!1827 = !DILocation(line: 674, column: 31, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 674, column: 23)
!1829 = !DILocation(line: 674, column: 23, scope: !1481)
!1830 = !DILocation(line: 675, column: 21, scope: !1828)
!1831 = !DILocation(line: 677, column: 19, scope: !1481)
!1832 = !DILocation(line: 679, column: 43, scope: !1481)
!1833 = !DILocation(line: 679, column: 32, scope: !1481)
!1834 = !DILocation(line: 679, column: 27, scope: !1481)
!1835 = !DILocation(line: 680, column: 19, scope: !1481)
!1836 = !DILocation(line: 682, column: 26, scope: !1481)
!1837 = !DILocation(line: 682, column: 19, scope: !1481)
!1838 = !DILocation(line: 685, column: 17, scope: !1481)
!1839 = !DILocation(line: 686, column: 28, scope: !1481)
!1840 = !DILocation(line: 686, column: 25, scope: !1481)
!1841 = !DILocation(line: 688, column: 19, scope: !1481)
!1842 = !DILocation(line: 690, column: 42, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 690, column: 23)
!1844 = !DILocation(line: 690, column: 32, scope: !1843)
!1845 = !DILocation(line: 690, column: 23, scope: !1843)
!1846 = !DILocation(line: 690, column: 23, scope: !1481)
!1847 = !DILocation(line: 692, column: 30, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1843, file: !2, line: 691, column: 21)
!1849 = !DILocation(line: 693, column: 46, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 693, column: 27)
!1851 = !DILocation(line: 693, column: 36, scope: !1850)
!1852 = !DILocation(line: 693, column: 27, scope: !1850)
!1853 = !DILocation(line: 694, column: 27, scope: !1850)
!1854 = !DILocation(line: 694, column: 51, scope: !1850)
!1855 = !DILocation(line: 694, column: 41, scope: !1850)
!1856 = !DILocation(line: 694, column: 30, scope: !1850)
!1857 = !DILocation(line: 693, column: 27, scope: !1848)
!1858 = !DILocation(line: 695, column: 25, scope: !1850)
!1859 = !DILocation(line: 697, column: 21, scope: !1848)
!1860 = !DILocation(line: 698, column: 19, scope: !1481)
!1861 = !DILocation(line: 0, scope: !1481)
!1862 = !DILocation(line: 700, column: 13, scope: !1482)
!1863 = !DILocation(line: 701, column: 18, scope: !1478)
!1864 = distinct !{!1864, !1821, !1865, !706, !707}
!1865 = !DILocation(line: 701, column: 30, scope: !1478)
!1866 = !DILocation(line: 702, column: 9, scope: !1475)
!1867 = distinct !{!1867, !1804, !1866, !706, !707}
!1868 = !DILocation(line: 703, column: 19, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 703, column: 11)
!1870 = !DILocation(line: 703, column: 11, scope: !1475)
!1871 = !DILocation(line: 704, column: 9, scope: !1869)
!1872 = !DILocation(line: 705, column: 16, scope: !1475)
!1873 = !DILocation(line: 705, column: 13, scope: !1475)
!1874 = !DILocation(line: 0, scope: !1443)
!1875 = !DILocation(line: 0, scope: !1444)
!1876 = !DILocation(line: 708, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 708, column: 7)
!1878 = !DILocation(line: 708, column: 21, scope: !1877)
!1879 = !DILocation(line: 708, column: 19, scope: !1877)
!1880 = !DILocation(line: 708, column: 7, scope: !1409)
!1881 = !DILocation(line: 709, column: 13, scope: !1877)
!1882 = !DILocation(line: 709, column: 5, scope: !1877)
!1883 = !DILocation(line: 711, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 711, column: 7)
!1885 = !DILocation(line: 711, column: 18, scope: !1884)
!1886 = !DILocation(line: 711, column: 7, scope: !1409)
!1887 = !DILocation(line: 712, column: 19, scope: !1884)
!1888 = !DILocation(line: 712, column: 40, scope: !1884)
!1889 = !DILocation(line: 712, column: 5, scope: !1884)
!1890 = !DILocation(line: 714, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 714, column: 7)
!1892 = !DILocation(line: 714, column: 7, scope: !1409)
!1893 = !DILocation(line: 715, column: 26, scope: !1891)
!1894 = !DILocation(line: 715, column: 5, scope: !1891)
!1895 = !DILocation(line: 716, column: 7, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 716, column: 7)
!1897 = !DILocation(line: 716, column: 7, scope: !1409)
!1898 = !DILocation(line: 717, column: 26, scope: !1896)
!1899 = !DILocation(line: 717, column: 5, scope: !1896)
!1900 = !DILocation(line: 718, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 718, column: 7)
!1902 = !DILocation(line: 718, column: 7, scope: !1409)
!1903 = !DILocation(line: 719, column: 26, scope: !1901)
!1904 = !DILocation(line: 719, column: 5, scope: !1901)
!1905 = !DILocation(line: 720, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 720, column: 7)
!1907 = !DILocation(line: 720, column: 7, scope: !1409)
!1908 = !DILocation(line: 721, column: 26, scope: !1906)
!1909 = !DILocation(line: 721, column: 5, scope: !1906)
!1910 = !DILocation(line: 723, column: 20, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 723, column: 7)
!1912 = !DILocation(line: 723, column: 18, scope: !1911)
!1913 = !DILocation(line: 723, column: 7, scope: !1409)
!1914 = !DILocation(line: 724, column: 21, scope: !1911)
!1915 = !DILocation(line: 724, column: 5, scope: !1911)
!1916 = !DILocation(line: 726, column: 10, scope: !1409)
!1917 = !DILocation(line: 727, column: 1, scope: !1409)
!1918 = !DILocation(line: 726, column: 3, scope: !1409)
!1919 = !DISubprogram(name: "rpl_open", scope: !1920, file: !1920, line: 674, type: !1921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1920 = !DIFile(filename: "./lib/fcntl.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!61, !102, !61, null}
!1923 = !DISubprogram(name: "___mb_cur_max", scope: !1924, file: !1924, line: 33, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1924 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_xlocale.h", directory: "")
!1925 = !DISubprogram(name: "fdadvise", scope: !93, file: !93, line: 70, type: !1926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !61, !239, !239, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !93, line: 60, baseType: !92)
!1929 = distinct !DISubprogram(name: "usable_st_size", scope: !60, file: !60, line: 732, type: !1930, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1934)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!184, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!1934 = !{!1935}
!1935 = !DILocalVariable(name: "sb", arg: 1, scope: !1929, file: !60, line: 732, type: !1932)
!1936 = !DILocation(line: 0, scope: !1929)
!1937 = !DILocation(line: 734, column: 11, scope: !1929)
!1938 = !DILocation(line: 734, column: 33, scope: !1929)
!1939 = !DILocation(line: 734, column: 36, scope: !1929)
!1940 = !DILocation(line: 735, column: 31, scope: !1929)
!1941 = !DILocation(line: 734, column: 3, scope: !1929)
!1942 = !DISubprogram(name: "lseek", scope: !1063, file: !1063, line: 465, type: !1943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!239, !61, !239, !61}
!1945 = !DISubprogram(name: "safe_read", scope: !1946, file: !1946, line: 42, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!1946 = !DIFile(filename: "../lib/safe-read.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!108, !61, !104, !108}
!1949 = distinct !DISubprogram(name: "avx2_supported", scope: !2, file: !2, line: 158, type: !1950, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!184}
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958}
!1953 = !DILocalVariable(name: "eax", scope: !1949, file: !2, line: 160, type: !54)
!1954 = !DILocalVariable(name: "ebx", scope: !1949, file: !2, line: 161, type: !54)
!1955 = !DILocalVariable(name: "ecx", scope: !1949, file: !2, line: 162, type: !54)
!1956 = !DILocalVariable(name: "edx", scope: !1949, file: !2, line: 163, type: !54)
!1957 = !DILocalVariable(name: "getcpuid_ok", scope: !1949, file: !2, line: 164, type: !184)
!1958 = !DILocalVariable(name: "avx_enabled", scope: !1949, file: !2, line: 165, type: !184)
!1959 = !DILocation(line: 160, column: 3, scope: !1949)
!1960 = !DILocation(line: 160, column: 16, scope: !1949)
!1961 = !DILocation(line: 161, column: 3, scope: !1949)
!1962 = !DILocation(line: 161, column: 16, scope: !1949)
!1963 = !DILocation(line: 162, column: 3, scope: !1949)
!1964 = !DILocation(line: 162, column: 16, scope: !1949)
!1965 = !DILocation(line: 163, column: 3, scope: !1949)
!1966 = !DILocation(line: 163, column: 16, scope: !1949)
!1967 = !DILocation(line: 0, scope: !1949)
!1968 = !DILocation(line: 167, column: 7, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 167, column: 7)
!1970 = !DILocation(line: 167, column: 7, scope: !1949)
!1971 = !DILocation(line: 170, column: 11, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 170, column: 11)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 168, column: 5)
!1974 = !DILocation(line: 170, column: 15, scope: !1972)
!1975 = !DILocation(line: 170, column: 11, scope: !1973)
!1976 = !DILocation(line: 171, column: 9, scope: !1972)
!1977 = !DILocation(line: 172, column: 5, scope: !1973)
!1978 = !DILocation(line: 175, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 175, column: 7)
!1980 = !DILocation(line: 175, column: 7, scope: !1949)
!1981 = !DILocation(line: 177, column: 29, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 176, column: 5)
!1983 = !DILocation(line: 177, column: 23, scope: !1982)
!1984 = !DILocation(line: 177, column: 17, scope: !1982)
!1985 = !DILocation(line: 177, column: 11, scope: !1982)
!1986 = !DILocation(line: 178, column: 13, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !2, line: 178, column: 11)
!1988 = !DILocation(line: 178, column: 11, scope: !1982)
!1989 = !DILocation(line: 179, column: 9, scope: !1987)
!1990 = !DILocation(line: 182, column: 18, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !2, line: 182, column: 15)
!1992 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 181, column: 9)
!1993 = !DILocation(line: 182, column: 22, scope: !1991)
!1994 = !DILocation(line: 182, column: 15, scope: !1992)
!1995 = !DILocation(line: 183, column: 13, scope: !1991)
!1996 = !DILocation(line: 171, column: 21, scope: !1972)
!1997 = !DILocation(line: 185, column: 5, scope: !1982)
!1998 = !DILocation(line: 169, column: 19, scope: !1973)
!1999 = !DILocation(line: 188, column: 9, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 188, column: 7)
!2001 = !DILocation(line: 188, column: 7, scope: !1949)
!2002 = !DILocation(line: 190, column: 11, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 190, column: 11)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 189, column: 5)
!2005 = !DILocation(line: 190, column: 11, scope: !2004)
!2006 = !DILocation(line: 191, column: 9, scope: !2003)
!2007 = !DILocation(line: 192, column: 7, scope: !2004)
!2008 = !DILocation(line: 194, column: 14, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 194, column: 12)
!2010 = !DILocation(line: 194, column: 12, scope: !2000)
!2011 = !DILocation(line: 196, column: 11, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 196, column: 11)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 195, column: 5)
!2014 = !DILocation(line: 196, column: 11, scope: !2013)
!2015 = !DILocation(line: 197, column: 9, scope: !2012)
!2016 = !DILocation(line: 198, column: 7, scope: !2013)
!2017 = !DILocation(line: 202, column: 11, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 202, column: 11)
!2019 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 201, column: 5)
!2020 = !DILocation(line: 202, column: 11, scope: !2019)
!2021 = !DILocation(line: 203, column: 9, scope: !2018)
!2022 = !DILocation(line: 204, column: 7, scope: !2019)
!2023 = !DILocation(line: 0, scope: !2000)
!2024 = !DILocation(line: 206, column: 1, scope: !1949)
!2025 = distinct !DISubprogram(name: "is_basic", scope: !2026, file: !2026, line: 308, type: !2027, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2029)
!2026 = !DIFile(filename: "../lib/mbchar.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!184, !4}
!2029 = !{!2030}
!2030 = !DILocalVariable(name: "c", arg: 1, scope: !2025, file: !2026, line: 308, type: !4)
!2031 = !DILocation(line: 0, scope: !2025)
!2032 = !DILocation(line: 310, column: 27, scope: !2025)
!2033 = !DILocation(line: 310, column: 45, scope: !2025)
!2034 = !DILocation(line: 310, column: 11, scope: !2025)
!2035 = !DILocation(line: 310, column: 55, scope: !2025)
!2036 = !DILocation(line: 310, column: 73, scope: !2025)
!2037 = !DILocation(line: 310, column: 51, scope: !2025)
!2038 = !DILocation(line: 311, column: 10, scope: !2025)
!2039 = !DILocation(line: 310, column: 10, scope: !2025)
!2040 = !DILocation(line: 310, column: 3, scope: !2025)
!2041 = !DISubprogram(name: "mbrtowc", scope: !2042, file: !2042, line: 108, type: !2043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!2042 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/wchar.h", directory: "")
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!108, !2045, !661, !108, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2048)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!2049 = !DISubprogram(name: "mbsinit", scope: !2042, file: !2042, line: 110, type: !2050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!61, !2052}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1447)
!2054 = distinct !DISubprogram(name: "iswprint", scope: !2055, file: !2055, line: 93, type: !2056, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2061)
!2055 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_wctype.h", directory: "")
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!61, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2059, line: 32, baseType: !2060)
!2059 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_wint_t.h", directory: "")
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_wint_t", file: !111, line: 114, baseType: !61)
!2061 = !{!2062}
!2062 = !DILocalVariable(name: "_wc", arg: 1, scope: !2054, file: !2055, line: 93, type: !2058)
!2063 = !DILocation(line: 0, scope: !2054)
!2064 = !DILocation(line: 95, column: 10, scope: !2054)
!2065 = !DILocation(line: 95, column: 2, scope: !2054)
!2066 = !DISubprogram(name: "rpl_wcwidth", scope: !2067, file: !2067, line: 1091, type: !2068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!2067 = !DIFile(filename: "./lib/wchar.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!61, !1465}
!2070 = distinct !DISubprogram(name: "iswspace", scope: !2055, file: !2055, line: 105, type: !2056, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2071)
!2071 = !{!2072}
!2072 = !DILocalVariable(name: "_wc", arg: 1, scope: !2070, file: !2055, line: 105, type: !2058)
!2073 = !DILocation(line: 0, scope: !2070)
!2074 = !DILocation(line: 107, column: 10, scope: !2070)
!2075 = !DILocation(line: 107, column: 2, scope: !2070)
!2076 = distinct !DISubprogram(name: "iswnbspace", scope: !2, file: !2, line: 258, type: !2056, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2077)
!2077 = !{!2078}
!2078 = !DILocalVariable(name: "wc", arg: 1, scope: !2076, file: !2, line: 258, type: !2058)
!2079 = !DILocation(line: 0, scope: !2076)
!2080 = !DILocation(line: 260, column: 12, scope: !2076)
!2081 = !DILocation(line: 261, column: 10, scope: !2076)
!2082 = !DILocation(line: 261, column: 17, scope: !2076)
!2083 = !DILocation(line: 261, column: 27, scope: !2076)
!2084 = !DILocation(line: 261, column: 33, scope: !2076)
!2085 = !DILocation(line: 262, column: 14, scope: !2076)
!2086 = !DILocation(line: 262, column: 20, scope: !2076)
!2087 = !DILocation(line: 262, column: 30, scope: !2076)
!2088 = !DILocation(line: 262, column: 36, scope: !2076)
!2089 = !DILocation(line: 260, column: 3, scope: !2076)
!2090 = distinct !DISubprogram(name: "to_uchar", scope: !60, file: !60, line: 158, type: !2091, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!113, !4}
!2093 = !{!2094}
!2094 = !DILocalVariable(name: "ch", arg: 1, scope: !2090, file: !60, line: 158, type: !4)
!2095 = !DILocation(line: 0, scope: !2090)
!2096 = !DILocation(line: 158, column: 50, scope: !2090)
!2097 = distinct !DISubprogram(name: "isprint", scope: !2098, file: !2098, line: 255, type: !1383, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2099)
!2098 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_ctype.h", directory: "")
!2099 = !{!2100}
!2100 = !DILocalVariable(name: "_c", arg: 1, scope: !2097, file: !2098, line: 255, type: !61)
!2101 = !DILocation(line: 0, scope: !2097)
!2102 = !DILocation(line: 257, column: 10, scope: !2097)
!2103 = !DILocation(line: 257, column: 2, scope: !2097)
!2104 = distinct !DISubprogram(name: "isspace", scope: !2098, file: !2098, line: 267, type: !1383, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2105)
!2105 = !{!2106}
!2106 = !DILocalVariable(name: "_c", arg: 1, scope: !2104, file: !2098, line: 267, type: !61)
!2107 = !DILocation(line: 0, scope: !2104)
!2108 = !DILocation(line: 269, column: 10, scope: !2104)
!2109 = !DILocation(line: 269, column: 2, scope: !2104)
!2110 = distinct !DISubprogram(name: "isnbspace", scope: !2, file: !2, line: 266, type: !1383, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2111)
!2111 = !{!2112}
!2112 = !DILocalVariable(name: "c", arg: 1, scope: !2110, file: !2, line: 266, type: !61)
!2113 = !DILocation(line: 0, scope: !2110)
!2114 = !DILocation(line: 268, column: 22, scope: !2110)
!2115 = !DILocation(line: 268, column: 10, scope: !2110)
!2116 = !DILocation(line: 268, column: 3, scope: !2110)
!2117 = !DISubprogram(name: "btowc", scope: !2042, file: !2042, line: 97, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!2058, !61}
!2120 = distinct !DISubprogram(name: "__istype", scope: !2098, file: !2098, line: 153, type: !2121, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2124)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!61, !2123, !112}
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !111, line: 72, baseType: !61)
!2124 = !{!2125, !2126}
!2125 = !DILocalVariable(name: "_c", arg: 1, scope: !2120, file: !2098, line: 153, type: !2123)
!2126 = !DILocalVariable(name: "_f", arg: 2, scope: !2120, file: !2098, line: 153, type: !112)
!2127 = !DILocation(line: 0, scope: !2120)
!2128 = !DILocation(line: 158, column: 10, scope: !2120)
!2129 = !DILocation(line: 158, column: 27, scope: !2120)
!2130 = !DILocation(line: 158, column: 61, scope: !2120)
!2131 = !DILocation(line: 158, column: 25, scope: !2120)
!2132 = !DILocation(line: 158, column: 24, scope: !2120)
!2133 = !DILocation(line: 159, column: 7, scope: !2120)
!2134 = !DILocation(line: 159, column: 6, scope: !2120)
!2135 = !DILocation(line: 159, column: 5, scope: !2120)
!2136 = !DILocation(line: 158, column: 2, scope: !2120)
!2137 = distinct !DISubprogram(name: "isascii", scope: !2098, file: !2098, line: 135, type: !1383, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2138)
!2138 = !{!2139}
!2139 = !DILocalVariable(name: "_c", arg: 1, scope: !2137, file: !2098, line: 135, type: !61)
!2140 = !DILocation(line: 0, scope: !2137)
!2141 = !DILocation(line: 137, column: 14, scope: !2137)
!2142 = !DILocation(line: 137, column: 23, scope: !2137)
!2143 = !DILocation(line: 137, column: 2, scope: !2137)
!2144 = !DISubprogram(name: "__maskrune", scope: !2098, file: !2098, line: 148, type: !2121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!2145 = distinct !DISubprogram(name: "wc_lines", scope: !2, file: !2, line: 315, type: !592, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2146)
!2146 = !{!2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2158, !2159}
!2147 = !DILocalVariable(name: "file", arg: 1, scope: !2145, file: !2, line: 315, type: !102)
!2148 = !DILocalVariable(name: "fd", arg: 2, scope: !2145, file: !2, line: 315, type: !61)
!2149 = !DILocalVariable(name: "lines_out", arg: 3, scope: !2145, file: !2, line: 315, type: !594)
!2150 = !DILocalVariable(name: "bytes_out", arg: 4, scope: !2145, file: !2, line: 315, type: !594)
!2151 = !DILocalVariable(name: "bytes_read", scope: !2145, file: !2, line: 317, type: !108)
!2152 = !DILocalVariable(name: "lines", scope: !2145, file: !2, line: 318, type: !436)
!2153 = !DILocalVariable(name: "bytes", scope: !2145, file: !2, line: 318, type: !436)
!2154 = !DILocalVariable(name: "buf", scope: !2145, file: !2, line: 319, type: !1419)
!2155 = !DILocalVariable(name: "long_lines", scope: !2145, file: !2, line: 320, type: !184)
!2156 = !DILocalVariable(name: "p", scope: !2157, file: !2, line: 340, type: !107)
!2157 = distinct !DILexicalBlock(scope: !2145, file: !2, line: 330, column: 5)
!2158 = !DILocalVariable(name: "end", scope: !2157, file: !2, line: 341, type: !107)
!2159 = !DILocalVariable(name: "plines", scope: !2157, file: !2, line: 342, type: !436)
!2160 = !DILocation(line: 0, scope: !2145)
!2161 = !DILocation(line: 319, column: 3, scope: !2145)
!2162 = !DILocation(line: 319, column: 8, scope: !2145)
!2163 = !DILocation(line: 322, column: 8, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2145, file: !2, line: 322, column: 7)
!2165 = !DILocation(line: 322, column: 18, scope: !2164)
!2166 = !DILocation(line: 322, column: 22, scope: !2164)
!2167 = !DILocation(line: 322, column: 7, scope: !2145)
!2168 = !DILocation(line: 324, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 323, column: 5)
!2170 = !DILocation(line: 329, column: 3, scope: !2145)
!2171 = !DILocation(line: 327, column: 9, scope: !2145)
!2172 = !DILocation(line: 329, column: 39, scope: !2145)
!2173 = !DILocation(line: 329, column: 24, scope: !2145)
!2174 = !DILocation(line: 329, column: 58, scope: !2145)
!2175 = !DILocation(line: 332, column: 22, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 332, column: 11)
!2177 = !DILocation(line: 332, column: 11, scope: !2157)
!2178 = !DILocation(line: 334, column: 21, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !2, line: 333, column: 9)
!2180 = !DILocation(line: 334, column: 34, scope: !2179)
!2181 = !DILocation(line: 334, column: 11, scope: !2179)
!2182 = !DILocation(line: 335, column: 11, scope: !2179)
!2183 = !DILocation(line: 338, column: 13, scope: !2157)
!2184 = !DILocation(line: 340, column: 17, scope: !2157)
!2185 = !DILocation(line: 0, scope: !2157)
!2186 = !DILocation(line: 341, column: 19, scope: !2157)
!2187 = !DILocation(line: 341, column: 23, scope: !2157)
!2188 = !DILocation(line: 344, column: 13, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 344, column: 11)
!2190 = !DILocation(line: 344, column: 11, scope: !2157)
!2191 = !DILocation(line: 347, column: 11, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 345, column: 9)
!2193 = !DILocation(line: 347, column: 20, scope: !2192)
!2194 = !DILocation(line: 348, column: 24, scope: !2192)
!2195 = !DILocation(line: 348, column: 22, scope: !2192)
!2196 = !DILocation(line: 348, column: 27, scope: !2192)
!2197 = !DILocation(line: 348, column: 19, scope: !2192)
!2198 = distinct !{!2198, !2191, !2199, !706, !707}
!2199 = !DILocation(line: 348, column: 30, scope: !2192)
!2200 = !DILocation(line: 349, column: 9, scope: !2192)
!2201 = !DILocation(line: 353, column: 16, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 351, column: 9)
!2203 = !DILocation(line: 354, column: 11, scope: !2202)
!2204 = !DILocation(line: 354, column: 23, scope: !2202)
!2205 = !DILocation(line: 354, column: 44, scope: !2202)
!2206 = !DILocation(line: 356, column: 15, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 355, column: 13)
!2208 = !DILocation(line: 357, column: 15, scope: !2207)
!2209 = distinct !{!2209, !2203, !2210, !706, !707}
!2210 = !DILocation(line: 358, column: 13, scope: !2202)
!2211 = !DILocation(line: 367, column: 17, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 367, column: 11)
!2213 = !DILocation(line: 367, column: 40, scope: !2212)
!2214 = !DILocation(line: 367, column: 26, scope: !2212)
!2215 = !DILocation(line: 367, column: 11, scope: !2157)
!2216 = !DILocation(line: 368, column: 9, scope: !2212)
!2217 = !DILocation(line: 0, scope: !2212)
!2218 = distinct !{!2218, !2170, !2219, !706, !707}
!2219 = !DILocation(line: 371, column: 5, scope: !2145)
!2220 = !DILocation(line: 373, column: 14, scope: !2145)
!2221 = !DILocation(line: 374, column: 14, scope: !2145)
!2222 = !DILocation(line: 376, column: 3, scope: !2145)
!2223 = !DILocation(line: 377, column: 1, scope: !2145)
!2224 = !DISubprogram(name: "rawmemchr", scope: !2225, file: !2225, line: 907, type: !2226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!2225 = !DIFile(filename: "./lib/string.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!104, !105, !61}
!2228 = distinct !DISubprogram(name: "__get_cpuid", scope: !2229, file: !2229, line: 304, type: !2230, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2233)
!2229 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/cpuid.h", directory: "")
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!61, !54, !2232, !2232, !2232, !2232}
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239}
!2234 = !DILocalVariable(name: "__leaf", arg: 1, scope: !2228, file: !2229, line: 304, type: !54)
!2235 = !DILocalVariable(name: "__eax", arg: 2, scope: !2228, file: !2229, line: 304, type: !2232)
!2236 = !DILocalVariable(name: "__ebx", arg: 3, scope: !2228, file: !2229, line: 305, type: !2232)
!2237 = !DILocalVariable(name: "__ecx", arg: 4, scope: !2228, file: !2229, line: 305, type: !2232)
!2238 = !DILocalVariable(name: "__edx", arg: 5, scope: !2228, file: !2229, line: 306, type: !2232)
!2239 = !DILocalVariable(name: "__max_leaf", scope: !2228, file: !2229, line: 308, type: !54)
!2240 = !DILocation(line: 0, scope: !2228)
!2241 = !DILocation(line: 308, column: 54, scope: !2228)
!2242 = !DILocation(line: 308, column: 31, scope: !2228)
!2243 = !DILocation(line: 310, column: 20, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2228, file: !2229, line: 310, column: 9)
!2245 = !DILocation(line: 310, column: 25, scope: !2244)
!2246 = !DILocation(line: 310, column: 39, scope: !2244)
!2247 = !DILocation(line: 310, column: 9, scope: !2228)
!2248 = !DILocation(line: 311, column: 9, scope: !2244)
!2249 = !DILocation(line: 313, column: 5, scope: !2228)
!2250 = !{i64 2153285709, i64 2153285745, i64 2153285769}
!2251 = !DILocation(line: 314, column: 5, scope: !2228)
!2252 = !DILocation(line: 315, column: 1, scope: !2228)
!2253 = distinct !DISubprogram(name: "__get_cpuid_count", scope: !2229, file: !2229, line: 317, type: !2254, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2256)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!61, !54, !54, !2232, !2232, !2232, !2232}
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2257 = !DILocalVariable(name: "__leaf", arg: 1, scope: !2253, file: !2229, line: 317, type: !54)
!2258 = !DILocalVariable(name: "__subleaf", arg: 2, scope: !2253, file: !2229, line: 318, type: !54)
!2259 = !DILocalVariable(name: "__eax", arg: 3, scope: !2253, file: !2229, line: 319, type: !2232)
!2260 = !DILocalVariable(name: "__ebx", arg: 4, scope: !2253, file: !2229, line: 319, type: !2232)
!2261 = !DILocalVariable(name: "__ecx", arg: 5, scope: !2253, file: !2229, line: 320, type: !2232)
!2262 = !DILocalVariable(name: "__edx", arg: 6, scope: !2253, file: !2229, line: 320, type: !2232)
!2263 = !DILocalVariable(name: "__max_leaf", scope: !2253, file: !2229, line: 322, type: !54)
!2264 = !DILocation(line: 0, scope: !2253)
!2265 = !DILocation(line: 322, column: 54, scope: !2253)
!2266 = !DILocation(line: 322, column: 31, scope: !2253)
!2267 = !DILocation(line: 324, column: 20, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2253, file: !2229, line: 324, column: 9)
!2269 = !DILocation(line: 324, column: 25, scope: !2268)
!2270 = !DILocation(line: 324, column: 39, scope: !2268)
!2271 = !DILocation(line: 324, column: 9, scope: !2253)
!2272 = !DILocation(line: 325, column: 9, scope: !2268)
!2273 = !DILocation(line: 327, column: 5, scope: !2253)
!2274 = !{i64 2153285919, i64 2153285955, i64 2153285979}
!2275 = !DILocation(line: 328, column: 5, scope: !2253)
!2276 = !DILocation(line: 329, column: 1, scope: !2253)
!2277 = distinct !DISubprogram(name: "__get_cpuid_max", scope: !2229, file: !2229, line: 273, type: !2278, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!54, !54, !2232}
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286}
!2281 = !DILocalVariable(name: "__leaf", arg: 1, scope: !2277, file: !2229, line: 273, type: !54)
!2282 = !DILocalVariable(name: "__sig", arg: 2, scope: !2277, file: !2229, line: 274, type: !2232)
!2283 = !DILocalVariable(name: "__eax", scope: !2277, file: !2229, line: 276, type: !54)
!2284 = !DILocalVariable(name: "__ebx", scope: !2277, file: !2229, line: 276, type: !54)
!2285 = !DILocalVariable(name: "__ecx", scope: !2277, file: !2229, line: 276, type: !54)
!2286 = !DILocalVariable(name: "__edx", scope: !2277, file: !2229, line: 276, type: !54)
!2287 = !DILocation(line: 0, scope: !2277)
!2288 = !DILocation(line: 298, column: 5, scope: !2277)
!2289 = !{i64 2153285503, i64 2153285539, i64 2153285563}
!2290 = !DILocation(line: 299, column: 9, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2277, file: !2229, line: 299, column: 9)
!2292 = !DILocation(line: 299, column: 9, scope: !2277)
!2293 = !DILocation(line: 300, column: 16, scope: !2291)
!2294 = !DILocation(line: 300, column: 9, scope: !2291)
!2295 = !DILocation(line: 301, column: 5, scope: !2277)
!2296 = distinct !DISubprogram(name: "set_binary_mode", scope: !2297, file: !2297, line: 66, type: !2298, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2300)
!2297 = !DIFile(filename: "../lib/binary-io.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!61, !61, !61}
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "fd", arg: 1, scope: !2296, file: !2297, line: 66, type: !61)
!2302 = !DILocalVariable(name: "mode", arg: 2, scope: !2296, file: !2297, line: 66, type: !61)
!2303 = !DILocation(line: 0, scope: !2296)
!2304 = !DILocation(line: 68, column: 10, scope: !2296)
!2305 = !DILocation(line: 68, column: 3, scope: !2296)
!2306 = distinct !DISubprogram(name: "xset_binary_mode_error", scope: !1396, file: !1396, line: 33, type: !670, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !662)
!2307 = !DILocation(line: 33, column: 55, scope: !2306)
!2308 = distinct !DISubprogram(name: "__gl_setmode", scope: !2297, file: !2297, line: 50, type: !2298, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2309)
!2309 = !{!2310, !2311}
!2310 = !DILocalVariable(name: "fd", arg: 1, scope: !2308, file: !2297, line: 50, type: !61)
!2311 = !DILocalVariable(name: "mode", arg: 2, scope: !2308, file: !2297, line: 50, type: !61)
!2312 = !DILocation(line: 0, scope: !2308)
!2313 = !DILocation(line: 52, column: 3, scope: !2308)
!2314 = !DISubprogram(name: "xnmalloc", scope: !1131, file: !1131, line: 132, type: !2315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!104, !108, !108}
!2317 = !DISubprogram(name: "rpl_stat", scope: !2318, file: !2318, line: 1355, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !662)
!2318 = !DIFile(filename: "./lib/sys/stat.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!61, !661, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1110)
