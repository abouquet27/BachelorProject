; ModuleID = 'coreutils-9.3/build/src/mkdir.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct.mkdir_options = type { ptr, i16, i16, i16, i16, ptr, ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [58 x i8] c"Create the DIRECTORY(ies), if they do not already exist.\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [279 x i8] c"  -m, --mode=MODE   set file mode (as in chmod), not a=rwx - umask\0A  -p, --parents     no error if existing, make parent directories as needed,\0A                    with their file modes unaffected by any -m option.\0A  -v, --verbose     print a message for each created directory\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [258 x i8] c"  -Z                   set SELinux security context of each created directory\0A                         to the default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [6 x i8] c"pm:vZ\00", align 1, !dbg !47
@longopts = internal constant [7 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.35, i32 2, ptr null, i32 90 }, %struct.rpl_option { ptr @.str.36, i32 1, ptr null, i32 109 }, %struct.rpl_option { ptr @.str.37, i32 0, ptr null, i32 112 }, %struct.rpl_option { ptr @.str.38, i32 0, ptr null, i32 118 }, %struct.rpl_option { ptr @.str.39, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.40, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !49
@rpl_optarg = external global ptr, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"created directory %s\00", align 1, !dbg !111
@.str.11 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1, !dbg !116
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !121
@Version = external global ptr, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !126
@rpl_optind = external global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !131
@.str.15 = private unnamed_addr constant [50 x i8] c"failed to set default file creation context to %s\00", align 1, !dbg !133
@.str.16 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1, !dbg !138
@.str.17 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !140
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !145
@.str.19 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !150
@.str.20 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !152
@.str.21 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !157
@.str.22 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !162
@.str.23 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !164
@.str.24 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !169
@.str.25 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !171
@.str.26 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !173
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.18, ptr @.str.19 }, %struct.infomap { ptr @.str.20, ptr @.str.21 }, %struct.infomap { ptr @.str.22, ptr @.str.23 }, %struct.infomap { ptr @.str.24, ptr @.str.23 }, %struct.infomap { ptr @.str.25, ptr @.str.23 }, %struct.infomap { ptr @.str.26, ptr @.str.23 }, %struct.infomap zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !175
@.str.28 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !180
@.str.29 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !185
@.str.30 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !190
@.str.31 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !195
@.str.32 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !200
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !205
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !210
@.str.35 = private unnamed_addr constant [8 x i8] c"context\00", align 1, !dbg !215
@.str.36 = private unnamed_addr constant [5 x i8] c"mode\00", align 1, !dbg !220
@.str.37 = private unnamed_addr constant [8 x i8] c"parents\00", align 1, !dbg !222
@.str.38 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !224
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !226
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !228
@.str.41 = private unnamed_addr constant [46 x i8] c"failed to set default creation context for %s\00", align 1, !dbg !230
@.str.42 = private unnamed_addr constant [33 x i8] c"failed to restore context for %s\00", align 1, !dbg !235

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !259 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !263, metadata !DIExpression()), !dbg !264
  %2 = icmp ne i32 %0, 0, !dbg !265
  br i1 %2, label %3, label %9, !dbg !267

3:                                                ; preds = %1
  br label %4, !dbg !268

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !269, !tbaa !271
  %6 = load ptr, ptr @program_name, align 8, !dbg !269, !tbaa !271
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !269
  br label %8, !dbg !269

8:                                                ; preds = %4
  br label %22, !dbg !269

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !275, !tbaa !271
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !277
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !278, !tbaa !271
  %13 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %12), !dbg !279
  call void @emit_mandatory_arg_note(), !dbg !280
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !281, !tbaa !271
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %14), !dbg !282
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !283, !tbaa !271
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %16), !dbg !284
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !285, !tbaa !271
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %18), !dbg !286
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !287, !tbaa !271
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %20), !dbg !288
  call void @emit_ancillary_info(ptr noundef @.str.7), !dbg !289
  br label %22

22:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #9, !dbg !290
  unreachable, !dbg !290
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !291 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !352 i32 @printf(ptr noundef, ...) #2

declare !dbg !355 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !358 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !361, !tbaa !271
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.17, ptr noundef %1), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !364 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !368, metadata !DIExpression()), !dbg !381
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #10, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %2, metadata !369, metadata !DIExpression()), !dbg !383
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !383
  call void @llvm.dbg.value(metadata ptr %0, metadata !376, metadata !DIExpression()), !dbg !381
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !384
  call void @llvm.dbg.value(metadata ptr %3, metadata !377, metadata !DIExpression()), !dbg !381
  br label %4, !dbg !385

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !381
  call void @llvm.dbg.value(metadata ptr %.0, metadata !377, metadata !DIExpression()), !dbg !381
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !386
  %6 = load ptr, ptr %5, align 8, !dbg !386, !tbaa !387
  %7 = icmp ne ptr %6, null, !dbg !389
  br i1 %7, label %8, label %14, !dbg !390

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !391
  %10 = load ptr, ptr %9, align 8, !dbg !391, !tbaa !387
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !391
  %12 = icmp eq i32 %11, 0, !dbg !391
  %13 = xor i1 %12, true, !dbg !392
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !381
  br i1 %15, label %16, label %18, !dbg !385

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !393
  call void @llvm.dbg.value(metadata ptr %17, metadata !377, metadata !DIExpression()), !dbg !381
  br label %4, !dbg !385, !llvm.loop !394

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !397
  %20 = load ptr, ptr %19, align 8, !dbg !397, !tbaa !399
  %21 = icmp ne ptr %20, null, !dbg !400
  br i1 %21, label %22, label %25, !dbg !401

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !402
  %24 = load ptr, ptr %23, align 8, !dbg !402, !tbaa !399
  call void @llvm.dbg.value(metadata ptr %24, metadata !376, metadata !DIExpression()), !dbg !381
  br label %25, !dbg !403

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !381
  call void @llvm.dbg.value(metadata ptr %.01, metadata !376, metadata !DIExpression()), !dbg !381
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.27, ptr noundef @.str.12, ptr noundef @.str.28), !dbg !404
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !405
  call void @llvm.dbg.value(metadata ptr %27, metadata !379, metadata !DIExpression()), !dbg !381
  %28 = icmp ne ptr %27, null, !dbg !406
  br i1 %28, label %29, label %35, !dbg !408

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.29, i64 noundef 3), !dbg !409
  %31 = icmp ne i32 %30, 0, !dbg !409
  br i1 %31, label %32, label %35, !dbg !410

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !411, !tbaa !271
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.30, ptr noundef %33), !dbg !413
  br label %35, !dbg !414

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.18), !dbg !415
  %37 = icmp eq i32 %36, 0, !dbg !415
  br i1 %37, label %38, label %39, !dbg !415

38:                                               ; preds = %35
  br label %40, !dbg !415

39:                                               ; preds = %35
  br label %40, !dbg !415

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.31, %38 ], [ %0, %39 ], !dbg !415
  call void @llvm.dbg.value(metadata ptr %41, metadata !380, metadata !DIExpression()), !dbg !381
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.32, ptr noundef @.str.28, ptr noundef %41), !dbg !416
  %43 = icmp eq ptr %.01, %0, !dbg !417
  %44 = zext i1 %43 to i64, !dbg !418
  %45 = select i1 %43, ptr @.str.34, ptr @.str.8, !dbg !418
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.33, ptr noundef %.01, ptr noundef %45), !dbg !419
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #10, !dbg !420
  ret void, !dbg !420
}

; Function Attrs: noreturn
declare !dbg !421 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !423 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !427 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !431 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !438 {
  %3 = alloca %struct.mkdir_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !443, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata ptr %1, metadata !444, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata ptr null, metadata !445, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata ptr null, metadata !447, metadata !DIExpression()), !dbg !481
  call void @llvm.lifetime.start.p0(i64 32, ptr %3) #10, !dbg !482
  call void @llvm.dbg.declare(metadata ptr %3, metadata !448, metadata !DIExpression()), !dbg !483
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 0, !dbg !484
  store ptr null, ptr %4, align 8, !dbg !485, !tbaa !486
  %5 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 3, !dbg !489
  store i16 511, ptr %5, align 4, !dbg !490, !tbaa !491
  %6 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 4, !dbg !492
  store i16 0, ptr %6, align 2, !dbg !493, !tbaa !494
  %7 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 6, !dbg !495
  store ptr null, ptr %7, align 8, !dbg !496, !tbaa !497
  %8 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 5, !dbg !498
  store ptr null, ptr %8, align 8, !dbg !499, !tbaa !500
  %9 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !501
  %10 = load ptr, ptr %9, align 8, !dbg !501, !tbaa !271
  call void @set_program_name(ptr noundef %10), !dbg !502
  %11 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.8), !dbg !503
  %12 = call i32 @atexit(ptr noundef @close_stdout), !dbg !504
  br label %13, !dbg !505

13:                                               ; preds = %38, %2
  %.02 = phi ptr [ null, %2 ], [ %.13, %38 ], !dbg !506
  %.01 = phi ptr [ null, %2 ], [ %.2, %38 ], !dbg !481
  call void @llvm.dbg.value(metadata ptr %.01, metadata !447, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata ptr %.02, metadata !445, metadata !DIExpression()), !dbg !481
  %14 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.9, ptr noundef @longopts, ptr noundef null), !dbg !507
  call void @llvm.dbg.value(metadata i32 %14, metadata !446, metadata !DIExpression()), !dbg !481
  %15 = icmp ne i32 %14, -1, !dbg !508
  br i1 %15, label %16, label %39, !dbg !505

16:                                               ; preds = %13
  switch i32 %14, label %37 [
    i32 112, label %17
    i32 109, label %19
    i32 118, label %21
    i32 90, label %23
    i32 -130, label %33
    i32 -131, label %34
  ], !dbg !509

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 0, !dbg !511
  store ptr @make_ancestor, ptr %18, align 8, !dbg !513, !tbaa !486
  br label %38, !dbg !514

19:                                               ; preds = %16
  %20 = load ptr, ptr @rpl_optarg, align 8, !dbg !515, !tbaa !271
  call void @llvm.dbg.value(metadata ptr %20, metadata !445, metadata !DIExpression()), !dbg !481
  br label %38, !dbg !516

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 6, !dbg !517
  store ptr @.str.10, ptr %22, align 8, !dbg !518, !tbaa !497
  br label %38, !dbg !519

23:                                               ; preds = %16
  %24 = call zeroext i1 @is_smack_enabled(), !dbg !520
  br i1 %24, label %25, label %27, !dbg !522

25:                                               ; preds = %23
  %26 = load ptr, ptr @rpl_optarg, align 8, !dbg !523, !tbaa !271
  call void @llvm.dbg.value(metadata ptr %26, metadata !447, metadata !DIExpression()), !dbg !481
  br label %32, !dbg !525

27:                                               ; preds = %23
  %28 = load ptr, ptr @rpl_optarg, align 8, !dbg !526, !tbaa !271
  %29 = icmp ne ptr %28, null, !dbg !526
  br i1 %29, label %30, label %31, !dbg !529

30:                                               ; preds = %27
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.11), !dbg !530
  br label %31, !dbg !532

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31, %25
  %.1 = phi ptr [ %26, %25 ], [ %.01, %31 ], !dbg !481
  call void @llvm.dbg.value(metadata ptr %.1, metadata !447, metadata !DIExpression()), !dbg !481
  br label %38, !dbg !533

33:                                               ; preds = %16
  call void @usage(i32 noundef 0) #9, !dbg !534
  unreachable, !dbg !534

34:                                               ; preds = %16
  %35 = load ptr, ptr @__stdoutp, align 8, !dbg !535, !tbaa !271
  %36 = load ptr, ptr @Version, align 8, !dbg !535, !tbaa !271
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %35, ptr noundef @.str.7, ptr noundef @.str.12, ptr noundef %36, ptr noundef @.str.13, ptr noundef null), !dbg !535
  call void @exit(i32 noundef 0) #9, !dbg !535
  unreachable, !dbg !535

37:                                               ; preds = %16
  call void @usage(i32 noundef 1) #9, !dbg !536
  unreachable, !dbg !536

38:                                               ; preds = %32, %21, %19, %17
  %.13 = phi ptr [ %.02, %32 ], [ %.02, %21 ], [ %20, %19 ], [ %.02, %17 ], !dbg !481
  %.2 = phi ptr [ %.1, %32 ], [ %.01, %21 ], [ %.01, %19 ], [ %.01, %17 ], !dbg !481
  call void @llvm.dbg.value(metadata ptr %.2, metadata !447, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata ptr %.13, metadata !445, metadata !DIExpression()), !dbg !481
  br label %13, !dbg !505, !llvm.loop !537

39:                                               ; preds = %13
  %40 = load i32, ptr @rpl_optind, align 4, !dbg !539, !tbaa !541
  %41 = icmp eq i32 %40, %0, !dbg !543
  br i1 %41, label %42, label %43, !dbg !544

42:                                               ; preds = %39
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.14), !dbg !545
  call void @usage(i32 noundef 1) #9, !dbg !547
  unreachable, !dbg !547

43:                                               ; preds = %39
  %44 = icmp ne ptr %.01, null, !dbg !548
  br i1 %44, label %45, label %58, !dbg !549

45:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32 0, metadata !469, metadata !DIExpression()), !dbg !550
  %46 = call zeroext i1 @is_smack_enabled(), !dbg !551
  br i1 %46, label %47, label %49, !dbg !553

47:                                               ; preds = %45
  %48 = call i32 @smack_set_label_for_self(ptr noundef %.01), !dbg !554
  call void @llvm.dbg.value(metadata i32 %48, metadata !469, metadata !DIExpression()), !dbg !550
  br label %51, !dbg !555

49:                                               ; preds = %45
  %50 = call i32 @setfscreatecon(ptr noundef %.01), !dbg !556
  call void @llvm.dbg.value(metadata i32 %50, metadata !469, metadata !DIExpression()), !dbg !550
  br label %51

51:                                               ; preds = %49, %47
  %.0 = phi i32 [ %48, %47 ], [ %50, %49 ], !dbg !557
  call void @llvm.dbg.value(metadata i32 %.0, metadata !469, metadata !DIExpression()), !dbg !550
  %52 = icmp slt i32 %.0, 0, !dbg !558
  br i1 %52, label %53, label %57, !dbg !560

53:                                               ; preds = %51
  %54 = call ptr @__error(), !dbg !561
  %55 = load i32, ptr %54, align 4, !dbg !561, !tbaa !541
  %56 = call ptr @quote(ptr noundef %.01), !dbg !561
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %55, ptr noundef @.str.15, ptr noundef %56), !dbg !561
  unreachable, !dbg !561

57:                                               ; preds = %51
  br label %58, !dbg !562

58:                                               ; preds = %57, %43
  %59 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 0, !dbg !563
  %60 = load ptr, ptr %59, align 8, !dbg !563, !tbaa !486
  %61 = icmp ne ptr %60, null, !dbg !564
  br i1 %61, label %64, label %62, !dbg !565

62:                                               ; preds = %58
  %63 = icmp ne ptr %.02, null, !dbg !566
  br i1 %63, label %64, label %95, !dbg !567

64:                                               ; preds = %62, %58
  %65 = call zeroext i16 @umask(i16 noundef zeroext 0), !dbg !568
  call void @llvm.dbg.value(metadata i16 %65, metadata !472, metadata !DIExpression()), !dbg !569
  %66 = zext i16 %65 to i32, !dbg !570
  %67 = and i32 %66, -193, !dbg !571
  %68 = trunc i32 %67 to i16, !dbg !570
  %69 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 1, !dbg !572
  store i16 %68, ptr %69, align 8, !dbg !573, !tbaa !574
  %70 = icmp ne ptr %.02, null, !dbg !575
  br i1 %70, label %71, label %88, !dbg !576

71:                                               ; preds = %64
  %72 = call noalias ptr @mode_compile(ptr noundef %.02), !dbg !577
  call void @llvm.dbg.value(metadata ptr %72, metadata !475, metadata !DIExpression()), !dbg !578
  %73 = icmp ne ptr %72, null, !dbg !579
  br i1 %73, label %76, label %74, !dbg !581

74:                                               ; preds = %71
  %75 = call ptr @quote(ptr noundef %.02), !dbg !582
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.16, ptr noundef %75), !dbg !582
  unreachable, !dbg !582

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 4, !dbg !583
  %78 = call zeroext i16 @mode_adjust(i16 noundef zeroext 511, i1 noundef zeroext true, i16 noundef zeroext %65, ptr noundef %72, ptr noundef %77), !dbg !584
  %79 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 3, !dbg !585
  store i16 %78, ptr %79, align 4, !dbg !586, !tbaa !491
  %80 = zext i16 %65 to i32, !dbg !587
  %81 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 3, !dbg !588
  %82 = load i16, ptr %81, align 4, !dbg !588, !tbaa !491
  %83 = zext i16 %82 to i32, !dbg !589
  %84 = xor i32 %83, -1, !dbg !590
  %85 = and i32 %80, %84, !dbg !591
  %86 = trunc i32 %85 to i16, !dbg !587
  %87 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 2, !dbg !592
  store i16 %86, ptr %87, align 2, !dbg !593, !tbaa !594
  call void @rpl_free(ptr noundef %72), !dbg !595
  br label %91, !dbg !596

88:                                               ; preds = %64
  %89 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 3, !dbg !597
  store i16 511, ptr %89, align 4, !dbg !599, !tbaa !491
  %90 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 2, !dbg !600
  store i16 %65, ptr %90, align 2, !dbg !601, !tbaa !594
  br label %91

91:                                               ; preds = %88, %76
  %92 = getelementptr inbounds %struct.mkdir_options, ptr %3, i32 0, i32 2, !dbg !602
  %93 = load i16, ptr %92, align 2, !dbg !602, !tbaa !594
  %94 = call zeroext i16 @umask(i16 noundef zeroext %93), !dbg !603
  br label %95, !dbg !604

95:                                               ; preds = %91, %62
  %96 = load i32, ptr @rpl_optind, align 4, !dbg !605, !tbaa !541
  %97 = sub nsw i32 %0, %96, !dbg !606
  %98 = load i32, ptr @rpl_optind, align 4, !dbg !607, !tbaa !541
  %99 = sext i32 %98 to i64, !dbg !608
  %100 = getelementptr inbounds ptr, ptr %1, i64 %99, !dbg !608
  %101 = call i32 @savewd_process_files(i32 noundef %97, ptr noundef %100, ptr noundef @process_dir, ptr noundef %3), !dbg !609
  call void @llvm.lifetime.end.p0(i64 32, ptr %3) #10, !dbg !610
  ret i32 %101, !dbg !611
}

declare !dbg !612 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !614 i32 @atexit(ptr noundef) #2

declare !dbg !618 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @make_ancestor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 !dbg !622 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !624, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata ptr %1, metadata !625, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata ptr %2, metadata !626, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata ptr %2, metadata !627, metadata !DIExpression()), !dbg !634
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 5, !dbg !635
  %5 = load ptr, ptr %4, align 8, !dbg !635, !tbaa !500
  %6 = icmp ne ptr %5, null, !dbg !637
  br i1 %6, label %7, label %20, !dbg !638

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 5, !dbg !639
  %9 = load ptr, ptr %8, align 8, !dbg !639, !tbaa !500
  %10 = call i32 @defaultcon(ptr noundef %9, ptr noundef %1, i16 noundef zeroext 16384), !dbg !640
  %11 = icmp slt i32 %10, 0, !dbg !641
  br i1 %11, label %12, label %20, !dbg !642

12:                                               ; preds = %7
  %13 = call ptr @__error(), !dbg !643
  %14 = load i32, ptr %13, align 4, !dbg !643, !tbaa !541
  %15 = call zeroext i1 @ignorable_ctx_err(i32 noundef %14), !dbg !644
  br i1 %15, label %20, label %16, !dbg !645

16:                                               ; preds = %12
  %17 = call ptr @__error(), !dbg !646
  %18 = load i32, ptr %17, align 4, !dbg !646, !tbaa !541
  %19 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !647
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef @.str.41, ptr noundef %19), !dbg !648
  br label %20, !dbg !648

20:                                               ; preds = %16, %12, %7, %3
  %21 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 1, !dbg !649
  %22 = load i16, ptr %21, align 8, !dbg !649, !tbaa !574
  %23 = zext i16 %22 to i32, !dbg !651
  %24 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 2, !dbg !652
  %25 = load i16, ptr %24, align 2, !dbg !652, !tbaa !594
  %26 = zext i16 %25 to i32, !dbg !653
  %27 = icmp ne i32 %23, %26, !dbg !654
  br i1 %27, label %28, label %32, !dbg !655

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 1, !dbg !656
  %30 = load i16, ptr %29, align 8, !dbg !656, !tbaa !574
  %31 = call zeroext i16 @umask(i16 noundef zeroext %30), !dbg !657
  br label %32, !dbg !657

32:                                               ; preds = %28, %20
  %33 = call i32 @mkdir(ptr noundef %1, i16 noundef zeroext 511), !dbg !658
  call void @llvm.dbg.value(metadata i32 %33, metadata !630, metadata !DIExpression()), !dbg !634
  %34 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 1, !dbg !659
  %35 = load i16, ptr %34, align 8, !dbg !659, !tbaa !574
  %36 = zext i16 %35 to i32, !dbg !660
  %37 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 2, !dbg !661
  %38 = load i16, ptr %37, align 2, !dbg !661, !tbaa !594
  %39 = zext i16 %38 to i32, !dbg !662
  %40 = icmp ne i32 %36, %39, !dbg !663
  br i1 %40, label %41, label %48, !dbg !664

41:                                               ; preds = %32
  %42 = call ptr @__error(), !dbg !665
  %43 = load i32, ptr %42, align 4, !dbg !665, !tbaa !541
  call void @llvm.dbg.value(metadata i32 %43, metadata !631, metadata !DIExpression()), !dbg !666
  %44 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 2, !dbg !667
  %45 = load i16, ptr %44, align 2, !dbg !667, !tbaa !594
  %46 = call zeroext i16 @umask(i16 noundef zeroext %45), !dbg !668
  %47 = call ptr @__error(), !dbg !669
  store i32 %43, ptr %47, align 4, !dbg !670, !tbaa !541
  br label %48, !dbg !671

48:                                               ; preds = %41, %32
  %49 = icmp eq i32 %33, 0, !dbg !672
  br i1 %49, label %50, label %57, !dbg !674

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 1, !dbg !675
  %52 = load i16, ptr %51, align 8, !dbg !675, !tbaa !574
  %53 = zext i16 %52 to i32, !dbg !677
  %54 = and i32 %53, 256, !dbg !678
  %55 = icmp ne i32 %54, 0, !dbg !679
  %56 = zext i1 %55 to i32, !dbg !679
  call void @llvm.dbg.value(metadata i32 %56, metadata !630, metadata !DIExpression()), !dbg !634
  call void @announce_mkdir(ptr noundef %0, ptr noundef %2), !dbg !680
  br label %57, !dbg !681

57:                                               ; preds = %50, %48
  %.0 = phi i32 [ %56, %50 ], [ %33, %48 ], !dbg !634
  call void @llvm.dbg.value(metadata i32 %.0, metadata !630, metadata !DIExpression()), !dbg !634
  ret i32 %.0, !dbg !682
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @is_smack_enabled() #3 !dbg !683 {
  ret i1 false, !dbg !688
}

declare !dbg !689 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !693 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @smack_set_label_for_self(ptr noundef %0) #3 !dbg !697 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !701, metadata !DIExpression()), !dbg !702
  ret i32 -1, !dbg !703
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @setfscreatecon(ptr noundef %0) #3 !dbg !704 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !707, metadata !DIExpression()), !dbg !708
  %2 = call ptr @__error(), !dbg !709
  store i32 45, ptr %2, align 4, !dbg !710, !tbaa !541
  ret i32 -1, !dbg !711
}

declare !dbg !712 ptr @__error() #2

declare !dbg !716 ptr @quote(ptr noundef) #2

declare !dbg !720 zeroext i16 @umask(i16 noundef zeroext) #2

declare !dbg !724 noalias ptr @mode_compile(ptr noundef) #2

declare !dbg !727 zeroext i16 @mode_adjust(i16 noundef zeroext, i1 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) #2

declare !dbg !733 void @rpl_free(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @process_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 !dbg !737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !742, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %1, metadata !743, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %2, metadata !744, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata ptr %2, metadata !745, metadata !DIExpression()), !dbg !747
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 5, !dbg !748
  %5 = load ptr, ptr %4, align 8, !dbg !748, !tbaa !500
  %6 = icmp ne ptr %5, null, !dbg !750
  br i1 %6, label %7, label %25, !dbg !751

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 0, !dbg !752
  %9 = load ptr, ptr %8, align 8, !dbg !752, !tbaa !486
  %10 = icmp ne ptr %9, null, !dbg !755
  br i1 %10, label %24, label %11, !dbg !756

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 5, !dbg !757
  %13 = load ptr, ptr %12, align 8, !dbg !757, !tbaa !500
  %14 = call i32 @defaultcon(ptr noundef %13, ptr noundef %0, i16 noundef zeroext 16384), !dbg !758
  %15 = icmp slt i32 %14, 0, !dbg !759
  br i1 %15, label %16, label %24, !dbg !760

16:                                               ; preds = %11
  %17 = call ptr @__error(), !dbg !761
  %18 = load i32, ptr %17, align 4, !dbg !761, !tbaa !541
  %19 = call zeroext i1 @ignorable_ctx_err(i32 noundef %18), !dbg !762
  br i1 %19, label %24, label %20, !dbg !763

20:                                               ; preds = %16
  %21 = call ptr @__error(), !dbg !764
  %22 = load i32, ptr %21, align 4, !dbg !764, !tbaa !541
  %23 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !765
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %22, ptr noundef @.str.41, ptr noundef %23), !dbg !766
  br label %24, !dbg !766

24:                                               ; preds = %20, %16, %11, %7
  br label %25, !dbg !767

25:                                               ; preds = %24, %3
  %26 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 0, !dbg !768
  %27 = load ptr, ptr %26, align 8, !dbg !768, !tbaa !486
  %28 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 3, !dbg !769
  %29 = load i16, ptr %28, align 4, !dbg !769, !tbaa !491
  %30 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 4, !dbg !770
  %31 = load i16, ptr %30, align 2, !dbg !770, !tbaa !494
  %32 = call zeroext i1 @make_dir_parents(ptr noundef %0, ptr noundef %1, ptr noundef %27, ptr noundef %2, i16 noundef zeroext %29, ptr noundef @announce_mkdir, i16 noundef zeroext %31, i32 noundef -1, i32 noundef -1, i1 noundef zeroext true), !dbg !771
  %33 = zext i1 %32 to i64, !dbg !771
  %34 = select i1 %32, i32 0, i32 1, !dbg !771
  call void @llvm.dbg.value(metadata i32 %34, metadata !746, metadata !DIExpression()), !dbg !747
  %35 = icmp eq i32 %34, 0, !dbg !772
  br i1 %35, label %36, label %58, !dbg !774

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 5, !dbg !775
  %38 = load ptr, ptr %37, align 8, !dbg !775, !tbaa !500
  %39 = icmp ne ptr %38, null, !dbg !776
  br i1 %39, label %40, label %58, !dbg !777

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 0, !dbg !778
  %42 = load ptr, ptr %41, align 8, !dbg !778, !tbaa !486
  %43 = icmp ne ptr %42, null, !dbg !779
  br i1 %43, label %44, label %58, !dbg !780

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.mkdir_options, ptr %2, i32 0, i32 5, !dbg !781
  %46 = load ptr, ptr %45, align 8, !dbg !781, !tbaa !500
  %47 = call ptr @last_component(ptr noundef %0) #11, !dbg !784
  %48 = call zeroext i1 @restorecon(ptr noundef %46, ptr noundef %47, i1 noundef zeroext false), !dbg !785
  br i1 %48, label %57, label %49, !dbg !786

49:                                               ; preds = %44
  %50 = call ptr @__error(), !dbg !787
  %51 = load i32, ptr %50, align 4, !dbg !787, !tbaa !541
  %52 = call zeroext i1 @ignorable_ctx_err(i32 noundef %51), !dbg !788
  br i1 %52, label %57, label %53, !dbg !789

53:                                               ; preds = %49
  %54 = call ptr @__error(), !dbg !790
  %55 = load i32, ptr %54, align 4, !dbg !790, !tbaa !541
  %56 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !791
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %55, ptr noundef @.str.42, ptr noundef %56), !dbg !792
  br label %57, !dbg !792

57:                                               ; preds = %53, %49, %44
  br label %58, !dbg !793

58:                                               ; preds = %57, %40, %36, %25
  ret i32 %34, !dbg !794
}

declare !dbg !795 i32 @savewd_process_files(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @defaultcon(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #3 !dbg !799 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !804, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata ptr %1, metadata !805, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i16 %2, metadata !806, metadata !DIExpression()), !dbg !807
  %4 = call ptr @__error(), !dbg !808
  store i32 45, ptr %4, align 4, !dbg !809, !tbaa !541
  ret i32 -1, !dbg !810
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @ignorable_ctx_err(i32 noundef %0) #3 !dbg !811 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !815, metadata !DIExpression()), !dbg !816
  %2 = icmp eq i32 %0, 45, !dbg !817
  br i1 %2, label %5, label %3, !dbg !818

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 96, !dbg !819
  br label %5, !dbg !818

5:                                                ; preds = %3, %1
  %6 = phi i1 [ true, %1 ], [ %4, %3 ]
  ret i1 %6, !dbg !820
}

declare !dbg !821 ptr @quotearg_style(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @announce_mkdir(ptr noundef %0, ptr noundef %1) #7 !dbg !824 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !828, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr %1, metadata !829, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr %1, metadata !830, metadata !DIExpression()), !dbg !831
  %3 = getelementptr inbounds %struct.mkdir_options, ptr %1, i32 0, i32 6, !dbg !832
  %4 = load ptr, ptr %3, align 8, !dbg !832, !tbaa !497
  %5 = icmp ne ptr %4, null, !dbg !834
  br i1 %5, label %6, label %11, !dbg !835

6:                                                ; preds = %2
  %7 = load ptr, ptr @__stdoutp, align 8, !dbg !836, !tbaa !271
  %8 = getelementptr inbounds %struct.mkdir_options, ptr %1, i32 0, i32 6, !dbg !837
  %9 = load ptr, ptr %8, align 8, !dbg !837, !tbaa !497
  %10 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !838
  call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %7, ptr noundef %9, ptr noundef %10), !dbg !839
  br label %11, !dbg !839

11:                                               ; preds = %6, %2
  ret void, !dbg !840
}

declare !dbg !841 zeroext i1 @make_dir_parents(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !846 ptr @last_component(ptr noundef) #8

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @restorecon(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #3 !dbg !850 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !854, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata ptr %1, metadata !855, metadata !DIExpression()), !dbg !857
  %4 = zext i1 %2 to i8
  call void @llvm.dbg.value(metadata i8 %4, metadata !856, metadata !DIExpression()), !dbg !857
  %5 = call ptr @__error(), !dbg !858
  store i32 45, ptr %5, align 4, !dbg !859, !tbaa !541
  ret i1 false, !dbg !860
}

declare !dbg !861 void @prog_fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !865 i32 @mkdir(ptr noundef, i16 noundef zeroext) #2

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
attributes #8 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!51}
!llvm.ident = !{!252}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/mkdir.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 36)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 58)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2232, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 279)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2064, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 258)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 48)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 57)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 6)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !39, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "longopts", scope: !51, file: !2, line: 41, type: !240, isLocal: true, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !98, globals: !110, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!52 = !{!53, !59, !84}
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 332, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!58 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !61, file: !60, line: 38, baseType: !76, size: 32, elements: !77)
!60 = !DIFile(filename: "../lib/savewd.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !60, line: 35, size: 64, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !61, file: !60, line: 65, baseType: !59, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !61, file: !60, line: 73, baseType: !65, size: 32, offset: 32)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !60, line: 68, size: 32, elements: !66)
!66 = !{!67, !68, !69}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !65, file: !60, line: 70, baseType: !55, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !65, file: !60, line: 71, baseType: !55, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !65, file: !60, line: 72, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !71, line: 31, baseType: !72)
!71 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_pid_t.h", directory: "")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pid_t", file: !73, line: 72, baseType: !74)
!73 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !75, line: 46, baseType: !55)
!75 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80, !81, !82, !83}
!78 = !DIEnumerator(name: "INITIAL_STATE", value: 0)
!79 = !DIEnumerator(name: "FD_STATE", value: 1)
!80 = !DIEnumerator(name: "FD_POST_CHDIR_STATE", value: 2)
!81 = !DIEnumerator(name: "FORKING_STATE", value: 3)
!82 = !DIEnumerator(name: "ERROR_STATE", value: 4)
!83 = !DIEnumerator(name: "FINAL_STATE", value: 5)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !85, line: 32, baseType: !76, size: 32, elements: !86)
!85 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!87 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!88 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!89 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!90 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!91 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!92 = !DIEnumerator(name: "c_quoting_style", value: 5)
!93 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!94 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!95 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!96 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!97 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!98 = !{!99, !101, !102, !103, !107}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !104, line: 31, baseType: !105)
!104 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !73, line: 75, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !75, line: 47, baseType: !76)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !108, line: 31, baseType: !109)
!108 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !73, line: 60, baseType: !106)
!110 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !111, !116, !121, !126, !131, !133, !138, !140, !145, !150, !152, !157, !162, !164, !169, !171, !173, !175, !180, !185, !190, !195, !200, !205, !210, !215, !220, !222, !224, !226, !228, !49, !230, !235}
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 21)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 73)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 14)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 16)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !128, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 50)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !128, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !54, line: 586, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 75)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !54, line: 660, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 2)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !54, line: 660, type: !128, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !54, line: 661, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 10)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !54, line: 661, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 22)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !54, line: 662, type: !154, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !54, line: 662, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 15)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !54, line: 663, type: !154, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !54, line: 664, type: !154, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !54, line: 665, type: !154, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !54, line: 678, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 23)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !54, line: 678, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 40)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !54, line: 683, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 4)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !54, line: 689, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 71)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !54, line: 695, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 5)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !54, line: 696, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 27)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !54, line: 698, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 51)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !54, line: 699, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 12)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 8)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !197, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !217, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !217, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !197, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !217, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 46)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 33)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 1792, elements: !250)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !243, line: 50, size: 256, elements: !244)
!243 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!244 = !{!245, !246, !247, !249}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !243, line: 52, baseType: !99, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !242, file: !243, line: 55, baseType: !55, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !242, file: !243, line: 56, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !242, file: !243, line: 57, baseType: !55, size: 32, offset: 192)
!250 = !{!251}
!251 = !DISubrange(count: 7)
!252 = !{!"Homebrew clang version 16.0.4"}
!253 = !{i32 7, !"Dwarf Version", i32 4}
!254 = !{i32 2, !"Debug Info Version", i32 3}
!255 = !{i32 1, !"wchar_size", i32 4}
!256 = !{i32 8, !"PIC Level", i32 2}
!257 = !{i32 7, !"uwtable", i32 2}
!258 = !{i32 7, !"frame-pointer", i32 2}
!259 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 53, type: !260, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !55}
!262 = !{!263}
!263 = !DILocalVariable(name: "status", arg: 1, scope: !259, file: !2, line: 53, type: !55)
!264 = !DILocation(line: 0, scope: !259)
!265 = !DILocation(line: 55, column: 14, scope: !266)
!266 = distinct !DILexicalBlock(scope: !259, file: !2, line: 55, column: 7)
!267 = !DILocation(line: 55, column: 7, scope: !259)
!268 = !DILocation(line: 56, column: 5, scope: !266)
!269 = !DILocation(line: 56, column: 5, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !2, line: 56, column: 5)
!271 = !{!272, !272, i64 0}
!272 = !{!"any pointer", !273, i64 0}
!273 = !{!"omnipotent char", !274, i64 0}
!274 = !{!"Simple C/C++ TBAA"}
!275 = !DILocation(line: 59, column: 58, scope: !276)
!276 = distinct !DILexicalBlock(scope: !266, file: !2, line: 58, column: 5)
!277 = !DILocation(line: 59, column: 7, scope: !276)
!278 = !DILocation(line: 62, column: 5, scope: !276)
!279 = !DILocation(line: 60, column: 7, scope: !276)
!280 = !DILocation(line: 64, column: 7, scope: !276)
!281 = !DILocation(line: 71, column: 5, scope: !276)
!282 = !DILocation(line: 66, column: 7, scope: !276)
!283 = !DILocation(line: 77, column: 5, scope: !276)
!284 = !DILocation(line: 72, column: 7, scope: !276)
!285 = !DILocation(line: 78, column: 39, scope: !276)
!286 = !DILocation(line: 78, column: 7, scope: !276)
!287 = !DILocation(line: 79, column: 42, scope: !276)
!288 = !DILocation(line: 79, column: 7, scope: !276)
!289 = !DILocation(line: 80, column: 7, scope: !276)
!290 = !DILocation(line: 82, column: 3, scope: !259)
!291 = !DISubprogram(name: "fprintf", scope: !292, file: !292, line: 155, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!292 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!293 = !DISubroutineType(types: !294)
!294 = !{!55, !295, !350, null}
!295 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !298, line: 157, baseType: !299)
!298 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !298, line: 126, size: 1216, elements: !300)
!300 = !{!301, !304, !305, !306, !308, !309, !314, !315, !316, !320, !324, !332, !336, !337, !340, !341, !345, !347, !348, !349}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !299, file: !298, line: 127, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !299, file: !298, line: 128, baseType: !55, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !299, file: !298, line: 129, baseType: !55, size: 32, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !299, file: !298, line: 130, baseType: !307, size: 16, offset: 128)
!307 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !299, file: !298, line: 131, baseType: !307, size: 16, offset: 144)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !299, file: !298, line: 132, baseType: !310, size: 128, offset: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !298, line: 92, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !310, file: !298, line: 93, baseType: !302, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !310, file: !298, line: 94, baseType: !55, size: 32, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !299, file: !298, line: 133, baseType: !55, size: 32, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !299, file: !298, line: 136, baseType: !102, size: 64, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !299, file: !298, line: 137, baseType: !317, size: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!55, !102}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !299, file: !298, line: 138, baseType: !321, size: 64, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!55, !102, !101, !55}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !299, file: !298, line: 139, baseType: !325, size: 64, offset: 576)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !102, !328, !55}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !298, line: 81, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !73, line: 71, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !75, line: 48, baseType: !331)
!331 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !299, file: !298, line: 140, baseType: !333, size: 64, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!55, !102, !99, !55}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !299, file: !298, line: 143, baseType: !310, size: 128, offset: 704)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !299, file: !298, line: 144, baseType: !338, size: 64, offset: 832)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !298, line: 98, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !299, file: !298, line: 145, baseType: !55, size: 32, offset: 896)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !299, file: !298, line: 148, baseType: !342, size: 24, offset: 928)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 24, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 3)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !299, file: !298, line: 149, baseType: !346, size: 8, offset: 952)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 8, elements: !45)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !299, file: !298, line: 152, baseType: !310, size: 128, offset: 960)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !299, file: !298, line: 155, baseType: !55, size: 32, offset: 1088)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !299, file: !298, line: 156, baseType: !328, size: 64, offset: 1152)
!350 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!351 = !{}
!352 = !DISubprogram(name: "printf", scope: !292, file: !292, line: 175, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!353 = !DISubroutineType(types: !354)
!354 = !{!55, !350, null}
!355 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !292, file: !292, line: 157, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!356 = !DISubroutineType(types: !357)
!357 = !{!55, !350, !295}
!358 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !54, file: !54, line: 584, type: !359, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !351)
!359 = !DISubroutineType(types: !360)
!360 = !{null}
!361 = !DILocation(line: 588, column: 5, scope: !358)
!362 = !DILocation(line: 586, column: 3, scope: !358)
!363 = !DILocation(line: 589, column: 1, scope: !358)
!364 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !54, file: !54, line: 657, type: !365, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !99}
!367 = !{!368, !369, !376, !377, !379, !380}
!368 = !DILocalVariable(name: "program", arg: 1, scope: !364, file: !54, line: 657, type: !99)
!369 = !DILocalVariable(name: "infomap", scope: !364, file: !54, line: 659, type: !370)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 896, elements: !250)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !364, file: !54, line: 659, size: 128, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !372, file: !54, line: 659, baseType: !99, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !372, file: !54, line: 659, baseType: !99, size: 64, offset: 64)
!376 = !DILocalVariable(name: "node", scope: !364, file: !54, line: 669, type: !99)
!377 = !DILocalVariable(name: "map_prog", scope: !364, file: !54, line: 670, type: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!379 = !DILocalVariable(name: "lc_messages", scope: !364, file: !54, line: 682, type: !99)
!380 = !DILocalVariable(name: "url_program", scope: !364, file: !54, line: 695, type: !99)
!381 = !DILocation(line: 0, scope: !364)
!382 = !DILocation(line: 659, column: 3, scope: !364)
!383 = !DILocation(line: 659, column: 67, scope: !364)
!384 = !DILocation(line: 670, column: 36, scope: !364)
!385 = !DILocation(line: 672, column: 3, scope: !364)
!386 = !DILocation(line: 672, column: 20, scope: !364)
!387 = !{!388, !272, i64 0}
!388 = !{!"infomap", !272, i64 0, !272, i64 8}
!389 = !DILocation(line: 672, column: 10, scope: !364)
!390 = !DILocation(line: 672, column: 28, scope: !364)
!391 = !DILocation(line: 672, column: 33, scope: !364)
!392 = !DILocation(line: 672, column: 31, scope: !364)
!393 = !DILocation(line: 673, column: 13, scope: !364)
!394 = distinct !{!394, !385, !393, !395, !396}
!395 = !{!"llvm.loop.mustprogress"}
!396 = !{!"llvm.loop.unroll.disable"}
!397 = !DILocation(line: 675, column: 17, scope: !398)
!398 = distinct !DILexicalBlock(scope: !364, file: !54, line: 675, column: 7)
!399 = !{!388, !272, i64 8}
!400 = !DILocation(line: 675, column: 7, scope: !398)
!401 = !DILocation(line: 675, column: 7, scope: !364)
!402 = !DILocation(line: 676, column: 22, scope: !398)
!403 = !DILocation(line: 676, column: 5, scope: !398)
!404 = !DILocation(line: 678, column: 3, scope: !364)
!405 = !DILocation(line: 682, column: 29, scope: !364)
!406 = !DILocation(line: 683, column: 7, scope: !407)
!407 = distinct !DILexicalBlock(scope: !364, file: !54, line: 683, column: 7)
!408 = !DILocation(line: 683, column: 19, scope: !407)
!409 = !DILocation(line: 683, column: 22, scope: !407)
!410 = !DILocation(line: 683, column: 7, scope: !364)
!411 = !DILocation(line: 690, column: 61, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !54, line: 684, column: 5)
!413 = !DILocation(line: 689, column: 7, scope: !412)
!414 = !DILocation(line: 691, column: 5, scope: !412)
!415 = !DILocation(line: 695, column: 29, scope: !364)
!416 = !DILocation(line: 696, column: 3, scope: !364)
!417 = !DILocation(line: 699, column: 22, scope: !364)
!418 = !DILocation(line: 699, column: 17, scope: !364)
!419 = !DILocation(line: 698, column: 3, scope: !364)
!420 = !DILocation(line: 700, column: 1, scope: !364)
!421 = !DISubprogram(name: "exit", scope: !422, file: !422, line: 145, type: !260, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !351)
!422 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!423 = !DISubprogram(name: "strcmp", scope: !424, file: !424, line: 77, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!424 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!425 = !DISubroutineType(types: !426)
!426 = !{!55, !99, !99}
!427 = !DISubprogram(name: "setlocale", scope: !428, file: !428, line: 53, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!428 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!429 = !DISubroutineType(types: !430)
!430 = !{!101, !55, !99}
!431 = !DISubprogram(name: "strncmp", scope: !424, file: !424, line: 84, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!432 = !DISubroutineType(types: !433)
!433 = !{!55, !99, !99, !434}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !435, line: 31, baseType: !436)
!435 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !75, line: 94, baseType: !437)
!437 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!438 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 193, type: !439, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !442)
!439 = !DISubroutineType(types: !440)
!440 = !{!55, !55, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!442 = !{!443, !444, !445, !446, !447, !448, !469, !472, !475}
!443 = !DILocalVariable(name: "argc", arg: 1, scope: !438, file: !2, line: 193, type: !55)
!444 = !DILocalVariable(name: "argv", arg: 2, scope: !438, file: !2, line: 193, type: !441)
!445 = !DILocalVariable(name: "specified_mode", scope: !438, file: !2, line: 195, type: !99)
!446 = !DILocalVariable(name: "optc", scope: !438, file: !2, line: 196, type: !55)
!447 = !DILocalVariable(name: "scontext", scope: !438, file: !2, line: 197, type: !99)
!448 = !DILocalVariable(name: "options", scope: !438, file: !2, line: 198, type: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !2, line: 86, size: 256, elements: !450)
!450 = !{!451, !455, !461, !462, !463, !464, !468}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !449, file: !2, line: 90, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!55, !99, !99, !102}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "umask_ancestor", scope: !449, file: !2, line: 93, baseType: !456, size: 16, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !457, line: 31, baseType: !458)
!457 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !73, line: 70, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !75, line: 45, baseType: !460)
!460 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "umask_self", scope: !449, file: !2, line: 96, baseType: !456, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !449, file: !2, line: 99, baseType: !456, size: 16, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !449, file: !2, line: 102, baseType: !456, size: 16, offset: 112)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !449, file: !2, line: 105, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !467, line: 50, flags: DIFlagFwdDecl)
!467 = !DIFile(filename: "./lib/selinux/label.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!468 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !449, file: !2, line: 108, baseType: !99, size: 64, offset: 192)
!469 = !DILocalVariable(name: "ret", scope: !470, file: !2, line: 270, type: !55)
!470 = distinct !DILexicalBlock(scope: !471, file: !2, line: 269, column: 5)
!471 = distinct !DILexicalBlock(scope: !438, file: !2, line: 268, column: 7)
!472 = !DILocalVariable(name: "umask_value", scope: !473, file: !2, line: 285, type: !456)
!473 = distinct !DILexicalBlock(scope: !474, file: !2, line: 284, column: 5)
!474 = distinct !DILexicalBlock(scope: !438, file: !2, line: 283, column: 7)
!475 = !DILocalVariable(name: "change", scope: !476, file: !2, line: 290, type: !478)
!476 = distinct !DILexicalBlock(scope: !477, file: !2, line: 289, column: 9)
!477 = distinct !DILexicalBlock(scope: !473, file: !2, line: 288, column: 11)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !480, line: 25, flags: DIFlagFwdDecl)
!480 = !DIFile(filename: "../lib/modechange.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!481 = !DILocation(line: 0, scope: !438)
!482 = !DILocation(line: 198, column: 3, scope: !438)
!483 = !DILocation(line: 198, column: 24, scope: !438)
!484 = !DILocation(line: 200, column: 11, scope: !438)
!485 = !DILocation(line: 200, column: 34, scope: !438)
!486 = !{!487, !272, i64 0}
!487 = !{!"mkdir_options", !272, i64 0, !488, i64 8, !488, i64 10, !488, i64 12, !488, i64 14, !272, i64 16, !272, i64 24}
!488 = !{!"short", !273, i64 0}
!489 = !DILocation(line: 201, column: 11, scope: !438)
!490 = !DILocation(line: 201, column: 16, scope: !438)
!491 = !{!487, !488, i64 12}
!492 = !DILocation(line: 202, column: 11, scope: !438)
!493 = !DILocation(line: 202, column: 21, scope: !438)
!494 = !{!487, !488, i64 14}
!495 = !DILocation(line: 203, column: 11, scope: !438)
!496 = !DILocation(line: 203, column: 36, scope: !438)
!497 = !{!487, !272, i64 24}
!498 = !DILocation(line: 204, column: 11, scope: !438)
!499 = !DILocation(line: 204, column: 32, scope: !438)
!500 = !{!487, !272, i64 16}
!501 = !DILocation(line: 207, column: 21, scope: !438)
!502 = !DILocation(line: 207, column: 3, scope: !438)
!503 = !DILocation(line: 208, column: 3, scope: !438)
!504 = !DILocation(line: 212, column: 3, scope: !438)
!505 = !DILocation(line: 214, column: 3, scope: !438)
!506 = !DILocation(line: 195, column: 15, scope: !438)
!507 = !DILocation(line: 214, column: 18, scope: !438)
!508 = !DILocation(line: 214, column: 69, scope: !438)
!509 = !DILocation(line: 216, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !438, file: !2, line: 215, column: 5)
!511 = !DILocation(line: 219, column: 19, scope: !512)
!512 = distinct !DILexicalBlock(scope: !510, file: !2, line: 217, column: 9)
!513 = !DILocation(line: 219, column: 42, scope: !512)
!514 = !DILocation(line: 220, column: 11, scope: !512)
!515 = !DILocation(line: 222, column: 28, scope: !512)
!516 = !DILocation(line: 223, column: 11, scope: !512)
!517 = !DILocation(line: 225, column: 19, scope: !512)
!518 = !DILocation(line: 225, column: 44, scope: !512)
!519 = !DILocation(line: 226, column: 11, scope: !512)
!520 = !DILocation(line: 228, column: 15, scope: !521)
!521 = distinct !DILexicalBlock(scope: !512, file: !2, line: 228, column: 15)
!522 = !DILocation(line: 228, column: 15, scope: !512)
!523 = !DILocation(line: 231, column: 26, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !2, line: 229, column: 13)
!525 = !DILocation(line: 232, column: 13, scope: !524)
!526 = !DILocation(line: 245, column: 20, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !2, line: 245, column: 20)
!528 = distinct !DILexicalBlock(scope: !521, file: !2, line: 233, column: 20)
!529 = !DILocation(line: 245, column: 20, scope: !528)
!530 = !DILocation(line: 247, column: 15, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !2, line: 246, column: 13)
!532 = !DILocation(line: 250, column: 13, scope: !531)
!533 = !DILocation(line: 251, column: 11, scope: !512)
!534 = !DILocation(line: 252, column: 9, scope: !512)
!535 = !DILocation(line: 253, column: 9, scope: !512)
!536 = !DILocation(line: 255, column: 11, scope: !512)
!537 = distinct !{!537, !505, !538, !395, !396}
!538 = !DILocation(line: 257, column: 5, scope: !438)
!539 = !DILocation(line: 259, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !438, file: !2, line: 259, column: 7)
!541 = !{!542, !542, i64 0}
!542 = !{!"int", !273, i64 0}
!543 = !DILocation(line: 259, column: 14, scope: !540)
!544 = !DILocation(line: 259, column: 7, scope: !438)
!545 = !DILocation(line: 261, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !540, file: !2, line: 260, column: 5)
!547 = !DILocation(line: 262, column: 7, scope: !546)
!548 = !DILocation(line: 268, column: 7, scope: !471)
!549 = !DILocation(line: 268, column: 7, scope: !438)
!550 = !DILocation(line: 0, scope: !470)
!551 = !DILocation(line: 271, column: 11, scope: !552)
!552 = distinct !DILexicalBlock(scope: !470, file: !2, line: 271, column: 11)
!553 = !DILocation(line: 271, column: 11, scope: !470)
!554 = !DILocation(line: 272, column: 15, scope: !552)
!555 = !DILocation(line: 272, column: 9, scope: !552)
!556 = !DILocation(line: 274, column: 15, scope: !552)
!557 = !DILocation(line: 0, scope: !552)
!558 = !DILocation(line: 276, column: 15, scope: !559)
!559 = distinct !DILexicalBlock(scope: !470, file: !2, line: 276, column: 11)
!560 = !DILocation(line: 276, column: 11, scope: !470)
!561 = !DILocation(line: 277, column: 9, scope: !559)
!562 = !DILocation(line: 280, column: 5, scope: !470)
!563 = !DILocation(line: 283, column: 15, scope: !474)
!564 = !DILocation(line: 283, column: 7, scope: !474)
!565 = !DILocation(line: 283, column: 38, scope: !474)
!566 = !DILocation(line: 283, column: 41, scope: !474)
!567 = !DILocation(line: 283, column: 7, scope: !438)
!568 = !DILocation(line: 285, column: 28, scope: !473)
!569 = !DILocation(line: 0, scope: !473)
!570 = !DILocation(line: 286, column: 32, scope: !473)
!571 = !DILocation(line: 286, column: 44, scope: !473)
!572 = !DILocation(line: 286, column: 15, scope: !473)
!573 = !DILocation(line: 286, column: 30, scope: !473)
!574 = !{!487, !488, i64 8}
!575 = !DILocation(line: 288, column: 11, scope: !477)
!576 = !DILocation(line: 288, column: 11, scope: !473)
!577 = !DILocation(line: 290, column: 40, scope: !476)
!578 = !DILocation(line: 0, scope: !476)
!579 = !DILocation(line: 291, column: 16, scope: !580)
!580 = distinct !DILexicalBlock(scope: !476, file: !2, line: 291, column: 15)
!581 = !DILocation(line: 291, column: 15, scope: !476)
!582 = !DILocation(line: 292, column: 13, scope: !580)
!583 = !DILocation(line: 295, column: 48, scope: !476)
!584 = !DILocation(line: 294, column: 26, scope: !476)
!585 = !DILocation(line: 294, column: 19, scope: !476)
!586 = !DILocation(line: 294, column: 24, scope: !476)
!587 = !DILocation(line: 296, column: 32, scope: !476)
!588 = !DILocation(line: 296, column: 55, scope: !476)
!589 = !DILocation(line: 296, column: 47, scope: !476)
!590 = !DILocation(line: 296, column: 46, scope: !476)
!591 = !DILocation(line: 296, column: 44, scope: !476)
!592 = !DILocation(line: 296, column: 19, scope: !476)
!593 = !DILocation(line: 296, column: 30, scope: !476)
!594 = !{!487, !488, i64 10}
!595 = !DILocation(line: 297, column: 11, scope: !476)
!596 = !DILocation(line: 298, column: 9, scope: !476)
!597 = !DILocation(line: 301, column: 19, scope: !598)
!598 = distinct !DILexicalBlock(scope: !477, file: !2, line: 300, column: 9)
!599 = !DILocation(line: 301, column: 24, scope: !598)
!600 = !DILocation(line: 302, column: 19, scope: !598)
!601 = !DILocation(line: 302, column: 30, scope: !598)
!602 = !DILocation(line: 305, column: 22, scope: !473)
!603 = !DILocation(line: 305, column: 7, scope: !473)
!604 = !DILocation(line: 306, column: 5, scope: !473)
!605 = !DILocation(line: 308, column: 39, scope: !438)
!606 = !DILocation(line: 308, column: 37, scope: !438)
!607 = !DILocation(line: 308, column: 54, scope: !438)
!608 = !DILocation(line: 308, column: 52, scope: !438)
!609 = !DILocation(line: 308, column: 10, scope: !438)
!610 = !DILocation(line: 310, column: 1, scope: !438)
!611 = !DILocation(line: 308, column: 3, scope: !438)
!612 = !DISubprogram(name: "set_program_name", scope: !613, file: !613, line: 37, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!613 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!614 = !DISubprogram(name: "atexit", scope: !422, file: !422, line: 133, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!615 = !DISubroutineType(types: !616)
!616 = !{!55, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!618 = !DISubprogram(name: "rpl_getopt_long", scope: !243, file: !243, line: 66, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!619 = !DISubroutineType(types: !620)
!620 = !{!55, !55, !441, !99, !621, !248}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!622 = distinct !DISubprogram(name: "make_ancestor", scope: !2, file: !2, line: 126, type: !453, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !623)
!623 = !{!624, !625, !626, !627, !630, !631}
!624 = !DILocalVariable(name: "dir", arg: 1, scope: !622, file: !2, line: 126, type: !99)
!625 = !DILocalVariable(name: "component", arg: 2, scope: !622, file: !2, line: 126, type: !99)
!626 = !DILocalVariable(name: "options", arg: 3, scope: !622, file: !2, line: 126, type: !102)
!627 = !DILocalVariable(name: "o", scope: !622, file: !2, line: 128, type: !628)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!630 = !DILocalVariable(name: "r", scope: !622, file: !2, line: 138, type: !55)
!631 = !DILocalVariable(name: "mkdir_errno", scope: !632, file: !2, line: 141, type: !55)
!632 = distinct !DILexicalBlock(scope: !633, file: !2, line: 140, column: 5)
!633 = distinct !DILexicalBlock(scope: !622, file: !2, line: 139, column: 7)
!634 = !DILocation(line: 0, scope: !622)
!635 = !DILocation(line: 130, column: 10, scope: !636)
!636 = distinct !DILexicalBlock(scope: !622, file: !2, line: 130, column: 7)
!637 = !DILocation(line: 130, column: 7, scope: !636)
!638 = !DILocation(line: 131, column: 7, scope: !636)
!639 = !DILocation(line: 131, column: 25, scope: !636)
!640 = !DILocation(line: 131, column: 10, scope: !636)
!641 = !DILocation(line: 131, column: 67, scope: !636)
!642 = !DILocation(line: 132, column: 7, scope: !636)
!643 = !DILocation(line: 132, column: 31, scope: !636)
!644 = !DILocation(line: 132, column: 12, scope: !636)
!645 = !DILocation(line: 130, column: 7, scope: !622)
!646 = !DILocation(line: 133, column: 15, scope: !636)
!647 = !DILocation(line: 134, column: 12, scope: !636)
!648 = !DILocation(line: 133, column: 5, scope: !636)
!649 = !DILocation(line: 136, column: 10, scope: !650)
!650 = distinct !DILexicalBlock(scope: !622, file: !2, line: 136, column: 7)
!651 = !DILocation(line: 136, column: 7, scope: !650)
!652 = !DILocation(line: 136, column: 31, scope: !650)
!653 = !DILocation(line: 136, column: 28, scope: !650)
!654 = !DILocation(line: 136, column: 25, scope: !650)
!655 = !DILocation(line: 136, column: 7, scope: !622)
!656 = !DILocation(line: 137, column: 15, scope: !650)
!657 = !DILocation(line: 137, column: 5, scope: !650)
!658 = !DILocation(line: 138, column: 11, scope: !622)
!659 = !DILocation(line: 139, column: 10, scope: !633)
!660 = !DILocation(line: 139, column: 7, scope: !633)
!661 = !DILocation(line: 139, column: 31, scope: !633)
!662 = !DILocation(line: 139, column: 28, scope: !633)
!663 = !DILocation(line: 139, column: 25, scope: !633)
!664 = !DILocation(line: 139, column: 7, scope: !622)
!665 = !DILocation(line: 141, column: 25, scope: !632)
!666 = !DILocation(line: 0, scope: !632)
!667 = !DILocation(line: 142, column: 17, scope: !632)
!668 = !DILocation(line: 142, column: 7, scope: !632)
!669 = !DILocation(line: 143, column: 7, scope: !632)
!670 = !DILocation(line: 143, column: 13, scope: !632)
!671 = !DILocation(line: 144, column: 5, scope: !632)
!672 = !DILocation(line: 145, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !622, file: !2, line: 145, column: 7)
!674 = !DILocation(line: 145, column: 7, scope: !622)
!675 = !DILocation(line: 147, column: 15, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !2, line: 146, column: 5)
!677 = !DILocation(line: 147, column: 12, scope: !676)
!678 = !DILocation(line: 147, column: 30, scope: !676)
!679 = !DILocation(line: 147, column: 41, scope: !676)
!680 = !DILocation(line: 148, column: 7, scope: !676)
!681 = !DILocation(line: 149, column: 5, scope: !676)
!682 = !DILocation(line: 150, column: 3, scope: !622)
!683 = distinct !DISubprogram(name: "is_smack_enabled", scope: !684, file: !684, line: 37, type: !685, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !351)
!684 = !DIFile(filename: "../lib/smack.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!685 = !DISubroutineType(types: !686)
!686 = !{!687}
!687 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!688 = !DILocation(line: 42, column: 3, scope: !683)
!689 = !DISubprogram(name: "error", scope: !690, file: !690, line: 395, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!690 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!691 = !DISubroutineType(types: !692)
!692 = !{null, !55, !55, !99, null}
!693 = !DISubprogram(name: "version_etc", scope: !694, file: !694, line: 65, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!694 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!695 = !DISubroutineType(types: !696)
!696 = !{null, !296, !99, !99, !99, null}
!697 = distinct !DISubprogram(name: "smack_set_label_for_self", scope: !684, file: !684, line: 30, type: !698, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{!55, !99}
!700 = !{!701}
!701 = !DILocalVariable(name: "label", arg: 1, scope: !697, file: !684, line: 30, type: !99)
!702 = !DILocation(line: 0, scope: !697)
!703 = !DILocation(line: 32, column: 3, scope: !697)
!704 = distinct !DISubprogram(name: "setfscreatecon", scope: !705, file: !705, line: 71, type: !698, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !706)
!705 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!706 = !{!707}
!707 = !DILocalVariable(name: "con", arg: 1, scope: !704, file: !705, line: 71, type: !99)
!708 = !DILocation(line: 0, scope: !704)
!709 = !DILocation(line: 72, column: 5, scope: !704)
!710 = !DILocation(line: 72, column: 11, scope: !704)
!711 = !DILocation(line: 72, column: 22, scope: !704)
!712 = !DISubprogram(name: "__error", scope: !713, file: !713, line: 80, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!713 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!714 = !DISubroutineType(types: !715)
!715 = !{!248}
!716 = !DISubprogram(name: "quote", scope: !717, file: !717, line: 44, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!717 = !DIFile(filename: "../lib/quote.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!718 = !DISubroutineType(types: !719)
!719 = !{!99, !99}
!720 = !DISubprogram(name: "umask", scope: !721, file: !721, line: 388, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!721 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!722 = !DISubroutineType(types: !723)
!723 = !{!456, !456}
!724 = !DISubprogram(name: "mode_compile", scope: !480, file: !480, line: 25, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!725 = !DISubroutineType(types: !726)
!726 = !{!478, !99}
!727 = !DISubprogram(name: "mode_adjust", scope: !480, file: !480, line: 29, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!728 = !DISubroutineType(types: !729)
!729 = !{!456, !456, !687, !456, !730, !732}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!733 = !DISubprogram(name: "rpl_free", scope: !734, file: !734, line: 756, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!734 = !DIFile(filename: "./lib/stdlib.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!735 = !DISubroutineType(types: !736)
!736 = !{null, !102}
!737 = distinct !DISubprogram(name: "process_dir", scope: !2, file: !2, line: 155, type: !738, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !741)
!738 = !DISubroutineType(types: !739)
!739 = !{!55, !101, !740, !102}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!741 = !{!742, !743, !744, !745, !746}
!742 = !DILocalVariable(name: "dir", arg: 1, scope: !737, file: !2, line: 155, type: !101)
!743 = !DILocalVariable(name: "wd", arg: 2, scope: !737, file: !2, line: 155, type: !740)
!744 = !DILocalVariable(name: "options", arg: 3, scope: !737, file: !2, line: 155, type: !102)
!745 = !DILocalVariable(name: "o", scope: !737, file: !2, line: 157, type: !628)
!746 = !DILocalVariable(name: "ret", scope: !737, file: !2, line: 169, type: !55)
!747 = !DILocation(line: 0, scope: !737)
!748 = !DILocation(line: 160, column: 10, scope: !749)
!749 = distinct !DILexicalBlock(scope: !737, file: !2, line: 160, column: 7)
!750 = !DILocation(line: 160, column: 7, scope: !749)
!751 = !DILocation(line: 160, column: 7, scope: !737)
!752 = !DILocation(line: 162, column: 16, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !2, line: 162, column: 11)
!754 = distinct !DILexicalBlock(scope: !749, file: !2, line: 161, column: 5)
!755 = !DILocation(line: 162, column: 13, scope: !753)
!756 = !DILocation(line: 163, column: 11, scope: !753)
!757 = !DILocation(line: 163, column: 29, scope: !753)
!758 = !DILocation(line: 163, column: 14, scope: !753)
!759 = !DILocation(line: 163, column: 65, scope: !753)
!760 = !DILocation(line: 164, column: 11, scope: !753)
!761 = !DILocation(line: 164, column: 35, scope: !753)
!762 = !DILocation(line: 164, column: 16, scope: !753)
!763 = !DILocation(line: 162, column: 11, scope: !754)
!764 = !DILocation(line: 165, column: 19, scope: !753)
!765 = !DILocation(line: 166, column: 16, scope: !753)
!766 = !DILocation(line: 165, column: 9, scope: !753)
!767 = !DILocation(line: 167, column: 5, scope: !754)
!768 = !DILocation(line: 169, column: 44, scope: !737)
!769 = !DILocation(line: 170, column: 35, scope: !737)
!770 = !DILocation(line: 171, column: 35, scope: !737)
!771 = !DILocation(line: 169, column: 14, scope: !737)
!772 = !DILocation(line: 180, column: 11, scope: !773)
!773 = distinct !DILexicalBlock(scope: !737, file: !2, line: 180, column: 7)
!774 = !DILocation(line: 180, column: 27, scope: !773)
!775 = !DILocation(line: 180, column: 33, scope: !773)
!776 = !DILocation(line: 180, column: 30, scope: !773)
!777 = !DILocation(line: 181, column: 7, scope: !773)
!778 = !DILocation(line: 181, column: 13, scope: !773)
!779 = !DILocation(line: 181, column: 10, scope: !773)
!780 = !DILocation(line: 180, column: 7, scope: !737)
!781 = !DILocation(line: 183, column: 28, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !2, line: 183, column: 11)
!783 = distinct !DILexicalBlock(scope: !773, file: !2, line: 182, column: 5)
!784 = !DILocation(line: 183, column: 50, scope: !782)
!785 = !DILocation(line: 183, column: 13, scope: !782)
!786 = !DILocation(line: 184, column: 11, scope: !782)
!787 = !DILocation(line: 184, column: 35, scope: !782)
!788 = !DILocation(line: 184, column: 16, scope: !782)
!789 = !DILocation(line: 183, column: 11, scope: !783)
!790 = !DILocation(line: 185, column: 19, scope: !782)
!791 = !DILocation(line: 186, column: 16, scope: !782)
!792 = !DILocation(line: 185, column: 9, scope: !782)
!793 = !DILocation(line: 187, column: 5, scope: !783)
!794 = !DILocation(line: 189, column: 3, scope: !737)
!795 = !DISubprogram(name: "savewd_process_files", scope: !60, file: !60, line: 146, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!796 = !DISubroutineType(types: !797)
!797 = !{!55, !55, !441, !798, !102}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!799 = distinct !DISubprogram(name: "defaultcon", scope: !800, file: !800, line: 49, type: !801, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !803)
!800 = !DIFile(filename: "../src/selinux.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!801 = !DISubroutineType(types: !802)
!802 = !{!55, !465, !99, !456}
!803 = !{!804, !805, !806}
!804 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !799, file: !800, line: 49, type: !465)
!805 = !DILocalVariable(name: "path", arg: 2, scope: !799, file: !800, line: 50, type: !99)
!806 = !DILocalVariable(name: "mode", arg: 3, scope: !799, file: !800, line: 50, type: !456)
!807 = !DILocation(line: 0, scope: !799)
!808 = !DILocation(line: 51, column: 3, scope: !799)
!809 = !DILocation(line: 51, column: 9, scope: !799)
!810 = !DILocation(line: 51, column: 20, scope: !799)
!811 = distinct !DISubprogram(name: "ignorable_ctx_err", scope: !800, file: !800, line: 27, type: !812, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!687, !55}
!814 = !{!815}
!815 = !DILocalVariable(name: "err", arg: 1, scope: !811, file: !800, line: 27, type: !55)
!816 = !DILocation(line: 0, scope: !811)
!817 = !DILocation(line: 29, column: 14, scope: !811)
!818 = !DILocation(line: 29, column: 25, scope: !811)
!819 = !DILocation(line: 29, column: 32, scope: !811)
!820 = !DILocation(line: 29, column: 3, scope: !811)
!821 = !DISubprogram(name: "quotearg_style", scope: !85, file: !85, line: 383, type: !822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!822 = !DISubroutineType(types: !823)
!823 = !{!101, !84, !99}
!824 = distinct !DISubprogram(name: "announce_mkdir", scope: !2, file: !2, line: 113, type: !825, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !99, !102}
!827 = !{!828, !829, !830}
!828 = !DILocalVariable(name: "dir", arg: 1, scope: !824, file: !2, line: 113, type: !99)
!829 = !DILocalVariable(name: "options", arg: 2, scope: !824, file: !2, line: 113, type: !102)
!830 = !DILocalVariable(name: "o", scope: !824, file: !2, line: 115, type: !628)
!831 = !DILocation(line: 0, scope: !824)
!832 = !DILocation(line: 116, column: 10, scope: !833)
!833 = distinct !DILexicalBlock(scope: !824, file: !2, line: 116, column: 7)
!834 = !DILocation(line: 116, column: 7, scope: !833)
!835 = !DILocation(line: 116, column: 7, scope: !824)
!836 = !DILocation(line: 117, column: 19, scope: !833)
!837 = !DILocation(line: 117, column: 30, scope: !833)
!838 = !DILocation(line: 117, column: 56, scope: !833)
!839 = !DILocation(line: 117, column: 5, scope: !833)
!840 = !DILocation(line: 118, column: 1, scope: !824)
!841 = !DISubprogram(name: "make_dir_parents", scope: !842, file: !842, line: 24, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!842 = !DIFile(filename: "../lib/mkdir-p.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!843 = !DISubroutineType(types: !844)
!844 = !{!687, !101, !740, !452, !102, !456, !845, !456, !103, !107, !687}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!846 = !DISubprogram(name: "last_component", scope: !847, file: !847, line: 66, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!847 = !DIFile(filename: "../lib/basename-lgpl.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!848 = !DISubroutineType(types: !849)
!849 = !{!101, !99}
!850 = distinct !DISubprogram(name: "restorecon", scope: !800, file: !800, line: 44, type: !851, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{!687, !465, !99, !687}
!853 = !{!854, !855, !856}
!854 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !850, file: !800, line: 44, type: !465)
!855 = !DILocalVariable(name: "path", arg: 2, scope: !850, file: !800, line: 45, type: !99)
!856 = !DILocalVariable(name: "recurse", arg: 3, scope: !850, file: !800, line: 45, type: !687)
!857 = !DILocation(line: 0, scope: !850)
!858 = !DILocation(line: 46, column: 3, scope: !850)
!859 = !DILocation(line: 46, column: 9, scope: !850)
!860 = !DILocation(line: 46, column: 20, scope: !850)
!861 = !DISubprogram(name: "prog_fprintf", scope: !862, file: !862, line: 22, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!862 = !DIFile(filename: "../src/prog-fprintf.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!863 = !DISubroutineType(types: !864)
!864 = !{null, !296, !99, null}
!865 = !DISubprogram(name: "mkdir", scope: !721, file: !721, line: 384, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!866 = !DISubroutineType(types: !867)
!867 = !{!55, !99, !456}
