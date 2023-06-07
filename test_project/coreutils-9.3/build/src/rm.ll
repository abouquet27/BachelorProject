; ModuleID = 'coreutils-9.3/build/src/rm.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.dev_ino = type { i64, i32 }
%struct.infomap = type { ptr, ptr }
%struct.rm_options = type { i8, i32, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [160 x i8] c"Remove (unlink) the FILE(s).\0A\0A  -f, --force           ignore nonexistent files and arguments, never prompt\0A  -i                    prompt before every removal\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [376 x i8] c"  -I                    prompt once before removing more than three files, or\0A                          when removing recursively; less intrusive than -i,\0A                          while still giving protection against most mistakes\0A      --interactive[=WHEN]  prompt according to WHEN: never, once (-I), or\0A                          always (-i); without WHEN, prompt always\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [224 x i8] c"      --one-file-system  when removing a hierarchy recursively, skip any\0A                          directory that is on a file system different from\0A                          that of the corresponding command line argument\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [254 x i8] c"      --no-preserve-root  do not treat '/' specially\0A      --preserve-root[=all]  do not remove '/' (default);\0A                              with 'all', reject any command line argument\0A                              on a separate device from its parent\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [175 x i8] c"  -r, -R, --recursive   remove directories and their contents recursively\0A  -d, --dir             remove empty directories\0A  -v, --verbose         explain what is being done\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [155 x i8] c"\0ABy default, rm does not remove directories.  Use the --recursive (-r or -R)\0Aoption to remove each listed directory, too, along with all of its contents.\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [122 x i8] c"\0ATo remove a file whose name starts with a '-', for example '-foo',\0Ause one of these commands:\0A  %s -- -foo\0A\0A  %s ./-foo\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [229 x i8] c"\0ANote that if you use rm to remove a file, it might be possible to recover\0Asome of its contents, given sufficient expertise and/or time.  For greater\0Aassurance that the contents are truly unrecoverable, consider using shred(1).\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [3 x i8] c"rm\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !67
@.str.14 = private unnamed_addr constant [8 x i8] c"dfirvIR\00", align 1, !dbg !72
@long_opts = internal constant [12 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.51, i32 0, ptr null, i32 102 }, %struct.rpl_option { ptr @.str.52, i32 2, ptr null, i32 128 }, %struct.rpl_option { ptr @.str.53, i32 0, ptr null, i32 129 }, %struct.rpl_option { ptr @.str.54, i32 0, ptr null, i32 130 }, %struct.rpl_option { ptr @.str.55, i32 2, ptr null, i32 131 }, %struct.rpl_option { ptr @.str.56, i32 0, ptr null, i32 132 }, %struct.rpl_option { ptr @.str.57, i32 0, ptr null, i32 114 }, %struct.rpl_option { ptr @.str.58, i32 0, ptr null, i32 100 }, %struct.rpl_option { ptr @.str.59, i32 0, ptr null, i32 118 }, %struct.rpl_option { ptr @.str.60, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.61, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !77
@rpl_optarg = external global ptr, align 8
@interactive_types = internal constant [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 2, i32 2], align 16, !dbg !369
@.str.15 = private unnamed_addr constant [14 x i8] c"--interactive\00", align 1, !dbg !146
@interactive_args = internal constant [7 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr null], align 16, !dbg !388
@argmatch_die = external global ptr, align 8
@rpl_optind = external global i32, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"--no-preserve-root\00", align 1, !dbg !151
@.str.17 = private unnamed_addr constant [53 x i8] c"you may not abbreviate the --no-preserve-root option\00", align 1, !dbg !156
@.str.18 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !161
@.str.19 = private unnamed_addr constant [42 x i8] c"unrecognized --preserve-root argument: %s\00", align 1, !dbg !166
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !171
@Version = external global ptr, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1, !dbg !173
@.str.22 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !178
@.str.23 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1, !dbg !183
@.str.24 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !188
@.str.25 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !193
@main.dev_ino_buf = internal global %struct.dev_ino zeroinitializer, align 8, !dbg !195
@.str.26 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1, !dbg !246
@.str.27 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !251
@.str.28 = private unnamed_addr constant [39 x i8] c"%s: remove %ju arguments recursively? \00", align 1, !dbg !256
@.str.29 = private unnamed_addr constant [38 x i8] c"%s: remove %ju argument recursively? \00", align 1, !dbg !258
@.str.30 = private unnamed_addr constant [27 x i8] c"%s: remove %ju arguments? \00", align 1, !dbg !263
@.str.31 = private unnamed_addr constant [26 x i8] c"%s: remove %ju argument? \00", align 1, !dbg !268
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !273
@.str.32 = private unnamed_addr constant [5 x i8] c"rm.c\00", align 1, !dbg !278
@.str.33 = private unnamed_addr constant [22 x i8] c"VALID_STATUS (status)\00", align 1, !dbg !281
@.str.34 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !286
@.str.35 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !288
@.str.36 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !290
@.str.37 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !295
@.str.38 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !297
@.str.39 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !299
@.str.40 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !304
@.str.41 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !306
@.str.42 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !308
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.34, ptr @.str.35 }, %struct.infomap { ptr @.str.36, ptr @.str.37 }, %struct.infomap { ptr @.str.38, ptr @.str.39 }, %struct.infomap { ptr @.str.40, ptr @.str.39 }, %struct.infomap { ptr @.str.41, ptr @.str.39 }, %struct.infomap { ptr @.str.42, ptr @.str.39 }, %struct.infomap zeroinitializer], align 16
@.str.43 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !310
@.str.44 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !315
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !320
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !322
@.str.47 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !327
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !329
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !331
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !336
@.str.51 = private unnamed_addr constant [6 x i8] c"force\00", align 1, !dbg !341
@.str.52 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1, !dbg !346
@.str.53 = private unnamed_addr constant [16 x i8] c"one-file-system\00", align 1, !dbg !348
@.str.54 = private unnamed_addr constant [17 x i8] c"no-preserve-root\00", align 1, !dbg !350
@.str.55 = private unnamed_addr constant [14 x i8] c"preserve-root\00", align 1, !dbg !355
@.str.56 = private unnamed_addr constant [19 x i8] c"-presume-input-tty\00", align 1, !dbg !357
@.str.57 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1, !dbg !359
@.str.58 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !361
@.str.59 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !363
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !365
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !367
@.str.62 = private unnamed_addr constant [6 x i8] c"never\00", align 1, !dbg !373
@.str.63 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !375
@.str.64 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !377
@.str.65 = private unnamed_addr constant [5 x i8] c"once\00", align 1, !dbg !379
@.str.66 = private unnamed_addr constant [7 x i8] c"always\00", align 1, !dbg !381
@.str.67 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !386
@.str.68 = private unnamed_addr constant [38 x i8] c"Try '%s ./%s' to remove the file %s.\0A\00", align 1, !dbg !392

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !411 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !415, metadata !DIExpression()), !dbg !416
  %2 = icmp ne i32 %0, 0, !dbg !417
  br i1 %2, label %3, label %9, !dbg !419

3:                                                ; preds = %1
  br label %4, !dbg !420

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !421, !tbaa !423
  %6 = load ptr, ptr @program_name, align 8, !dbg !421, !tbaa !423
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !421
  br label %8, !dbg !421

8:                                                ; preds = %4
  br label %33, !dbg !421

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !427, !tbaa !423
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !429
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !430, !tbaa !423
  %13 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %12), !dbg !431
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !432, !tbaa !423
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %14), !dbg !433
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !434, !tbaa !423
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %16), !dbg !435
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !436, !tbaa !423
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %18), !dbg !437
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !438, !tbaa !423
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %20), !dbg !439
  %22 = load ptr, ptr @__stdoutp, align 8, !dbg !440, !tbaa !423
  %23 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %22), !dbg !441
  %24 = load ptr, ptr @__stdoutp, align 8, !dbg !442, !tbaa !423
  %25 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %24), !dbg !443
  %26 = load ptr, ptr @__stdoutp, align 8, !dbg !444, !tbaa !423
  %27 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %26), !dbg !445
  %28 = load ptr, ptr @program_name, align 8, !dbg !446, !tbaa !423
  %29 = load ptr, ptr @program_name, align 8, !dbg !447, !tbaa !423
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %28, ptr noundef %29), !dbg !448
  %31 = load ptr, ptr @__stdoutp, align 8, !dbg !449, !tbaa !423
  %32 = call i32 @"\01_fputs"(ptr noundef @.str.11, ptr noundef %31), !dbg !450
  call void @emit_ancillary_info(ptr noundef @.str.12), !dbg !451
  br label %33

33:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #10, !dbg !452
  unreachable, !dbg !452
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !453 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !512 i32 @printf(ptr noundef, ...) #2

declare !dbg !515 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !518 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !522, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #11, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %2, metadata !523, metadata !DIExpression()), !dbg !537
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !537
  call void @llvm.dbg.value(metadata ptr %0, metadata !530, metadata !DIExpression()), !dbg !535
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !538
  call void @llvm.dbg.value(metadata ptr %3, metadata !531, metadata !DIExpression()), !dbg !535
  br label %4, !dbg !539

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !535
  call void @llvm.dbg.value(metadata ptr %.0, metadata !531, metadata !DIExpression()), !dbg !535
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !540
  %6 = load ptr, ptr %5, align 8, !dbg !540, !tbaa !541
  %7 = icmp ne ptr %6, null, !dbg !543
  br i1 %7, label %8, label %14, !dbg !544

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !545
  %10 = load ptr, ptr %9, align 8, !dbg !545, !tbaa !541
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !545
  %12 = icmp eq i32 %11, 0, !dbg !545
  %13 = xor i1 %12, true, !dbg !546
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !535
  br i1 %15, label %16, label %18, !dbg !539

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !547
  call void @llvm.dbg.value(metadata ptr %17, metadata !531, metadata !DIExpression()), !dbg !535
  br label %4, !dbg !539, !llvm.loop !548

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !551
  %20 = load ptr, ptr %19, align 8, !dbg !551, !tbaa !553
  %21 = icmp ne ptr %20, null, !dbg !554
  br i1 %21, label %22, label %25, !dbg !555

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !556
  %24 = load ptr, ptr %23, align 8, !dbg !556, !tbaa !553
  call void @llvm.dbg.value(metadata ptr %24, metadata !530, metadata !DIExpression()), !dbg !535
  br label %25, !dbg !557

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !535
  call void @llvm.dbg.value(metadata ptr %.01, metadata !530, metadata !DIExpression()), !dbg !535
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.43, ptr noundef @.str.20, ptr noundef @.str.44), !dbg !558
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !559
  call void @llvm.dbg.value(metadata ptr %27, metadata !533, metadata !DIExpression()), !dbg !535
  %28 = icmp ne ptr %27, null, !dbg !560
  br i1 %28, label %29, label %35, !dbg !562

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.45, i64 noundef 3), !dbg !563
  %31 = icmp ne i32 %30, 0, !dbg !563
  br i1 %31, label %32, label %35, !dbg !564

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !565, !tbaa !423
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.46, ptr noundef %33), !dbg !567
  br label %35, !dbg !568

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.34), !dbg !569
  %37 = icmp eq i32 %36, 0, !dbg !569
  br i1 %37, label %38, label %39, !dbg !569

38:                                               ; preds = %35
  br label %40, !dbg !569

39:                                               ; preds = %35
  br label %40, !dbg !569

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.47, %38 ], [ %0, %39 ], !dbg !569
  call void @llvm.dbg.value(metadata ptr %41, metadata !534, metadata !DIExpression()), !dbg !535
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.48, ptr noundef @.str.44, ptr noundef %41), !dbg !570
  %43 = icmp eq ptr %.01, %0, !dbg !571
  %44 = zext i1 %43 to i64, !dbg !572
  %45 = select i1 %43, ptr @.str.50, ptr @.str.13, !dbg !572
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.49, ptr noundef %.01, ptr noundef %45), !dbg !573
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #11, !dbg !574
  ret void, !dbg !574
}

; Function Attrs: noreturn
declare !dbg !575 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !577 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !581 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !585 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !197 {
  %3 = alloca %struct.rm_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !202, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata ptr %1, metadata !203, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i8 1, metadata !204, metadata !DIExpression()), !dbg !591
  call void @llvm.lifetime.start.p0(i64 32, ptr %3) #11, !dbg !592
  call void @llvm.dbg.declare(metadata ptr %3, metadata !206, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i8 0, metadata !237, metadata !DIExpression()), !dbg !591
  %4 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !594
  %5 = load ptr, ptr %4, align 8, !dbg !594, !tbaa !423
  call void @set_program_name(ptr noundef %5), !dbg !595
  %6 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.13), !dbg !596
  %7 = call i32 @atexit(ptr noundef @close_stdin), !dbg !597
  call void @rm_option_init(ptr noundef %3), !dbg !598
  %8 = call i32 @priv_set_remove_linkdir(), !dbg !599
  br label %9, !dbg !600

9:                                                ; preds = %81, %2
  %.04 = phi i8 [ 0, %2 ], [ %.2, %81 ], !dbg !601
  %.02 = phi i8 [ 1, %2 ], [ %.13, %81 ], !dbg !602
  call void @llvm.dbg.value(metadata i8 %.02, metadata !204, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i8 %.04, metadata !237, metadata !DIExpression()), !dbg !591
  %10 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.14, ptr noundef @long_opts, ptr noundef null), !dbg !603
  call void @llvm.dbg.value(metadata i32 %10, metadata !238, metadata !DIExpression()), !dbg !591
  %11 = icmp ne i32 %10, -1, !dbg !604
  br i1 %11, label %12, label %82, !dbg !600

12:                                               ; preds = %9
  switch i32 %10, label %80 [
    i32 100, label %13
    i32 102, label %15
    i32 105, label %18
    i32 73, label %21
    i32 114, label %24
    i32 82, label %24
    i32 128, label %26
    i32 129, label %46
    i32 130, label %48
    i32 131, label %58
    i32 132, label %72
    i32 118, label %74
    i32 -130, label %76
    i32 -131, label %77
  ], !dbg !605

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 4, !dbg !606
  store i8 1, ptr %14, align 2, !dbg !607, !tbaa !608
  br label %81, !dbg !611

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 1, !dbg !612
  store i32 5, ptr %16, align 4, !dbg !613, !tbaa !614
  %17 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 0, !dbg !615
  store i8 1, ptr %17, align 8, !dbg !616, !tbaa !617
  call void @llvm.dbg.value(metadata i8 0, metadata !237, metadata !DIExpression()), !dbg !591
  br label %81, !dbg !618

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 1, !dbg !619
  store i32 3, ptr %19, align 4, !dbg !620, !tbaa !614
  %20 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 0, !dbg !621
  store i8 0, ptr %20, align 8, !dbg !622, !tbaa !617
  call void @llvm.dbg.value(metadata i8 0, metadata !237, metadata !DIExpression()), !dbg !591
  br label %81, !dbg !623

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 1, !dbg !624
  store i32 4, ptr %22, align 4, !dbg !625, !tbaa !614
  %23 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 0, !dbg !626
  store i8 0, ptr %23, align 8, !dbg !627, !tbaa !617
  call void @llvm.dbg.value(metadata i8 1, metadata !237, metadata !DIExpression()), !dbg !591
  br label %81, !dbg !628

24:                                               ; preds = %12, %12
  %25 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 3, !dbg !629
  store i8 1, ptr %25, align 1, !dbg !630, !tbaa !631
  br label %81, !dbg !632

26:                                               ; preds = %12
  %27 = load ptr, ptr @rpl_optarg, align 8, !dbg !633, !tbaa !423
  %28 = icmp ne ptr %27, null, !dbg !633
  br i1 %28, label %29, label %35, !dbg !635

29:                                               ; preds = %26
  %30 = load ptr, ptr @rpl_optarg, align 8, !dbg !636, !tbaa !423
  %31 = load ptr, ptr @argmatch_die, align 8, !dbg !636, !tbaa !423
  %32 = call i64 @__xargmatch_internal(ptr noundef @.str.15, ptr noundef %30, ptr noundef @interactive_args, ptr noundef @interactive_types, i64 noundef 4, ptr noundef %31, i1 noundef zeroext true), !dbg !636
  %33 = getelementptr inbounds [6 x i32], ptr @interactive_types, i64 0, i64 %32, !dbg !636
  %34 = load i32, ptr %33, align 4, !dbg !636, !tbaa !637
  call void @llvm.dbg.value(metadata i32 %34, metadata !239, metadata !DIExpression()), !dbg !638
  br label %36, !dbg !639

35:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 2, metadata !239, metadata !DIExpression()), !dbg !638
  br label %36

36:                                               ; preds = %35, %29
  %.01 = phi i32 [ %34, %29 ], [ 2, %35 ], !dbg !640
  call void @llvm.dbg.value(metadata i32 %.01, metadata !239, metadata !DIExpression()), !dbg !638
  switch i32 %.01, label %45 [
    i32 0, label %37
    i32 1, label %39
    i32 2, label %42
  ], !dbg !641

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 1, !dbg !642
  store i32 5, ptr %38, align 4, !dbg !644, !tbaa !614
  call void @llvm.dbg.value(metadata i8 0, metadata !237, metadata !DIExpression()), !dbg !591
  br label %45, !dbg !645

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 1, !dbg !646
  store i32 4, ptr %40, align 4, !dbg !647, !tbaa !614
  %41 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 0, !dbg !648
  store i8 0, ptr %41, align 8, !dbg !649, !tbaa !617
  call void @llvm.dbg.value(metadata i8 1, metadata !237, metadata !DIExpression()), !dbg !591
  br label %45, !dbg !650

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 1, !dbg !651
  store i32 3, ptr %43, align 4, !dbg !652, !tbaa !614
  %44 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 0, !dbg !653
  store i8 0, ptr %44, align 8, !dbg !654, !tbaa !617
  call void @llvm.dbg.value(metadata i8 0, metadata !237, metadata !DIExpression()), !dbg !591
  br label %45, !dbg !655

45:                                               ; preds = %42, %39, %37, %36
  %.15 = phi i8 [ %.04, %36 ], [ 0, %42 ], [ 1, %39 ], [ 0, %37 ], !dbg !591
  call void @llvm.dbg.value(metadata i8 %.15, metadata !237, metadata !DIExpression()), !dbg !591
  br label %81

46:                                               ; preds = %12
  %47 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 2, !dbg !656
  store i8 1, ptr %47, align 8, !dbg !657, !tbaa !658
  br label %81, !dbg !659

48:                                               ; preds = %12
  %49 = load i32, ptr @rpl_optind, align 4, !dbg !660, !tbaa !662
  %50 = sub nsw i32 %49, 1, !dbg !660
  %51 = sext i32 %50 to i64, !dbg !660
  %52 = getelementptr inbounds ptr, ptr %1, i64 %51, !dbg !660
  %53 = load ptr, ptr %52, align 8, !dbg !660, !tbaa !423
  %54 = call i32 @strcmp(ptr noundef %53, ptr noundef @.str.16), !dbg !660
  %55 = icmp eq i32 %54, 0, !dbg !660
  br i1 %55, label %57, label %56, !dbg !664

56:                                               ; preds = %48
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.17), !dbg !665
  unreachable, !dbg !665

57:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8 0, metadata !204, metadata !DIExpression()), !dbg !591
  br label %81, !dbg !666

58:                                               ; preds = %12
  %59 = load ptr, ptr @rpl_optarg, align 8, !dbg !667, !tbaa !423
  %60 = icmp ne ptr %59, null, !dbg !667
  br i1 %60, label %61, label %71, !dbg !669

61:                                               ; preds = %58
  %62 = load ptr, ptr @rpl_optarg, align 8, !dbg !670, !tbaa !423
  %63 = call i32 @strcmp(ptr noundef %62, ptr noundef @.str.18), !dbg !670
  %64 = icmp eq i32 %63, 0, !dbg !670
  br i1 %64, label %65, label %67, !dbg !673

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 6, !dbg !674
  store i8 1, ptr %66, align 8, !dbg !675, !tbaa !676
  br label %70, !dbg !677

67:                                               ; preds = %61
  %68 = load ptr, ptr @rpl_optarg, align 8, !dbg !678, !tbaa !423
  %69 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %68), !dbg !678
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.19, ptr noundef %69), !dbg !678
  unreachable, !dbg !678

70:                                               ; preds = %65
  br label %71, !dbg !680

71:                                               ; preds = %70, %58
  call void @llvm.dbg.value(metadata i8 1, metadata !204, metadata !DIExpression()), !dbg !591
  br label %81, !dbg !681

72:                                               ; preds = %12
  %73 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 7, !dbg !682
  store i8 1, ptr %73, align 1, !dbg !683, !tbaa !684
  br label %81, !dbg !685

74:                                               ; preds = %12
  %75 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 8, !dbg !686
  store i8 1, ptr %75, align 2, !dbg !687, !tbaa !688
  br label %81, !dbg !689

76:                                               ; preds = %12
  call void @usage(i32 noundef 0) #10, !dbg !690
  unreachable, !dbg !690

77:                                               ; preds = %12
  %78 = load ptr, ptr @__stdoutp, align 8, !dbg !691, !tbaa !423
  %79 = load ptr, ptr @Version, align 8, !dbg !691, !tbaa !423
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %78, ptr noundef @.str.12, ptr noundef @.str.20, ptr noundef %79, ptr noundef @.str.21, ptr noundef @.str.22, ptr noundef @.str.23, ptr noundef @.str.24, ptr noundef null), !dbg !691
  call void @exit(i32 noundef 0) #10, !dbg !691
  unreachable, !dbg !691

80:                                               ; preds = %12
  call void @diagnose_leading_hyphen(i32 noundef %0, ptr noundef %1), !dbg !692
  call void @usage(i32 noundef 1) #10, !dbg !693
  unreachable, !dbg !693

81:                                               ; preds = %74, %72, %71, %57, %46, %45, %24, %21, %18, %15, %13
  %.2 = phi i8 [ %.04, %74 ], [ %.04, %72 ], [ %.04, %71 ], [ %.04, %57 ], [ %.04, %46 ], [ %.15, %45 ], [ %.04, %24 ], [ 1, %21 ], [ 0, %18 ], [ 0, %15 ], [ %.04, %13 ], !dbg !591
  %.13 = phi i8 [ %.02, %74 ], [ %.02, %72 ], [ 1, %71 ], [ 0, %57 ], [ %.02, %46 ], [ %.02, %45 ], [ %.02, %24 ], [ %.02, %21 ], [ %.02, %18 ], [ %.02, %15 ], [ %.02, %13 ], !dbg !591
  call void @llvm.dbg.value(metadata i8 %.13, metadata !204, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i8 %.2, metadata !237, metadata !DIExpression()), !dbg !591
  br label %9, !dbg !600, !llvm.loop !694

82:                                               ; preds = %9
  %83 = load i32, ptr @rpl_optind, align 4, !dbg !696, !tbaa !662
  %84 = icmp sle i32 %0, %83, !dbg !698
  br i1 %84, label %85, label %91, !dbg !699

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 0, !dbg !700
  %87 = load i8, ptr %86, align 8, !dbg !700, !tbaa !617, !range !703, !noundef !511
  %88 = trunc i8 %87 to i1, !dbg !700
  br i1 %88, label %89, label %90, !dbg !704

89:                                               ; preds = %85
  br label %168, !dbg !705

90:                                               ; preds = %85
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.25), !dbg !706
  call void @usage(i32 noundef 1) #10, !dbg !708
  unreachable, !dbg !708

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 3, !dbg !709
  %93 = load i8, ptr %92, align 1, !dbg !709, !tbaa !631, !range !703, !noundef !511
  %94 = trunc i8 %93 to i1, !dbg !709
  br i1 %94, label %95, label %108, !dbg !711

95:                                               ; preds = %91
  %96 = trunc i8 %.02 to i1, !dbg !712
  br i1 %96, label %97, label %108, !dbg !713

97:                                               ; preds = %95
  %98 = call ptr @get_root_dev_ino(ptr noundef @main.dev_ino_buf), !dbg !714
  %99 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 5, !dbg !716
  store ptr %98, ptr %99, align 8, !dbg !717, !tbaa !718
  %100 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 5, !dbg !719
  %101 = load ptr, ptr %100, align 8, !dbg !719, !tbaa !718
  %102 = icmp eq ptr %101, null, !dbg !721
  br i1 %102, label %103, label %107, !dbg !722

103:                                              ; preds = %97
  %104 = call ptr @__error(), !dbg !723
  %105 = load i32, ptr %104, align 4, !dbg !723, !tbaa !662
  %106 = call ptr @quotearg_style(i32 noundef 4, ptr noundef @.str.27), !dbg !723
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %105, ptr noundef @.str.26, ptr noundef %106), !dbg !723
  unreachable, !dbg !723

107:                                              ; preds = %97
  br label %108, !dbg !724

108:                                              ; preds = %107, %95, %91
  %109 = load i32, ptr @rpl_optind, align 4, !dbg !725, !tbaa !662
  %110 = sub nsw i32 %0, %109, !dbg !726
  %111 = sext i32 %110 to i64, !dbg !727
  call void @llvm.dbg.value(metadata i64 %111, metadata !243, metadata !DIExpression()), !dbg !591
  %112 = load i32, ptr @rpl_optind, align 4, !dbg !728, !tbaa !662
  %113 = sext i32 %112 to i64, !dbg !729
  %114 = getelementptr inbounds ptr, ptr %1, i64 %113, !dbg !729
  call void @llvm.dbg.value(metadata ptr %114, metadata !244, metadata !DIExpression()), !dbg !591
  %115 = trunc i8 %.04 to i1, !dbg !730
  br i1 %115, label %116, label %144, !dbg !732

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 3, !dbg !733
  %118 = load i8, ptr %117, align 1, !dbg !733, !tbaa !631, !range !703, !noundef !511
  %119 = trunc i8 %118 to i1, !dbg !733
  br i1 %119, label %122, label %120, !dbg !734

120:                                              ; preds = %116
  %121 = icmp ult i64 3, %111, !dbg !735
  br i1 %121, label %122, label %144, !dbg !736

122:                                              ; preds = %120, %116
  %123 = load ptr, ptr @__stderrp, align 8, !dbg !737, !tbaa !423
  %124 = getelementptr inbounds %struct.rm_options, ptr %3, i32 0, i32 3, !dbg !739
  %125 = load i8, ptr %124, align 1, !dbg !739, !tbaa !631, !range !703, !noundef !511
  %126 = trunc i8 %125 to i1, !dbg !739
  br i1 %126, label %127, label %132, !dbg !740

127:                                              ; preds = %122
  %128 = call i64 @select_plural(i64 noundef %111), !dbg !741
  %129 = icmp eq i64 %128, 1, !dbg !741
  %130 = zext i1 %129 to i64, !dbg !741
  %131 = select i1 %129, ptr @.str.29, ptr @.str.28, !dbg !741
  br label %137, !dbg !740

132:                                              ; preds = %122
  %133 = call i64 @select_plural(i64 noundef %111), !dbg !742
  %134 = icmp eq i64 %133, 1, !dbg !742
  %135 = zext i1 %134 to i64, !dbg !742
  %136 = select i1 %134, ptr @.str.31, ptr @.str.30, !dbg !742
  br label %137, !dbg !740

137:                                              ; preds = %132, %127
  %138 = phi ptr [ %131, %127 ], [ %136, %132 ], !dbg !740
  %139 = load ptr, ptr @program_name, align 8, !dbg !743, !tbaa !423
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef %138, ptr noundef %139, i64 noundef %111), !dbg !744
  %141 = call zeroext i1 @yesno(), !dbg !745
  br i1 %141, label %143, label %142, !dbg !747

142:                                              ; preds = %137
  br label %167, !dbg !748

143:                                              ; preds = %137
  br label %144, !dbg !749

144:                                              ; preds = %143, %120, %108
  %145 = call i32 @rm(ptr noundef %114, ptr noundef %3), !dbg !750
  call void @llvm.dbg.value(metadata i32 %145, metadata !245, metadata !DIExpression()), !dbg !591
  %146 = icmp eq i32 %145, 2, !dbg !751
  br i1 %146, label %153, label %147, !dbg !751

147:                                              ; preds = %144
  %148 = icmp eq i32 %145, 3, !dbg !751
  br i1 %148, label %153, label %149, !dbg !751

149:                                              ; preds = %147
  %150 = icmp eq i32 %145, 4, !dbg !751
  br i1 %150, label %153, label %151, !dbg !751

151:                                              ; preds = %149
  %152 = icmp eq i32 %145, 5, !dbg !751
  br label %153, !dbg !751

153:                                              ; preds = %151, %149, %147, %144
  %154 = phi i1 [ true, %149 ], [ true, %147 ], [ true, %144 ], [ %152, %151 ]
  %155 = xor i1 %154, true, !dbg !751
  %156 = zext i1 %155 to i32, !dbg !751
  %157 = sext i32 %156 to i64, !dbg !751
  %158 = call i64 @llvm.expect.i64(i64 %157, i64 0), !dbg !751
  %159 = icmp ne i64 %158, 0, !dbg !751
  br i1 %159, label %160, label %162, !dbg !751

160:                                              ; preds = %153
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.32, i32 noundef 371, ptr noundef @.str.33) #12, !dbg !751
  unreachable, !dbg !751

161:                                              ; No predecessors!
  br label %163, !dbg !751

162:                                              ; preds = %153
  br label %163, !dbg !751

163:                                              ; preds = %162, %161
  %164 = icmp eq i32 %145, 5, !dbg !752
  %165 = zext i1 %164 to i64, !dbg !753
  %166 = select i1 %164, i32 1, i32 0, !dbg !753
  br label %167

167:                                              ; preds = %163, %142
  %.0 = phi i32 [ %166, %163 ], [ 0, %142 ], !dbg !591
  br label %168

168:                                              ; preds = %167, %89
  %.1 = phi i32 [ 0, %89 ], [ %.0, %167 ], !dbg !591
  call void @llvm.lifetime.end.p0(i64 32, ptr %3) #11, !dbg !754
  ret i32 %.1, !dbg !754
}

declare !dbg !755 void @set_program_name(ptr noundef) #2

declare void @close_stdin() #2

declare !dbg !757 i32 @atexit(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @rm_option_init(ptr noundef %0) #7 !dbg !763 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !768, metadata !DIExpression()), !dbg !769
  %2 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 0, !dbg !770
  store i8 0, ptr %2, align 8, !dbg !771, !tbaa !617
  %3 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 1, !dbg !772
  store i32 4, ptr %3, align 4, !dbg !773, !tbaa !614
  %4 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 2, !dbg !774
  store i8 0, ptr %4, align 8, !dbg !775, !tbaa !658
  %5 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 4, !dbg !776
  store i8 0, ptr %5, align 2, !dbg !777, !tbaa !608
  %6 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 3, !dbg !778
  store i8 0, ptr %6, align 1, !dbg !779, !tbaa !631
  %7 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 5, !dbg !780
  store ptr null, ptr %7, align 8, !dbg !781, !tbaa !718
  %8 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 6, !dbg !782
  store i8 0, ptr %8, align 8, !dbg !783, !tbaa !676
  %9 = call i32 @isatty(i32 noundef 0), !dbg !784
  %10 = icmp ne i32 %9, 0, !dbg !784
  %11 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 7, !dbg !785
  %12 = zext i1 %10 to i8, !dbg !786
  store i8 %12, ptr %11, align 1, !dbg !786, !tbaa !684
  %13 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 8, !dbg !787
  store i8 0, ptr %13, align 2, !dbg !788, !tbaa !688
  %14 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 9, !dbg !789
  store i8 0, ptr %14, align 1, !dbg !790, !tbaa !791
  ret void, !dbg !792
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @priv_set_remove_linkdir() #3 !dbg !793 {
  ret i32 -1, !dbg !797
}

declare !dbg !798 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !802 i64 @__xargmatch_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #2

declare !dbg !811 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !815 ptr @quotearg_style(i32 noundef, ptr noundef) #2

declare !dbg !818 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal void @diagnose_leading_hyphen(i32 noundef %0, ptr noundef %1) #7 !dbg !822 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !826, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata ptr %1, metadata !827, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i32 1, metadata !828, metadata !DIExpression()), !dbg !885
  br label %4, !dbg !886

4:                                                ; preds = %33, %2
  %.01 = phi i32 [ 1, %2 ], [ %34, %33 ], !dbg !887
  call void @llvm.dbg.value(metadata i32 %.01, metadata !828, metadata !DIExpression()), !dbg !885
  %5 = icmp slt i32 %.01, %0, !dbg !888
  br i1 %5, label %7, label %6, !dbg !889

6:                                                ; preds = %4
  br label %35, !dbg !889

7:                                                ; preds = %4
  %8 = sext i32 %.01 to i64, !dbg !890
  %9 = getelementptr inbounds ptr, ptr %1, i64 %8, !dbg !890
  %10 = load ptr, ptr %9, align 8, !dbg !890, !tbaa !423
  call void @llvm.dbg.value(metadata ptr %10, metadata !830, metadata !DIExpression()), !dbg !891
  call void @llvm.lifetime.start.p0(i64 144, ptr %3) #11, !dbg !892
  call void @llvm.dbg.declare(metadata ptr %3, metadata !833, metadata !DIExpression()), !dbg !893
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !894
  %12 = load i8, ptr %11, align 1, !dbg !894, !tbaa !637
  %13 = sext i8 %12 to i32, !dbg !894
  %14 = icmp eq i32 %13, 45, !dbg !896
  br i1 %14, label %15, label %30, !dbg !897

15:                                               ; preds = %7
  %16 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !898
  %17 = load i8, ptr %16, align 1, !dbg !898, !tbaa !637
  %18 = sext i8 %17 to i32, !dbg !898
  %19 = icmp ne i32 %18, 0, !dbg !898
  br i1 %19, label %20, label %30, !dbg !899

20:                                               ; preds = %15
  %21 = call i32 @rpl_lstat(ptr noundef %10, ptr noundef %3), !dbg !900
  %22 = icmp eq i32 %21, 0, !dbg !901
  br i1 %22, label %23, label %30, !dbg !902

23:                                               ; preds = %20
  %24 = load ptr, ptr @__stderrp, align 8, !dbg !903, !tbaa !423
  %25 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !905
  %26 = load ptr, ptr %25, align 8, !dbg !905, !tbaa !423
  %27 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 3, ptr noundef %10), !dbg !906
  %28 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %10), !dbg !907
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.68, ptr noundef %26, ptr noundef %27, ptr noundef %28), !dbg !908
  br label %31, !dbg !909

30:                                               ; preds = %20, %15, %7
  br label %31, !dbg !910

31:                                               ; preds = %30, %23
  %.0 = phi i32 [ 2, %23 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr %3) #11, !dbg !910
  switch i32 %.0, label %35 [
    i32 0, label %32
  ]

32:                                               ; preds = %31
  br label %33, !dbg !911

33:                                               ; preds = %32
  %34 = add nsw i32 %.01, 1, !dbg !912
  call void @llvm.dbg.value(metadata i32 %34, metadata !828, metadata !DIExpression()), !dbg !885
  br label %4, !dbg !913, !llvm.loop !914

35:                                               ; preds = %31, %6
  br label %36

36:                                               ; preds = %35
  ret void, !dbg !916
}

declare !dbg !917 ptr @get_root_dev_ino(ptr noundef) #2

declare !dbg !921 ptr @__error() #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i64 @select_plural(i64 noundef %0) #3 !dbg !128 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !135, metadata !DIExpression()), !dbg !925
  %2 = icmp ule i64 %0, -1, !dbg !926
  br i1 %2, label %3, label %4, !dbg !927

3:                                                ; preds = %1
  br label %7, !dbg !927

4:                                                ; preds = %1
  %5 = urem i64 %0, 1000000, !dbg !928
  %6 = add i64 %5, 1000000, !dbg !929
  br label %7, !dbg !927

7:                                                ; preds = %4, %3
  %8 = phi i64 [ %0, %3 ], [ %6, %4 ], !dbg !927
  ret i64 %8, !dbg !930
}

declare !dbg !931 zeroext i1 @yesno() #2

declare !dbg !935 i32 @rm(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: cold noreturn
declare !dbg !942 void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #9

declare !dbg !946 i32 @rpl_lstat(ptr noundef, ptr noundef) #2

declare !dbg !952 ptr @quotearg_n_style(i32 noundef, i32 noundef, ptr noundef) #2

declare !dbg !955 i32 @isatty(i32 noundef) #2

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
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { cold noreturn }

!llvm.dbg.cu = !{!79}
!llvm.ident = !{!404}
!llvm.module.flags = !{!405, !406, !407, !408, !409, !410}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/rm.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1280, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 160)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3008, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 376)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1792, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 224)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2032, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 254)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1400, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 175)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 48)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 57)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1240, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 155)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 976, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 122)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1832, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 229)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 8)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "long_opts", scope: !79, file: !2, line: 63, type: !394, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !138, globals: !145, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!80 = !{!81, !88, !95, !100, !114, !120, !127}
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rm_interactive", file: !82, line: 23, baseType: !83, size: 32, elements: !84)
!82 = !DIFile(filename: "../src/remove.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!83 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!84 = !{!85, !86, !87}
!85 = !DIEnumerator(name: "RMI_ALWAYS", value: 3)
!86 = !DIEnumerator(name: "RMI_SOMETIMES", value: 4)
!87 = !DIEnumerator(name: "RMI_NEVER", value: 5)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 47, baseType: !83, size: 32, elements: !89)
!89 = !{!90, !91, !92, !93, !94}
!90 = !DIEnumerator(name: "INTERACTIVE_OPTION", value: 128)
!91 = !DIEnumerator(name: "ONE_FILE_SYSTEM", value: 129)
!92 = !DIEnumerator(name: "NO_PRESERVE_ROOT", value: 130)
!93 = !DIEnumerator(name: "PRESERVE_ROOT", value: 131)
!94 = !DIEnumerator(name: "PRESUME_INPUT_TTY_OPTION", value: 132)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "interactive_type", file: !2, line: 56, baseType: !83, size: 32, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "interactive_never", value: 0)
!98 = !DIEnumerator(name: "interactive_once", value: 1)
!99 = !DIEnumerator(name: "interactive_always", value: 2)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !101, line: 32, baseType: !83, size: 32, elements: !102)
!101 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!103 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!104 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!105 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!106 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!107 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!108 = !DIEnumerator(name: "c_quoting_style", value: 5)
!109 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!110 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!111 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!112 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!113 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 332, baseType: !116, size: 32, elements: !117)
!115 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!119 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RM_status", file: !82, line: 78, baseType: !83, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125, !126}
!122 = !DIEnumerator(name: "RM_OK", value: 2)
!123 = !DIEnumerator(name: "RM_USER_ACCEPTED", value: 3)
!124 = !DIEnumerator(name: "RM_USER_DECLINED", value: 4)
!125 = !DIEnumerator(name: "RM_ERROR", value: 5)
!126 = !DIEnumerator(name: "RM_NONEMPTY_DIR", value: 6)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !128, file: !115, line: 189, baseType: !83, size: 32, elements: !136)
!128 = distinct !DISubprogram(name: "select_plural", scope: !115, file: !115, line: 185, type: !129, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !134)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !132}
!131 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !133, line: 32, baseType: !131)
!133 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!134 = !{!135}
!135 = !DILocalVariable(name: "n", arg: 1, scope: !128, file: !115, line: 185, type: !132)
!136 = !{!137}
!137 = !DIEnumerator(name: "PLURAL_REDUCER", value: 1000000)
!138 = !{!139, !141, !143, !144}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !146, !151, !156, !161, !166, !171, !173, !178, !183, !188, !193, !195, !246, !251, !256, !258, !263, !268, !273, !278, !281, !286, !288, !290, !295, !297, !299, !304, !306, !308, !310, !315, !320, !322, !327, !329, !331, !336, !341, !346, !348, !350, !355, !357, !359, !361, !363, !365, !367, !77, !369, !373, !375, !377, !379, !381, !386, !388, !392}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 14)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 19)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 53)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 4)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 42)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !148, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 11)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 16)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 20)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 13)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 338, type: !180, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "dev_ino_buf", scope: !197, file: !2, line: 345, type: !216, isLocal: true, isDefinition: true)
!197 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 209, type: !198, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !201)
!198 = !DISubroutineType(types: !199)
!199 = !{!116, !116, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!201 = !{!202, !203, !204, !206, !237, !238, !239, !243, !244, !245}
!202 = !DILocalVariable(name: "argc", arg: 1, scope: !197, file: !2, line: 209, type: !116)
!203 = !DILocalVariable(name: "argv", arg: 2, scope: !197, file: !2, line: 209, type: !200)
!204 = !DILocalVariable(name: "preserve_root", scope: !197, file: !2, line: 211, type: !205)
!205 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!206 = !DILocalVariable(name: "x", scope: !197, file: !2, line: 212, type: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rm_options", file: !82, line: 32, size: 256, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !233, !234, !235, !236}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_missing_files", scope: !207, file: !82, line: 35, baseType: !205, size: 8)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "interactive", scope: !207, file: !82, line: 38, baseType: !81, size: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "one_file_system", scope: !207, file: !82, line: 47, baseType: !205, size: 8, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "recursive", scope: !207, file: !82, line: 50, baseType: !205, size: 8, offset: 72)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "remove_empty_directories", scope: !207, file: !82, line: 53, baseType: !205, size: 8, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "root_dev_ino", scope: !207, file: !82, line: 57, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !217, line: 25, size: 128, elements: !218)
!217 = !DIFile(filename: "../lib/dev-ino.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!218 = !{!219, !228}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !216, file: !217, line: 27, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !221, line: 31, baseType: !222)
!221 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_ino_t.h", directory: "")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino_t", file: !223, line: 64, baseType: !224)
!223 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !223, line: 62, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !226, line: 49, baseType: !227)
!226 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!227 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !216, file: !217, line: 28, baseType: !229, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !230, line: 31, baseType: !231)
!230 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !223, line: 57, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !226, line: 46, baseType: !116)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_all_root", scope: !207, file: !82, line: 61, baseType: !205, size: 8, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "stdin_tty", scope: !207, file: !82, line: 64, baseType: !205, size: 8, offset: 200)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !207, file: !82, line: 67, baseType: !205, size: 8, offset: 208)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "require_restore_cwd", scope: !207, file: !82, line: 75, baseType: !205, size: 8, offset: 216)
!237 = !DILocalVariable(name: "prompt_once", scope: !197, file: !2, line: 213, type: !205)
!238 = !DILocalVariable(name: "c", scope: !197, file: !2, line: 214, type: !116)
!239 = !DILocalVariable(name: "i", scope: !240, file: !2, line: 262, type: !116)
!240 = distinct !DILexicalBlock(scope: !241, file: !2, line: 261, column: 11)
!241 = distinct !DILexicalBlock(scope: !242, file: !2, line: 232, column: 9)
!242 = distinct !DILexicalBlock(scope: !197, file: !2, line: 230, column: 5)
!243 = !DILocalVariable(name: "n_files", scope: !197, file: !2, line: 352, type: !132)
!244 = !DILocalVariable(name: "file", scope: !197, file: !2, line: 353, type: !200)
!245 = !DILocalVariable(name: "status", scope: !197, file: !2, line: 370, type: !120)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 31)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 2)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !3, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 38)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 27)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 26)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !2, line: 371, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 40, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 5)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !2, line: 371, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !276)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 371, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 22)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !115, line: 660, type: !253, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !115, line: 660, type: !180, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !115, line: 661, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 10)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !115, line: 661, type: !283, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !115, line: 662, type: !292, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !115, line: 662, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 15)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !115, line: 663, type: !292, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !115, line: 664, type: !292, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !115, line: 665, type: !292, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !115, line: 678, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 23)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !115, line: 678, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 40)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !115, line: 683, type: !163, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !115, line: 689, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 71)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !115, line: 695, type: !280, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !115, line: 696, type: !265, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !115, line: 698, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 51)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !115, line: 699, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 12)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 6)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !338, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !180, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 17)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !148, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !153, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !292, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !163, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !74, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !280, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !74, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "interactive_types", scope: !79, file: !2, line: 92, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 192, elements: !344)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !343, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !64, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !280, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !280, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 7)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !163, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "interactive_args", scope: !79, file: !2, line: 86, type: !390, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 448, elements: !384)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !260, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 3072, elements: !339)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !397, line: 50, size: 256, elements: !398)
!397 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!398 = !{!399, !400, !401, !403}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !396, file: !397, line: 52, baseType: !139, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !396, file: !397, line: 55, baseType: !116, size: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !396, file: !397, line: 56, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !396, file: !397, line: 57, baseType: !116, size: 32, offset: 192)
!404 = !{!"Homebrew clang version 16.0.4"}
!405 = !{i32 7, !"Dwarf Version", i32 4}
!406 = !{i32 2, !"Debug Info Version", i32 3}
!407 = !{i32 1, !"wchar_size", i32 4}
!408 = !{i32 8, !"PIC Level", i32 2}
!409 = !{i32 7, !"uwtable", i32 2}
!410 = !{i32 7, !"frame-pointer", i32 2}
!411 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 127, type: !412, scopeLine: 128, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !116}
!414 = !{!415}
!415 = !DILocalVariable(name: "status", arg: 1, scope: !411, file: !2, line: 127, type: !116)
!416 = !DILocation(line: 0, scope: !411)
!417 = !DILocation(line: 129, column: 14, scope: !418)
!418 = distinct !DILexicalBlock(scope: !411, file: !2, line: 129, column: 7)
!419 = !DILocation(line: 129, column: 7, scope: !411)
!420 = !DILocation(line: 130, column: 5, scope: !418)
!421 = !DILocation(line: 130, column: 5, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !2, line: 130, column: 5)
!423 = !{!424, !424, i64 0}
!424 = !{!"any pointer", !425, i64 0}
!425 = !{!"omnipotent char", !426, i64 0}
!426 = !{!"Simple C/C++ TBAA"}
!427 = !DILocation(line: 133, column: 55, scope: !428)
!428 = distinct !DILexicalBlock(scope: !418, file: !2, line: 132, column: 5)
!429 = !DILocation(line: 133, column: 7, scope: !428)
!430 = !DILocation(line: 139, column: 5, scope: !428)
!431 = !DILocation(line: 134, column: 7, scope: !428)
!432 = !DILocation(line: 146, column: 5, scope: !428)
!433 = !DILocation(line: 140, column: 7, scope: !428)
!434 = !DILocation(line: 151, column: 5, scope: !428)
!435 = !DILocation(line: 147, column: 7, scope: !428)
!436 = !DILocation(line: 157, column: 5, scope: !428)
!437 = !DILocation(line: 152, column: 7, scope: !428)
!438 = !DILocation(line: 162, column: 5, scope: !428)
!439 = !DILocation(line: 158, column: 7, scope: !428)
!440 = !DILocation(line: 163, column: 39, scope: !428)
!441 = !DILocation(line: 163, column: 7, scope: !428)
!442 = !DILocation(line: 164, column: 42, scope: !428)
!443 = !DILocation(line: 164, column: 7, scope: !428)
!444 = !DILocation(line: 169, column: 5, scope: !428)
!445 = !DILocation(line: 165, column: 7, scope: !428)
!446 = !DILocation(line: 178, column: 15, scope: !428)
!447 = !DILocation(line: 178, column: 29, scope: !428)
!448 = !DILocation(line: 170, column: 7, scope: !428)
!449 = !DILocation(line: 184, column: 5, scope: !428)
!450 = !DILocation(line: 179, column: 7, scope: !428)
!451 = !DILocation(line: 185, column: 7, scope: !428)
!452 = !DILocation(line: 187, column: 3, scope: !411)
!453 = !DISubprogram(name: "fprintf", scope: !454, file: !454, line: 155, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!454 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!455 = !DISubroutineType(types: !456)
!456 = !{!116, !457, !510, null}
!457 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !460, line: 157, baseType: !461)
!460 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !460, line: 126, size: 1216, elements: !462)
!462 = !{!463, !466, !467, !468, !470, !471, !476, !477, !478, !482, !486, !494, !498, !499, !502, !503, !505, !507, !508, !509}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !461, file: !460, line: 127, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !461, file: !460, line: 128, baseType: !116, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !461, file: !460, line: 129, baseType: !116, size: 32, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !461, file: !460, line: 130, baseType: !469, size: 16, offset: 128)
!469 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !461, file: !460, line: 131, baseType: !469, size: 16, offset: 144)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !461, file: !460, line: 132, baseType: !472, size: 128, offset: 192)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !460, line: 92, size: 128, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !472, file: !460, line: 93, baseType: !464, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !472, file: !460, line: 94, baseType: !116, size: 32, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !461, file: !460, line: 133, baseType: !116, size: 32, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !461, file: !460, line: 136, baseType: !144, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !461, file: !460, line: 137, baseType: !479, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!116, !144}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !461, file: !460, line: 138, baseType: !483, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!116, !144, !143, !116}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !461, file: !460, line: 139, baseType: !487, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !144, !490, !116}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !460, line: 81, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !223, line: 71, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !226, line: 48, baseType: !493)
!493 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !461, file: !460, line: 140, baseType: !495, size: 64, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!116, !144, !139, !116}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !461, file: !460, line: 143, baseType: !472, size: 128, offset: 704)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !461, file: !460, line: 144, baseType: !500, size: 64, offset: 832)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !460, line: 98, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !461, file: !460, line: 145, baseType: !116, size: 32, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !461, file: !460, line: 148, baseType: !504, size: 24, offset: 928)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 24, elements: !65)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !461, file: !460, line: 149, baseType: !506, size: 8, offset: 952)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 8, elements: !70)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !461, file: !460, line: 152, baseType: !472, size: 128, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !461, file: !460, line: 155, baseType: !116, size: 32, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !461, file: !460, line: 156, baseType: !490, size: 64, offset: 1152)
!510 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!511 = !{}
!512 = !DISubprogram(name: "printf", scope: !454, file: !454, line: 175, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!513 = !DISubroutineType(types: !514)
!514 = !{!116, !510, null}
!515 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !454, file: !454, line: 157, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!516 = !DISubroutineType(types: !517)
!517 = !{!116, !510, !457}
!518 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !115, file: !115, line: 657, type: !519, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !139}
!521 = !{!522, !523, !530, !531, !533, !534}
!522 = !DILocalVariable(name: "program", arg: 1, scope: !518, file: !115, line: 657, type: !139)
!523 = !DILocalVariable(name: "infomap", scope: !518, file: !115, line: 659, type: !524)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 896, elements: !384)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !518, file: !115, line: 659, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !526, file: !115, line: 659, baseType: !139, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !526, file: !115, line: 659, baseType: !139, size: 64, offset: 64)
!530 = !DILocalVariable(name: "node", scope: !518, file: !115, line: 669, type: !139)
!531 = !DILocalVariable(name: "map_prog", scope: !518, file: !115, line: 670, type: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!533 = !DILocalVariable(name: "lc_messages", scope: !518, file: !115, line: 682, type: !139)
!534 = !DILocalVariable(name: "url_program", scope: !518, file: !115, line: 695, type: !139)
!535 = !DILocation(line: 0, scope: !518)
!536 = !DILocation(line: 659, column: 3, scope: !518)
!537 = !DILocation(line: 659, column: 67, scope: !518)
!538 = !DILocation(line: 670, column: 36, scope: !518)
!539 = !DILocation(line: 672, column: 3, scope: !518)
!540 = !DILocation(line: 672, column: 20, scope: !518)
!541 = !{!542, !424, i64 0}
!542 = !{!"infomap", !424, i64 0, !424, i64 8}
!543 = !DILocation(line: 672, column: 10, scope: !518)
!544 = !DILocation(line: 672, column: 28, scope: !518)
!545 = !DILocation(line: 672, column: 33, scope: !518)
!546 = !DILocation(line: 672, column: 31, scope: !518)
!547 = !DILocation(line: 673, column: 13, scope: !518)
!548 = distinct !{!548, !539, !547, !549, !550}
!549 = !{!"llvm.loop.mustprogress"}
!550 = !{!"llvm.loop.unroll.disable"}
!551 = !DILocation(line: 675, column: 17, scope: !552)
!552 = distinct !DILexicalBlock(scope: !518, file: !115, line: 675, column: 7)
!553 = !{!542, !424, i64 8}
!554 = !DILocation(line: 675, column: 7, scope: !552)
!555 = !DILocation(line: 675, column: 7, scope: !518)
!556 = !DILocation(line: 676, column: 22, scope: !552)
!557 = !DILocation(line: 676, column: 5, scope: !552)
!558 = !DILocation(line: 678, column: 3, scope: !518)
!559 = !DILocation(line: 682, column: 29, scope: !518)
!560 = !DILocation(line: 683, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !518, file: !115, line: 683, column: 7)
!562 = !DILocation(line: 683, column: 19, scope: !561)
!563 = !DILocation(line: 683, column: 22, scope: !561)
!564 = !DILocation(line: 683, column: 7, scope: !518)
!565 = !DILocation(line: 690, column: 61, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !115, line: 684, column: 5)
!567 = !DILocation(line: 689, column: 7, scope: !566)
!568 = !DILocation(line: 691, column: 5, scope: !566)
!569 = !DILocation(line: 695, column: 29, scope: !518)
!570 = !DILocation(line: 696, column: 3, scope: !518)
!571 = !DILocation(line: 699, column: 22, scope: !518)
!572 = !DILocation(line: 699, column: 17, scope: !518)
!573 = !DILocation(line: 698, column: 3, scope: !518)
!574 = !DILocation(line: 700, column: 1, scope: !518)
!575 = !DISubprogram(name: "exit", scope: !576, file: !576, line: 145, type: !412, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !511)
!576 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!577 = !DISubprogram(name: "strcmp", scope: !578, file: !578, line: 77, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!578 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!579 = !DISubroutineType(types: !580)
!580 = !{!116, !139, !139}
!581 = !DISubprogram(name: "setlocale", scope: !582, file: !582, line: 53, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!582 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!583 = !DISubroutineType(types: !584)
!584 = !{!143, !116, !139}
!585 = !DISubprogram(name: "strncmp", scope: !578, file: !578, line: 84, type: !586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!586 = !DISubroutineType(types: !587)
!587 = !{!116, !139, !139, !588}
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !589, line: 31, baseType: !590)
!589 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !226, line: 94, baseType: !131)
!591 = !DILocation(line: 0, scope: !197)
!592 = !DILocation(line: 212, column: 3, scope: !197)
!593 = !DILocation(line: 212, column: 21, scope: !197)
!594 = !DILocation(line: 217, column: 21, scope: !197)
!595 = !DILocation(line: 217, column: 3, scope: !197)
!596 = !DILocation(line: 218, column: 3, scope: !197)
!597 = !DILocation(line: 222, column: 3, scope: !197)
!598 = !DILocation(line: 224, column: 3, scope: !197)
!599 = !DILocation(line: 227, column: 3, scope: !197)
!600 = !DILocation(line: 229, column: 3, scope: !197)
!601 = !DILocation(line: 213, column: 8, scope: !197)
!602 = !DILocation(line: 211, column: 8, scope: !197)
!603 = !DILocation(line: 229, column: 15, scope: !197)
!604 = !DILocation(line: 229, column: 69, scope: !197)
!605 = !DILocation(line: 231, column: 7, scope: !242)
!606 = !DILocation(line: 234, column: 13, scope: !241)
!607 = !DILocation(line: 234, column: 38, scope: !241)
!608 = !{!609, !610, i64 10}
!609 = !{!"rm_options", !610, i64 0, !425, i64 4, !610, i64 8, !610, i64 9, !610, i64 10, !424, i64 16, !610, i64 24, !610, i64 25, !610, i64 26, !610, i64 27}
!610 = !{!"_Bool", !425, i64 0}
!611 = !DILocation(line: 235, column: 11, scope: !241)
!612 = !DILocation(line: 238, column: 13, scope: !241)
!613 = !DILocation(line: 238, column: 25, scope: !241)
!614 = !{!609, !425, i64 4}
!615 = !DILocation(line: 239, column: 13, scope: !241)
!616 = !DILocation(line: 239, column: 34, scope: !241)
!617 = !{!609, !610, i64 0}
!618 = !DILocation(line: 241, column: 11, scope: !241)
!619 = !DILocation(line: 244, column: 13, scope: !241)
!620 = !DILocation(line: 244, column: 25, scope: !241)
!621 = !DILocation(line: 245, column: 13, scope: !241)
!622 = !DILocation(line: 245, column: 34, scope: !241)
!623 = !DILocation(line: 247, column: 11, scope: !241)
!624 = !DILocation(line: 250, column: 13, scope: !241)
!625 = !DILocation(line: 250, column: 25, scope: !241)
!626 = !DILocation(line: 251, column: 13, scope: !241)
!627 = !DILocation(line: 251, column: 34, scope: !241)
!628 = !DILocation(line: 253, column: 11, scope: !241)
!629 = !DILocation(line: 257, column: 13, scope: !241)
!630 = !DILocation(line: 257, column: 23, scope: !241)
!631 = !{!609, !610, i64 9}
!632 = !DILocation(line: 258, column: 11, scope: !241)
!633 = !DILocation(line: 263, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !240, file: !2, line: 263, column: 17)
!635 = !DILocation(line: 263, column: 17, scope: !240)
!636 = !DILocation(line: 264, column: 19, scope: !634)
!637 = !{!425, !425, i64 0}
!638 = !DILocation(line: 0, scope: !240)
!639 = !DILocation(line: 264, column: 15, scope: !634)
!640 = !DILocation(line: 0, scope: !634)
!641 = !DILocation(line: 268, column: 13, scope: !240)
!642 = !DILocation(line: 271, column: 19, scope: !643)
!643 = distinct !DILexicalBlock(scope: !240, file: !2, line: 269, column: 15)
!644 = !DILocation(line: 271, column: 31, scope: !643)
!645 = !DILocation(line: 273, column: 17, scope: !643)
!646 = !DILocation(line: 276, column: 19, scope: !643)
!647 = !DILocation(line: 276, column: 31, scope: !643)
!648 = !DILocation(line: 277, column: 19, scope: !643)
!649 = !DILocation(line: 277, column: 40, scope: !643)
!650 = !DILocation(line: 279, column: 17, scope: !643)
!651 = !DILocation(line: 282, column: 19, scope: !643)
!652 = !DILocation(line: 282, column: 31, scope: !643)
!653 = !DILocation(line: 283, column: 19, scope: !643)
!654 = !DILocation(line: 283, column: 40, scope: !643)
!655 = !DILocation(line: 285, column: 17, scope: !643)
!656 = !DILocation(line: 291, column: 13, scope: !241)
!657 = !DILocation(line: 291, column: 29, scope: !241)
!658 = !{!609, !610, i64 8}
!659 = !DILocation(line: 292, column: 11, scope: !241)
!660 = !DILocation(line: 295, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !241, file: !2, line: 295, column: 15)
!662 = !{!663, !663, i64 0}
!663 = !{!"int", !425, i64 0}
!664 = !DILocation(line: 295, column: 15, scope: !241)
!665 = !DILocation(line: 296, column: 13, scope: !661)
!666 = !DILocation(line: 299, column: 11, scope: !241)
!667 = !DILocation(line: 302, column: 15, scope: !668)
!668 = distinct !DILexicalBlock(scope: !241, file: !2, line: 302, column: 15)
!669 = !DILocation(line: 302, column: 15, scope: !241)
!670 = !DILocation(line: 304, column: 18, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !2, line: 304, column: 18)
!672 = distinct !DILexicalBlock(scope: !668, file: !2, line: 303, column: 13)
!673 = !DILocation(line: 304, column: 18, scope: !672)
!674 = !DILocation(line: 305, column: 19, scope: !671)
!675 = !DILocation(line: 305, column: 37, scope: !671)
!676 = !{!609, !610, i64 24}
!677 = !DILocation(line: 305, column: 17, scope: !671)
!678 = !DILocation(line: 308, column: 19, scope: !679)
!679 = distinct !DILexicalBlock(scope: !671, file: !2, line: 307, column: 17)
!680 = !DILocation(line: 312, column: 13, scope: !672)
!681 = !DILocation(line: 314, column: 11, scope: !241)
!682 = !DILocation(line: 317, column: 13, scope: !241)
!683 = !DILocation(line: 317, column: 23, scope: !241)
!684 = !{!609, !610, i64 25}
!685 = !DILocation(line: 318, column: 11, scope: !241)
!686 = !DILocation(line: 321, column: 13, scope: !241)
!687 = !DILocation(line: 321, column: 21, scope: !241)
!688 = !{!609, !610, i64 26}
!689 = !DILocation(line: 322, column: 11, scope: !241)
!690 = !DILocation(line: 324, column: 9, scope: !241)
!691 = !DILocation(line: 325, column: 9, scope: !241)
!692 = !DILocation(line: 327, column: 11, scope: !241)
!693 = !DILocation(line: 328, column: 11, scope: !241)
!694 = distinct !{!694, !600, !695, !549, !550}
!695 = !DILocation(line: 330, column: 5, scope: !197)
!696 = !DILocation(line: 332, column: 15, scope: !697)
!697 = distinct !DILexicalBlock(scope: !197, file: !2, line: 332, column: 7)
!698 = !DILocation(line: 332, column: 12, scope: !697)
!699 = !DILocation(line: 332, column: 7, scope: !197)
!700 = !DILocation(line: 334, column: 13, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !2, line: 334, column: 11)
!702 = distinct !DILexicalBlock(scope: !697, file: !2, line: 333, column: 5)
!703 = !{i8 0, i8 2}
!704 = !DILocation(line: 334, column: 11, scope: !702)
!705 = !DILocation(line: 335, column: 9, scope: !701)
!706 = !DILocation(line: 338, column: 11, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !2, line: 337, column: 9)
!708 = !DILocation(line: 339, column: 11, scope: !707)
!709 = !DILocation(line: 343, column: 9, scope: !710)
!710 = distinct !DILexicalBlock(scope: !197, file: !2, line: 343, column: 7)
!711 = !DILocation(line: 343, column: 19, scope: !710)
!712 = !DILocation(line: 343, column: 22, scope: !710)
!713 = !DILocation(line: 343, column: 7, scope: !197)
!714 = !DILocation(line: 346, column: 24, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !2, line: 344, column: 5)
!716 = !DILocation(line: 346, column: 9, scope: !715)
!717 = !DILocation(line: 346, column: 22, scope: !715)
!718 = !{!609, !424, i64 16}
!719 = !DILocation(line: 347, column: 13, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !2, line: 347, column: 11)
!721 = !DILocation(line: 347, column: 26, scope: !720)
!722 = !DILocation(line: 347, column: 11, scope: !715)
!723 = !DILocation(line: 348, column: 9, scope: !720)
!724 = !DILocation(line: 350, column: 5, scope: !715)
!725 = !DILocation(line: 352, column: 30, scope: !197)
!726 = !DILocation(line: 352, column: 28, scope: !197)
!727 = !DILocation(line: 352, column: 23, scope: !197)
!728 = !DILocation(line: 353, column: 25, scope: !197)
!729 = !DILocation(line: 353, column: 23, scope: !197)
!730 = !DILocation(line: 355, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !197, file: !2, line: 355, column: 7)
!732 = !DILocation(line: 355, column: 19, scope: !731)
!733 = !DILocation(line: 355, column: 25, scope: !731)
!734 = !DILocation(line: 355, column: 35, scope: !731)
!735 = !DILocation(line: 355, column: 40, scope: !731)
!736 = !DILocation(line: 355, column: 7, scope: !197)
!737 = !DILocation(line: 357, column: 16, scope: !738)
!738 = distinct !DILexicalBlock(scope: !731, file: !2, line: 356, column: 5)
!739 = !DILocation(line: 358, column: 19, scope: !738)
!740 = !DILocation(line: 358, column: 17, scope: !738)
!741 = !DILocation(line: 359, column: 19, scope: !738)
!742 = !DILocation(line: 362, column: 19, scope: !738)
!743 = !DILocation(line: 365, column: 16, scope: !738)
!744 = !DILocation(line: 357, column: 7, scope: !738)
!745 = !DILocation(line: 366, column: 12, scope: !746)
!746 = distinct !DILexicalBlock(scope: !738, file: !2, line: 366, column: 11)
!747 = !DILocation(line: 366, column: 11, scope: !738)
!748 = !DILocation(line: 367, column: 9, scope: !746)
!749 = !DILocation(line: 368, column: 5, scope: !738)
!750 = !DILocation(line: 370, column: 27, scope: !197)
!751 = !DILocation(line: 371, column: 3, scope: !197)
!752 = !DILocation(line: 372, column: 17, scope: !197)
!753 = !DILocation(line: 372, column: 10, scope: !197)
!754 = !DILocation(line: 373, column: 1, scope: !197)
!755 = !DISubprogram(name: "set_program_name", scope: !756, file: !756, line: 37, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!756 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!757 = !DISubprogram(name: "atexit", scope: !576, file: !576, line: 133, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!758 = !DISubroutineType(types: !759)
!759 = !{!116, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{null}
!763 = distinct !DISubprogram(name: "rm_option_init", scope: !2, file: !2, line: 191, type: !764, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !767)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!767 = !{!768}
!768 = !DILocalVariable(name: "x", arg: 1, scope: !763, file: !2, line: 191, type: !766)
!769 = !DILocation(line: 0, scope: !763)
!770 = !DILocation(line: 193, column: 6, scope: !763)
!771 = !DILocation(line: 193, column: 27, scope: !763)
!772 = !DILocation(line: 194, column: 6, scope: !763)
!773 = !DILocation(line: 194, column: 18, scope: !763)
!774 = !DILocation(line: 195, column: 6, scope: !763)
!775 = !DILocation(line: 195, column: 22, scope: !763)
!776 = !DILocation(line: 196, column: 6, scope: !763)
!777 = !DILocation(line: 196, column: 31, scope: !763)
!778 = !DILocation(line: 197, column: 6, scope: !763)
!779 = !DILocation(line: 197, column: 16, scope: !763)
!780 = !DILocation(line: 198, column: 6, scope: !763)
!781 = !DILocation(line: 198, column: 19, scope: !763)
!782 = !DILocation(line: 199, column: 6, scope: !763)
!783 = !DILocation(line: 199, column: 24, scope: !763)
!784 = !DILocation(line: 200, column: 18, scope: !763)
!785 = !DILocation(line: 200, column: 6, scope: !763)
!786 = !DILocation(line: 200, column: 16, scope: !763)
!787 = !DILocation(line: 201, column: 6, scope: !763)
!788 = !DILocation(line: 201, column: 14, scope: !763)
!789 = !DILocation(line: 205, column: 6, scope: !763)
!790 = !DILocation(line: 205, column: 26, scope: !763)
!791 = !{!609, !610, i64 27}
!792 = !DILocation(line: 206, column: 1, scope: !763)
!793 = distinct !DISubprogram(name: "priv_set_remove_linkdir", scope: !794, file: !794, line: 51, type: !795, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !511)
!794 = !DIFile(filename: "../lib/priv-set.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!795 = !DISubroutineType(types: !796)
!796 = !{!116}
!797 = !DILocation(line: 53, column: 3, scope: !793)
!798 = !DISubprogram(name: "rpl_getopt_long", scope: !397, file: !397, line: 66, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!799 = !DISubroutineType(types: !800)
!800 = !{!116, !116, !200, !139, !801, !402}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!802 = !DISubprogram(name: "__xargmatch_internal", scope: !803, file: !803, line: 94, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!803 = !DIFile(filename: "../lib/argmatch.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!804 = !DISubroutineType(types: !805)
!805 = !{!806, !139, !139, !809, !141, !588, !810, !205}
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !807, line: 35, baseType: !808)
!807 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!808 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !803, line: 66, baseType: !760)
!811 = !DISubprogram(name: "error", scope: !812, file: !812, line: 395, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!812 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!813 = !DISubroutineType(types: !814)
!814 = !{null, !116, !116, !139, null}
!815 = !DISubprogram(name: "quotearg_style", scope: !101, file: !101, line: 383, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!816 = !DISubroutineType(types: !817)
!817 = !{!143, !100, !139}
!818 = !DISubprogram(name: "version_etc", scope: !819, file: !819, line: 65, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!819 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!820 = !DISubroutineType(types: !821)
!821 = !{null, !458, !139, !139, !139, null}
!822 = distinct !DISubprogram(name: "diagnose_leading_hyphen", scope: !2, file: !2, line: 104, type: !823, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !116, !200}
!825 = !{!826, !827, !828, !830, !833}
!826 = !DILocalVariable(name: "argc", arg: 1, scope: !822, file: !2, line: 104, type: !116)
!827 = !DILocalVariable(name: "argv", arg: 2, scope: !822, file: !2, line: 104, type: !200)
!828 = !DILocalVariable(name: "i", scope: !829, file: !2, line: 109, type: !116)
!829 = distinct !DILexicalBlock(scope: !822, file: !2, line: 109, column: 3)
!830 = !DILocalVariable(name: "arg", scope: !831, file: !2, line: 111, type: !139)
!831 = distinct !DILexicalBlock(scope: !832, file: !2, line: 110, column: 5)
!832 = distinct !DILexicalBlock(scope: !829, file: !2, line: 109, column: 3)
!833 = !DILocalVariable(name: "st", scope: !831, file: !2, line: 112, type: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !835, line: 182, size: 1152, elements: !836)
!835 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!836 = !{!837, !838, !844, !847, !848, !853, !857, !858, !865, !866, !867, !868, !871, !875, !879, !880, !881, !882}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !834, file: !835, line: 182, baseType: !229, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !834, file: !835, line: 182, baseType: !839, size: 16, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !840, line: 31, baseType: !841)
!840 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !223, line: 70, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !226, line: 45, baseType: !843)
!843 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !834, file: !835, line: 182, baseType: !845, size: 16, offset: 48)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !846, line: 31, baseType: !842)
!846 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!847 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !834, file: !835, line: 182, baseType: !224, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !834, file: !835, line: 182, baseType: !849, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !850, line: 31, baseType: !851)
!850 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !223, line: 75, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !226, line: 47, baseType: !83)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !834, file: !835, line: 182, baseType: !854, size: 32, offset: 160)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !855, line: 31, baseType: !856)
!855 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !223, line: 60, baseType: !852)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !834, file: !835, line: 182, baseType: !229, size: 32, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !834, file: !835, line: 182, baseType: !859, size: 128, offset: 256)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !860, line: 33, size: 128, elements: !861)
!860 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!861 = !{!862, !864}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !859, file: !860, line: 35, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !226, line: 122, baseType: !808)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !859, file: !860, line: 36, baseType: !808, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !834, file: !835, line: 182, baseType: !859, size: 128, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !834, file: !835, line: 182, baseType: !859, size: 128, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !834, file: !835, line: 182, baseType: !859, size: 128, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !834, file: !835, line: 182, baseType: !869, size: 64, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !870, line: 31, baseType: !491)
!870 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!871 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !834, file: !835, line: 182, baseType: !872, size: 64, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !873, line: 31, baseType: !874)
!873 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !223, line: 55, baseType: !492)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !834, file: !835, line: 182, baseType: !876, size: 32, offset: 896)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !877, line: 31, baseType: !878)
!877 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !223, line: 56, baseType: !232)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !834, file: !835, line: 182, baseType: !852, size: 32, offset: 928)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !834, file: !835, line: 182, baseType: !852, size: 32, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !834, file: !835, line: 182, baseType: !232, size: 32, offset: 992)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !834, file: !835, line: 182, baseType: !883, size: 128, offset: 1024)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 128, elements: !254)
!884 = !DILocation(line: 0, scope: !822)
!885 = !DILocation(line: 0, scope: !829)
!886 = !DILocation(line: 109, column: 8, scope: !829)
!887 = !DILocation(line: 109, scope: !829)
!888 = !DILocation(line: 109, column: 21, scope: !832)
!889 = !DILocation(line: 109, column: 3, scope: !829)
!890 = !DILocation(line: 111, column: 25, scope: !831)
!891 = !DILocation(line: 0, scope: !831)
!892 = !DILocation(line: 112, column: 7, scope: !831)
!893 = !DILocation(line: 112, column: 19, scope: !831)
!894 = !DILocation(line: 114, column: 11, scope: !895)
!895 = distinct !DILexicalBlock(scope: !831, file: !2, line: 114, column: 11)
!896 = !DILocation(line: 114, column: 18, scope: !895)
!897 = !DILocation(line: 114, column: 25, scope: !895)
!898 = !DILocation(line: 114, column: 28, scope: !895)
!899 = !DILocation(line: 114, column: 35, scope: !895)
!900 = !DILocation(line: 114, column: 38, scope: !895)
!901 = !DILocation(line: 114, column: 55, scope: !895)
!902 = !DILocation(line: 114, column: 11, scope: !831)
!903 = !DILocation(line: 116, column: 20, scope: !904)
!904 = distinct !DILexicalBlock(scope: !895, file: !2, line: 115, column: 9)
!905 = !DILocation(line: 118, column: 20, scope: !904)
!906 = !DILocation(line: 119, column: 20, scope: !904)
!907 = !DILocation(line: 120, column: 20, scope: !904)
!908 = !DILocation(line: 116, column: 11, scope: !904)
!909 = !DILocation(line: 121, column: 11, scope: !904)
!910 = !DILocation(line: 123, column: 5, scope: !832)
!911 = !DILocation(line: 123, column: 5, scope: !831)
!912 = !DILocation(line: 109, column: 30, scope: !832)
!913 = !DILocation(line: 109, column: 3, scope: !832)
!914 = distinct !{!914, !889, !915, !549, !550}
!915 = !DILocation(line: 123, column: 5, scope: !829)
!916 = !DILocation(line: 124, column: 1, scope: !822)
!917 = !DISubprogram(name: "get_root_dev_ino", scope: !918, file: !918, line: 25, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!918 = !DIFile(filename: "../lib/root-dev-ino.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!919 = !DISubroutineType(types: !920)
!920 = !{!215, !215}
!921 = !DISubprogram(name: "__error", scope: !922, file: !922, line: 80, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!922 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!923 = !DISubroutineType(types: !924)
!924 = !{!402}
!925 = !DILocation(line: 0, scope: !128)
!926 = !DILocation(line: 190, column: 13, scope: !128)
!927 = !DILocation(line: 190, column: 11, scope: !128)
!928 = !DILocation(line: 190, column: 34, scope: !128)
!929 = !DILocation(line: 190, column: 51, scope: !128)
!930 = !DILocation(line: 190, column: 3, scope: !128)
!931 = !DISubprogram(name: "yesno", scope: !932, file: !932, line: 20, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!932 = !DIFile(filename: "../lib/yesno.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!933 = !DISubroutineType(types: !934)
!934 = !{!205}
!935 = !DISubprogram(name: "rm", scope: !82, file: !82, line: 101, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!936 = !DISubroutineType(types: !937)
!937 = !{!120, !938, !940}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!942 = !DISubprogram(name: "__assert_rtn", scope: !943, file: !943, line: 82, type: !944, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !511)
!943 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/assert.h", directory: "")
!944 = !DISubroutineType(types: !945)
!945 = !{null, !139, !139, !116, !139}
!946 = !DISubprogram(name: "rpl_lstat", scope: !947, file: !947, line: 1385, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!947 = !DIFile(filename: "./lib/sys/stat.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!948 = !DISubroutineType(types: !949)
!949 = !{!116, !510, !950}
!950 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!952 = !DISubprogram(name: "quotearg_n_style", scope: !101, file: !101, line: 374, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!953 = !DISubroutineType(types: !954)
!954 = !{!143, !116, !100, !139}
!955 = !DISubprogram(name: "isatty", scope: !956, file: !956, line: 463, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!956 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/unistd.h", directory: "")
!957 = !DISubroutineType(types: !958)
!958 = !{!116, !116}
