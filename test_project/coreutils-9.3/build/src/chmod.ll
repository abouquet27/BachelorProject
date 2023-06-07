; ModuleID = 'coreutils-9.3/build/src/chmod.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.dev_ino = type { i64, i32 }
%struct.infomap = type { ptr, ptr }
%struct.change_status = type { i32, i16, i16 }
%struct._ftsent = type { ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, i64, i64, i16, i16, i16, [1 x %struct.stat], [0 x i8] }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.FTS = type { ptr, ptr, ptr, i32, ptr, i32, i32, i64, i64, ptr, i32, ptr, %union.anon, %struct.I_ring }
%union.anon = type { ptr }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [135 x i8] c"Usage: %s [OPTION]... MODE[,MODE]... FILE...\0A  or:  %s [OPTION]... OCTAL-MODE FILE...\0A  or:  %s [OPTION]... --reference=RFILE FILE...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [105 x i8] c"Change the mode of each FILE to MODE.\0AWith --reference, change the mode of each FILE to that of RFILE.\0A\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [201 x i8] c"  -c, --changes          like verbose but report only when a change is made\0A  -f, --silent, --quiet  suppress most error messages\0A  -v, --verbose          output a diagnostic for every file processed\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [128 x i8] c"      --no-preserve-root  do not treat '/' specially (the default)\0A      --preserve-root    fail to operate recursively on '/'\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [152 x i8] c"      --reference=RFILE  use RFILE's mode instead of specifying MODE values.\0A                         RFILE is always dereferenced if a symbolic link.\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [67 x i8] c"  -R, --recursive        change files and directories recursively\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [75 x i8] c"\0AEach MODE is of the form '[ugoa]*([-+=]([rwxXst]*|[ugo]))+|[-+=][0-7]+'.\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !57
@diagnose_surprises = internal global i8 0, align 1, !dbg !62
@force_silent = internal global i8 0, align 1, !dbg !221
@recurse = internal global i8 0, align 1, !dbg !219
@.str.12 = private unnamed_addr constant [68 x i8] c"Rcfvr::w::x::X::s::t::u::g::o::a::,::+::=::0::1::2::3::4::5::6::7::\00", align 1, !dbg !122
@long_options = internal constant [11 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.39, i32 0, ptr null, i32 99 }, %struct.rpl_option { ptr @.str.40, i32 0, ptr null, i32 82 }, %struct.rpl_option { ptr @.str.41, i32 0, ptr null, i32 128 }, %struct.rpl_option { ptr @.str.42, i32 0, ptr null, i32 129 }, %struct.rpl_option { ptr @.str.43, i32 0, ptr null, i32 102 }, %struct.rpl_option { ptr @.str.44, i32 1, ptr null, i32 130 }, %struct.rpl_option { ptr @.str.45, i32 0, ptr null, i32 102 }, %struct.rpl_option { ptr @.str.46, i32 0, ptr null, i32 118 }, %struct.rpl_option { ptr @.str.47, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.48, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !319
@rpl_optind = external global i32, align 4
@rpl_optarg = external global ptr, align 8
@verbosity = internal global i32 2, align 4, !dbg !333
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !127
@Version = external global ptr, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !132
@.str.15 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !137
@.str.16 = private unnamed_addr constant [44 x i8] c"cannot combine mode and --reference options\00", align 1, !dbg !142
@.str.17 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !147
@.str.18 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1, !dbg !149
@change = internal global ptr null, align 8, !dbg !212
@.str.19 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1, !dbg !154
@.str.20 = private unnamed_addr constant [17 x i8] c"invalid mode: %s\00", align 1, !dbg !159
@umask_value = internal global i16 0, align 2, !dbg !217
@main.dev_ino_buf = internal global %struct.dev_ino zeroinitializer, align 8, !dbg !164
@root_dev_ino = internal global ptr null, align 8, !dbg !223
@.str.21 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !207
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !226
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !228
@.str.24 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !230
@.str.25 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !235
@.str.26 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !240
@.str.27 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !242
@.str.28 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !247
@.str.29 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !249
@.str.30 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !251
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.22, ptr @.str.23 }, %struct.infomap { ptr @.str.24, ptr @.str.25 }, %struct.infomap { ptr @.str.26, ptr @.str.27 }, %struct.infomap { ptr @.str.28, ptr @.str.27 }, %struct.infomap { ptr @.str.29, ptr @.str.27 }, %struct.infomap { ptr @.str.30, ptr @.str.27 }, %struct.infomap zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !253
@.str.32 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !258
@.str.33 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !263
@.str.34 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !268
@.str.35 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !273
@.str.36 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !278
@.str.37 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !283
@.str.38 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !288
@.str.39 = private unnamed_addr constant [8 x i8] c"changes\00", align 1, !dbg !293
@.str.40 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1, !dbg !298
@.str.41 = private unnamed_addr constant [17 x i8] c"no-preserve-root\00", align 1, !dbg !300
@.str.42 = private unnamed_addr constant [14 x i8] c"preserve-root\00", align 1, !dbg !302
@.str.43 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1, !dbg !304
@.str.44 = private unnamed_addr constant [10 x i8] c"reference\00", align 1, !dbg !306
@.str.45 = private unnamed_addr constant [7 x i8] c"silent\00", align 1, !dbg !308
@.str.46 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !313
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !315
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !317
@.str.49 = private unnamed_addr constant [16 x i8] c"fts_read failed\00", align 1, !dbg !335
@.str.50 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1, !dbg !337
@.str.51 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1, !dbg !339
@.str.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !341
@.str.53 = private unnamed_addr constant [25 x i8] c"cannot read directory %s\00", align 1, !dbg !346
@.str.54 = private unnamed_addr constant [38 x i8] c"cannot operate on dangling symlink %s\00", align 1, !dbg !348
@.str.55 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1, !dbg !353
@.str.56 = private unnamed_addr constant [45 x i8] c"it is dangerous to operate recursively on %s\00", align 1, !dbg !358
@.str.57 = private unnamed_addr constant [58 x i8] c"it is dangerous to operate recursively on %s (same as %s)\00", align 1, !dbg !363
@.str.58 = private unnamed_addr constant [49 x i8] c"use --no-preserve-root to override this failsafe\00", align 1, !dbg !368
@.str.59 = private unnamed_addr constant [27 x i8] c"changing permissions of %s\00", align 1, !dbg !373
@.str.60 = private unnamed_addr constant [35 x i8] c"%s: new permissions are %s, not %s\00", align 1, !dbg !375
@.str.61 = private unnamed_addr constant [29 x i8] c"getting new attributes of %s\00", align 1, !dbg !380
@.str.62 = private unnamed_addr constant [56 x i8] c"neither symbolic link %s nor referent has been changed\0A\00", align 1, !dbg !385
@.str.63 = private unnamed_addr constant [26 x i8] c"%s could not be accessed\0A\00", align 1, !dbg !390
@.str.64 = private unnamed_addr constant [50 x i8] c"mode of %s changed from %04lo (%s) to %04lo (%s)\0A\00", align 1, !dbg !395
@.str.65 = private unnamed_addr constant [59 x i8] c"failed to change mode of %s from %04lo (%s) to %04lo (%s)\0A\00", align 1, !dbg !400
@.str.66 = private unnamed_addr constant [35 x i8] c"mode of %s retained as %04lo (%s)\0A\00", align 1, !dbg !405

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !414 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !418, metadata !DIExpression()), !dbg !419
  %2 = icmp ne i32 %0, 0, !dbg !420
  br i1 %2, label %3, label %9, !dbg !422

3:                                                ; preds = %1
  br label %4, !dbg !423

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !424, !tbaa !426
  %6 = load ptr, ptr @program_name, align 8, !dbg !424, !tbaa !426
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !424
  br label %8, !dbg !424

8:                                                ; preds = %4
  br label %30, !dbg !424

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !430, !tbaa !426
  %11 = load ptr, ptr @program_name, align 8, !dbg !432, !tbaa !426
  %12 = load ptr, ptr @program_name, align 8, !dbg !433, !tbaa !426
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10, ptr noundef %11, ptr noundef %12), !dbg !434
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !435, !tbaa !426
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %14), !dbg !436
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !437, !tbaa !426
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %16), !dbg !438
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !439, !tbaa !426
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %18), !dbg !440
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !441, !tbaa !426
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %20), !dbg !442
  %22 = load ptr, ptr @__stdoutp, align 8, !dbg !443, !tbaa !426
  %23 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %22), !dbg !444
  %24 = load ptr, ptr @__stdoutp, align 8, !dbg !445, !tbaa !426
  %25 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %24), !dbg !446
  %26 = load ptr, ptr @__stdoutp, align 8, !dbg !447, !tbaa !426
  %27 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %26), !dbg !448
  %28 = load ptr, ptr @__stdoutp, align 8, !dbg !449, !tbaa !426
  %29 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %28), !dbg !450
  call void @emit_ancillary_info(ptr noundef @.str.10), !dbg !451
  br label %30

30:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #11, !dbg !452
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
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #12, !dbg !536
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
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.31, ptr noundef @.str.13, ptr noundef @.str.32), !dbg !558
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !559
  call void @llvm.dbg.value(metadata ptr %27, metadata !533, metadata !DIExpression()), !dbg !535
  %28 = icmp ne ptr %27, null, !dbg !560
  br i1 %28, label %29, label %35, !dbg !562

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.33, i64 noundef 3), !dbg !563
  %31 = icmp ne i32 %30, 0, !dbg !563
  br i1 %31, label %32, label %35, !dbg !564

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !565, !tbaa !426
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.34, ptr noundef %33), !dbg !567
  br label %35, !dbg !568

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.22), !dbg !569
  %37 = icmp eq i32 %36, 0, !dbg !569
  br i1 %37, label %38, label %39, !dbg !569

38:                                               ; preds = %35
  br label %40, !dbg !569

39:                                               ; preds = %35
  br label %40, !dbg !569

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.35, %38 ], [ %0, %39 ], !dbg !569
  call void @llvm.dbg.value(metadata ptr %41, metadata !534, metadata !DIExpression()), !dbg !535
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef @.str.32, ptr noundef %41), !dbg !570
  %43 = icmp eq ptr %.01, %0, !dbg !571
  %44 = zext i1 %43 to i64, !dbg !572
  %45 = select i1 %43, ptr @.str.38, ptr @.str.11, !dbg !572
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, ptr noundef %.01, ptr noundef %45), !dbg !573
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #12, !dbg !574
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
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !166 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !171, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %1, metadata !172, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr null, metadata !173, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 0, metadata !174, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #12, !dbg !589
  call void @llvm.dbg.declare(metadata ptr %3, metadata !179, metadata !DIExpression()), !dbg !590
  store i64 0, ptr %3, align 8, !dbg !590, !tbaa !591
  call void @llvm.dbg.value(metadata i8 0, metadata !182, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr null, metadata !183, metadata !DIExpression()), !dbg !588
  %4 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !593
  %5 = load ptr, ptr %4, align 8, !dbg !593, !tbaa !426
  call void @set_program_name(ptr noundef %5), !dbg !594
  %6 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.11), !dbg !595
  %7 = call i32 @atexit(ptr noundef @close_stdout), !dbg !596
  store i8 0, ptr @diagnose_surprises, align 1, !dbg !597, !tbaa !598
  store i8 0, ptr @force_silent, align 1, !dbg !600, !tbaa !598
  store i8 0, ptr @recurse, align 1, !dbg !601, !tbaa !598
  br label %8, !dbg !602

8:                                                ; preds = %48, %2
  %.05 = phi ptr [ null, %2 ], [ %.2, %48 ], !dbg !603
  %.03 = phi i64 [ 0, %2 ], [ %.14, %48 ], !dbg !604
  %.01 = phi i8 [ 0, %2 ], [ %.12, %48 ], !dbg !605
  %.0 = phi ptr [ null, %2 ], [ %.1, %48 ], !dbg !606
  call void @llvm.dbg.value(metadata ptr %.0, metadata !183, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i8 %.01, metadata !182, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %.03, metadata !174, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %.05, metadata !173, metadata !DIExpression()), !dbg !588
  %9 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.12, ptr noundef @long_options, ptr noundef null), !dbg !607
  call void @llvm.dbg.value(metadata i32 %9, metadata !184, metadata !DIExpression()), !dbg !588
  %10 = icmp ne i32 %9, -1, !dbg !608
  br i1 %10, label %11, label %49, !dbg !602

11:                                               ; preds = %8
  switch i32 %9, label %47 [
    i32 114, label %12
    i32 119, label %12
    i32 120, label %12
    i32 88, label %12
    i32 115, label %12
    i32 116, label %12
    i32 117, label %12
    i32 103, label %12
    i32 111, label %12
    i32 97, label %12
    i32 44, label %12
    i32 43, label %12
    i32 61, label %12
    i32 48, label %12
    i32 49, label %12
    i32 50, label %12
    i32 51, label %12
    i32 52, label %12
    i32 53, label %12
    i32 54, label %12
    i32 55, label %12
    i32 128, label %35
    i32 129, label %36
    i32 130, label %37
    i32 82, label %39
    i32 99, label %40
    i32 102, label %41
    i32 118, label %42
    i32 -130, label %43
    i32 -131, label %44
  ], !dbg !609

12:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %13 = load i32, ptr @rpl_optind, align 4, !dbg !610, !tbaa !611
  %14 = sub nsw i32 %13, 1, !dbg !613
  %15 = sext i32 %14 to i64, !dbg !614
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !614
  %17 = load ptr, ptr %16, align 8, !dbg !614, !tbaa !426
  call void @llvm.dbg.value(metadata ptr %17, metadata !185, metadata !DIExpression()), !dbg !615
  %18 = call i64 @strlen(ptr noundef %17), !dbg !616
  call void @llvm.dbg.value(metadata i64 %18, metadata !189, metadata !DIExpression()), !dbg !615
  %19 = icmp ne i64 %.03, 0, !dbg !617
  %20 = xor i1 %19, true, !dbg !617
  %21 = xor i1 %20, true, !dbg !618
  %22 = zext i1 %21 to i32, !dbg !618
  %23 = sext i32 %22 to i64, !dbg !618
  %24 = add i64 %.03, %23, !dbg !619
  call void @llvm.dbg.value(metadata i64 %24, metadata !190, metadata !DIExpression()), !dbg !615
  %25 = add i64 %24, %18, !dbg !620
  call void @llvm.dbg.value(metadata i64 %25, metadata !191, metadata !DIExpression()), !dbg !615
  %26 = load i64, ptr %3, align 8, !dbg !621, !tbaa !591
  %27 = icmp ule i64 %26, %25, !dbg !623
  br i1 %27, label %28, label %31, !dbg !624

28:                                               ; preds = %12
  %29 = add i64 %25, 1, !dbg !625
  store i64 %29, ptr %3, align 8, !dbg !627, !tbaa !591
  %30 = call nonnull ptr @x2realloc(ptr noundef %.05, ptr noundef %3), !dbg !628
  call void @llvm.dbg.value(metadata ptr %30, metadata !173, metadata !DIExpression()), !dbg !588
  br label %31, !dbg !629

31:                                               ; preds = %28, %12
  %.16 = phi ptr [ %30, %28 ], [ %.05, %12 ], !dbg !588
  call void @llvm.dbg.value(metadata ptr %.16, metadata !173, metadata !DIExpression()), !dbg !588
  %32 = getelementptr inbounds i8, ptr %.16, i64 %.03, !dbg !630
  store i8 44, ptr %32, align 1, !dbg !631, !tbaa !632
  %33 = getelementptr inbounds i8, ptr %.16, i64 %24, !dbg !633
  %34 = add i64 %18, 1, !dbg !634
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %17, i64 %34, i1 false), !dbg !635
  call void @llvm.dbg.value(metadata i64 %25, metadata !174, metadata !DIExpression()), !dbg !588
  store i8 1, ptr @diagnose_surprises, align 1, !dbg !636, !tbaa !598
  br label %48, !dbg !637

35:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 0, metadata !182, metadata !DIExpression()), !dbg !588
  br label %48, !dbg !638

36:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !182, metadata !DIExpression()), !dbg !588
  br label %48, !dbg !639

37:                                               ; preds = %11
  %38 = load ptr, ptr @rpl_optarg, align 8, !dbg !640, !tbaa !426
  call void @llvm.dbg.value(metadata ptr %38, metadata !183, metadata !DIExpression()), !dbg !588
  br label %48, !dbg !641

39:                                               ; preds = %11
  store i8 1, ptr @recurse, align 1, !dbg !642, !tbaa !598
  br label %48, !dbg !643

40:                                               ; preds = %11
  store i32 1, ptr @verbosity, align 4, !dbg !644, !tbaa !632
  br label %48, !dbg !645

41:                                               ; preds = %11
  store i8 1, ptr @force_silent, align 1, !dbg !646, !tbaa !598
  br label %48, !dbg !647

42:                                               ; preds = %11
  store i32 0, ptr @verbosity, align 4, !dbg !648, !tbaa !632
  br label %48, !dbg !649

43:                                               ; preds = %11
  call void @usage(i32 noundef 0) #11, !dbg !650
  unreachable, !dbg !650

44:                                               ; preds = %11
  %45 = load ptr, ptr @__stdoutp, align 8, !dbg !651, !tbaa !426
  %46 = load ptr, ptr @Version, align 8, !dbg !651, !tbaa !426
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %45, ptr noundef @.str.10, ptr noundef @.str.13, ptr noundef %46, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef null), !dbg !651
  call void @exit(i32 noundef 0) #11, !dbg !651
  unreachable, !dbg !651

47:                                               ; preds = %11
  call void @usage(i32 noundef 1) #11, !dbg !652
  unreachable, !dbg !652

48:                                               ; preds = %42, %41, %40, %39, %37, %36, %35, %31
  %.2 = phi ptr [ %.05, %42 ], [ %.05, %41 ], [ %.05, %40 ], [ %.05, %39 ], [ %.05, %37 ], [ %.05, %36 ], [ %.05, %35 ], [ %.16, %31 ], !dbg !588
  %.14 = phi i64 [ %.03, %42 ], [ %.03, %41 ], [ %.03, %40 ], [ %.03, %39 ], [ %.03, %37 ], [ %.03, %36 ], [ %.03, %35 ], [ %25, %31 ], !dbg !588
  %.12 = phi i8 [ %.01, %42 ], [ %.01, %41 ], [ %.01, %40 ], [ %.01, %39 ], [ %.01, %37 ], [ 1, %36 ], [ 0, %35 ], [ %.01, %31 ], !dbg !588
  %.1 = phi ptr [ %.0, %42 ], [ %.0, %41 ], [ %.0, %40 ], [ %.0, %39 ], [ %38, %37 ], [ %.0, %36 ], [ %.0, %35 ], [ %.0, %31 ], !dbg !588
  call void @llvm.dbg.value(metadata ptr %.1, metadata !183, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i8 %.12, metadata !182, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %.14, metadata !174, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %.2, metadata !173, metadata !DIExpression()), !dbg !588
  br label %8, !dbg !602, !llvm.loop !653

49:                                               ; preds = %8
  %50 = icmp ne ptr %.0, null, !dbg !655
  br i1 %50, label %51, label %55, !dbg !657

51:                                               ; preds = %49
  %52 = icmp ne ptr %.05, null, !dbg !658
  br i1 %52, label %53, label %54, !dbg !661

53:                                               ; preds = %51
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.16), !dbg !662
  call void @usage(i32 noundef 1) #11, !dbg !664
  unreachable, !dbg !664

54:                                               ; preds = %51
  br label %64, !dbg !665

55:                                               ; preds = %49
  %56 = icmp ne ptr %.05, null, !dbg !666
  br i1 %56, label %63, label %57, !dbg !669

57:                                               ; preds = %55
  %58 = load i32, ptr @rpl_optind, align 4, !dbg !670, !tbaa !611
  %59 = add nsw i32 %58, 1, !dbg !670
  store i32 %59, ptr @rpl_optind, align 4, !dbg !670, !tbaa !611
  %60 = sext i32 %58 to i64, !dbg !671
  %61 = getelementptr inbounds ptr, ptr %1, i64 %60, !dbg !671
  %62 = load ptr, ptr %61, align 8, !dbg !671, !tbaa !426
  call void @llvm.dbg.value(metadata ptr %62, metadata !173, metadata !DIExpression()), !dbg !588
  br label %63, !dbg !672

63:                                               ; preds = %57, %55
  %.3 = phi ptr [ %.05, %55 ], [ %62, %57 ], !dbg !588
  call void @llvm.dbg.value(metadata ptr %.3, metadata !173, metadata !DIExpression()), !dbg !588
  br label %64

64:                                               ; preds = %63, %54
  %.4 = phi ptr [ %.05, %54 ], [ %.3, %63 ], !dbg !603
  call void @llvm.dbg.value(metadata ptr %.4, metadata !173, metadata !DIExpression()), !dbg !588
  %65 = load i32, ptr @rpl_optind, align 4, !dbg !673, !tbaa !611
  %66 = icmp sge i32 %65, %0, !dbg !675
  br i1 %66, label %67, label %84, !dbg !676

67:                                               ; preds = %64
  %68 = icmp ne ptr %.4, null, !dbg !677
  br i1 %68, label %69, label %76, !dbg !680

69:                                               ; preds = %67
  %70 = load i32, ptr @rpl_optind, align 4, !dbg !681, !tbaa !611
  %71 = sub nsw i32 %70, 1, !dbg !682
  %72 = sext i32 %71 to i64, !dbg !683
  %73 = getelementptr inbounds ptr, ptr %1, i64 %72, !dbg !683
  %74 = load ptr, ptr %73, align 8, !dbg !683, !tbaa !426
  %75 = icmp ne ptr %.4, %74, !dbg !684
  br i1 %75, label %76, label %77, !dbg !685

76:                                               ; preds = %69, %67
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.17), !dbg !686
  br label %83, !dbg !686

77:                                               ; preds = %69
  %78 = sub nsw i32 %0, 1, !dbg !687
  %79 = sext i32 %78 to i64, !dbg !688
  %80 = getelementptr inbounds ptr, ptr %1, i64 %79, !dbg !688
  %81 = load ptr, ptr %80, align 8, !dbg !688, !tbaa !426
  %82 = call ptr @quote(ptr noundef %81), !dbg !689
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.18, ptr noundef %82), !dbg !690
  br label %83

83:                                               ; preds = %77, %76
  call void @usage(i32 noundef 1) #11, !dbg !691
  unreachable, !dbg !691

84:                                               ; preds = %64
  %85 = icmp ne ptr %.0, null, !dbg !692
  br i1 %85, label %86, label %95, !dbg !694

86:                                               ; preds = %84
  %87 = call noalias ptr @mode_create_from_ref(ptr noundef %.0), !dbg !695
  store ptr %87, ptr @change, align 8, !dbg !697, !tbaa !426
  %88 = load ptr, ptr @change, align 8, !dbg !698, !tbaa !426
  %89 = icmp ne ptr %88, null, !dbg !698
  br i1 %89, label %94, label %90, !dbg !700

90:                                               ; preds = %86
  %91 = call ptr @__error(), !dbg !701
  %92 = load i32, ptr %91, align 4, !dbg !701, !tbaa !611
  %93 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %.0), !dbg !701
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %92, ptr noundef @.str.19, ptr noundef %93), !dbg !701
  unreachable, !dbg !701

94:                                               ; preds = %86
  br label %103, !dbg !702

95:                                               ; preds = %84
  %96 = call noalias ptr @mode_compile(ptr noundef %.4), !dbg !703
  store ptr %96, ptr @change, align 8, !dbg !705, !tbaa !426
  %97 = load ptr, ptr @change, align 8, !dbg !706, !tbaa !426
  %98 = icmp ne ptr %97, null, !dbg !706
  br i1 %98, label %101, label %99, !dbg !708

99:                                               ; preds = %95
  %100 = call ptr @quote(ptr noundef %.4), !dbg !709
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.20, ptr noundef %100), !dbg !711
  call void @usage(i32 noundef 1) #11, !dbg !712
  unreachable, !dbg !712

101:                                              ; preds = %95
  %102 = call zeroext i16 @umask(i16 noundef zeroext 0), !dbg !713
  store i16 %102, ptr @umask_value, align 2, !dbg !714, !tbaa !715
  br label %103

103:                                              ; preds = %101, %94
  %104 = load i8, ptr @recurse, align 1, !dbg !717, !tbaa !598, !range !719, !noundef !511
  %105 = trunc i8 %104 to i1, !dbg !717
  br i1 %105, label %106, label %117, !dbg !720

106:                                              ; preds = %103
  %107 = trunc i8 %.01 to i1, !dbg !721
  br i1 %107, label %108, label %117, !dbg !722

108:                                              ; preds = %106
  %109 = call ptr @get_root_dev_ino(ptr noundef @main.dev_ino_buf), !dbg !723
  store ptr %109, ptr @root_dev_ino, align 8, !dbg !725, !tbaa !426
  %110 = load ptr, ptr @root_dev_ino, align 8, !dbg !726, !tbaa !426
  %111 = icmp eq ptr %110, null, !dbg !728
  br i1 %111, label %112, label %116, !dbg !729

112:                                              ; preds = %108
  %113 = call ptr @__error(), !dbg !730
  %114 = load i32, ptr %113, align 4, !dbg !730, !tbaa !611
  %115 = call ptr @quotearg_style(i32 noundef 4, ptr noundef @.str.21), !dbg !730
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %114, ptr noundef @.str.19, ptr noundef %115), !dbg !730
  unreachable, !dbg !730

116:                                              ; preds = %108
  br label %118, !dbg !731

117:                                              ; preds = %106, %103
  store ptr null, ptr @root_dev_ino, align 8, !dbg !732, !tbaa !426
  br label %118

118:                                              ; preds = %117, %116
  %119 = load i32, ptr @rpl_optind, align 4, !dbg !734, !tbaa !611
  %120 = sext i32 %119 to i64, !dbg !735
  %121 = getelementptr inbounds ptr, ptr %1, i64 %120, !dbg !735
  %122 = call zeroext i1 @process_files(ptr noundef %121, i32 noundef 1041), !dbg !736
  %123 = zext i1 %122 to i8, !dbg !737
  call void @llvm.dbg.value(metadata i8 %123, metadata !180, metadata !DIExpression()), !dbg !588
  %124 = trunc i8 %123 to i1, !dbg !738
  %125 = zext i1 %124 to i64, !dbg !738
  %126 = select i1 %124, i32 0, i32 1, !dbg !738
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #12, !dbg !739
  ret i32 %126, !dbg !738
}

declare !dbg !740 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !742 i32 @atexit(ptr noundef) #2

declare !dbg !748 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !752 i64 @strlen(ptr noundef) #2

declare !dbg !755 nonnull ptr @x2realloc(ptr noundef, ptr noundef) #2

declare !dbg !760 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !764 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !768 ptr @quote(ptr noundef) #2

declare !dbg !772 noalias ptr @mode_create_from_ref(ptr noundef) #2

declare !dbg !775 ptr @__error() #2

declare !dbg !779 ptr @quotearg_style(i32 noundef, ptr noundef) #2

declare !dbg !782 noalias ptr @mode_compile(ptr noundef) #2

declare !dbg !783 zeroext i16 @umask(i16 noundef zeroext) #2

declare !dbg !787 ptr @get_root_dev_ino(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @process_files(ptr noundef %0, i32 noundef %1) #7 !dbg !791 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !795, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i32 %1, metadata !796, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i8 1, metadata !797, metadata !DIExpression()), !dbg !943
  %3 = call noalias nonnull ptr @xfts_open(ptr noundef %0, i32 noundef %1, ptr noundef null), !dbg !944
  call void @llvm.dbg.value(metadata ptr %3, metadata !798, metadata !DIExpression()), !dbg !943
  br label %4, !dbg !945

4:                                                ; preds = %29, %2
  %.01 = phi i8 [ 1, %2 ], [ %.2, %29 ], !dbg !943
  call void @llvm.dbg.value(metadata i8 %.01, metadata !797, metadata !DIExpression()), !dbg !943
  br label %5, !dbg !945

5:                                                ; preds = %4
  %6 = call ptr @rpl_fts_read(ptr noundef %3), !dbg !946
  call void @llvm.dbg.value(metadata ptr %6, metadata !939, metadata !DIExpression()), !dbg !947
  %7 = icmp eq ptr %6, null, !dbg !948
  br i1 %7, label %8, label %20, !dbg !950

8:                                                ; preds = %5
  %9 = call ptr @__error(), !dbg !951
  %10 = load i32, ptr %9, align 4, !dbg !951, !tbaa !611
  %11 = icmp ne i32 %10, 0, !dbg !954
  br i1 %11, label %12, label %19, !dbg !955

12:                                               ; preds = %8
  %13 = load i8, ptr @force_silent, align 1, !dbg !956, !tbaa !598, !range !719, !noundef !511
  %14 = trunc i8 %13 to i1, !dbg !956
  br i1 %14, label %18, label %15, !dbg !959

15:                                               ; preds = %12
  %16 = call ptr @__error(), !dbg !960
  %17 = load i32, ptr %16, align 4, !dbg !960, !tbaa !611
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %17, ptr noundef @.str.49), !dbg !961
  br label %18, !dbg !961

18:                                               ; preds = %15, %12
  call void @llvm.dbg.value(metadata i8 0, metadata !797, metadata !DIExpression()), !dbg !943
  br label %19, !dbg !962

19:                                               ; preds = %18, %8
  %.1 = phi i8 [ 0, %18 ], [ %.01, %8 ], !dbg !943
  call void @llvm.dbg.value(metadata i8 %.1, metadata !797, metadata !DIExpression()), !dbg !943
  br label %28, !dbg !963

20:                                               ; preds = %5
  %21 = call zeroext i1 @process_file(ptr noundef %3, ptr noundef %6), !dbg !964
  %22 = zext i1 %21 to i32, !dbg !964
  %23 = trunc i8 %.01 to i1, !dbg !965
  %24 = zext i1 %23 to i32, !dbg !965
  %25 = and i32 %24, %22, !dbg !965
  %26 = icmp ne i32 %25, 0, !dbg !965
  %27 = zext i1 %26 to i8, !dbg !965
  call void @llvm.dbg.value(metadata i8 %27, metadata !797, metadata !DIExpression()), !dbg !943
  br label %28, !dbg !966

28:                                               ; preds = %20, %19
  %.2 = phi i8 [ %.1, %19 ], [ %27, %20 ], !dbg !947
  %.0 = phi i32 [ 3, %19 ], [ 0, %20 ]
  call void @llvm.dbg.value(metadata i8 %.2, metadata !797, metadata !DIExpression()), !dbg !943
  switch i32 %.0, label %38 [
    i32 0, label %29
    i32 3, label %30
  ]

29:                                               ; preds = %28
  br label %4, !dbg !945, !llvm.loop !967

30:                                               ; preds = %28
  %31 = call i32 @rpl_fts_close(ptr noundef %3), !dbg !968
  %32 = icmp ne i32 %31, 0, !dbg !970
  br i1 %32, label %33, label %36, !dbg !971

33:                                               ; preds = %30
  %34 = call ptr @__error(), !dbg !972
  %35 = load i32, ptr %34, align 4, !dbg !972, !tbaa !611
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %35, ptr noundef @.str.50), !dbg !974
  call void @llvm.dbg.value(metadata i8 0, metadata !797, metadata !DIExpression()), !dbg !943
  br label %36, !dbg !975

36:                                               ; preds = %33, %30
  %.3 = phi i8 [ 0, %33 ], [ %.2, %30 ], !dbg !943
  call void @llvm.dbg.value(metadata i8 %.3, metadata !797, metadata !DIExpression()), !dbg !943
  %37 = trunc i8 %.3 to i1, !dbg !976
  ret i1 %37, !dbg !977

38:                                               ; preds = %28
  unreachable
}

declare !dbg !978 noalias nonnull ptr @xfts_open(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !990 ptr @rpl_fts_read(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @process_file(ptr noundef %0, ptr noundef %1) #7 !dbg !993 {
  %3 = alloca %struct.change_status, align 4
  %4 = alloca [12 x i8], align 1
  %5 = alloca [12 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !997, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata ptr %1, metadata !998, metadata !DIExpression()), !dbg !1012
  %6 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 7, !dbg !1013
  %7 = load ptr, ptr %6, align 8, !dbg !1013, !tbaa !426
  call void @llvm.dbg.value(metadata ptr %7, metadata !999, metadata !DIExpression()), !dbg !1012
  %8 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 6, !dbg !1014
  %9 = load ptr, ptr %8, align 8, !dbg !1014, !tbaa !426
  call void @llvm.dbg.value(metadata ptr %9, metadata !1000, metadata !DIExpression()), !dbg !1012
  %10 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 17, !dbg !1015
  %11 = getelementptr inbounds [1 x %struct.stat], ptr %10, i64 0, i64 0, !dbg !1016
  call void @llvm.dbg.value(metadata ptr %11, metadata !1001, metadata !DIExpression()), !dbg !1012
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #12, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1004, metadata !DIExpression()), !dbg !1018
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 8, i1 false), !dbg !1018
  %12 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1019
  store i32 0, ptr %12, align 4, !dbg !1020, !tbaa !1021
  %13 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 14, !dbg !1023
  %14 = load i16, ptr %13, align 8, !dbg !1023, !tbaa !715
  %15 = zext i16 %14 to i32, !dbg !1024
  switch i32 %15, label %66 [
    i32 6, label %16
    i32 10, label %17
    i32 7, label %36
    i32 4, label %44
    i32 13, label %52
    i32 2, label %58
  ], !dbg !1025

16:                                               ; preds = %2
  br label %225, !dbg !1026

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 12, !dbg !1028
  %19 = load i64, ptr %18, align 8, !dbg !1028, !tbaa !591
  %20 = icmp eq i64 %19, 0, !dbg !1030
  br i1 %20, label %21, label %28, !dbg !1031

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 4, !dbg !1032
  %23 = load i64, ptr %22, align 8, !dbg !1032, !tbaa !591
  %24 = icmp eq i64 %23, 0, !dbg !1033
  br i1 %24, label %25, label %28, !dbg !1034

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 4, !dbg !1035
  store i64 1, ptr %26, align 8, !dbg !1037, !tbaa !591
  %27 = call i32 @rpl_fts_set(ptr noundef %0, ptr noundef %1, i32 noundef 1), !dbg !1038
  br label %225, !dbg !1039

28:                                               ; preds = %21, %17
  %29 = load i8, ptr @force_silent, align 1, !dbg !1040, !tbaa !598, !range !719, !noundef !511
  %30 = trunc i8 %29 to i1, !dbg !1040
  br i1 %30, label %35, label %31, !dbg !1042

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 8, !dbg !1043
  %33 = load i32, ptr %32, align 8, !dbg !1043, !tbaa !611
  %34 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %7), !dbg !1044
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %33, ptr noundef @.str.51, ptr noundef %34), !dbg !1045
  br label %35, !dbg !1045

35:                                               ; preds = %31, %28
  br label %68, !dbg !1046

36:                                               ; preds = %2
  %37 = load i8, ptr @force_silent, align 1, !dbg !1047, !tbaa !598, !range !719, !noundef !511
  %38 = trunc i8 %37 to i1, !dbg !1047
  br i1 %38, label %43, label %39, !dbg !1049

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 8, !dbg !1050
  %41 = load i32, ptr %40, align 8, !dbg !1050, !tbaa !611
  %42 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %7), !dbg !1051
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %41, ptr noundef @.str.52, ptr noundef %42), !dbg !1052
  br label %43, !dbg !1052

43:                                               ; preds = %39, %36
  br label %68, !dbg !1053

44:                                               ; preds = %2
  %45 = load i8, ptr @force_silent, align 1, !dbg !1054, !tbaa !598, !range !719, !noundef !511
  %46 = trunc i8 %45 to i1, !dbg !1054
  br i1 %46, label %51, label %47, !dbg !1056

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 8, !dbg !1057
  %49 = load i32, ptr %48, align 8, !dbg !1057, !tbaa !611
  %50 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %7), !dbg !1058
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %49, ptr noundef @.str.53, ptr noundef %50), !dbg !1059
  br label %51, !dbg !1059

51:                                               ; preds = %47, %44
  br label %68, !dbg !1060

52:                                               ; preds = %2
  %53 = load i8, ptr @force_silent, align 1, !dbg !1061, !tbaa !598, !range !719, !noundef !511
  %54 = trunc i8 %53 to i1, !dbg !1061
  br i1 %54, label %57, label %55, !dbg !1063

55:                                               ; preds = %52
  %56 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %7), !dbg !1064
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.54, ptr noundef %56), !dbg !1065
  br label %57, !dbg !1065

57:                                               ; preds = %55, %52
  br label %68, !dbg !1066

58:                                               ; preds = %2
  %59 = call zeroext i1 @cycle_warning_required(ptr noundef %0, ptr noundef %1) #13, !dbg !1067
  br i1 %59, label %60, label %65, !dbg !1069

60:                                               ; preds = %58
  br label %61, !dbg !1070

61:                                               ; preds = %60
  %62 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %7), !dbg !1072
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.55, ptr noundef %62), !dbg !1072
  br label %63, !dbg !1072

63:                                               ; preds = %61
  br label %64, !dbg !1072

64:                                               ; preds = %63
  br label %225, !dbg !1074

65:                                               ; preds = %58
  br label %66, !dbg !1075

66:                                               ; preds = %65, %2
  %67 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1076
  store i32 2, ptr %67, align 4, !dbg !1077, !tbaa !1021
  br label %68, !dbg !1078

68:                                               ; preds = %66, %57, %51, %43, %35
  %69 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1079
  %70 = load i32, ptr %69, align 4, !dbg !1079, !tbaa !1021
  %71 = icmp eq i32 %70, 2, !dbg !1081
  br i1 %71, label %72, label %103, !dbg !1082

72:                                               ; preds = %68
  %73 = load ptr, ptr @root_dev_ino, align 8, !dbg !1083, !tbaa !426
  %74 = icmp ne ptr %73, null, !dbg !1083
  br i1 %74, label %75, label %103, !dbg !1083

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.stat, ptr %11, i32 0, i32 3, !dbg !1083
  %77 = load i64, ptr %76, align 8, !dbg !1083, !tbaa !1084
  %78 = load ptr, ptr @root_dev_ino, align 8, !dbg !1083, !tbaa !426
  %79 = getelementptr inbounds %struct.dev_ino, ptr %78, i32 0, i32 0, !dbg !1083
  %80 = load i64, ptr %79, align 8, !dbg !1083, !tbaa !1088
  %81 = icmp eq i64 %77, %80, !dbg !1083
  br i1 %81, label %82, label %103, !dbg !1083

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.stat, ptr %11, i32 0, i32 0, !dbg !1083
  %84 = load i32, ptr %83, align 8, !dbg !1083, !tbaa !1090
  %85 = load ptr, ptr @root_dev_ino, align 8, !dbg !1083, !tbaa !426
  %86 = getelementptr inbounds %struct.dev_ino, ptr %85, i32 0, i32 1, !dbg !1083
  %87 = load i32, ptr %86, align 8, !dbg !1083, !tbaa !1091
  %88 = icmp eq i32 %84, %87, !dbg !1083
  br i1 %88, label %89, label %103, !dbg !1092

89:                                               ; preds = %82
  br label %90, !dbg !1093

90:                                               ; preds = %89
  %91 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.21), !dbg !1095
  %92 = icmp eq i32 %91, 0, !dbg !1095
  br i1 %92, label %93, label %95, !dbg !1098

93:                                               ; preds = %90
  %94 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %7), !dbg !1095
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.56, ptr noundef %94), !dbg !1095
  br label %98, !dbg !1095

95:                                               ; preds = %90
  %96 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %7), !dbg !1095
  %97 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef @.str.21), !dbg !1095
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.57, ptr noundef %96, ptr noundef %97), !dbg !1095
  br label %98

98:                                               ; preds = %95, %93
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.58), !dbg !1098
  br label %99, !dbg !1098

99:                                               ; preds = %98
  br label %100, !dbg !1098

100:                                              ; preds = %99
  %101 = call i32 @rpl_fts_set(ptr noundef %0, ptr noundef %1, i32 noundef 4), !dbg !1099
  %102 = call ptr @rpl_fts_read(ptr noundef %0), !dbg !1100
  br label %225, !dbg !1101

103:                                              ; preds = %82, %75, %72, %68
  %104 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1102
  %105 = load i32, ptr %104, align 4, !dbg !1102, !tbaa !1021
  %106 = icmp eq i32 %105, 2, !dbg !1104
  br i1 %106, label %107, label %148, !dbg !1105

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.stat, ptr %11, i32 0, i32 1, !dbg !1106
  %109 = load i16, ptr %108, align 4, !dbg !1106, !tbaa !1107
  %110 = zext i16 %109 to i32, !dbg !1106
  %111 = and i32 %110, 61440, !dbg !1106
  %112 = icmp eq i32 %111, 40960, !dbg !1106
  br i1 %112, label %148, label %113, !dbg !1108

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.stat, ptr %11, i32 0, i32 1, !dbg !1109
  %115 = load i16, ptr %114, align 4, !dbg !1109, !tbaa !1107
  %116 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 1, !dbg !1111
  store i16 %115, ptr %116, align 4, !dbg !1112, !tbaa !1113
  %117 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 1, !dbg !1114
  %118 = load i16, ptr %117, align 4, !dbg !1114, !tbaa !1113
  %119 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 1, !dbg !1115
  %120 = load i16, ptr %119, align 4, !dbg !1115, !tbaa !1113
  %121 = zext i16 %120 to i32, !dbg !1115
  %122 = and i32 %121, 61440, !dbg !1115
  %123 = icmp eq i32 %122, 16384, !dbg !1115
  %124 = zext i1 %123 to i32, !dbg !1115
  %125 = icmp ne i32 %124, 0, !dbg !1116
  %126 = load i16, ptr @umask_value, align 2, !dbg !1117, !tbaa !715
  %127 = load ptr, ptr @change, align 8, !dbg !1118, !tbaa !426
  %128 = call zeroext i16 @mode_adjust(i16 noundef zeroext %118, i1 noundef zeroext %125, i16 noundef zeroext %126, ptr noundef %127, ptr noundef null), !dbg !1119
  %129 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 2, !dbg !1120
  store i16 %128, ptr %129, align 2, !dbg !1121, !tbaa !1122
  %130 = getelementptr inbounds %struct.FTS, ptr %0, i32 0, i32 6, !dbg !1123
  %131 = load i32, ptr %130, align 4, !dbg !1123, !tbaa !1125
  %132 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 2, !dbg !1128
  %133 = load i16, ptr %132, align 2, !dbg !1128, !tbaa !1122
  %134 = call i32 @chmodat(i32 noundef %131, ptr noundef %9, i16 noundef zeroext %133), !dbg !1129
  %135 = icmp eq i32 %134, 0, !dbg !1130
  br i1 %135, label %136, label %138, !dbg !1131

136:                                              ; preds = %113
  %137 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1132
  store i32 4, ptr %137, align 4, !dbg !1133, !tbaa !1021
  br label %147, !dbg !1134

138:                                              ; preds = %113
  %139 = load i8, ptr @force_silent, align 1, !dbg !1135, !tbaa !598, !range !719, !noundef !511
  %140 = trunc i8 %139 to i1, !dbg !1135
  br i1 %140, label %145, label %141, !dbg !1138

141:                                              ; preds = %138
  %142 = call ptr @__error(), !dbg !1139
  %143 = load i32, ptr %142, align 4, !dbg !1139, !tbaa !611
  %144 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %7), !dbg !1140
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %143, ptr noundef @.str.59, ptr noundef %144), !dbg !1141
  br label %145, !dbg !1141

145:                                              ; preds = %141, %138
  %146 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1142
  store i32 1, ptr %146, align 4, !dbg !1143, !tbaa !1021
  br label %147

147:                                              ; preds = %145, %136
  br label %148, !dbg !1144

148:                                              ; preds = %147, %107, %103
  %149 = load i32, ptr @verbosity, align 4, !dbg !1145, !tbaa !632
  %150 = icmp ne i32 %149, 2, !dbg !1147
  br i1 %150, label %151, label %174, !dbg !1148

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1149
  %153 = load i32, ptr %152, align 4, !dbg !1149, !tbaa !1021
  %154 = icmp eq i32 %153, 4, !dbg !1152
  br i1 %154, label %155, label %165, !dbg !1153

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.FTS, ptr %0, i32 0, i32 6, !dbg !1154
  %157 = load i32, ptr %156, align 4, !dbg !1154, !tbaa !1125
  %158 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 1, !dbg !1155
  %159 = load i16, ptr %158, align 4, !dbg !1155, !tbaa !1113
  %160 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 2, !dbg !1156
  %161 = load i16, ptr %160, align 2, !dbg !1156, !tbaa !1122
  %162 = call zeroext i1 @mode_changed(i32 noundef %157, ptr noundef %9, ptr noundef %7, i16 noundef zeroext %159, i16 noundef zeroext %161), !dbg !1157
  br i1 %162, label %165, label %163, !dbg !1158

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1159
  store i32 3, ptr %164, align 4, !dbg !1160, !tbaa !1021
  br label %165, !dbg !1161

165:                                              ; preds = %163, %155, %151
  %166 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1162
  %167 = load i32, ptr %166, align 4, !dbg !1162, !tbaa !1021
  %168 = icmp eq i32 %167, 4, !dbg !1164
  br i1 %168, label %172, label %169, !dbg !1165

169:                                              ; preds = %165
  %170 = load i32, ptr @verbosity, align 4, !dbg !1166, !tbaa !632
  %171 = icmp eq i32 %170, 0, !dbg !1167
  br i1 %171, label %172, label %173, !dbg !1168

172:                                              ; preds = %169, %165
  call void @describe_change(ptr noundef %7, ptr noundef %3), !dbg !1169
  br label %173, !dbg !1169

173:                                              ; preds = %172, %169
  br label %174, !dbg !1170

174:                                              ; preds = %173, %148
  %175 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1171
  %176 = load i32, ptr %175, align 4, !dbg !1171, !tbaa !1021
  %177 = icmp ule i32 3, %176, !dbg !1172
  br i1 %177, label %178, label %216, !dbg !1173

178:                                              ; preds = %174
  %179 = load i8, ptr @diagnose_surprises, align 1, !dbg !1174, !tbaa !598, !range !719, !noundef !511
  %180 = trunc i8 %179 to i1, !dbg !1174
  br i1 %180, label %181, label %216, !dbg !1175

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 1, !dbg !1176
  %183 = load i16, ptr %182, align 4, !dbg !1176, !tbaa !1113
  %184 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 1, !dbg !1177
  %185 = load i16, ptr %184, align 4, !dbg !1177, !tbaa !1113
  %186 = zext i16 %185 to i32, !dbg !1177
  %187 = and i32 %186, 61440, !dbg !1177
  %188 = icmp eq i32 %187, 16384, !dbg !1177
  %189 = zext i1 %188 to i32, !dbg !1177
  %190 = icmp ne i32 %189, 0, !dbg !1178
  %191 = load ptr, ptr @change, align 8, !dbg !1179, !tbaa !426
  %192 = call zeroext i16 @mode_adjust(i16 noundef zeroext %183, i1 noundef zeroext %190, i16 noundef zeroext 0, ptr noundef %191, ptr noundef null), !dbg !1180
  call void @llvm.dbg.value(metadata i16 %192, metadata !1005, metadata !DIExpression()), !dbg !1181
  %193 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 2, !dbg !1182
  %194 = load i16, ptr %193, align 2, !dbg !1182, !tbaa !1122
  %195 = zext i16 %194 to i32, !dbg !1183
  %196 = zext i16 %192 to i32, !dbg !1184
  %197 = xor i32 %196, -1, !dbg !1185
  %198 = and i32 %195, %197, !dbg !1186
  %199 = icmp ne i32 %198, 0, !dbg !1186
  br i1 %199, label %200, label %215, !dbg !1187

200:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 12, ptr %4) #12, !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1008, metadata !DIExpression()), !dbg !1189
  call void @llvm.lifetime.start.p0(i64 12, ptr %5) #12, !dbg !1190
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1011, metadata !DIExpression()), !dbg !1191
  %201 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 2, !dbg !1192
  %202 = load i16, ptr %201, align 2, !dbg !1192, !tbaa !1122
  %203 = zext i16 %202 to i32, !dbg !1193
  %204 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 0, !dbg !1194
  call void @strmode(i32 noundef %203, ptr noundef %204), !dbg !1195
  %205 = zext i16 %192 to i32, !dbg !1196
  %206 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 0, !dbg !1197
  call void @strmode(i32 noundef %205, ptr noundef %206), !dbg !1198
  %207 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 10, !dbg !1199
  store i8 0, ptr %207, align 1, !dbg !1200, !tbaa !632
  %208 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 10, !dbg !1201
  store i8 0, ptr %208, align 1, !dbg !1202, !tbaa !632
  %209 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %7), !dbg !1203
  %210 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 0, !dbg !1204
  %211 = getelementptr inbounds i8, ptr %210, i64 1, !dbg !1205
  %212 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 0, !dbg !1206
  %213 = getelementptr inbounds i8, ptr %212, i64 1, !dbg !1207
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.60, ptr noundef %209, ptr noundef %211, ptr noundef %213), !dbg !1208
  %214 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1209
  store i32 1, ptr %214, align 4, !dbg !1210, !tbaa !1021
  call void @llvm.lifetime.end.p0(i64 12, ptr %5) #12, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 12, ptr %4) #12, !dbg !1211
  br label %215, !dbg !1212

215:                                              ; preds = %200, %181
  br label %216, !dbg !1213

216:                                              ; preds = %215, %178, %174
  %217 = load i8, ptr @recurse, align 1, !dbg !1214, !tbaa !598, !range !719, !noundef !511
  %218 = trunc i8 %217 to i1, !dbg !1214
  br i1 %218, label %221, label %219, !dbg !1216

219:                                              ; preds = %216
  %220 = call i32 @rpl_fts_set(ptr noundef %0, ptr noundef %1, i32 noundef 4), !dbg !1217
  br label %221, !dbg !1217

221:                                              ; preds = %219, %216
  %222 = getelementptr inbounds %struct.change_status, ptr %3, i32 0, i32 0, !dbg !1218
  %223 = load i32, ptr %222, align 4, !dbg !1218, !tbaa !1021
  %224 = icmp ule i32 2, %223, !dbg !1219
  br label %225, !dbg !1220

225:                                              ; preds = %221, %100, %64, %25, %16
  %.0 = phi i1 [ false, %100 ], [ %224, %221 ], [ false, %64 ], [ true, %25 ], [ true, %16 ], !dbg !1012
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #12, !dbg !1221
  ret i1 %.0, !dbg !1221
}

declare !dbg !1222 i32 @rpl_fts_close(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare !dbg !1225 i32 @rpl_fts_set(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !1228 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1231 zeroext i1 @cycle_warning_required(ptr noundef, ptr noundef) #9

declare !dbg !1236 ptr @quotearg_n_style(i32 noundef, i32 noundef, ptr noundef) #2

declare !dbg !1237 zeroext i16 @mode_adjust(i16 noundef zeroext, i1 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @chmodat(i32 noundef %0, ptr noundef %1, i16 noundef zeroext %2) #3 !dbg !1243 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1248, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata ptr %1, metadata !1249, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i16 %2, metadata !1250, metadata !DIExpression()), !dbg !1251
  %4 = call i32 @fchmodat(i32 noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef 0), !dbg !1252
  ret i32 %4, !dbg !1253
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @mode_changed(i32 noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #7 !dbg !1254 {
  %6 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1258, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %1, metadata !1259, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %2, metadata !1260, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i16 %3, metadata !1261, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i16 %4, metadata !1262, metadata !DIExpression()), !dbg !1266
  %7 = zext i16 %4 to i32, !dbg !1267
  %8 = and i32 %7, 3584, !dbg !1268
  %9 = icmp ne i32 %8, 0, !dbg !1268
  br i1 %9, label %10, label %26, !dbg !1269

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 144, ptr %6) #12, !dbg !1270
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1263, metadata !DIExpression()), !dbg !1271
  %11 = call i32 @rpl_fstatat(i32 noundef %0, ptr noundef %1, ptr noundef %6, i32 noundef 0), !dbg !1272
  %12 = icmp ne i32 %11, 0, !dbg !1274
  br i1 %12, label %13, label %21, !dbg !1275

13:                                               ; preds = %10
  %14 = load i8, ptr @force_silent, align 1, !dbg !1276, !tbaa !598, !range !719, !noundef !511
  %15 = trunc i8 %14 to i1, !dbg !1276
  br i1 %15, label %20, label %16, !dbg !1279

16:                                               ; preds = %13
  %17 = call ptr @__error(), !dbg !1280
  %18 = load i32, ptr %17, align 4, !dbg !1280, !tbaa !611
  %19 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %2), !dbg !1281
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef @.str.61, ptr noundef %19), !dbg !1282
  br label %20, !dbg !1282

20:                                               ; preds = %16, %13
  br label %24, !dbg !1283

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 1, !dbg !1284
  %23 = load i16, ptr %22, align 4, !dbg !1284, !tbaa !1107
  call void @llvm.dbg.value(metadata i16 %23, metadata !1262, metadata !DIExpression()), !dbg !1266
  br label %24, !dbg !1285

24:                                               ; preds = %21, %20
  %.02 = phi i16 [ %4, %20 ], [ %23, %21 ]
  %.01 = phi i32 [ 1, %20 ], [ 0, %21 ]
  call void @llvm.dbg.value(metadata i16 %.02, metadata !1262, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.end.p0(i64 144, ptr %6) #12, !dbg !1285
  switch i32 %.01, label %33 [
    i32 0, label %25
    i32 1, label %32
  ]

25:                                               ; preds = %24
  br label %26, !dbg !1286

26:                                               ; preds = %25, %5
  %.13 = phi i16 [ %.02, %25 ], [ %4, %5 ]
  call void @llvm.dbg.value(metadata i16 %.13, metadata !1262, metadata !DIExpression()), !dbg !1266
  %27 = zext i16 %3 to i32, !dbg !1287
  %28 = zext i16 %.13 to i32, !dbg !1288
  %29 = xor i32 %27, %28, !dbg !1289
  %30 = and i32 %29, 4095, !dbg !1290
  %31 = icmp ne i32 %30, 0, !dbg !1291
  br label %32, !dbg !1292

32:                                               ; preds = %26, %24
  %.1 = phi i1 [ false, %24 ], [ %31, %26 ], !dbg !1266
  ret i1 %.1, !dbg !1293

33:                                               ; preds = %24
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @describe_change(ptr noundef %0, ptr noundef %1) #7 !dbg !1294 {
  %3 = alloca [12 x i8], align 1
  %4 = alloca [12 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1300, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata ptr %1, metadata !1301, metadata !DIExpression()), !dbg !1308
  call void @llvm.lifetime.start.p0(i64 12, ptr %3) #12, !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1302, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.start.p0(i64 12, ptr %4) #12, !dbg !1311
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1303, metadata !DIExpression()), !dbg !1312
  %5 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1313
  call void @llvm.dbg.value(metadata ptr %5, metadata !1305, metadata !DIExpression()), !dbg !1308
  %6 = getelementptr inbounds %struct.change_status, ptr %1, i32 0, i32 0, !dbg !1314
  %7 = load i32, ptr %6, align 4, !dbg !1314, !tbaa !1021
  switch i32 %7, label %12 [
    i32 2, label %8
    i32 0, label %10
  ], !dbg !1315

8:                                                ; preds = %2
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.62, ptr noundef %5), !dbg !1316
  br label %47, !dbg !1318

10:                                               ; preds = %2
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.63, ptr noundef %5), !dbg !1319
  br label %47, !dbg !1320

12:                                               ; preds = %2
  br label %13, !dbg !1321

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.change_status, ptr %1, i32 0, i32 1, !dbg !1322
  %15 = load i16, ptr %14, align 4, !dbg !1322, !tbaa !1113
  %16 = zext i16 %15 to i32, !dbg !1323
  %17 = and i32 %16, 4095, !dbg !1324
  %18 = sext i32 %17 to i64, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %18, metadata !1306, metadata !DIExpression()), !dbg !1308
  %19 = getelementptr inbounds %struct.change_status, ptr %1, i32 0, i32 2, !dbg !1325
  %20 = load i16, ptr %19, align 2, !dbg !1325, !tbaa !1122
  %21 = zext i16 %20 to i32, !dbg !1326
  %22 = and i32 %21, 4095, !dbg !1327
  %23 = sext i32 %22 to i64, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %23, metadata !1307, metadata !DIExpression()), !dbg !1308
  %24 = getelementptr inbounds %struct.change_status, ptr %1, i32 0, i32 2, !dbg !1328
  %25 = load i16, ptr %24, align 2, !dbg !1328, !tbaa !1122
  %26 = zext i16 %25 to i32, !dbg !1329
  %27 = getelementptr inbounds [12 x i8], ptr %3, i64 0, i64 0, !dbg !1330
  call void @strmode(i32 noundef %26, ptr noundef %27), !dbg !1331
  %28 = getelementptr inbounds [12 x i8], ptr %3, i64 0, i64 10, !dbg !1332
  store i8 0, ptr %28, align 1, !dbg !1333, !tbaa !632
  %29 = getelementptr inbounds %struct.change_status, ptr %1, i32 0, i32 1, !dbg !1334
  %30 = load i16, ptr %29, align 4, !dbg !1334, !tbaa !1113
  %31 = zext i16 %30 to i32, !dbg !1335
  %32 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 0, !dbg !1336
  call void @strmode(i32 noundef %31, ptr noundef %32), !dbg !1337
  %33 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 10, !dbg !1338
  store i8 0, ptr %33, align 1, !dbg !1339, !tbaa !632
  %34 = getelementptr inbounds %struct.change_status, ptr %1, i32 0, i32 0, !dbg !1340
  %35 = load i32, ptr %34, align 4, !dbg !1340, !tbaa !1021
  switch i32 %35, label %41 [
    i32 4, label %36
    i32 1, label %37
    i32 3, label %38
  ], !dbg !1341

36:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr @.str.64, metadata !1304, metadata !DIExpression()), !dbg !1308
  br label %42, !dbg !1342

37:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr @.str.65, metadata !1304, metadata !DIExpression()), !dbg !1308
  br label %42, !dbg !1344

38:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr @.str.66, metadata !1304, metadata !DIExpression()), !dbg !1308
  %39 = getelementptr inbounds [12 x i8], ptr %3, i64 0, i64 1, !dbg !1345
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.66, ptr noundef %5, i64 noundef %23, ptr noundef %39), !dbg !1346
  br label %46, !dbg !1347

41:                                               ; preds = %13
  call void @abort() #14, !dbg !1348
  unreachable, !dbg !1348

42:                                               ; preds = %37, %36
  %.01 = phi ptr [ @.str.65, %37 ], [ @.str.64, %36 ], !dbg !1349
  call void @llvm.dbg.value(metadata ptr %.01, metadata !1304, metadata !DIExpression()), !dbg !1308
  %43 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 1, !dbg !1350
  %44 = getelementptr inbounds [12 x i8], ptr %3, i64 0, i64 1, !dbg !1351
  %45 = call i32 (ptr, ...) @printf(ptr noundef %.01, ptr noundef %5, i64 noundef %18, ptr noundef %43, i64 noundef %23, ptr noundef %44), !dbg !1352
  br label %46, !dbg !1353

46:                                               ; preds = %42, %38
  %.0 = phi i32 [ 1, %38 ], [ 0, %42 ]
  br label %47

47:                                               ; preds = %46, %10, %8
  %.1 = phi i32 [ %.0, %46 ], [ 1, %10 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr %4) #12, !dbg !1353
  call void @llvm.lifetime.end.p0(i64 12, ptr %3) #12, !dbg !1353
  switch i32 %.1, label %49 [
    i32 0, label %48
    i32 1, label %48
  ]

48:                                               ; preds = %47, %47
  ret void, !dbg !1353

49:                                               ; preds = %47
  unreachable
}

declare !dbg !1354 void @strmode(i32 noundef, ptr noundef) #2

; Function Attrs: cold noreturn
declare !dbg !1357 void @abort() #10

declare !dbg !1358 i32 @rpl_fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !1364 i32 @fchmodat(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #2

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
attributes #9 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold noreturn }

!llvm.dbg.cu = !{!64}
!llvm.ident = !{!407}
!llvm.module.flags = !{!408, !409, !410, !411, !412, !413}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 372, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/chmod.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1080, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 135)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 840, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 105)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1608, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 201)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 391, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 128)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 395, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1216, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 152)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 67)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 402, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 48)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 57)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 404, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 75)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 408, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 6)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 429, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "diagnose_surprises", scope: !64, file: !2, line: 84, type: !181, isLocal: true, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !116, globals: !121, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!65 = !{!66, !72, !77, !83, !97}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 95, baseType: !67, size: 32, elements: !68)
!67 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "NO_PRESERVE_ROOT", value: 128)
!70 = !DIEnumerator(name: "PRESERVE_ROOT", value: 129)
!71 = !DIEnumerator(name: "REFERENCE_FILE_OPTION", value: 130)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Verbosity", file: !2, line: 57, baseType: !67, size: 32, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "V_high", value: 0)
!75 = !DIEnumerator(name: "V_changes_only", value: 1)
!76 = !DIEnumerator(name: "V_off", value: 2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 332, baseType: !79, size: 32, elements: !80)
!78 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !{!81, !82}
!81 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!82 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !84, line: 32, baseType: !67, size: 32, elements: !85)
!84 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!86 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!87 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!88 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!89 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!90 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!91 = !DIEnumerator(name: "c_quoting_style", value: 5)
!92 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!93 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!94 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!95 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!96 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !98, file: !2, line: 44, baseType: !67, size: 32, elements: !110)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "change_status", file: !2, line: 42, size: 64, elements: !99)
!99 = !{!100, !101, !109}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !98, file: !2, line: 52, baseType: !97, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "old_mode", scope: !98, file: !2, line: 53, baseType: !102, size: 16, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !103, line: 31, baseType: !104)
!103 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !105, line: 70, baseType: !106)
!105 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !107, line: 45, baseType: !108)
!107 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "new_mode", scope: !98, file: !2, line: 54, baseType: !102, size: 16, offset: 48)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "CH_NO_STAT", value: 0)
!112 = !DIEnumerator(name: "CH_FAILED", value: 1)
!113 = !DIEnumerator(name: "CH_NOT_APPLIED", value: 2)
!114 = !DIEnumerator(name: "CH_NO_CHANGE_REQUESTED", value: 3)
!115 = !DIEnumerator(name: "CH_SUCCEEDED", value: 4)
!116 = !{!117, !119, !120}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!121 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !122, !127, !132, !137, !142, !147, !149, !154, !159, !164, !207, !212, !217, !219, !221, !62, !223, !226, !228, !230, !235, !240, !242, !247, !249, !251, !253, !258, !263, !268, !273, !278, !283, !288, !293, !298, !300, !302, !304, !306, !308, !313, !315, !317, !319, !333, !335, !337, !339, !341, !346, !348, !353, !358, !363, !368, !373, !375, !380, !385, !390, !395, !400, !405}
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 68)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 508, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 14)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 508, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 16)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 508, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 13)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 518, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 44)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 531, type: !134, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 25)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 31)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 17)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "dev_ino_buf", scope: !166, file: !2, line: 557, type: !192, isLocal: true, isDefinition: true)
!166 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 417, type: !167, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !170)
!167 = !DISubroutineType(types: !168)
!168 = !{!79, !79, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!170 = !{!171, !172, !173, !174, !179, !180, !182, !183, !184, !185, !189, !190, !191}
!171 = !DILocalVariable(name: "argc", arg: 1, scope: !166, file: !2, line: 417, type: !79)
!172 = !DILocalVariable(name: "argv", arg: 2, scope: !166, file: !2, line: 417, type: !169)
!173 = !DILocalVariable(name: "mode", scope: !166, file: !2, line: 419, type: !119)
!174 = !DILocalVariable(name: "mode_len", scope: !166, file: !2, line: 420, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 31, baseType: !177)
!176 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !107, line: 94, baseType: !178)
!178 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!179 = !DILocalVariable(name: "mode_alloc", scope: !166, file: !2, line: 421, type: !175)
!180 = !DILocalVariable(name: "ok", scope: !166, file: !2, line: 422, type: !181)
!181 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!182 = !DILocalVariable(name: "preserve_root", scope: !166, file: !2, line: 423, type: !181)
!183 = !DILocalVariable(name: "reference_file", scope: !166, file: !2, line: 424, type: !117)
!184 = !DILocalVariable(name: "c", scope: !166, file: !2, line: 425, type: !79)
!185 = !DILocalVariable(name: "arg", scope: !186, file: !2, line: 470, type: !117)
!186 = distinct !DILexicalBlock(scope: !187, file: !2, line: 464, column: 11)
!187 = distinct !DILexicalBlock(scope: !188, file: !2, line: 444, column: 9)
!188 = distinct !DILexicalBlock(scope: !166, file: !2, line: 442, column: 5)
!189 = !DILocalVariable(name: "arg_len", scope: !186, file: !2, line: 471, type: !175)
!190 = !DILocalVariable(name: "mode_comma_len", scope: !186, file: !2, line: 472, type: !175)
!191 = !DILocalVariable(name: "new_mode_len", scope: !186, file: !2, line: 473, type: !175)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !193, line: 25, size: 128, elements: !194)
!193 = !DIFile(filename: "../lib/dev-ino.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!194 = !{!195, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !192, file: !193, line: 27, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !197, line: 31, baseType: !198)
!197 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_ino_t.h", directory: "")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino_t", file: !105, line: 64, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !105, line: 62, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !107, line: 49, baseType: !201)
!201 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !192, file: !193, line: 28, baseType: !203, size: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !204, line: 31, baseType: !205)
!204 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !105, line: 57, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !107, line: 46, baseType: !79)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 2)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "change", scope: !64, file: !2, line: 70, type: !214, isLocal: true, isDefinition: true)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !216, line: 25, flags: DIFlagFwdDecl)
!216 = !DIFile(filename: "../lib/modechange.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "umask_value", scope: !64, file: !2, line: 73, type: !102, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "recurse", scope: !64, file: !2, line: 76, type: !181, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "force_silent", scope: !64, file: !2, line: 79, type: !181, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "root_dev_ino", scope: !64, file: !2, line: 91, type: !225, isLocal: true, isDefinition: true)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !78, line: 660, type: !209, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !78, line: 660, type: !134, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !78, line: 661, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 10)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !78, line: 661, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 22)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !78, line: 662, type: !232, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !78, line: 662, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 15)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !78, line: 663, type: !232, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !78, line: 664, type: !232, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !78, line: 665, type: !232, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !78, line: 678, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 23)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !78, line: 678, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 40)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !78, line: 683, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 4)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !78, line: 689, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 71)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !78, line: 695, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 5)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !78, line: 696, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 27)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !78, line: 698, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 51)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !78, line: 699, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 12)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 8)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !232, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !161, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !129, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !54, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !232, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 7)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !295, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !275, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !295, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "long_options", scope: !64, file: !2, line: 102, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 2816, elements: !331)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !324, line: 50, size: 256, elements: !325)
!324 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!325 = !{!326, !327, !328, !330}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !324, line: 52, baseType: !117, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !323, file: !324, line: 55, baseType: !79, size: 32, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !323, file: !324, line: 56, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !323, file: !324, line: 57, baseType: !79, size: 32, offset: 192)
!331 = !{!332}
!332 = !DISubrange(count: 11)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "verbosity", scope: !64, file: !2, line: 87, type: !72, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 350, type: !134, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !2, line: 361, type: !161, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !161, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 3)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !2, line: 243, type: !151, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 38)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1488, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 186)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 45)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 58)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 49)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !280, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 35)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 29)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 56)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 26)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 50)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 59)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !377, isLocal: true, isDefinition: true)
!407 = !{!"Homebrew clang version 16.0.4"}
!408 = !{i32 7, !"Dwarf Version", i32 4}
!409 = !{i32 2, !"Debug Info Version", i32 3}
!410 = !{i32 1, !"wchar_size", i32 4}
!411 = !{i32 8, !"PIC Level", i32 2}
!412 = !{i32 7, !"uwtable", i32 2}
!413 = !{i32 7, !"frame-pointer", i32 2}
!414 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 369, type: !415, scopeLine: 370, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !79}
!417 = !{!418}
!418 = !DILocalVariable(name: "status", arg: 1, scope: !414, file: !2, line: 369, type: !79)
!419 = !DILocation(line: 0, scope: !414)
!420 = !DILocation(line: 371, column: 14, scope: !421)
!421 = distinct !DILexicalBlock(scope: !414, file: !2, line: 371, column: 7)
!422 = !DILocation(line: 371, column: 7, scope: !414)
!423 = !DILocation(line: 372, column: 5, scope: !421)
!424 = !DILocation(line: 372, column: 5, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !2, line: 372, column: 5)
!426 = !{!427, !427, i64 0}
!427 = !{!"any pointer", !428, i64 0}
!428 = !{!"omnipotent char", !429, i64 0}
!429 = !{!"Simple C/C++ TBAA"}
!430 = !DILocation(line: 380, column: 15, scope: !431)
!431 = distinct !DILexicalBlock(scope: !421, file: !2, line: 374, column: 5)
!432 = !DILocation(line: 380, column: 29, scope: !431)
!433 = !DILocation(line: 380, column: 43, scope: !431)
!434 = !DILocation(line: 375, column: 7, scope: !431)
!435 = !DILocation(line: 385, column: 5, scope: !431)
!436 = !DILocation(line: 381, column: 7, scope: !431)
!437 = !DILocation(line: 390, column: 5, scope: !431)
!438 = !DILocation(line: 386, column: 7, scope: !431)
!439 = !DILocation(line: 394, column: 5, scope: !431)
!440 = !DILocation(line: 391, column: 7, scope: !431)
!441 = !DILocation(line: 398, column: 5, scope: !431)
!442 = !DILocation(line: 395, column: 7, scope: !431)
!443 = !DILocation(line: 401, column: 5, scope: !431)
!444 = !DILocation(line: 399, column: 7, scope: !431)
!445 = !DILocation(line: 402, column: 39, scope: !431)
!446 = !DILocation(line: 402, column: 7, scope: !431)
!447 = !DILocation(line: 403, column: 42, scope: !431)
!448 = !DILocation(line: 403, column: 7, scope: !431)
!449 = !DILocation(line: 407, column: 5, scope: !431)
!450 = !DILocation(line: 404, column: 7, scope: !431)
!451 = !DILocation(line: 408, column: 7, scope: !431)
!452 = !DILocation(line: 410, column: 3, scope: !414)
!453 = !DISubprogram(name: "fprintf", scope: !454, file: !454, line: 155, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!454 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!455 = !DISubroutineType(types: !456)
!456 = !{!79, !457, !510, null}
!457 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !460, line: 157, baseType: !461)
!460 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !460, line: 126, size: 1216, elements: !462)
!462 = !{!463, !466, !467, !468, !470, !471, !476, !477, !478, !482, !486, !494, !498, !499, !502, !503, !505, !507, !508, !509}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !461, file: !460, line: 127, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !461, file: !460, line: 128, baseType: !79, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !461, file: !460, line: 129, baseType: !79, size: 32, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !461, file: !460, line: 130, baseType: !469, size: 16, offset: 128)
!469 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !461, file: !460, line: 131, baseType: !469, size: 16, offset: 144)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !461, file: !460, line: 132, baseType: !472, size: 128, offset: 192)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !460, line: 92, size: 128, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !472, file: !460, line: 93, baseType: !464, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !472, file: !460, line: 94, baseType: !79, size: 32, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !461, file: !460, line: 133, baseType: !79, size: 32, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !461, file: !460, line: 136, baseType: !120, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !461, file: !460, line: 137, baseType: !479, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!79, !120}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !461, file: !460, line: 138, baseType: !483, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!79, !120, !119, !79}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !461, file: !460, line: 139, baseType: !487, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !120, !490, !79}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !460, line: 81, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !105, line: 71, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !107, line: 48, baseType: !493)
!493 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !461, file: !460, line: 140, baseType: !495, size: 64, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!79, !120, !117, !79}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !461, file: !460, line: 143, baseType: !472, size: 128, offset: 704)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !461, file: !460, line: 144, baseType: !500, size: 64, offset: 832)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !460, line: 98, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !461, file: !460, line: 145, baseType: !79, size: 32, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !461, file: !460, line: 148, baseType: !504, size: 24, offset: 928)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 24, elements: !344)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !461, file: !460, line: 149, baseType: !506, size: 8, offset: 952)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 8, elements: !60)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !461, file: !460, line: 152, baseType: !472, size: 128, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !461, file: !460, line: 155, baseType: !79, size: 32, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !461, file: !460, line: 156, baseType: !490, size: 64, offset: 1152)
!510 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!511 = !{}
!512 = !DISubprogram(name: "printf", scope: !454, file: !454, line: 175, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!513 = !DISubroutineType(types: !514)
!514 = !{!79, !510, null}
!515 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !454, file: !454, line: 157, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!516 = !DISubroutineType(types: !517)
!517 = !{!79, !510, !457}
!518 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !78, file: !78, line: 657, type: !519, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !117}
!521 = !{!522, !523, !530, !531, !533, !534}
!522 = !DILocalVariable(name: "program", arg: 1, scope: !518, file: !78, line: 657, type: !117)
!523 = !DILocalVariable(name: "infomap", scope: !518, file: !78, line: 659, type: !524)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 896, elements: !311)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !518, file: !78, line: 659, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !526, file: !78, line: 659, baseType: !117, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !526, file: !78, line: 659, baseType: !117, size: 64, offset: 64)
!530 = !DILocalVariable(name: "node", scope: !518, file: !78, line: 669, type: !117)
!531 = !DILocalVariable(name: "map_prog", scope: !518, file: !78, line: 670, type: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!533 = !DILocalVariable(name: "lc_messages", scope: !518, file: !78, line: 682, type: !117)
!534 = !DILocalVariable(name: "url_program", scope: !518, file: !78, line: 695, type: !117)
!535 = !DILocation(line: 0, scope: !518)
!536 = !DILocation(line: 659, column: 3, scope: !518)
!537 = !DILocation(line: 659, column: 67, scope: !518)
!538 = !DILocation(line: 670, column: 36, scope: !518)
!539 = !DILocation(line: 672, column: 3, scope: !518)
!540 = !DILocation(line: 672, column: 20, scope: !518)
!541 = !{!542, !427, i64 0}
!542 = !{!"infomap", !427, i64 0, !427, i64 8}
!543 = !DILocation(line: 672, column: 10, scope: !518)
!544 = !DILocation(line: 672, column: 28, scope: !518)
!545 = !DILocation(line: 672, column: 33, scope: !518)
!546 = !DILocation(line: 672, column: 31, scope: !518)
!547 = !DILocation(line: 673, column: 13, scope: !518)
!548 = distinct !{!548, !539, !547, !549, !550}
!549 = !{!"llvm.loop.mustprogress"}
!550 = !{!"llvm.loop.unroll.disable"}
!551 = !DILocation(line: 675, column: 17, scope: !552)
!552 = distinct !DILexicalBlock(scope: !518, file: !78, line: 675, column: 7)
!553 = !{!542, !427, i64 8}
!554 = !DILocation(line: 675, column: 7, scope: !552)
!555 = !DILocation(line: 675, column: 7, scope: !518)
!556 = !DILocation(line: 676, column: 22, scope: !552)
!557 = !DILocation(line: 676, column: 5, scope: !552)
!558 = !DILocation(line: 678, column: 3, scope: !518)
!559 = !DILocation(line: 682, column: 29, scope: !518)
!560 = !DILocation(line: 683, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !518, file: !78, line: 683, column: 7)
!562 = !DILocation(line: 683, column: 19, scope: !561)
!563 = !DILocation(line: 683, column: 22, scope: !561)
!564 = !DILocation(line: 683, column: 7, scope: !518)
!565 = !DILocation(line: 690, column: 61, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !78, line: 684, column: 5)
!567 = !DILocation(line: 689, column: 7, scope: !566)
!568 = !DILocation(line: 691, column: 5, scope: !566)
!569 = !DILocation(line: 695, column: 29, scope: !518)
!570 = !DILocation(line: 696, column: 3, scope: !518)
!571 = !DILocation(line: 699, column: 22, scope: !518)
!572 = !DILocation(line: 699, column: 17, scope: !518)
!573 = !DILocation(line: 698, column: 3, scope: !518)
!574 = !DILocation(line: 700, column: 1, scope: !518)
!575 = !DISubprogram(name: "exit", scope: !576, file: !576, line: 145, type: !415, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !511)
!576 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!577 = !DISubprogram(name: "strcmp", scope: !578, file: !578, line: 77, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!578 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!579 = !DISubroutineType(types: !580)
!580 = !{!79, !117, !117}
!581 = !DISubprogram(name: "setlocale", scope: !582, file: !582, line: 53, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!582 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!583 = !DISubroutineType(types: !584)
!584 = !{!119, !79, !117}
!585 = !DISubprogram(name: "strncmp", scope: !578, file: !578, line: 84, type: !586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!586 = !DISubroutineType(types: !587)
!587 = !{!79, !117, !117, !175}
!588 = !DILocation(line: 0, scope: !166)
!589 = !DILocation(line: 421, column: 3, scope: !166)
!590 = !DILocation(line: 421, column: 10, scope: !166)
!591 = !{!592, !592, i64 0}
!592 = !{!"long", !428, i64 0}
!593 = !DILocation(line: 428, column: 21, scope: !166)
!594 = !DILocation(line: 428, column: 3, scope: !166)
!595 = !DILocation(line: 429, column: 3, scope: !166)
!596 = !DILocation(line: 433, column: 3, scope: !166)
!597 = !DILocation(line: 435, column: 47, scope: !166)
!598 = !{!599, !599, i64 0}
!599 = !{!"_Bool", !428, i64 0}
!600 = !DILocation(line: 435, column: 26, scope: !166)
!601 = !DILocation(line: 435, column: 11, scope: !166)
!602 = !DILocation(line: 437, column: 3, scope: !166)
!603 = !DILocation(line: 419, column: 9, scope: !166)
!604 = !DILocation(line: 420, column: 10, scope: !166)
!605 = !DILocation(line: 423, column: 8, scope: !166)
!606 = !DILocation(line: 424, column: 15, scope: !166)
!607 = !DILocation(line: 437, column: 15, scope: !166)
!608 = !DILocation(line: 441, column: 10, scope: !166)
!609 = !DILocation(line: 443, column: 7, scope: !188)
!610 = !DILocation(line: 470, column: 36, scope: !186)
!611 = !{!612, !612, i64 0}
!612 = !{!"int", !428, i64 0}
!613 = !DILocation(line: 470, column: 43, scope: !186)
!614 = !DILocation(line: 470, column: 31, scope: !186)
!615 = !DILocation(line: 0, scope: !186)
!616 = !DILocation(line: 471, column: 30, scope: !186)
!617 = !DILocation(line: 472, column: 49, scope: !186)
!618 = !DILocation(line: 472, column: 48, scope: !186)
!619 = !DILocation(line: 472, column: 46, scope: !186)
!620 = !DILocation(line: 473, column: 50, scope: !186)
!621 = !DILocation(line: 474, column: 17, scope: !622)
!622 = distinct !DILexicalBlock(scope: !186, file: !2, line: 474, column: 17)
!623 = !DILocation(line: 474, column: 28, scope: !622)
!624 = !DILocation(line: 474, column: 17, scope: !186)
!625 = !DILocation(line: 476, column: 43, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !2, line: 475, column: 15)
!627 = !DILocation(line: 476, column: 28, scope: !626)
!628 = !DILocation(line: 477, column: 24, scope: !626)
!629 = !DILocation(line: 478, column: 15, scope: !626)
!630 = !DILocation(line: 479, column: 13, scope: !186)
!631 = !DILocation(line: 479, column: 28, scope: !186)
!632 = !{!428, !428, i64 0}
!633 = !DILocation(line: 480, column: 26, scope: !186)
!634 = !DILocation(line: 480, column: 57, scope: !186)
!635 = !DILocation(line: 480, column: 13, scope: !186)
!636 = !DILocation(line: 483, column: 32, scope: !186)
!637 = !DILocation(line: 485, column: 11, scope: !187)
!638 = !DILocation(line: 488, column: 11, scope: !187)
!639 = !DILocation(line: 491, column: 11, scope: !187)
!640 = !DILocation(line: 493, column: 28, scope: !187)
!641 = !DILocation(line: 494, column: 11, scope: !187)
!642 = !DILocation(line: 496, column: 19, scope: !187)
!643 = !DILocation(line: 497, column: 11, scope: !187)
!644 = !DILocation(line: 499, column: 21, scope: !187)
!645 = !DILocation(line: 500, column: 11, scope: !187)
!646 = !DILocation(line: 502, column: 24, scope: !187)
!647 = !DILocation(line: 503, column: 11, scope: !187)
!648 = !DILocation(line: 505, column: 21, scope: !187)
!649 = !DILocation(line: 506, column: 11, scope: !187)
!650 = !DILocation(line: 507, column: 9, scope: !187)
!651 = !DILocation(line: 508, column: 9, scope: !187)
!652 = !DILocation(line: 510, column: 11, scope: !187)
!653 = distinct !{!653, !602, !654, !549, !550}
!654 = !DILocation(line: 512, column: 5, scope: !166)
!655 = !DILocation(line: 514, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !166, file: !2, line: 514, column: 7)
!657 = !DILocation(line: 514, column: 7, scope: !166)
!658 = !DILocation(line: 516, column: 11, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !2, line: 516, column: 11)
!660 = distinct !DILexicalBlock(scope: !656, file: !2, line: 515, column: 5)
!661 = !DILocation(line: 516, column: 11, scope: !660)
!662 = !DILocation(line: 518, column: 11, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !2, line: 517, column: 9)
!664 = !DILocation(line: 519, column: 11, scope: !663)
!665 = !DILocation(line: 521, column: 5, scope: !660)
!666 = !DILocation(line: 524, column: 12, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !2, line: 524, column: 11)
!668 = distinct !DILexicalBlock(scope: !656, file: !2, line: 523, column: 5)
!669 = !DILocation(line: 524, column: 11, scope: !668)
!670 = !DILocation(line: 525, column: 27, scope: !667)
!671 = !DILocation(line: 525, column: 16, scope: !667)
!672 = !DILocation(line: 525, column: 9, scope: !667)
!673 = !DILocation(line: 528, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !166, file: !2, line: 528, column: 7)
!675 = !DILocation(line: 528, column: 14, scope: !674)
!676 = !DILocation(line: 528, column: 7, scope: !166)
!677 = !DILocation(line: 530, column: 12, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !2, line: 530, column: 11)
!679 = distinct !DILexicalBlock(scope: !674, file: !2, line: 529, column: 5)
!680 = !DILocation(line: 530, column: 17, scope: !678)
!681 = !DILocation(line: 530, column: 33, scope: !678)
!682 = !DILocation(line: 530, column: 40, scope: !678)
!683 = !DILocation(line: 530, column: 28, scope: !678)
!684 = !DILocation(line: 530, column: 25, scope: !678)
!685 = !DILocation(line: 530, column: 11, scope: !679)
!686 = !DILocation(line: 531, column: 9, scope: !678)
!687 = !DILocation(line: 533, column: 70, scope: !678)
!688 = !DILocation(line: 533, column: 60, scope: !678)
!689 = !DILocation(line: 533, column: 53, scope: !678)
!690 = !DILocation(line: 533, column: 9, scope: !678)
!691 = !DILocation(line: 534, column: 7, scope: !679)
!692 = !DILocation(line: 537, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !166, file: !2, line: 537, column: 7)
!694 = !DILocation(line: 537, column: 7, scope: !166)
!695 = !DILocation(line: 539, column: 16, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !2, line: 538, column: 5)
!697 = !DILocation(line: 539, column: 14, scope: !696)
!698 = !DILocation(line: 540, column: 12, scope: !699)
!699 = distinct !DILexicalBlock(scope: !696, file: !2, line: 540, column: 11)
!700 = !DILocation(line: 540, column: 11, scope: !696)
!701 = !DILocation(line: 541, column: 9, scope: !699)
!702 = !DILocation(line: 543, column: 5, scope: !696)
!703 = !DILocation(line: 546, column: 16, scope: !704)
!704 = distinct !DILexicalBlock(scope: !693, file: !2, line: 545, column: 5)
!705 = !DILocation(line: 546, column: 14, scope: !704)
!706 = !DILocation(line: 547, column: 12, scope: !707)
!707 = distinct !DILexicalBlock(scope: !704, file: !2, line: 547, column: 11)
!708 = !DILocation(line: 547, column: 11, scope: !704)
!709 = !DILocation(line: 549, column: 47, scope: !710)
!710 = distinct !DILexicalBlock(scope: !707, file: !2, line: 548, column: 9)
!711 = !DILocation(line: 549, column: 11, scope: !710)
!712 = !DILocation(line: 550, column: 11, scope: !710)
!713 = !DILocation(line: 552, column: 21, scope: !704)
!714 = !DILocation(line: 552, column: 19, scope: !704)
!715 = !{!716, !716, i64 0}
!716 = !{!"short", !428, i64 0}
!717 = !DILocation(line: 555, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !166, file: !2, line: 555, column: 7)
!719 = !{i8 0, i8 2}
!720 = !DILocation(line: 555, column: 15, scope: !718)
!721 = !DILocation(line: 555, column: 18, scope: !718)
!722 = !DILocation(line: 555, column: 7, scope: !166)
!723 = !DILocation(line: 558, column: 22, scope: !724)
!724 = distinct !DILexicalBlock(scope: !718, file: !2, line: 556, column: 5)
!725 = !DILocation(line: 558, column: 20, scope: !724)
!726 = !DILocation(line: 559, column: 11, scope: !727)
!727 = distinct !DILexicalBlock(scope: !724, file: !2, line: 559, column: 11)
!728 = !DILocation(line: 559, column: 24, scope: !727)
!729 = !DILocation(line: 559, column: 11, scope: !724)
!730 = !DILocation(line: 560, column: 9, scope: !727)
!731 = !DILocation(line: 562, column: 5, scope: !724)
!732 = !DILocation(line: 565, column: 20, scope: !733)
!733 = distinct !DILexicalBlock(scope: !718, file: !2, line: 564, column: 5)
!734 = !DILocation(line: 568, column: 30, scope: !166)
!735 = !DILocation(line: 568, column: 28, scope: !166)
!736 = !DILocation(line: 568, column: 8, scope: !166)
!737 = !DILocation(line: 568, column: 6, scope: !166)
!738 = !DILocation(line: 571, column: 3, scope: !166)
!739 = !DILocation(line: 572, column: 1, scope: !166)
!740 = !DISubprogram(name: "set_program_name", scope: !741, file: !741, line: 37, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!741 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!742 = !DISubprogram(name: "atexit", scope: !576, file: !576, line: 133, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!743 = !DISubroutineType(types: !744)
!744 = !{!79, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null}
!748 = !DISubprogram(name: "rpl_getopt_long", scope: !324, file: !324, line: 66, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!749 = !DISubroutineType(types: !750)
!750 = !{!79, !79, !169, !117, !751, !329}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!752 = !DISubprogram(name: "strlen", scope: !578, file: !578, line: 82, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!753 = !DISubroutineType(types: !754)
!754 = !{!178, !117}
!755 = !DISubprogram(name: "x2realloc", scope: !756, file: !756, line: 84, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!756 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!757 = !DISubroutineType(types: !758)
!758 = !{!120, !120, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!760 = !DISubprogram(name: "version_etc", scope: !761, file: !761, line: 65, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!761 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!762 = !DISubroutineType(types: !763)
!763 = !{null, !458, !117, !117, !117, null}
!764 = !DISubprogram(name: "error", scope: !765, file: !765, line: 395, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!765 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!766 = !DISubroutineType(types: !767)
!767 = !{null, !79, !79, !117, null}
!768 = !DISubprogram(name: "quote", scope: !769, file: !769, line: 44, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!769 = !DIFile(filename: "../lib/quote.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!770 = !DISubroutineType(types: !771)
!771 = !{!117, !117}
!772 = !DISubprogram(name: "mode_create_from_ref", scope: !216, file: !216, line: 27, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!773 = !DISubroutineType(types: !774)
!774 = !{!214, !117}
!775 = !DISubprogram(name: "__error", scope: !776, file: !776, line: 80, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!776 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!777 = !DISubroutineType(types: !778)
!778 = !{!329}
!779 = !DISubprogram(name: "quotearg_style", scope: !84, file: !84, line: 383, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!780 = !DISubroutineType(types: !781)
!781 = !{!119, !83, !117}
!782 = !DISubprogram(name: "mode_compile", scope: !216, file: !216, line: 25, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!783 = !DISubprogram(name: "umask", scope: !784, file: !784, line: 388, type: !785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!784 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!785 = !DISubroutineType(types: !786)
!786 = !{!102, !102}
!787 = !DISubprogram(name: "get_root_dev_ino", scope: !788, file: !788, line: 25, type: !789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!788 = !DIFile(filename: "../lib/root-dev-ino.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!789 = !DISubroutineType(types: !790)
!790 = !{!225, !225}
!791 = distinct !DISubprogram(name: "process_files", scope: !2, file: !2, line: 333, type: !792, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{!181, !169, !79}
!794 = !{!795, !796, !797, !798, !939}
!795 = !DILocalVariable(name: "files", arg: 1, scope: !791, file: !2, line: 333, type: !169)
!796 = !DILocalVariable(name: "bit_flags", arg: 2, scope: !791, file: !2, line: 333, type: !79)
!797 = !DILocalVariable(name: "ok", scope: !791, file: !2, line: 335, type: !181)
!798 = !DILocalVariable(name: "fts", scope: !791, file: !2, line: 337, type: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "FTS", file: !801, line: 197, baseType: !802)
!801 = !DIFile(filename: "../lib/fts_.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !801, line: 80, size: 1024, elements: !803)
!803 = !{!804, !901, !902, !904, !905, !906, !907, !908, !909, !910, !917, !918, !921, !928}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cur", scope: !802, file: !801, line: 81, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ftsent", file: !801, line: 199, size: 2048, elements: !807)
!807 = !{!808, !809, !810, !811, !836, !837, !838, !839, !840, !841, !842, !843, !844, !847, !848, !849, !850, !851, !897}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cycle", scope: !806, file: !801, line: 200, baseType: !805, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "fts_parent", scope: !806, file: !801, line: 201, baseType: !805, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fts_link", scope: !806, file: !801, line: 202, baseType: !805, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fts_dirp", scope: !806, file: !801, line: 203, baseType: !812, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !814, line: 84, baseType: !815)
!814 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/dirent.h", directory: "")
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !814, line: 73, size: 1088, elements: !816)
!816 = !{!817, !818, !820, !821, !822, !823, !824, !825, !826, !833}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_fd", scope: !815, file: !814, line: 74, baseType: !79, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_loc", scope: !815, file: !814, line: 75, baseType: !819, size: 64, offset: 64)
!819 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_size", scope: !815, file: !814, line: 76, baseType: !819, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_buf", scope: !815, file: !814, line: 77, baseType: !119, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_len", scope: !815, file: !814, line: 78, baseType: !79, size: 32, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_seek", scope: !815, file: !814, line: 79, baseType: !819, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !815, file: !814, line: 80, baseType: !819, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_flags", scope: !815, file: !814, line: 81, baseType: !79, size: 32, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_lock", scope: !815, file: !814, line: 82, baseType: !827, size: 512, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_mutex_t", file: !828, line: 113, baseType: !829)
!828 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_pthread/_pthread_types.h", directory: "")
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_mutex_t", file: !828, line: 78, size: 512, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !829, file: !828, line: 79, baseType: !819, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !829, file: !828, line: 80, baseType: !387, size: 448, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_td", scope: !815, file: !814, line: 83, baseType: !834, size: 64, offset: 1024)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "_telldir", file: !814, line: 70, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fts_number", scope: !806, file: !801, line: 206, baseType: !819, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pointer", scope: !806, file: !801, line: 207, baseType: !120, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "fts_accpath", scope: !806, file: !801, line: 208, baseType: !119, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "fts_path", scope: !806, file: !801, line: 209, baseType: !119, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "fts_errno", scope: !806, file: !801, line: 210, baseType: !79, size: 32, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "fts_symfd", scope: !806, file: !801, line: 211, baseType: !79, size: 32, offset: 544)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pathlen", scope: !806, file: !801, line: 212, baseType: !175, size: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "fts_fts", scope: !806, file: !801, line: 214, baseType: !799, size: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "fts_level", scope: !806, file: !801, line: 218, baseType: !845, size: 64, offset: 704)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !846, line: 35, baseType: !819)
!846 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!847 = !DIDerivedType(tag: DW_TAG_member, name: "fts_namelen", scope: !806, file: !801, line: 220, baseType: !175, size: 64, offset: 768)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fts_info", scope: !806, file: !801, line: 236, baseType: !108, size: 16, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "fts_flags", scope: !806, file: !801, line: 240, baseType: !108, size: 16, offset: 848)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "fts_instr", scope: !806, file: !801, line: 246, baseType: !108, size: 16, offset: 864)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "fts_statp", scope: !806, file: !801, line: 248, baseType: !852, size: 1152, offset: 896)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 1152, elements: !60)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !784, line: 182, size: 1152, elements: !854)
!854 = !{!855, !856, !857, !860, !861, !866, !870, !871, !878, !879, !880, !881, !884, !888, !892, !893, !894, !895}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !853, file: !784, line: 182, baseType: !203, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !853, file: !784, line: 182, baseType: !102, size: 16, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !853, file: !784, line: 182, baseType: !858, size: 16, offset: 48)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !859, line: 31, baseType: !106)
!859 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!860 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !853, file: !784, line: 182, baseType: !199, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !853, file: !784, line: 182, baseType: !862, size: 32, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !863, line: 31, baseType: !864)
!863 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !105, line: 75, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !107, line: 47, baseType: !67)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !853, file: !784, line: 182, baseType: !867, size: 32, offset: 160)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !868, line: 31, baseType: !869)
!868 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !105, line: 60, baseType: !865)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !853, file: !784, line: 182, baseType: !203, size: 32, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !853, file: !784, line: 182, baseType: !872, size: 128, offset: 256)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !873, line: 33, size: 128, elements: !874)
!873 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!874 = !{!875, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !872, file: !873, line: 35, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !107, line: 122, baseType: !819)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !872, file: !873, line: 36, baseType: !819, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !853, file: !784, line: 182, baseType: !872, size: 128, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !853, file: !784, line: 182, baseType: !872, size: 128, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !853, file: !784, line: 182, baseType: !872, size: 128, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !853, file: !784, line: 182, baseType: !882, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !883, line: 31, baseType: !491)
!883 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!884 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !853, file: !784, line: 182, baseType: !885, size: 64, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !886, line: 31, baseType: !887)
!886 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !105, line: 55, baseType: !492)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !853, file: !784, line: 182, baseType: !889, size: 32, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !890, line: 31, baseType: !891)
!890 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !105, line: 56, baseType: !206)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !853, file: !784, line: 182, baseType: !865, size: 32, offset: 928)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !853, file: !784, line: 182, baseType: !865, size: 32, offset: 960)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !853, file: !784, line: 182, baseType: !206, size: 32, offset: 992)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !853, file: !784, line: 182, baseType: !896, size: 128, offset: 1024)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 128, elements: !210)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "fts_name", scope: !806, file: !801, line: 249, baseType: !898, offset: 2048)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !899)
!899 = !{!900}
!900 = !DISubrange(count: -1)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "fts_child", scope: !802, file: !801, line: 82, baseType: !805, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "fts_array", scope: !802, file: !801, line: 83, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "fts_dev", scope: !802, file: !801, line: 84, baseType: !203, size: 32, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "fts_path", scope: !802, file: !801, line: 85, baseType: !119, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "fts_rfd", scope: !802, file: !801, line: 86, baseType: !79, size: 32, offset: 320)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cwd_fd", scope: !802, file: !801, line: 87, baseType: !79, size: 32, offset: 352)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pathlen", scope: !802, file: !801, line: 89, baseType: !175, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fts_nitems", scope: !802, file: !801, line: 90, baseType: !175, size: 64, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "fts_compar", scope: !802, file: !801, line: 91, baseType: !911, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!79, !914, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "fts_options", scope: !802, file: !801, line: 160, baseType: !79, size: 32, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "fts_leaf_optimization_works_ht", scope: !802, file: !801, line: 169, baseType: !919, size: 64, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", file: !801, line: 169, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cycle", scope: !802, file: !801, line: 191, baseType: !922, size: 64, offset: 704)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !801, line: 171, size: 64, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !922, file: !801, line: 184, baseType: !919, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !922, file: !801, line: 190, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "cycle_check_state", file: !801, line: 190, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fts_fd_ring", scope: !802, file: !801, line: 196, baseType: !929, size: 256, offset: 768)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "I_ring", file: !930, line: 37, baseType: !931)
!930 = !DIFile(filename: "../lib/i-ring.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "I_ring", file: !930, line: 29, size: 256, elements: !932)
!932 = !{!933, !935, !936, !937, !938}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ir_data", scope: !931, file: !930, line: 31, baseType: !934, size: 128)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !266)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ir_default_val", scope: !931, file: !930, line: 32, baseType: !79, size: 32, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ir_front", scope: !931, file: !930, line: 33, baseType: !67, size: 32, offset: 160)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ir_back", scope: !931, file: !930, line: 34, baseType: !67, size: 32, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ir_empty", scope: !931, file: !930, line: 35, baseType: !181, size: 8, offset: 224)
!939 = !DILocalVariable(name: "ent", scope: !940, file: !2, line: 341, type: !941)
!940 = distinct !DILexicalBlock(scope: !791, file: !2, line: 340, column: 5)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "FTSENT", file: !801, line: 250, baseType: !806)
!943 = !DILocation(line: 0, scope: !791)
!944 = !DILocation(line: 337, column: 14, scope: !791)
!945 = !DILocation(line: 339, column: 3, scope: !791)
!946 = !DILocation(line: 343, column: 13, scope: !940)
!947 = !DILocation(line: 0, scope: !940)
!948 = !DILocation(line: 344, column: 15, scope: !949)
!949 = distinct !DILexicalBlock(scope: !940, file: !2, line: 344, column: 11)
!950 = !DILocation(line: 344, column: 11, scope: !940)
!951 = !DILocation(line: 346, column: 15, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !2, line: 346, column: 15)
!953 = distinct !DILexicalBlock(scope: !949, file: !2, line: 345, column: 9)
!954 = !DILocation(line: 346, column: 21, scope: !952)
!955 = !DILocation(line: 346, column: 15, scope: !953)
!956 = !DILocation(line: 349, column: 21, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !2, line: 349, column: 19)
!958 = distinct !DILexicalBlock(scope: !952, file: !2, line: 347, column: 13)
!959 = !DILocation(line: 349, column: 19, scope: !958)
!960 = !DILocation(line: 350, column: 27, scope: !957)
!961 = !DILocation(line: 350, column: 17, scope: !957)
!962 = !DILocation(line: 352, column: 13, scope: !958)
!963 = !DILocation(line: 353, column: 11, scope: !953)
!964 = !DILocation(line: 356, column: 13, scope: !940)
!965 = !DILocation(line: 356, column: 10, scope: !940)
!966 = !DILocation(line: 357, column: 5, scope: !791)
!967 = distinct !{!967, !945, !966, !550}
!968 = !DILocation(line: 359, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !791, file: !2, line: 359, column: 7)
!970 = !DILocation(line: 359, column: 23, scope: !969)
!971 = !DILocation(line: 359, column: 7, scope: !791)
!972 = !DILocation(line: 361, column: 17, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !2, line: 360, column: 5)
!974 = !DILocation(line: 361, column: 7, scope: !973)
!975 = !DILocation(line: 363, column: 5, scope: !973)
!976 = !DILocation(line: 365, column: 10, scope: !791)
!977 = !DILocation(line: 365, column: 3, scope: !791)
!978 = !DISubprogram(name: "xfts_open", scope: !979, file: !979, line: 4, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!979 = !DIFile(filename: "../lib/xfts.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!980 = !DISubroutineType(types: !981)
!981 = !{!799, !982, !79, !984}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!79, !987, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!990 = !DISubprogram(name: "rpl_fts_read", scope: !801, file: !801, line: 266, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!991 = !DISubroutineType(types: !992)
!992 = !{!941, !799}
!993 = distinct !DISubprogram(name: "process_file", scope: !2, file: !2, line: 204, type: !994, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !996)
!994 = !DISubroutineType(types: !995)
!995 = !{!181, !799, !941}
!996 = !{!997, !998, !999, !1000, !1001, !1004, !1005, !1008, !1011}
!997 = !DILocalVariable(name: "fts", arg: 1, scope: !993, file: !2, line: 204, type: !799)
!998 = !DILocalVariable(name: "ent", arg: 2, scope: !993, file: !2, line: 204, type: !941)
!999 = !DILocalVariable(name: "file_full_name", scope: !993, file: !2, line: 206, type: !117)
!1000 = !DILocalVariable(name: "file", scope: !993, file: !2, line: 207, type: !117)
!1001 = !DILocalVariable(name: "file_stats", scope: !993, file: !2, line: 208, type: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!1004 = !DILocalVariable(name: "ch", scope: !993, file: !2, line: 209, type: !98)
!1005 = !DILocalVariable(name: "naively_expected_mode", scope: !1006, file: !2, line: 305, type: !102)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 304, column: 5)
!1007 = distinct !DILexicalBlock(scope: !993, file: !2, line: 303, column: 7)
!1008 = !DILocalVariable(name: "new_perms", scope: !1009, file: !2, line: 309, type: !290)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 308, column: 9)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 307, column: 11)
!1011 = !DILocalVariable(name: "naively_expected_perms", scope: !1009, file: !2, line: 310, type: !290)
!1012 = !DILocation(line: 0, scope: !993)
!1013 = !DILocation(line: 206, column: 37, scope: !993)
!1014 = !DILocation(line: 207, column: 27, scope: !993)
!1015 = !DILocation(line: 208, column: 40, scope: !993)
!1016 = !DILocation(line: 208, column: 35, scope: !993)
!1017 = !DILocation(line: 209, column: 3, scope: !993)
!1018 = !DILocation(line: 209, column: 24, scope: !993)
!1019 = !DILocation(line: 210, column: 6, scope: !993)
!1020 = !DILocation(line: 210, column: 13, scope: !993)
!1021 = !{!1022, !428, i64 0}
!1022 = !{!"change_status", !428, i64 0, !716, i64 4, !716, i64 6}
!1023 = !DILocation(line: 212, column: 16, scope: !993)
!1024 = !DILocation(line: 212, column: 11, scope: !993)
!1025 = !DILocation(line: 212, column: 3, scope: !993)
!1026 = !DILocation(line: 215, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !993, file: !2, line: 213, column: 5)
!1028 = !DILocation(line: 225, column: 16, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 225, column: 11)
!1030 = !DILocation(line: 225, column: 26, scope: !1029)
!1031 = !DILocation(line: 225, column: 31, scope: !1029)
!1032 = !DILocation(line: 225, column: 39, scope: !1029)
!1033 = !DILocation(line: 225, column: 50, scope: !1029)
!1034 = !DILocation(line: 225, column: 11, scope: !1027)
!1035 = !DILocation(line: 227, column: 16, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 226, column: 9)
!1037 = !DILocation(line: 227, column: 27, scope: !1036)
!1038 = !DILocation(line: 228, column: 11, scope: !1036)
!1039 = !DILocation(line: 229, column: 11, scope: !1036)
!1040 = !DILocation(line: 231, column: 13, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 231, column: 11)
!1042 = !DILocation(line: 231, column: 11, scope: !1027)
!1043 = !DILocation(line: 232, column: 24, scope: !1041)
!1044 = !DILocation(line: 233, column: 16, scope: !1041)
!1045 = !DILocation(line: 232, column: 9, scope: !1041)
!1046 = !DILocation(line: 234, column: 7, scope: !1027)
!1047 = !DILocation(line: 237, column: 13, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 237, column: 11)
!1049 = !DILocation(line: 237, column: 11, scope: !1027)
!1050 = !DILocation(line: 238, column: 24, scope: !1048)
!1051 = !DILocation(line: 238, column: 41, scope: !1048)
!1052 = !DILocation(line: 238, column: 9, scope: !1048)
!1053 = !DILocation(line: 239, column: 7, scope: !1027)
!1054 = !DILocation(line: 242, column: 13, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 242, column: 11)
!1056 = !DILocation(line: 242, column: 11, scope: !1027)
!1057 = !DILocation(line: 243, column: 24, scope: !1055)
!1058 = !DILocation(line: 244, column: 16, scope: !1055)
!1059 = !DILocation(line: 243, column: 9, scope: !1055)
!1060 = !DILocation(line: 245, column: 7, scope: !1027)
!1061 = !DILocation(line: 248, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 248, column: 11)
!1063 = !DILocation(line: 248, column: 11, scope: !1027)
!1064 = !DILocation(line: 250, column: 16, scope: !1062)
!1065 = !DILocation(line: 249, column: 9, scope: !1062)
!1066 = !DILocation(line: 251, column: 7, scope: !1027)
!1067 = !DILocation(line: 254, column: 11, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 254, column: 11)
!1069 = !DILocation(line: 254, column: 11, scope: !1027)
!1070 = !DILocation(line: 256, column: 11, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 255, column: 9)
!1072 = !DILocation(line: 256, column: 11, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 256, column: 11)
!1074 = !DILocation(line: 257, column: 11, scope: !1071)
!1075 = !DILocation(line: 254, column: 43, scope: !1068)
!1076 = !DILocation(line: 261, column: 10, scope: !1027)
!1077 = !DILocation(line: 261, column: 17, scope: !1027)
!1078 = !DILocation(line: 262, column: 7, scope: !1027)
!1079 = !DILocation(line: 265, column: 10, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !993, file: !2, line: 265, column: 7)
!1081 = !DILocation(line: 265, column: 17, scope: !1080)
!1082 = !DILocation(line: 266, column: 7, scope: !1080)
!1083 = !DILocation(line: 266, column: 10, scope: !1080)
!1084 = !{!1085, !1086, i64 8}
!1085 = !{!"stat", !612, i64 0, !716, i64 4, !716, i64 6, !1086, i64 8, !612, i64 16, !612, i64 20, !612, i64 24, !1087, i64 32, !1087, i64 48, !1087, i64 64, !1087, i64 80, !1086, i64 96, !1086, i64 104, !612, i64 112, !612, i64 116, !612, i64 120, !612, i64 124, !428, i64 128}
!1086 = !{!"long long", !428, i64 0}
!1087 = !{!"timespec", !592, i64 0, !592, i64 8}
!1088 = !{!1089, !1086, i64 0}
!1089 = !{!"dev_ino", !1086, i64 0, !612, i64 8}
!1090 = !{!1085, !612, i64 0}
!1091 = !{!1089, !612, i64 8}
!1092 = !DILocation(line: 265, column: 7, scope: !993)
!1093 = !DILocation(line: 268, column: 7, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 267, column: 5)
!1095 = !DILocation(line: 268, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 268, column: 7)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 268, column: 7)
!1098 = !DILocation(line: 268, column: 7, scope: !1097)
!1099 = !DILocation(line: 270, column: 7, scope: !1094)
!1100 = !DILocation(line: 272, column: 7, scope: !1094)
!1101 = !DILocation(line: 273, column: 7, scope: !1094)
!1102 = !DILocation(line: 276, column: 10, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !993, file: !2, line: 276, column: 7)
!1104 = !DILocation(line: 276, column: 17, scope: !1103)
!1105 = !DILocation(line: 276, column: 35, scope: !1103)
!1106 = !DILocation(line: 276, column: 40, scope: !1103)
!1107 = !{!1085, !716, i64 4}
!1108 = !DILocation(line: 276, column: 7, scope: !993)
!1109 = !DILocation(line: 278, column: 33, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 277, column: 5)
!1111 = !DILocation(line: 278, column: 10, scope: !1110)
!1112 = !DILocation(line: 278, column: 19, scope: !1110)
!1113 = !{!1022, !716, i64 4}
!1114 = !DILocation(line: 279, column: 37, scope: !1110)
!1115 = !DILocation(line: 279, column: 47, scope: !1110)
!1116 = !DILocation(line: 279, column: 69, scope: !1110)
!1117 = !DILocation(line: 280, column: 34, scope: !1110)
!1118 = !DILocation(line: 280, column: 47, scope: !1110)
!1119 = !DILocation(line: 279, column: 21, scope: !1110)
!1120 = !DILocation(line: 279, column: 10, scope: !1110)
!1121 = !DILocation(line: 279, column: 19, scope: !1110)
!1122 = !{!1022, !716, i64 6}
!1123 = !DILocation(line: 281, column: 25, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 281, column: 11)
!1125 = !{!1126, !612, i64 44}
!1126 = !{!"", !427, i64 0, !427, i64 8, !427, i64 16, !612, i64 24, !427, i64 32, !612, i64 40, !612, i64 44, !592, i64 48, !592, i64 56, !427, i64 64, !612, i64 72, !427, i64 80, !428, i64 88, !1127, i64 96}
!1127 = !{!"I_ring", !428, i64 0, !612, i64 16, !612, i64 20, !612, i64 24, !599, i64 28}
!1128 = !DILocation(line: 281, column: 46, scope: !1124)
!1129 = !DILocation(line: 281, column: 11, scope: !1124)
!1130 = !DILocation(line: 281, column: 56, scope: !1124)
!1131 = !DILocation(line: 281, column: 11, scope: !1110)
!1132 = !DILocation(line: 282, column: 12, scope: !1124)
!1133 = !DILocation(line: 282, column: 19, scope: !1124)
!1134 = !DILocation(line: 282, column: 9, scope: !1124)
!1135 = !DILocation(line: 285, column: 17, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 285, column: 15)
!1137 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 284, column: 9)
!1138 = !DILocation(line: 285, column: 15, scope: !1137)
!1139 = !DILocation(line: 286, column: 23, scope: !1136)
!1140 = !DILocation(line: 287, column: 20, scope: !1136)
!1141 = !DILocation(line: 286, column: 13, scope: !1136)
!1142 = !DILocation(line: 288, column: 14, scope: !1137)
!1143 = !DILocation(line: 288, column: 21, scope: !1137)
!1144 = !DILocation(line: 290, column: 5, scope: !1110)
!1145 = !DILocation(line: 292, column: 7, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !993, file: !2, line: 292, column: 7)
!1147 = !DILocation(line: 292, column: 17, scope: !1146)
!1148 = !DILocation(line: 292, column: 7, scope: !993)
!1149 = !DILocation(line: 294, column: 14, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 294, column: 11)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 293, column: 5)
!1152 = !DILocation(line: 294, column: 21, scope: !1150)
!1153 = !DILocation(line: 295, column: 11, scope: !1150)
!1154 = !DILocation(line: 295, column: 34, scope: !1150)
!1155 = !DILocation(line: 296, column: 32, scope: !1150)
!1156 = !DILocation(line: 296, column: 45, scope: !1150)
!1157 = !DILocation(line: 295, column: 15, scope: !1150)
!1158 = !DILocation(line: 294, column: 11, scope: !1151)
!1159 = !DILocation(line: 297, column: 12, scope: !1150)
!1160 = !DILocation(line: 297, column: 19, scope: !1150)
!1161 = !DILocation(line: 297, column: 9, scope: !1150)
!1162 = !DILocation(line: 299, column: 14, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 299, column: 11)
!1164 = !DILocation(line: 299, column: 21, scope: !1163)
!1165 = !DILocation(line: 299, column: 37, scope: !1163)
!1166 = !DILocation(line: 299, column: 40, scope: !1163)
!1167 = !DILocation(line: 299, column: 50, scope: !1163)
!1168 = !DILocation(line: 299, column: 11, scope: !1151)
!1169 = !DILocation(line: 300, column: 9, scope: !1163)
!1170 = !DILocation(line: 301, column: 5, scope: !1151)
!1171 = !DILocation(line: 303, column: 36, scope: !1007)
!1172 = !DILocation(line: 303, column: 30, scope: !1007)
!1173 = !DILocation(line: 303, column: 43, scope: !1007)
!1174 = !DILocation(line: 303, column: 46, scope: !1007)
!1175 = !DILocation(line: 303, column: 7, scope: !993)
!1176 = !DILocation(line: 306, column: 25, scope: !1006)
!1177 = !DILocation(line: 306, column: 35, scope: !1006)
!1178 = !DILocation(line: 306, column: 57, scope: !1006)
!1179 = !DILocation(line: 306, column: 66, scope: !1006)
!1180 = !DILocation(line: 306, column: 9, scope: !1006)
!1181 = !DILocation(line: 0, scope: !1006)
!1182 = !DILocation(line: 307, column: 14, scope: !1010)
!1183 = !DILocation(line: 307, column: 11, scope: !1010)
!1184 = !DILocation(line: 307, column: 26, scope: !1010)
!1185 = !DILocation(line: 307, column: 25, scope: !1010)
!1186 = !DILocation(line: 307, column: 23, scope: !1010)
!1187 = !DILocation(line: 307, column: 11, scope: !1006)
!1188 = !DILocation(line: 309, column: 11, scope: !1009)
!1189 = !DILocation(line: 309, column: 16, scope: !1009)
!1190 = !DILocation(line: 310, column: 11, scope: !1009)
!1191 = !DILocation(line: 310, column: 16, scope: !1009)
!1192 = !DILocation(line: 311, column: 23, scope: !1009)
!1193 = !DILocation(line: 311, column: 20, scope: !1009)
!1194 = !DILocation(line: 311, column: 33, scope: !1009)
!1195 = !DILocation(line: 311, column: 11, scope: !1009)
!1196 = !DILocation(line: 312, column: 20, scope: !1009)
!1197 = !DILocation(line: 312, column: 43, scope: !1009)
!1198 = !DILocation(line: 312, column: 11, scope: !1009)
!1199 = !DILocation(line: 313, column: 27, scope: !1009)
!1200 = !DILocation(line: 313, column: 54, scope: !1009)
!1201 = !DILocation(line: 313, column: 11, scope: !1009)
!1202 = !DILocation(line: 313, column: 25, scope: !1009)
!1203 = !DILocation(line: 316, column: 18, scope: !1009)
!1204 = !DILocation(line: 317, column: 18, scope: !1009)
!1205 = !DILocation(line: 317, column: 28, scope: !1009)
!1206 = !DILocation(line: 317, column: 33, scope: !1009)
!1207 = !DILocation(line: 317, column: 56, scope: !1009)
!1208 = !DILocation(line: 314, column: 11, scope: !1009)
!1209 = !DILocation(line: 318, column: 14, scope: !1009)
!1210 = !DILocation(line: 318, column: 21, scope: !1009)
!1211 = !DILocation(line: 319, column: 9, scope: !1010)
!1212 = !DILocation(line: 319, column: 9, scope: !1009)
!1213 = !DILocation(line: 320, column: 5, scope: !1006)
!1214 = !DILocation(line: 322, column: 10, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !993, file: !2, line: 322, column: 8)
!1216 = !DILocation(line: 322, column: 8, scope: !993)
!1217 = !DILocation(line: 323, column: 5, scope: !1215)
!1218 = !DILocation(line: 325, column: 31, scope: !993)
!1219 = !DILocation(line: 325, column: 25, scope: !993)
!1220 = !DILocation(line: 325, column: 3, scope: !993)
!1221 = !DILocation(line: 326, column: 1, scope: !993)
!1222 = !DISubprogram(name: "rpl_fts_close", scope: !801, file: !801, line: 258, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!79, !799}
!1225 = !DISubprogram(name: "rpl_fts_set", scope: !801, file: !801, line: 268, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!79, !799, !941, !79}
!1228 = !DISubprogram(name: "quotearg_n_style_colon", scope: !84, file: !84, line: 403, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!119, !79, !83, !117}
!1231 = !DISubprogram(name: "cycle_warning_required", scope: !979, file: !979, line: 10, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!181, !1234, !988}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!1236 = !DISubprogram(name: "quotearg_n_style", scope: !84, file: !84, line: 374, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!1237 = !DISubprogram(name: "mode_adjust", scope: !216, file: !216, line: 29, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!102, !102, !181, !102, !1240, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1243 = distinct !DISubprogram(name: "chmodat", scope: !1244, file: !1244, line: 81, type: !1245, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1247)
!1244 = !DIFile(filename: "../lib/openat.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!79, !79, !117, !102}
!1247 = !{!1248, !1249, !1250}
!1248 = !DILocalVariable(name: "fd", arg: 1, scope: !1243, file: !1244, line: 81, type: !79)
!1249 = !DILocalVariable(name: "file", arg: 2, scope: !1243, file: !1244, line: 81, type: !117)
!1250 = !DILocalVariable(name: "mode", arg: 3, scope: !1243, file: !1244, line: 81, type: !102)
!1251 = !DILocation(line: 0, scope: !1243)
!1252 = !DILocation(line: 83, column: 10, scope: !1243)
!1253 = !DILocation(line: 83, column: 3, scope: !1243)
!1254 = distinct !DISubprogram(name: "mode_changed", scope: !2, file: !2, line: 121, type: !1255, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!181, !79, !117, !117, !102, !102}
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263}
!1258 = !DILocalVariable(name: "dir_fd", arg: 1, scope: !1254, file: !2, line: 121, type: !79)
!1259 = !DILocalVariable(name: "file", arg: 2, scope: !1254, file: !2, line: 121, type: !117)
!1260 = !DILocalVariable(name: "file_full_name", arg: 3, scope: !1254, file: !2, line: 121, type: !117)
!1261 = !DILocalVariable(name: "old_mode", arg: 4, scope: !1254, file: !2, line: 122, type: !102)
!1262 = !DILocalVariable(name: "new_mode", arg: 5, scope: !1254, file: !2, line: 122, type: !102)
!1263 = !DILocalVariable(name: "new_stats", scope: !1264, file: !2, line: 129, type: !853)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 125, column: 5)
!1265 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 124, column: 7)
!1266 = !DILocation(line: 0, scope: !1254)
!1267 = !DILocation(line: 124, column: 7, scope: !1265)
!1268 = !DILocation(line: 124, column: 16, scope: !1265)
!1269 = !DILocation(line: 124, column: 7, scope: !1254)
!1270 = !DILocation(line: 129, column: 7, scope: !1264)
!1271 = !DILocation(line: 129, column: 19, scope: !1264)
!1272 = !DILocation(line: 131, column: 11, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 131, column: 11)
!1274 = !DILocation(line: 131, column: 49, scope: !1273)
!1275 = !DILocation(line: 131, column: 11, scope: !1264)
!1276 = !DILocation(line: 133, column: 17, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 133, column: 15)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 132, column: 9)
!1279 = !DILocation(line: 133, column: 15, scope: !1278)
!1280 = !DILocation(line: 134, column: 23, scope: !1277)
!1281 = !DILocation(line: 135, column: 20, scope: !1277)
!1282 = !DILocation(line: 134, column: 13, scope: !1277)
!1283 = !DILocation(line: 136, column: 11, scope: !1278)
!1284 = !DILocation(line: 139, column: 28, scope: !1264)
!1285 = !DILocation(line: 140, column: 5, scope: !1265)
!1286 = !DILocation(line: 140, column: 5, scope: !1264)
!1287 = !DILocation(line: 142, column: 12, scope: !1254)
!1288 = !DILocation(line: 142, column: 23, scope: !1254)
!1289 = !DILocation(line: 142, column: 21, scope: !1254)
!1290 = !DILocation(line: 142, column: 33, scope: !1254)
!1291 = !DILocation(line: 142, column: 52, scope: !1254)
!1292 = !DILocation(line: 142, column: 3, scope: !1254)
!1293 = !DILocation(line: 143, column: 1, scope: !1254)
!1294 = distinct !DISubprogram(name: "describe_change", scope: !2, file: !2, line: 149, type: !1295, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1299)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !117, !1297}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307}
!1300 = !DILocalVariable(name: "file", arg: 1, scope: !1294, file: !2, line: 149, type: !117)
!1301 = !DILocalVariable(name: "ch", arg: 2, scope: !1294, file: !2, line: 149, type: !1297)
!1302 = !DILocalVariable(name: "perms", scope: !1294, file: !2, line: 151, type: !290)
!1303 = !DILocalVariable(name: "old_perms", scope: !1294, file: !2, line: 152, type: !290)
!1304 = !DILocalVariable(name: "fmt", scope: !1294, file: !2, line: 153, type: !117)
!1305 = !DILocalVariable(name: "quoted_file", scope: !1294, file: !2, line: 154, type: !117)
!1306 = !DILocalVariable(name: "old_m", scope: !1294, file: !2, line: 172, type: !178)
!1307 = !DILocalVariable(name: "m", scope: !1294, file: !2, line: 173, type: !178)
!1308 = !DILocation(line: 0, scope: !1294)
!1309 = !DILocation(line: 151, column: 3, scope: !1294)
!1310 = !DILocation(line: 151, column: 8, scope: !1294)
!1311 = !DILocation(line: 152, column: 3, scope: !1294)
!1312 = !DILocation(line: 152, column: 8, scope: !1294)
!1313 = !DILocation(line: 154, column: 29, scope: !1294)
!1314 = !DILocation(line: 156, column: 15, scope: !1294)
!1315 = !DILocation(line: 156, column: 3, scope: !1294)
!1316 = !DILocation(line: 159, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 157, column: 5)
!1318 = !DILocation(line: 161, column: 7, scope: !1317)
!1319 = !DILocation(line: 164, column: 7, scope: !1317)
!1320 = !DILocation(line: 165, column: 7, scope: !1317)
!1321 = !DILocation(line: 168, column: 7, scope: !1317)
!1322 = !DILocation(line: 172, column: 17, scope: !1294)
!1323 = !DILocation(line: 172, column: 13, scope: !1294)
!1324 = !DILocation(line: 172, column: 26, scope: !1294)
!1325 = !DILocation(line: 173, column: 13, scope: !1294)
!1326 = !DILocation(line: 173, column: 9, scope: !1294)
!1327 = !DILocation(line: 173, column: 22, scope: !1294)
!1328 = !DILocation(line: 175, column: 16, scope: !1294)
!1329 = !DILocation(line: 175, column: 12, scope: !1294)
!1330 = !DILocation(line: 175, column: 26, scope: !1294)
!1331 = !DILocation(line: 175, column: 3, scope: !1294)
!1332 = !DILocation(line: 176, column: 3, scope: !1294)
!1333 = !DILocation(line: 176, column: 13, scope: !1294)
!1334 = !DILocation(line: 178, column: 16, scope: !1294)
!1335 = !DILocation(line: 178, column: 12, scope: !1294)
!1336 = !DILocation(line: 178, column: 26, scope: !1294)
!1337 = !DILocation(line: 178, column: 3, scope: !1294)
!1338 = !DILocation(line: 179, column: 3, scope: !1294)
!1339 = !DILocation(line: 179, column: 17, scope: !1294)
!1340 = !DILocation(line: 181, column: 15, scope: !1294)
!1341 = !DILocation(line: 181, column: 3, scope: !1294)
!1342 = !DILocation(line: 185, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 182, column: 5)
!1344 = !DILocation(line: 188, column: 7, scope: !1343)
!1345 = !DILocation(line: 191, column: 37, scope: !1343)
!1346 = !DILocation(line: 191, column: 7, scope: !1343)
!1347 = !DILocation(line: 192, column: 7, scope: !1343)
!1348 = !DILocation(line: 194, column: 7, scope: !1343)
!1349 = !DILocation(line: 0, scope: !1343)
!1350 = !DILocation(line: 196, column: 37, scope: !1294)
!1351 = !DILocation(line: 196, column: 55, scope: !1294)
!1352 = !DILocation(line: 196, column: 3, scope: !1294)
!1353 = !DILocation(line: 197, column: 1, scope: !1294)
!1354 = !DISubprogram(name: "strmode", scope: !578, file: !578, line: 164, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !79, !119}
!1357 = !DISubprogram(name: "abort", scope: !576, file: !576, line: 131, type: !746, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !511)
!1358 = !DISubprogram(name: "rpl_fstatat", scope: !1359, file: !1359, line: 1010, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!1359 = !DIFile(filename: "./lib/sys/stat.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!79, !79, !510, !1362, !79}
!1362 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!1364 = !DISubprogram(name: "fchmodat", scope: !784, file: !784, line: 391, type: !1365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !511)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!79, !79, !117, !102, !79}
