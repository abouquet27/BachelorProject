; ModuleID = 'coreutils-9.3/build/src/cat.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [41 x i8] c"Concatenate FILE(s) to standard output.\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [335 x i8] c"\0A  -A, --show-all           equivalent to -vET\0A  -b, --number-nonblank    number nonempty output lines, overrides -n\0A  -e                       equivalent to -vE\0A  -E, --show-ends          display $ at end of each line\0A  -n, --number             number all output lines\0A  -s, --squeeze-blank      suppress repeated empty output lines\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [212 x i8] c"  -t                       equivalent to -vT\0A  -T, --show-tabs          display TAB characters as ^I\0A  -u                       (ignored)\0A  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [137 x i8] c"\0AExamples:\0A  %s f - g  Output f's contents, then standard input, then g's contents.\0A  %s        Copy standard input to standard output.\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [4 x i8] c"cat\00", align 1, !dbg !42
@main.long_options = internal constant [10 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.9, i32 0, ptr null, i32 98 }, %struct.rpl_option { ptr @.str.10, i32 0, ptr null, i32 110 }, %struct.rpl_option { ptr @.str.11, i32 0, ptr null, i32 115 }, %struct.rpl_option { ptr @.str.12, i32 0, ptr null, i32 118 }, %struct.rpl_option { ptr @.str.13, i32 0, ptr null, i32 69 }, %struct.rpl_option { ptr @.str.14, i32 0, ptr null, i32 84 }, %struct.rpl_option { ptr @.str.15, i32 0, ptr null, i32 65 }, %struct.rpl_option { ptr @.str.16, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.17, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !47
@.str.9 = private unnamed_addr constant [16 x i8] c"number-nonblank\00", align 1, !dbg !106
@.str.10 = private unnamed_addr constant [7 x i8] c"number\00", align 1, !dbg !111
@.str.11 = private unnamed_addr constant [14 x i8] c"squeeze-blank\00", align 1, !dbg !116
@.str.12 = private unnamed_addr constant [17 x i8] c"show-nonprinting\00", align 1, !dbg !121
@.str.13 = private unnamed_addr constant [10 x i8] c"show-ends\00", align 1, !dbg !126
@.str.14 = private unnamed_addr constant [10 x i8] c"show-tabs\00", align 1, !dbg !131
@.str.15 = private unnamed_addr constant [9 x i8] c"show-all\00", align 1, !dbg !133
@.str.16 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !138
@.str.17 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !143
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !148
@.str.19 = private unnamed_addr constant [11 x i8] c"benstuvAET\00", align 1, !dbg !153
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !158
@Version = external global ptr, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1, !dbg !160
@.str.22 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1, !dbg !165
@.str.23 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1, !dbg !170
@.str.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !172
@infile = internal global ptr null, align 8, !dbg !199
@rpl_optind = external global i32, align 4
@input_desc = internal global i32 0, align 4, !dbg !201
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !177
@.str.26 = private unnamed_addr constant [30 x i8] c"%s: input file is output file\00", align 1, !dbg !182
@pending_cr = internal global i8 0, align 1, !dbg !272
@.str.27 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1, !dbg !187
@.str.28 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !189
@.str.29 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1, !dbg !194
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !203
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !208
@.str.32 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !210
@.str.33 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !212
@.str.34 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !214
@.str.35 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !219
@.str.36 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !221
@.str.37 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !226
@.str.38 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !228
@.str.39 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !230
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.31, ptr @.str.32 }, %struct.infomap { ptr @.str.33, ptr @.str.34 }, %struct.infomap { ptr @.str.35, ptr @.str.36 }, %struct.infomap { ptr @.str.37, ptr @.str.36 }, %struct.infomap { ptr @.str.38, ptr @.str.36 }, %struct.infomap { ptr @.str.39, ptr @.str.36 }, %struct.infomap zeroinitializer], align 16
@.str.40 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !232
@.str.41 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !234
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !239
@.str.43 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !241
@.str.44 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !246
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !248
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !253
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !258
@newlines2 = internal global i32 0, align 4, !dbg !262
@.str.48 = private unnamed_addr constant [22 x i8] c"cannot do ioctl on %s\00", align 1, !dbg !260
@line_num_print = internal global ptr getelementptr (i8, ptr @line_buf, i64 12), align 8, !dbg !270
@line_num_end = internal global ptr getelementptr (i8, ptr @line_buf, i64 17), align 8, !dbg !264
@line_num_start = internal global ptr getelementptr (i8, ptr @line_buf, i64 17), align 8, !dbg !266
@line_buf = internal global [20 x i8] c"                 0\09\00", align 16, !dbg !268

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !386 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !390, metadata !DIExpression()), !dbg !391
  %2 = icmp ne i32 %0, 0, !dbg !392
  br i1 %2, label %3, label %9, !dbg !394

3:                                                ; preds = %1
  br label %4, !dbg !395

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !396, !tbaa !398
  %6 = load ptr, ptr @program_name, align 8, !dbg !396, !tbaa !398
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !396
  br label %8, !dbg !396

8:                                                ; preds = %4
  br label %25, !dbg !396

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !402, !tbaa !398
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !404
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !405, !tbaa !398
  %13 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %12), !dbg !406
  call void @emit_stdin_note(), !dbg !407
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !408, !tbaa !398
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %14), !dbg !409
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !410, !tbaa !398
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %16), !dbg !411
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !412, !tbaa !398
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %18), !dbg !413
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !414, !tbaa !398
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %20), !dbg !415
  %22 = load ptr, ptr @program_name, align 8, !dbg !416, !tbaa !398
  %23 = load ptr, ptr @program_name, align 8, !dbg !417, !tbaa !398
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %22, ptr noundef %23), !dbg !418
  call void @emit_ancillary_info(ptr noundef @.str.8), !dbg !419
  br label %25

25:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #10, !dbg !420
  unreachable, !dbg !420
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !421 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !477 i32 @printf(ptr noundef, ...) #2

declare !dbg !480 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_stdin_note() #3 !dbg !483 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !486, !tbaa !398
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.30, ptr noundef %1), !dbg !487
  ret void, !dbg !488
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !489 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !493, metadata !DIExpression()), !dbg !506
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #11, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %2, metadata !494, metadata !DIExpression()), !dbg !508
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !508
  call void @llvm.dbg.value(metadata ptr %0, metadata !501, metadata !DIExpression()), !dbg !506
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !509
  call void @llvm.dbg.value(metadata ptr %3, metadata !502, metadata !DIExpression()), !dbg !506
  br label %4, !dbg !510

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !506
  call void @llvm.dbg.value(metadata ptr %.0, metadata !502, metadata !DIExpression()), !dbg !506
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !511
  %6 = load ptr, ptr %5, align 8, !dbg !511, !tbaa !512
  %7 = icmp ne ptr %6, null, !dbg !514
  br i1 %7, label %8, label %14, !dbg !515

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !516
  %10 = load ptr, ptr %9, align 8, !dbg !516, !tbaa !512
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !516
  %12 = icmp eq i32 %11, 0, !dbg !516
  %13 = xor i1 %12, true, !dbg !517
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !506
  br i1 %15, label %16, label %18, !dbg !510

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !518
  call void @llvm.dbg.value(metadata ptr %17, metadata !502, metadata !DIExpression()), !dbg !506
  br label %4, !dbg !510, !llvm.loop !519

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !522
  %20 = load ptr, ptr %19, align 8, !dbg !522, !tbaa !524
  %21 = icmp ne ptr %20, null, !dbg !525
  br i1 %21, label %22, label %25, !dbg !526

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !527
  %24 = load ptr, ptr %23, align 8, !dbg !527, !tbaa !524
  call void @llvm.dbg.value(metadata ptr %24, metadata !501, metadata !DIExpression()), !dbg !506
  br label %25, !dbg !528

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !506
  call void @llvm.dbg.value(metadata ptr %.01, metadata !501, metadata !DIExpression()), !dbg !506
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.40, ptr noundef @.str.20, ptr noundef @.str.41), !dbg !529
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !530
  call void @llvm.dbg.value(metadata ptr %27, metadata !504, metadata !DIExpression()), !dbg !506
  %28 = icmp ne ptr %27, null, !dbg !531
  br i1 %28, label %29, label %35, !dbg !533

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.42, i64 noundef 3), !dbg !534
  %31 = icmp ne i32 %30, 0, !dbg !534
  br i1 %31, label %32, label %35, !dbg !535

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !536, !tbaa !398
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.43, ptr noundef %33), !dbg !538
  br label %35, !dbg !539

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.31), !dbg !540
  %37 = icmp eq i32 %36, 0, !dbg !540
  br i1 %37, label %38, label %39, !dbg !540

38:                                               ; preds = %35
  br label %40, !dbg !540

39:                                               ; preds = %35
  br label %40, !dbg !540

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.44, %38 ], [ %0, %39 ], !dbg !540
  call void @llvm.dbg.value(metadata ptr %41, metadata !505, metadata !DIExpression()), !dbg !506
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.45, ptr noundef @.str.41, ptr noundef %41), !dbg !541
  %43 = icmp eq ptr %.01, %0, !dbg !542
  %44 = zext i1 %43 to i64, !dbg !543
  %45 = select i1 %43, ptr @.str.47, ptr @.str.18, !dbg !543
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.46, ptr noundef %.01, ptr noundef %45), !dbg !544
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #11, !dbg !545
  ret void, !dbg !545
}

; Function Attrs: noreturn
declare !dbg !546 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !548 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !552 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !556 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !49 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !276, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata ptr %1, metadata !277, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 0, metadata !278, metadata !DIExpression()), !dbg !559
  call void @llvm.lifetime.start.p0(i64 144, ptr %3) #11, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %3, metadata !279, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i8 0, metadata !340, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 0, metadata !341, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 0, metadata !342, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 0, metadata !343, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 0, metadata !344, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 0, metadata !345, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i32 0, metadata !346, metadata !DIExpression()), !dbg !559
  %4 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !562
  %5 = load ptr, ptr %4, align 8, !dbg !562, !tbaa !398
  call void @set_program_name(ptr noundef %5), !dbg !563
  %6 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.18), !dbg !564
  %7 = call i32 @atexit(ptr noundef @close_stdout), !dbg !565
  br label %8, !dbg !566

8:                                                ; preds = %26, %2
  %.014 = phi i8 [ 0, %2 ], [ %.115, %26 ], !dbg !559
  %.012 = phi i8 [ 0, %2 ], [ %.113, %26 ], !dbg !567
  %.010 = phi i8 [ 0, %2 ], [ %.111, %26 ], !dbg !568
  %.08 = phi i8 [ 0, %2 ], [ %.19, %26 ], !dbg !569
  %.06 = phi i8 [ 0, %2 ], [ %.17, %26 ], !dbg !570
  %.04 = phi i8 [ 0, %2 ], [ %.15, %26 ], !dbg !571
  call void @llvm.dbg.value(metadata i8 %.04, metadata !340, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.06, metadata !341, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.08, metadata !342, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.010, metadata !343, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.012, metadata !344, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.014, metadata !345, metadata !DIExpression()), !dbg !559
  %9 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.19, ptr noundef @main.long_options, ptr noundef null), !dbg !572
  call void @llvm.dbg.value(metadata i32 %9, metadata !347, metadata !DIExpression()), !dbg !559
  %10 = icmp ne i32 %9, -1, !dbg !573
  br i1 %10, label %11, label %27, !dbg !566

11:                                               ; preds = %8
  switch i32 %9, label %25 [
    i32 98, label %12
    i32 101, label %13
    i32 110, label %14
    i32 115, label %15
    i32 116, label %16
    i32 117, label %26
    i32 118, label %17
    i32 65, label %18
    i32 69, label %19
    i32 84, label %20
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !574

12:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !340, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 1, metadata !341, metadata !DIExpression()), !dbg !559
  br label %26, !dbg !576

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !343, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 1, metadata !344, metadata !DIExpression()), !dbg !559
  br label %26, !dbg !578

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !340, metadata !DIExpression()), !dbg !559
  br label %26, !dbg !579

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !342, metadata !DIExpression()), !dbg !559
  br label %26, !dbg !580

16:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !345, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 1, metadata !344, metadata !DIExpression()), !dbg !559
  br label %26, !dbg !581

17:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !344, metadata !DIExpression()), !dbg !559
  br label %26, !dbg !582

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !344, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 1, metadata !343, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 1, metadata !345, metadata !DIExpression()), !dbg !559
  br label %26, !dbg !583

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !343, metadata !DIExpression()), !dbg !559
  br label %26, !dbg !584

20:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !345, metadata !DIExpression()), !dbg !559
  br label %26, !dbg !585

21:                                               ; preds = %11
  call void @usage(i32 noundef 0) #10, !dbg !586
  unreachable, !dbg !586

22:                                               ; preds = %11
  %23 = load ptr, ptr @__stdoutp, align 8, !dbg !587, !tbaa !398
  %24 = load ptr, ptr @Version, align 8, !dbg !587, !tbaa !398
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef @.str.8, ptr noundef @.str.20, ptr noundef %24, ptr noundef @.str.21, ptr noundef @.str.22, ptr noundef null), !dbg !587
  call void @exit(i32 noundef 0) #10, !dbg !587
  unreachable, !dbg !587

25:                                               ; preds = %11
  call void @usage(i32 noundef 1) #10, !dbg !588
  unreachable, !dbg !588

26:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %.115 = phi i8 [ 1, %20 ], [ %.014, %19 ], [ 1, %18 ], [ %.014, %17 ], [ %.014, %11 ], [ 1, %16 ], [ %.014, %15 ], [ %.014, %14 ], [ %.014, %13 ], [ %.014, %12 ], !dbg !559
  %.113 = phi i8 [ %.012, %20 ], [ %.012, %19 ], [ 1, %18 ], [ 1, %17 ], [ %.012, %11 ], [ 1, %16 ], [ %.012, %15 ], [ %.012, %14 ], [ 1, %13 ], [ %.012, %12 ], !dbg !559
  %.111 = phi i8 [ %.010, %20 ], [ 1, %19 ], [ 1, %18 ], [ %.010, %17 ], [ %.010, %11 ], [ %.010, %16 ], [ %.010, %15 ], [ %.010, %14 ], [ 1, %13 ], [ %.010, %12 ], !dbg !559
  %.19 = phi i8 [ %.08, %20 ], [ %.08, %19 ], [ %.08, %18 ], [ %.08, %17 ], [ %.08, %11 ], [ %.08, %16 ], [ 1, %15 ], [ %.08, %14 ], [ %.08, %13 ], [ %.08, %12 ], !dbg !559
  %.17 = phi i8 [ %.06, %20 ], [ %.06, %19 ], [ %.06, %18 ], [ %.06, %17 ], [ %.06, %11 ], [ %.06, %16 ], [ %.06, %15 ], [ %.06, %14 ], [ %.06, %13 ], [ 1, %12 ], !dbg !559
  %.15 = phi i8 [ %.04, %20 ], [ %.04, %19 ], [ %.04, %18 ], [ %.04, %17 ], [ %.04, %11 ], [ %.04, %16 ], [ %.04, %15 ], [ 1, %14 ], [ %.04, %13 ], [ 1, %12 ], !dbg !559
  call void @llvm.dbg.value(metadata i8 %.15, metadata !340, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.17, metadata !341, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.19, metadata !342, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.111, metadata !343, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.113, metadata !344, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.115, metadata !345, metadata !DIExpression()), !dbg !559
  br label %8, !dbg !566, !llvm.loop !589

27:                                               ; preds = %8
  %28 = call i32 @"\01_fstat$INODE64"(i32 noundef 1, ptr noundef %3), !dbg !591
  %29 = icmp slt i32 %28, 0, !dbg !593
  br i1 %29, label %30, label %33, !dbg !594

30:                                               ; preds = %27
  %31 = call ptr @__error(), !dbg !595
  %32 = load i32, ptr %31, align 4, !dbg !595, !tbaa !596
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %32, ptr noundef @.str.23), !dbg !595
  unreachable, !dbg !595

33:                                               ; preds = %27
  %34 = call i64 @io_blksize(ptr noundef byval(%struct.stat) align 8 %3), !dbg !598
  call void @llvm.dbg.value(metadata i64 %34, metadata !348, metadata !DIExpression()), !dbg !559
  %35 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 0, !dbg !599
  %36 = load i32, ptr %35, align 8, !dbg !599, !tbaa !600
  call void @llvm.dbg.value(metadata i32 %36, metadata !349, metadata !DIExpression()), !dbg !559
  %37 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 3, !dbg !606
  %38 = load i64, ptr %37, align 8, !dbg !606, !tbaa !607
  call void @llvm.dbg.value(metadata i64 %38, metadata !350, metadata !DIExpression()), !dbg !559
  %39 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 1, !dbg !608
  %40 = load i16, ptr %39, align 4, !dbg !608, !tbaa !609
  %41 = zext i16 %40 to i32, !dbg !608
  %42 = and i32 %41, 61440, !dbg !608
  %43 = icmp eq i32 %42, 32768, !dbg !608
  %44 = zext i1 %43 to i32, !dbg !608
  %45 = icmp ne i32 %44, 0, !dbg !610
  %46 = zext i1 %45 to i8, !dbg !611
  call void @llvm.dbg.value(metadata i8 %46, metadata !354, metadata !DIExpression()), !dbg !559
  %47 = trunc i8 %.04 to i1, !dbg !612
  br i1 %47, label %54, label %48, !dbg !614

48:                                               ; preds = %33
  %49 = trunc i8 %.010 to i1, !dbg !615
  br i1 %49, label %54, label %50, !dbg !616

50:                                               ; preds = %48
  %51 = trunc i8 %.08 to i1, !dbg !617
  br i1 %51, label %54, label %52, !dbg !618

52:                                               ; preds = %50
  %53 = or i32 0, 0, !dbg !619
  call void @llvm.dbg.value(metadata i32 %53, metadata !346, metadata !DIExpression()), !dbg !559
  call void @xset_binary_mode(i32 noundef 1, i32 noundef 0), !dbg !621
  br label %54, !dbg !622

54:                                               ; preds = %52, %50, %48, %33
  %.016 = phi i32 [ 0, %33 ], [ 0, %48 ], [ 0, %50 ], [ %53, %52 ], !dbg !559
  call void @llvm.dbg.value(metadata i32 %.016, metadata !346, metadata !DIExpression()), !dbg !559
  store ptr @.str.24, ptr @infile, align 8, !dbg !623, !tbaa !398
  %55 = load i32, ptr @rpl_optind, align 4, !dbg !624, !tbaa !596
  call void @llvm.dbg.value(metadata i32 %55, metadata !355, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 1, metadata !356, metadata !DIExpression()), !dbg !559
  %56 = call i32 @getpagesize() #12, !dbg !625
  %57 = sext i32 %56 to i64, !dbg !625
  call void @llvm.dbg.value(metadata i64 %57, metadata !357, metadata !DIExpression()), !dbg !559
  br label %58, !dbg !626

58:                                               ; preds = %254, %54
  %.021 = phi i32 [ %55, %54 ], [ %255, %254 ], !dbg !559
  %.018 = phi i8 [ 1, %54 ], [ %.5, %254 ], !dbg !559
  %.02 = phi i8 [ 0, %54 ], [ %.2, %254 ], !dbg !559
  call void @llvm.dbg.value(metadata i8 %.02, metadata !278, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.018, metadata !356, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i32 %.021, metadata !355, metadata !DIExpression()), !dbg !559
  %59 = icmp slt i32 %.021, %0, !dbg !627
  br i1 %59, label %60, label %64, !dbg !629

60:                                               ; preds = %58
  %61 = sext i32 %.021 to i64, !dbg !630
  %62 = getelementptr inbounds ptr, ptr %1, i64 %61, !dbg !630
  %63 = load ptr, ptr %62, align 8, !dbg !630, !tbaa !398
  store ptr %63, ptr @infile, align 8, !dbg !631, !tbaa !398
  br label %64, !dbg !632

64:                                               ; preds = %60, %58
  %65 = load ptr, ptr @infile, align 8, !dbg !633, !tbaa !398
  %66 = call i32 @strcmp(ptr noundef %65, ptr noundef @.str.24), !dbg !633
  %67 = icmp eq i32 %66, 0, !dbg !633
  %68 = zext i1 %67 to i8, !dbg !634
  call void @llvm.dbg.value(metadata i8 %68, metadata !358, metadata !DIExpression()), !dbg !635
  %69 = trunc i8 %68 to i1, !dbg !636
  br i1 %69, label %70, label %75, !dbg !638

70:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i8 1, metadata !278, metadata !DIExpression()), !dbg !559
  store i32 0, ptr @input_desc, align 4, !dbg !639, !tbaa !596
  %71 = and i32 %.016, 0, !dbg !641
  %72 = icmp ne i32 %71, 0, !dbg !641
  br i1 %72, label %73, label %74, !dbg !643

73:                                               ; preds = %70
  call void @xset_binary_mode(i32 noundef 0, i32 noundef 0), !dbg !644
  br label %74, !dbg !644

74:                                               ; preds = %73, %70
  br label %86, !dbg !645

75:                                               ; preds = %64
  %76 = load ptr, ptr @infile, align 8, !dbg !646, !tbaa !398
  %77 = call i32 (ptr, i32, ...) @rpl_open(ptr noundef %76, i32 noundef %.016), !dbg !648
  store i32 %77, ptr @input_desc, align 4, !dbg !649, !tbaa !596
  %78 = load i32, ptr @input_desc, align 4, !dbg !650, !tbaa !596
  %79 = icmp slt i32 %78, 0, !dbg !652
  br i1 %79, label %80, label %85, !dbg !653

80:                                               ; preds = %75
  %81 = call ptr @__error(), !dbg !654
  %82 = load i32, ptr %81, align 4, !dbg !654, !tbaa !596
  %83 = load ptr, ptr @infile, align 8, !dbg !656, !tbaa !398
  %84 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %83), !dbg !656
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %82, ptr noundef @.str.25, ptr noundef %84), !dbg !657
  call void @llvm.dbg.value(metadata i8 0, metadata !356, metadata !DIExpression()), !dbg !559
  br label %252, !dbg !658

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %74
  %.13 = phi i8 [ 1, %74 ], [ %.02, %85 ], !dbg !559
  call void @llvm.dbg.value(metadata i8 %.13, metadata !278, metadata !DIExpression()), !dbg !559
  %87 = load i32, ptr @input_desc, align 4, !dbg !659, !tbaa !596
  %88 = call i32 @"\01_fstat$INODE64"(i32 noundef %87, ptr noundef %3), !dbg !661
  %89 = icmp slt i32 %88, 0, !dbg !662
  br i1 %89, label %90, label %95, !dbg !663

90:                                               ; preds = %86
  %91 = call ptr @__error(), !dbg !664
  %92 = load i32, ptr %91, align 4, !dbg !664, !tbaa !596
  %93 = load ptr, ptr @infile, align 8, !dbg !666, !tbaa !398
  %94 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %93), !dbg !666
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %92, ptr noundef @.str.25, ptr noundef %94), !dbg !667
  call void @llvm.dbg.value(metadata i8 0, metadata !356, metadata !DIExpression()), !dbg !559
  br label %240, !dbg !668

95:                                               ; preds = %86
  %96 = call i64 @io_blksize(ptr noundef byval(%struct.stat) align 8 %3), !dbg !669
  call void @llvm.dbg.value(metadata i64 %96, metadata !360, metadata !DIExpression()), !dbg !635
  %97 = load i32, ptr @input_desc, align 4, !dbg !670, !tbaa !596
  call void @fdadvise(i32 noundef %97, i64 noundef 0, i64 noundef 0, i32 noundef 1), !dbg !671
  %98 = trunc i8 %46 to i1, !dbg !672
  br i1 %98, label %99, label %116, !dbg !674

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 0, !dbg !675
  %101 = load i32, ptr %100, align 8, !dbg !675, !tbaa !600
  %102 = icmp eq i32 %101, %36, !dbg !676
  br i1 %102, label %103, label %116, !dbg !677

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 3, !dbg !678
  %105 = load i64, ptr %104, align 8, !dbg !678, !tbaa !607
  %106 = icmp eq i64 %105, %38, !dbg !679
  br i1 %106, label %107, label %116, !dbg !680

107:                                              ; preds = %103
  %108 = load i32, ptr @input_desc, align 4, !dbg !681, !tbaa !596
  %109 = call i64 @lseek(i32 noundef %108, i64 noundef 0, i32 noundef 1), !dbg !682
  %110 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 11, !dbg !683
  %111 = load i64, ptr %110, align 8, !dbg !683, !tbaa !684
  %112 = icmp slt i64 %109, %111, !dbg !685
  br i1 %112, label %113, label %116, !dbg !686

113:                                              ; preds = %107
  %114 = load ptr, ptr @infile, align 8, !dbg !687, !tbaa !398
  %115 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %114), !dbg !687
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.26, ptr noundef %115), !dbg !689
  call void @llvm.dbg.value(metadata i8 0, metadata !356, metadata !DIExpression()), !dbg !559
  br label %240, !dbg !690

116:                                              ; preds = %107, %103, %99, %95
  %117 = trunc i8 %.04 to i1, !dbg !691
  br i1 %117, label %163, label %118, !dbg !692

118:                                              ; preds = %116
  %119 = trunc i8 %.010 to i1, !dbg !693
  br i1 %119, label %163, label %120, !dbg !694

120:                                              ; preds = %118
  %121 = trunc i8 %.012 to i1, !dbg !695
  br i1 %121, label %163, label %122, !dbg !696

122:                                              ; preds = %120
  %123 = trunc i8 %.014 to i1, !dbg !697
  br i1 %123, label %163, label %124, !dbg !698

124:                                              ; preds = %122
  %125 = trunc i8 %.08 to i1, !dbg !699
  br i1 %125, label %163, label %126, !dbg !700

126:                                              ; preds = %124
  %127 = trunc i8 %46 to i1, !dbg !701
  br i1 %127, label %128, label %136, !dbg !702

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 1, !dbg !703
  %130 = load i16, ptr %129, align 4, !dbg !703, !tbaa !609
  %131 = zext i16 %130 to i32, !dbg !703
  %132 = and i32 %131, 61440, !dbg !703
  %133 = icmp eq i32 %132, 32768, !dbg !703
  br i1 %133, label %134, label %136, !dbg !701

134:                                              ; preds = %128
  %135 = call i32 @copy_cat(), !dbg !704
  br label %137, !dbg !701

136:                                              ; preds = %128, %126
  br label %137, !dbg !701

137:                                              ; preds = %136, %134
  %138 = phi i32 [ %135, %134 ], [ 0, %136 ], !dbg !701
  call void @llvm.dbg.value(metadata i32 %138, metadata !362, metadata !DIExpression()), !dbg !705
  %139 = icmp ne i32 %138, 0, !dbg !706
  br i1 %139, label %140, label %148, !dbg !708

140:                                              ; preds = %137
  call void @llvm.dbg.value(metadata ptr null, metadata !361, metadata !DIExpression()), !dbg !635
  %141 = icmp slt i32 0, %138, !dbg !709
  %142 = zext i1 %141 to i32, !dbg !709
  %143 = trunc i8 %.018 to i1, !dbg !711
  %144 = zext i1 %143 to i32, !dbg !711
  %145 = and i32 %144, %142, !dbg !711
  %146 = icmp ne i32 %145, 0, !dbg !711
  %147 = zext i1 %146 to i8, !dbg !711
  call void @llvm.dbg.value(metadata i8 %147, metadata !356, metadata !DIExpression()), !dbg !559
  br label %162, !dbg !712

148:                                              ; preds = %137
  %149 = icmp sgt i64 %96, %34, !dbg !713
  br i1 %149, label %150, label %151, !dbg !713

150:                                              ; preds = %148
  br label %152, !dbg !713

151:                                              ; preds = %148
  br label %152, !dbg !713

152:                                              ; preds = %151, %150
  %153 = phi i64 [ %96, %150 ], [ %34, %151 ], !dbg !713
  call void @llvm.dbg.value(metadata i64 %153, metadata !360, metadata !DIExpression()), !dbg !635
  %154 = call noalias nonnull ptr @xalignalloc(i64 noundef %57, i64 noundef %153) #13, !dbg !715
  call void @llvm.dbg.value(metadata ptr %154, metadata !361, metadata !DIExpression()), !dbg !635
  %155 = call zeroext i1 @simple_cat(ptr noundef %154, i64 noundef %153), !dbg !716
  %156 = zext i1 %155 to i32, !dbg !716
  %157 = trunc i8 %.018 to i1, !dbg !717
  %158 = zext i1 %157 to i32, !dbg !717
  %159 = and i32 %158, %156, !dbg !717
  %160 = icmp ne i32 %159, 0, !dbg !717
  %161 = zext i1 %160 to i8, !dbg !717
  call void @llvm.dbg.value(metadata i8 %161, metadata !356, metadata !DIExpression()), !dbg !559
  br label %162

162:                                              ; preds = %152, %140
  %.119 = phi i8 [ %147, %140 ], [ %161, %152 ], !dbg !718
  %.01 = phi ptr [ null, %140 ], [ %154, %152 ], !dbg !718
  call void @llvm.dbg.value(metadata ptr %.01, metadata !361, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i8 %.119, metadata !356, metadata !DIExpression()), !dbg !559
  br label %239, !dbg !719

163:                                              ; preds = %124, %122, %120, %118, %116
  %164 = add nsw i64 %96, 1, !dbg !720
  %165 = call noalias nonnull ptr @xalignalloc(i64 noundef %57, i64 noundef %164) #13, !dbg !721
  call void @llvm.dbg.value(metadata ptr %165, metadata !361, metadata !DIExpression()), !dbg !635
  br i1 false, label %166, label %211, !dbg !722

166:                                              ; preds = %163
  br i1 false, label %167, label %190, !dbg !724

167:                                              ; preds = %166
  %168 = icmp slt i64 %96, 0, !dbg !722
  br i1 %168, label %169, label %175, !dbg !722

169:                                              ; preds = %167
  br i1 true, label %170, label %172, !dbg !722

170:                                              ; preds = %169
  %171 = icmp slt i64 %96, 0, !dbg !722
  br i1 %171, label %207, label %211, !dbg !722

172:                                              ; preds = %169
  %173 = sub nsw i64 -1, %96, !dbg !722
  %174 = icmp sle i64 0, %173, !dbg !722
  br i1 %174, label %207, label %211, !dbg !722

175:                                              ; preds = %167
  br i1 true, label %176, label %177, !dbg !722

176:                                              ; preds = %175
  br i1 false, label %178, label %188, !dbg !722

177:                                              ; preds = %175
  br i1 false, label %178, label %188, !dbg !722

178:                                              ; preds = %177, %176
  br i1 false, label %179, label %188, !dbg !722

179:                                              ; preds = %178
  br i1 true, label %180, label %183, !dbg !722

180:                                              ; preds = %179
  %181 = add nsw i64 %96, 0, !dbg !722
  %182 = icmp slt i64 0, %181, !dbg !722
  br i1 %182, label %207, label %211, !dbg !722

183:                                              ; preds = %179
  %184 = icmp slt i64 0, %96, !dbg !722
  br i1 %184, label %185, label %211, !dbg !722

185:                                              ; preds = %183
  %186 = sub nsw i64 %96, 1, !dbg !722
  %187 = icmp slt i64 -1, %186, !dbg !722
  br i1 %187, label %207, label %211, !dbg !722

188:                                              ; preds = %178, %177, %176
  %189 = icmp slt i64 0, %96, !dbg !722
  br i1 %189, label %207, label %211, !dbg !722

190:                                              ; preds = %166
  br i1 false, label %191, label %192, !dbg !724

191:                                              ; preds = %190
  br i1 false, label %207, label %211, !dbg !722

192:                                              ; preds = %190
  %193 = icmp slt i64 %96, 0, !dbg !722
  br i1 %193, label %194, label %205, !dbg !724

194:                                              ; preds = %192
  br i1 true, label %195, label %196, !dbg !722

195:                                              ; preds = %194
  br i1 false, label %197, label %202, !dbg !722

196:                                              ; preds = %194
  br i1 false, label %197, label %202, !dbg !722

197:                                              ; preds = %196, %195
  %198 = icmp eq i64 %96, -1, !dbg !722
  br i1 %198, label %199, label %202, !dbg !722

199:                                              ; preds = %197
  br i1 true, label %200, label %201, !dbg !722

200:                                              ; preds = %199
  br i1 true, label %207, label %211, !dbg !722

201:                                              ; preds = %199
  br i1 true, label %207, label %211, !dbg !722

202:                                              ; preds = %197, %196, %195
  %203 = sdiv i64 0, %96, !dbg !722
  %204 = icmp slt i64 %203, 4, !dbg !722
  br i1 %204, label %207, label %211, !dbg !722

205:                                              ; preds = %192
  %206 = icmp slt i64 0, %96, !dbg !722
  br i1 %206, label %207, label %211, !dbg !724

207:                                              ; preds = %205, %202, %201, %200, %191, %188, %185, %180, %172, %170
  %208 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %96, i64 4), !dbg !722
  %209 = extractvalue { i64, i1 } %208, 1, !dbg !722
  %210 = extractvalue { i64, i1 } %208, 0, !dbg !722
  call void @llvm.dbg.value(metadata i64 %210, metadata !365, metadata !DIExpression()), !dbg !725
  br i1 true, label %223, label %215, !dbg !722

211:                                              ; preds = %205, %202, %201, %200, %191, %188, %185, %183, %180, %172, %170, %163
  %212 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %96, i64 4), !dbg !722
  %213 = extractvalue { i64, i1 } %212, 1, !dbg !722
  %214 = extractvalue { i64, i1 } %212, 0, !dbg !722
  call void @llvm.dbg.value(metadata i64 %214, metadata !365, metadata !DIExpression()), !dbg !725
  br i1 %213, label %223, label %215, !dbg !724

215:                                              ; preds = %211, %207
  %.0 = phi i64 [ %210, %207 ], [ %214, %211 ], !dbg !722
  call void @llvm.dbg.value(metadata i64 %.0, metadata !365, metadata !DIExpression()), !dbg !725
  %216 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.0, i64 %34), !dbg !726
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !726
  %218 = extractvalue { i64, i1 } %216, 0, !dbg !726
  call void @llvm.dbg.value(metadata i64 %218, metadata !365, metadata !DIExpression()), !dbg !725
  br i1 %217, label %223, label %219, !dbg !727

219:                                              ; preds = %215
  %220 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %218, i64 19), !dbg !728
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !728
  %222 = extractvalue { i64, i1 } %220, 0, !dbg !728
  call void @llvm.dbg.value(metadata i64 %222, metadata !365, metadata !DIExpression()), !dbg !725
  br i1 %221, label %223, label %224, !dbg !729

223:                                              ; preds = %219, %215, %211, %207
  call void @xalloc_die() #10, !dbg !730
  unreachable, !dbg !730

224:                                              ; preds = %219
  %225 = call noalias nonnull ptr @xalignalloc(i64 noundef %57, i64 noundef %222) #13, !dbg !731
  call void @llvm.dbg.value(metadata ptr %225, metadata !367, metadata !DIExpression()), !dbg !725
  %226 = trunc i8 %.012 to i1, !dbg !732
  %227 = trunc i8 %.014 to i1, !dbg !733
  %228 = trunc i8 %.04 to i1, !dbg !734
  %229 = trunc i8 %.06 to i1, !dbg !735
  %230 = trunc i8 %.010 to i1, !dbg !736
  %231 = trunc i8 %.08 to i1, !dbg !737
  %232 = call zeroext i1 @cat(ptr noundef %165, i64 noundef %96, ptr noundef %225, i64 noundef %34, i1 noundef zeroext %226, i1 noundef zeroext %227, i1 noundef zeroext %228, i1 noundef zeroext %229, i1 noundef zeroext %230, i1 noundef zeroext %231), !dbg !738
  %233 = zext i1 %232 to i32, !dbg !738
  %234 = trunc i8 %.018 to i1, !dbg !739
  %235 = zext i1 %234 to i32, !dbg !739
  %236 = and i32 %235, %233, !dbg !739
  %237 = icmp ne i32 %236, 0, !dbg !739
  %238 = zext i1 %237 to i8, !dbg !739
  call void @llvm.dbg.value(metadata i8 %238, metadata !356, metadata !DIExpression()), !dbg !559
  call void @alignfree(ptr noundef %225), !dbg !740
  br label %239

239:                                              ; preds = %224, %162
  %.220 = phi i8 [ %238, %224 ], [ %.119, %162 ], !dbg !741
  %.1 = phi ptr [ %165, %224 ], [ %.01, %162 ], !dbg !741
  call void @llvm.dbg.value(metadata ptr %.1, metadata !361, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i8 %.220, metadata !356, metadata !DIExpression()), !dbg !559
  call void @alignfree(ptr noundef %.1), !dbg !742
  br label %240, !dbg !742

240:                                              ; preds = %239, %113, %90
  %.3 = phi i8 [ 0, %90 ], [ 0, %113 ], [ %.220, %239 ], !dbg !635
  call void @llvm.dbg.value(metadata i8 %.3, metadata !356, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.label(metadata !368), !dbg !743
  %241 = trunc i8 %68 to i1, !dbg !744
  br i1 %241, label %251, label %242, !dbg !746

242:                                              ; preds = %240
  %243 = load i32, ptr @input_desc, align 4, !dbg !747, !tbaa !596
  %244 = call i32 @"\01_close"(i32 noundef %243), !dbg !748
  %245 = icmp slt i32 %244, 0, !dbg !749
  br i1 %245, label %246, label %251, !dbg !750

246:                                              ; preds = %242
  %247 = call ptr @__error(), !dbg !751
  %248 = load i32, ptr %247, align 4, !dbg !751, !tbaa !596
  %249 = load ptr, ptr @infile, align 8, !dbg !753, !tbaa !398
  %250 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %249), !dbg !753
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %248, ptr noundef @.str.25, ptr noundef %250), !dbg !754
  call void @llvm.dbg.value(metadata i8 0, metadata !356, metadata !DIExpression()), !dbg !559
  br label %251, !dbg !755

251:                                              ; preds = %246, %242, %240
  %.4 = phi i8 [ %.3, %240 ], [ 0, %246 ], [ %.3, %242 ], !dbg !635
  call void @llvm.dbg.value(metadata i8 %.4, metadata !356, metadata !DIExpression()), !dbg !559
  br label %252, !dbg !756

252:                                              ; preds = %251, %80
  %.5 = phi i8 [ %.4, %251 ], [ 0, %80 ], !dbg !635
  %.017 = phi i32 [ 0, %251 ], [ 6, %80 ]
  %.2 = phi i8 [ %.13, %251 ], [ %.02, %80 ], !dbg !559
  call void @llvm.dbg.value(metadata i8 %.2, metadata !278, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8 %.5, metadata !356, metadata !DIExpression()), !dbg !559
  switch i32 %.017, label %279 [
    i32 0, label %253
    i32 6, label %254
  ]

253:                                              ; preds = %252
  br label %254, !dbg !757

254:                                              ; preds = %253, %252
  %255 = add nsw i32 %.021, 1, !dbg !758
  call void @llvm.dbg.value(metadata i32 %255, metadata !355, metadata !DIExpression()), !dbg !559
  %256 = icmp slt i32 %255, %0, !dbg !759
  br i1 %256, label %58, label %257, !dbg !757, !llvm.loop !760

257:                                              ; preds = %254
  %258 = load i8, ptr @pending_cr, align 1, !dbg !762, !tbaa !764, !range !766, !noundef !476
  %259 = trunc i8 %258 to i1, !dbg !762
  br i1 %259, label %260, label %267, !dbg !767

260:                                              ; preds = %257
  %261 = call i64 @full_write(i32 noundef 1, ptr noundef @.str.27, i64 noundef 1), !dbg !768
  %262 = icmp ne i64 %261, 1, !dbg !771
  br i1 %262, label %263, label %266, !dbg !772

263:                                              ; preds = %260
  %264 = call ptr @__error(), !dbg !773
  %265 = load i32, ptr %264, align 4, !dbg !773, !tbaa !596
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %265, ptr noundef @.str.28), !dbg !773
  unreachable, !dbg !773

266:                                              ; preds = %260
  br label %267, !dbg !774

267:                                              ; preds = %266, %257
  %268 = trunc i8 %.2 to i1, !dbg !775
  br i1 %268, label %269, label %275, !dbg !777

269:                                              ; preds = %267
  %270 = call i32 @"\01_close"(i32 noundef 0), !dbg !778
  %271 = icmp slt i32 %270, 0, !dbg !779
  br i1 %271, label %272, label %275, !dbg !780

272:                                              ; preds = %269
  %273 = call ptr @__error(), !dbg !781
  %274 = load i32, ptr %273, align 4, !dbg !781, !tbaa !596
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %274, ptr noundef @.str.29), !dbg !781
  unreachable, !dbg !781

275:                                              ; preds = %269, %267
  %276 = trunc i8 %.5 to i1, !dbg !782
  %277 = zext i1 %276 to i64, !dbg !782
  %278 = select i1 %276, i32 0, i32 1, !dbg !782
  call void @llvm.lifetime.end.p0(i64 144, ptr %3) #11, !dbg !783
  ret i32 %278, !dbg !783

279:                                              ; preds = %252
  unreachable
}

declare !dbg !784 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !786 i32 @atexit(ptr noundef) #2

declare !dbg !790 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !794 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !798 i32 @"\01_fstat$INODE64"(i32 noundef, ptr noundef) #2

declare !dbg !802 ptr @__error() #2

declare !dbg !806 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i64 @io_blksize(ptr noundef byval(%struct.stat) align 8 %0) #3 !dbg !810 {
  call void @llvm.dbg.declare(metadata ptr %0, metadata !814, metadata !DIExpression()), !dbg !822
  %2 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 13, !dbg !823
  %3 = load i32, ptr %2, align 8, !dbg !823, !tbaa !824
  %4 = icmp slt i32 0, %3, !dbg !823
  br i1 %4, label %5, label %13, !dbg !823

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 13, !dbg !823
  %7 = load i32, ptr %6, align 8, !dbg !823, !tbaa !824
  %8 = sext i32 %7 to i64, !dbg !823
  %9 = icmp ule i64 %8, 2305843009213693952, !dbg !823
  br i1 %9, label %10, label %13, !dbg !823

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 13, !dbg !823
  %12 = load i32, ptr %11, align 8, !dbg !823, !tbaa !824
  br label %14, !dbg !823

13:                                               ; preds = %5, %1
  br label %14, !dbg !823

14:                                               ; preds = %13, %10
  %15 = phi i32 [ %12, %10 ], [ 512, %13 ], !dbg !823
  %16 = icmp sle i32 %15, 0, !dbg !825
  br i1 %16, label %17, label %18, !dbg !823

17:                                               ; preds = %14
  br label %33, !dbg !823

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 13, !dbg !826
  %20 = load i32, ptr %19, align 8, !dbg !826, !tbaa !824
  %21 = icmp slt i32 0, %20, !dbg !826
  br i1 %21, label %22, label %30, !dbg !826

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 13, !dbg !826
  %24 = load i32, ptr %23, align 8, !dbg !826, !tbaa !824
  %25 = sext i32 %24 to i64, !dbg !826
  %26 = icmp ule i64 %25, 2305843009213693952, !dbg !826
  br i1 %26, label %27, label %30, !dbg !826

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 13, !dbg !826
  %29 = load i32, ptr %28, align 8, !dbg !826, !tbaa !824
  br label %31, !dbg !826

30:                                               ; preds = %22, %18
  br label %31, !dbg !826

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 512, %30 ], !dbg !826
  br label %33, !dbg !823

33:                                               ; preds = %31, %17
  %34 = phi i32 [ 131072, %17 ], [ %32, %31 ], !dbg !823
  %35 = sext i32 %34 to i64, !dbg !823
  call void @llvm.dbg.value(metadata i64 %35, metadata !815, metadata !DIExpression()), !dbg !827
  %36 = srem i64 131071, %35, !dbg !828
  %37 = sub nsw i64 131071, %36, !dbg !829
  %38 = add nsw i64 %35, %37, !dbg !830
  call void @llvm.dbg.value(metadata i64 %38, metadata !815, metadata !DIExpression()), !dbg !827
  %39 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 1, !dbg !831
  %40 = load i16, ptr %39, align 4, !dbg !831, !tbaa !609
  %41 = zext i16 %40 to i32, !dbg !831
  %42 = and i32 %41, 61440, !dbg !831
  %43 = icmp eq i32 %42, 32768, !dbg !831
  br i1 %43, label %44, label %56, !dbg !832

44:                                               ; preds = %33
  %45 = sub nsw i64 %38, 1, !dbg !833
  %46 = and i64 %38, %45, !dbg !834
  %47 = icmp ne i64 %46, 0, !dbg !834
  br i1 %47, label %48, label %56, !dbg !835

48:                                               ; preds = %44
  %49 = call i32 @count_leading_zeros_ll(i64 noundef %38), !dbg !836
  call void @llvm.dbg.value(metadata i32 %49, metadata !816, metadata !DIExpression()), !dbg !837
  %50 = sub nsw i32 64, %49, !dbg !838
  %51 = zext i32 %50 to i64, !dbg !839
  %52 = shl i64 1, %51, !dbg !839
  call void @llvm.dbg.value(metadata i64 %52, metadata !819, metadata !DIExpression()), !dbg !840
  %53 = icmp ule i64 %52, 9223372036854775807, !dbg !841
  br i1 %53, label %54, label %55, !dbg !843

54:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i64 %52, metadata !815, metadata !DIExpression()), !dbg !827
  br label %55, !dbg !844

55:                                               ; preds = %54, %48
  %.0 = phi i64 [ %52, %54 ], [ %38, %48 ], !dbg !827
  call void @llvm.dbg.value(metadata i64 %.0, metadata !815, metadata !DIExpression()), !dbg !827
  br label %56, !dbg !845

56:                                               ; preds = %55, %44, %33
  %.1 = phi i64 [ %.0, %55 ], [ %38, %44 ], [ %38, %33 ], !dbg !827
  call void @llvm.dbg.value(metadata i64 %.1, metadata !815, metadata !DIExpression()), !dbg !827
  %57 = icmp ult i64 4611686018427387904, %.1, !dbg !846
  br i1 %57, label %58, label %59, !dbg !846

58:                                               ; preds = %56
  br label %60, !dbg !846

59:                                               ; preds = %56
  br label %60, !dbg !846

60:                                               ; preds = %59, %58
  %61 = phi i64 [ 4611686018427387904, %58 ], [ %.1, %59 ], !dbg !846
  ret i64 %61, !dbg !847
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @xset_binary_mode(i32 noundef %0, i32 noundef %1) #3 !dbg !848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !853, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i32 %1, metadata !854, metadata !DIExpression()), !dbg !855
  %3 = call i32 @set_binary_mode(i32 noundef %0, i32 noundef %1), !dbg !856
  %4 = icmp slt i32 %3, 0, !dbg !858
  br i1 %4, label %5, label %6, !dbg !859

5:                                                ; preds = %2
  call void @xset_binary_mode_error(), !dbg !860
  br label %6, !dbg !860

6:                                                ; preds = %5, %2
  ret void, !dbg !861
}

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !862 i32 @getpagesize() #8

declare !dbg !866 i32 @rpl_open(ptr noundef, i32 noundef, ...) #2

declare !dbg !870 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

declare !dbg !873 void @fdadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare !dbg !877 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @copy_cat() #7 !dbg !880 {
  call void @llvm.dbg.value(metadata i64 9223372035781033984, metadata !882, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i8 0, metadata !886, metadata !DIExpression()), !dbg !889
  br label %1, !dbg !890

1:                                                ; preds = %42, %0
  %.01 = phi i8 [ 0, %0 ], [ 1, %42 ], !dbg !891
  call void @llvm.dbg.value(metadata i8 %.01, metadata !886, metadata !DIExpression()), !dbg !889
  %2 = load i32, ptr @input_desc, align 4, !dbg !892, !tbaa !596
  %3 = call i64 @copy_file_range(i32 noundef %2, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef 9223372035781033984, i32 noundef 0), !dbg !894
  switch i64 %3, label %41 [
    i64 0, label %4
    i64 -1, label %7
  ], !dbg !895

4:                                                ; preds = %1
  %5 = trunc i8 %.01 to i1, !dbg !896
  %6 = zext i1 %5 to i32, !dbg !896
  br label %43, !dbg !898

7:                                                ; preds = %1
  %8 = call ptr @__error(), !dbg !899
  %9 = load i32, ptr %8, align 4, !dbg !899, !tbaa !596
  %10 = icmp eq i32 %9, 78, !dbg !901
  br i1 %10, label %35, label %11, !dbg !902

11:                                               ; preds = %7
  %12 = call ptr @__error(), !dbg !903
  %13 = load i32, ptr %12, align 4, !dbg !903, !tbaa !596
  %14 = call zeroext i1 @is_ENOTSUP(i32 noundef %13), !dbg !904
  br i1 %14, label %35, label %15, !dbg !905

15:                                               ; preds = %11
  %16 = call ptr @__error(), !dbg !906
  %17 = load i32, ptr %16, align 4, !dbg !906, !tbaa !596
  %18 = icmp eq i32 %17, 22, !dbg !907
  br i1 %18, label %35, label %19, !dbg !908

19:                                               ; preds = %15
  %20 = call ptr @__error(), !dbg !909
  %21 = load i32, ptr %20, align 4, !dbg !909, !tbaa !596
  %22 = icmp eq i32 %21, 9, !dbg !910
  br i1 %22, label %35, label %23, !dbg !911

23:                                               ; preds = %19
  %24 = call ptr @__error(), !dbg !912
  %25 = load i32, ptr %24, align 4, !dbg !912, !tbaa !596
  %26 = icmp eq i32 %25, 18, !dbg !913
  br i1 %26, label %35, label %27, !dbg !914

27:                                               ; preds = %23
  %28 = call ptr @__error(), !dbg !915
  %29 = load i32, ptr %28, align 4, !dbg !915, !tbaa !596
  %30 = icmp eq i32 %29, 26, !dbg !916
  br i1 %30, label %35, label %31, !dbg !917

31:                                               ; preds = %27
  %32 = call ptr @__error(), !dbg !918
  %33 = load i32, ptr %32, align 4, !dbg !918, !tbaa !596
  %34 = icmp eq i32 %33, 1, !dbg !919
  br i1 %34, label %35, label %36, !dbg !920

35:                                               ; preds = %31, %27, %23, %19, %15, %11, %7
  br label %43, !dbg !921

36:                                               ; preds = %31
  %37 = call ptr @__error(), !dbg !922
  %38 = load i32, ptr %37, align 4, !dbg !922, !tbaa !596
  %39 = load ptr, ptr @infile, align 8, !dbg !923, !tbaa !398
  %40 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %39), !dbg !923
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %38, ptr noundef @.str.25, ptr noundef %40), !dbg !924
  br label %43, !dbg !925

41:                                               ; preds = %1
  br label %42, !dbg !926

42:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8 1, metadata !886, metadata !DIExpression()), !dbg !889
  br label %1, !dbg !927, !llvm.loop !928

43:                                               ; preds = %36, %35, %4
  %.0 = phi i32 [ 0, %35 ], [ -1, %36 ], [ %6, %4 ], !dbg !931
  ret i32 %.0, !dbg !932
}

; Function Attrs: allocsize(1)
declare !dbg !933 noalias nonnull ptr @xalignalloc(i64 noundef, i64 noundef) #9

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @simple_cat(ptr noundef %0, i64 noundef %1) #7 !dbg !937 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %1, metadata !942, metadata !DIExpression()), !dbg !945
  br label %3, !dbg !946

3:                                                ; preds = %23, %2
  %.0 = phi i1 [ undef, %2 ], [ %.1, %23 ]
  %4 = load i32, ptr @input_desc, align 4, !dbg !947, !tbaa !596
  %5 = call i64 @safe_read(i32 noundef %4, ptr noundef %0, i64 noundef %1), !dbg !948
  call void @llvm.dbg.value(metadata i64 %5, metadata !943, metadata !DIExpression()), !dbg !949
  %6 = icmp eq i64 %5, -1, !dbg !950
  br i1 %6, label %7, label %12, !dbg !952

7:                                                ; preds = %3
  %8 = call ptr @__error(), !dbg !953
  %9 = load i32, ptr %8, align 4, !dbg !953, !tbaa !596
  %10 = load ptr, ptr @infile, align 8, !dbg !955, !tbaa !398
  %11 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %10), !dbg !955
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %9, ptr noundef @.str.25, ptr noundef %11), !dbg !956
  br label %22, !dbg !957

12:                                               ; preds = %3
  %13 = icmp eq i64 %5, 0, !dbg !958
  br i1 %13, label %14, label %15, !dbg !960

14:                                               ; preds = %12
  br label %22, !dbg !961

15:                                               ; preds = %12
  %16 = call i64 @full_write(i32 noundef 1, ptr noundef %0, i64 noundef %5), !dbg !962
  %17 = icmp ne i64 %16, %5, !dbg !964
  br i1 %17, label %18, label %21, !dbg !965

18:                                               ; preds = %15
  %19 = call ptr @__error(), !dbg !966
  %20 = load i32, ptr %19, align 4, !dbg !966, !tbaa !596
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %20, ptr noundef @.str.28), !dbg !966
  unreachable, !dbg !966

21:                                               ; preds = %15
  br label %22, !dbg !967

22:                                               ; preds = %21, %14, %7
  %.01 = phi i32 [ 1, %7 ], [ 1, %14 ], [ 0, %21 ]
  %.1 = phi i1 [ false, %7 ], [ true, %14 ], [ %.0, %21 ]
  switch i32 %.01, label %25 [
    i32 0, label %23
    i32 1, label %24
  ]

23:                                               ; preds = %22
  br label %3, !dbg !946, !llvm.loop !968

24:                                               ; preds = %22
  ret i1 %.1, !dbg !969

25:                                               ; preds = %22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noreturn
declare !dbg !970 void @xalloc_die() #4

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @cat(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9) #7 !dbg !972 {
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !976, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %1, metadata !977, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %2, metadata !978, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %3, metadata !979, metadata !DIExpression()), !dbg !1003
  %13 = zext i1 %4 to i8
  call void @llvm.dbg.value(metadata i8 %13, metadata !980, metadata !DIExpression()), !dbg !1003
  %14 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %14, metadata !981, metadata !DIExpression()), !dbg !1003
  %15 = zext i1 %6 to i8
  call void @llvm.dbg.value(metadata i8 %15, metadata !982, metadata !DIExpression()), !dbg !1003
  %16 = zext i1 %7 to i8
  call void @llvm.dbg.value(metadata i8 %16, metadata !983, metadata !DIExpression()), !dbg !1003
  %17 = zext i1 %8 to i8
  call void @llvm.dbg.value(metadata i8 %17, metadata !984, metadata !DIExpression()), !dbg !1003
  %18 = zext i1 %9 to i8
  call void @llvm.dbg.value(metadata i8 %18, metadata !985, metadata !DIExpression()), !dbg !1003
  %19 = load i32, ptr @newlines2, align 4, !dbg !1004, !tbaa !596
  call void @llvm.dbg.value(metadata i32 %19, metadata !987, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 1, metadata !988, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %0, metadata !989, metadata !DIExpression()), !dbg !1003
  %20 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %20, metadata !990, metadata !DIExpression()), !dbg !1003
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #11, !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %11, metadata !991, metadata !DIExpression()), !dbg !1007
  store ptr %2, ptr %11, align 8, !dbg !1007, !tbaa !398
  br label %21, !dbg !1008

21:                                               ; preds = %286, %10
  %.023 = phi i32 [ %19, %10 ], [ -1, %286 ], !dbg !1003
  %.017 = phi i8 [ 1, %10 ], [ %.522, %286 ], !dbg !1003
  %.011 = phi ptr [ %0, %10 ], [ %.516, %286 ], !dbg !1009
  %.05 = phi ptr [ %20, %10 ], [ %.8, %286 ], !dbg !1003
  %.0 = phi i1 [ undef, %10 ], [ %.5, %286 ]
  call void @llvm.dbg.value(metadata ptr %.05, metadata !990, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %.011, metadata !989, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %.017, metadata !988, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i32 %.023, metadata !987, metadata !DIExpression()), !dbg !1003
  br label %22, !dbg !1008

22:                                               ; preds = %21
  br label %23, !dbg !1010

23:                                               ; preds = %142, %22
  %.124 = phi i32 [ %.023, %22 ], [ %.528, %142 ], !dbg !1011
  %.118 = phi i8 [ %.017, %22 ], [ %.522, %142 ], !dbg !1003
  %.112 = phi ptr [ %.011, %22 ], [ %.516, %142 ], !dbg !1009
  %.16 = phi ptr [ %.05, %22 ], [ %.510, %142 ], !dbg !1003
  %.1 = phi i1 [ %.0, %22 ], [ %.5, %142 ]
  call void @llvm.dbg.value(metadata ptr %.16, metadata !990, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %.112, metadata !989, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %.118, metadata !988, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i32 %.124, metadata !987, metadata !DIExpression()), !dbg !1003
  %24 = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !1012
  %25 = load ptr, ptr %11, align 8, !dbg !1013, !tbaa !398
  %26 = icmp ule ptr %24, %25, !dbg !1014
  br i1 %26, label %27, label %44, !dbg !1015

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %2, metadata !992, metadata !DIExpression()), !dbg !1016
  br label %28, !dbg !1017

28:                                               ; preds = %40, %27
  %.04 = phi ptr [ %2, %27 ], [ %35, %40 ], !dbg !1016
  call void @llvm.dbg.value(metadata ptr %.04, metadata !992, metadata !DIExpression()), !dbg !1016
  %29 = call i64 @full_write(i32 noundef 1, ptr noundef %.04, i64 noundef %3), !dbg !1018
  %30 = icmp ne i64 %29, %3, !dbg !1021
  br i1 %30, label %31, label %34, !dbg !1022

31:                                               ; preds = %28
  %32 = call ptr @__error(), !dbg !1023
  %33 = load i32, ptr %32, align 4, !dbg !1023, !tbaa !596
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %33, ptr noundef @.str.28), !dbg !1023
  unreachable, !dbg !1023

34:                                               ; preds = %28
  %35 = getelementptr inbounds i8, ptr %.04, i64 %3, !dbg !1024
  call void @llvm.dbg.value(metadata ptr %35, metadata !992, metadata !DIExpression()), !dbg !1016
  %36 = load ptr, ptr %11, align 8, !dbg !1025, !tbaa !398
  %37 = ptrtoint ptr %36 to i64, !dbg !1026
  %38 = ptrtoint ptr %35 to i64, !dbg !1026
  %39 = sub i64 %37, %38, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %39, metadata !997, metadata !DIExpression()), !dbg !1016
  br label %40, !dbg !1027

40:                                               ; preds = %34
  %41 = icmp sle i64 %3, %39, !dbg !1028
  br i1 %41, label %28, label %42, !dbg !1027, !llvm.loop !1029

42:                                               ; preds = %40
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %2, ptr align 1 %35, i64 %39, i1 false), !dbg !1031
  %43 = getelementptr inbounds i8, ptr %2, i64 %39, !dbg !1032
  store ptr %43, ptr %11, align 8, !dbg !1033, !tbaa !398
  br label %44, !dbg !1034

44:                                               ; preds = %42, %23
  %45 = icmp ugt ptr %.16, %.112, !dbg !1035
  br i1 %45, label %46, label %103, !dbg !1036

46:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8 0, metadata !998, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #11, !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1001, metadata !DIExpression()), !dbg !1039
  store i32 0, ptr %12, align 4, !dbg !1039, !tbaa !596
  %47 = trunc i8 %.118 to i1, !dbg !1040
  br i1 %47, label %48, label %79, !dbg !1042

48:                                               ; preds = %46
  %49 = load i32, ptr @input_desc, align 4, !dbg !1043, !tbaa !596
  %50 = call i32 (i32, i64, ...) @ioctl(i32 noundef %49, i64 noundef 1074030207, ptr noundef %12), !dbg !1044
  %51 = icmp slt i32 %50, 0, !dbg !1045
  br i1 %51, label %52, label %79, !dbg !1046

52:                                               ; preds = %48
  %53 = call ptr @__error(), !dbg !1047
  %54 = load i32, ptr %53, align 4, !dbg !1047, !tbaa !596
  %55 = icmp eq i32 %54, 102, !dbg !1050
  br i1 %55, label %72, label %56, !dbg !1051

56:                                               ; preds = %52
  %57 = call ptr @__error(), !dbg !1052
  %58 = load i32, ptr %57, align 4, !dbg !1052, !tbaa !596
  %59 = icmp eq i32 %58, 25, !dbg !1053
  br i1 %59, label %72, label %60, !dbg !1054

60:                                               ; preds = %56
  %61 = call ptr @__error(), !dbg !1055
  %62 = load i32, ptr %61, align 4, !dbg !1055, !tbaa !596
  %63 = icmp eq i32 %62, 22, !dbg !1056
  br i1 %63, label %72, label %64, !dbg !1057

64:                                               ; preds = %60
  %65 = call ptr @__error(), !dbg !1058
  %66 = load i32, ptr %65, align 4, !dbg !1058, !tbaa !596
  %67 = icmp eq i32 %66, 19, !dbg !1059
  br i1 %67, label %72, label %68, !dbg !1060

68:                                               ; preds = %64
  %69 = call ptr @__error(), !dbg !1061
  %70 = load i32, ptr %69, align 4, !dbg !1061, !tbaa !596
  %71 = icmp eq i32 %70, 78, !dbg !1062
  br i1 %71, label %72, label %73, !dbg !1063

72:                                               ; preds = %68, %64, %60, %56, %52
  call void @llvm.dbg.value(metadata i8 0, metadata !988, metadata !DIExpression()), !dbg !1003
  br label %78, !dbg !1064

73:                                               ; preds = %68
  %74 = call ptr @__error(), !dbg !1065
  %75 = load i32, ptr %74, align 4, !dbg !1065, !tbaa !596
  %76 = load ptr, ptr @infile, align 8, !dbg !1067, !tbaa !398
  %77 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %76), !dbg !1067
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef @.str.48, ptr noundef %77), !dbg !1068
  store i32 %.124, ptr @newlines2, align 4, !dbg !1069, !tbaa !596
  br label %101, !dbg !1070

78:                                               ; preds = %72
  br label %79, !dbg !1071

79:                                               ; preds = %78, %48, %46
  %.219 = phi i8 [ 0, %78 ], [ %.118, %48 ], [ %.118, %46 ], !dbg !1003
  call void @llvm.dbg.value(metadata i8 %.219, metadata !988, metadata !DIExpression()), !dbg !1003
  %80 = load i32, ptr %12, align 4, !dbg !1072, !tbaa !596
  %81 = icmp ne i32 %80, 0, !dbg !1074
  br i1 %81, label %82, label %83, !dbg !1075

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8 1, metadata !998, metadata !DIExpression()), !dbg !1037
  br label %83, !dbg !1076

83:                                               ; preds = %82, %79
  %.03 = phi i8 [ 1, %82 ], [ 0, %79 ], !dbg !1037
  call void @llvm.dbg.value(metadata i8 %.03, metadata !998, metadata !DIExpression()), !dbg !1037
  %84 = trunc i8 %.03 to i1, !dbg !1077
  br i1 %84, label %86, label %85, !dbg !1079

85:                                               ; preds = %83
  call void @write_pending(ptr noundef %2, ptr noundef %11), !dbg !1080
  br label %86, !dbg !1080

86:                                               ; preds = %85, %83
  %87 = load i32, ptr @input_desc, align 4, !dbg !1081, !tbaa !596
  %88 = call i64 @safe_read(i32 noundef %87, ptr noundef %0, i64 noundef %1), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %88, metadata !1002, metadata !DIExpression()), !dbg !1037
  %89 = icmp eq i64 %88, -1, !dbg !1083
  br i1 %89, label %90, label %95, !dbg !1085

90:                                               ; preds = %86
  %91 = call ptr @__error(), !dbg !1086
  %92 = load i32, ptr %91, align 4, !dbg !1086, !tbaa !596
  %93 = load ptr, ptr @infile, align 8, !dbg !1088, !tbaa !398
  %94 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %93), !dbg !1088
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %92, ptr noundef @.str.25, ptr noundef %94), !dbg !1089
  call void @write_pending(ptr noundef %2, ptr noundef %11), !dbg !1090
  store i32 %.124, ptr @newlines2, align 4, !dbg !1091, !tbaa !596
  br label %100, !dbg !1092

95:                                               ; preds = %86
  %96 = icmp eq i64 %88, 0, !dbg !1093
  br i1 %96, label %97, label %98, !dbg !1095

97:                                               ; preds = %95
  call void @write_pending(ptr noundef %2, ptr noundef %11), !dbg !1096
  store i32 %.124, ptr @newlines2, align 4, !dbg !1098, !tbaa !596
  br label %100, !dbg !1099

98:                                               ; preds = %95
  call void @llvm.dbg.value(metadata ptr %0, metadata !990, metadata !DIExpression()), !dbg !1003
  %99 = getelementptr inbounds i8, ptr %0, i64 %88, !dbg !1100
  call void @llvm.dbg.value(metadata ptr %99, metadata !989, metadata !DIExpression()), !dbg !1003
  store i8 10, ptr %99, align 1, !dbg !1101, !tbaa !1102
  br label %100, !dbg !1103

100:                                              ; preds = %98, %97, %90
  %.213 = phi ptr [ %.112, %90 ], [ %.112, %97 ], [ %99, %98 ], !dbg !1003
  %.27 = phi ptr [ %.16, %90 ], [ %.16, %97 ], [ %0, %98 ], !dbg !1003
  %.01 = phi i32 [ 1, %90 ], [ 1, %97 ], [ 0, %98 ]
  %.2 = phi i1 [ false, %90 ], [ true, %97 ], [ %.1, %98 ]
  call void @llvm.dbg.value(metadata ptr %.27, metadata !990, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %.213, metadata !989, metadata !DIExpression()), !dbg !1003
  br label %101

101:                                              ; preds = %100, %73
  %.320 = phi i8 [ %.219, %100 ], [ %.118, %73 ], !dbg !1003
  %.314 = phi ptr [ %.213, %100 ], [ %.112, %73 ], !dbg !1009
  %.38 = phi ptr [ %.27, %100 ], [ %.16, %73 ], !dbg !1104
  %.12 = phi i32 [ %.01, %100 ], [ 1, %73 ]
  %.3 = phi i1 [ %.2, %100 ], [ false, %73 ], !dbg !1037
  call void @llvm.dbg.value(metadata ptr %.38, metadata !990, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %.314, metadata !989, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %.320, metadata !988, metadata !DIExpression()), !dbg !1003
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #11, !dbg !1103
  switch i32 %.12, label %287 [
    i32 0, label %102
  ]

102:                                              ; preds = %101
  br label %139, !dbg !1105

103:                                              ; preds = %44
  %104 = add nsw i32 %.124, 1, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %104, metadata !987, metadata !DIExpression()), !dbg !1003
  %105 = icmp sgt i32 %104, 0, !dbg !1109
  br i1 %105, label %106, label %123, !dbg !1110

106:                                              ; preds = %103
  %107 = icmp sge i32 %104, 2, !dbg !1111
  br i1 %107, label %108, label %114, !dbg !1114

108:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i32 2, metadata !987, metadata !DIExpression()), !dbg !1003
  %109 = trunc i8 %18 to i1, !dbg !1115
  br i1 %109, label %110, label %113, !dbg !1118

110:                                              ; preds = %108
  %111 = getelementptr inbounds i8, ptr %.16, i32 1, !dbg !1119
  call void @llvm.dbg.value(metadata ptr %111, metadata !990, metadata !DIExpression()), !dbg !1003
  %112 = load i8, ptr %.16, align 1, !dbg !1121, !tbaa !1102
  call void @llvm.dbg.value(metadata i8 %112, metadata !986, metadata !DIExpression()), !dbg !1003
  br label %142, !dbg !1122

113:                                              ; preds = %108
  br label %114, !dbg !1123

114:                                              ; preds = %113, %106
  %.225 = phi i32 [ 2, %113 ], [ %104, %106 ], !dbg !1124
  call void @llvm.dbg.value(metadata i32 %.225, metadata !987, metadata !DIExpression()), !dbg !1003
  %115 = trunc i8 %15 to i1, !dbg !1125
  br i1 %115, label %116, label %122, !dbg !1127

116:                                              ; preds = %114
  %117 = trunc i8 %16 to i1, !dbg !1128
  br i1 %117, label %122, label %118, !dbg !1129

118:                                              ; preds = %116
  call void @next_line_num(), !dbg !1130
  %119 = load ptr, ptr %11, align 8, !dbg !1132, !tbaa !398
  %120 = load ptr, ptr @line_num_print, align 8, !dbg !1133, !tbaa !398
  %121 = call ptr @stpcpy(ptr noundef %119, ptr noundef %120), !dbg !1134
  store ptr %121, ptr %11, align 8, !dbg !1135, !tbaa !398
  br label %122, !dbg !1136

122:                                              ; preds = %118, %116, %114
  br label %123, !dbg !1137

123:                                              ; preds = %122, %103
  %.326 = phi i32 [ %.225, %122 ], [ %104, %103 ], !dbg !1124
  call void @llvm.dbg.value(metadata i32 %.326, metadata !987, metadata !DIExpression()), !dbg !1003
  %124 = trunc i8 %17 to i1, !dbg !1138
  br i1 %124, label %125, label %136, !dbg !1140

125:                                              ; preds = %123
  %126 = load i8, ptr @pending_cr, align 1, !dbg !1141, !tbaa !764, !range !766, !noundef !476
  %127 = trunc i8 %126 to i1, !dbg !1141
  br i1 %127, label %128, label %133, !dbg !1144

128:                                              ; preds = %125
  %129 = load ptr, ptr %11, align 8, !dbg !1145, !tbaa !398
  %130 = getelementptr inbounds i8, ptr %129, i32 1, !dbg !1145
  store ptr %130, ptr %11, align 8, !dbg !1145, !tbaa !398
  store i8 94, ptr %129, align 1, !dbg !1147, !tbaa !1102
  %131 = load ptr, ptr %11, align 8, !dbg !1148, !tbaa !398
  %132 = getelementptr inbounds i8, ptr %131, i32 1, !dbg !1148
  store ptr %132, ptr %11, align 8, !dbg !1148, !tbaa !398
  store i8 77, ptr %131, align 1, !dbg !1149, !tbaa !1102
  store i8 0, ptr @pending_cr, align 1, !dbg !1150, !tbaa !764
  br label %133, !dbg !1151

133:                                              ; preds = %128, %125
  %134 = load ptr, ptr %11, align 8, !dbg !1152, !tbaa !398
  %135 = getelementptr inbounds i8, ptr %134, i32 1, !dbg !1152
  store ptr %135, ptr %11, align 8, !dbg !1152, !tbaa !398
  store i8 36, ptr %134, align 1, !dbg !1153, !tbaa !1102
  br label %136, !dbg !1154

136:                                              ; preds = %133, %123
  %137 = load ptr, ptr %11, align 8, !dbg !1155, !tbaa !398
  %138 = getelementptr inbounds i8, ptr %137, i32 1, !dbg !1155
  store ptr %138, ptr %11, align 8, !dbg !1155, !tbaa !398
  store i8 10, ptr %137, align 1, !dbg !1156, !tbaa !1102
  br label %139

139:                                              ; preds = %136, %102
  %.427 = phi i32 [ %.124, %102 ], [ %.326, %136 ], !dbg !1003
  %.421 = phi i8 [ %.320, %102 ], [ %.118, %136 ], !dbg !1003
  %.415 = phi ptr [ %.314, %102 ], [ %.112, %136 ], !dbg !1009
  %.49 = phi ptr [ %.38, %102 ], [ %.16, %136 ], !dbg !1104
  %.4 = phi i1 [ %.3, %102 ], [ %.1, %136 ]
  call void @llvm.dbg.value(metadata ptr %.49, metadata !990, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %.415, metadata !989, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %.421, metadata !988, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i32 %.427, metadata !987, metadata !DIExpression()), !dbg !1003
  %140 = getelementptr inbounds i8, ptr %.49, i32 1, !dbg !1157
  call void @llvm.dbg.value(metadata ptr %140, metadata !990, metadata !DIExpression()), !dbg !1003
  %141 = load i8, ptr %.49, align 1, !dbg !1158, !tbaa !1102
  call void @llvm.dbg.value(metadata i8 %141, metadata !986, metadata !DIExpression()), !dbg !1003
  br label %142, !dbg !1159

142:                                              ; preds = %139, %110
  %.030 = phi i8 [ %141, %139 ], [ %112, %110 ], !dbg !1160
  %.528 = phi i32 [ %.427, %139 ], [ 2, %110 ], !dbg !1003
  %.522 = phi i8 [ %.421, %139 ], [ %.118, %110 ], !dbg !1003
  %.516 = phi ptr [ %.415, %139 ], [ %.112, %110 ], !dbg !1009
  %.510 = phi ptr [ %140, %139 ], [ %111, %110 ], !dbg !1160
  %.5 = phi i1 [ %.4, %139 ], [ %.1, %110 ]
  call void @llvm.dbg.value(metadata ptr %.510, metadata !990, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr %.516, metadata !989, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %.522, metadata !988, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i32 %.528, metadata !987, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %.030, metadata !986, metadata !DIExpression()), !dbg !1003
  %143 = zext i8 %.030 to i32, !dbg !1161
  %144 = icmp eq i32 %143, 10, !dbg !1162
  br i1 %144, label %23, label %145, !dbg !1159, !llvm.loop !1163

145:                                              ; preds = %142
  %146 = load i8, ptr @pending_cr, align 1, !dbg !1165, !tbaa !764, !range !766, !noundef !476
  %147 = trunc i8 %146 to i1, !dbg !1165
  br i1 %147, label %148, label %151, !dbg !1167

148:                                              ; preds = %145
  %149 = load ptr, ptr %11, align 8, !dbg !1168, !tbaa !398
  %150 = getelementptr inbounds i8, ptr %149, i32 1, !dbg !1168
  store ptr %150, ptr %11, align 8, !dbg !1168, !tbaa !398
  store i8 13, ptr %149, align 1, !dbg !1170, !tbaa !1102
  store i8 0, ptr @pending_cr, align 1, !dbg !1171, !tbaa !764
  br label %151, !dbg !1172

151:                                              ; preds = %148, %145
  %152 = icmp sge i32 %.528, 0, !dbg !1173
  br i1 %152, label %153, label %159, !dbg !1175

153:                                              ; preds = %151
  %154 = trunc i8 %15 to i1, !dbg !1176
  br i1 %154, label %155, label %159, !dbg !1177

155:                                              ; preds = %153
  call void @next_line_num(), !dbg !1178
  %156 = load ptr, ptr %11, align 8, !dbg !1180, !tbaa !398
  %157 = load ptr, ptr @line_num_print, align 8, !dbg !1181, !tbaa !398
  %158 = call ptr @stpcpy(ptr noundef %156, ptr noundef %157), !dbg !1182
  store ptr %158, ptr %11, align 8, !dbg !1183, !tbaa !398
  br label %159, !dbg !1184

159:                                              ; preds = %155, %153, %151
  %160 = trunc i8 %13 to i1, !dbg !1185
  br i1 %160, label %161, label %240, !dbg !1187

161:                                              ; preds = %159
  br label %162, !dbg !1188

162:                                              ; preds = %236, %161
  %.131 = phi i8 [ %.030, %161 ], [ %238, %236 ], !dbg !1190
  %.6 = phi ptr [ %.510, %161 ], [ %237, %236 ], !dbg !1190
  call void @llvm.dbg.value(metadata ptr %.6, metadata !990, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %.131, metadata !986, metadata !DIExpression()), !dbg !1003
  br label %163, !dbg !1188

163:                                              ; preds = %162
  %164 = zext i8 %.131 to i32, !dbg !1191
  %165 = icmp sge i32 %164, 32, !dbg !1194
  br i1 %165, label %166, label %214, !dbg !1195

166:                                              ; preds = %163
  %167 = zext i8 %.131 to i32, !dbg !1196
  %168 = icmp slt i32 %167, 127, !dbg !1199
  br i1 %168, label %169, label %172, !dbg !1200

169:                                              ; preds = %166
  %170 = load ptr, ptr %11, align 8, !dbg !1201, !tbaa !398
  %171 = getelementptr inbounds i8, ptr %170, i32 1, !dbg !1201
  store ptr %171, ptr %11, align 8, !dbg !1201, !tbaa !398
  store i8 %.131, ptr %170, align 1, !dbg !1202, !tbaa !1102
  br label %213, !dbg !1203

172:                                              ; preds = %166
  %173 = zext i8 %.131 to i32, !dbg !1204
  %174 = icmp eq i32 %173, 127, !dbg !1206
  br i1 %174, label %175, label %180, !dbg !1207

175:                                              ; preds = %172
  %176 = load ptr, ptr %11, align 8, !dbg !1208, !tbaa !398
  %177 = getelementptr inbounds i8, ptr %176, i32 1, !dbg !1208
  store ptr %177, ptr %11, align 8, !dbg !1208, !tbaa !398
  store i8 94, ptr %176, align 1, !dbg !1210, !tbaa !1102
  %178 = load ptr, ptr %11, align 8, !dbg !1211, !tbaa !398
  %179 = getelementptr inbounds i8, ptr %178, i32 1, !dbg !1211
  store ptr %179, ptr %11, align 8, !dbg !1211, !tbaa !398
  store i8 63, ptr %178, align 1, !dbg !1212, !tbaa !1102
  br label %212, !dbg !1213

180:                                              ; preds = %172
  %181 = load ptr, ptr %11, align 8, !dbg !1214, !tbaa !398
  %182 = getelementptr inbounds i8, ptr %181, i32 1, !dbg !1214
  store ptr %182, ptr %11, align 8, !dbg !1214, !tbaa !398
  store i8 77, ptr %181, align 1, !dbg !1216, !tbaa !1102
  %183 = load ptr, ptr %11, align 8, !dbg !1217, !tbaa !398
  %184 = getelementptr inbounds i8, ptr %183, i32 1, !dbg !1217
  store ptr %184, ptr %11, align 8, !dbg !1217, !tbaa !398
  store i8 45, ptr %183, align 1, !dbg !1218, !tbaa !1102
  %185 = zext i8 %.131 to i32, !dbg !1219
  %186 = icmp sge i32 %185, 160, !dbg !1221
  br i1 %186, label %187, label %202, !dbg !1222

187:                                              ; preds = %180
  %188 = zext i8 %.131 to i32, !dbg !1223
  %189 = icmp slt i32 %188, 255, !dbg !1226
  br i1 %189, label %190, label %196, !dbg !1227

190:                                              ; preds = %187
  %191 = zext i8 %.131 to i32, !dbg !1228
  %192 = sub nsw i32 %191, 128, !dbg !1229
  %193 = trunc i32 %192 to i8, !dbg !1228
  %194 = load ptr, ptr %11, align 8, !dbg !1230, !tbaa !398
  %195 = getelementptr inbounds i8, ptr %194, i32 1, !dbg !1230
  store ptr %195, ptr %11, align 8, !dbg !1230, !tbaa !398
  store i8 %193, ptr %194, align 1, !dbg !1231, !tbaa !1102
  br label %201, !dbg !1232

196:                                              ; preds = %187
  %197 = load ptr, ptr %11, align 8, !dbg !1233, !tbaa !398
  %198 = getelementptr inbounds i8, ptr %197, i32 1, !dbg !1233
  store ptr %198, ptr %11, align 8, !dbg !1233, !tbaa !398
  store i8 94, ptr %197, align 1, !dbg !1235, !tbaa !1102
  %199 = load ptr, ptr %11, align 8, !dbg !1236, !tbaa !398
  %200 = getelementptr inbounds i8, ptr %199, i32 1, !dbg !1236
  store ptr %200, ptr %11, align 8, !dbg !1236, !tbaa !398
  store i8 63, ptr %199, align 1, !dbg !1237, !tbaa !1102
  br label %201

201:                                              ; preds = %196, %190
  br label %211, !dbg !1238

202:                                              ; preds = %180
  %203 = load ptr, ptr %11, align 8, !dbg !1239, !tbaa !398
  %204 = getelementptr inbounds i8, ptr %203, i32 1, !dbg !1239
  store ptr %204, ptr %11, align 8, !dbg !1239, !tbaa !398
  store i8 94, ptr %203, align 1, !dbg !1241, !tbaa !1102
  %205 = zext i8 %.131 to i32, !dbg !1242
  %206 = sub nsw i32 %205, 128, !dbg !1243
  %207 = add nsw i32 %206, 64, !dbg !1244
  %208 = trunc i32 %207 to i8, !dbg !1242
  %209 = load ptr, ptr %11, align 8, !dbg !1245, !tbaa !398
  %210 = getelementptr inbounds i8, ptr %209, i32 1, !dbg !1245
  store ptr %210, ptr %11, align 8, !dbg !1245, !tbaa !398
  store i8 %208, ptr %209, align 1, !dbg !1246, !tbaa !1102
  br label %211

211:                                              ; preds = %202, %201
  br label %212

212:                                              ; preds = %211, %175
  br label %213

213:                                              ; preds = %212, %169
  br label %236, !dbg !1247

214:                                              ; preds = %163
  %215 = zext i8 %.131 to i32, !dbg !1248
  %216 = icmp eq i32 %215, 9, !dbg !1250
  br i1 %216, label %217, label %222, !dbg !1251

217:                                              ; preds = %214
  %218 = trunc i8 %14 to i1, !dbg !1252
  br i1 %218, label %222, label %219, !dbg !1253

219:                                              ; preds = %217
  %220 = load ptr, ptr %11, align 8, !dbg !1254, !tbaa !398
  %221 = getelementptr inbounds i8, ptr %220, i32 1, !dbg !1254
  store ptr %221, ptr %11, align 8, !dbg !1254, !tbaa !398
  store i8 9, ptr %220, align 1, !dbg !1255, !tbaa !1102
  br label %235, !dbg !1256

222:                                              ; preds = %217, %214
  %223 = zext i8 %.131 to i32, !dbg !1257
  %224 = icmp eq i32 %223, 10, !dbg !1259
  br i1 %224, label %225, label %226, !dbg !1260

225:                                              ; preds = %222
  call void @llvm.dbg.value(metadata i32 -1, metadata !987, metadata !DIExpression()), !dbg !1003
  br label %239, !dbg !1261

226:                                              ; preds = %222
  %227 = load ptr, ptr %11, align 8, !dbg !1263, !tbaa !398
  %228 = getelementptr inbounds i8, ptr %227, i32 1, !dbg !1263
  store ptr %228, ptr %11, align 8, !dbg !1263, !tbaa !398
  store i8 94, ptr %227, align 1, !dbg !1265, !tbaa !1102
  %229 = zext i8 %.131 to i32, !dbg !1266
  %230 = add nsw i32 %229, 64, !dbg !1267
  %231 = trunc i32 %230 to i8, !dbg !1266
  %232 = load ptr, ptr %11, align 8, !dbg !1268, !tbaa !398
  %233 = getelementptr inbounds i8, ptr %232, i32 1, !dbg !1268
  store ptr %233, ptr %11, align 8, !dbg !1268, !tbaa !398
  store i8 %231, ptr %232, align 1, !dbg !1269, !tbaa !1102
  br label %234

234:                                              ; preds = %226
  br label %235

235:                                              ; preds = %234, %219
  br label %236

236:                                              ; preds = %235, %213
  %237 = getelementptr inbounds i8, ptr %.6, i32 1, !dbg !1270
  call void @llvm.dbg.value(metadata ptr %237, metadata !990, metadata !DIExpression()), !dbg !1003
  %238 = load i8, ptr %.6, align 1, !dbg !1271, !tbaa !1102
  call void @llvm.dbg.value(metadata i8 %238, metadata !986, metadata !DIExpression()), !dbg !1003
  br label %162, !dbg !1188, !llvm.loop !1272

239:                                              ; preds = %225
  br label %286, !dbg !1274

240:                                              ; preds = %159
  br label %241, !dbg !1275

241:                                              ; preds = %282, %240
  %.232 = phi i8 [ %.030, %240 ], [ %284, %282 ], !dbg !1190
  %.7 = phi ptr [ %.510, %240 ], [ %283, %282 ], !dbg !1190
  call void @llvm.dbg.value(metadata ptr %.7, metadata !990, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %.232, metadata !986, metadata !DIExpression()), !dbg !1003
  br label %242, !dbg !1275

242:                                              ; preds = %241
  %243 = zext i8 %.232 to i32, !dbg !1277
  %244 = icmp eq i32 %243, 9, !dbg !1280
  br i1 %244, label %245, label %255, !dbg !1281

245:                                              ; preds = %242
  %246 = trunc i8 %14 to i1, !dbg !1282
  br i1 %246, label %247, label %255, !dbg !1283

247:                                              ; preds = %245
  %248 = load ptr, ptr %11, align 8, !dbg !1284, !tbaa !398
  %249 = getelementptr inbounds i8, ptr %248, i32 1, !dbg !1284
  store ptr %249, ptr %11, align 8, !dbg !1284, !tbaa !398
  store i8 94, ptr %248, align 1, !dbg !1286, !tbaa !1102
  %250 = zext i8 %.232 to i32, !dbg !1287
  %251 = add nsw i32 %250, 64, !dbg !1288
  %252 = trunc i32 %251 to i8, !dbg !1287
  %253 = load ptr, ptr %11, align 8, !dbg !1289, !tbaa !398
  %254 = getelementptr inbounds i8, ptr %253, i32 1, !dbg !1289
  store ptr %254, ptr %11, align 8, !dbg !1289, !tbaa !398
  store i8 %252, ptr %253, align 1, !dbg !1290, !tbaa !1102
  br label %282, !dbg !1291

255:                                              ; preds = %245, %242
  %256 = zext i8 %.232 to i32, !dbg !1292
  %257 = icmp ne i32 %256, 10, !dbg !1294
  br i1 %257, label %258, label %280, !dbg !1295

258:                                              ; preds = %255
  %259 = zext i8 %.232 to i32, !dbg !1296
  %260 = icmp eq i32 %259, 13, !dbg !1299
  br i1 %260, label %261, label %276, !dbg !1300

261:                                              ; preds = %258
  %262 = load i8, ptr %.7, align 1, !dbg !1301, !tbaa !1102
  %263 = sext i8 %262 to i32, !dbg !1301
  %264 = icmp eq i32 %263, 10, !dbg !1302
  br i1 %264, label %265, label %276, !dbg !1303

265:                                              ; preds = %261
  %266 = trunc i8 %17 to i1, !dbg !1304
  br i1 %266, label %267, label %276, !dbg !1305

267:                                              ; preds = %265
  %268 = icmp eq ptr %.7, %.516, !dbg !1306
  br i1 %268, label %269, label %270, !dbg !1309

269:                                              ; preds = %267
  store i8 1, ptr @pending_cr, align 1, !dbg !1310, !tbaa !764
  br label %275, !dbg !1311

270:                                              ; preds = %267
  %271 = load ptr, ptr %11, align 8, !dbg !1312, !tbaa !398
  %272 = getelementptr inbounds i8, ptr %271, i32 1, !dbg !1312
  store ptr %272, ptr %11, align 8, !dbg !1312, !tbaa !398
  store i8 94, ptr %271, align 1, !dbg !1314, !tbaa !1102
  %273 = load ptr, ptr %11, align 8, !dbg !1315, !tbaa !398
  %274 = getelementptr inbounds i8, ptr %273, i32 1, !dbg !1315
  store ptr %274, ptr %11, align 8, !dbg !1315, !tbaa !398
  store i8 77, ptr %273, align 1, !dbg !1316, !tbaa !1102
  br label %275

275:                                              ; preds = %270, %269
  br label %279, !dbg !1317

276:                                              ; preds = %265, %261, %258
  %277 = load ptr, ptr %11, align 8, !dbg !1318, !tbaa !398
  %278 = getelementptr inbounds i8, ptr %277, i32 1, !dbg !1318
  store ptr %278, ptr %11, align 8, !dbg !1318, !tbaa !398
  store i8 %.232, ptr %277, align 1, !dbg !1319, !tbaa !1102
  br label %279

279:                                              ; preds = %276, %275
  br label %281, !dbg !1320

280:                                              ; preds = %255
  call void @llvm.dbg.value(metadata i32 -1, metadata !987, metadata !DIExpression()), !dbg !1003
  br label %285, !dbg !1321

281:                                              ; preds = %279
  br label %282

282:                                              ; preds = %281, %247
  %283 = getelementptr inbounds i8, ptr %.7, i32 1, !dbg !1323
  call void @llvm.dbg.value(metadata ptr %283, metadata !990, metadata !DIExpression()), !dbg !1003
  %284 = load i8, ptr %.7, align 1, !dbg !1324, !tbaa !1102
  call void @llvm.dbg.value(metadata i8 %284, metadata !986, metadata !DIExpression()), !dbg !1003
  br label %241, !dbg !1275, !llvm.loop !1325

285:                                              ; preds = %280
  br label %286

286:                                              ; preds = %285, %239
  %.8 = phi ptr [ %.6, %239 ], [ %.7, %285 ], !dbg !1157
  call void @llvm.dbg.value(metadata ptr %.8, metadata !990, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i32 -1, metadata !987, metadata !DIExpression()), !dbg !1003
  br label %21, !dbg !1008, !llvm.loop !1327

287:                                              ; preds = %101
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #11, !dbg !1329
  ret i1 %.3, !dbg !1329
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @alignfree(ptr noundef %0) #3 !dbg !1330 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1334, metadata !DIExpression()), !dbg !1335
  call void @rpl_free(ptr noundef %0), !dbg !1336
  ret void, !dbg !1337
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1338 i32 @"\01_close"(i32 noundef) #2

declare !dbg !1341 i64 @full_write(i32 noundef, ptr noundef, i64 noundef) #2

declare !dbg !1347 void @rpl_free(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

declare !dbg !1349 i32 @ioctl(i32 noundef, i64 noundef, ...) #2

declare !dbg !1353 ptr @quotearg_style(i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @write_pending(ptr noundef %0, ptr noundef %1) #3 !dbg !1356 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1360, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata ptr %1, metadata !1361, metadata !DIExpression()), !dbg !1363
  %3 = load ptr, ptr %1, align 8, !dbg !1364, !tbaa !398
  %4 = ptrtoint ptr %3 to i64, !dbg !1365
  %5 = ptrtoint ptr %0 to i64, !dbg !1365
  %6 = sub i64 %4, %5, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %6, metadata !1362, metadata !DIExpression()), !dbg !1363
  %7 = icmp slt i64 0, %6, !dbg !1366
  br i1 %7, label %8, label %15, !dbg !1368

8:                                                ; preds = %2
  %9 = call i64 @full_write(i32 noundef 1, ptr noundef %0, i64 noundef %6), !dbg !1369
  %10 = icmp ne i64 %9, %6, !dbg !1372
  br i1 %10, label %11, label %14, !dbg !1373

11:                                               ; preds = %8
  %12 = call ptr @__error(), !dbg !1374
  %13 = load i32, ptr %12, align 4, !dbg !1374, !tbaa !596
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %13, ptr noundef @.str.28), !dbg !1374
  unreachable, !dbg !1374

14:                                               ; preds = %8
  store ptr %0, ptr %1, align 8, !dbg !1375, !tbaa !398
  br label %15, !dbg !1376

15:                                               ; preds = %14, %2
  ret void, !dbg !1377
}

declare !dbg !1378 i64 @safe_read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @next_line_num() #7 !dbg !1382 {
  %1 = load ptr, ptr @line_num_end, align 8, !dbg !1385, !tbaa !398
  call void @llvm.dbg.value(metadata ptr %1, metadata !1384, metadata !DIExpression()), !dbg !1386
  br label %2, !dbg !1387

2:                                                ; preds = %10, %0
  %.0 = phi ptr [ %1, %0 ], [ %9, %10 ], !dbg !1386
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1384, metadata !DIExpression()), !dbg !1386
  %3 = load i8, ptr %.0, align 1, !dbg !1388, !tbaa !1102
  %4 = add i8 %3, 1, !dbg !1388
  store i8 %4, ptr %.0, align 1, !dbg !1388, !tbaa !1102
  %5 = sext i8 %3 to i32, !dbg !1391
  %6 = icmp slt i32 %5, 57, !dbg !1392
  br i1 %6, label %7, label %8, !dbg !1393

7:                                                ; preds = %2
  br label %28, !dbg !1394

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %.0, i32 -1, !dbg !1395
  call void @llvm.dbg.value(metadata ptr %9, metadata !1384, metadata !DIExpression()), !dbg !1386
  store i8 48, ptr %.0, align 1, !dbg !1396, !tbaa !1102
  br label %10, !dbg !1397

10:                                               ; preds = %8
  %11 = load ptr, ptr @line_num_start, align 8, !dbg !1398, !tbaa !398
  %12 = icmp uge ptr %9, %11, !dbg !1399
  br i1 %12, label %2, label %13, !dbg !1397, !llvm.loop !1400

13:                                               ; preds = %10
  %14 = load ptr, ptr @line_num_start, align 8, !dbg !1402, !tbaa !398
  %15 = icmp ugt ptr %14, @line_buf, !dbg !1404
  br i1 %15, label %16, label %19, !dbg !1405

16:                                               ; preds = %13
  %17 = load ptr, ptr @line_num_start, align 8, !dbg !1406, !tbaa !398
  %18 = getelementptr inbounds i8, ptr %17, i32 -1, !dbg !1406
  store ptr %18, ptr @line_num_start, align 8, !dbg !1406, !tbaa !398
  store i8 49, ptr %18, align 1, !dbg !1407, !tbaa !1102
  br label %20, !dbg !1408

19:                                               ; preds = %13
  store i8 62, ptr @line_buf, align 16, !dbg !1409, !tbaa !1102
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr @line_num_start, align 8, !dbg !1410, !tbaa !398
  %22 = load ptr, ptr @line_num_print, align 8, !dbg !1412, !tbaa !398
  %23 = icmp ult ptr %21, %22, !dbg !1413
  br i1 %23, label %24, label %27, !dbg !1414

24:                                               ; preds = %20
  %25 = load ptr, ptr @line_num_print, align 8, !dbg !1415, !tbaa !398
  %26 = getelementptr inbounds i8, ptr %25, i32 -1, !dbg !1415
  store ptr %26, ptr @line_num_print, align 8, !dbg !1415, !tbaa !398
  br label %27, !dbg !1416

27:                                               ; preds = %24, %20
  br label %28, !dbg !1417

28:                                               ; preds = %27, %7
  %.01 = phi i32 [ 1, %7 ], [ 0, %27 ]
  switch i32 %.01, label %30 [
    i32 0, label %29
    i32 1, label %29
  ]

29:                                               ; preds = %28, %28
  ret void, !dbg !1417

30:                                               ; preds = %28
  unreachable
}

declare !dbg !1418 ptr @stpcpy(ptr noundef, ptr noundef) #2

declare !dbg !1421 i64 @copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @is_ENOTSUP(i32 noundef %0) #3 !dbg !1426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1430, metadata !DIExpression()), !dbg !1431
  %2 = icmp eq i32 %0, 102, !dbg !1432
  br i1 %2, label %5, label %3, !dbg !1433

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 45, !dbg !1434
  br label %5, !dbg !1433

5:                                                ; preds = %3, %1
  %6 = phi i1 [ true, %1 ], [ %4, %3 ]
  ret i1 %6, !dbg !1435
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @set_binary_mode(i32 noundef %0, i32 noundef %1) #3 !dbg !1436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1441, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i32 %1, metadata !1442, metadata !DIExpression()), !dbg !1443
  %3 = call i32 @__gl_setmode(i32 noundef %0, i32 noundef %1), !dbg !1444
  ret i32 %3, !dbg !1445
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @xset_binary_mode_error() #3 !dbg !1446 {
  ret void, !dbg !1447
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__gl_setmode(i32 noundef %0, i32 noundef %1) #3 !dbg !1448 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1450, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 %1, metadata !1451, metadata !DIExpression()), !dbg !1452
  ret i32 0, !dbg !1453
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @count_leading_zeros_ll(i64 noundef %0) #3 !dbg !1454 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1459, metadata !DIExpression()), !dbg !1460
  %2 = icmp ne i64 %0, 0, !dbg !1461
  br i1 %2, label %3, label %7, !dbg !1461

3:                                                ; preds = %1
  %4 = call i64 @llvm.ctlz.i64(i64 %0, i1 true), !dbg !1461
  %5 = trunc i64 %4 to i32, !dbg !1461
  %6 = sext i32 %5 to i64, !dbg !1461
  br label %8, !dbg !1461

7:                                                ; preds = %1
  br label %8, !dbg !1461

8:                                                ; preds = %7, %3
  %9 = phi i64 [ %6, %3 ], [ 64, %7 ], !dbg !1461
  %10 = trunc i64 %9 to i32, !dbg !1461
  ret i32 %10, !dbg !1461
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

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
attributes #9 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { allocsize(1) }

!llvm.dbg.cu = !{!55}
!llvm.ident = !{!379}
!llvm.module.flags = !{!380, !381, !382, !383, !384, !385}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/cat.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 41)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2680, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 335)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1696, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 212)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 48)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 57)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1096, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 137)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 4)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "long_options", scope: !49, file: !2, line: 555, type: !369, isLocal: true, isDefinition: true)
!49 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 539, type: !50, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !275)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !52, !53}
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!55 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !90, globals: !105, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!56 = !{!57, !62, !77, !86}
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 332, baseType: !52, size: 32, elements: !59)
!58 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
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
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 75, baseType: !64, size: 32, elements: !88)
!87 = !DIFile(filename: "../src/ioblksize.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!88 = !{!89}
!89 = !DIEnumerator(name: "IO_BUFSIZE", value: 131072)
!90 = !{!91, !54, !93, !94, !99, !104}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !95, line: 125, baseType: !96)
!95 = !DIFile(filename: "../lib/idx.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !97, line: 35, baseType: !98)
!97 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!98 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 31, baseType: !101)
!100 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !102, line: 94, baseType: !103)
!102 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !102, line: 47, baseType: !64)
!105 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !106, !111, !116, !121, !126, !131, !133, !138, !143, !47, !148, !153, !158, !160, !165, !170, !172, !177, !182, !187, !189, !194, !199, !201, !203, !208, !210, !212, !214, !219, !221, !226, !228, !230, !232, !234, !239, !241, !246, !248, !253, !258, !260, !262, !264, !266, !268, !270, !272}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 557, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 16)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 558, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 7)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 559, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 14)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 17)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 10)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 562, type: !128, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 563, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 9)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 5)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 565, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 8)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 571, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 1)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 584, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 11)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 636, type: !118, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 636, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 18)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 636, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 20)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 646, type: !108, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 666, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 2)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 689, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 3)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 715, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 30)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 797, type: !174, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 798, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 12)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 802, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 23)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "infile", scope: !55, file: !2, line: 54, type: !91, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "input_desc", scope: !55, file: !2, line: 57, type: !52, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !58, line: 579, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 56)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !58, line: 660, type: !174, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !58, line: 660, type: !108, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !58, line: 661, type: !128, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !58, line: 661, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 22)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !58, line: 662, type: !128, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !58, line: 662, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 15)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !58, line: 663, type: !128, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !58, line: 664, type: !128, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !58, line: 665, type: !128, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !58, line: 678, type: !196, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !58, line: 678, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 40)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !58, line: 683, type: !44, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !58, line: 689, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 71)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !58, line: 695, type: !140, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !58, line: 696, type: !250, isLocal: true, isDefinition: true)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 27)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !58, line: 698, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 51)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !58, line: 699, type: !191, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !216, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "newlines2", scope: !55, file: !2, line: 81, type: !52, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "line_num_end", scope: !55, file: !2, line: 78, type: !54, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "line_num_start", scope: !55, file: !2, line: 75, type: !54, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "line_buf", scope: !55, file: !2, line: 63, type: !167, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "line_num_print", scope: !55, file: !2, line: 72, type: !54, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "pending_cr", scope: !55, file: !2, line: 84, type: !274, isLocal: true, isDefinition: true)
!274 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!275 = !{!276, !277, !278, !279, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !354, !355, !356, !357, !358, !360, !361, !362, !365, !367, !368}
!276 = !DILocalVariable(name: "argc", arg: 1, scope: !49, file: !2, line: 539, type: !52)
!277 = !DILocalVariable(name: "argv", arg: 2, scope: !49, file: !2, line: 539, type: !53)
!278 = !DILocalVariable(name: "have_read_stdin", scope: !49, file: !2, line: 542, type: !274)
!279 = !DILocalVariable(name: "stat_buf", scope: !49, file: !2, line: 544, type: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !281, line: 182, size: 1152, elements: !282)
!281 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!282 = !{!283, !289, !295, !298, !302, !306, !310, !311, !318, !319, !320, !321, !327, !331, !335, !336, !337, !338}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !280, file: !281, line: 182, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !285, line: 31, baseType: !286)
!285 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !287, line: 57, baseType: !288)
!287 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !102, line: 46, baseType: !52)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !280, file: !281, line: 182, baseType: !290, size: 16, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !291, line: 31, baseType: !292)
!291 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !287, line: 70, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !102, line: 45, baseType: !294)
!294 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !280, file: !281, line: 182, baseType: !296, size: 16, offset: 48)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !297, line: 31, baseType: !293)
!297 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!298 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !280, file: !281, line: 182, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !287, line: 62, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !102, line: 49, baseType: !301)
!301 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !280, file: !281, line: 182, baseType: !303, size: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !304, line: 31, baseType: !305)
!304 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !287, line: 75, baseType: !104)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !280, file: !281, line: 182, baseType: !307, size: 32, offset: 160)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !308, line: 31, baseType: !309)
!308 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !287, line: 60, baseType: !104)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !280, file: !281, line: 182, baseType: !284, size: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !280, file: !281, line: 182, baseType: !312, size: 128, offset: 256)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !313, line: 33, size: 128, elements: !314)
!313 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!314 = !{!315, !317}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !312, file: !313, line: 35, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !102, line: 122, baseType: !98)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !312, file: !313, line: 36, baseType: !98, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !280, file: !281, line: 182, baseType: !312, size: 128, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !280, file: !281, line: 182, baseType: !312, size: 128, offset: 512)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !280, file: !281, line: 182, baseType: !312, size: 128, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !280, file: !281, line: 182, baseType: !322, size: 64, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !323, line: 31, baseType: !324)
!323 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !287, line: 71, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !102, line: 48, baseType: !326)
!326 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !280, file: !281, line: 182, baseType: !328, size: 64, offset: 832)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !329, line: 31, baseType: !330)
!329 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !287, line: 55, baseType: !325)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !280, file: !281, line: 182, baseType: !332, size: 32, offset: 896)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !333, line: 31, baseType: !334)
!333 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !287, line: 56, baseType: !288)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !280, file: !281, line: 182, baseType: !104, size: 32, offset: 928)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !280, file: !281, line: 182, baseType: !104, size: 32, offset: 960)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !280, file: !281, line: 182, baseType: !288, size: 32, offset: 992)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !280, file: !281, line: 182, baseType: !339, size: 128, offset: 1024)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 128, elements: !175)
!340 = !DILocalVariable(name: "number", scope: !49, file: !2, line: 547, type: !274)
!341 = !DILocalVariable(name: "number_nonblank", scope: !49, file: !2, line: 548, type: !274)
!342 = !DILocalVariable(name: "squeeze_blank", scope: !49, file: !2, line: 549, type: !274)
!343 = !DILocalVariable(name: "show_ends", scope: !49, file: !2, line: 550, type: !274)
!344 = !DILocalVariable(name: "show_nonprinting", scope: !49, file: !2, line: 551, type: !274)
!345 = !DILocalVariable(name: "show_tabs", scope: !49, file: !2, line: 552, type: !274)
!346 = !DILocalVariable(name: "file_open_mode", scope: !49, file: !2, line: 553, type: !52)
!347 = !DILocalVariable(name: "c", scope: !49, file: !2, line: 583, type: !52)
!348 = !DILocalVariable(name: "outsize", scope: !49, file: !2, line: 649, type: !94)
!349 = !DILocalVariable(name: "out_dev", scope: !49, file: !2, line: 652, type: !284)
!350 = !DILocalVariable(name: "out_ino", scope: !49, file: !2, line: 653, type: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !352, line: 31, baseType: !353)
!352 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_ino_t.h", directory: "")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino_t", file: !287, line: 64, baseType: !299)
!354 = !DILocalVariable(name: "out_isreg", scope: !49, file: !2, line: 656, type: !274)
!355 = !DILocalVariable(name: "argind", scope: !49, file: !2, line: 667, type: !52)
!356 = !DILocalVariable(name: "ok", scope: !49, file: !2, line: 668, type: !274)
!357 = !DILocalVariable(name: "page_size", scope: !49, file: !2, line: 669, type: !94)
!358 = !DILocalVariable(name: "reading_stdin", scope: !359, file: !2, line: 676, type: !274)
!359 = distinct !DILexicalBlock(scope: !49, file: !2, line: 672, column: 5)
!360 = !DILocalVariable(name: "insize", scope: !359, file: !2, line: 703, type: !94)
!361 = !DILocalVariable(name: "inbuf", scope: !359, file: !2, line: 721, type: !54)
!362 = !DILocalVariable(name: "copy_cat_status", scope: !363, file: !2, line: 730, type: !52)
!363 = distinct !DILexicalBlock(scope: !364, file: !2, line: 729, column: 9)
!364 = distinct !DILexicalBlock(scope: !359, file: !2, line: 727, column: 11)
!365 = !DILocalVariable(name: "bufsize", scope: !366, file: !2, line: 770, type: !94)
!366 = distinct !DILexicalBlock(scope: !364, file: !2, line: 745, column: 9)
!367 = !DILocalVariable(name: "outbuf", scope: !366, file: !2, line: 775, type: !54)
!368 = !DILabel(scope: !359, name: "contin", file: !2, line: 786)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 2560, elements: !129)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !372, line: 50, size: 256, elements: !373)
!372 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!373 = !{!374, !375, !376, !378}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !371, file: !372, line: 52, baseType: !91, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !371, file: !372, line: 55, baseType: !52, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !371, file: !372, line: 56, baseType: !377, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !371, file: !372, line: 57, baseType: !52, size: 32, offset: 192)
!379 = !{!"Homebrew clang version 16.0.4"}
!380 = !{i32 7, !"Dwarf Version", i32 4}
!381 = !{i32 2, !"Debug Info Version", i32 3}
!382 = !{i32 1, !"wchar_size", i32 4}
!383 = !{i32 8, !"PIC Level", i32 2}
!384 = !{i32 7, !"uwtable", i32 2}
!385 = !{i32 7, !"frame-pointer", i32 2}
!386 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 87, type: !387, scopeLine: 88, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !52}
!389 = !{!390}
!390 = !DILocalVariable(name: "status", arg: 1, scope: !386, file: !2, line: 87, type: !52)
!391 = !DILocation(line: 0, scope: !386)
!392 = !DILocation(line: 89, column: 14, scope: !393)
!393 = distinct !DILexicalBlock(scope: !386, file: !2, line: 89, column: 7)
!394 = !DILocation(line: 89, column: 7, scope: !386)
!395 = !DILocation(line: 90, column: 5, scope: !393)
!396 = !DILocation(line: 90, column: 5, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !2, line: 90, column: 5)
!398 = !{!399, !399, i64 0}
!399 = !{!"any pointer", !400, i64 0}
!400 = !{!"omnipotent char", !401, i64 0}
!401 = !{!"Simple C/C++ TBAA"}
!402 = !DILocation(line: 96, column: 15, scope: !403)
!403 = distinct !DILexicalBlock(scope: !393, file: !2, line: 92, column: 5)
!404 = !DILocation(line: 93, column: 7, scope: !403)
!405 = !DILocation(line: 99, column: 5, scope: !403)
!406 = !DILocation(line: 97, column: 7, scope: !403)
!407 = !DILocation(line: 101, column: 7, scope: !403)
!408 = !DILocation(line: 111, column: 5, scope: !403)
!409 = !DILocation(line: 103, column: 7, scope: !403)
!410 = !DILocation(line: 117, column: 5, scope: !403)
!411 = !DILocation(line: 112, column: 7, scope: !403)
!412 = !DILocation(line: 118, column: 39, scope: !403)
!413 = !DILocation(line: 118, column: 7, scope: !403)
!414 = !DILocation(line: 119, column: 42, scope: !403)
!415 = !DILocation(line: 119, column: 7, scope: !403)
!416 = !DILocation(line: 126, column: 15, scope: !403)
!417 = !DILocation(line: 126, column: 29, scope: !403)
!418 = !DILocation(line: 120, column: 7, scope: !403)
!419 = !DILocation(line: 127, column: 7, scope: !403)
!420 = !DILocation(line: 129, column: 3, scope: !386)
!421 = !DISubprogram(name: "fprintf", scope: !422, file: !422, line: 155, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!422 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!423 = !DISubroutineType(types: !424)
!424 = !{!52, !425, !475, null}
!425 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !428, line: 157, baseType: !429)
!428 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !428, line: 126, size: 1216, elements: !430)
!430 = !{!431, !434, !435, !436, !438, !439, !444, !445, !446, !450, !454, !459, !463, !464, !467, !468, !470, !472, !473, !474}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !429, file: !428, line: 127, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !429, file: !428, line: 128, baseType: !52, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !429, file: !428, line: 129, baseType: !52, size: 32, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !429, file: !428, line: 130, baseType: !437, size: 16, offset: 128)
!437 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !429, file: !428, line: 131, baseType: !437, size: 16, offset: 144)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !429, file: !428, line: 132, baseType: !440, size: 128, offset: 192)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !428, line: 92, size: 128, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !440, file: !428, line: 93, baseType: !432, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !440, file: !428, line: 94, baseType: !52, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !429, file: !428, line: 133, baseType: !52, size: 32, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !429, file: !428, line: 136, baseType: !93, size: 64, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !429, file: !428, line: 137, baseType: !447, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!52, !93}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !429, file: !428, line: 138, baseType: !451, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!52, !93, !54, !52}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !429, file: !428, line: 139, baseType: !455, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!458, !93, !458, !52}
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !428, line: 81, baseType: !324)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !429, file: !428, line: 140, baseType: !460, size: 64, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!52, !93, !91, !52}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !429, file: !428, line: 143, baseType: !440, size: 128, offset: 704)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !429, file: !428, line: 144, baseType: !465, size: 64, offset: 832)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !428, line: 98, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !429, file: !428, line: 145, baseType: !52, size: 32, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !429, file: !428, line: 148, baseType: !469, size: 24, offset: 928)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 24, elements: !180)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !429, file: !428, line: 149, baseType: !471, size: 8, offset: 952)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 8, elements: !151)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !429, file: !428, line: 152, baseType: !440, size: 128, offset: 960)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !429, file: !428, line: 155, baseType: !52, size: 32, offset: 1088)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !429, file: !428, line: 156, baseType: !458, size: 64, offset: 1152)
!475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!476 = !{}
!477 = !DISubprogram(name: "printf", scope: !422, file: !422, line: 175, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!478 = !DISubroutineType(types: !479)
!479 = !{!52, !475, null}
!480 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !422, file: !422, line: 157, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!481 = !DISubroutineType(types: !482)
!482 = !{!52, !475, !425}
!483 = distinct !DISubprogram(name: "emit_stdin_note", scope: !58, file: !58, line: 577, type: !484, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !476)
!484 = !DISubroutineType(types: !485)
!485 = !{null}
!486 = !DILocation(line: 581, column: 5, scope: !483)
!487 = !DILocation(line: 579, column: 3, scope: !483)
!488 = !DILocation(line: 582, column: 1, scope: !483)
!489 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !58, file: !58, line: 657, type: !490, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !492)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !91}
!492 = !{!493, !494, !501, !502, !504, !505}
!493 = !DILocalVariable(name: "program", arg: 1, scope: !489, file: !58, line: 657, type: !91)
!494 = !DILocalVariable(name: "infomap", scope: !489, file: !58, line: 659, type: !495)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 896, elements: !114)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !489, file: !58, line: 659, size: 128, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !497, file: !58, line: 659, baseType: !91, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !497, file: !58, line: 659, baseType: !91, size: 64, offset: 64)
!501 = !DILocalVariable(name: "node", scope: !489, file: !58, line: 669, type: !91)
!502 = !DILocalVariable(name: "map_prog", scope: !489, file: !58, line: 670, type: !503)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!504 = !DILocalVariable(name: "lc_messages", scope: !489, file: !58, line: 682, type: !91)
!505 = !DILocalVariable(name: "url_program", scope: !489, file: !58, line: 695, type: !91)
!506 = !DILocation(line: 0, scope: !489)
!507 = !DILocation(line: 659, column: 3, scope: !489)
!508 = !DILocation(line: 659, column: 67, scope: !489)
!509 = !DILocation(line: 670, column: 36, scope: !489)
!510 = !DILocation(line: 672, column: 3, scope: !489)
!511 = !DILocation(line: 672, column: 20, scope: !489)
!512 = !{!513, !399, i64 0}
!513 = !{!"infomap", !399, i64 0, !399, i64 8}
!514 = !DILocation(line: 672, column: 10, scope: !489)
!515 = !DILocation(line: 672, column: 28, scope: !489)
!516 = !DILocation(line: 672, column: 33, scope: !489)
!517 = !DILocation(line: 672, column: 31, scope: !489)
!518 = !DILocation(line: 673, column: 13, scope: !489)
!519 = distinct !{!519, !510, !518, !520, !521}
!520 = !{!"llvm.loop.mustprogress"}
!521 = !{!"llvm.loop.unroll.disable"}
!522 = !DILocation(line: 675, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !489, file: !58, line: 675, column: 7)
!524 = !{!513, !399, i64 8}
!525 = !DILocation(line: 675, column: 7, scope: !523)
!526 = !DILocation(line: 675, column: 7, scope: !489)
!527 = !DILocation(line: 676, column: 22, scope: !523)
!528 = !DILocation(line: 676, column: 5, scope: !523)
!529 = !DILocation(line: 678, column: 3, scope: !489)
!530 = !DILocation(line: 682, column: 29, scope: !489)
!531 = !DILocation(line: 683, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !489, file: !58, line: 683, column: 7)
!533 = !DILocation(line: 683, column: 19, scope: !532)
!534 = !DILocation(line: 683, column: 22, scope: !532)
!535 = !DILocation(line: 683, column: 7, scope: !489)
!536 = !DILocation(line: 690, column: 61, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !58, line: 684, column: 5)
!538 = !DILocation(line: 689, column: 7, scope: !537)
!539 = !DILocation(line: 691, column: 5, scope: !537)
!540 = !DILocation(line: 695, column: 29, scope: !489)
!541 = !DILocation(line: 696, column: 3, scope: !489)
!542 = !DILocation(line: 699, column: 22, scope: !489)
!543 = !DILocation(line: 699, column: 17, scope: !489)
!544 = !DILocation(line: 698, column: 3, scope: !489)
!545 = !DILocation(line: 700, column: 1, scope: !489)
!546 = !DISubprogram(name: "exit", scope: !547, file: !547, line: 145, type: !387, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !476)
!547 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!548 = !DISubprogram(name: "strcmp", scope: !549, file: !549, line: 77, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!549 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!550 = !DISubroutineType(types: !551)
!551 = !{!52, !91, !91}
!552 = !DISubprogram(name: "setlocale", scope: !553, file: !553, line: 53, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!553 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!554 = !DISubroutineType(types: !555)
!555 = !{!54, !52, !91}
!556 = !DISubprogram(name: "strncmp", scope: !549, file: !549, line: 84, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!557 = !DISubroutineType(types: !558)
!558 = !{!52, !91, !91, !99}
!559 = !DILocation(line: 0, scope: !49)
!560 = !DILocation(line: 544, column: 3, scope: !49)
!561 = !DILocation(line: 544, column: 15, scope: !49)
!562 = !DILocation(line: 570, column: 21, scope: !49)
!563 = !DILocation(line: 570, column: 3, scope: !49)
!564 = !DILocation(line: 571, column: 3, scope: !49)
!565 = !DILocation(line: 579, column: 3, scope: !49)
!566 = !DILocation(line: 584, column: 3, scope: !49)
!567 = !DILocation(line: 551, column: 8, scope: !49)
!568 = !DILocation(line: 550, column: 8, scope: !49)
!569 = !DILocation(line: 549, column: 8, scope: !49)
!570 = !DILocation(line: 548, column: 8, scope: !49)
!571 = !DILocation(line: 547, column: 8, scope: !49)
!572 = !DILocation(line: 584, column: 15, scope: !49)
!573 = !DILocation(line: 585, column: 10, scope: !49)
!574 = !DILocation(line: 587, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !49, file: !2, line: 586, column: 5)
!576 = !DILocation(line: 592, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !575, file: !2, line: 588, column: 9)
!578 = !DILocation(line: 597, column: 11, scope: !577)
!579 = !DILocation(line: 601, column: 11, scope: !577)
!580 = !DILocation(line: 605, column: 11, scope: !577)
!581 = !DILocation(line: 610, column: 11, scope: !577)
!582 = !DILocation(line: 618, column: 11, scope: !577)
!583 = !DILocation(line: 624, column: 11, scope: !577)
!584 = !DILocation(line: 628, column: 11, scope: !577)
!585 = !DILocation(line: 632, column: 11, scope: !577)
!586 = !DILocation(line: 634, column: 9, scope: !577)
!587 = !DILocation(line: 636, column: 9, scope: !577)
!588 = !DILocation(line: 639, column: 11, scope: !577)
!589 = distinct !{!589, !566, !590, !520, !521}
!590 = !DILocation(line: 641, column: 5, scope: !49)
!591 = !DILocation(line: 645, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !49, file: !2, line: 645, column: 7)
!593 = !DILocation(line: 645, column: 40, scope: !592)
!594 = !DILocation(line: 645, column: 7, scope: !49)
!595 = !DILocation(line: 646, column: 5, scope: !592)
!596 = !{!597, !597, i64 0}
!597 = !{!"int", !400, i64 0}
!598 = !DILocation(line: 649, column: 19, scope: !49)
!599 = !DILocation(line: 652, column: 28, scope: !49)
!600 = !{!601, !597, i64 0}
!601 = !{!"stat", !597, i64 0, !602, i64 4, !602, i64 6, !603, i64 8, !597, i64 16, !597, i64 20, !597, i64 24, !604, i64 32, !604, i64 48, !604, i64 64, !604, i64 80, !603, i64 96, !603, i64 104, !597, i64 112, !597, i64 116, !597, i64 120, !597, i64 124, !400, i64 128}
!602 = !{!"short", !400, i64 0}
!603 = !{!"long long", !400, i64 0}
!604 = !{!"timespec", !605, i64 0, !605, i64 8}
!605 = !{!"long", !400, i64 0}
!606 = !DILocation(line: 653, column: 28, scope: !49)
!607 = !{!601, !603, i64 8}
!608 = !DILocation(line: 656, column: 20, scope: !49)
!609 = !{!601, !602, i64 4}
!610 = !DILocation(line: 656, column: 47, scope: !49)
!611 = !DILocation(line: 656, column: 8, scope: !49)
!612 = !DILocation(line: 658, column: 10, scope: !613)
!613 = distinct !DILexicalBlock(scope: !49, file: !2, line: 658, column: 7)
!614 = !DILocation(line: 658, column: 17, scope: !613)
!615 = !DILocation(line: 658, column: 20, scope: !613)
!616 = !DILocation(line: 658, column: 30, scope: !613)
!617 = !DILocation(line: 658, column: 33, scope: !613)
!618 = !DILocation(line: 658, column: 7, scope: !49)
!619 = !DILocation(line: 660, column: 22, scope: !620)
!620 = distinct !DILexicalBlock(scope: !613, file: !2, line: 659, column: 5)
!621 = !DILocation(line: 661, column: 7, scope: !620)
!622 = !DILocation(line: 662, column: 5, scope: !620)
!623 = !DILocation(line: 666, column: 10, scope: !49)
!624 = !DILocation(line: 667, column: 16, scope: !49)
!625 = !DILocation(line: 669, column: 21, scope: !49)
!626 = !DILocation(line: 671, column: 3, scope: !49)
!627 = !DILocation(line: 673, column: 18, scope: !628)
!628 = distinct !DILexicalBlock(scope: !359, file: !2, line: 673, column: 11)
!629 = !DILocation(line: 673, column: 11, scope: !359)
!630 = !DILocation(line: 674, column: 18, scope: !628)
!631 = !DILocation(line: 674, column: 16, scope: !628)
!632 = !DILocation(line: 674, column: 9, scope: !628)
!633 = !DILocation(line: 676, column: 28, scope: !359)
!634 = !DILocation(line: 676, column: 12, scope: !359)
!635 = !DILocation(line: 0, scope: !359)
!636 = !DILocation(line: 677, column: 11, scope: !637)
!637 = distinct !DILexicalBlock(scope: !359, file: !2, line: 677, column: 11)
!638 = !DILocation(line: 677, column: 11, scope: !359)
!639 = !DILocation(line: 680, column: 22, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !2, line: 678, column: 9)
!641 = !DILocation(line: 681, column: 30, scope: !642)
!642 = distinct !DILexicalBlock(scope: !640, file: !2, line: 681, column: 15)
!643 = !DILocation(line: 681, column: 15, scope: !640)
!644 = !DILocation(line: 682, column: 13, scope: !642)
!645 = !DILocation(line: 683, column: 9, scope: !640)
!646 = !DILocation(line: 686, column: 30, scope: !647)
!647 = distinct !DILexicalBlock(scope: !637, file: !2, line: 685, column: 9)
!648 = !DILocation(line: 686, column: 24, scope: !647)
!649 = !DILocation(line: 686, column: 22, scope: !647)
!650 = !DILocation(line: 687, column: 15, scope: !651)
!651 = distinct !DILexicalBlock(scope: !647, file: !2, line: 687, column: 15)
!652 = !DILocation(line: 687, column: 26, scope: !651)
!653 = !DILocation(line: 687, column: 15, scope: !647)
!654 = !DILocation(line: 689, column: 25, scope: !655)
!655 = distinct !DILexicalBlock(scope: !651, file: !2, line: 688, column: 13)
!656 = !DILocation(line: 689, column: 38, scope: !655)
!657 = !DILocation(line: 689, column: 15, scope: !655)
!658 = !DILocation(line: 691, column: 15, scope: !655)
!659 = !DILocation(line: 695, column: 18, scope: !660)
!660 = distinct !DILexicalBlock(scope: !359, file: !2, line: 695, column: 11)
!661 = !DILocation(line: 695, column: 11, scope: !660)
!662 = !DILocation(line: 695, column: 41, scope: !660)
!663 = !DILocation(line: 695, column: 11, scope: !359)
!664 = !DILocation(line: 697, column: 21, scope: !665)
!665 = distinct !DILexicalBlock(scope: !660, file: !2, line: 696, column: 9)
!666 = !DILocation(line: 697, column: 34, scope: !665)
!667 = !DILocation(line: 697, column: 11, scope: !665)
!668 = !DILocation(line: 699, column: 11, scope: !665)
!669 = !DILocation(line: 703, column: 22, scope: !359)
!670 = !DILocation(line: 705, column: 17, scope: !359)
!671 = !DILocation(line: 705, column: 7, scope: !359)
!672 = !DILocation(line: 711, column: 11, scope: !673)
!673 = distinct !DILexicalBlock(scope: !359, file: !2, line: 711, column: 11)
!674 = !DILocation(line: 712, column: 11, scope: !673)
!675 = !DILocation(line: 712, column: 23, scope: !673)
!676 = !DILocation(line: 712, column: 30, scope: !673)
!677 = !DILocation(line: 712, column: 41, scope: !673)
!678 = !DILocation(line: 712, column: 53, scope: !673)
!679 = !DILocation(line: 712, column: 60, scope: !673)
!680 = !DILocation(line: 713, column: 11, scope: !673)
!681 = !DILocation(line: 713, column: 21, scope: !673)
!682 = !DILocation(line: 713, column: 14, scope: !673)
!683 = !DILocation(line: 713, column: 57, scope: !673)
!684 = !{!601, !603, i64 96}
!685 = !DILocation(line: 713, column: 46, scope: !673)
!686 = !DILocation(line: 711, column: 11, scope: !359)
!687 = !DILocation(line: 715, column: 60, scope: !688)
!688 = distinct !DILexicalBlock(scope: !673, file: !2, line: 714, column: 9)
!689 = !DILocation(line: 715, column: 11, scope: !688)
!690 = !DILocation(line: 717, column: 11, scope: !688)
!691 = !DILocation(line: 727, column: 14, scope: !364)
!692 = !DILocation(line: 727, column: 21, scope: !364)
!693 = !DILocation(line: 727, column: 24, scope: !364)
!694 = !DILocation(line: 727, column: 34, scope: !364)
!695 = !DILocation(line: 727, column: 37, scope: !364)
!696 = !DILocation(line: 728, column: 14, scope: !364)
!697 = !DILocation(line: 728, column: 17, scope: !364)
!698 = !DILocation(line: 728, column: 27, scope: !364)
!699 = !DILocation(line: 728, column: 30, scope: !364)
!700 = !DILocation(line: 727, column: 11, scope: !359)
!701 = !DILocation(line: 731, column: 13, scope: !363)
!702 = !DILocation(line: 731, column: 23, scope: !363)
!703 = !DILocation(line: 731, column: 26, scope: !363)
!704 = !DILocation(line: 731, column: 55, scope: !363)
!705 = !DILocation(line: 0, scope: !363)
!706 = !DILocation(line: 732, column: 31, scope: !707)
!707 = distinct !DILexicalBlock(scope: !363, file: !2, line: 732, column: 15)
!708 = !DILocation(line: 732, column: 15, scope: !363)
!709 = !DILocation(line: 735, column: 23, scope: !710)
!710 = distinct !DILexicalBlock(scope: !707, file: !2, line: 733, column: 13)
!711 = !DILocation(line: 735, column: 18, scope: !710)
!712 = !DILocation(line: 736, column: 13, scope: !710)
!713 = !DILocation(line: 739, column: 24, scope: !714)
!714 = distinct !DILexicalBlock(scope: !707, file: !2, line: 738, column: 13)
!715 = !DILocation(line: 740, column: 23, scope: !714)
!716 = !DILocation(line: 741, column: 21, scope: !714)
!717 = !DILocation(line: 741, column: 18, scope: !714)
!718 = !DILocation(line: 0, scope: !707)
!719 = !DILocation(line: 743, column: 9, scope: !363)
!720 = !DILocation(line: 747, column: 50, scope: !366)
!721 = !DILocation(line: 747, column: 19, scope: !366)
!722 = !DILocation(line: 771, column: 15, scope: !723)
!723 = distinct !DILexicalBlock(scope: !366, file: !2, line: 771, column: 15)
!724 = !DILocation(line: 772, column: 15, scope: !723)
!725 = !DILocation(line: 0, scope: !366)
!726 = !DILocation(line: 772, column: 18, scope: !723)
!727 = !DILocation(line: 773, column: 15, scope: !723)
!728 = !DILocation(line: 773, column: 18, scope: !723)
!729 = !DILocation(line: 771, column: 15, scope: !366)
!730 = !DILocation(line: 774, column: 13, scope: !723)
!731 = !DILocation(line: 775, column: 26, scope: !366)
!732 = !DILocation(line: 777, column: 54, scope: !366)
!733 = !DILocation(line: 778, column: 22, scope: !366)
!734 = !DILocation(line: 778, column: 33, scope: !366)
!735 = !DILocation(line: 778, column: 41, scope: !366)
!736 = !DILocation(line: 778, column: 58, scope: !366)
!737 = !DILocation(line: 779, column: 22, scope: !366)
!738 = !DILocation(line: 777, column: 17, scope: !366)
!739 = !DILocation(line: 777, column: 14, scope: !366)
!740 = !DILocation(line: 781, column: 11, scope: !366)
!741 = !DILocation(line: 0, scope: !364)
!742 = !DILocation(line: 784, column: 7, scope: !359)
!743 = !DILocation(line: 786, column: 5, scope: !359)
!744 = !DILocation(line: 787, column: 12, scope: !745)
!745 = distinct !DILexicalBlock(scope: !359, file: !2, line: 787, column: 11)
!746 = !DILocation(line: 787, column: 26, scope: !745)
!747 = !DILocation(line: 787, column: 36, scope: !745)
!748 = !DILocation(line: 787, column: 29, scope: !745)
!749 = !DILocation(line: 787, column: 48, scope: !745)
!750 = !DILocation(line: 787, column: 11, scope: !359)
!751 = !DILocation(line: 789, column: 21, scope: !752)
!752 = distinct !DILexicalBlock(scope: !745, file: !2, line: 788, column: 9)
!753 = !DILocation(line: 789, column: 34, scope: !752)
!754 = !DILocation(line: 789, column: 11, scope: !752)
!755 = !DILocation(line: 791, column: 9, scope: !752)
!756 = !DILocation(line: 792, column: 5, scope: !49)
!757 = !DILocation(line: 792, column: 5, scope: !359)
!758 = !DILocation(line: 793, column: 10, scope: !49)
!759 = !DILocation(line: 793, column: 19, scope: !49)
!760 = distinct !{!760, !626, !761, !520, !521}
!761 = !DILocation(line: 793, column: 25, scope: !49)
!762 = !DILocation(line: 795, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !49, file: !2, line: 795, column: 7)
!764 = !{!765, !765, i64 0}
!765 = !{!"_Bool", !400, i64 0}
!766 = !{i8 0, i8 2}
!767 = !DILocation(line: 795, column: 7, scope: !49)
!768 = !DILocation(line: 797, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !2, line: 797, column: 11)
!770 = distinct !DILexicalBlock(scope: !763, file: !2, line: 796, column: 5)
!771 = !DILocation(line: 797, column: 47, scope: !769)
!772 = !DILocation(line: 797, column: 11, scope: !770)
!773 = !DILocation(line: 798, column: 9, scope: !769)
!774 = !DILocation(line: 799, column: 5, scope: !770)
!775 = !DILocation(line: 801, column: 7, scope: !776)
!776 = distinct !DILexicalBlock(scope: !49, file: !2, line: 801, column: 7)
!777 = !DILocation(line: 801, column: 23, scope: !776)
!778 = !DILocation(line: 801, column: 26, scope: !776)
!779 = !DILocation(line: 801, column: 47, scope: !776)
!780 = !DILocation(line: 801, column: 7, scope: !49)
!781 = !DILocation(line: 802, column: 5, scope: !776)
!782 = !DILocation(line: 804, column: 10, scope: !49)
!783 = !DILocation(line: 805, column: 1, scope: !49)
!784 = !DISubprogram(name: "set_program_name", scope: !785, file: !785, line: 37, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!785 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!786 = !DISubprogram(name: "atexit", scope: !547, file: !547, line: 133, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!787 = !DISubroutineType(types: !788)
!788 = !{!52, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!790 = !DISubprogram(name: "rpl_getopt_long", scope: !372, file: !372, line: 66, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!791 = !DISubroutineType(types: !792)
!792 = !{!52, !52, !53, !91, !793, !377}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!794 = !DISubprogram(name: "version_etc", scope: !795, file: !795, line: 65, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!795 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!796 = !DISubroutineType(types: !797)
!797 = !{null, !426, !91, !91, !91, null}
!798 = !DISubprogram(name: "fstat", linkageName: "\01_fstat$INODE64", scope: !281, file: !281, line: 382, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!799 = !DISubroutineType(types: !800)
!800 = !{!52, !52, !801}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!802 = !DISubprogram(name: "__error", scope: !803, file: !803, line: 80, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!803 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!804 = !DISubroutineType(types: !805)
!805 = !{!377}
!806 = !DISubprogram(name: "error", scope: !807, file: !807, line: 395, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!807 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!808 = !DISubroutineType(types: !809)
!809 = !{null, !52, !52, !91, null}
!810 = distinct !DISubprogram(name: "io_blksize", scope: !87, file: !87, line: 77, type: !811, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!94, !280}
!813 = !{!814, !815, !816, !819}
!814 = !DILocalVariable(name: "sb", arg: 1, scope: !810, file: !87, line: 77, type: !280)
!815 = !DILocalVariable(name: "blocksize", scope: !810, file: !87, line: 80, type: !94)
!816 = !DILocalVariable(name: "leading_zeros", scope: !817, file: !87, line: 95, type: !52)
!817 = distinct !DILexicalBlock(scope: !818, file: !87, line: 94, column: 5)
!818 = distinct !DILexicalBlock(scope: !810, file: !87, line: 92, column: 7)
!819 = !DILocalVariable(name: "power", scope: !820, file: !87, line: 98, type: !301)
!820 = distinct !DILexicalBlock(scope: !821, file: !87, line: 97, column: 9)
!821 = distinct !DILexicalBlock(scope: !817, file: !87, line: 96, column: 11)
!822 = !DILocation(line: 77, column: 25, scope: !810)
!823 = !DILocation(line: 80, column: 21, scope: !810)
!824 = !{!601, !597, i64 112}
!825 = !DILocation(line: 80, column: 37, scope: !810)
!826 = !DILocation(line: 80, column: 57, scope: !810)
!827 = !DILocation(line: 0, scope: !810)
!828 = !DILocation(line: 84, column: 52, scope: !810)
!829 = !DILocation(line: 84, column: 33, scope: !810)
!830 = !DILocation(line: 84, column: 13, scope: !810)
!831 = !DILocation(line: 92, column: 7, scope: !818)
!832 = !DILocation(line: 93, column: 7, scope: !818)
!833 = !DILocation(line: 93, column: 33, scope: !818)
!834 = !DILocation(line: 93, column: 20, scope: !818)
!835 = !DILocation(line: 92, column: 7, scope: !810)
!836 = !DILocation(line: 95, column: 27, scope: !817)
!837 = !DILocation(line: 0, scope: !817)
!838 = !DILocation(line: 98, column: 60, scope: !820)
!839 = !DILocation(line: 98, column: 43, scope: !820)
!840 = !DILocation(line: 0, scope: !820)
!841 = !DILocation(line: 99, column: 21, scope: !842)
!842 = distinct !DILexicalBlock(scope: !820, file: !87, line: 99, column: 15)
!843 = !DILocation(line: 99, column: 15, scope: !820)
!844 = !DILocation(line: 100, column: 13, scope: !842)
!845 = !DILocation(line: 102, column: 5, scope: !817)
!846 = !DILocation(line: 106, column: 10, scope: !810)
!847 = !DILocation(line: 106, column: 3, scope: !810)
!848 = distinct !DISubprogram(name: "xset_binary_mode", scope: !849, file: !849, line: 40, type: !850, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !852)
!849 = !DIFile(filename: "../lib/xbinary-io.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!850 = !DISubroutineType(types: !851)
!851 = !{null, !52, !52}
!852 = !{!853, !854}
!853 = !DILocalVariable(name: "fd", arg: 1, scope: !848, file: !849, line: 40, type: !52)
!854 = !DILocalVariable(name: "mode", arg: 2, scope: !848, file: !849, line: 40, type: !52)
!855 = !DILocation(line: 0, scope: !848)
!856 = !DILocation(line: 42, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !848, file: !849, line: 42, column: 7)
!858 = !DILocation(line: 42, column: 34, scope: !857)
!859 = !DILocation(line: 42, column: 7, scope: !848)
!860 = !DILocation(line: 43, column: 5, scope: !857)
!861 = !DILocation(line: 44, column: 1, scope: !848)
!862 = !DISubprogram(name: "getpagesize", scope: !863, file: !863, line: 558, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!863 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/unistd.h", directory: "")
!864 = !DISubroutineType(types: !865)
!865 = !{!52}
!866 = !DISubprogram(name: "rpl_open", scope: !867, file: !867, line: 674, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!867 = !DIFile(filename: "./lib/fcntl.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!868 = !DISubroutineType(types: !869)
!869 = !{!52, !91, !52, null}
!870 = !DISubprogram(name: "quotearg_n_style_colon", scope: !63, file: !63, line: 403, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!871 = !DISubroutineType(types: !872)
!872 = !{!54, !52, !62, !91}
!873 = !DISubprogram(name: "fdadvise", scope: !78, file: !78, line: 70, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !52, !322, !322, !876}
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !78, line: 60, baseType: !77)
!877 = !DISubprogram(name: "lseek", scope: !863, file: !863, line: 465, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!878 = !DISubroutineType(types: !879)
!879 = !{!322, !52, !322, !52}
!880 = distinct !DISubprogram(name: "copy_cat", scope: !2, file: !2, line: 507, type: !864, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !881)
!881 = !{!882, !886}
!882 = !DILocalVariable(name: "copy_max", scope: !880, file: !2, line: 512, type: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !884, line: 31, baseType: !885)
!884 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_ssize_t.h", directory: "")
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ssize_t", file: !102, line: 121, baseType: !98)
!886 = !DILocalVariable(name: "some_copied", scope: !887, file: !2, line: 520, type: !274)
!887 = distinct !DILexicalBlock(scope: !880, file: !2, line: 520, column: 3)
!888 = !DILocation(line: 0, scope: !880)
!889 = !DILocation(line: 0, scope: !887)
!890 = !DILocation(line: 520, column: 8, scope: !887)
!891 = !DILocation(line: 520, scope: !887)
!892 = !DILocation(line: 521, column: 30, scope: !893)
!893 = distinct !DILexicalBlock(scope: !887, file: !2, line: 520, column: 3)
!894 = !DILocation(line: 521, column: 13, scope: !893)
!895 = !DILocation(line: 521, column: 5, scope: !893)
!896 = !DILocation(line: 525, column: 16, scope: !897)
!897 = distinct !DILexicalBlock(scope: !893, file: !2, line: 523, column: 7)
!898 = !DILocation(line: 525, column: 9, scope: !897)
!899 = !DILocation(line: 528, column: 13, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !2, line: 528, column: 13)
!901 = !DILocation(line: 528, column: 19, scope: !900)
!902 = !DILocation(line: 528, column: 29, scope: !900)
!903 = !DILocation(line: 528, column: 44, scope: !900)
!904 = !DILocation(line: 528, column: 32, scope: !900)
!905 = !DILocation(line: 528, column: 51, scope: !900)
!906 = !DILocation(line: 528, column: 54, scope: !900)
!907 = !DILocation(line: 528, column: 60, scope: !900)
!908 = !DILocation(line: 529, column: 13, scope: !900)
!909 = !DILocation(line: 529, column: 16, scope: !900)
!910 = !DILocation(line: 529, column: 22, scope: !900)
!911 = !DILocation(line: 529, column: 31, scope: !900)
!912 = !DILocation(line: 529, column: 34, scope: !900)
!913 = !DILocation(line: 529, column: 40, scope: !900)
!914 = !DILocation(line: 529, column: 49, scope: !900)
!915 = !DILocation(line: 529, column: 52, scope: !900)
!916 = !DILocation(line: 529, column: 58, scope: !900)
!917 = !DILocation(line: 530, column: 13, scope: !900)
!918 = !DILocation(line: 530, column: 16, scope: !900)
!919 = !DILocation(line: 530, column: 22, scope: !900)
!920 = !DILocation(line: 528, column: 13, scope: !897)
!921 = !DILocation(line: 531, column: 11, scope: !900)
!922 = !DILocation(line: 532, column: 19, scope: !897)
!923 = !DILocation(line: 532, column: 32, scope: !897)
!924 = !DILocation(line: 532, column: 9, scope: !897)
!925 = !DILocation(line: 533, column: 9, scope: !897)
!926 = !DILocation(line: 534, column: 7, scope: !897)
!927 = !DILocation(line: 520, column: 3, scope: !893)
!928 = distinct !{!928, !929, !930, !521}
!929 = !DILocation(line: 520, column: 3, scope: !887)
!930 = !DILocation(line: 534, column: 7, scope: !887)
!931 = !DILocation(line: 0, scope: !897)
!932 = !DILocation(line: 535, column: 1, scope: !880)
!933 = !DISubprogram(name: "xalignalloc", scope: !934, file: !934, line: 107, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!934 = !DIFile(filename: "../lib/alignalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!935 = !DISubroutineType(types: !936)
!936 = !{!93, !94, !94}
!937 = distinct !DISubprogram(name: "simple_cat", scope: !2, file: !2, line: 159, type: !938, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{!274, !54, !94}
!940 = !{!941, !942, !943}
!941 = !DILocalVariable(name: "buf", arg: 1, scope: !937, file: !2, line: 159, type: !54)
!942 = !DILocalVariable(name: "bufsize", arg: 2, scope: !937, file: !2, line: 159, type: !94)
!943 = !DILocalVariable(name: "n_read", scope: !944, file: !2, line: 167, type: !99)
!944 = distinct !DILexicalBlock(scope: !937, file: !2, line: 164, column: 5)
!945 = !DILocation(line: 0, scope: !937)
!946 = !DILocation(line: 163, column: 3, scope: !937)
!947 = !DILocation(line: 167, column: 34, scope: !944)
!948 = !DILocation(line: 167, column: 23, scope: !944)
!949 = !DILocation(line: 0, scope: !944)
!950 = !DILocation(line: 168, column: 18, scope: !951)
!951 = distinct !DILexicalBlock(scope: !944, file: !2, line: 168, column: 11)
!952 = !DILocation(line: 168, column: 11, scope: !944)
!953 = !DILocation(line: 170, column: 21, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !2, line: 169, column: 9)
!955 = !DILocation(line: 170, column: 34, scope: !954)
!956 = !DILocation(line: 170, column: 11, scope: !954)
!957 = !DILocation(line: 171, column: 11, scope: !954)
!958 = !DILocation(line: 176, column: 18, scope: !959)
!959 = distinct !DILexicalBlock(scope: !944, file: !2, line: 176, column: 11)
!960 = !DILocation(line: 176, column: 11, scope: !944)
!961 = !DILocation(line: 177, column: 9, scope: !959)
!962 = !DILocation(line: 181, column: 11, scope: !963)
!963 = distinct !DILexicalBlock(scope: !944, file: !2, line: 181, column: 11)
!964 = !DILocation(line: 181, column: 51, scope: !963)
!965 = !DILocation(line: 181, column: 11, scope: !944)
!966 = !DILocation(line: 182, column: 9, scope: !963)
!967 = !DILocation(line: 183, column: 5, scope: !937)
!968 = distinct !{!968, !946, !967, !521}
!969 = !DILocation(line: 184, column: 1, scope: !937)
!970 = !DISubprogram(name: "xalloc_die", scope: !971, file: !971, line: 49, type: !484, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !476)
!971 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!972 = distinct !DISubprogram(name: "cat", scope: !2, file: !2, line: 215, type: !973, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{!274, !54, !94, !54, !94, !274, !274, !274, !274, !274, !274}
!975 = !{!976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !997, !998, !1001, !1002}
!976 = !DILocalVariable(name: "inbuf", arg: 1, scope: !972, file: !2, line: 215, type: !54)
!977 = !DILocalVariable(name: "insize", arg: 2, scope: !972, file: !2, line: 215, type: !94)
!978 = !DILocalVariable(name: "outbuf", arg: 3, scope: !972, file: !2, line: 215, type: !54)
!979 = !DILocalVariable(name: "outsize", arg: 4, scope: !972, file: !2, line: 215, type: !94)
!980 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !972, file: !2, line: 216, type: !274)
!981 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !972, file: !2, line: 216, type: !274)
!982 = !DILocalVariable(name: "number", arg: 7, scope: !972, file: !2, line: 216, type: !274)
!983 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !972, file: !2, line: 216, type: !274)
!984 = !DILocalVariable(name: "show_ends", arg: 9, scope: !972, file: !2, line: 217, type: !274)
!985 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !972, file: !2, line: 217, type: !274)
!986 = !DILocalVariable(name: "ch", scope: !972, file: !2, line: 220, type: !433)
!987 = !DILocalVariable(name: "newlines", scope: !972, file: !2, line: 227, type: !52)
!988 = !DILocalVariable(name: "use_fionread", scope: !972, file: !2, line: 232, type: !274)
!989 = !DILocalVariable(name: "eob", scope: !972, file: !2, line: 240, type: !54)
!990 = !DILocalVariable(name: "bpin", scope: !972, file: !2, line: 243, type: !54)
!991 = !DILocalVariable(name: "bpout", scope: !972, file: !2, line: 246, type: !54)
!992 = !DILocalVariable(name: "wp", scope: !993, file: !2, line: 256, type: !54)
!993 = distinct !DILexicalBlock(scope: !994, file: !2, line: 255, column: 13)
!994 = distinct !DILexicalBlock(scope: !995, file: !2, line: 254, column: 15)
!995 = distinct !DILexicalBlock(scope: !996, file: !2, line: 251, column: 9)
!996 = distinct !DILexicalBlock(scope: !972, file: !2, line: 249, column: 5)
!997 = !DILocalVariable(name: "remaining_bytes", scope: !993, file: !2, line: 257, type: !94)
!998 = !DILocalVariable(name: "input_pending", scope: !999, file: !2, line: 278, type: !274)
!999 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 277, column: 13)
!1000 = distinct !DILexicalBlock(scope: !995, file: !2, line: 276, column: 15)
!1001 = !DILocalVariable(name: "n_to_read", scope: !999, file: !2, line: 280, type: !52)
!1002 = !DILocalVariable(name: "n_read", scope: !999, file: !2, line: 316, type: !99)
!1003 = !DILocation(line: 0, scope: !972)
!1004 = !DILocation(line: 227, column: 18, scope: !972)
!1005 = !DILocation(line: 243, column: 20, scope: !972)
!1006 = !DILocation(line: 246, column: 3, scope: !972)
!1007 = !DILocation(line: 246, column: 9, scope: !972)
!1008 = !DILocation(line: 248, column: 3, scope: !972)
!1009 = !DILocation(line: 240, column: 9, scope: !972)
!1010 = !DILocation(line: 250, column: 7, scope: !996)
!1011 = !DILocation(line: 227, column: 7, scope: !972)
!1012 = !DILocation(line: 254, column: 22, scope: !994)
!1013 = !DILocation(line: 254, column: 35, scope: !994)
!1014 = !DILocation(line: 254, column: 32, scope: !994)
!1015 = !DILocation(line: 254, column: 15, scope: !995)
!1016 = !DILocation(line: 0, scope: !993)
!1017 = !DILocation(line: 258, column: 15, scope: !993)
!1018 = !DILocation(line: 260, column: 23, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 260, column: 23)
!1020 = distinct !DILexicalBlock(scope: !993, file: !2, line: 259, column: 17)
!1021 = !DILocation(line: 260, column: 63, scope: !1019)
!1022 = !DILocation(line: 260, column: 23, scope: !1020)
!1023 = !DILocation(line: 261, column: 21, scope: !1019)
!1024 = !DILocation(line: 262, column: 22, scope: !1020)
!1025 = !DILocation(line: 263, column: 37, scope: !1020)
!1026 = !DILocation(line: 263, column: 43, scope: !1020)
!1027 = !DILocation(line: 264, column: 17, scope: !1020)
!1028 = !DILocation(line: 265, column: 30, scope: !993)
!1029 = distinct !{!1029, !1017, !1030, !520, !521}
!1030 = !DILocation(line: 265, column: 48, scope: !993)
!1031 = !DILocation(line: 270, column: 15, scope: !993)
!1032 = !DILocation(line: 271, column: 30, scope: !993)
!1033 = !DILocation(line: 271, column: 21, scope: !993)
!1034 = !DILocation(line: 272, column: 13, scope: !993)
!1035 = !DILocation(line: 276, column: 20, scope: !1000)
!1036 = !DILocation(line: 276, column: 15, scope: !995)
!1037 = !DILocation(line: 0, scope: !999)
!1038 = !DILocation(line: 280, column: 15, scope: !999)
!1039 = !DILocation(line: 280, column: 19, scope: !999)
!1040 = !DILocation(line: 286, column: 19, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !999, file: !2, line: 286, column: 19)
!1042 = !DILocation(line: 287, column: 19, scope: !1041)
!1043 = !DILocation(line: 287, column: 29, scope: !1041)
!1044 = !DILocation(line: 287, column: 22, scope: !1041)
!1045 = !DILocation(line: 287, column: 63, scope: !1041)
!1046 = !DILocation(line: 286, column: 19, scope: !999)
!1047 = !DILocation(line: 295, column: 23, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 295, column: 23)
!1049 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 288, column: 17)
!1050 = !DILocation(line: 295, column: 29, scope: !1048)
!1051 = !DILocation(line: 295, column: 43, scope: !1048)
!1052 = !DILocation(line: 295, column: 46, scope: !1048)
!1053 = !DILocation(line: 295, column: 52, scope: !1048)
!1054 = !DILocation(line: 296, column: 23, scope: !1048)
!1055 = !DILocation(line: 296, column: 26, scope: !1048)
!1056 = !DILocation(line: 296, column: 32, scope: !1048)
!1057 = !DILocation(line: 296, column: 42, scope: !1048)
!1058 = !DILocation(line: 296, column: 45, scope: !1048)
!1059 = !DILocation(line: 296, column: 51, scope: !1048)
!1060 = !DILocation(line: 297, column: 23, scope: !1048)
!1061 = !DILocation(line: 297, column: 26, scope: !1048)
!1062 = !DILocation(line: 297, column: 32, scope: !1048)
!1063 = !DILocation(line: 295, column: 23, scope: !1049)
!1064 = !DILocation(line: 298, column: 21, scope: !1048)
!1065 = !DILocation(line: 301, column: 33, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 300, column: 21)
!1067 = !DILocation(line: 302, column: 30, scope: !1066)
!1068 = !DILocation(line: 301, column: 23, scope: !1066)
!1069 = !DILocation(line: 303, column: 33, scope: !1066)
!1070 = !DILocation(line: 304, column: 23, scope: !1066)
!1071 = !DILocation(line: 306, column: 17, scope: !1049)
!1072 = !DILocation(line: 307, column: 19, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !999, file: !2, line: 307, column: 19)
!1074 = !DILocation(line: 307, column: 29, scope: !1073)
!1075 = !DILocation(line: 307, column: 19, scope: !999)
!1076 = !DILocation(line: 308, column: 17, scope: !1073)
!1077 = !DILocation(line: 311, column: 20, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !999, file: !2, line: 311, column: 19)
!1079 = !DILocation(line: 311, column: 19, scope: !999)
!1080 = !DILocation(line: 312, column: 17, scope: !1078)
!1081 = !DILocation(line: 316, column: 42, scope: !999)
!1082 = !DILocation(line: 316, column: 31, scope: !999)
!1083 = !DILocation(line: 317, column: 26, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !999, file: !2, line: 317, column: 19)
!1085 = !DILocation(line: 317, column: 19, scope: !999)
!1086 = !DILocation(line: 319, column: 29, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 318, column: 17)
!1088 = !DILocation(line: 319, column: 42, scope: !1087)
!1089 = !DILocation(line: 319, column: 19, scope: !1087)
!1090 = !DILocation(line: 320, column: 19, scope: !1087)
!1091 = !DILocation(line: 321, column: 29, scope: !1087)
!1092 = !DILocation(line: 322, column: 19, scope: !1087)
!1093 = !DILocation(line: 324, column: 26, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !999, file: !2, line: 324, column: 19)
!1095 = !DILocation(line: 324, column: 19, scope: !999)
!1096 = !DILocation(line: 326, column: 19, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 325, column: 17)
!1098 = !DILocation(line: 327, column: 29, scope: !1097)
!1099 = !DILocation(line: 328, column: 19, scope: !1097)
!1100 = !DILocation(line: 335, column: 26, scope: !999)
!1101 = !DILocation(line: 336, column: 20, scope: !999)
!1102 = !{!400, !400, i64 0}
!1103 = !DILocation(line: 337, column: 13, scope: !1000)
!1104 = !DILocation(line: 243, column: 9, scope: !972)
!1105 = !DILocation(line: 337, column: 13, scope: !999)
!1106 = !DILocation(line: 345, column: 19, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 345, column: 19)
!1108 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 339, column: 13)
!1109 = !DILocation(line: 345, column: 30, scope: !1107)
!1110 = !DILocation(line: 345, column: 19, scope: !1108)
!1111 = !DILocation(line: 347, column: 32, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 347, column: 23)
!1113 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 346, column: 17)
!1114 = !DILocation(line: 347, column: 23, scope: !1113)
!1115 = !DILocation(line: 357, column: 27, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 357, column: 27)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 348, column: 21)
!1118 = !DILocation(line: 357, column: 27, scope: !1117)
!1119 = !DILocation(line: 359, column: 37, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 358, column: 25)
!1121 = !DILocation(line: 359, column: 32, scope: !1120)
!1122 = !DILocation(line: 360, column: 27, scope: !1120)
!1123 = !DILocation(line: 362, column: 21, scope: !1117)
!1124 = !DILocation(line: 0, scope: !1107)
!1125 = !DILocation(line: 366, column: 23, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 366, column: 23)
!1127 = !DILocation(line: 366, column: 30, scope: !1126)
!1128 = !DILocation(line: 366, column: 34, scope: !1126)
!1129 = !DILocation(line: 366, column: 23, scope: !1113)
!1130 = !DILocation(line: 368, column: 23, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 367, column: 21)
!1132 = !DILocation(line: 369, column: 39, scope: !1131)
!1133 = !DILocation(line: 369, column: 46, scope: !1131)
!1134 = !DILocation(line: 369, column: 31, scope: !1131)
!1135 = !DILocation(line: 369, column: 29, scope: !1131)
!1136 = !DILocation(line: 370, column: 21, scope: !1131)
!1137 = !DILocation(line: 371, column: 17, scope: !1113)
!1138 = !DILocation(line: 374, column: 19, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 374, column: 19)
!1140 = !DILocation(line: 374, column: 19, scope: !1108)
!1141 = !DILocation(line: 376, column: 23, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 376, column: 23)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 375, column: 17)
!1144 = !DILocation(line: 376, column: 23, scope: !1143)
!1145 = !DILocation(line: 378, column: 29, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 377, column: 21)
!1147 = !DILocation(line: 378, column: 32, scope: !1146)
!1148 = !DILocation(line: 379, column: 29, scope: !1146)
!1149 = !DILocation(line: 379, column: 32, scope: !1146)
!1150 = !DILocation(line: 380, column: 34, scope: !1146)
!1151 = !DILocation(line: 381, column: 21, scope: !1146)
!1152 = !DILocation(line: 382, column: 25, scope: !1143)
!1153 = !DILocation(line: 382, column: 28, scope: !1143)
!1154 = !DILocation(line: 383, column: 17, scope: !1143)
!1155 = !DILocation(line: 387, column: 21, scope: !1108)
!1156 = !DILocation(line: 387, column: 24, scope: !1108)
!1157 = !DILocation(line: 389, column: 21, scope: !995)
!1158 = !DILocation(line: 389, column: 16, scope: !995)
!1159 = !DILocation(line: 390, column: 9, scope: !995)
!1160 = !DILocation(line: 0, scope: !995)
!1161 = !DILocation(line: 391, column: 14, scope: !996)
!1162 = !DILocation(line: 391, column: 17, scope: !996)
!1163 = distinct !{!1163, !1010, !1164, !520, !521}
!1164 = !DILocation(line: 391, column: 24, scope: !996)
!1165 = !DILocation(line: 395, column: 11, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !996, file: !2, line: 395, column: 11)
!1167 = !DILocation(line: 395, column: 11, scope: !996)
!1168 = !DILocation(line: 397, column: 17, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 396, column: 9)
!1170 = !DILocation(line: 397, column: 20, scope: !1169)
!1171 = !DILocation(line: 398, column: 22, scope: !1169)
!1172 = !DILocation(line: 399, column: 9, scope: !1169)
!1173 = !DILocation(line: 403, column: 20, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !996, file: !2, line: 403, column: 11)
!1175 = !DILocation(line: 403, column: 25, scope: !1174)
!1176 = !DILocation(line: 403, column: 28, scope: !1174)
!1177 = !DILocation(line: 403, column: 11, scope: !996)
!1178 = !DILocation(line: 405, column: 11, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 404, column: 9)
!1180 = !DILocation(line: 406, column: 27, scope: !1179)
!1181 = !DILocation(line: 406, column: 34, scope: !1179)
!1182 = !DILocation(line: 406, column: 19, scope: !1179)
!1183 = !DILocation(line: 406, column: 17, scope: !1179)
!1184 = !DILocation(line: 407, column: 9, scope: !1179)
!1185 = !DILocation(line: 415, column: 11, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !996, file: !2, line: 415, column: 11)
!1187 = !DILocation(line: 415, column: 11, scope: !996)
!1188 = !DILocation(line: 417, column: 11, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 416, column: 9)
!1190 = !DILocation(line: 0, scope: !996)
!1191 = !DILocation(line: 419, column: 19, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 419, column: 19)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 418, column: 13)
!1194 = !DILocation(line: 419, column: 22, scope: !1192)
!1195 = !DILocation(line: 419, column: 19, scope: !1193)
!1196 = !DILocation(line: 421, column: 23, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 421, column: 23)
!1198 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 420, column: 17)
!1199 = !DILocation(line: 421, column: 26, scope: !1197)
!1200 = !DILocation(line: 421, column: 23, scope: !1198)
!1201 = !DILocation(line: 422, column: 27, scope: !1197)
!1202 = !DILocation(line: 422, column: 30, scope: !1197)
!1203 = !DILocation(line: 422, column: 21, scope: !1197)
!1204 = !DILocation(line: 423, column: 28, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 423, column: 28)
!1206 = !DILocation(line: 423, column: 31, scope: !1205)
!1207 = !DILocation(line: 423, column: 28, scope: !1197)
!1208 = !DILocation(line: 425, column: 29, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 424, column: 21)
!1210 = !DILocation(line: 425, column: 32, scope: !1209)
!1211 = !DILocation(line: 426, column: 29, scope: !1209)
!1212 = !DILocation(line: 426, column: 32, scope: !1209)
!1213 = !DILocation(line: 427, column: 21, scope: !1209)
!1214 = !DILocation(line: 430, column: 29, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 429, column: 21)
!1216 = !DILocation(line: 430, column: 32, scope: !1215)
!1217 = !DILocation(line: 431, column: 29, scope: !1215)
!1218 = !DILocation(line: 431, column: 32, scope: !1215)
!1219 = !DILocation(line: 432, column: 27, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 432, column: 27)
!1221 = !DILocation(line: 432, column: 30, scope: !1220)
!1222 = !DILocation(line: 432, column: 27, scope: !1215)
!1223 = !DILocation(line: 434, column: 31, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 434, column: 31)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 433, column: 25)
!1226 = !DILocation(line: 434, column: 34, scope: !1224)
!1227 = !DILocation(line: 434, column: 31, scope: !1225)
!1228 = !DILocation(line: 435, column: 40, scope: !1224)
!1229 = !DILocation(line: 435, column: 43, scope: !1224)
!1230 = !DILocation(line: 435, column: 35, scope: !1224)
!1231 = !DILocation(line: 435, column: 38, scope: !1224)
!1232 = !DILocation(line: 435, column: 29, scope: !1224)
!1233 = !DILocation(line: 438, column: 37, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 437, column: 29)
!1235 = !DILocation(line: 438, column: 40, scope: !1234)
!1236 = !DILocation(line: 439, column: 37, scope: !1234)
!1237 = !DILocation(line: 439, column: 40, scope: !1234)
!1238 = !DILocation(line: 441, column: 25, scope: !1225)
!1239 = !DILocation(line: 444, column: 33, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 443, column: 25)
!1241 = !DILocation(line: 444, column: 36, scope: !1240)
!1242 = !DILocation(line: 445, column: 38, scope: !1240)
!1243 = !DILocation(line: 445, column: 41, scope: !1240)
!1244 = !DILocation(line: 445, column: 47, scope: !1240)
!1245 = !DILocation(line: 445, column: 33, scope: !1240)
!1246 = !DILocation(line: 445, column: 36, scope: !1240)
!1247 = !DILocation(line: 448, column: 17, scope: !1198)
!1248 = !DILocation(line: 449, column: 24, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 449, column: 24)
!1250 = !DILocation(line: 449, column: 27, scope: !1249)
!1251 = !DILocation(line: 449, column: 35, scope: !1249)
!1252 = !DILocation(line: 449, column: 39, scope: !1249)
!1253 = !DILocation(line: 449, column: 24, scope: !1192)
!1254 = !DILocation(line: 450, column: 23, scope: !1249)
!1255 = !DILocation(line: 450, column: 26, scope: !1249)
!1256 = !DILocation(line: 450, column: 17, scope: !1249)
!1257 = !DILocation(line: 451, column: 24, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 451, column: 24)
!1259 = !DILocation(line: 451, column: 27, scope: !1258)
!1260 = !DILocation(line: 451, column: 24, scope: !1249)
!1261 = !DILocation(line: 454, column: 19, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 452, column: 17)
!1263 = !DILocation(line: 458, column: 25, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 457, column: 17)
!1265 = !DILocation(line: 458, column: 28, scope: !1264)
!1266 = !DILocation(line: 459, column: 30, scope: !1264)
!1267 = !DILocation(line: 459, column: 33, scope: !1264)
!1268 = !DILocation(line: 459, column: 25, scope: !1264)
!1269 = !DILocation(line: 459, column: 28, scope: !1264)
!1270 = !DILocation(line: 462, column: 25, scope: !1193)
!1271 = !DILocation(line: 462, column: 20, scope: !1193)
!1272 = distinct !{!1272, !1188, !1273, !521}
!1273 = !DILocation(line: 463, column: 13, scope: !1189)
!1274 = !DILocation(line: 464, column: 9, scope: !1189)
!1275 = !DILocation(line: 468, column: 11, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 466, column: 9)
!1277 = !DILocation(line: 470, column: 19, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 470, column: 19)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 469, column: 13)
!1280 = !DILocation(line: 470, column: 22, scope: !1278)
!1281 = !DILocation(line: 470, column: 30, scope: !1278)
!1282 = !DILocation(line: 470, column: 33, scope: !1278)
!1283 = !DILocation(line: 470, column: 19, scope: !1279)
!1284 = !DILocation(line: 472, column: 25, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 471, column: 17)
!1286 = !DILocation(line: 472, column: 28, scope: !1285)
!1287 = !DILocation(line: 473, column: 30, scope: !1285)
!1288 = !DILocation(line: 473, column: 33, scope: !1285)
!1289 = !DILocation(line: 473, column: 25, scope: !1285)
!1290 = !DILocation(line: 473, column: 28, scope: !1285)
!1291 = !DILocation(line: 474, column: 17, scope: !1285)
!1292 = !DILocation(line: 475, column: 24, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 475, column: 24)
!1294 = !DILocation(line: 475, column: 27, scope: !1293)
!1295 = !DILocation(line: 475, column: 24, scope: !1278)
!1296 = !DILocation(line: 477, column: 23, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 477, column: 23)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 476, column: 17)
!1299 = !DILocation(line: 477, column: 26, scope: !1297)
!1300 = !DILocation(line: 477, column: 34, scope: !1297)
!1301 = !DILocation(line: 477, column: 37, scope: !1297)
!1302 = !DILocation(line: 477, column: 43, scope: !1297)
!1303 = !DILocation(line: 477, column: 51, scope: !1297)
!1304 = !DILocation(line: 477, column: 54, scope: !1297)
!1305 = !DILocation(line: 477, column: 23, scope: !1298)
!1306 = !DILocation(line: 479, column: 32, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 479, column: 27)
!1308 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 478, column: 21)
!1309 = !DILocation(line: 479, column: 27, scope: !1308)
!1310 = !DILocation(line: 480, column: 36, scope: !1307)
!1311 = !DILocation(line: 480, column: 25, scope: !1307)
!1312 = !DILocation(line: 483, column: 33, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 482, column: 25)
!1314 = !DILocation(line: 483, column: 36, scope: !1313)
!1315 = !DILocation(line: 484, column: 33, scope: !1313)
!1316 = !DILocation(line: 484, column: 36, scope: !1313)
!1317 = !DILocation(line: 486, column: 21, scope: !1308)
!1318 = !DILocation(line: 488, column: 27, scope: !1297)
!1319 = !DILocation(line: 488, column: 30, scope: !1297)
!1320 = !DILocation(line: 489, column: 17, scope: !1298)
!1321 = !DILocation(line: 493, column: 19, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 491, column: 17)
!1323 = !DILocation(line: 496, column: 25, scope: !1279)
!1324 = !DILocation(line: 496, column: 20, scope: !1279)
!1325 = distinct !{!1325, !1275, !1326, !521}
!1326 = !DILocation(line: 497, column: 13, scope: !1276)
!1327 = distinct !{!1327, !1008, !1328, !521}
!1328 = !DILocation(line: 499, column: 5, scope: !972)
!1329 = !DILocation(line: 500, column: 1, scope: !972)
!1330 = distinct !DISubprogram(name: "alignfree", scope: !934, file: !934, line: 64, type: !1331, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1333)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !93}
!1333 = !{!1334}
!1334 = !DILocalVariable(name: "ptr", arg: 1, scope: !1330, file: !934, line: 64, type: !93)
!1335 = !DILocation(line: 0, scope: !1330)
!1336 = !DILocation(line: 66, column: 3, scope: !1330)
!1337 = !DILocation(line: 67, column: 1, scope: !1330)
!1338 = !DISubprogram(name: "close", linkageName: "\01_close", scope: !863, file: !863, line: 437, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!52, !52}
!1341 = !DISubprogram(name: "full_write", scope: !1342, file: !1342, line: 29, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!1342 = !DIFile(filename: "../lib/full-write.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!99, !52, !1345, !99}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1347 = !DISubprogram(name: "rpl_free", scope: !1348, file: !1348, line: 756, type: !1331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!1348 = !DIFile(filename: "./lib/stdlib.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1349 = !DISubprogram(name: "ioctl", scope: !1350, file: !1350, line: 97, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!1350 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/ioctl.h", directory: "")
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!52, !52, !103, null}
!1353 = !DISubprogram(name: "quotearg_style", scope: !63, file: !63, line: 383, type: !1354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!54, !62, !91}
!1356 = distinct !DISubprogram(name: "write_pending", scope: !2, file: !2, line: 191, type: !1357, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !54, !53}
!1359 = !{!1360, !1361, !1362}
!1360 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1356, file: !2, line: 191, type: !54)
!1361 = !DILocalVariable(name: "bpout", arg: 2, scope: !1356, file: !2, line: 191, type: !53)
!1362 = !DILocalVariable(name: "n_write", scope: !1356, file: !2, line: 193, type: !94)
!1363 = !DILocation(line: 0, scope: !1356)
!1364 = !DILocation(line: 193, column: 19, scope: !1356)
!1365 = !DILocation(line: 193, column: 26, scope: !1356)
!1366 = !DILocation(line: 194, column: 9, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 194, column: 7)
!1368 = !DILocation(line: 194, column: 7, scope: !1356)
!1369 = !DILocation(line: 196, column: 11, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 196, column: 11)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 195, column: 5)
!1372 = !DILocation(line: 196, column: 55, scope: !1370)
!1373 = !DILocation(line: 196, column: 11, scope: !1371)
!1374 = !DILocation(line: 197, column: 9, scope: !1370)
!1375 = !DILocation(line: 198, column: 14, scope: !1371)
!1376 = !DILocation(line: 199, column: 5, scope: !1371)
!1377 = !DILocation(line: 200, column: 1, scope: !1356)
!1378 = !DISubprogram(name: "safe_read", scope: !1379, file: !1379, line: 42, type: !1380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!1379 = !DIFile(filename: "../lib/safe-read.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!99, !52, !93, !99}
!1382 = distinct !DISubprogram(name: "next_line_num", scope: !2, file: !2, line: 135, type: !484, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1383)
!1383 = !{!1384}
!1384 = !DILocalVariable(name: "endp", scope: !1382, file: !2, line: 137, type: !54)
!1385 = !DILocation(line: 137, column: 16, scope: !1382)
!1386 = !DILocation(line: 0, scope: !1382)
!1387 = !DILocation(line: 138, column: 3, scope: !1382)
!1388 = !DILocation(line: 140, column: 18, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 140, column: 11)
!1390 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 139, column: 5)
!1391 = !DILocation(line: 140, column: 11, scope: !1389)
!1392 = !DILocation(line: 140, column: 21, scope: !1389)
!1393 = !DILocation(line: 140, column: 11, scope: !1390)
!1394 = !DILocation(line: 141, column: 9, scope: !1389)
!1395 = !DILocation(line: 142, column: 12, scope: !1390)
!1396 = !DILocation(line: 142, column: 15, scope: !1390)
!1397 = !DILocation(line: 143, column: 5, scope: !1390)
!1398 = !DILocation(line: 144, column: 18, scope: !1382)
!1399 = !DILocation(line: 144, column: 15, scope: !1382)
!1400 = distinct !{!1400, !1387, !1401, !520, !521}
!1401 = !DILocation(line: 144, column: 32, scope: !1382)
!1402 = !DILocation(line: 146, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 146, column: 7)
!1404 = !DILocation(line: 146, column: 22, scope: !1403)
!1405 = !DILocation(line: 146, column: 7, scope: !1382)
!1406 = !DILocation(line: 147, column: 6, scope: !1403)
!1407 = !DILocation(line: 147, column: 23, scope: !1403)
!1408 = !DILocation(line: 147, column: 5, scope: !1403)
!1409 = !DILocation(line: 149, column: 15, scope: !1403)
!1410 = !DILocation(line: 150, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 150, column: 7)
!1412 = !DILocation(line: 150, column: 24, scope: !1411)
!1413 = !DILocation(line: 150, column: 22, scope: !1411)
!1414 = !DILocation(line: 150, column: 7, scope: !1382)
!1415 = !DILocation(line: 151, column: 19, scope: !1411)
!1416 = !DILocation(line: 151, column: 5, scope: !1411)
!1417 = !DILocation(line: 152, column: 1, scope: !1382)
!1418 = !DISubprogram(name: "stpcpy", scope: !549, file: !549, line: 130, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!54, !54, !91}
!1421 = !DISubprogram(name: "copy_file_range", scope: !1422, file: !1422, line: 956, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !476)
!1422 = !DIFile(filename: "./lib/unistd.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!883, !52, !1425, !52, !1425, !99, !64}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!1426 = distinct !DISubprogram(name: "is_ENOTSUP", scope: !58, file: !58, line: 786, type: !1427, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1429)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!274, !52}
!1429 = !{!1430}
!1430 = !DILocalVariable(name: "err", arg: 1, scope: !1426, file: !58, line: 786, type: !52)
!1431 = !DILocation(line: 0, scope: !1426)
!1432 = !DILocation(line: 788, column: 14, scope: !1426)
!1433 = !DILocation(line: 788, column: 28, scope: !1426)
!1434 = !DILocation(line: 788, column: 61, scope: !1426)
!1435 = !DILocation(line: 788, column: 3, scope: !1426)
!1436 = distinct !DISubprogram(name: "set_binary_mode", scope: !1437, file: !1437, line: 66, type: !1438, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1440)
!1437 = !DIFile(filename: "../lib/binary-io.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!52, !52, !52}
!1440 = !{!1441, !1442}
!1441 = !DILocalVariable(name: "fd", arg: 1, scope: !1436, file: !1437, line: 66, type: !52)
!1442 = !DILocalVariable(name: "mode", arg: 2, scope: !1436, file: !1437, line: 66, type: !52)
!1443 = !DILocation(line: 0, scope: !1436)
!1444 = !DILocation(line: 68, column: 10, scope: !1436)
!1445 = !DILocation(line: 68, column: 3, scope: !1436)
!1446 = distinct !DISubprogram(name: "xset_binary_mode_error", scope: !849, file: !849, line: 33, type: !484, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !476)
!1447 = !DILocation(line: 33, column: 55, scope: !1446)
!1448 = distinct !DISubprogram(name: "__gl_setmode", scope: !1437, file: !1437, line: 50, type: !1438, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1449)
!1449 = !{!1450, !1451}
!1450 = !DILocalVariable(name: "fd", arg: 1, scope: !1448, file: !1437, line: 50, type: !52)
!1451 = !DILocalVariable(name: "mode", arg: 2, scope: !1448, file: !1437, line: 50, type: !52)
!1452 = !DILocation(line: 0, scope: !1448)
!1453 = !DILocation(line: 52, column: 3, scope: !1448)
!1454 = distinct !DISubprogram(name: "count_leading_zeros_ll", scope: !1455, file: !1455, line: 114, type: !1456, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1458)
!1455 = !DIFile(filename: "../lib/count-leading-zeros.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!52, !301}
!1458 = !{!1459}
!1459 = !DILocalVariable(name: "x", arg: 1, scope: !1454, file: !1455, line: 114, type: !301)
!1460 = !DILocation(line: 0, scope: !1454)
!1461 = !DILocation(line: 125, column: 3, scope: !1454)
