; ModuleID = 'coreutils-9.3/build/src/env.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct.sigaction = type { %union.__sigaction_u, i32, i32 }
%union.__sigaction_u = type { ptr }
%struct.splitbuf = type { ptr, i32, i64, i32, i8 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Usage: %s [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [60 x i8] c"Set each NAME to VALUE in the environment and run COMMAND.\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [187 x i8] c"  -i, --ignore-environment  start with an empty environment\0A  -0, --null           end each output line with NUL, not newline\0A  -u, --unset=NAME     remove variable from the environment\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [56 x i8] c"  -C, --chdir=DIR      change working directory to DIR\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [143 x i8] c"  -S, --split-string=S  process and split S into separate arguments;\0A                        used to pass multiple arguments on shebang lines\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [74 x i8] c"      --block-signal[=SIG]    block delivery of SIG signal(s) to COMMAND\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [78 x i8] c"      --default-signal[=SIG]  reset handling of SIG signal(s) to the default\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [75 x i8] c"      --ignore-signal[=SIG]   set handling of SIG signal(s) to do nothing\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [74 x i8] c"      --list-signal-handling  list non default signal handling to stderr\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [75 x i8] c"  -v, --debug          print verbose information for each processing step\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [72 x i8] c"\0AA mere - implies -i.  If no COMMAND, print the resulting environment.\0A\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [192 x i8] c"\0ASIG may be a signal name like 'PIPE', or a signal number like '13'.\0AWithout SIG, all known signals are included.  Multiple signals can be\0Acomma-separated.  An empty SIG argument is a no-op.\0A\00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [4 x i8] c"env\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !76
@shortopts = internal constant [17 x i8] c"+C:iS:u:v0 \09\0A\0B\0C\0D\00", align 16, !dbg !81
@longopts = internal constant [13 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.55, i32 0, ptr null, i32 105 }, %struct.rpl_option { ptr @.str.56, i32 0, ptr null, i32 48 }, %struct.rpl_option { ptr @.str.57, i32 1, ptr null, i32 117 }, %struct.rpl_option { ptr @.str.58, i32 1, ptr null, i32 67 }, %struct.rpl_option { ptr @.str.59, i32 2, ptr null, i32 128 }, %struct.rpl_option { ptr @.str.60, i32 2, ptr null, i32 129 }, %struct.rpl_option { ptr @.str.61, i32 2, ptr null, i32 130 }, %struct.rpl_option { ptr @.str.62, i32 0, ptr null, i32 131 }, %struct.rpl_option { ptr @.str.63, i32 0, ptr null, i32 118 }, %struct.rpl_option { ptr @.str.64, i32 1, ptr null, i32 83 }, %struct.rpl_option { ptr @.str.65, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.66, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !350
@rpl_optarg = external global ptr, align 8
@dev_debug = internal global i8 0, align 1, !dbg !246
@report_signal_handling = internal global i8 0, align 1, !dbg !250
@rpl_optind = external global i32, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"invalid option -- '%c'\00", align 1, !dbg !139
@.str.18 = private unnamed_addr constant [43 x i8] c"use -[v]S to pass options in shebang lines\00", align 1, !dbg !144
@.str.19 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !149
@Version = external global ptr, align 8
@.str.20 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1, !dbg !154
@.str.21 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !159
@.str.22 = private unnamed_addr constant [13 x i8] c"Assaf Gordon\00", align 1, !dbg !164
@.str.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !169
@.str.24 = private unnamed_addr constant [18 x i8] c"cleaning environ\0A\00", align 1, !dbg !174
@main.dummy_environ = internal global [1 x ptr] zeroinitializer, align 8, !dbg !179
@.str.25 = private unnamed_addr constant [14 x i8] c"setenv:   %s\0A\00", align 1, !dbg !206
@.str.26 = private unnamed_addr constant [14 x i8] c"cannot set %s\00", align 1, !dbg !208
@.str.27 = private unnamed_addr constant [40 x i8] c"cannot specify --null (-0) with command\00", align 1, !dbg !210
@.str.28 = private unnamed_addr constant [39 x i8] c"must specify command with --chdir (-C)\00", align 1, !dbg !215
@.str.29 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1, !dbg !217
@sig_mask_changed = internal global i8 0, align 1, !dbg !248
@.str.30 = private unnamed_addr constant [14 x i8] c"chdir:    %s\0A\00", align 1, !dbg !222
@.str.31 = private unnamed_addr constant [30 x i8] c"cannot change directory to %s\00", align 1, !dbg !224
@.str.32 = private unnamed_addr constant [15 x i8] c"executing: %s\0A\00", align 1, !dbg !229
@.str.33 = private unnamed_addr constant [16 x i8] c"   arg[%d]= %s\0A\00", align 1, !dbg !234
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !236
@.str.35 = private unnamed_addr constant [7 x i8] c" \09\0A\0B\0C\0D\00", align 1, !dbg !241
@.str.36 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !252
@.str.37 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1, !dbg !254
@.str.38 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !259
@.str.39 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !261
@.str.40 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !263
@.str.41 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !268
@.str.42 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !273
@.str.43 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !275
@.str.44 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !277
@.str.45 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !279
@.str.46 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !281
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.38, ptr @.str.39 }, %struct.infomap { ptr @.str.40, ptr @.str.41 }, %struct.infomap { ptr @.str.42, ptr @.str.43 }, %struct.infomap { ptr @.str.44, ptr @.str.43 }, %struct.infomap { ptr @.str.45, ptr @.str.43 }, %struct.infomap { ptr @.str.46, ptr @.str.43 }, %struct.infomap zeroinitializer], align 16
@.str.47 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !283
@.str.48 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !285
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !287
@.str.50 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !289
@.str.51 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !294
@.str.52 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !296
@.str.53 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !301
@.str.54 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !306
@exit_failure = external global i32, align 4
@signals = internal global ptr null, align 8, !dbg !311
@.str.55 = private unnamed_addr constant [19 x i8] c"ignore-environment\00", align 1, !dbg !314
@.str.56 = private unnamed_addr constant [5 x i8] c"null\00", align 1, !dbg !319
@.str.57 = private unnamed_addr constant [6 x i8] c"unset\00", align 1, !dbg !321
@.str.58 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1, !dbg !326
@.str.59 = private unnamed_addr constant [15 x i8] c"default-signal\00", align 1, !dbg !328
@.str.60 = private unnamed_addr constant [14 x i8] c"ignore-signal\00", align 1, !dbg !330
@.str.61 = private unnamed_addr constant [13 x i8] c"block-signal\00", align 1, !dbg !332
@.str.62 = private unnamed_addr constant [21 x i8] c"list-signal-handling\00", align 1, !dbg !334
@.str.63 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !339
@.str.64 = private unnamed_addr constant [13 x i8] c"split-string\00", align 1, !dbg !341
@.str.65 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !343
@.str.66 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !345
@usvars_used = internal global i64 0, align 8, !dbg !362
@usvars_alloc = internal global i64 0, align 8, !dbg !368
@usvars = internal global ptr null, align 8, !dbg !374
@.str.67 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !377
@.str.68 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1, !dbg !379
@block_signals = internal global i32 0, align 4, !dbg !381
@unblock_signals = internal global i32 0, align 4, !dbg !388
@.str.69 = private unnamed_addr constant [15 x i8] c"split -S:  %s\0A\00", align 1, !dbg !390
@.str.70 = private unnamed_addr constant [14 x i8] c" into:    %s\0A\00", align 1, !dbg !392
@.str.71 = private unnamed_addr constant [14 x i8] c"     &    %s\0A\00", align 1, !dbg !394
@.str.72 = private unnamed_addr constant [48 x i8] c"'\\c' must not appear in double-quoted -S string\00", align 1, !dbg !396
@.str.73 = private unnamed_addr constant [41 x i8] c"invalid backslash at end of string in -S\00", align 1, !dbg !398
@.str.74 = private unnamed_addr constant [29 x i8] c"invalid sequence '\\%c' in -S\00", align 1, !dbg !403
@.str.75 = private unnamed_addr constant [53 x i8] c"only ${VARNAME} expansion is supported, error at: %s\00", align 1, !dbg !408
@.str.76 = private unnamed_addr constant [25 x i8] c"expanding ${%s} into %s\0A\00", align 1, !dbg !413
@.str.77 = private unnamed_addr constant [34 x i8] c"replacing ${%s} with null string\0A\00", align 1, !dbg !418
@.str.78 = private unnamed_addr constant [34 x i8] c"no terminating quote in -S string\00", align 1, !dbg !423
@vnlen = internal global i64 0, align 8, !dbg !425
@varname = internal global ptr null, align 8, !dbg !427
@.str.79 = private unnamed_addr constant [14 x i8] c"unset:    %s\0A\00", align 1, !dbg !429
@.str.80 = private unnamed_addr constant [16 x i8] c"cannot unset %s\00", align 1, !dbg !431
@.str.81 = private unnamed_addr constant [42 x i8] c"failed to get signal action for signal %d\00", align 1, !dbg !433
@.str.82 = private unnamed_addr constant [42 x i8] c"failed to set signal action for signal %d\00", align 1, !dbg !438
@.str.83 = private unnamed_addr constant [30 x i8] c"Reset signal %s (%d) to %s%s\0A\00", align 1, !dbg !440
@.str.84 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1, !dbg !442
@.str.85 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1, !dbg !444
@.str.86 = private unnamed_addr constant [19 x i8] c" (failure ignored)\00", align 1, !dbg !446
@.str.87 = private unnamed_addr constant [34 x i8] c"failed to get signal process mask\00", align 1, !dbg !448
@.str.88 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1, !dbg !450
@.str.89 = private unnamed_addr constant [8 x i8] c"UNBLOCK\00", align 1, !dbg !452
@.str.90 = private unnamed_addr constant [31 x i8] c"signal %s (%d) mask set to %s\0A\00", align 1, !dbg !454
@.str.91 = private unnamed_addr constant [34 x i8] c"failed to set signal process mask\00", align 1, !dbg !459
@.str.92 = private unnamed_addr constant [21 x i8] c"%-10s (%2d): %s%s%s\0A\00", align 1, !dbg !461

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !471 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !473, metadata !DIExpression()), !dbg !474
  %2 = icmp ne i32 %0, 0, !dbg !475
  br i1 %2, label %3, label %9, !dbg !477

3:                                                ; preds = %1
  br label %4, !dbg !478

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !479, !tbaa !481
  %6 = load ptr, ptr @program_name, align 8, !dbg !479, !tbaa !481
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !479
  br label %8, !dbg !479

8:                                                ; preds = %4
  br label %38, !dbg !479

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !485, !tbaa !481
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !487
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !488, !tbaa !481
  %13 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %12), !dbg !489
  call void @emit_mandatory_arg_note(), !dbg !490
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !491, !tbaa !481
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %14), !dbg !492
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !493, !tbaa !481
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %16), !dbg !494
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !495, !tbaa !481
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %18), !dbg !496
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !497, !tbaa !481
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %20), !dbg !498
  %22 = load ptr, ptr @__stdoutp, align 8, !dbg !499, !tbaa !481
  %23 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %22), !dbg !500
  %24 = load ptr, ptr @__stdoutp, align 8, !dbg !501, !tbaa !481
  %25 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %24), !dbg !502
  %26 = load ptr, ptr @__stdoutp, align 8, !dbg !503, !tbaa !481
  %27 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %26), !dbg !504
  %28 = load ptr, ptr @__stdoutp, align 8, !dbg !505, !tbaa !481
  %29 = call i32 @"\01_fputs"(ptr noundef @.str.10, ptr noundef %28), !dbg !506
  %30 = load ptr, ptr @__stdoutp, align 8, !dbg !507, !tbaa !481
  %31 = call i32 @"\01_fputs"(ptr noundef @.str.11, ptr noundef %30), !dbg !508
  %32 = load ptr, ptr @__stdoutp, align 8, !dbg !509, !tbaa !481
  %33 = call i32 @"\01_fputs"(ptr noundef @.str.12, ptr noundef %32), !dbg !510
  %34 = load ptr, ptr @__stdoutp, align 8, !dbg !511, !tbaa !481
  %35 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %34), !dbg !512
  %36 = load ptr, ptr @__stdoutp, align 8, !dbg !513, !tbaa !481
  %37 = call i32 @"\01_fputs"(ptr noundef @.str.14, ptr noundef %36), !dbg !514
  call void @emit_exec_status(ptr noundef @.str.15), !dbg !515
  call void @emit_ancillary_info(ptr noundef @.str.15), !dbg !516
  br label %38

38:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #12, !dbg !517
  unreachable, !dbg !517
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !518 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !577 i32 @printf(ptr noundef, ...) #2

declare !dbg !580 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !583 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !586, !tbaa !481
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.36, ptr noundef %1), !dbg !587
  ret void, !dbg !588
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_exec_status(ptr noundef %0) #3 !dbg !589 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !593, metadata !DIExpression()), !dbg !594
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, ptr noundef %0), !dbg !595
  ret void, !dbg !596
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !597 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !599, metadata !DIExpression()), !dbg !612
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #13, !dbg !613
  call void @llvm.dbg.declare(metadata ptr %2, metadata !600, metadata !DIExpression()), !dbg !614
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !614
  call void @llvm.dbg.value(metadata ptr %0, metadata !607, metadata !DIExpression()), !dbg !612
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !615
  call void @llvm.dbg.value(metadata ptr %3, metadata !608, metadata !DIExpression()), !dbg !612
  br label %4, !dbg !616

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !612
  call void @llvm.dbg.value(metadata ptr %.0, metadata !608, metadata !DIExpression()), !dbg !612
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !617
  %6 = load ptr, ptr %5, align 8, !dbg !617, !tbaa !618
  %7 = icmp ne ptr %6, null, !dbg !620
  br i1 %7, label %8, label %14, !dbg !621

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !622
  %10 = load ptr, ptr %9, align 8, !dbg !622, !tbaa !618
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !622
  %12 = icmp eq i32 %11, 0, !dbg !622
  %13 = xor i1 %12, true, !dbg !623
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !612
  br i1 %15, label %16, label %18, !dbg !616

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !624
  call void @llvm.dbg.value(metadata ptr %17, metadata !608, metadata !DIExpression()), !dbg !612
  br label %4, !dbg !616, !llvm.loop !625

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !628
  %20 = load ptr, ptr %19, align 8, !dbg !628, !tbaa !630
  %21 = icmp ne ptr %20, null, !dbg !631
  br i1 %21, label %22, label %25, !dbg !632

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !633
  %24 = load ptr, ptr %23, align 8, !dbg !633, !tbaa !630
  call void @llvm.dbg.value(metadata ptr %24, metadata !607, metadata !DIExpression()), !dbg !612
  br label %25, !dbg !634

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !612
  call void @llvm.dbg.value(metadata ptr %.01, metadata !607, metadata !DIExpression()), !dbg !612
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.47, ptr noundef @.str.19, ptr noundef @.str.48), !dbg !635
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !636
  call void @llvm.dbg.value(metadata ptr %27, metadata !610, metadata !DIExpression()), !dbg !612
  %28 = icmp ne ptr %27, null, !dbg !637
  br i1 %28, label %29, label %35, !dbg !639

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.49, i64 noundef 3), !dbg !640
  %31 = icmp ne i32 %30, 0, !dbg !640
  br i1 %31, label %32, label %35, !dbg !641

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !642, !tbaa !481
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.50, ptr noundef %33), !dbg !644
  br label %35, !dbg !645

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.38), !dbg !646
  %37 = icmp eq i32 %36, 0, !dbg !646
  br i1 %37, label %38, label %39, !dbg !646

38:                                               ; preds = %35
  br label %40, !dbg !646

39:                                               ; preds = %35
  br label %40, !dbg !646

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.51, %38 ], [ %0, %39 ], !dbg !646
  call void @llvm.dbg.value(metadata ptr %41, metadata !611, metadata !DIExpression()), !dbg !612
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.52, ptr noundef @.str.48, ptr noundef %41), !dbg !647
  %43 = icmp eq ptr %.01, %0, !dbg !648
  %44 = zext i1 %43 to i64, !dbg !649
  %45 = select i1 %43, ptr @.str.54, ptr @.str.16, !dbg !649
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.53, ptr noundef %.01, ptr noundef %45), !dbg !650
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #13, !dbg !651
  ret void, !dbg !651
}

; Function Attrs: noreturn
declare !dbg !652 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !654 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !658 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !662 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !181 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4, !tbaa !665
  call void @llvm.dbg.declare(metadata ptr %3, metadata !186, metadata !DIExpression()), !dbg !667
  store ptr %1, ptr %4, align 8, !tbaa !481
  call void @llvm.dbg.declare(metadata ptr %4, metadata !187, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i8 0, metadata !189, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8 0, metadata !191, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr null, metadata !192, metadata !DIExpression()), !dbg !669
  %5 = load ptr, ptr %4, align 8, !dbg !670, !tbaa !481
  %6 = getelementptr inbounds ptr, ptr %5, i64 0, !dbg !670
  %7 = load ptr, ptr %6, align 8, !dbg !670, !tbaa !481
  call void @set_program_name(ptr noundef %7), !dbg !671
  %8 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.16), !dbg !672
  call void @initialize_exit_failure(i32 noundef 125), !dbg !673
  %9 = call i32 @atexit(ptr noundef @close_stdout), !dbg !674
  call void @initialize_signals(), !dbg !675
  br label %10, !dbg !676

10:                                               ; preds = %39, %2
  %.05 = phi ptr [ null, %2 ], [ %.16, %39 ], !dbg !677
  %.03 = phi i8 [ 0, %2 ], [ %.14, %39 ], !dbg !678
  %.02 = phi i8 [ 0, %2 ], [ %.1, %39 ], !dbg !679
  call void @llvm.dbg.value(metadata i8 %.02, metadata !189, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8 %.03, metadata !191, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr %.05, metadata !192, metadata !DIExpression()), !dbg !669
  %11 = load i32, ptr %3, align 4, !dbg !680, !tbaa !665
  %12 = load ptr, ptr %4, align 8, !dbg !681, !tbaa !481
  %13 = call i32 @rpl_getopt_long(i32 noundef %11, ptr noundef %12, ptr noundef @shortopts, ptr noundef @longopts, ptr noundef null), !dbg !682
  call void @llvm.dbg.value(metadata i32 %13, metadata !188, metadata !DIExpression()), !dbg !669
  %14 = icmp ne i32 %13, -1, !dbg !683
  br i1 %14, label %15, label %40, !dbg !676

15:                                               ; preds = %10
  switch i32 %13, label %38 [
    i32 105, label %16
    i32 117, label %17
    i32 118, label %19
    i32 48, label %20
    i32 128, label %21
    i32 129, label %24
    i32 130, label %26
    i32 131, label %28
    i32 67, label %29
    i32 83, label %31
    i32 32, label %33
    i32 9, label %33
    i32 10, label %33
    i32 11, label %33
    i32 12, label %33
    i32 13, label %33
    i32 -130, label %34
    i32 -131, label %35
  ], !dbg !684

16:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8 1, metadata !189, metadata !DIExpression()), !dbg !669
  br label %39, !dbg !686

17:                                               ; preds = %15
  %18 = load ptr, ptr @rpl_optarg, align 8, !dbg !688, !tbaa !481
  call void @append_unset_var(ptr noundef %18), !dbg !689
  br label %39, !dbg !690

19:                                               ; preds = %15
  store i8 1, ptr @dev_debug, align 1, !dbg !691, !tbaa !692
  br label %39, !dbg !694

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8 1, metadata !191, metadata !DIExpression()), !dbg !669
  br label %39, !dbg !695

21:                                               ; preds = %15
  %22 = load ptr, ptr @rpl_optarg, align 8, !dbg !696, !tbaa !481
  call void @parse_signal_action_params(ptr noundef %22, i1 noundef zeroext true), !dbg !697
  %23 = load ptr, ptr @rpl_optarg, align 8, !dbg !698, !tbaa !481
  call void @parse_block_signal_params(ptr noundef %23, i1 noundef zeroext false), !dbg !699
  br label %39, !dbg !700

24:                                               ; preds = %15
  %25 = load ptr, ptr @rpl_optarg, align 8, !dbg !701, !tbaa !481
  call void @parse_signal_action_params(ptr noundef %25, i1 noundef zeroext false), !dbg !702
  br label %39, !dbg !703

26:                                               ; preds = %15
  %27 = load ptr, ptr @rpl_optarg, align 8, !dbg !704, !tbaa !481
  call void @parse_block_signal_params(ptr noundef %27, i1 noundef zeroext true), !dbg !705
  br label %39, !dbg !706

28:                                               ; preds = %15
  store i8 1, ptr @report_signal_handling, align 1, !dbg !707, !tbaa !692
  br label %39, !dbg !708

29:                                               ; preds = %15
  %30 = load ptr, ptr @rpl_optarg, align 8, !dbg !709, !tbaa !481
  call void @llvm.dbg.value(metadata ptr %30, metadata !192, metadata !DIExpression()), !dbg !669
  br label %39, !dbg !710

31:                                               ; preds = %15
  %32 = load ptr, ptr @rpl_optarg, align 8, !dbg !711, !tbaa !481
  call void @parse_split_string(ptr noundef %32, ptr noundef @rpl_optind, ptr noundef %3, ptr noundef %4), !dbg !712
  br label %39, !dbg !713

33:                                               ; preds = %15, %15, %15, %15, %15, %15
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.17, i32 noundef %13), !dbg !714
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.18), !dbg !715
  call void @usage(i32 noundef 125) #12, !dbg !716
  unreachable, !dbg !716

34:                                               ; preds = %15
  call void @usage(i32 noundef 0) #12, !dbg !717
  unreachable, !dbg !717

35:                                               ; preds = %15
  %36 = load ptr, ptr @__stdoutp, align 8, !dbg !718, !tbaa !481
  %37 = load ptr, ptr @Version, align 8, !dbg !718, !tbaa !481
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef @.str.15, ptr noundef @.str.19, ptr noundef %37, ptr noundef @.str.20, ptr noundef @.str.21, ptr noundef @.str.22, ptr noundef null), !dbg !718
  call void @exit(i32 noundef 0) #12, !dbg !718
  unreachable, !dbg !718

38:                                               ; preds = %15
  call void @usage(i32 noundef 125) #12, !dbg !719
  unreachable, !dbg !719

39:                                               ; preds = %31, %29, %28, %26, %24, %21, %20, %19, %17, %16
  %.16 = phi ptr [ %.05, %31 ], [ %30, %29 ], [ %.05, %28 ], [ %.05, %26 ], [ %.05, %24 ], [ %.05, %21 ], [ %.05, %20 ], [ %.05, %19 ], [ %.05, %17 ], [ %.05, %16 ], !dbg !669
  %.14 = phi i8 [ %.03, %31 ], [ %.03, %29 ], [ %.03, %28 ], [ %.03, %26 ], [ %.03, %24 ], [ %.03, %21 ], [ 1, %20 ], [ %.03, %19 ], [ %.03, %17 ], [ %.03, %16 ], !dbg !669
  %.1 = phi i8 [ %.02, %31 ], [ %.02, %29 ], [ %.02, %28 ], [ %.02, %26 ], [ %.02, %24 ], [ %.02, %21 ], [ %.02, %20 ], [ %.02, %19 ], [ %.02, %17 ], [ 1, %16 ], !dbg !669
  call void @llvm.dbg.value(metadata i8 %.1, metadata !189, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8 %.14, metadata !191, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr %.16, metadata !192, metadata !DIExpression()), !dbg !669
  br label %10, !dbg !676, !llvm.loop !720

40:                                               ; preds = %10
  %41 = load i32, ptr @rpl_optind, align 4, !dbg !722, !tbaa !665
  %42 = load i32, ptr %3, align 4, !dbg !724, !tbaa !665
  %43 = icmp slt i32 %41, %42, !dbg !725
  br i1 %43, label %44, label %55, !dbg !726

44:                                               ; preds = %40
  %45 = load ptr, ptr %4, align 8, !dbg !727, !tbaa !481
  %46 = load i32, ptr @rpl_optind, align 4, !dbg !727, !tbaa !665
  %47 = sext i32 %46 to i64, !dbg !727
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47, !dbg !727
  %49 = load ptr, ptr %48, align 8, !dbg !727, !tbaa !481
  %50 = call i32 @strcmp(ptr noundef %49, ptr noundef @.str.23), !dbg !727
  %51 = icmp eq i32 %50, 0, !dbg !727
  br i1 %51, label %52, label %55, !dbg !728

52:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8 1, metadata !189, metadata !DIExpression()), !dbg !669
  %53 = load i32, ptr @rpl_optind, align 4, !dbg !729, !tbaa !665
  %54 = add nsw i32 %53, 1, !dbg !729
  store i32 %54, ptr @rpl_optind, align 4, !dbg !729, !tbaa !665
  br label %55, !dbg !731

55:                                               ; preds = %52, %44, %40
  %.2 = phi i8 [ 1, %52 ], [ %.02, %44 ], [ %.02, %40 ], !dbg !669
  call void @llvm.dbg.value(metadata i8 %.2, metadata !189, metadata !DIExpression()), !dbg !669
  %56 = trunc i8 %.2 to i1, !dbg !732
  br i1 %56, label %57, label %68, !dbg !734

57:                                               ; preds = %55
  br label %58, !dbg !735

58:                                               ; preds = %57
  %59 = load i8, ptr @dev_debug, align 1, !dbg !737, !tbaa !692, !range !740, !noundef !576
  %60 = trunc i8 %59 to i1, !dbg !737
  br i1 %60, label %61, label %64, !dbg !741

61:                                               ; preds = %58
  %62 = load ptr, ptr @__stderrp, align 8, !dbg !737, !tbaa !481
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef @.str.24), !dbg !737
  br label %64, !dbg !737

64:                                               ; preds = %61, %58
  br label %65, !dbg !741

65:                                               ; preds = %64
  br label %66, !dbg !741

66:                                               ; preds = %65
  %67 = call ptr @_NSGetEnviron(), !dbg !742
  store ptr @main.dummy_environ, ptr %67, align 8, !dbg !743, !tbaa !481
  br label %69, !dbg !744

68:                                               ; preds = %55
  call void @unset_envvars(), !dbg !745
  br label %69

69:                                               ; preds = %68, %66
  br label %70, !dbg !746

70:                                               ; preds = %115, %69
  %.07 = phi ptr [ undef, %69 ], [ %.18, %115 ]
  call void @llvm.dbg.value(metadata ptr %.07, metadata !193, metadata !DIExpression()), !dbg !669
  %71 = load i32, ptr @rpl_optind, align 4, !dbg !747, !tbaa !665
  %72 = load i32, ptr %3, align 4, !dbg !748, !tbaa !665
  %73 = icmp slt i32 %71, %72, !dbg !749
  br i1 %73, label %74, label %82, !dbg !750

74:                                               ; preds = %70
  %75 = load ptr, ptr %4, align 8, !dbg !751, !tbaa !481
  %76 = load i32, ptr @rpl_optind, align 4, !dbg !752, !tbaa !665
  %77 = sext i32 %76 to i64, !dbg !751
  %78 = getelementptr inbounds ptr, ptr %75, i64 %77, !dbg !751
  %79 = load ptr, ptr %78, align 8, !dbg !751, !tbaa !481
  %80 = call ptr @strchr(ptr noundef %79, i32 noundef 61), !dbg !753
  call void @llvm.dbg.value(metadata ptr %80, metadata !193, metadata !DIExpression()), !dbg !669
  %81 = icmp ne ptr %80, null, !dbg !750
  br label %82

82:                                               ; preds = %74, %70
  %.18 = phi ptr [ %80, %74 ], [ %.07, %70 ]
  %83 = phi i1 [ false, %70 ], [ %81, %74 ], !dbg !669
  call void @llvm.dbg.value(metadata ptr %.18, metadata !193, metadata !DIExpression()), !dbg !669
  br i1 %83, label %84, label %118, !dbg !746

84:                                               ; preds = %82
  br label %85, !dbg !754

85:                                               ; preds = %84
  %86 = load i8, ptr @dev_debug, align 1, !dbg !756, !tbaa !692, !range !740, !noundef !576
  %87 = trunc i8 %86 to i1, !dbg !756
  br i1 %87, label %88, label %96, !dbg !759

88:                                               ; preds = %85
  %89 = load ptr, ptr @__stderrp, align 8, !dbg !756, !tbaa !481
  %90 = load ptr, ptr %4, align 8, !dbg !756, !tbaa !481
  %91 = load i32, ptr @rpl_optind, align 4, !dbg !756, !tbaa !665
  %92 = sext i32 %91 to i64, !dbg !756
  %93 = getelementptr inbounds ptr, ptr %90, i64 %92, !dbg !756
  %94 = load ptr, ptr %93, align 8, !dbg !756, !tbaa !481
  %95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef @.str.25, ptr noundef %94), !dbg !756
  br label %96, !dbg !756

96:                                               ; preds = %88, %85
  br label %97, !dbg !759

97:                                               ; preds = %96
  br label %98, !dbg !759

98:                                               ; preds = %97
  %99 = load ptr, ptr %4, align 8, !dbg !760, !tbaa !481
  %100 = load i32, ptr @rpl_optind, align 4, !dbg !762, !tbaa !665
  %101 = sext i32 %100 to i64, !dbg !760
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101, !dbg !760
  %103 = load ptr, ptr %102, align 8, !dbg !760, !tbaa !481
  %104 = call i32 @rpl_putenv(ptr noundef %103), !dbg !763
  %105 = icmp ne i32 %104, 0, !dbg !763
  br i1 %105, label %106, label %115, !dbg !764

106:                                              ; preds = %98
  store i8 0, ptr %.18, align 1, !dbg !765, !tbaa !767
  %107 = call ptr @__error(), !dbg !768
  %108 = load i32, ptr %107, align 4, !dbg !768, !tbaa !665
  %109 = load ptr, ptr %4, align 8, !dbg !768, !tbaa !481
  %110 = load i32, ptr @rpl_optind, align 4, !dbg !768, !tbaa !665
  %111 = sext i32 %110 to i64, !dbg !768
  %112 = getelementptr inbounds ptr, ptr %109, i64 %111, !dbg !768
  %113 = load ptr, ptr %112, align 8, !dbg !768, !tbaa !481
  %114 = call ptr @quote(ptr noundef %113), !dbg !768
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %108, ptr noundef @.str.26, ptr noundef %114), !dbg !768
  unreachable, !dbg !768

115:                                              ; preds = %98
  %116 = load i32, ptr @rpl_optind, align 4, !dbg !769, !tbaa !665
  %117 = add nsw i32 %116, 1, !dbg !769
  store i32 %117, ptr @rpl_optind, align 4, !dbg !769, !tbaa !665
  br label %70, !dbg !746, !llvm.loop !770

118:                                              ; preds = %82
  %119 = load i32, ptr @rpl_optind, align 4, !dbg !772, !tbaa !665
  %120 = load i32, ptr %3, align 4, !dbg !773, !tbaa !665
  %121 = icmp slt i32 %119, %120, !dbg !774
  %122 = zext i1 %121 to i8, !dbg !775
  call void @llvm.dbg.value(metadata i8 %122, metadata !194, metadata !DIExpression()), !dbg !669
  %123 = trunc i8 %.03 to i1, !dbg !776
  br i1 %123, label %124, label %127, !dbg !778

124:                                              ; preds = %118
  %125 = trunc i8 %122 to i1, !dbg !779
  br i1 %125, label %126, label %127, !dbg !780

126:                                              ; preds = %124
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.27), !dbg !781
  call void @usage(i32 noundef 125) #12, !dbg !783
  unreachable, !dbg !783

127:                                              ; preds = %124, %118
  %128 = icmp ne ptr %.05, null, !dbg !784
  br i1 %128, label %129, label %132, !dbg !786

129:                                              ; preds = %127
  %130 = trunc i8 %122 to i1, !dbg !787
  br i1 %130, label %132, label %131, !dbg !788

131:                                              ; preds = %129
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.28), !dbg !789
  call void @usage(i32 noundef 125) #12, !dbg !791
  unreachable, !dbg !791

132:                                              ; preds = %129, %127
  %133 = trunc i8 %122 to i1, !dbg !792
  br i1 %133, label %148, label %134, !dbg !793

134:                                              ; preds = %132
  %135 = call ptr @_NSGetEnviron(), !dbg !794
  %136 = load ptr, ptr %135, align 8, !dbg !794, !tbaa !481
  call void @llvm.dbg.value(metadata ptr %136, metadata !195, metadata !DIExpression()), !dbg !795
  br label %137, !dbg !796

137:                                              ; preds = %140, %134
  %.09 = phi ptr [ %136, %134 ], [ %141, %140 ], !dbg !795
  call void @llvm.dbg.value(metadata ptr %.09, metadata !195, metadata !DIExpression()), !dbg !795
  %138 = load ptr, ptr %.09, align 8, !dbg !797, !tbaa !481
  %139 = icmp ne ptr %138, null, !dbg !796
  br i1 %139, label %140, label %147, !dbg !796

140:                                              ; preds = %137
  %141 = getelementptr inbounds ptr, ptr %.09, i32 1, !dbg !798
  call void @llvm.dbg.value(metadata ptr %141, metadata !195, metadata !DIExpression()), !dbg !795
  %142 = load ptr, ptr %.09, align 8, !dbg !799, !tbaa !481
  %143 = trunc i8 %.03 to i1, !dbg !800
  %144 = zext i1 %143 to i64, !dbg !800
  %145 = select i1 %143, i32 0, i32 10, !dbg !800
  %146 = call i32 (ptr, ...) @printf(ptr noundef @.str.29, ptr noundef %142, i32 noundef %145), !dbg !801
  br label %137, !dbg !796, !llvm.loop !802

147:                                              ; preds = %137
  br label %254

148:                                              ; preds = %132
  call void @reset_signal_handlers(), !dbg !804
  %149 = load i8, ptr @sig_mask_changed, align 1, !dbg !805, !tbaa !692, !range !740, !noundef !576
  %150 = trunc i8 %149 to i1, !dbg !805
  br i1 %150, label %151, label %152, !dbg !807

151:                                              ; preds = %148
  call void @set_signal_proc_mask(), !dbg !808
  br label %152, !dbg !808

152:                                              ; preds = %151, %148
  %153 = load i8, ptr @report_signal_handling, align 1, !dbg !809, !tbaa !692, !range !740, !noundef !576
  %154 = trunc i8 %153 to i1, !dbg !809
  br i1 %154, label %155, label %156, !dbg !811

155:                                              ; preds = %152
  call void @list_signal_handling(), !dbg !812
  br label %156, !dbg !812

156:                                              ; preds = %155, %152
  %157 = icmp ne ptr %.05, null, !dbg !813
  br i1 %157, label %158, label %176, !dbg !815

158:                                              ; preds = %156
  br label %159, !dbg !816

159:                                              ; preds = %158
  %160 = load i8, ptr @dev_debug, align 1, !dbg !818, !tbaa !692, !range !740, !noundef !576
  %161 = trunc i8 %160 to i1, !dbg !818
  br i1 %161, label %162, label %166, !dbg !821

162:                                              ; preds = %159
  %163 = load ptr, ptr @__stderrp, align 8, !dbg !818, !tbaa !481
  %164 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %.05), !dbg !818
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.30, ptr noundef %164), !dbg !818
  br label %166, !dbg !818

166:                                              ; preds = %162, %159
  br label %167, !dbg !821

167:                                              ; preds = %166
  br label %168, !dbg !821

168:                                              ; preds = %167
  %169 = call i32 @chdir(ptr noundef %.05), !dbg !822
  %170 = icmp ne i32 %169, 0, !dbg !824
  br i1 %170, label %171, label %175, !dbg !825

171:                                              ; preds = %168
  %172 = call ptr @__error(), !dbg !826
  %173 = load i32, ptr %172, align 4, !dbg !826, !tbaa !665
  %174 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %.05), !dbg !826
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %173, ptr noundef @.str.31, ptr noundef %174), !dbg !826
  unreachable, !dbg !826

175:                                              ; preds = %168
  br label %176, !dbg !827

176:                                              ; preds = %175, %156
  %177 = load i8, ptr @dev_debug, align 1, !dbg !828, !tbaa !692, !range !740, !noundef !576
  %178 = trunc i8 %177 to i1, !dbg !828
  br i1 %178, label %179, label %219, !dbg !829

179:                                              ; preds = %176
  br label %180, !dbg !830

180:                                              ; preds = %179
  %181 = load i8, ptr @dev_debug, align 1, !dbg !831, !tbaa !692, !range !740, !noundef !576
  %182 = trunc i8 %181 to i1, !dbg !831
  br i1 %182, label %183, label %191, !dbg !834

183:                                              ; preds = %180
  %184 = load ptr, ptr @__stderrp, align 8, !dbg !831, !tbaa !481
  %185 = load ptr, ptr %4, align 8, !dbg !831, !tbaa !481
  %186 = load i32, ptr @rpl_optind, align 4, !dbg !831, !tbaa !665
  %187 = sext i32 %186 to i64, !dbg !831
  %188 = getelementptr inbounds ptr, ptr %185, i64 %187, !dbg !831
  %189 = load ptr, ptr %188, align 8, !dbg !831, !tbaa !481
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef @.str.32, ptr noundef %189), !dbg !831
  br label %191, !dbg !831

191:                                              ; preds = %183, %180
  br label %192, !dbg !834

192:                                              ; preds = %191
  br label %193, !dbg !834

193:                                              ; preds = %192
  %194 = load i32, ptr @rpl_optind, align 4, !dbg !835, !tbaa !665
  call void @llvm.dbg.value(metadata i32 %194, metadata !200, metadata !DIExpression()), !dbg !836
  br label %195, !dbg !837

195:                                              ; preds = %216, %193
  %.01 = phi i32 [ %194, %193 ], [ %217, %216 ], !dbg !838
  call void @llvm.dbg.value(metadata i32 %.01, metadata !200, metadata !DIExpression()), !dbg !836
  %196 = load i32, ptr %3, align 4, !dbg !839, !tbaa !665
  %197 = icmp slt i32 %.01, %196, !dbg !841
  br i1 %197, label %199, label %198, !dbg !842

198:                                              ; preds = %195
  br label %218

199:                                              ; preds = %195
  br label %200, !dbg !843

200:                                              ; preds = %199
  %201 = load i8, ptr @dev_debug, align 1, !dbg !844, !tbaa !692, !range !740, !noundef !576
  %202 = trunc i8 %201 to i1, !dbg !844
  br i1 %202, label %203, label %213, !dbg !847

203:                                              ; preds = %200
  %204 = load ptr, ptr @__stderrp, align 8, !dbg !844, !tbaa !481
  %205 = load i32, ptr @rpl_optind, align 4, !dbg !844, !tbaa !665
  %206 = sub nsw i32 %.01, %205, !dbg !844
  %207 = load ptr, ptr %4, align 8, !dbg !844, !tbaa !481
  %208 = sext i32 %.01 to i64, !dbg !844
  %209 = getelementptr inbounds ptr, ptr %207, i64 %208, !dbg !844
  %210 = load ptr, ptr %209, align 8, !dbg !844, !tbaa !481
  %211 = call ptr @quote(ptr noundef %210), !dbg !844
  %212 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef @.str.33, i32 noundef %206, ptr noundef %211), !dbg !844
  br label %213, !dbg !844

213:                                              ; preds = %203, %200
  br label %214, !dbg !847

214:                                              ; preds = %213
  br label %215, !dbg !847

215:                                              ; preds = %214
  br label %216, !dbg !847

216:                                              ; preds = %215
  %217 = add nsw i32 %.01, 1, !dbg !848
  call void @llvm.dbg.value(metadata i32 %217, metadata !200, metadata !DIExpression()), !dbg !836
  br label %195, !dbg !849, !llvm.loop !850

218:                                              ; preds = %198
  br label %219, !dbg !852

219:                                              ; preds = %218, %176
  %220 = load ptr, ptr %4, align 8, !dbg !853, !tbaa !481
  %221 = load i32, ptr @rpl_optind, align 4, !dbg !854, !tbaa !665
  %222 = sext i32 %221 to i64, !dbg !853
  %223 = getelementptr inbounds ptr, ptr %220, i64 %222, !dbg !853
  %224 = load ptr, ptr %223, align 8, !dbg !853, !tbaa !481
  %225 = load ptr, ptr %4, align 8, !dbg !855, !tbaa !481
  %226 = load i32, ptr @rpl_optind, align 4, !dbg !856, !tbaa !665
  %227 = sext i32 %226 to i64, !dbg !855
  %228 = getelementptr inbounds ptr, ptr %225, i64 %227, !dbg !855
  %229 = call i32 @execvp(ptr noundef %224, ptr noundef %228), !dbg !857
  %230 = call ptr @__error(), !dbg !858
  %231 = load i32, ptr %230, align 4, !dbg !858, !tbaa !665
  %232 = icmp eq i32 %231, 2, !dbg !859
  %233 = zext i1 %232 to i64, !dbg !858
  %234 = select i1 %232, i32 127, i32 126, !dbg !858
  call void @llvm.dbg.value(metadata i32 %234, metadata !204, metadata !DIExpression()), !dbg !669
  %235 = call ptr @__error(), !dbg !860
  %236 = load i32, ptr %235, align 4, !dbg !860, !tbaa !665
  %237 = load ptr, ptr %4, align 8, !dbg !861, !tbaa !481
  %238 = load i32, ptr @rpl_optind, align 4, !dbg !862, !tbaa !665
  %239 = sext i32 %238 to i64, !dbg !861
  %240 = getelementptr inbounds ptr, ptr %237, i64 %239, !dbg !861
  %241 = load ptr, ptr %240, align 8, !dbg !861, !tbaa !481
  %242 = call ptr @quote(ptr noundef %241), !dbg !863
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %236, ptr noundef @.str.34, ptr noundef %242), !dbg !864
  %243 = icmp eq i32 %234, 127, !dbg !865
  br i1 %243, label %244, label %253, !dbg !867

244:                                              ; preds = %219
  %245 = load ptr, ptr %4, align 8, !dbg !868, !tbaa !481
  %246 = load i32, ptr @rpl_optind, align 4, !dbg !869, !tbaa !665
  %247 = sext i32 %246 to i64, !dbg !868
  %248 = getelementptr inbounds ptr, ptr %245, i64 %247, !dbg !868
  %249 = load ptr, ptr %248, align 8, !dbg !868, !tbaa !481
  %250 = call ptr @strpbrk(ptr noundef %249, ptr noundef @.str.35), !dbg !870
  %251 = icmp ne ptr %250, null, !dbg !870
  br i1 %251, label %252, label %253, !dbg !871

252:                                              ; preds = %244
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.18), !dbg !872
  br label %253, !dbg !872

253:                                              ; preds = %252, %244, %219
  br label %254

254:                                              ; preds = %253, %147
  %.0 = phi i32 [ %234, %253 ], [ 0, %147 ], !dbg !669
  ret i32 %.0, !dbg !873
}

declare !dbg !874 void @set_program_name(ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @initialize_exit_failure(i32 noundef %0) #3 !dbg !876 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !878, metadata !DIExpression()), !dbg !879
  %2 = icmp ne i32 %0, 1, !dbg !880
  br i1 %2, label %3, label %4, !dbg !882

3:                                                ; preds = %1
  store volatile i32 %0, ptr @exit_failure, align 4, !dbg !883, !tbaa !665
  br label %4, !dbg !884

4:                                                ; preds = %3, %1
  ret void, !dbg !885
}

declare void @close_stdout() #2

declare !dbg !886 i32 @atexit(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @initialize_signals() #7 !dbg !890 {
  %1 = call noalias nonnull ptr @xmalloc(i64 noundef 128) #14, !dbg !894
  store ptr %1, ptr @signals, align 8, !dbg !895, !tbaa !481
  call void @llvm.dbg.value(metadata i32 0, metadata !892, metadata !DIExpression()), !dbg !896
  br label %2, !dbg !897

2:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ], !dbg !898
  call void @llvm.dbg.value(metadata i32 %.0, metadata !892, metadata !DIExpression()), !dbg !896
  %3 = icmp sle i32 %.0, 31, !dbg !899
  br i1 %3, label %5, label %4, !dbg !901

4:                                                ; preds = %2
  br label %11

5:                                                ; preds = %2
  %6 = load ptr, ptr @signals, align 8, !dbg !902, !tbaa !481
  %7 = sext i32 %.0 to i64, !dbg !902
  %8 = getelementptr inbounds i32, ptr %6, i64 %7, !dbg !902
  store i32 0, ptr %8, align 4, !dbg !903, !tbaa !767
  br label %9, !dbg !902

9:                                                ; preds = %5
  %10 = add nsw i32 %.0, 1, !dbg !904
  call void @llvm.dbg.value(metadata i32 %10, metadata !892, metadata !DIExpression()), !dbg !896
  br label %2, !dbg !905, !llvm.loop !906

11:                                               ; preds = %4
  ret void, !dbg !908
}

declare !dbg !909 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @append_unset_var(ptr noundef %0) #7 !dbg !913 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !915, metadata !DIExpression()), !dbg !916
  %2 = load i64, ptr @usvars_used, align 8, !dbg !917, !tbaa !919
  %3 = load i64, ptr @usvars_alloc, align 8, !dbg !921, !tbaa !919
  %4 = icmp eq i64 %2, %3, !dbg !922
  br i1 %4, label %5, label %8, !dbg !923

5:                                                ; preds = %1
  %6 = load ptr, ptr @usvars, align 8, !dbg !924, !tbaa !481
  %7 = call nonnull ptr @x2nrealloc(ptr noundef %6, ptr noundef @usvars_alloc, i64 noundef 8), !dbg !925
  store ptr %7, ptr @usvars, align 8, !dbg !926, !tbaa !481
  br label %8, !dbg !927

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @usvars, align 8, !dbg !928, !tbaa !481
  %10 = load i64, ptr @usvars_used, align 8, !dbg !929, !tbaa !919
  %11 = add nsw i64 %10, 1, !dbg !929
  store i64 %11, ptr @usvars_used, align 8, !dbg !929, !tbaa !919
  %12 = getelementptr inbounds ptr, ptr %9, i64 %10, !dbg !928
  store ptr %0, ptr %12, align 8, !dbg !930, !tbaa !481
  ret void, !dbg !931
}

; Function Attrs: nounwind ssp uwtable
define internal void @parse_signal_action_params(ptr noundef %0, i1 noundef zeroext %1) #7 !dbg !932 {
  %3 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !936, metadata !DIExpression()), !dbg !947
  %4 = zext i1 %1 to i8
  call void @llvm.dbg.value(metadata i8 %4, metadata !937, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 19, ptr %3) #13, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %3, metadata !938, metadata !DIExpression()), !dbg !949
  %5 = icmp ne ptr %0, null, !dbg !950
  br i1 %5, label %25, label %6, !dbg !951

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 1, metadata !941, metadata !DIExpression()), !dbg !952
  br label %7, !dbg !953

7:                                                ; preds = %22, %6
  %.01 = phi i32 [ 1, %6 ], [ %23, %22 ], !dbg !954
  call void @llvm.dbg.value(metadata i32 %.01, metadata !941, metadata !DIExpression()), !dbg !952
  %8 = icmp sle i32 %.01, 31, !dbg !955
  br i1 %8, label %10, label %9, !dbg !957

9:                                                ; preds = %7
  br label %24

10:                                               ; preds = %7
  %11 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !958
  %12 = call i32 @sig2str(i32 noundef %.01, ptr noundef %11), !dbg !960
  %13 = icmp eq i32 %12, 0, !dbg !961
  br i1 %13, label %14, label %21, !dbg !962

14:                                               ; preds = %10
  %15 = trunc i8 %4 to i1, !dbg !963
  %16 = zext i1 %15 to i64, !dbg !963
  %17 = select i1 %15, i32 2, i32 4, !dbg !963
  %18 = load ptr, ptr @signals, align 8, !dbg !964, !tbaa !481
  %19 = sext i32 %.01 to i64, !dbg !964
  %20 = getelementptr inbounds i32, ptr %18, i64 %19, !dbg !964
  store i32 %17, ptr %20, align 4, !dbg !965, !tbaa !767
  br label %21, !dbg !964

21:                                               ; preds = %14, %10
  br label %22, !dbg !966

22:                                               ; preds = %21
  %23 = add nsw i32 %.01, 1, !dbg !967
  call void @llvm.dbg.value(metadata i32 %23, metadata !941, metadata !DIExpression()), !dbg !952
  br label %7, !dbg !968, !llvm.loop !969

24:                                               ; preds = %9
  br label %49, !dbg !971

25:                                               ; preds = %2
  %26 = call noalias nonnull ptr @xstrdup(ptr noundef %0), !dbg !972
  call void @llvm.dbg.value(metadata ptr %26, metadata !940, metadata !DIExpression()), !dbg !947
  %27 = call ptr @strtok(ptr noundef %26, ptr noundef @.str.67), !dbg !973
  call void @llvm.dbg.value(metadata ptr %27, metadata !939, metadata !DIExpression()), !dbg !947
  br label %28, !dbg !974

28:                                               ; preds = %40, %25
  %.02 = phi ptr [ %27, %25 ], [ %47, %40 ], !dbg !947
  call void @llvm.dbg.value(metadata ptr %.02, metadata !939, metadata !DIExpression()), !dbg !947
  %29 = icmp ne ptr %.02, null, !dbg !974
  br i1 %29, label %30, label %48, !dbg !974

30:                                               ; preds = %28
  %31 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !975
  %32 = call i32 @operand2sig(ptr noundef %.02, ptr noundef %31), !dbg !976
  call void @llvm.dbg.value(metadata i32 %32, metadata !945, metadata !DIExpression()), !dbg !977
  %33 = icmp eq i32 %32, 0, !dbg !978
  br i1 %33, label %34, label %36, !dbg !980

34:                                               ; preds = %30
  %35 = call ptr @quote(ptr noundef %.02), !dbg !981
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.68, ptr noundef %35), !dbg !982
  br label %36, !dbg !982

36:                                               ; preds = %34, %30
  %37 = icmp sle i32 %32, 0, !dbg !983
  br i1 %37, label %38, label %40, !dbg !985

38:                                               ; preds = %36
  %39 = load volatile i32, ptr @exit_failure, align 4, !dbg !986, !tbaa !665
  call void @usage(i32 noundef %39) #12, !dbg !987
  unreachable, !dbg !987

40:                                               ; preds = %36
  %41 = trunc i8 %4 to i1, !dbg !988
  %42 = zext i1 %41 to i64, !dbg !988
  %43 = select i1 %41, i32 1, i32 3, !dbg !988
  %44 = load ptr, ptr @signals, align 8, !dbg !989, !tbaa !481
  %45 = sext i32 %32 to i64, !dbg !989
  %46 = getelementptr inbounds i32, ptr %44, i64 %45, !dbg !989
  store i32 %43, ptr %46, align 4, !dbg !990, !tbaa !767
  %47 = call ptr @strtok(ptr noundef null, ptr noundef @.str.67), !dbg !991
  call void @llvm.dbg.value(metadata ptr %47, metadata !939, metadata !DIExpression()), !dbg !947
  br label %28, !dbg !974, !llvm.loop !992

48:                                               ; preds = %28
  call void @rpl_free(ptr noundef %26), !dbg !994
  br label %49, !dbg !995

49:                                               ; preds = %48, %24
  %.0 = phi i32 [ 0, %48 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0(i64 19, ptr %3) #13, !dbg !995
  switch i32 %.0, label %51 [
    i32 0, label %50
    i32 1, label %50
  ]

50:                                               ; preds = %49, %49
  ret void, !dbg !995

51:                                               ; preds = %49
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @parse_block_signal_params(ptr noundef %0, i1 noundef zeroext %1) #7 !dbg !996 {
  %3 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !998, metadata !DIExpression()), !dbg !1005
  %4 = zext i1 %1 to i8
  call void @llvm.dbg.value(metadata i8 %4, metadata !999, metadata !DIExpression()), !dbg !1005
  call void @llvm.lifetime.start.p0(i64 19, ptr %3) #13, !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1000, metadata !DIExpression()), !dbg !1007
  %5 = icmp ne ptr %0, null, !dbg !1008
  br i1 %5, label %15, label %6, !dbg !1010

6:                                                ; preds = %2
  %7 = trunc i8 %4 to i1, !dbg !1011
  %8 = zext i1 %7 to i64, !dbg !1011
  %9 = select i1 %7, ptr @block_signals, ptr @unblock_signals, !dbg !1011
  %10 = call i32 @sigfillset(ptr noundef %9), !dbg !1013
  %11 = trunc i8 %4 to i1, !dbg !1014
  %12 = zext i1 %11 to i64, !dbg !1014
  %13 = select i1 %11, ptr @unblock_signals, ptr @block_signals, !dbg !1014
  %14 = call i32 @sigemptyset(ptr noundef %13), !dbg !1015
  br label %22, !dbg !1016

15:                                               ; preds = %2
  %16 = load i8, ptr @sig_mask_changed, align 1, !dbg !1017, !tbaa !692, !range !740, !noundef !576
  %17 = trunc i8 %16 to i1, !dbg !1017
  br i1 %17, label %21, label %18, !dbg !1019

18:                                               ; preds = %15
  %19 = call i32 @sigemptyset(ptr noundef @block_signals), !dbg !1020
  %20 = call i32 @sigemptyset(ptr noundef @unblock_signals), !dbg !1022
  br label %21, !dbg !1023

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %21, %6
  store i8 1, ptr @sig_mask_changed, align 1, !dbg !1024, !tbaa !692
  %23 = icmp ne ptr %0, null, !dbg !1025
  br i1 %23, label %25, label %24, !dbg !1027

24:                                               ; preds = %22
  br label %51, !dbg !1028

25:                                               ; preds = %22
  %26 = call noalias nonnull ptr @xstrdup(ptr noundef %0), !dbg !1029
  call void @llvm.dbg.value(metadata ptr %26, metadata !1002, metadata !DIExpression()), !dbg !1005
  %27 = call ptr @strtok(ptr noundef %26, ptr noundef @.str.67), !dbg !1030
  call void @llvm.dbg.value(metadata ptr %27, metadata !1001, metadata !DIExpression()), !dbg !1005
  br label %28, !dbg !1031

28:                                               ; preds = %40, %25
  %.01 = phi ptr [ %27, %25 ], [ %49, %40 ], !dbg !1005
  call void @llvm.dbg.value(metadata ptr %.01, metadata !1001, metadata !DIExpression()), !dbg !1005
  %29 = icmp ne ptr %.01, null, !dbg !1031
  br i1 %29, label %30, label %50, !dbg !1031

30:                                               ; preds = %28
  %31 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !1032
  %32 = call i32 @operand2sig(ptr noundef %.01, ptr noundef %31), !dbg !1033
  call void @llvm.dbg.value(metadata i32 %32, metadata !1003, metadata !DIExpression()), !dbg !1034
  %33 = icmp eq i32 %32, 0, !dbg !1035
  br i1 %33, label %34, label %36, !dbg !1037

34:                                               ; preds = %30
  %35 = call ptr @quote(ptr noundef %.01), !dbg !1038
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.68, ptr noundef %35), !dbg !1039
  br label %36, !dbg !1039

36:                                               ; preds = %34, %30
  %37 = icmp sle i32 %32, 0, !dbg !1040
  br i1 %37, label %38, label %40, !dbg !1042

38:                                               ; preds = %36
  %39 = load volatile i32, ptr @exit_failure, align 4, !dbg !1043, !tbaa !665
  call void @usage(i32 noundef %39) #12, !dbg !1044
  unreachable, !dbg !1044

40:                                               ; preds = %36
  %41 = trunc i8 %4 to i1, !dbg !1045
  %42 = zext i1 %41 to i64, !dbg !1045
  %43 = select i1 %41, ptr @block_signals, ptr @unblock_signals, !dbg !1045
  %44 = call i32 @sigaddset(ptr noundef %43, i32 noundef %32), !dbg !1046
  %45 = trunc i8 %4 to i1, !dbg !1047
  %46 = zext i1 %45 to i64, !dbg !1047
  %47 = select i1 %45, ptr @unblock_signals, ptr @block_signals, !dbg !1047
  %48 = call i32 @sigdelset(ptr noundef %47, i32 noundef %32), !dbg !1048
  %49 = call ptr @strtok(ptr noundef null, ptr noundef @.str.67), !dbg !1049
  call void @llvm.dbg.value(metadata ptr %49, metadata !1001, metadata !DIExpression()), !dbg !1005
  br label %28, !dbg !1031, !llvm.loop !1050

50:                                               ; preds = %28
  call void @rpl_free(ptr noundef %26), !dbg !1052
  br label %51, !dbg !1053

51:                                               ; preds = %50, %24
  %.0 = phi i32 [ 0, %50 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0(i64 19, ptr %3) #13, !dbg !1053
  switch i32 %.0, label %53 [
    i32 0, label %52
    i32 1, label %52
  ]

52:                                               ; preds = %51, %51
  ret void, !dbg !1053

53:                                               ; preds = %51
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @parse_split_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 !dbg !1054 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1059, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr %1, metadata !1060, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr %2, metadata !1061, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr %3, metadata !1062, metadata !DIExpression()), !dbg !1070
  %6 = load i32, ptr %2, align 4, !dbg !1071, !tbaa !665
  %7 = load i32, ptr %1, align 4, !dbg !1072, !tbaa !665
  %8 = sub nsw i32 %6, %7, !dbg !1073
  call void @llvm.dbg.value(metadata i32 %8, metadata !1063, metadata !DIExpression()), !dbg !1070
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #13, !dbg !1074
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1064, metadata !DIExpression()), !dbg !1075
  %9 = call ptr @build_argv(ptr noundef %0, i32 noundef %8, ptr noundef %5), !dbg !1076
  call void @llvm.dbg.value(metadata ptr %9, metadata !1065, metadata !DIExpression()), !dbg !1070
  %10 = load ptr, ptr %3, align 8, !dbg !1077, !tbaa !481
  %11 = getelementptr inbounds ptr, ptr %10, i64 0, !dbg !1078
  %12 = load ptr, ptr %11, align 8, !dbg !1078, !tbaa !481
  store ptr %12, ptr %9, align 8, !dbg !1079, !tbaa !481
  %13 = load i8, ptr @dev_debug, align 1, !dbg !1080, !tbaa !692, !range !740, !noundef !576
  %14 = trunc i8 %13 to i1, !dbg !1080
  br i1 %14, label %15, label %62, !dbg !1081

15:                                               ; preds = %4
  %16 = load i32, ptr %5, align 4, !dbg !1082, !tbaa !665
  %17 = icmp slt i32 1, %16, !dbg !1083
  br i1 %17, label %18, label %62, !dbg !1084

18:                                               ; preds = %15
  br label %19, !dbg !1085

19:                                               ; preds = %18
  %20 = load i8, ptr @dev_debug, align 1, !dbg !1086, !tbaa !692, !range !740, !noundef !576
  %21 = trunc i8 %20 to i1, !dbg !1086
  br i1 %21, label %22, label %26, !dbg !1089

22:                                               ; preds = %19
  %23 = load ptr, ptr @__stderrp, align 8, !dbg !1086, !tbaa !481
  %24 = call ptr @quote(ptr noundef %0), !dbg !1086
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.69, ptr noundef %24), !dbg !1086
  br label %26, !dbg !1086

26:                                               ; preds = %22, %19
  br label %27, !dbg !1089

27:                                               ; preds = %26
  br label %28, !dbg !1089

28:                                               ; preds = %27
  br label %29, !dbg !1090

29:                                               ; preds = %28
  %30 = load i8, ptr @dev_debug, align 1, !dbg !1091, !tbaa !692, !range !740, !noundef !576
  %31 = trunc i8 %30 to i1, !dbg !1091
  br i1 %31, label %32, label %38, !dbg !1094

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stderrp, align 8, !dbg !1091, !tbaa !481
  %34 = getelementptr inbounds ptr, ptr %9, i64 1, !dbg !1091
  %35 = load ptr, ptr %34, align 8, !dbg !1091, !tbaa !481
  %36 = call ptr @quote(ptr noundef %35), !dbg !1091
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.70, ptr noundef %36), !dbg !1091
  br label %38, !dbg !1091

38:                                               ; preds = %32, %29
  br label %39, !dbg !1094

39:                                               ; preds = %38
  br label %40, !dbg !1094

40:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i32 2, metadata !1066, metadata !DIExpression()), !dbg !1095
  br label %41, !dbg !1096

41:                                               ; preds = %59, %40
  %.0 = phi i32 [ 2, %40 ], [ %60, %59 ], !dbg !1097
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1066, metadata !DIExpression()), !dbg !1095
  %42 = load i32, ptr %5, align 4, !dbg !1098, !tbaa !665
  %43 = icmp slt i32 %.0, %42, !dbg !1100
  br i1 %43, label %45, label %44, !dbg !1101

44:                                               ; preds = %41
  br label %61

45:                                               ; preds = %41
  br label %46, !dbg !1102

46:                                               ; preds = %45
  %47 = load i8, ptr @dev_debug, align 1, !dbg !1103, !tbaa !692, !range !740, !noundef !576
  %48 = trunc i8 %47 to i1, !dbg !1103
  br i1 %48, label %49, label %56, !dbg !1106

49:                                               ; preds = %46
  %50 = load ptr, ptr @__stderrp, align 8, !dbg !1103, !tbaa !481
  %51 = sext i32 %.0 to i64, !dbg !1103
  %52 = getelementptr inbounds ptr, ptr %9, i64 %51, !dbg !1103
  %53 = load ptr, ptr %52, align 8, !dbg !1103, !tbaa !481
  %54 = call ptr @quote(ptr noundef %53), !dbg !1103
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.71, ptr noundef %54), !dbg !1103
  br label %56, !dbg !1103

56:                                               ; preds = %49, %46
  br label %57, !dbg !1106

57:                                               ; preds = %56
  br label %58, !dbg !1106

58:                                               ; preds = %57
  br label %59, !dbg !1106

59:                                               ; preds = %58
  %60 = add nsw i32 %.0, 1, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %60, metadata !1066, metadata !DIExpression()), !dbg !1095
  br label %41, !dbg !1108, !llvm.loop !1109

61:                                               ; preds = %44
  br label %62, !dbg !1111

62:                                               ; preds = %61, %15, %4
  %63 = load i32, ptr %5, align 4, !dbg !1112, !tbaa !665
  %64 = sext i32 %63 to i64, !dbg !1113
  %65 = getelementptr inbounds ptr, ptr %9, i64 %64, !dbg !1113
  %66 = load ptr, ptr %3, align 8, !dbg !1114, !tbaa !481
  %67 = load i32, ptr %1, align 4, !dbg !1115, !tbaa !665
  %68 = sext i32 %67 to i64, !dbg !1116
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68, !dbg !1116
  %70 = add nsw i32 %8, 1, !dbg !1117
  %71 = sext i32 %70 to i64, !dbg !1118
  %72 = mul i64 %71, 8, !dbg !1119
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %65, ptr align 8 %69, i64 %72, i1 false), !dbg !1120
  %73 = load i32, ptr %5, align 4, !dbg !1121, !tbaa !665
  %74 = add nsw i32 %73, %8, !dbg !1122
  store i32 %74, ptr %2, align 4, !dbg !1123, !tbaa !665
  store ptr %9, ptr %3, align 8, !dbg !1124, !tbaa !481
  store i32 0, ptr %1, align 4, !dbg !1125, !tbaa !665
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #13, !dbg !1126
  ret void, !dbg !1126
}

declare !dbg !1127 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !1131 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !1135 ptr @_NSGetEnviron() #2

; Function Attrs: nounwind ssp uwtable
define internal void @unset_envvars() #7 !dbg !1139 {
  call void @llvm.dbg.value(metadata i64 0, metadata !1141, metadata !DIExpression()), !dbg !1143
  br label %1, !dbg !1144

1:                                                ; preds = %31, %0
  %.0 = phi i64 [ 0, %0 ], [ %32, %31 ], !dbg !1145
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1141, metadata !DIExpression()), !dbg !1143
  %2 = load i64, ptr @usvars_used, align 8, !dbg !1146, !tbaa !919
  %3 = icmp slt i64 %.0, %2, !dbg !1148
  br i1 %3, label %5, label %4, !dbg !1149

4:                                                ; preds = %1
  br label %33

5:                                                ; preds = %1
  br label %6, !dbg !1150

6:                                                ; preds = %5
  %7 = load i8, ptr @dev_debug, align 1, !dbg !1152, !tbaa !692, !range !740, !noundef !576
  %8 = trunc i8 %7 to i1, !dbg !1152
  br i1 %8, label %9, label %15, !dbg !1155

9:                                                ; preds = %6
  %10 = load ptr, ptr @__stderrp, align 8, !dbg !1152, !tbaa !481
  %11 = load ptr, ptr @usvars, align 8, !dbg !1152, !tbaa !481
  %12 = getelementptr inbounds ptr, ptr %11, i64 %.0, !dbg !1152
  %13 = load ptr, ptr %12, align 8, !dbg !1152, !tbaa !481
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.79, ptr noundef %13), !dbg !1152
  br label %15, !dbg !1152

15:                                               ; preds = %9, %6
  br label %16, !dbg !1155

16:                                               ; preds = %15
  br label %17, !dbg !1155

17:                                               ; preds = %16
  %18 = load ptr, ptr @usvars, align 8, !dbg !1156, !tbaa !481
  %19 = getelementptr inbounds ptr, ptr %18, i64 %.0, !dbg !1156
  %20 = load ptr, ptr %19, align 8, !dbg !1156, !tbaa !481
  %21 = call i32 @"\01_unsetenv"(ptr noundef %20), !dbg !1158
  %22 = icmp ne i32 %21, 0, !dbg !1158
  br i1 %22, label %23, label %30, !dbg !1159

23:                                               ; preds = %17
  %24 = call ptr @__error(), !dbg !1160
  %25 = load i32, ptr %24, align 4, !dbg !1160, !tbaa !665
  %26 = load ptr, ptr @usvars, align 8, !dbg !1160, !tbaa !481
  %27 = getelementptr inbounds ptr, ptr %26, i64 %.0, !dbg !1160
  %28 = load ptr, ptr %27, align 8, !dbg !1160, !tbaa !481
  %29 = call ptr @quote(ptr noundef %28), !dbg !1160
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %25, ptr noundef @.str.80, ptr noundef %29), !dbg !1160
  unreachable, !dbg !1160

30:                                               ; preds = %17
  br label %31, !dbg !1161

31:                                               ; preds = %30
  %32 = add nsw i64 %.0, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %32, metadata !1141, metadata !DIExpression()), !dbg !1143
  br label %1, !dbg !1163, !llvm.loop !1164

33:                                               ; preds = %4
  ret void, !dbg !1166
}

declare !dbg !1167 ptr @strchr(ptr noundef, i32 noundef) #2

declare !dbg !1170 i32 @rpl_putenv(ptr noundef) #2

declare !dbg !1174 ptr @__error() #2

declare !dbg !1178 ptr @quote(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @reset_signal_handlers() #7 !dbg !1182 {
  %1 = alloca %struct.sigaction, align 8
  %2 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i32 1, metadata !1184, metadata !DIExpression()), !dbg !1233
  br label %3, !dbg !1234

3:                                                ; preds = %89, %0
  %.0 = phi i32 [ 1, %0 ], [ %90, %89 ], !dbg !1235
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1184, metadata !DIExpression()), !dbg !1233
  %4 = icmp sle i32 %.0, 31, !dbg !1236
  br i1 %4, label %6, label %5, !dbg !1237

5:                                                ; preds = %3
  br label %91

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr %1) #13, !dbg !1238
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1186, metadata !DIExpression()), !dbg !1239
  %7 = load ptr, ptr @signals, align 8, !dbg !1240, !tbaa !481
  %8 = sext i32 %.0 to i64, !dbg !1240
  %9 = getelementptr inbounds i32, ptr %7, i64 %8, !dbg !1240
  %10 = load i32, ptr %9, align 4, !dbg !1240, !tbaa !767
  %11 = icmp eq i32 %10, 0, !dbg !1242
  br i1 %11, label %12, label %13, !dbg !1243

12:                                               ; preds = %6
  br label %87, !dbg !1244

13:                                               ; preds = %6
  %14 = load ptr, ptr @signals, align 8, !dbg !1245, !tbaa !481
  %15 = sext i32 %.0 to i64, !dbg !1245
  %16 = getelementptr inbounds i32, ptr %14, i64 %15, !dbg !1245
  %17 = load i32, ptr %16, align 4, !dbg !1245, !tbaa !767
  %18 = icmp eq i32 %17, 2, !dbg !1246
  br i1 %18, label %25, label %19, !dbg !1247

19:                                               ; preds = %13
  %20 = load ptr, ptr @signals, align 8, !dbg !1248, !tbaa !481
  %21 = sext i32 %.0 to i64, !dbg !1248
  %22 = getelementptr inbounds i32, ptr %20, i64 %21, !dbg !1248
  %23 = load i32, ptr %22, align 4, !dbg !1248, !tbaa !767
  %24 = icmp eq i32 %23, 4, !dbg !1249
  br label %25, !dbg !1247

25:                                               ; preds = %19, %13
  %26 = phi i1 [ true, %13 ], [ %24, %19 ]
  %27 = zext i1 %26 to i8, !dbg !1250
  call void @llvm.dbg.value(metadata i8 %27, metadata !1227, metadata !DIExpression()), !dbg !1251
  %28 = load ptr, ptr @signals, align 8, !dbg !1252, !tbaa !481
  %29 = sext i32 %.0 to i64, !dbg !1252
  %30 = getelementptr inbounds i32, ptr %28, i64 %29, !dbg !1252
  %31 = load i32, ptr %30, align 4, !dbg !1252, !tbaa !767
  %32 = icmp eq i32 %31, 1, !dbg !1253
  br i1 %32, label %39, label %33, !dbg !1254

33:                                               ; preds = %25
  %34 = load ptr, ptr @signals, align 8, !dbg !1255, !tbaa !481
  %35 = sext i32 %.0 to i64, !dbg !1255
  %36 = getelementptr inbounds i32, ptr %34, i64 %35, !dbg !1255
  %37 = load i32, ptr %36, align 4, !dbg !1255, !tbaa !767
  %38 = icmp eq i32 %37, 2, !dbg !1256
  br label %39, !dbg !1254

39:                                               ; preds = %33, %25
  %40 = phi i1 [ true, %25 ], [ %38, %33 ]
  %41 = zext i1 %40 to i8, !dbg !1257
  call void @llvm.dbg.value(metadata i8 %41, metadata !1228, metadata !DIExpression()), !dbg !1251
  %42 = call i32 @sigaction(i32 noundef %.0, ptr noundef null, ptr noundef %1), !dbg !1258
  call void @llvm.dbg.value(metadata i32 %42, metadata !1229, metadata !DIExpression()), !dbg !1251
  %43 = icmp ne i32 %42, 0, !dbg !1259
  br i1 %43, label %44, label %49, !dbg !1261

44:                                               ; preds = %39
  %45 = trunc i8 %27 to i1, !dbg !1262
  br i1 %45, label %49, label %46, !dbg !1263

46:                                               ; preds = %44
  %47 = call ptr @__error(), !dbg !1264
  %48 = load i32, ptr %47, align 4, !dbg !1264, !tbaa !665
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %48, ptr noundef @.str.81, i32 noundef %.0), !dbg !1264
  unreachable, !dbg !1264

49:                                               ; preds = %44, %39
  %50 = icmp ne i32 %42, 0, !dbg !1265
  br i1 %50, label %64, label %51, !dbg !1267

51:                                               ; preds = %49
  %52 = trunc i8 %41 to i1, !dbg !1268
  %53 = zext i1 %52 to i64, !dbg !1268
  %54 = select i1 %52, ptr null, ptr inttoptr (i64 1 to ptr), !dbg !1268
  %55 = getelementptr inbounds %struct.sigaction, ptr %1, i32 0, i32 0, !dbg !1270
  store ptr %54, ptr %55, align 8, !dbg !1271, !tbaa !767
  %56 = call i32 @sigaction(i32 noundef %.0, ptr noundef %1, ptr noundef null), !dbg !1272
  call void @llvm.dbg.value(metadata i32 %56, metadata !1229, metadata !DIExpression()), !dbg !1251
  %57 = icmp ne i32 %56, 0, !dbg !1273
  br i1 %57, label %58, label %63, !dbg !1275

58:                                               ; preds = %51
  %59 = trunc i8 %27 to i1, !dbg !1276
  br i1 %59, label %63, label %60, !dbg !1277

60:                                               ; preds = %58
  %61 = call ptr @__error(), !dbg !1278
  %62 = load i32, ptr %61, align 4, !dbg !1278, !tbaa !665
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %62, ptr noundef @.str.82, i32 noundef %.0), !dbg !1278
  unreachable, !dbg !1278

63:                                               ; preds = %58, %51
  br label %64, !dbg !1279

64:                                               ; preds = %63, %49
  %.02 = phi i32 [ %42, %49 ], [ %56, %63 ], !dbg !1251
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1229, metadata !DIExpression()), !dbg !1251
  %65 = load i8, ptr @dev_debug, align 1, !dbg !1280, !tbaa !692, !range !740, !noundef !576
  %66 = trunc i8 %65 to i1, !dbg !1280
  br i1 %66, label %67, label %86, !dbg !1281

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 19, ptr %2) #13, !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1230, metadata !DIExpression()), !dbg !1283
  %68 = getelementptr inbounds [19 x i8], ptr %2, i64 0, i64 0, !dbg !1284
  %69 = call i32 @sig2str(i32 noundef %.0, ptr noundef %68), !dbg !1285
  br label %70, !dbg !1286

70:                                               ; preds = %67
  %71 = load i8, ptr @dev_debug, align 1, !dbg !1287, !tbaa !692, !range !740, !noundef !576
  %72 = trunc i8 %71 to i1, !dbg !1287
  br i1 %72, label %73, label %83, !dbg !1290

73:                                               ; preds = %70
  %74 = load ptr, ptr @__stderrp, align 8, !dbg !1287, !tbaa !481
  %75 = getelementptr inbounds [19 x i8], ptr %2, i64 0, i64 0, !dbg !1287
  %76 = trunc i8 %41 to i1, !dbg !1287
  %77 = zext i1 %76 to i64, !dbg !1287
  %78 = select i1 %76, ptr @.str.84, ptr @.str.85, !dbg !1287
  %79 = icmp ne i32 %.02, 0, !dbg !1287
  %80 = zext i1 %79 to i64, !dbg !1287
  %81 = select i1 %79, ptr @.str.86, ptr @.str.16, !dbg !1287
  %82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.83, ptr noundef %75, i32 noundef %.0, ptr noundef %78, ptr noundef %81), !dbg !1287
  br label %83, !dbg !1287

83:                                               ; preds = %73, %70
  br label %84, !dbg !1290

84:                                               ; preds = %83
  br label %85, !dbg !1290

85:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 19, ptr %2) #13, !dbg !1291
  br label %86, !dbg !1292

86:                                               ; preds = %85, %64
  br label %87, !dbg !1293

87:                                               ; preds = %86, %12
  %.01 = phi i32 [ 4, %12 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %1) #13, !dbg !1293
  switch i32 %.01, label %92 [
    i32 0, label %88
    i32 4, label %89
  ]

88:                                               ; preds = %87
  br label %89, !dbg !1294

89:                                               ; preds = %88, %87
  %90 = add nsw i32 %.0, 1, !dbg !1295
  call void @llvm.dbg.value(metadata i32 %90, metadata !1184, metadata !DIExpression()), !dbg !1233
  br label %3, !dbg !1296, !llvm.loop !1297

91:                                               ; preds = %5
  ret void, !dbg !1299

92:                                               ; preds = %87
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_signal_proc_mask() #7 !dbg !1300 {
  %1 = alloca i32, align 4
  %2 = alloca [19 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #13, !dbg !1311
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1302, metadata !DIExpression()), !dbg !1312
  %3 = call i32 @sigemptyset(ptr noundef %1), !dbg !1313
  %4 = call i32 @sigprocmask(i32 noundef 0, ptr noundef null, ptr noundef %1), !dbg !1314
  %5 = icmp ne i32 %4, 0, !dbg !1314
  br i1 %5, label %6, label %9, !dbg !1316

6:                                                ; preds = %0
  %7 = call ptr @__error(), !dbg !1317
  %8 = load i32, ptr %7, align 4, !dbg !1317, !tbaa !665
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %8, ptr noundef @.str.87), !dbg !1317
  unreachable, !dbg !1317

9:                                                ; preds = %0
  call void @llvm.dbg.value(metadata i32 1, metadata !1304, metadata !DIExpression()), !dbg !1318
  br label %10, !dbg !1319

10:                                               ; preds = %44, %9
  %.01 = phi i32 [ 1, %9 ], [ %45, %44 ], !dbg !1320
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1304, metadata !DIExpression()), !dbg !1318
  %11 = icmp sle i32 %.01, 31, !dbg !1321
  br i1 %11, label %13, label %12, !dbg !1322

12:                                               ; preds = %10
  br label %46

13:                                               ; preds = %10
  %14 = call i32 @sigismember(ptr noundef @block_signals, i32 noundef %.01), !dbg !1323
  %15 = icmp ne i32 %14, 0, !dbg !1323
  br i1 %15, label %16, label %18, !dbg !1325

16:                                               ; preds = %13
  %17 = call i32 @sigaddset(ptr noundef %1, i32 noundef %.01), !dbg !1326
  call void @llvm.dbg.value(metadata ptr @.str.88, metadata !1303, metadata !DIExpression()), !dbg !1328
  br label %25, !dbg !1329

18:                                               ; preds = %13
  %19 = call i32 @sigismember(ptr noundef @unblock_signals, i32 noundef %.01), !dbg !1330
  %20 = icmp ne i32 %19, 0, !dbg !1330
  br i1 %20, label %21, label %23, !dbg !1332

21:                                               ; preds = %18
  %22 = call i32 @sigdelset(ptr noundef %1, i32 noundef %.01), !dbg !1333
  call void @llvm.dbg.value(metadata ptr @.str.89, metadata !1303, metadata !DIExpression()), !dbg !1328
  br label %24, !dbg !1335

23:                                               ; preds = %18
  call void @llvm.dbg.value(metadata ptr null, metadata !1303, metadata !DIExpression()), !dbg !1328
  br label %24

24:                                               ; preds = %23, %21
  %.0 = phi ptr [ @.str.89, %21 ], [ null, %23 ], !dbg !1336
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1303, metadata !DIExpression()), !dbg !1328
  br label %25

25:                                               ; preds = %24, %16
  %.1 = phi ptr [ @.str.88, %16 ], [ %.0, %24 ], !dbg !1337
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1303, metadata !DIExpression()), !dbg !1328
  %26 = load i8, ptr @dev_debug, align 1, !dbg !1338, !tbaa !692, !range !740, !noundef !576
  %27 = trunc i8 %26 to i1, !dbg !1338
  br i1 %27, label %28, label %43, !dbg !1339

28:                                               ; preds = %25
  %29 = icmp ne ptr %.1, null, !dbg !1340
  br i1 %29, label %30, label %43, !dbg !1341

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 19, ptr %2) #13, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1306, metadata !DIExpression()), !dbg !1343
  %31 = getelementptr inbounds [19 x i8], ptr %2, i64 0, i64 0, !dbg !1344
  %32 = call i32 @sig2str(i32 noundef %.01, ptr noundef %31), !dbg !1345
  br label %33, !dbg !1346

33:                                               ; preds = %30
  %34 = load i8, ptr @dev_debug, align 1, !dbg !1347, !tbaa !692, !range !740, !noundef !576
  %35 = trunc i8 %34 to i1, !dbg !1347
  br i1 %35, label %36, label %40, !dbg !1350

36:                                               ; preds = %33
  %37 = load ptr, ptr @__stderrp, align 8, !dbg !1347, !tbaa !481
  %38 = getelementptr inbounds [19 x i8], ptr %2, i64 0, i64 0, !dbg !1347
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.90, ptr noundef %38, i32 noundef %.01, ptr noundef %.1), !dbg !1347
  br label %40, !dbg !1347

40:                                               ; preds = %36, %33
  br label %41, !dbg !1350

41:                                               ; preds = %40
  br label %42, !dbg !1350

42:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 19, ptr %2) #13, !dbg !1351
  br label %43, !dbg !1352

43:                                               ; preds = %42, %28, %25
  br label %44, !dbg !1353

44:                                               ; preds = %43
  %45 = add nsw i32 %.01, 1, !dbg !1354
  call void @llvm.dbg.value(metadata i32 %45, metadata !1304, metadata !DIExpression()), !dbg !1318
  br label %10, !dbg !1355, !llvm.loop !1356

46:                                               ; preds = %12
  %47 = call i32 @sigprocmask(i32 noundef 3, ptr noundef %1, ptr noundef null), !dbg !1358
  %48 = icmp ne i32 %47, 0, !dbg !1358
  br i1 %48, label %49, label %52, !dbg !1360

49:                                               ; preds = %46
  %50 = call ptr @__error(), !dbg !1361
  %51 = load i32, ptr %50, align 4, !dbg !1361, !tbaa !665
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %51, ptr noundef @.str.91), !dbg !1361
  unreachable, !dbg !1361

52:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #13, !dbg !1362
  ret void, !dbg !1362
}

; Function Attrs: nounwind ssp uwtable
define internal void @list_signal_handling() #7 !dbg !1363 {
  %1 = alloca i32, align 4
  %2 = alloca [19 x i8], align 16
  %3 = alloca %struct.sigaction, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #13, !dbg !1375
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1365, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.start.p0(i64 19, ptr %2) #13, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1366, metadata !DIExpression()), !dbg !1378
  %4 = call i32 @sigemptyset(ptr noundef %1), !dbg !1379
  %5 = call i32 @sigprocmask(i32 noundef 0, ptr noundef null, ptr noundef %1), !dbg !1380
  %6 = icmp ne i32 %5, 0, !dbg !1380
  br i1 %6, label %7, label %10, !dbg !1382

7:                                                ; preds = %0
  %8 = call ptr @__error(), !dbg !1383
  %9 = load i32, ptr %8, align 4, !dbg !1383, !tbaa !665
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %9, ptr noundef @.str.87), !dbg !1383
  unreachable, !dbg !1383

10:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i32 1, metadata !1367, metadata !DIExpression()), !dbg !1384
  br label %11, !dbg !1385

11:                                               ; preds = %54, %10
  %.0 = phi i32 [ 1, %10 ], [ %55, %54 ], !dbg !1386
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1367, metadata !DIExpression()), !dbg !1384
  %12 = icmp sle i32 %.0, 31, !dbg !1387
  br i1 %12, label %14, label %13, !dbg !1388

13:                                               ; preds = %11
  br label %56

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr %3) #13, !dbg !1389
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1369, metadata !DIExpression()), !dbg !1390
  %15 = call i32 @sigaction(i32 noundef %.0, ptr noundef null, ptr noundef %3), !dbg !1391
  %16 = icmp ne i32 %15, 0, !dbg !1391
  br i1 %16, label %17, label %18, !dbg !1393

17:                                               ; preds = %14
  br label %52, !dbg !1394

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sigaction, ptr %3, i32 0, i32 0, !dbg !1395
  %20 = load ptr, ptr %19, align 8, !dbg !1395, !tbaa !767
  %21 = icmp eq ptr %20, inttoptr (i64 1 to ptr), !dbg !1396
  %22 = zext i1 %21 to i64, !dbg !1397
  %23 = select i1 %21, ptr @.str.85, ptr @.str.16, !dbg !1397
  call void @llvm.dbg.value(metadata ptr %23, metadata !1372, metadata !DIExpression()), !dbg !1398
  %24 = call i32 @sigismember(ptr noundef %1, i32 noundef %.0), !dbg !1399
  %25 = icmp ne i32 %24, 0, !dbg !1399
  %26 = zext i1 %25 to i64, !dbg !1399
  %27 = select i1 %25, ptr @.str.88, ptr @.str.16, !dbg !1399
  call void @llvm.dbg.value(metadata ptr %27, metadata !1373, metadata !DIExpression()), !dbg !1398
  %28 = load i8, ptr %23, align 1, !dbg !1400, !tbaa !767
  %29 = sext i8 %28 to i32, !dbg !1400
  %30 = icmp ne i32 %29, 0, !dbg !1400
  br i1 %30, label %31, label %35, !dbg !1401

31:                                               ; preds = %18
  %32 = load i8, ptr %27, align 1, !dbg !1402, !tbaa !767
  %33 = sext i8 %32 to i32, !dbg !1402
  %34 = icmp ne i32 %33, 0, !dbg !1401
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i1 [ false, %18 ], [ %34, %31 ], !dbg !1398
  %37 = zext i1 %36 to i64, !dbg !1400
  %38 = select i1 %36, ptr @.str.67, ptr @.str.16, !dbg !1400
  call void @llvm.dbg.value(metadata ptr %38, metadata !1374, metadata !DIExpression()), !dbg !1398
  %39 = load i8, ptr %23, align 1, !dbg !1403, !tbaa !767
  %40 = icmp ne i8 %39, 0, !dbg !1403
  br i1 %40, label %45, label %41, !dbg !1405

41:                                               ; preds = %35
  %42 = load i8, ptr %27, align 1, !dbg !1406, !tbaa !767
  %43 = icmp ne i8 %42, 0, !dbg !1406
  br i1 %43, label %45, label %44, !dbg !1407

44:                                               ; preds = %41
  br label %51, !dbg !1408

45:                                               ; preds = %41, %35
  %46 = getelementptr inbounds [19 x i8], ptr %2, i64 0, i64 0, !dbg !1409
  %47 = call i32 @sig2str(i32 noundef %.0, ptr noundef %46), !dbg !1410
  %48 = load ptr, ptr @__stderrp, align 8, !dbg !1411, !tbaa !481
  %49 = getelementptr inbounds [19 x i8], ptr %2, i64 0, i64 0, !dbg !1412
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.92, ptr noundef %49, i32 noundef %.0, ptr noundef %27, ptr noundef %38, ptr noundef %23), !dbg !1413
  br label %51, !dbg !1414

51:                                               ; preds = %45, %44
  %.01 = phi i32 [ 0, %45 ], [ 4, %44 ]
  br label %52

52:                                               ; preds = %51, %17
  %.1 = phi i32 [ 4, %17 ], [ %.01, %51 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %3) #13, !dbg !1414
  switch i32 %.1, label %57 [
    i32 0, label %53
    i32 4, label %54
  ]

53:                                               ; preds = %52
  br label %54, !dbg !1415

54:                                               ; preds = %53, %52
  %55 = add nsw i32 %.0, 1, !dbg !1416
  call void @llvm.dbg.value(metadata i32 %55, metadata !1367, metadata !DIExpression()), !dbg !1384
  br label %11, !dbg !1417, !llvm.loop !1418

56:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 19, ptr %2) #13, !dbg !1420
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #13, !dbg !1420
  ret void, !dbg !1420

57:                                               ; preds = %52
  unreachable
}

declare !dbg !1421 ptr @quotearg_style(i32 noundef, ptr noundef) #2

declare !dbg !1424 i32 @chdir(ptr noundef) #2

declare !dbg !1428 i32 @execvp(ptr noundef, ptr noundef) #2

declare !dbg !1431 ptr @strpbrk(ptr noundef, ptr noundef) #2

declare !dbg !1434 i32 @sigemptyset(ptr noundef) #2

declare !dbg !1439 i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) #2

declare !dbg !1446 i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) #2

declare !dbg !1454 i32 @sigismember(ptr noundef, i32 noundef) #2

declare !dbg !1457 i32 @sig2str(i32 noundef, ptr noundef) #2

declare !dbg !1461 i32 @sigaddset(ptr noundef, i32 noundef) #2

declare !dbg !1464 i32 @sigdelset(ptr noundef, i32 noundef) #2

declare !dbg !1465 i32 @"\01_unsetenv"(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @build_argv(ptr noundef %0, i32 noundef %1, ptr noundef %2) #7 !dbg !1466 {
  %4 = alloca %struct.splitbuf, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1470, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 %1, metadata !1471, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata ptr %2, metadata !1472, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 0, metadata !1473, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 0, metadata !1474, metadata !DIExpression()), !dbg !1490
  call void @llvm.lifetime.start.p0(i64 32, ptr %4) #13, !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1475, metadata !DIExpression()), !dbg !1492
  %5 = add nsw i32 %1, 2, !dbg !1493
  %6 = sext i32 %5 to i64, !dbg !1494
  %7 = call noalias nonnull ptr @xnmalloc(i64 noundef %6, i64 noundef 16) #15, !dbg !1495
  %8 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 0, !dbg !1496
  store ptr %7, ptr %8, align 8, !dbg !1497, !tbaa !1498
  %9 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 1, !dbg !1500
  store i32 1, ptr %9, align 8, !dbg !1501, !tbaa !1502
  %10 = add nsw i32 %1, 2, !dbg !1503
  %11 = sext i32 %10 to i64, !dbg !1504
  %12 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 2, !dbg !1505
  store i64 %11, ptr %12, align 8, !dbg !1506, !tbaa !1507
  %13 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 3, !dbg !1508
  store i32 %1, ptr %13, align 8, !dbg !1509, !tbaa !1510
  %14 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 4, !dbg !1511
  store i8 1, ptr %14, align 4, !dbg !1512, !tbaa !1513
  %15 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 0, !dbg !1514
  %16 = load ptr, ptr %15, align 8, !dbg !1514, !tbaa !1498
  %17 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 1, !dbg !1515
  %18 = load i32, ptr %17, align 8, !dbg !1515, !tbaa !1502
  %19 = sext i32 %18 to i64, !dbg !1516
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19, !dbg !1516
  store ptr null, ptr %20, align 8, !dbg !1517, !tbaa !481
  br label %21, !dbg !1518

21:                                               ; preds = %141, %140, %3
  %.06 = phi i8 [ 0, %3 ], [ %.17, %140 ], [ %.17, %141 ], !dbg !1519
  %.04 = phi i8 [ 0, %3 ], [ %.15, %140 ], [ %.15, %141 ], !dbg !1520
  %.01 = phi ptr [ %0, %3 ], [ %.2, %140 ], [ %.2, %141 ]
  call void @llvm.dbg.value(metadata ptr %.01, metadata !1470, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 %.04, metadata !1473, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 %.06, metadata !1474, metadata !DIExpression()), !dbg !1490
  %22 = load i8, ptr %.01, align 1, !dbg !1521, !tbaa !767
  %23 = icmp ne i8 %22, 0, !dbg !1518
  br i1 %23, label %24, label %142, !dbg !1518

24:                                               ; preds = %21
  %25 = load i8, ptr %.01, align 1, !dbg !1522, !tbaa !767
  call void @llvm.dbg.value(metadata i8 %25, metadata !1483, metadata !DIExpression()), !dbg !1523
  %26 = load i8, ptr %.01, align 1, !dbg !1524, !tbaa !767
  %27 = sext i8 %26 to i32, !dbg !1524
  switch i32 %27, label %138 [
    i32 39, label %28
    i32 34, label %36
    i32 32, label %44
    i32 9, label %44
    i32 10, label %44
    i32 11, label %44
    i32 12, label %44
    i32 13, label %44
    i32 35, label %53
    i32 92, label %59
    i32 36, label %96
  ], !dbg !1525

28:                                               ; preds = %24
  %29 = trunc i8 %.04 to i1, !dbg !1526
  br i1 %29, label %30, label %31, !dbg !1528

30:                                               ; preds = %28
  br label %138, !dbg !1529

31:                                               ; preds = %28
  %32 = trunc i8 %.06 to i1, !dbg !1530
  %33 = xor i1 %32, true, !dbg !1531
  %34 = zext i1 %33 to i8, !dbg !1532
  call void @llvm.dbg.value(metadata i8 %34, metadata !1474, metadata !DIExpression()), !dbg !1490
  call void @check_start_new_arg(ptr noundef %4), !dbg !1533
  %35 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %35, metadata !1470, metadata !DIExpression()), !dbg !1490
  br label %140, !dbg !1535, !llvm.loop !1536

36:                                               ; preds = %24
  %37 = trunc i8 %.06 to i1, !dbg !1538
  br i1 %37, label %38, label %39, !dbg !1540

38:                                               ; preds = %36
  br label %138, !dbg !1541

39:                                               ; preds = %36
  %40 = trunc i8 %.04 to i1, !dbg !1542
  %41 = xor i1 %40, true, !dbg !1543
  %42 = zext i1 %41 to i8, !dbg !1544
  call void @llvm.dbg.value(metadata i8 %42, metadata !1473, metadata !DIExpression()), !dbg !1490
  call void @check_start_new_arg(ptr noundef %4), !dbg !1545
  %43 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !1546
  call void @llvm.dbg.value(metadata ptr %43, metadata !1470, metadata !DIExpression()), !dbg !1490
  br label %140, !dbg !1547, !llvm.loop !1536

44:                                               ; preds = %24, %24, %24, %24, %24, %24
  %45 = trunc i8 %.06 to i1, !dbg !1548
  br i1 %45, label %48, label %46, !dbg !1550

46:                                               ; preds = %44
  %47 = trunc i8 %.04 to i1, !dbg !1551
  br i1 %47, label %48, label %49, !dbg !1552

48:                                               ; preds = %46, %44
  br label %138, !dbg !1553

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 4, !dbg !1554
  store i8 1, ptr %50, align 4, !dbg !1555, !tbaa !1513
  %51 = call i64 @strspn(ptr noundef %.01, ptr noundef @.str.35), !dbg !1556
  %52 = getelementptr inbounds i8, ptr %.01, i64 %51, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %52, metadata !1470, metadata !DIExpression()), !dbg !1490
  br label %140, !dbg !1558, !llvm.loop !1536

53:                                               ; preds = %24
  %54 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 4, !dbg !1559
  %55 = load i8, ptr %54, align 4, !dbg !1559, !tbaa !1513, !range !740, !noundef !576
  %56 = trunc i8 %55 to i1, !dbg !1559
  br i1 %56, label %58, label %57, !dbg !1561

57:                                               ; preds = %53
  br label %138, !dbg !1562

58:                                               ; preds = %53
  br label %140, !dbg !1563

59:                                               ; preds = %24
  %60 = trunc i8 %.06 to i1, !dbg !1564
  br i1 %60, label %61, label %72, !dbg !1566

61:                                               ; preds = %59
  %62 = getelementptr inbounds i8, ptr %.01, i64 1, !dbg !1567
  %63 = load i8, ptr %62, align 1, !dbg !1567, !tbaa !767
  %64 = sext i8 %63 to i32, !dbg !1567
  %65 = icmp ne i32 %64, 92, !dbg !1568
  br i1 %65, label %66, label %72, !dbg !1569

66:                                               ; preds = %61
  %67 = getelementptr inbounds i8, ptr %.01, i64 1, !dbg !1570
  %68 = load i8, ptr %67, align 1, !dbg !1570, !tbaa !767
  %69 = sext i8 %68 to i32, !dbg !1570
  %70 = icmp ne i32 %69, 39, !dbg !1571
  br i1 %70, label %71, label %72, !dbg !1572

71:                                               ; preds = %66
  br label %138, !dbg !1573

72:                                               ; preds = %66, %61, %59
  %73 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !1574
  call void @llvm.dbg.value(metadata ptr %73, metadata !1470, metadata !DIExpression()), !dbg !1490
  %74 = load i8, ptr %73, align 1, !dbg !1575, !tbaa !767
  call void @llvm.dbg.value(metadata i8 %74, metadata !1483, metadata !DIExpression()), !dbg !1523
  %75 = sext i8 %74 to i32, !dbg !1576
  switch i32 %75, label %93 [
    i32 34, label %76
    i32 35, label %76
    i32 36, label %76
    i32 39, label %76
    i32 92, label %76
    i32 95, label %77
    i32 99, label %83
    i32 102, label %87
    i32 110, label %88
    i32 114, label %89
    i32 116, label %90
    i32 118, label %91
    i32 0, label %92
  ], !dbg !1577

76:                                               ; preds = %72, %72, %72, %72, %72
  br label %95, !dbg !1578

77:                                               ; preds = %72
  %78 = trunc i8 %.04 to i1, !dbg !1580
  br i1 %78, label %82, label %79, !dbg !1582

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %73, i32 1, !dbg !1583
  call void @llvm.dbg.value(metadata ptr %80, metadata !1470, metadata !DIExpression()), !dbg !1490
  %81 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 4, !dbg !1585
  store i8 1, ptr %81, align 4, !dbg !1586, !tbaa !1513
  br label %140, !dbg !1587, !llvm.loop !1536

82:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i8 32, metadata !1483, metadata !DIExpression()), !dbg !1523
  br label %95, !dbg !1588

83:                                               ; preds = %72
  %84 = trunc i8 %.04 to i1, !dbg !1589
  br i1 %84, label %85, label %86, !dbg !1591

85:                                               ; preds = %83
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef @.str.72), !dbg !1592
  unreachable, !dbg !1592

86:                                               ; preds = %83
  br label %140, !dbg !1593

87:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i8 12, metadata !1483, metadata !DIExpression()), !dbg !1523
  br label %95, !dbg !1594

88:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i8 10, metadata !1483, metadata !DIExpression()), !dbg !1523
  br label %95, !dbg !1595

89:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i8 13, metadata !1483, metadata !DIExpression()), !dbg !1523
  br label %95, !dbg !1596

90:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i8 9, metadata !1483, metadata !DIExpression()), !dbg !1523
  br label %95, !dbg !1597

91:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i8 11, metadata !1483, metadata !DIExpression()), !dbg !1523
  br label %95, !dbg !1598

92:                                               ; preds = %72
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef @.str.73), !dbg !1599
  unreachable, !dbg !1599

93:                                               ; preds = %72
  %94 = sext i8 %74 to i32, !dbg !1600
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef @.str.74, i32 noundef %94), !dbg !1600
  unreachable, !dbg !1600

95:                                               ; preds = %91, %90, %89, %88, %87, %82, %76
  %.08 = phi i8 [ 11, %91 ], [ 9, %90 ], [ 13, %89 ], [ 10, %88 ], [ 12, %87 ], [ 32, %82 ], [ %74, %76 ], !dbg !1601
  call void @llvm.dbg.value(metadata i8 %.08, metadata !1483, metadata !DIExpression()), !dbg !1523
  br label %138, !dbg !1602

96:                                               ; preds = %24
  %97 = trunc i8 %.06 to i1, !dbg !1603
  br i1 %97, label %98, label %99, !dbg !1605

98:                                               ; preds = %96
  br label %138, !dbg !1606

99:                                               ; preds = %96
  %100 = call ptr @extract_varname(ptr noundef %.01), !dbg !1607
  call void @llvm.dbg.value(metadata ptr %100, metadata !1485, metadata !DIExpression()), !dbg !1608
  %101 = icmp ne ptr %100, null, !dbg !1609
  br i1 %101, label %103, label %102, !dbg !1611

102:                                              ; preds = %99
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef @.str.75, ptr noundef %.01), !dbg !1612
  unreachable, !dbg !1612

103:                                              ; preds = %99
  %104 = call ptr @getenv(ptr noundef %100), !dbg !1613
  call void @llvm.dbg.value(metadata ptr %104, metadata !1488, metadata !DIExpression()), !dbg !1608
  %105 = icmp ne ptr %104, null, !dbg !1614
  br i1 %105, label %106, label %125, !dbg !1616

106:                                              ; preds = %103
  call void @check_start_new_arg(ptr noundef %4), !dbg !1617
  br label %107, !dbg !1619

107:                                              ; preds = %106
  %108 = load i8, ptr @dev_debug, align 1, !dbg !1620, !tbaa !692, !range !740, !noundef !576
  %109 = trunc i8 %108 to i1, !dbg !1620
  br i1 %109, label %110, label %114, !dbg !1623

110:                                              ; preds = %107
  %111 = load ptr, ptr @__stderrp, align 8, !dbg !1620, !tbaa !481
  %112 = call ptr @quote(ptr noundef %104), !dbg !1620
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef @.str.76, ptr noundef %100, ptr noundef %112), !dbg !1620
  br label %114, !dbg !1620

114:                                              ; preds = %110, %107
  br label %115, !dbg !1623

115:                                              ; preds = %114
  br label %116, !dbg !1623

116:                                              ; preds = %115
  br label %117, !dbg !1624

117:                                              ; preds = %122, %116
  %.02 = phi ptr [ %104, %116 ], [ %123, %122 ], !dbg !1608
  call void @llvm.dbg.value(metadata ptr %.02, metadata !1488, metadata !DIExpression()), !dbg !1608
  %118 = load i8, ptr %.02, align 1, !dbg !1625, !tbaa !767
  %119 = icmp ne i8 %118, 0, !dbg !1628
  br i1 %119, label %120, label %124, !dbg !1628

120:                                              ; preds = %117
  %121 = load i8, ptr %.02, align 1, !dbg !1629, !tbaa !767
  call void @splitbuf_append_byte(ptr noundef %4, i8 noundef signext %121), !dbg !1630
  br label %122, !dbg !1630

122:                                              ; preds = %120
  %123 = getelementptr inbounds i8, ptr %.02, i32 1, !dbg !1631
  call void @llvm.dbg.value(metadata ptr %123, metadata !1488, metadata !DIExpression()), !dbg !1608
  br label %117, !dbg !1632, !llvm.loop !1633

124:                                              ; preds = %117
  br label %135, !dbg !1635

125:                                              ; preds = %103
  br label %126, !dbg !1636

126:                                              ; preds = %125
  %127 = load i8, ptr @dev_debug, align 1, !dbg !1637, !tbaa !692, !range !740, !noundef !576
  %128 = trunc i8 %127 to i1, !dbg !1637
  br i1 %128, label %129, label %132, !dbg !1640

129:                                              ; preds = %126
  %130 = load ptr, ptr @__stderrp, align 8, !dbg !1637, !tbaa !481
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.77, ptr noundef %100), !dbg !1637
  br label %132, !dbg !1637

132:                                              ; preds = %129, %126
  br label %133, !dbg !1640

133:                                              ; preds = %132
  br label %134, !dbg !1640

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134, %124
  %136 = call ptr @strchr(ptr noundef %.01, i32 noundef 125), !dbg !1641
  %137 = getelementptr inbounds i8, ptr %136, i64 1, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %137, metadata !1470, metadata !DIExpression()), !dbg !1490
  br label %140

138:                                              ; preds = %98, %95, %71, %57, %48, %38, %30, %24
  %.19 = phi i8 [ %25, %24 ], [ %25, %98 ], [ %25, %71 ], [ %.08, %95 ], [ %25, %57 ], [ %25, %48 ], [ %25, %38 ], [ %25, %30 ], !dbg !1523
  %.1 = phi ptr [ %.01, %24 ], [ %.01, %98 ], [ %.01, %71 ], [ %73, %95 ], [ %.01, %57 ], [ %.01, %48 ], [ %.01, %38 ], [ %.01, %30 ]
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1470, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 %.19, metadata !1483, metadata !DIExpression()), !dbg !1523
  call void @check_start_new_arg(ptr noundef %4), !dbg !1643
  call void @splitbuf_append_byte(ptr noundef %4, i8 noundef signext %.19), !dbg !1644
  %139 = getelementptr inbounds i8, ptr %.1, i32 1, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %139, metadata !1470, metadata !DIExpression()), !dbg !1490
  br label %140, !dbg !1537

140:                                              ; preds = %138, %135, %86, %79, %58, %49, %39, %31
  %.17 = phi i8 [ %.06, %138 ], [ %.06, %135 ], [ %.06, %86 ], [ %.06, %79 ], [ %.06, %58 ], [ %.06, %49 ], [ %.06, %39 ], [ %34, %31 ], !dbg !1490
  %.15 = phi i8 [ %.04, %138 ], [ %.04, %135 ], [ %.04, %86 ], [ %.04, %79 ], [ %.04, %58 ], [ %.04, %49 ], [ %42, %39 ], [ %.04, %31 ], !dbg !1490
  %.03 = phi i32 [ 0, %138 ], [ 2, %135 ], [ 5, %86 ], [ 2, %79 ], [ 5, %58 ], [ 2, %49 ], [ 2, %39 ], [ 2, %31 ]
  %.2 = phi ptr [ %139, %138 ], [ %137, %135 ], [ %73, %86 ], [ %80, %79 ], [ %.01, %58 ], [ %52, %49 ], [ %43, %39 ], [ %35, %31 ]
  call void @llvm.dbg.value(metadata ptr %.2, metadata !1470, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 %.15, metadata !1473, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 %.17, metadata !1474, metadata !DIExpression()), !dbg !1490
  switch i32 %.03, label %152 [
    i32 0, label %141
    i32 2, label %21
    i32 5, label %148
  ]

141:                                              ; preds = %140
  br label %21, !dbg !1518, !llvm.loop !1536

142:                                              ; preds = %21
  %143 = trunc i8 %.04 to i1, !dbg !1646
  br i1 %143, label %146, label %144, !dbg !1648

144:                                              ; preds = %142
  %145 = trunc i8 %.06 to i1, !dbg !1649
  br i1 %145, label %146, label %147, !dbg !1650

146:                                              ; preds = %144, %142
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef @.str.78), !dbg !1651
  unreachable, !dbg !1651

147:                                              ; preds = %144
  br label %148, !dbg !1649

148:                                              ; preds = %147, %140
  call void @llvm.dbg.label(metadata !1489), !dbg !1652
  call void @splitbuf_append_byte(ptr noundef %4, i8 noundef signext 0), !dbg !1653
  %149 = getelementptr inbounds %struct.splitbuf, ptr %4, i32 0, i32 1, !dbg !1654
  %150 = load i32, ptr %149, align 8, !dbg !1654, !tbaa !1502
  store i32 %150, ptr %2, align 4, !dbg !1655, !tbaa !665
  %151 = call ptr @splitbuf_finishup(ptr noundef %4), !dbg !1656
  br label %152, !dbg !1657

152:                                              ; preds = %148, %140
  %.0 = phi ptr [ undef, %140 ], [ %151, %148 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr %4) #13, !dbg !1658
  ret ptr %.0, !dbg !1658
}

; Function Attrs: allocsize(0,1)
declare !dbg !1659 noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) #8

; Function Attrs: nounwind ssp uwtable
define internal void @check_start_new_arg(ptr noundef %0) #7 !dbg !1663 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1668, metadata !DIExpression()), !dbg !1672
  %2 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 4, !dbg !1673
  %3 = load i8, ptr %2, align 4, !dbg !1673, !tbaa !1513, !range !740, !noundef !576
  %4 = trunc i8 %3 to i1, !dbg !1673
  br i1 %4, label %5, label %31, !dbg !1674

5:                                                ; preds = %1
  call void @splitbuf_append_byte(ptr noundef %0, i8 noundef signext 0), !dbg !1675
  %6 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 1, !dbg !1676
  %7 = load i32, ptr %6, align 8, !dbg !1676, !tbaa !1502
  call void @llvm.dbg.value(metadata i32 %7, metadata !1669, metadata !DIExpression()), !dbg !1677
  %8 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 2, !dbg !1678
  %9 = load i64, ptr %8, align 8, !dbg !1678, !tbaa !1507
  %10 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 3, !dbg !1680
  %11 = load i32, ptr %10, align 8, !dbg !1680, !tbaa !1510
  %12 = add nsw i32 %7, %11, !dbg !1681
  %13 = add nsw i32 %12, 1, !dbg !1682
  %14 = sext i32 %13 to i64, !dbg !1683
  %15 = icmp sle i64 %9, %14, !dbg !1684
  br i1 %15, label %16, label %17, !dbg !1685

16:                                               ; preds = %5
  call void @splitbuf_grow(ptr noundef %0), !dbg !1686
  br label %17, !dbg !1686

17:                                               ; preds = %16, %5
  %18 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1687
  %19 = load ptr, ptr %18, align 8, !dbg !1687, !tbaa !1498
  %20 = sext i32 %7 to i64, !dbg !1688
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20, !dbg !1688
  %22 = load ptr, ptr %21, align 8, !dbg !1688, !tbaa !481
  %23 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1689
  %24 = load ptr, ptr %23, align 8, !dbg !1689, !tbaa !1498
  %25 = add nsw i32 %7, 1, !dbg !1690
  %26 = sext i32 %25 to i64, !dbg !1691
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26, !dbg !1691
  store ptr %22, ptr %27, align 8, !dbg !1692, !tbaa !481
  %28 = add nsw i32 %7, 1, !dbg !1693
  %29 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 1, !dbg !1694
  store i32 %28, ptr %29, align 8, !dbg !1695, !tbaa !1502
  %30 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 4, !dbg !1696
  store i8 0, ptr %30, align 4, !dbg !1697, !tbaa !1513
  br label %31, !dbg !1698

31:                                               ; preds = %17, %1
  ret void, !dbg !1699
}

declare !dbg !1700 i64 @strspn(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @extract_varname(ptr noundef %0) #7 !dbg !1703 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1707, metadata !DIExpression()), !dbg !1710
  %2 = call ptr @scan_varname(ptr noundef %0) #16, !dbg !1711
  call void @llvm.dbg.value(metadata ptr %2, metadata !1709, metadata !DIExpression()), !dbg !1710
  %3 = icmp ne ptr %2, null, !dbg !1712
  br i1 %3, label %5, label %4, !dbg !1714

4:                                                ; preds = %1
  br label %23, !dbg !1715

5:                                                ; preds = %1
  %6 = ptrtoint ptr %2 to i64, !dbg !1716
  %7 = ptrtoint ptr %0 to i64, !dbg !1716
  %8 = sub i64 %6, %7, !dbg !1716
  %9 = sub nsw i64 %8, 2, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %9, metadata !1708, metadata !DIExpression()), !dbg !1710
  %10 = load i64, ptr @vnlen, align 8, !dbg !1718, !tbaa !919
  %11 = icmp sge i64 %9, %10, !dbg !1720
  br i1 %11, label %12, label %17, !dbg !1721

12:                                               ; preds = %5
  %13 = add nsw i64 %9, 1, !dbg !1722
  store i64 %13, ptr @vnlen, align 8, !dbg !1724, !tbaa !919
  %14 = load ptr, ptr @varname, align 8, !dbg !1725, !tbaa !481
  %15 = load i64, ptr @vnlen, align 8, !dbg !1726, !tbaa !919
  %16 = call ptr @xrealloc(ptr noundef %14, i64 noundef %15) #17, !dbg !1727
  store ptr %16, ptr @varname, align 8, !dbg !1728, !tbaa !481
  br label %17, !dbg !1729

17:                                               ; preds = %12, %5
  %18 = load ptr, ptr @varname, align 8, !dbg !1730, !tbaa !481
  %19 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1731
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %19, i64 %9, i1 false), !dbg !1732
  %20 = load ptr, ptr @varname, align 8, !dbg !1733, !tbaa !481
  %21 = getelementptr inbounds i8, ptr %20, i64 %9, !dbg !1733
  store i8 0, ptr %21, align 1, !dbg !1734, !tbaa !767
  %22 = load ptr, ptr @varname, align 8, !dbg !1735, !tbaa !481
  br label %23, !dbg !1736

23:                                               ; preds = %17, %4
  %.0 = phi ptr [ %22, %17 ], [ null, %4 ], !dbg !1710
  ret ptr %.0, !dbg !1737
}

declare !dbg !1738 ptr @getenv(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @splitbuf_append_byte(ptr noundef %0, i8 noundef signext %1) #7 !dbg !1739 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1743, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 %1, metadata !1744, metadata !DIExpression()), !dbg !1746
  %3 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1747
  %4 = load ptr, ptr %3, align 8, !dbg !1747, !tbaa !1498
  %5 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 1, !dbg !1748
  %6 = load i32, ptr %5, align 8, !dbg !1748, !tbaa !1502
  %7 = sext i32 %6 to i64, !dbg !1749
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !1749
  %9 = load ptr, ptr %8, align 8, !dbg !1749, !tbaa !481
  %10 = ptrtoint ptr %9 to i64, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %10, metadata !1745, metadata !DIExpression()), !dbg !1746
  %11 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 2, !dbg !1751
  %12 = load i64, ptr %11, align 8, !dbg !1751, !tbaa !1507
  %13 = mul i64 %12, 8, !dbg !1753
  %14 = icmp ule i64 %13, %10, !dbg !1754
  br i1 %14, label %15, label %16, !dbg !1755

15:                                               ; preds = %2
  call void @splitbuf_grow(ptr noundef %0), !dbg !1756
  br label %16, !dbg !1756

16:                                               ; preds = %15, %2
  %17 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1757
  %18 = load ptr, ptr %17, align 8, !dbg !1757, !tbaa !1498
  %19 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 2, !dbg !1758
  %20 = load i64, ptr %19, align 8, !dbg !1758, !tbaa !1507
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20, !dbg !1759
  %22 = getelementptr inbounds i8, ptr %21, i64 %10, !dbg !1760
  store i8 %1, ptr %22, align 1, !dbg !1761, !tbaa !767
  %23 = add nsw i64 %10, 1, !dbg !1762
  %24 = inttoptr i64 %23 to ptr, !dbg !1763
  %25 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1764
  %26 = load ptr, ptr %25, align 8, !dbg !1764, !tbaa !1498
  %27 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 1, !dbg !1765
  %28 = load i32, ptr %27, align 8, !dbg !1765, !tbaa !1502
  %29 = sext i32 %28 to i64, !dbg !1766
  %30 = getelementptr inbounds ptr, ptr %26, i64 %29, !dbg !1766
  store ptr %24, ptr %30, align 8, !dbg !1767, !tbaa !481
  ret void, !dbg !1768
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @splitbuf_finishup(ptr noundef %0) #7 !dbg !1769 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1773, metadata !DIExpression()), !dbg !1779
  %2 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 1, !dbg !1780
  %3 = load i32, ptr %2, align 8, !dbg !1780, !tbaa !1502
  call void @llvm.dbg.value(metadata i32 %3, metadata !1774, metadata !DIExpression()), !dbg !1779
  %4 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1781
  %5 = load ptr, ptr %4, align 8, !dbg !1781, !tbaa !1498
  call void @llvm.dbg.value(metadata ptr %5, metadata !1775, metadata !DIExpression()), !dbg !1779
  %6 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1782
  %7 = load ptr, ptr %6, align 8, !dbg !1782, !tbaa !1498
  %8 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 2, !dbg !1783
  %9 = load i64, ptr %8, align 8, !dbg !1783, !tbaa !1507
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %10, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 1, metadata !1777, metadata !DIExpression()), !dbg !1785
  br label %11, !dbg !1786

11:                                               ; preds = %22, %1
  %.0 = phi i32 [ 1, %1 ], [ %23, %22 ], !dbg !1787
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1777, metadata !DIExpression()), !dbg !1785
  %12 = icmp slt i32 %.0, %3, !dbg !1788
  br i1 %12, label %14, label %13, !dbg !1790

13:                                               ; preds = %11
  br label %24

14:                                               ; preds = %11
  %15 = sext i32 %.0 to i64, !dbg !1791
  %16 = getelementptr inbounds ptr, ptr %5, i64 %15, !dbg !1791
  %17 = load ptr, ptr %16, align 8, !dbg !1791, !tbaa !481
  %18 = ptrtoint ptr %17 to i64, !dbg !1792
  %19 = getelementptr inbounds i8, ptr %10, i64 %18, !dbg !1793
  %20 = sext i32 %.0 to i64, !dbg !1794
  %21 = getelementptr inbounds ptr, ptr %5, i64 %20, !dbg !1794
  store ptr %19, ptr %21, align 8, !dbg !1795, !tbaa !481
  br label %22, !dbg !1794

22:                                               ; preds = %14
  %23 = add nsw i32 %.0, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %23, metadata !1777, metadata !DIExpression()), !dbg !1785
  br label %11, !dbg !1797, !llvm.loop !1798

24:                                               ; preds = %13
  ret ptr %5, !dbg !1800
}

; Function Attrs: nounwind ssp uwtable
define internal void @splitbuf_grow(ptr noundef %0) #7 !dbg !1801 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1803, metadata !DIExpression()), !dbg !1806
  %2 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 2, !dbg !1807
  %3 = load i64, ptr %2, align 8, !dbg !1807, !tbaa !1507
  call void @llvm.dbg.value(metadata i64 %3, metadata !1804, metadata !DIExpression()), !dbg !1806
  %4 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1808
  %5 = load ptr, ptr %4, align 8, !dbg !1808, !tbaa !1498
  %6 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 1, !dbg !1809
  %7 = load i32, ptr %6, align 8, !dbg !1809, !tbaa !1502
  %8 = sext i32 %7 to i64, !dbg !1810
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8, !dbg !1810
  %10 = load ptr, ptr %9, align 8, !dbg !1810, !tbaa !481
  %11 = ptrtoint ptr %10 to i64, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %11, metadata !1805, metadata !DIExpression()), !dbg !1806
  %12 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1812
  %13 = load ptr, ptr %12, align 8, !dbg !1812, !tbaa !1498
  %14 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 2, !dbg !1813
  %15 = call nonnull ptr @xpalloc(ptr noundef %13, ptr noundef %14, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16), !dbg !1814
  %16 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1815
  store ptr %15, ptr %16, align 8, !dbg !1816, !tbaa !1498
  %17 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1817
  %18 = load ptr, ptr %17, align 8, !dbg !1817, !tbaa !1498
  %19 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 2, !dbg !1818
  %20 = load i64, ptr %19, align 8, !dbg !1818, !tbaa !1507
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20, !dbg !1819
  %22 = getelementptr inbounds %struct.splitbuf, ptr %0, i32 0, i32 0, !dbg !1820
  %23 = load ptr, ptr %22, align 8, !dbg !1820, !tbaa !1498
  %24 = getelementptr inbounds ptr, ptr %23, i64 %3, !dbg !1821
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %21, ptr align 8 %24, i64 %11, i1 false), !dbg !1822
  ret void, !dbg !1823
}

declare !dbg !1824 nonnull ptr @xpalloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind ssp willreturn memory(read) uwtable
define internal ptr @scan_varname(ptr noundef %0) #9 !dbg !1828 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1830, metadata !DIExpression()), !dbg !1834
  %2 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1835
  %3 = load i8, ptr %2, align 1, !dbg !1835, !tbaa !767
  %4 = sext i8 %3 to i32, !dbg !1835
  %5 = icmp eq i32 %4, 123, !dbg !1836
  br i1 %5, label %6, label %38, !dbg !1837

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1838
  %8 = load i8, ptr %7, align 1, !dbg !1838, !tbaa !767
  %9 = sext i8 %8 to i32, !dbg !1838
  %10 = call zeroext i1 @c_isalpha(i32 noundef %9), !dbg !1839
  br i1 %10, label %16, label %11, !dbg !1840

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1841
  %13 = load i8, ptr %12, align 1, !dbg !1841, !tbaa !767
  %14 = sext i8 %13 to i32, !dbg !1841
  %15 = icmp eq i32 %14, 95, !dbg !1842
  br i1 %15, label %16, label %38, !dbg !1843

16:                                               ; preds = %11, %6
  %17 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1844
  call void @llvm.dbg.value(metadata ptr %17, metadata !1831, metadata !DIExpression()), !dbg !1845
  br label %18, !dbg !1846

18:                                               ; preds = %28, %16
  %.02 = phi ptr [ %17, %16 ], [ %29, %28 ], !dbg !1845
  call void @llvm.dbg.value(metadata ptr %.02, metadata !1831, metadata !DIExpression()), !dbg !1845
  %19 = load i8, ptr %.02, align 1, !dbg !1847, !tbaa !767
  %20 = sext i8 %19 to i32, !dbg !1847
  %21 = call zeroext i1 @c_isalnum(i32 noundef %20), !dbg !1848
  br i1 %21, label %26, label %22, !dbg !1849

22:                                               ; preds = %18
  %23 = load i8, ptr %.02, align 1, !dbg !1850, !tbaa !767
  %24 = sext i8 %23 to i32, !dbg !1850
  %25 = icmp eq i32 %24, 95, !dbg !1851
  br label %26, !dbg !1849

26:                                               ; preds = %22, %18
  %27 = phi i1 [ true, %18 ], [ %25, %22 ]
  br i1 %27, label %28, label %30, !dbg !1846

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, ptr %.02, i32 1, !dbg !1852
  call void @llvm.dbg.value(metadata ptr %29, metadata !1831, metadata !DIExpression()), !dbg !1845
  br label %18, !dbg !1846, !llvm.loop !1853

30:                                               ; preds = %26
  %31 = load i8, ptr %.02, align 1, !dbg !1855, !tbaa !767
  %32 = sext i8 %31 to i32, !dbg !1855
  %33 = icmp eq i32 %32, 125, !dbg !1857
  br i1 %33, label %34, label %35, !dbg !1858

34:                                               ; preds = %30
  br label %36, !dbg !1859

35:                                               ; preds = %30
  br label %36, !dbg !1860

36:                                               ; preds = %35, %34
  %.01 = phi i32 [ 1, %34 ], [ 0, %35 ]
  switch i32 %.01, label %40 [
    i32 0, label %37
    i32 1, label %39
  ]

37:                                               ; preds = %36
  br label %38, !dbg !1861

38:                                               ; preds = %37, %11, %1
  br label %39, !dbg !1862

39:                                               ; preds = %38, %36
  %.1 = phi ptr [ %.02, %36 ], [ null, %38 ], !dbg !1834
  ret ptr %.1, !dbg !1863

40:                                               ; preds = %36
  unreachable
}

; Function Attrs: allocsize(1)
declare !dbg !1864 ptr @xrealloc(ptr noundef, i64 noundef) #10

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally zeroext i1 @c_isalpha(i32 noundef %0) #3 !dbg !1867 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1872, metadata !DIExpression()), !dbg !1873
  switch i32 %0, label %3 [
    i32 97, label %2
    i32 98, label %2
    i32 99, label %2
    i32 100, label %2
    i32 101, label %2
    i32 102, label %2
    i32 103, label %2
    i32 104, label %2
    i32 105, label %2
    i32 106, label %2
    i32 107, label %2
    i32 108, label %2
    i32 109, label %2
    i32 110, label %2
    i32 111, label %2
    i32 112, label %2
    i32 113, label %2
    i32 114, label %2
    i32 115, label %2
    i32 116, label %2
    i32 117, label %2
    i32 118, label %2
    i32 119, label %2
    i32 120, label %2
    i32 121, label %2
    i32 122, label %2
    i32 65, label %2
    i32 66, label %2
    i32 67, label %2
    i32 68, label %2
    i32 69, label %2
    i32 70, label %2
    i32 71, label %2
    i32 72, label %2
    i32 73, label %2
    i32 74, label %2
    i32 75, label %2
    i32 76, label %2
    i32 77, label %2
    i32 78, label %2
    i32 79, label %2
    i32 80, label %2
    i32 81, label %2
    i32 82, label %2
    i32 83, label %2
    i32 84, label %2
    i32 85, label %2
    i32 86, label %2
    i32 87, label %2
    i32 88, label %2
    i32 89, label %2
    i32 90, label %2
  ], !dbg !1874

2:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %4, !dbg !1875

3:                                                ; preds = %1
  br label %4, !dbg !1877

4:                                                ; preds = %3, %2
  %.0 = phi i1 [ false, %3 ], [ true, %2 ], !dbg !1878
  ret i1 %.0, !dbg !1879
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally zeroext i1 @c_isalnum(i32 noundef %0) #3 !dbg !1880 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1882, metadata !DIExpression()), !dbg !1883
  switch i32 %0, label %3 [
    i32 48, label %2
    i32 49, label %2
    i32 50, label %2
    i32 51, label %2
    i32 52, label %2
    i32 53, label %2
    i32 54, label %2
    i32 55, label %2
    i32 56, label %2
    i32 57, label %2
    i32 97, label %2
    i32 98, label %2
    i32 99, label %2
    i32 100, label %2
    i32 101, label %2
    i32 102, label %2
    i32 103, label %2
    i32 104, label %2
    i32 105, label %2
    i32 106, label %2
    i32 107, label %2
    i32 108, label %2
    i32 109, label %2
    i32 110, label %2
    i32 111, label %2
    i32 112, label %2
    i32 113, label %2
    i32 114, label %2
    i32 115, label %2
    i32 116, label %2
    i32 117, label %2
    i32 118, label %2
    i32 119, label %2
    i32 120, label %2
    i32 121, label %2
    i32 122, label %2
    i32 65, label %2
    i32 66, label %2
    i32 67, label %2
    i32 68, label %2
    i32 69, label %2
    i32 70, label %2
    i32 71, label %2
    i32 72, label %2
    i32 73, label %2
    i32 74, label %2
    i32 75, label %2
    i32 76, label %2
    i32 77, label %2
    i32 78, label %2
    i32 79, label %2
    i32 80, label %2
    i32 81, label %2
    i32 82, label %2
    i32 83, label %2
    i32 84, label %2
    i32 85, label %2
    i32 86, label %2
    i32 87, label %2
    i32 88, label %2
    i32 89, label %2
    i32 90, label %2
  ], !dbg !1884

2:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %4, !dbg !1885

3:                                                ; preds = %1
  br label %4, !dbg !1887

4:                                                ; preds = %3, %2
  %.0 = phi i1 [ false, %3 ], [ true, %2 ], !dbg !1888
  ret i1 %.0, !dbg !1889
}

declare !dbg !1890 i32 @sigfillset(ptr noundef) #2

declare !dbg !1891 noalias nonnull ptr @xstrdup(ptr noundef) #2

declare !dbg !1892 ptr @strtok(ptr noundef, ptr noundef) #2

declare !dbg !1895 i32 @operand2sig(ptr noundef, ptr noundef) #2

declare !dbg !1899 void @rpl_free(ptr noundef) #2

declare !dbg !1902 nonnull ptr @x2nrealloc(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: allocsize(0)
declare !dbg !1906 noalias nonnull ptr @xmalloc(i64 noundef) #11

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
attributes #8 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn }
attributes #13 = { nounwind }
attributes #14 = { allocsize(0) }
attributes #15 = { allocsize(0,1) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { allocsize(1) }

!llvm.dbg.cu = !{!83}
!llvm.ident = !{!464}
!llvm.module.flags = !{!465, !466, !467, !468, !469, !470}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/env.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 62)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 60)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1496, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 187)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 56)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1144, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 143)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 74)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 624, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 78)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 75)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !34, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !44, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 48)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 57)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 72)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1536, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 192)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 4)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 760, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "shortopts", scope: !83, file: !2, line: 79, type: !463, isLocal: true, isDefinition: true)
!83 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !125, globals: !138, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!84 = !{!85, !93, !99, !104, !118}
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 84, baseType: !87, size: 32, elements: !88)
!86 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!87 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!90 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!91 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!92 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 83, baseType: !87, size: 32, elements: !94)
!94 = !{!95, !96, !97, !98}
!95 = !DIEnumerator(name: "DEFAULT_SIGNAL_OPTION", value: 128)
!96 = !DIEnumerator(name: "IGNORE_SIGNAL_OPTION", value: 129)
!97 = !DIEnumerator(name: "BLOCK_SIGNAL_OPTION", value: 130)
!98 = !DIEnumerator(name: "LIST_SIGNAL_HANDLING_OPTION", value: 131)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 332, baseType: !100, size: 32, elements: !101)
!100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!101 = !{!102, !103}
!102 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!103 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !105, line: 32, baseType: !87, size: 32, elements: !106)
!105 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!107 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!108 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!109 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!110 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!111 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!112 = !DIEnumerator(name: "c_quoting_style", value: 5)
!113 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!114 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!115 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!116 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!117 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "SIGNAL_MODE", file: !2, line: 55, baseType: !87, size: 32, elements: !119)
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIEnumerator(name: "UNCHANGED", value: 0)
!121 = !DIEnumerator(name: "DEFAULT", value: 1)
!122 = !DIEnumerator(name: "DEFAULT_NOERR", value: 2)
!123 = !DIEnumerator(name: "IGNORE", value: 3)
!124 = !DIEnumerator(name: "IGNORE_NOERR", value: 4)
!125 = !{!126, !128, !129, !130, !135}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !131, line: 32, baseType: !132)
!131 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_intptr_t.h", directory: "")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_intptr_t", file: !133, line: 51, baseType: !134)
!133 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!134 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !100}
!138 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49, !51, !56, !61, !66, !71, !76, !139, !144, !149, !154, !159, !164, !169, !174, !179, !206, !208, !210, !215, !217, !222, !224, !229, !234, !236, !241, !246, !248, !250, !252, !254, !259, !261, !263, !268, !273, !275, !277, !279, !281, !283, !285, !287, !289, !294, !296, !301, !306, !311, !81, !314, !319, !321, !326, !328, !330, !332, !334, !339, !341, !343, !345, !350, !362, !368, !374, !377, !379, !381, !388, !390, !392, !394, !396, !398, !403, !408, !413, !418, !423, !425, !427, !429, !431, !433, !438, !440, !442, !444, !446, !448, !450, !452, !454, !459, !461}
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 809, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 23)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 810, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 43)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 814, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 14)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 814, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 17)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 814, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 16)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 814, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 13)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 820, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 2)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 828, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 18)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "dummy_environ", scope: !181, file: !2, line: 829, type: !205, isLocal: true, isDefinition: true)
!181 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 751, type: !182, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !185)
!182 = !DISubroutineType(types: !183)
!183 = !{!100, !100, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!185 = !{!186, !187, !188, !189, !191, !192, !193, !194, !195, !200, !204}
!186 = !DILocalVariable(name: "argc", arg: 1, scope: !181, file: !2, line: 751, type: !100)
!187 = !DILocalVariable(name: "argv", arg: 2, scope: !181, file: !2, line: 751, type: !184)
!188 = !DILocalVariable(name: "optc", scope: !181, file: !2, line: 753, type: !100)
!189 = !DILocalVariable(name: "ignore_environment", scope: !181, file: !2, line: 754, type: !190)
!190 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!191 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !181, file: !2, line: 755, type: !190)
!192 = !DILocalVariable(name: "newdir", scope: !181, file: !2, line: 756, type: !126)
!193 = !DILocalVariable(name: "eq", scope: !181, file: !2, line: 835, type: !128)
!194 = !DILocalVariable(name: "program_specified", scope: !181, file: !2, line: 849, type: !190)
!195 = !DILocalVariable(name: "e", scope: !196, file: !2, line: 866, type: !198)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 864, column: 5)
!197 = distinct !DILexicalBlock(scope: !181, file: !2, line: 863, column: 7)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!200 = !DILocalVariable(name: "i", scope: !201, file: !2, line: 891, type: !100)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 891, column: 7)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 889, column: 5)
!203 = distinct !DILexicalBlock(scope: !181, file: !2, line: 888, column: 7)
!204 = !DILocalVariable(name: "exit_status", scope: !181, file: !2, line: 897, type: !100)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !79)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 838, type: !151, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 843, type: !151, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 853, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 40)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 859, type: !3, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !2, line: 868, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 5)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 881, type: !151, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 884, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 30)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 890, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 15)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 892, type: !161, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 898, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 3)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 900, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 7)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "dev_debug", scope: !83, file: !2, line: 48, type: !190, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "sig_mask_changed", scope: !83, file: !2, line: 71, type: !190, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "report_signal_handling", scope: !83, file: !2, line: 74, type: !190, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !86, line: 586, type: !44, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !86, line: 647, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1440, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 180)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !86, line: 660, type: !171, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !86, line: 660, type: !161, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !86, line: 661, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 10)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !86, line: 661, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 22)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !86, line: 662, type: !265, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !86, line: 662, type: !231, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !86, line: 663, type: !265, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !86, line: 664, type: !265, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !86, line: 665, type: !265, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !86, line: 678, type: !141, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !86, line: 678, type: !212, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !86, line: 683, type: !73, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !86, line: 689, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 71)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !86, line: 695, type: !219, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !86, line: 696, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 27)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !86, line: 698, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 51)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !86, line: 699, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 12)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "signals", scope: !83, file: !2, line: 62, type: !313, isLocal: true, isDefinition: true)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 19)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !219, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 6)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !323, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !231, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !151, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !166, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 21)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !323, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !166, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !219, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 8)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "longopts", scope: !83, file: !2, line: 91, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 3328, elements: !167)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !355, line: 50, size: 256, elements: !356)
!355 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!356 = !{!357, !358, !359, !361}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !355, line: 52, baseType: !126, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !354, file: !355, line: 55, baseType: !100, size: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !354, file: !355, line: 56, baseType: !360, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !354, file: !355, line: 57, baseType: !100, size: 32, offset: 192)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "usvars_used", scope: !83, file: !2, line: 45, type: !364, isLocal: true, isDefinition: true)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !365, line: 125, baseType: !366)
!365 = !DIFile(filename: "../lib/idx.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !367, line: 35, baseType: !134)
!367 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "usvars_alloc", scope: !83, file: !2, line: 44, type: !370, isLocal: true, isDefinition: true)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !371, line: 31, baseType: !372)
!371 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !133, line: 94, baseType: !373)
!373 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "usvars", scope: !83, file: !2, line: 43, type: !376, isLocal: true, isDefinition: true)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !171, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !2, line: 566, type: !316, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "block_signals", scope: !83, file: !2, line: 65, type: !383, isLocal: true, isDefinition: true)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !384, line: 31, baseType: !385)
!384 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_sigset_t.h", directory: "")
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_sigset_t", file: !386, line: 73, baseType: !387)
!386 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !133, line: 47, baseType: !87)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "unblock_signals", scope: !83, file: !2, line: 68, type: !383, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !231, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 524, type: !151, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 526, type: !151, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !2, line: 427, type: !53, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 41)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !2, line: 442, type: !405, isLocal: true, isDefinition: true)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 29)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !2, line: 455, type: !410, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 53)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !2, line: 463, type: !415, isLocal: true, isDefinition: true)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 25)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !420, isLocal: true, isDefinition: true)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 34)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !2, line: 481, type: !420, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "vnlen", scope: !83, file: !2, line: 52, type: !364, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "varname", scope: !83, file: !2, line: 51, type: !128, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !151, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !161, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !2, line: 597, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 42)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !435, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !226, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !347, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !243, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !316, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !2, line: 678, type: !420, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !2, line: 685, type: !323, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !2, line: 690, type: !347, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !2, line: 701, type: !456, isLocal: true, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 31)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !2, line: 707, type: !420, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !2, line: 734, type: !336, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 136, elements: !157)
!464 = !{!"Homebrew clang version 16.0.4"}
!465 = !{i32 7, !"Dwarf Version", i32 4}
!466 = !{i32 2, !"Debug Info Version", i32 3}
!467 = !{i32 1, !"wchar_size", i32 4}
!468 = !{i32 8, !"PIC Level", i32 2}
!469 = !{i32 7, !"uwtable", i32 2}
!470 = !{i32 7, !"frame-pointer", i32 2}
!471 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 109, type: !136, scopeLine: 110, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !472)
!472 = !{!473}
!473 = !DILocalVariable(name: "status", arg: 1, scope: !471, file: !2, line: 109, type: !100)
!474 = !DILocation(line: 0, scope: !471)
!475 = !DILocation(line: 111, column: 14, scope: !476)
!476 = distinct !DILexicalBlock(scope: !471, file: !2, line: 111, column: 7)
!477 = !DILocation(line: 111, column: 7, scope: !471)
!478 = !DILocation(line: 112, column: 5, scope: !476)
!479 = !DILocation(line: 112, column: 5, scope: !480)
!480 = distinct !DILexicalBlock(scope: !476, file: !2, line: 112, column: 5)
!481 = !{!482, !482, i64 0}
!482 = !{!"any pointer", !483, i64 0}
!483 = !{!"omnipotent char", !484, i64 0}
!484 = !{!"Simple C/C++ TBAA"}
!485 = !DILocation(line: 117, column: 15, scope: !486)
!486 = distinct !DILexicalBlock(scope: !476, file: !2, line: 114, column: 5)
!487 = !DILocation(line: 115, column: 7, scope: !486)
!488 = !DILocation(line: 120, column: 5, scope: !486)
!489 = !DILocation(line: 118, column: 7, scope: !486)
!490 = !DILocation(line: 122, column: 7, scope: !486)
!491 = !DILocation(line: 128, column: 5, scope: !486)
!492 = !DILocation(line: 124, column: 7, scope: !486)
!493 = !DILocation(line: 131, column: 5, scope: !486)
!494 = !DILocation(line: 129, column: 7, scope: !486)
!495 = !DILocation(line: 135, column: 5, scope: !486)
!496 = !DILocation(line: 132, column: 7, scope: !486)
!497 = !DILocation(line: 138, column: 5, scope: !486)
!498 = !DILocation(line: 136, column: 7, scope: !486)
!499 = !DILocation(line: 141, column: 5, scope: !486)
!500 = !DILocation(line: 139, column: 7, scope: !486)
!501 = !DILocation(line: 144, column: 5, scope: !486)
!502 = !DILocation(line: 142, column: 7, scope: !486)
!503 = !DILocation(line: 147, column: 5, scope: !486)
!504 = !DILocation(line: 145, column: 7, scope: !486)
!505 = !DILocation(line: 150, column: 5, scope: !486)
!506 = !DILocation(line: 148, column: 7, scope: !486)
!507 = !DILocation(line: 151, column: 39, scope: !486)
!508 = !DILocation(line: 151, column: 7, scope: !486)
!509 = !DILocation(line: 152, column: 42, scope: !486)
!510 = !DILocation(line: 152, column: 7, scope: !486)
!511 = !DILocation(line: 156, column: 5, scope: !486)
!512 = !DILocation(line: 153, column: 7, scope: !486)
!513 = !DILocation(line: 162, column: 5, scope: !486)
!514 = !DILocation(line: 157, column: 7, scope: !486)
!515 = !DILocation(line: 163, column: 7, scope: !486)
!516 = !DILocation(line: 164, column: 7, scope: !486)
!517 = !DILocation(line: 166, column: 3, scope: !471)
!518 = !DISubprogram(name: "fprintf", scope: !519, file: !519, line: 155, type: !520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!519 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!520 = !DISubroutineType(types: !521)
!521 = !{!100, !522, !575, null}
!522 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !525, line: 157, baseType: !526)
!525 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !525, line: 126, size: 1216, elements: !527)
!527 = !{!528, !531, !532, !533, !535, !536, !541, !542, !543, !547, !551, !559, !563, !564, !567, !568, !570, !572, !573, !574}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !526, file: !525, line: 127, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !526, file: !525, line: 128, baseType: !100, size: 32, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !526, file: !525, line: 129, baseType: !100, size: 32, offset: 96)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !526, file: !525, line: 130, baseType: !534, size: 16, offset: 128)
!534 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !526, file: !525, line: 131, baseType: !534, size: 16, offset: 144)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !526, file: !525, line: 132, baseType: !537, size: 128, offset: 192)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !525, line: 92, size: 128, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !537, file: !525, line: 93, baseType: !529, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !537, file: !525, line: 94, baseType: !100, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !526, file: !525, line: 133, baseType: !100, size: 32, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !526, file: !525, line: 136, baseType: !129, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !526, file: !525, line: 137, baseType: !544, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!100, !129}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !526, file: !525, line: 138, baseType: !548, size: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!100, !129, !128, !100}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !526, file: !525, line: 139, baseType: !552, size: 64, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!555, !129, !555, !100}
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !525, line: 81, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !386, line: 71, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !133, line: 48, baseType: !558)
!558 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !526, file: !525, line: 140, baseType: !560, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!100, !129, !126, !100}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !526, file: !525, line: 143, baseType: !537, size: 128, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !526, file: !525, line: 144, baseType: !565, size: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !525, line: 98, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !526, file: !525, line: 145, baseType: !100, size: 32, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !526, file: !525, line: 148, baseType: !569, size: 24, offset: 928)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 24, elements: !239)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !526, file: !525, line: 149, baseType: !571, size: 8, offset: 952)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 8, elements: !79)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !526, file: !525, line: 152, baseType: !537, size: 128, offset: 960)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !526, file: !525, line: 155, baseType: !100, size: 32, offset: 1088)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !526, file: !525, line: 156, baseType: !555, size: 64, offset: 1152)
!575 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!576 = !{}
!577 = !DISubprogram(name: "printf", scope: !519, file: !519, line: 175, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!578 = !DISubroutineType(types: !579)
!579 = !{!100, !575, null}
!580 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !519, file: !519, line: 157, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!581 = !DISubroutineType(types: !582)
!582 = !{!100, !575, !522}
!583 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !86, file: !86, line: 584, type: !584, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !576)
!584 = !DISubroutineType(types: !585)
!585 = !{null}
!586 = !DILocation(line: 588, column: 5, scope: !583)
!587 = !DILocation(line: 586, column: 3, scope: !583)
!588 = !DILocation(line: 589, column: 1, scope: !583)
!589 = distinct !DISubprogram(name: "emit_exec_status", scope: !86, file: !86, line: 645, type: !590, scopeLine: 646, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !126}
!592 = !{!593}
!593 = !DILocalVariable(name: "program", arg: 1, scope: !589, file: !86, line: 645, type: !126)
!594 = !DILocation(line: 0, scope: !589)
!595 = !DILocation(line: 647, column: 7, scope: !589)
!596 = !DILocation(line: 654, column: 1, scope: !589)
!597 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !86, file: !86, line: 657, type: !590, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !598)
!598 = !{!599, !600, !607, !608, !610, !611}
!599 = !DILocalVariable(name: "program", arg: 1, scope: !597, file: !86, line: 657, type: !126)
!600 = !DILocalVariable(name: "infomap", scope: !597, file: !86, line: 659, type: !601)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 896, elements: !244)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !597, file: !86, line: 659, size: 128, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !603, file: !86, line: 659, baseType: !126, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !603, file: !86, line: 659, baseType: !126, size: 64, offset: 64)
!607 = !DILocalVariable(name: "node", scope: !597, file: !86, line: 669, type: !126)
!608 = !DILocalVariable(name: "map_prog", scope: !597, file: !86, line: 670, type: !609)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!610 = !DILocalVariable(name: "lc_messages", scope: !597, file: !86, line: 682, type: !126)
!611 = !DILocalVariable(name: "url_program", scope: !597, file: !86, line: 695, type: !126)
!612 = !DILocation(line: 0, scope: !597)
!613 = !DILocation(line: 659, column: 3, scope: !597)
!614 = !DILocation(line: 659, column: 67, scope: !597)
!615 = !DILocation(line: 670, column: 36, scope: !597)
!616 = !DILocation(line: 672, column: 3, scope: !597)
!617 = !DILocation(line: 672, column: 20, scope: !597)
!618 = !{!619, !482, i64 0}
!619 = !{!"infomap", !482, i64 0, !482, i64 8}
!620 = !DILocation(line: 672, column: 10, scope: !597)
!621 = !DILocation(line: 672, column: 28, scope: !597)
!622 = !DILocation(line: 672, column: 33, scope: !597)
!623 = !DILocation(line: 672, column: 31, scope: !597)
!624 = !DILocation(line: 673, column: 13, scope: !597)
!625 = distinct !{!625, !616, !624, !626, !627}
!626 = !{!"llvm.loop.mustprogress"}
!627 = !{!"llvm.loop.unroll.disable"}
!628 = !DILocation(line: 675, column: 17, scope: !629)
!629 = distinct !DILexicalBlock(scope: !597, file: !86, line: 675, column: 7)
!630 = !{!619, !482, i64 8}
!631 = !DILocation(line: 675, column: 7, scope: !629)
!632 = !DILocation(line: 675, column: 7, scope: !597)
!633 = !DILocation(line: 676, column: 22, scope: !629)
!634 = !DILocation(line: 676, column: 5, scope: !629)
!635 = !DILocation(line: 678, column: 3, scope: !597)
!636 = !DILocation(line: 682, column: 29, scope: !597)
!637 = !DILocation(line: 683, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !597, file: !86, line: 683, column: 7)
!639 = !DILocation(line: 683, column: 19, scope: !638)
!640 = !DILocation(line: 683, column: 22, scope: !638)
!641 = !DILocation(line: 683, column: 7, scope: !597)
!642 = !DILocation(line: 690, column: 61, scope: !643)
!643 = distinct !DILexicalBlock(scope: !638, file: !86, line: 684, column: 5)
!644 = !DILocation(line: 689, column: 7, scope: !643)
!645 = !DILocation(line: 691, column: 5, scope: !643)
!646 = !DILocation(line: 695, column: 29, scope: !597)
!647 = !DILocation(line: 696, column: 3, scope: !597)
!648 = !DILocation(line: 699, column: 22, scope: !597)
!649 = !DILocation(line: 699, column: 17, scope: !597)
!650 = !DILocation(line: 698, column: 3, scope: !597)
!651 = !DILocation(line: 700, column: 1, scope: !597)
!652 = !DISubprogram(name: "exit", scope: !653, file: !653, line: 145, type: !136, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !576)
!653 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!654 = !DISubprogram(name: "strcmp", scope: !655, file: !655, line: 77, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!655 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!656 = !DISubroutineType(types: !657)
!657 = !{!100, !126, !126}
!658 = !DISubprogram(name: "setlocale", scope: !659, file: !659, line: 53, type: !660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!659 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!660 = !DISubroutineType(types: !661)
!661 = !{!128, !100, !126}
!662 = !DISubprogram(name: "strncmp", scope: !655, file: !655, line: 84, type: !663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!663 = !DISubroutineType(types: !664)
!664 = !{!100, !126, !126, !370}
!665 = !{!666, !666, i64 0}
!666 = !{!"int", !483, i64 0}
!667 = !DILocation(line: 751, column: 11, scope: !181)
!668 = !DILocation(line: 751, column: 24, scope: !181)
!669 = !DILocation(line: 0, scope: !181)
!670 = !DILocation(line: 759, column: 21, scope: !181)
!671 = !DILocation(line: 759, column: 3, scope: !181)
!672 = !DILocation(line: 760, column: 3, scope: !181)
!673 = !DILocation(line: 764, column: 3, scope: !181)
!674 = !DILocation(line: 765, column: 3, scope: !181)
!675 = !DILocation(line: 767, column: 3, scope: !181)
!676 = !DILocation(line: 769, column: 3, scope: !181)
!677 = !DILocation(line: 756, column: 15, scope: !181)
!678 = !DILocation(line: 755, column: 8, scope: !181)
!679 = !DILocation(line: 754, column: 8, scope: !181)
!680 = !DILocation(line: 769, column: 31, scope: !181)
!681 = !DILocation(line: 769, column: 37, scope: !181)
!682 = !DILocation(line: 769, column: 18, scope: !181)
!683 = !DILocation(line: 769, column: 71, scope: !181)
!684 = !DILocation(line: 771, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !181, file: !2, line: 770, column: 5)
!686 = !DILocation(line: 775, column: 11, scope: !687)
!687 = distinct !DILexicalBlock(scope: !685, file: !2, line: 772, column: 9)
!688 = !DILocation(line: 777, column: 29, scope: !687)
!689 = !DILocation(line: 777, column: 11, scope: !687)
!690 = !DILocation(line: 778, column: 11, scope: !687)
!691 = !DILocation(line: 780, column: 21, scope: !687)
!692 = !{!693, !693, i64 0}
!693 = !{!"_Bool", !483, i64 0}
!694 = !DILocation(line: 781, column: 11, scope: !687)
!695 = !DILocation(line: 784, column: 11, scope: !687)
!696 = !DILocation(line: 786, column: 39, scope: !687)
!697 = !DILocation(line: 786, column: 11, scope: !687)
!698 = !DILocation(line: 787, column: 38, scope: !687)
!699 = !DILocation(line: 787, column: 11, scope: !687)
!700 = !DILocation(line: 788, column: 11, scope: !687)
!701 = !DILocation(line: 790, column: 39, scope: !687)
!702 = !DILocation(line: 790, column: 11, scope: !687)
!703 = !DILocation(line: 791, column: 11, scope: !687)
!704 = !DILocation(line: 793, column: 38, scope: !687)
!705 = !DILocation(line: 793, column: 11, scope: !687)
!706 = !DILocation(line: 794, column: 11, scope: !687)
!707 = !DILocation(line: 796, column: 34, scope: !687)
!708 = !DILocation(line: 797, column: 11, scope: !687)
!709 = !DILocation(line: 799, column: 20, scope: !687)
!710 = !DILocation(line: 800, column: 11, scope: !687)
!711 = !DILocation(line: 802, column: 31, scope: !687)
!712 = !DILocation(line: 802, column: 11, scope: !687)
!713 = !DILocation(line: 803, column: 11, scope: !687)
!714 = !DILocation(line: 809, column: 11, scope: !687)
!715 = !DILocation(line: 810, column: 11, scope: !687)
!716 = !DILocation(line: 811, column: 11, scope: !687)
!717 = !DILocation(line: 813, column: 9, scope: !687)
!718 = !DILocation(line: 814, column: 9, scope: !687)
!719 = !DILocation(line: 816, column: 11, scope: !687)
!720 = distinct !{!720, !676, !721, !626, !627}
!721 = !DILocation(line: 818, column: 5, scope: !181)
!722 = !DILocation(line: 820, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !181, file: !2, line: 820, column: 7)
!724 = !DILocation(line: 820, column: 16, scope: !723)
!725 = !DILocation(line: 820, column: 14, scope: !723)
!726 = !DILocation(line: 820, column: 21, scope: !723)
!727 = !DILocation(line: 820, column: 24, scope: !723)
!728 = !DILocation(line: 820, column: 7, scope: !181)
!729 = !DILocation(line: 823, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !723, file: !2, line: 821, column: 5)
!731 = !DILocation(line: 824, column: 5, scope: !730)
!732 = !DILocation(line: 826, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !181, file: !2, line: 826, column: 7)
!734 = !DILocation(line: 826, column: 7, scope: !181)
!735 = !DILocation(line: 828, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !2, line: 827, column: 5)
!737 = !DILocation(line: 828, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !2, line: 828, column: 7)
!739 = distinct !DILexicalBlock(scope: !736, file: !2, line: 828, column: 7)
!740 = !{i8 0, i8 2}
!741 = !DILocation(line: 828, column: 7, scope: !739)
!742 = !DILocation(line: 830, column: 7, scope: !736)
!743 = !DILocation(line: 830, column: 15, scope: !736)
!744 = !DILocation(line: 831, column: 5, scope: !736)
!745 = !DILocation(line: 833, column: 5, scope: !733)
!746 = !DILocation(line: 836, column: 3, scope: !181)
!747 = !DILocation(line: 836, column: 10, scope: !181)
!748 = !DILocation(line: 836, column: 19, scope: !181)
!749 = !DILocation(line: 836, column: 17, scope: !181)
!750 = !DILocation(line: 836, column: 24, scope: !181)
!751 = !DILocation(line: 836, column: 41, scope: !181)
!752 = !DILocation(line: 836, column: 46, scope: !181)
!753 = !DILocation(line: 836, column: 33, scope: !181)
!754 = !DILocation(line: 838, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !181, file: !2, line: 837, column: 5)
!756 = !DILocation(line: 838, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !2, line: 838, column: 7)
!758 = distinct !DILexicalBlock(scope: !755, file: !2, line: 838, column: 7)
!759 = !DILocation(line: 838, column: 7, scope: !758)
!760 = !DILocation(line: 840, column: 19, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !2, line: 840, column: 11)
!762 = !DILocation(line: 840, column: 24, scope: !761)
!763 = !DILocation(line: 840, column: 11, scope: !761)
!764 = !DILocation(line: 840, column: 11, scope: !755)
!765 = !DILocation(line: 842, column: 15, scope: !766)
!766 = distinct !DILexicalBlock(scope: !761, file: !2, line: 841, column: 9)
!767 = !{!483, !483, i64 0}
!768 = !DILocation(line: 843, column: 11, scope: !766)
!769 = !DILocation(line: 846, column: 13, scope: !755)
!770 = distinct !{!770, !746, !771, !626, !627}
!771 = !DILocation(line: 847, column: 5, scope: !181)
!772 = !DILocation(line: 849, column: 28, scope: !181)
!773 = !DILocation(line: 849, column: 37, scope: !181)
!774 = !DILocation(line: 849, column: 35, scope: !181)
!775 = !DILocation(line: 849, column: 8, scope: !181)
!776 = !DILocation(line: 851, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !181, file: !2, line: 851, column: 7)
!778 = !DILocation(line: 851, column: 32, scope: !777)
!779 = !DILocation(line: 851, column: 35, scope: !777)
!780 = !DILocation(line: 851, column: 7, scope: !181)
!781 = !DILocation(line: 853, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !777, file: !2, line: 852, column: 5)
!783 = !DILocation(line: 854, column: 7, scope: !782)
!784 = !DILocation(line: 857, column: 7, scope: !785)
!785 = distinct !DILexicalBlock(scope: !181, file: !2, line: 857, column: 7)
!786 = !DILocation(line: 857, column: 14, scope: !785)
!787 = !DILocation(line: 857, column: 19, scope: !785)
!788 = !DILocation(line: 857, column: 7, scope: !181)
!789 = !DILocation(line: 859, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !2, line: 858, column: 5)
!791 = !DILocation(line: 860, column: 7, scope: !790)
!792 = !DILocation(line: 863, column: 9, scope: !197)
!793 = !DILocation(line: 863, column: 7, scope: !181)
!794 = !DILocation(line: 866, column: 24, scope: !196)
!795 = !DILocation(line: 0, scope: !196)
!796 = !DILocation(line: 867, column: 7, scope: !196)
!797 = !DILocation(line: 867, column: 14, scope: !196)
!798 = !DILocation(line: 868, column: 27, scope: !196)
!799 = !DILocation(line: 868, column: 25, scope: !196)
!800 = !DILocation(line: 868, column: 31, scope: !196)
!801 = !DILocation(line: 868, column: 9, scope: !196)
!802 = distinct !{!802, !796, !803, !626, !627}
!803 = !DILocation(line: 868, column: 69, scope: !196)
!804 = !DILocation(line: 872, column: 3, scope: !181)
!805 = !DILocation(line: 873, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !181, file: !2, line: 873, column: 7)
!807 = !DILocation(line: 873, column: 7, scope: !181)
!808 = !DILocation(line: 874, column: 5, scope: !806)
!809 = !DILocation(line: 876, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !181, file: !2, line: 876, column: 7)
!811 = !DILocation(line: 876, column: 7, scope: !181)
!812 = !DILocation(line: 877, column: 5, scope: !810)
!813 = !DILocation(line: 879, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !181, file: !2, line: 879, column: 7)
!815 = !DILocation(line: 879, column: 7, scope: !181)
!816 = !DILocation(line: 881, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !814, file: !2, line: 880, column: 5)
!818 = !DILocation(line: 881, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !2, line: 881, column: 7)
!820 = distinct !DILexicalBlock(scope: !817, file: !2, line: 881, column: 7)
!821 = !DILocation(line: 881, column: 7, scope: !820)
!822 = !DILocation(line: 883, column: 11, scope: !823)
!823 = distinct !DILexicalBlock(scope: !817, file: !2, line: 883, column: 11)
!824 = !DILocation(line: 883, column: 26, scope: !823)
!825 = !DILocation(line: 883, column: 11, scope: !817)
!826 = !DILocation(line: 884, column: 9, scope: !823)
!827 = !DILocation(line: 886, column: 5, scope: !817)
!828 = !DILocation(line: 888, column: 7, scope: !203)
!829 = !DILocation(line: 888, column: 7, scope: !181)
!830 = !DILocation(line: 890, column: 7, scope: !202)
!831 = !DILocation(line: 890, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !2, line: 890, column: 7)
!833 = distinct !DILexicalBlock(scope: !202, file: !2, line: 890, column: 7)
!834 = !DILocation(line: 890, column: 7, scope: !833)
!835 = !DILocation(line: 891, column: 18, scope: !201)
!836 = !DILocation(line: 0, scope: !201)
!837 = !DILocation(line: 891, column: 12, scope: !201)
!838 = !DILocation(line: 891, scope: !201)
!839 = !DILocation(line: 891, column: 28, scope: !840)
!840 = distinct !DILexicalBlock(scope: !201, file: !2, line: 891, column: 7)
!841 = !DILocation(line: 891, column: 27, scope: !840)
!842 = !DILocation(line: 891, column: 7, scope: !201)
!843 = !DILocation(line: 892, column: 9, scope: !840)
!844 = !DILocation(line: 892, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !2, line: 892, column: 9)
!846 = distinct !DILexicalBlock(scope: !840, file: !2, line: 892, column: 9)
!847 = !DILocation(line: 892, column: 9, scope: !846)
!848 = !DILocation(line: 891, column: 34, scope: !840)
!849 = !DILocation(line: 891, column: 7, scope: !840)
!850 = distinct !{!850, !842, !851, !626, !627}
!851 = !DILocation(line: 892, column: 9, scope: !201)
!852 = !DILocation(line: 893, column: 5, scope: !202)
!853 = !DILocation(line: 895, column: 11, scope: !181)
!854 = !DILocation(line: 895, column: 16, scope: !181)
!855 = !DILocation(line: 895, column: 26, scope: !181)
!856 = !DILocation(line: 895, column: 31, scope: !181)
!857 = !DILocation(line: 895, column: 3, scope: !181)
!858 = !DILocation(line: 897, column: 21, scope: !181)
!859 = !DILocation(line: 897, column: 27, scope: !181)
!860 = !DILocation(line: 898, column: 13, scope: !181)
!861 = !DILocation(line: 898, column: 33, scope: !181)
!862 = !DILocation(line: 898, column: 38, scope: !181)
!863 = !DILocation(line: 898, column: 26, scope: !181)
!864 = !DILocation(line: 898, column: 3, scope: !181)
!865 = !DILocation(line: 900, column: 19, scope: !866)
!866 = distinct !DILexicalBlock(scope: !181, file: !2, line: 900, column: 7)
!867 = !DILocation(line: 900, column: 34, scope: !866)
!868 = !DILocation(line: 900, column: 46, scope: !866)
!869 = !DILocation(line: 900, column: 51, scope: !866)
!870 = !DILocation(line: 900, column: 37, scope: !866)
!871 = !DILocation(line: 900, column: 7, scope: !181)
!872 = !DILocation(line: 901, column: 5, scope: !866)
!873 = !DILocation(line: 904, column: 1, scope: !181)
!874 = !DISubprogram(name: "set_program_name", scope: !875, file: !875, line: 37, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!875 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!876 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !86, file: !86, line: 96, type: !136, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !877)
!877 = !{!878}
!878 = !DILocalVariable(name: "status", arg: 1, scope: !876, file: !86, line: 96, type: !100)
!879 = !DILocation(line: 0, scope: !876)
!880 = !DILocation(line: 98, column: 14, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !86, line: 98, column: 7)
!882 = !DILocation(line: 98, column: 7, scope: !876)
!883 = !DILocation(line: 99, column: 18, scope: !881)
!884 = !DILocation(line: 99, column: 5, scope: !881)
!885 = !DILocation(line: 100, column: 1, scope: !876)
!886 = !DISubprogram(name: "atexit", scope: !653, file: !653, line: 133, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!887 = !DISubroutineType(types: !888)
!888 = !{!100, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!890 = distinct !DISubprogram(name: "initialize_signals", scope: !2, file: !2, line: 740, type: !584, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !891)
!891 = !{!892}
!892 = !DILocalVariable(name: "i", scope: !893, file: !2, line: 744, type: !100)
!893 = distinct !DILexicalBlock(scope: !890, file: !2, line: 744, column: 3)
!894 = !DILocation(line: 742, column: 13, scope: !890)
!895 = !DILocation(line: 742, column: 11, scope: !890)
!896 = !DILocation(line: 0, scope: !893)
!897 = !DILocation(line: 744, column: 8, scope: !893)
!898 = !DILocation(line: 744, scope: !893)
!899 = !DILocation(line: 744, column: 22, scope: !900)
!900 = distinct !DILexicalBlock(scope: !893, file: !2, line: 744, column: 3)
!901 = !DILocation(line: 744, column: 3, scope: !893)
!902 = !DILocation(line: 745, column: 5, scope: !900)
!903 = !DILocation(line: 745, column: 16, scope: !900)
!904 = !DILocation(line: 744, column: 40, scope: !900)
!905 = !DILocation(line: 744, column: 3, scope: !900)
!906 = distinct !{!906, !901, !907, !626, !627}
!907 = !DILocation(line: 745, column: 18, scope: !893)
!908 = !DILocation(line: 747, column: 3, scope: !890)
!909 = !DISubprogram(name: "rpl_getopt_long", scope: !355, file: !355, line: 66, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!910 = !DISubroutineType(types: !911)
!911 = !{!100, !100, !184, !126, !912, !360}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!913 = distinct !DISubprogram(name: "append_unset_var", scope: !2, file: !2, line: 170, type: !590, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !914)
!914 = !{!915}
!915 = !DILocalVariable(name: "var", arg: 1, scope: !913, file: !2, line: 170, type: !126)
!916 = !DILocation(line: 0, scope: !913)
!917 = !DILocation(line: 172, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !2, line: 172, column: 7)
!919 = !{!920, !920, i64 0}
!920 = !{!"long", !483, i64 0}
!921 = !DILocation(line: 172, column: 22, scope: !918)
!922 = !DILocation(line: 172, column: 19, scope: !918)
!923 = !DILocation(line: 172, column: 7, scope: !913)
!924 = !DILocation(line: 173, column: 26, scope: !918)
!925 = !DILocation(line: 173, column: 14, scope: !918)
!926 = !DILocation(line: 173, column: 12, scope: !918)
!927 = !DILocation(line: 173, column: 5, scope: !918)
!928 = !DILocation(line: 174, column: 3, scope: !913)
!929 = !DILocation(line: 174, column: 21, scope: !913)
!930 = !DILocation(line: 174, column: 25, scope: !913)
!931 = !DILocation(line: 175, column: 1, scope: !913)
!932 = distinct !DISubprogram(name: "parse_signal_action_params", scope: !2, file: !2, line: 541, type: !933, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !126, !190}
!935 = !{!936, !937, !938, !939, !940, !941, !945}
!936 = !DILocalVariable(name: "rpl_optarg", arg: 1, scope: !932, file: !2, line: 541, type: !126)
!937 = !DILocalVariable(name: "set_default", arg: 2, scope: !932, file: !2, line: 541, type: !190)
!938 = !DILocalVariable(name: "signame", scope: !932, file: !2, line: 543, type: !316)
!939 = !DILocalVariable(name: "opt_sig", scope: !932, file: !2, line: 544, type: !128)
!940 = !DILocalVariable(name: "optarg_writable", scope: !932, file: !2, line: 545, type: !128)
!941 = !DILocalVariable(name: "i", scope: !942, file: !2, line: 552, type: !100)
!942 = distinct !DILexicalBlock(scope: !943, file: !2, line: 552, column: 7)
!943 = distinct !DILexicalBlock(scope: !944, file: !2, line: 548, column: 5)
!944 = distinct !DILexicalBlock(scope: !932, file: !2, line: 547, column: 7)
!945 = !DILocalVariable(name: "signum", scope: !946, file: !2, line: 563, type: !100)
!946 = distinct !DILexicalBlock(scope: !932, file: !2, line: 562, column: 5)
!947 = !DILocation(line: 0, scope: !932)
!948 = !DILocation(line: 543, column: 3, scope: !932)
!949 = !DILocation(line: 543, column: 8, scope: !932)
!950 = !DILocation(line: 547, column: 9, scope: !944)
!951 = !DILocation(line: 547, column: 7, scope: !932)
!952 = !DILocation(line: 0, scope: !942)
!953 = !DILocation(line: 552, column: 12, scope: !942)
!954 = !DILocation(line: 552, scope: !942)
!955 = !DILocation(line: 552, column: 26, scope: !956)
!956 = distinct !DILexicalBlock(scope: !942, file: !2, line: 552, column: 7)
!957 = !DILocation(line: 552, column: 7, scope: !942)
!958 = !DILocation(line: 553, column: 25, scope: !959)
!959 = distinct !DILexicalBlock(scope: !956, file: !2, line: 553, column: 13)
!960 = !DILocation(line: 553, column: 13, scope: !959)
!961 = !DILocation(line: 553, column: 34, scope: !959)
!962 = !DILocation(line: 553, column: 13, scope: !956)
!963 = !DILocation(line: 554, column: 24, scope: !959)
!964 = !DILocation(line: 554, column: 11, scope: !959)
!965 = !DILocation(line: 554, column: 22, scope: !959)
!966 = !DILocation(line: 553, column: 37, scope: !959)
!967 = !DILocation(line: 552, column: 44, scope: !956)
!968 = !DILocation(line: 552, column: 7, scope: !956)
!969 = distinct !{!969, !957, !970, !626, !627}
!970 = !DILocation(line: 554, column: 54, scope: !942)
!971 = !DILocation(line: 555, column: 7, scope: !943)
!972 = !DILocation(line: 558, column: 21, scope: !932)
!973 = !DILocation(line: 560, column: 13, scope: !932)
!974 = !DILocation(line: 561, column: 3, scope: !932)
!975 = !DILocation(line: 563, column: 42, scope: !946)
!976 = !DILocation(line: 563, column: 20, scope: !946)
!977 = !DILocation(line: 0, scope: !946)
!978 = !DILocation(line: 565, column: 18, scope: !979)
!979 = distinct !DILexicalBlock(scope: !946, file: !2, line: 565, column: 11)
!980 = !DILocation(line: 565, column: 11, scope: !946)
!981 = !DILocation(line: 566, column: 47, scope: !979)
!982 = !DILocation(line: 566, column: 9, scope: !979)
!983 = !DILocation(line: 567, column: 18, scope: !984)
!984 = distinct !DILexicalBlock(scope: !946, file: !2, line: 567, column: 11)
!985 = !DILocation(line: 567, column: 11, scope: !946)
!986 = !DILocation(line: 568, column: 16, scope: !984)
!987 = !DILocation(line: 568, column: 9, scope: !984)
!988 = !DILocation(line: 570, column: 25, scope: !946)
!989 = !DILocation(line: 570, column: 7, scope: !946)
!990 = !DILocation(line: 570, column: 23, scope: !946)
!991 = !DILocation(line: 572, column: 17, scope: !946)
!992 = distinct !{!992, !974, !993, !626, !627}
!993 = !DILocation(line: 573, column: 5, scope: !932)
!994 = !DILocation(line: 575, column: 3, scope: !932)
!995 = !DILocation(line: 576, column: 1, scope: !932)
!996 = distinct !DISubprogram(name: "parse_block_signal_params", scope: !2, file: !2, line: 623, type: !933, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !997)
!997 = !{!998, !999, !1000, !1001, !1002, !1003}
!998 = !DILocalVariable(name: "rpl_optarg", arg: 1, scope: !996, file: !2, line: 623, type: !126)
!999 = !DILocalVariable(name: "block", arg: 2, scope: !996, file: !2, line: 623, type: !190)
!1000 = !DILocalVariable(name: "signame", scope: !996, file: !2, line: 625, type: !316)
!1001 = !DILocalVariable(name: "opt_sig", scope: !996, file: !2, line: 626, type: !128)
!1002 = !DILocalVariable(name: "optarg_writable", scope: !996, file: !2, line: 627, type: !128)
!1003 = !DILocalVariable(name: "signum", scope: !1004, file: !2, line: 652, type: !100)
!1004 = distinct !DILexicalBlock(scope: !996, file: !2, line: 651, column: 5)
!1005 = !DILocation(line: 0, scope: !996)
!1006 = !DILocation(line: 625, column: 3, scope: !996)
!1007 = !DILocation(line: 625, column: 8, scope: !996)
!1008 = !DILocation(line: 629, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !996, file: !2, line: 629, column: 7)
!1010 = !DILocation(line: 629, column: 7, scope: !996)
!1011 = !DILocation(line: 632, column: 19, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 630, column: 5)
!1013 = !DILocation(line: 632, column: 7, scope: !1012)
!1014 = !DILocation(line: 633, column: 20, scope: !1012)
!1015 = !DILocation(line: 633, column: 7, scope: !1012)
!1016 = !DILocation(line: 634, column: 5, scope: !1012)
!1017 = !DILocation(line: 635, column: 14, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 635, column: 12)
!1019 = !DILocation(line: 635, column: 12, scope: !1009)
!1020 = !DILocation(line: 638, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 636, column: 5)
!1022 = !DILocation(line: 639, column: 7, scope: !1021)
!1023 = !DILocation(line: 640, column: 5, scope: !1021)
!1024 = !DILocation(line: 642, column: 20, scope: !996)
!1025 = !DILocation(line: 644, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !996, file: !2, line: 644, column: 7)
!1027 = !DILocation(line: 644, column: 7, scope: !996)
!1028 = !DILocation(line: 645, column: 5, scope: !1026)
!1029 = !DILocation(line: 647, column: 21, scope: !996)
!1030 = !DILocation(line: 649, column: 13, scope: !996)
!1031 = !DILocation(line: 650, column: 3, scope: !996)
!1032 = !DILocation(line: 652, column: 42, scope: !1004)
!1033 = !DILocation(line: 652, column: 20, scope: !1004)
!1034 = !DILocation(line: 0, scope: !1004)
!1035 = !DILocation(line: 654, column: 18, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 654, column: 11)
!1037 = !DILocation(line: 654, column: 11, scope: !1004)
!1038 = !DILocation(line: 655, column: 47, scope: !1036)
!1039 = !DILocation(line: 655, column: 9, scope: !1036)
!1040 = !DILocation(line: 656, column: 18, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 656, column: 11)
!1042 = !DILocation(line: 656, column: 11, scope: !1004)
!1043 = !DILocation(line: 657, column: 16, scope: !1041)
!1044 = !DILocation(line: 657, column: 9, scope: !1041)
!1045 = !DILocation(line: 659, column: 18, scope: !1004)
!1046 = !DILocation(line: 659, column: 7, scope: !1004)
!1047 = !DILocation(line: 660, column: 18, scope: !1004)
!1048 = !DILocation(line: 660, column: 7, scope: !1004)
!1049 = !DILocation(line: 662, column: 17, scope: !1004)
!1050 = distinct !{!1050, !1031, !1051, !626, !627}
!1051 = !DILocation(line: 663, column: 5, scope: !996)
!1052 = !DILocation(line: 665, column: 3, scope: !996)
!1053 = !DILocation(line: 666, column: 1, scope: !996)
!1054 = distinct !DISubprogram(name: "parse_split_string", scope: !2, file: !2, line: 511, type: !1055, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1058)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !126, !360, !360, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066}
!1059 = !DILocalVariable(name: "str", arg: 1, scope: !1054, file: !2, line: 511, type: !126)
!1060 = !DILocalVariable(name: "orig_optind", arg: 2, scope: !1054, file: !2, line: 511, type: !360)
!1061 = !DILocalVariable(name: "orig_argc", arg: 3, scope: !1054, file: !2, line: 512, type: !360)
!1062 = !DILocalVariable(name: "orig_argv", arg: 4, scope: !1054, file: !2, line: 512, type: !1057)
!1063 = !DILocalVariable(name: "extra_argc", scope: !1054, file: !2, line: 514, type: !100)
!1064 = !DILocalVariable(name: "newargc", scope: !1054, file: !2, line: 514, type: !100)
!1065 = !DILocalVariable(name: "newargv", scope: !1054, file: !2, line: 515, type: !184)
!1066 = !DILocalVariable(name: "i", scope: !1067, file: !2, line: 525, type: !100)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 525, column: 7)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 522, column: 5)
!1069 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 521, column: 7)
!1070 = !DILocation(line: 0, scope: !1054)
!1071 = !DILocation(line: 514, column: 20, scope: !1054)
!1072 = !DILocation(line: 514, column: 33, scope: !1054)
!1073 = !DILocation(line: 514, column: 31, scope: !1054)
!1074 = !DILocation(line: 514, column: 3, scope: !1054)
!1075 = !DILocation(line: 514, column: 47, scope: !1054)
!1076 = !DILocation(line: 515, column: 20, scope: !1054)
!1077 = !DILocation(line: 518, column: 15, scope: !1054)
!1078 = !DILocation(line: 518, column: 14, scope: !1054)
!1079 = !DILocation(line: 518, column: 12, scope: !1054)
!1080 = !DILocation(line: 521, column: 7, scope: !1069)
!1081 = !DILocation(line: 521, column: 17, scope: !1069)
!1082 = !DILocation(line: 521, column: 24, scope: !1069)
!1083 = !DILocation(line: 521, column: 22, scope: !1069)
!1084 = !DILocation(line: 521, column: 7, scope: !1054)
!1085 = !DILocation(line: 523, column: 7, scope: !1068)
!1086 = !DILocation(line: 523, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 523, column: 7)
!1088 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 523, column: 7)
!1089 = !DILocation(line: 523, column: 7, scope: !1088)
!1090 = !DILocation(line: 524, column: 7, scope: !1068)
!1091 = !DILocation(line: 524, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 524, column: 7)
!1093 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 524, column: 7)
!1094 = !DILocation(line: 524, column: 7, scope: !1093)
!1095 = !DILocation(line: 0, scope: !1067)
!1096 = !DILocation(line: 525, column: 12, scope: !1067)
!1097 = !DILocation(line: 525, scope: !1067)
!1098 = !DILocation(line: 525, column: 27, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 525, column: 7)
!1100 = !DILocation(line: 525, column: 25, scope: !1099)
!1101 = !DILocation(line: 525, column: 7, scope: !1067)
!1102 = !DILocation(line: 526, column: 9, scope: !1099)
!1103 = !DILocation(line: 526, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 526, column: 9)
!1105 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 526, column: 9)
!1106 = !DILocation(line: 526, column: 9, scope: !1105)
!1107 = !DILocation(line: 525, column: 37, scope: !1099)
!1108 = !DILocation(line: 525, column: 7, scope: !1099)
!1109 = distinct !{!1109, !1101, !1110, !626, !627}
!1110 = !DILocation(line: 526, column: 9, scope: !1067)
!1111 = !DILocation(line: 527, column: 5, scope: !1068)
!1112 = !DILocation(line: 531, column: 21, scope: !1054)
!1113 = !DILocation(line: 531, column: 19, scope: !1054)
!1114 = !DILocation(line: 531, column: 30, scope: !1054)
!1115 = !DILocation(line: 531, column: 43, scope: !1054)
!1116 = !DILocation(line: 531, column: 41, scope: !1054)
!1117 = !DILocation(line: 532, column: 23, scope: !1054)
!1118 = !DILocation(line: 532, column: 11, scope: !1054)
!1119 = !DILocation(line: 532, column: 28, scope: !1054)
!1120 = !DILocation(line: 531, column: 3, scope: !1054)
!1121 = !DILocation(line: 535, column: 16, scope: !1054)
!1122 = !DILocation(line: 535, column: 24, scope: !1054)
!1123 = !DILocation(line: 535, column: 14, scope: !1054)
!1124 = !DILocation(line: 536, column: 14, scope: !1054)
!1125 = !DILocation(line: 537, column: 16, scope: !1054)
!1126 = !DILocation(line: 538, column: 1, scope: !1054)
!1127 = !DISubprogram(name: "error", scope: !1128, file: !1128, line: 395, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1128 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !100, !100, !126, null}
!1131 = !DISubprogram(name: "version_etc", scope: !1132, file: !1132, line: 65, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1132 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !523, !126, !126, !126, null}
!1135 = !DISubprogram(name: "_NSGetEnviron", scope: !1136, file: !1136, line: 39, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1136 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/crt_externs.h", directory: "")
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!1057}
!1139 = distinct !DISubprogram(name: "unset_envvars", scope: !2, file: !2, line: 178, type: !584, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1140)
!1140 = !{!1141}
!1141 = !DILocalVariable(name: "i", scope: !1142, file: !2, line: 180, type: !364)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 180, column: 3)
!1143 = !DILocation(line: 0, scope: !1142)
!1144 = !DILocation(line: 180, column: 8, scope: !1142)
!1145 = !DILocation(line: 180, scope: !1142)
!1146 = !DILocation(line: 180, column: 25, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 180, column: 3)
!1148 = !DILocation(line: 180, column: 23, scope: !1147)
!1149 = !DILocation(line: 180, column: 3, scope: !1142)
!1150 = !DILocation(line: 182, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 181, column: 5)
!1152 = !DILocation(line: 182, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 182, column: 7)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 182, column: 7)
!1155 = !DILocation(line: 182, column: 7, scope: !1154)
!1156 = !DILocation(line: 184, column: 21, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 184, column: 11)
!1158 = !DILocation(line: 184, column: 11, scope: !1157)
!1159 = !DILocation(line: 184, column: 11, scope: !1151)
!1160 = !DILocation(line: 185, column: 9, scope: !1157)
!1161 = !DILocation(line: 187, column: 5, scope: !1151)
!1162 = !DILocation(line: 180, column: 38, scope: !1147)
!1163 = !DILocation(line: 180, column: 3, scope: !1147)
!1164 = distinct !{!1164, !1149, !1165, !626, !627}
!1165 = !DILocation(line: 187, column: 5, scope: !1142)
!1166 = !DILocation(line: 188, column: 1, scope: !1139)
!1167 = !DISubprogram(name: "strchr", scope: !655, file: !655, line: 76, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!128, !126, !100}
!1170 = !DISubprogram(name: "rpl_putenv", scope: !1171, file: !1171, line: 1512, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1171 = !DIFile(filename: "./lib/stdlib.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!100, !128}
!1174 = !DISubprogram(name: "__error", scope: !1175, file: !1175, line: 80, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1175 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!360}
!1178 = !DISubprogram(name: "quote", scope: !1179, file: !1179, line: 44, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1179 = !DIFile(filename: "../lib/quote.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!126, !126}
!1182 = distinct !DISubprogram(name: "reset_signal_handlers", scope: !2, file: !2, line: 579, type: !584, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1183)
!1183 = !{!1184, !1186, !1227, !1228, !1229, !1230}
!1184 = !DILocalVariable(name: "i", scope: !1185, file: !2, line: 581, type: !100)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 581, column: 3)
!1186 = !DILocalVariable(name: "act", scope: !1187, file: !2, line: 583, type: !1189)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 582, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 581, column: 3)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1190, line: 286, size: 128, elements: !1191)
!1190 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/signal.h", directory: "")
!1191 = !{!1192, !1225, !1226}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_u", scope: !1189, file: !1190, line: 287, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sigaction_u", file: !1190, line: 269, size: 64, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "__sa_handler", scope: !1193, file: !1190, line: 270, baseType: !135, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "__sa_sigaction", scope: !1193, file: !1190, line: 271, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !100, !1200, !129}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__siginfo", file: !1190, line: 177, size: 832, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1211, !1215, !1216, !1217, !1222, !1223}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1201, file: !1190, line: 178, baseType: !100, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1201, file: !1190, line: 179, baseType: !100, size: 32, offset: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1201, file: !1190, line: 180, baseType: !100, size: 32, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1201, file: !1190, line: 181, baseType: !1207, size: 32, offset: 96)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1208, line: 31, baseType: !1209)
!1208 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_pid_t.h", directory: "")
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pid_t", file: !386, line: 72, baseType: !1210)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !133, line: 46, baseType: !100)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1201, file: !1190, line: 182, baseType: !1212, size: 32, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1213, line: 31, baseType: !1214)
!1213 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !386, line: 75, baseType: !387)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1201, file: !1190, line: 183, baseType: !100, size: 32, offset: 160)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1201, file: !1190, line: 184, baseType: !129, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "si_value", scope: !1201, file: !1190, line: 185, baseType: !1218, size: 64, offset: 256)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1190, line: 158, size: 64, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1218, file: !1190, line: 160, baseType: !100, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1218, file: !1190, line: 161, baseType: !129, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1201, file: !1190, line: 186, baseType: !134, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !1201, file: !1190, line: 187, baseType: !1224, size: 448, offset: 384)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 448, elements: !244)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1189, file: !1190, line: 288, baseType: !383, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1189, file: !1190, line: 289, baseType: !100, size: 32, offset: 96)
!1227 = !DILocalVariable(name: "ignore_errors", scope: !1187, file: !2, line: 588, type: !190)
!1228 = !DILocalVariable(name: "set_to_default", scope: !1187, file: !2, line: 591, type: !190)
!1229 = !DILocalVariable(name: "sig_err", scope: !1187, file: !2, line: 594, type: !100)
!1230 = !DILocalVariable(name: "signame", scope: !1231, file: !2, line: 611, type: !316)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 610, column: 9)
!1232 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 609, column: 11)
!1233 = !DILocation(line: 0, scope: !1185)
!1234 = !DILocation(line: 581, column: 8, scope: !1185)
!1235 = !DILocation(line: 581, scope: !1185)
!1236 = !DILocation(line: 581, column: 21, scope: !1188)
!1237 = !DILocation(line: 581, column: 3, scope: !1185)
!1238 = !DILocation(line: 583, column: 7, scope: !1187)
!1239 = !DILocation(line: 583, column: 24, scope: !1187)
!1240 = !DILocation(line: 585, column: 11, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 585, column: 11)
!1242 = !DILocation(line: 585, column: 22, scope: !1241)
!1243 = !DILocation(line: 585, column: 11, scope: !1187)
!1244 = !DILocation(line: 586, column: 9, scope: !1241)
!1245 = !DILocation(line: 588, column: 29, scope: !1187)
!1246 = !DILocation(line: 588, column: 40, scope: !1187)
!1247 = !DILocation(line: 589, column: 29, scope: !1187)
!1248 = !DILocation(line: 589, column: 32, scope: !1187)
!1249 = !DILocation(line: 589, column: 43, scope: !1187)
!1250 = !DILocation(line: 588, column: 12, scope: !1187)
!1251 = !DILocation(line: 0, scope: !1187)
!1252 = !DILocation(line: 591, column: 30, scope: !1187)
!1253 = !DILocation(line: 591, column: 41, scope: !1187)
!1254 = !DILocation(line: 592, column: 30, scope: !1187)
!1255 = !DILocation(line: 592, column: 33, scope: !1187)
!1256 = !DILocation(line: 592, column: 44, scope: !1187)
!1257 = !DILocation(line: 591, column: 12, scope: !1187)
!1258 = !DILocation(line: 594, column: 21, scope: !1187)
!1259 = !DILocation(line: 596, column: 11, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 596, column: 11)
!1261 = !DILocation(line: 596, column: 19, scope: !1260)
!1262 = !DILocation(line: 596, column: 23, scope: !1260)
!1263 = !DILocation(line: 596, column: 11, scope: !1187)
!1264 = !DILocation(line: 597, column: 9, scope: !1260)
!1265 = !DILocation(line: 600, column: 13, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 600, column: 11)
!1267 = !DILocation(line: 600, column: 11, scope: !1187)
!1268 = !DILocation(line: 602, column: 28, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 601, column: 9)
!1270 = !DILocation(line: 602, column: 15, scope: !1269)
!1271 = !DILocation(line: 602, column: 26, scope: !1269)
!1272 = !DILocation(line: 603, column: 21, scope: !1269)
!1273 = !DILocation(line: 604, column: 15, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 604, column: 15)
!1275 = !DILocation(line: 604, column: 23, scope: !1274)
!1276 = !DILocation(line: 604, column: 27, scope: !1274)
!1277 = !DILocation(line: 604, column: 15, scope: !1269)
!1278 = !DILocation(line: 605, column: 13, scope: !1274)
!1279 = !DILocation(line: 607, column: 9, scope: !1269)
!1280 = !DILocation(line: 609, column: 11, scope: !1232)
!1281 = !DILocation(line: 609, column: 11, scope: !1187)
!1282 = !DILocation(line: 611, column: 11, scope: !1231)
!1283 = !DILocation(line: 611, column: 16, scope: !1231)
!1284 = !DILocation(line: 612, column: 23, scope: !1231)
!1285 = !DILocation(line: 612, column: 11, scope: !1231)
!1286 = !DILocation(line: 613, column: 11, scope: !1231)
!1287 = !DILocation(line: 613, column: 11, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 613, column: 11)
!1289 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 613, column: 11)
!1290 = !DILocation(line: 613, column: 11, scope: !1289)
!1291 = !DILocation(line: 617, column: 9, scope: !1232)
!1292 = !DILocation(line: 617, column: 9, scope: !1231)
!1293 = !DILocation(line: 618, column: 5, scope: !1188)
!1294 = !DILocation(line: 618, column: 5, scope: !1187)
!1295 = !DILocation(line: 581, column: 39, scope: !1188)
!1296 = !DILocation(line: 581, column: 3, scope: !1188)
!1297 = distinct !{!1297, !1237, !1298, !626, !627}
!1298 = !DILocation(line: 618, column: 5, scope: !1185)
!1299 = !DILocation(line: 619, column: 1, scope: !1182)
!1300 = distinct !DISubprogram(name: "set_signal_proc_mask", scope: !2, file: !2, line: 669, type: !584, scopeLine: 670, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1301)
!1301 = !{!1302, !1303, !1304, !1306}
!1302 = !DILocalVariable(name: "set", scope: !1300, file: !2, line: 672, type: !383)
!1303 = !DILocalVariable(name: "debug_act", scope: !1300, file: !2, line: 673, type: !126)
!1304 = !DILocalVariable(name: "i", scope: !1305, file: !2, line: 680, type: !100)
!1305 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 680, column: 3)
!1306 = !DILocalVariable(name: "signame", scope: !1307, file: !2, line: 699, type: !316)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 698, column: 9)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 697, column: 11)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 681, column: 5)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 680, column: 3)
!1311 = !DILocation(line: 672, column: 3, scope: !1300)
!1312 = !DILocation(line: 672, column: 12, scope: !1300)
!1313 = !DILocation(line: 675, column: 3, scope: !1300)
!1314 = !DILocation(line: 677, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 677, column: 7)
!1316 = !DILocation(line: 677, column: 7, scope: !1300)
!1317 = !DILocation(line: 678, column: 5, scope: !1315)
!1318 = !DILocation(line: 0, scope: !1305)
!1319 = !DILocation(line: 680, column: 8, scope: !1305)
!1320 = !DILocation(line: 680, scope: !1305)
!1321 = !DILocation(line: 680, column: 21, scope: !1310)
!1322 = !DILocation(line: 680, column: 3, scope: !1305)
!1323 = !DILocation(line: 682, column: 11, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 682, column: 11)
!1325 = !DILocation(line: 682, column: 11, scope: !1309)
!1326 = !DILocation(line: 684, column: 11, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 683, column: 9)
!1328 = !DILocation(line: 0, scope: !1300)
!1329 = !DILocation(line: 686, column: 9, scope: !1327)
!1330 = !DILocation(line: 687, column: 16, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 687, column: 16)
!1332 = !DILocation(line: 687, column: 16, scope: !1324)
!1333 = !DILocation(line: 689, column: 11, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 688, column: 9)
!1335 = !DILocation(line: 691, column: 9, scope: !1334)
!1336 = !DILocation(line: 0, scope: !1331)
!1337 = !DILocation(line: 0, scope: !1324)
!1338 = !DILocation(line: 697, column: 11, scope: !1308)
!1339 = !DILocation(line: 697, column: 21, scope: !1308)
!1340 = !DILocation(line: 697, column: 24, scope: !1308)
!1341 = !DILocation(line: 697, column: 11, scope: !1309)
!1342 = !DILocation(line: 699, column: 11, scope: !1307)
!1343 = !DILocation(line: 699, column: 16, scope: !1307)
!1344 = !DILocation(line: 700, column: 23, scope: !1307)
!1345 = !DILocation(line: 700, column: 11, scope: !1307)
!1346 = !DILocation(line: 701, column: 11, scope: !1307)
!1347 = !DILocation(line: 701, column: 11, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 701, column: 11)
!1349 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 701, column: 11)
!1350 = !DILocation(line: 701, column: 11, scope: !1349)
!1351 = !DILocation(line: 703, column: 9, scope: !1308)
!1352 = !DILocation(line: 703, column: 9, scope: !1307)
!1353 = !DILocation(line: 704, column: 5, scope: !1309)
!1354 = !DILocation(line: 680, column: 39, scope: !1310)
!1355 = !DILocation(line: 680, column: 3, scope: !1310)
!1356 = distinct !{!1356, !1322, !1357, !626, !627}
!1357 = !DILocation(line: 704, column: 5, scope: !1305)
!1358 = !DILocation(line: 706, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 706, column: 7)
!1360 = !DILocation(line: 706, column: 7, scope: !1300)
!1361 = !DILocation(line: 707, column: 5, scope: !1359)
!1362 = !DILocation(line: 708, column: 1, scope: !1300)
!1363 = distinct !DISubprogram(name: "list_signal_handling", scope: !2, file: !2, line: 711, type: !584, scopeLine: 712, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1364)
!1364 = !{!1365, !1366, !1367, !1369, !1372, !1373, !1374}
!1365 = !DILocalVariable(name: "set", scope: !1363, file: !2, line: 713, type: !383)
!1366 = !DILocalVariable(name: "signame", scope: !1363, file: !2, line: 714, type: !316)
!1367 = !DILocalVariable(name: "i", scope: !1368, file: !2, line: 720, type: !100)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 720, column: 3)
!1369 = !DILocalVariable(name: "act", scope: !1370, file: !2, line: 722, type: !1189)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 721, column: 5)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 720, column: 3)
!1372 = !DILocalVariable(name: "ignored", scope: !1370, file: !2, line: 726, type: !126)
!1373 = !DILocalVariable(name: "blocked", scope: !1370, file: !2, line: 727, type: !126)
!1374 = !DILocalVariable(name: "connect", scope: !1370, file: !2, line: 728, type: !126)
!1375 = !DILocation(line: 713, column: 3, scope: !1363)
!1376 = !DILocation(line: 713, column: 12, scope: !1363)
!1377 = !DILocation(line: 714, column: 3, scope: !1363)
!1378 = !DILocation(line: 714, column: 8, scope: !1363)
!1379 = !DILocation(line: 716, column: 3, scope: !1363)
!1380 = !DILocation(line: 717, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 717, column: 7)
!1382 = !DILocation(line: 717, column: 7, scope: !1363)
!1383 = !DILocation(line: 718, column: 5, scope: !1381)
!1384 = !DILocation(line: 0, scope: !1368)
!1385 = !DILocation(line: 720, column: 8, scope: !1368)
!1386 = !DILocation(line: 720, scope: !1368)
!1387 = !DILocation(line: 720, column: 21, scope: !1371)
!1388 = !DILocation(line: 720, column: 3, scope: !1368)
!1389 = !DILocation(line: 722, column: 7, scope: !1370)
!1390 = !DILocation(line: 722, column: 24, scope: !1370)
!1391 = !DILocation(line: 723, column: 11, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 723, column: 11)
!1393 = !DILocation(line: 723, column: 11, scope: !1370)
!1394 = !DILocation(line: 724, column: 9, scope: !1392)
!1395 = !DILocation(line: 726, column: 33, scope: !1370)
!1396 = !DILocation(line: 726, column: 44, scope: !1370)
!1397 = !DILocation(line: 726, column: 29, scope: !1370)
!1398 = !DILocation(line: 0, scope: !1370)
!1399 = !DILocation(line: 727, column: 29, scope: !1370)
!1400 = !DILocation(line: 728, column: 29, scope: !1370)
!1401 = !DILocation(line: 728, column: 38, scope: !1370)
!1402 = !DILocation(line: 728, column: 41, scope: !1370)
!1403 = !DILocation(line: 730, column: 13, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 730, column: 11)
!1405 = !DILocation(line: 730, column: 22, scope: !1404)
!1406 = !DILocation(line: 730, column: 27, scope: !1404)
!1407 = !DILocation(line: 730, column: 11, scope: !1370)
!1408 = !DILocation(line: 731, column: 9, scope: !1404)
!1409 = !DILocation(line: 733, column: 19, scope: !1370)
!1410 = !DILocation(line: 733, column: 7, scope: !1370)
!1411 = !DILocation(line: 734, column: 16, scope: !1370)
!1412 = !DILocation(line: 734, column: 49, scope: !1370)
!1413 = !DILocation(line: 734, column: 7, scope: !1370)
!1414 = !DILocation(line: 736, column: 5, scope: !1371)
!1415 = !DILocation(line: 736, column: 5, scope: !1370)
!1416 = !DILocation(line: 720, column: 39, scope: !1371)
!1417 = !DILocation(line: 720, column: 3, scope: !1371)
!1418 = distinct !{!1418, !1388, !1419, !626, !627}
!1419 = !DILocation(line: 736, column: 5, scope: !1368)
!1420 = !DILocation(line: 737, column: 1, scope: !1363)
!1421 = !DISubprogram(name: "quotearg_style", scope: !105, file: !105, line: 383, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!128, !104, !126}
!1424 = !DISubprogram(name: "chdir", scope: !1425, file: !1425, line: 434, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1425 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/unistd.h", directory: "")
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!100, !126}
!1428 = !DISubprogram(name: "execvp", scope: !1425, file: !1425, line: 446, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!100, !126, !198}
!1431 = !DISubprogram(name: "strpbrk", scope: !655, file: !655, line: 86, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!128, !126, !126}
!1434 = !DISubprogram(name: "sigemptyset", scope: !1435, file: !1435, line: 89, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1435 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/signal.h", directory: "")
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!100, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!1439 = !DISubprogram(name: "sigprocmask", scope: !1435, file: !1435, line: 97, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!100, !100, !1442, !1445}
!1442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!1445 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1438)
!1446 = !DISubprogram(name: "sigaction", scope: !1435, file: !1435, line: 84, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!100, !100, !1449, !1452}
!1449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1189)
!1452 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1454 = !DISubprogram(name: "sigismember", scope: !1435, file: !1435, line: 94, type: !1455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!100, !1443, !100}
!1457 = !DISubprogram(name: "sig2str", scope: !1458, file: !1458, line: 34, type: !1459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1458 = !DIFile(filename: "../lib/sig2str.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!100, !100, !128}
!1461 = !DISubprogram(name: "sigaddset", scope: !1435, file: !1435, line: 86, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!100, !1438, !100}
!1464 = !DISubprogram(name: "sigdelset", scope: !1435, file: !1435, line: 88, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1465 = !DISubprogram(name: "unsetenv", linkageName: "\01_unsetenv", scope: !653, file: !653, line: 248, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1466 = distinct !DISubprogram(name: "build_argv", scope: !2, file: !2, line: 352, type: !1467, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!184, !126, !100, !360}
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1483, !1485, !1488, !1489}
!1470 = !DILocalVariable(name: "str", arg: 1, scope: !1466, file: !2, line: 352, type: !126)
!1471 = !DILocalVariable(name: "extra_argc", arg: 2, scope: !1466, file: !2, line: 352, type: !100)
!1472 = !DILocalVariable(name: "argc", arg: 3, scope: !1466, file: !2, line: 352, type: !360)
!1473 = !DILocalVariable(name: "dq", scope: !1466, file: !2, line: 354, type: !190)
!1474 = !DILocalVariable(name: "sq", scope: !1466, file: !2, line: 354, type: !190)
!1475 = !DILocalVariable(name: "ss", scope: !1466, file: !2, line: 355, type: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splitbuf", file: !2, line: 242, size: 256, elements: !1477)
!1477 = !{!1478, !1479, !1480, !1481, !1482}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1476, file: !2, line: 261, baseType: !184, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1476, file: !2, line: 262, baseType: !100, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "half_alloc", scope: !1476, file: !2, line: 263, baseType: !364, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "extra_argc", scope: !1476, file: !2, line: 266, baseType: !100, size: 32, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sep", scope: !1476, file: !2, line: 270, baseType: !190, size: 8, offset: 224)
!1483 = !DILocalVariable(name: "newc", scope: !1484, file: !2, line: 368, type: !4)
!1484 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 367, column: 5)
!1485 = !DILocalVariable(name: "n", scope: !1486, file: !2, line: 453, type: !128)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 452, column: 11)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 371, column: 9)
!1488 = !DILocalVariable(name: "v", scope: !1486, file: !2, line: 459, type: !128)
!1489 = !DILabel(scope: !1466, name: "eos", file: !2, line: 483)
!1490 = !DILocation(line: 0, scope: !1466)
!1491 = !DILocation(line: 355, column: 3, scope: !1466)
!1492 = !DILocation(line: 355, column: 19, scope: !1466)
!1493 = !DILocation(line: 356, column: 34, scope: !1466)
!1494 = !DILocation(line: 356, column: 23, scope: !1466)
!1495 = !DILocation(line: 356, column: 13, scope: !1466)
!1496 = !DILocation(line: 356, column: 6, scope: !1466)
!1497 = !DILocation(line: 356, column: 11, scope: !1466)
!1498 = !{!1499, !482, i64 0}
!1499 = !{!"splitbuf", !482, i64 0, !666, i64 8, !920, i64 16, !666, i64 24, !693, i64 28}
!1500 = !DILocation(line: 357, column: 6, scope: !1466)
!1501 = !DILocation(line: 357, column: 11, scope: !1466)
!1502 = !{!1499, !666, i64 8}
!1503 = !DILocation(line: 358, column: 30, scope: !1466)
!1504 = !DILocation(line: 358, column: 19, scope: !1466)
!1505 = !DILocation(line: 358, column: 6, scope: !1466)
!1506 = !DILocation(line: 358, column: 17, scope: !1466)
!1507 = !{!1499, !920, i64 16}
!1508 = !DILocation(line: 359, column: 6, scope: !1466)
!1509 = !DILocation(line: 359, column: 17, scope: !1466)
!1510 = !{!1499, !666, i64 24}
!1511 = !DILocation(line: 360, column: 6, scope: !1466)
!1512 = !DILocation(line: 360, column: 10, scope: !1466)
!1513 = !{!1499, !693, i64 28}
!1514 = !DILocation(line: 361, column: 6, scope: !1466)
!1515 = !DILocation(line: 361, column: 14, scope: !1466)
!1516 = !DILocation(line: 361, column: 3, scope: !1466)
!1517 = !DILocation(line: 361, column: 20, scope: !1466)
!1518 = !DILocation(line: 366, column: 3, scope: !1466)
!1519 = !DILocation(line: 354, column: 20, scope: !1466)
!1520 = !DILocation(line: 354, column: 8, scope: !1466)
!1521 = !DILocation(line: 366, column: 10, scope: !1466)
!1522 = !DILocation(line: 368, column: 19, scope: !1484)
!1523 = !DILocation(line: 0, scope: !1484)
!1524 = !DILocation(line: 370, column: 15, scope: !1484)
!1525 = !DILocation(line: 370, column: 7, scope: !1484)
!1526 = !DILocation(line: 373, column: 15, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 373, column: 15)
!1528 = !DILocation(line: 373, column: 15, scope: !1487)
!1529 = !DILocation(line: 374, column: 13, scope: !1527)
!1530 = !DILocation(line: 375, column: 17, scope: !1487)
!1531 = !DILocation(line: 375, column: 16, scope: !1487)
!1532 = !DILocation(line: 375, column: 14, scope: !1487)
!1533 = !DILocation(line: 376, column: 11, scope: !1487)
!1534 = !DILocation(line: 377, column: 11, scope: !1487)
!1535 = !DILocation(line: 378, column: 11, scope: !1487)
!1536 = distinct !{!1536, !1518, !1537, !626, !627}
!1537 = !DILocation(line: 478, column: 5, scope: !1466)
!1538 = !DILocation(line: 381, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 381, column: 15)
!1540 = !DILocation(line: 381, column: 15, scope: !1487)
!1541 = !DILocation(line: 382, column: 13, scope: !1539)
!1542 = !DILocation(line: 383, column: 17, scope: !1487)
!1543 = !DILocation(line: 383, column: 16, scope: !1487)
!1544 = !DILocation(line: 383, column: 14, scope: !1487)
!1545 = !DILocation(line: 384, column: 11, scope: !1487)
!1546 = !DILocation(line: 385, column: 11, scope: !1487)
!1547 = !DILocation(line: 386, column: 11, scope: !1487)
!1548 = !DILocation(line: 390, column: 15, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 390, column: 15)
!1550 = !DILocation(line: 390, column: 18, scope: !1549)
!1551 = !DILocation(line: 390, column: 21, scope: !1549)
!1552 = !DILocation(line: 390, column: 15, scope: !1487)
!1553 = !DILocation(line: 391, column: 13, scope: !1549)
!1554 = !DILocation(line: 392, column: 14, scope: !1487)
!1555 = !DILocation(line: 392, column: 18, scope: !1487)
!1556 = !DILocation(line: 393, column: 18, scope: !1487)
!1557 = !DILocation(line: 393, column: 15, scope: !1487)
!1558 = !DILocation(line: 394, column: 11, scope: !1487)
!1559 = !DILocation(line: 397, column: 19, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 397, column: 15)
!1561 = !DILocation(line: 397, column: 15, scope: !1487)
!1562 = !DILocation(line: 398, column: 13, scope: !1560)
!1563 = !DILocation(line: 399, column: 11, scope: !1487)
!1564 = !DILocation(line: 404, column: 15, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 404, column: 15)
!1566 = !DILocation(line: 404, column: 18, scope: !1565)
!1567 = !DILocation(line: 404, column: 21, scope: !1565)
!1568 = !DILocation(line: 404, column: 28, scope: !1565)
!1569 = !DILocation(line: 404, column: 36, scope: !1565)
!1570 = !DILocation(line: 404, column: 39, scope: !1565)
!1571 = !DILocation(line: 404, column: 46, scope: !1565)
!1572 = !DILocation(line: 404, column: 15, scope: !1487)
!1573 = !DILocation(line: 405, column: 13, scope: !1565)
!1574 = !DILocation(line: 408, column: 19, scope: !1487)
!1575 = !DILocation(line: 408, column: 18, scope: !1487)
!1576 = !DILocation(line: 409, column: 19, scope: !1487)
!1577 = !DILocation(line: 409, column: 11, scope: !1487)
!1578 = !DILocation(line: 413, column: 15, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 410, column: 13)
!1580 = !DILocation(line: 416, column: 20, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 416, column: 19)
!1582 = !DILocation(line: 416, column: 19, scope: !1579)
!1583 = !DILocation(line: 418, column: 19, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 417, column: 17)
!1585 = !DILocation(line: 419, column: 22, scope: !1584)
!1586 = !DILocation(line: 419, column: 26, scope: !1584)
!1587 = !DILocation(line: 420, column: 19, scope: !1584)
!1588 = !DILocation(line: 423, column: 15, scope: !1579)
!1589 = !DILocation(line: 426, column: 19, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 426, column: 19)
!1591 = !DILocation(line: 426, column: 19, scope: !1579)
!1592 = !DILocation(line: 427, column: 17, scope: !1590)
!1593 = !DILocation(line: 429, column: 15, scope: !1579)
!1594 = !DILocation(line: 431, column: 36, scope: !1579)
!1595 = !DILocation(line: 432, column: 36, scope: !1579)
!1596 = !DILocation(line: 433, column: 36, scope: !1579)
!1597 = !DILocation(line: 434, column: 36, scope: !1579)
!1598 = !DILocation(line: 435, column: 36, scope: !1579)
!1599 = !DILocation(line: 438, column: 15, scope: !1579)
!1600 = !DILocation(line: 442, column: 15, scope: !1579)
!1601 = !DILocation(line: 0, scope: !1487)
!1602 = !DILocation(line: 444, column: 11, scope: !1487)
!1603 = !DILocation(line: 448, column: 15, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 448, column: 15)
!1605 = !DILocation(line: 448, column: 15, scope: !1487)
!1606 = !DILocation(line: 449, column: 13, scope: !1604)
!1607 = !DILocation(line: 453, column: 23, scope: !1486)
!1608 = !DILocation(line: 0, scope: !1486)
!1609 = !DILocation(line: 454, column: 18, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 454, column: 17)
!1611 = !DILocation(line: 454, column: 17, scope: !1486)
!1612 = !DILocation(line: 455, column: 15, scope: !1610)
!1613 = !DILocation(line: 459, column: 23, scope: !1486)
!1614 = !DILocation(line: 460, column: 17, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 460, column: 17)
!1616 = !DILocation(line: 460, column: 17, scope: !1486)
!1617 = !DILocation(line: 462, column: 17, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 461, column: 15)
!1619 = !DILocation(line: 463, column: 17, scope: !1618)
!1620 = !DILocation(line: 463, column: 17, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 463, column: 17)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 463, column: 17)
!1623 = !DILocation(line: 463, column: 17, scope: !1622)
!1624 = !DILocation(line: 464, column: 17, scope: !1618)
!1625 = !DILocation(line: 464, column: 24, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !2, line: 464, column: 17)
!1627 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 464, column: 17)
!1628 = !DILocation(line: 464, column: 17, scope: !1627)
!1629 = !DILocation(line: 465, column: 46, scope: !1626)
!1630 = !DILocation(line: 465, column: 19, scope: !1626)
!1631 = !DILocation(line: 464, column: 29, scope: !1626)
!1632 = !DILocation(line: 464, column: 17, scope: !1626)
!1633 = distinct !{!1633, !1628, !1634, !626, !627}
!1634 = !DILocation(line: 465, column: 48, scope: !1627)
!1635 = !DILocation(line: 466, column: 15, scope: !1618)
!1636 = !DILocation(line: 468, column: 15, scope: !1615)
!1637 = !DILocation(line: 468, column: 15, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 468, column: 15)
!1639 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 468, column: 15)
!1640 = !DILocation(line: 468, column: 15, scope: !1639)
!1641 = !DILocation(line: 470, column: 19, scope: !1486)
!1642 = !DILocation(line: 470, column: 37, scope: !1486)
!1643 = !DILocation(line: 475, column: 7, scope: !1484)
!1644 = !DILocation(line: 476, column: 7, scope: !1484)
!1645 = !DILocation(line: 477, column: 7, scope: !1484)
!1646 = !DILocation(line: 480, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 480, column: 7)
!1648 = !DILocation(line: 480, column: 10, scope: !1647)
!1649 = !DILocation(line: 480, column: 13, scope: !1647)
!1650 = !DILocation(line: 480, column: 7, scope: !1466)
!1651 = !DILocation(line: 481, column: 5, scope: !1647)
!1652 = !DILocation(line: 483, column: 2, scope: !1466)
!1653 = !DILocation(line: 484, column: 3, scope: !1466)
!1654 = !DILocation(line: 485, column: 14, scope: !1466)
!1655 = !DILocation(line: 485, column: 9, scope: !1466)
!1656 = !DILocation(line: 486, column: 10, scope: !1466)
!1657 = !DILocation(line: 486, column: 3, scope: !1466)
!1658 = !DILocation(line: 487, column: 1, scope: !1466)
!1659 = !DISubprogram(name: "xnmalloc", scope: !1660, file: !1660, line: 132, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1660 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!129, !370, !370}
!1663 = distinct !DISubprogram(name: "check_start_new_arg", scope: !2, file: !2, line: 299, type: !1664, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1667)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1667 = !{!1668, !1669}
!1668 = !DILocalVariable(name: "ss", arg: 1, scope: !1663, file: !2, line: 299, type: !1666)
!1669 = !DILocalVariable(name: "argc", scope: !1670, file: !2, line: 304, type: !100)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 302, column: 5)
!1671 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 301, column: 7)
!1672 = !DILocation(line: 0, scope: !1663)
!1673 = !DILocation(line: 301, column: 11, scope: !1671)
!1674 = !DILocation(line: 301, column: 7, scope: !1663)
!1675 = !DILocation(line: 303, column: 7, scope: !1670)
!1676 = !DILocation(line: 304, column: 22, scope: !1670)
!1677 = !DILocation(line: 0, scope: !1670)
!1678 = !DILocation(line: 305, column: 15, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 305, column: 11)
!1680 = !DILocation(line: 305, column: 40, scope: !1679)
!1681 = !DILocation(line: 305, column: 34, scope: !1679)
!1682 = !DILocation(line: 305, column: 51, scope: !1679)
!1683 = !DILocation(line: 305, column: 29, scope: !1679)
!1684 = !DILocation(line: 305, column: 26, scope: !1679)
!1685 = !DILocation(line: 305, column: 11, scope: !1670)
!1686 = !DILocation(line: 306, column: 9, scope: !1679)
!1687 = !DILocation(line: 307, column: 32, scope: !1670)
!1688 = !DILocation(line: 307, column: 28, scope: !1670)
!1689 = !DILocation(line: 307, column: 11, scope: !1670)
!1690 = !DILocation(line: 307, column: 21, scope: !1670)
!1691 = !DILocation(line: 307, column: 7, scope: !1670)
!1692 = !DILocation(line: 307, column: 26, scope: !1670)
!1693 = !DILocation(line: 308, column: 23, scope: !1670)
!1694 = !DILocation(line: 308, column: 11, scope: !1670)
!1695 = !DILocation(line: 308, column: 16, scope: !1670)
!1696 = !DILocation(line: 309, column: 11, scope: !1670)
!1697 = !DILocation(line: 309, column: 15, scope: !1670)
!1698 = !DILocation(line: 310, column: 5, scope: !1670)
!1699 = !DILocation(line: 311, column: 1, scope: !1663)
!1700 = !DISubprogram(name: "strspn", scope: !655, file: !655, line: 88, type: !1701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!373, !126, !126}
!1703 = distinct !DISubprogram(name: "extract_varname", scope: !2, file: !2, line: 217, type: !1704, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!128, !126}
!1706 = !{!1707, !1708, !1709}
!1707 = !DILocalVariable(name: "str", arg: 1, scope: !1703, file: !2, line: 217, type: !126)
!1708 = !DILocalVariable(name: "i", scope: !1703, file: !2, line: 219, type: !364)
!1709 = !DILocalVariable(name: "p", scope: !1703, file: !2, line: 220, type: !126)
!1710 = !DILocation(line: 0, scope: !1703)
!1711 = !DILocation(line: 222, column: 7, scope: !1703)
!1712 = !DILocation(line: 223, column: 8, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 223, column: 7)
!1714 = !DILocation(line: 223, column: 7, scope: !1703)
!1715 = !DILocation(line: 224, column: 5, scope: !1713)
!1716 = !DILocation(line: 227, column: 9, scope: !1703)
!1717 = !DILocation(line: 227, column: 15, scope: !1703)
!1718 = !DILocation(line: 229, column: 12, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 229, column: 7)
!1720 = !DILocation(line: 229, column: 9, scope: !1719)
!1721 = !DILocation(line: 229, column: 7, scope: !1703)
!1722 = !DILocation(line: 231, column: 17, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 230, column: 5)
!1724 = !DILocation(line: 231, column: 13, scope: !1723)
!1725 = !DILocation(line: 232, column: 27, scope: !1723)
!1726 = !DILocation(line: 232, column: 36, scope: !1723)
!1727 = !DILocation(line: 232, column: 17, scope: !1723)
!1728 = !DILocation(line: 232, column: 15, scope: !1723)
!1729 = !DILocation(line: 233, column: 5, scope: !1723)
!1730 = !DILocation(line: 235, column: 11, scope: !1703)
!1731 = !DILocation(line: 235, column: 24, scope: !1703)
!1732 = !DILocation(line: 235, column: 3, scope: !1703)
!1733 = !DILocation(line: 236, column: 3, scope: !1703)
!1734 = !DILocation(line: 236, column: 14, scope: !1703)
!1735 = !DILocation(line: 238, column: 10, scope: !1703)
!1736 = !DILocation(line: 238, column: 3, scope: !1703)
!1737 = !DILocation(line: 239, column: 1, scope: !1703)
!1738 = !DISubprogram(name: "getenv", scope: !653, file: !653, line: 147, type: !1704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1739 = distinct !DISubprogram(name: "splitbuf_append_byte", scope: !2, file: !2, line: 287, type: !1740, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !1666, !4}
!1742 = !{!1743, !1744, !1745}
!1743 = !DILocalVariable(name: "ss", arg: 1, scope: !1739, file: !2, line: 287, type: !1666)
!1744 = !DILocalVariable(name: "c", arg: 2, scope: !1739, file: !2, line: 287, type: !4)
!1745 = !DILocalVariable(name: "string_bytes", scope: !1739, file: !2, line: 289, type: !364)
!1746 = !DILocation(line: 0, scope: !1739)
!1747 = !DILocation(line: 289, column: 39, scope: !1739)
!1748 = !DILocation(line: 289, column: 48, scope: !1739)
!1749 = !DILocation(line: 289, column: 35, scope: !1739)
!1750 = !DILocation(line: 289, column: 24, scope: !1739)
!1751 = !DILocation(line: 290, column: 11, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 290, column: 7)
!1753 = !DILocation(line: 290, column: 22, scope: !1752)
!1754 = !DILocation(line: 290, column: 41, scope: !1752)
!1755 = !DILocation(line: 290, column: 7, scope: !1739)
!1756 = !DILocation(line: 291, column: 5, scope: !1752)
!1757 = !DILocation(line: 292, column: 18, scope: !1739)
!1758 = !DILocation(line: 292, column: 29, scope: !1739)
!1759 = !DILocation(line: 292, column: 23, scope: !1739)
!1760 = !DILocation(line: 292, column: 3, scope: !1739)
!1761 = !DILocation(line: 292, column: 56, scope: !1739)
!1762 = !DILocation(line: 293, column: 58, scope: !1739)
!1763 = !DILocation(line: 293, column: 24, scope: !1739)
!1764 = !DILocation(line: 293, column: 7, scope: !1739)
!1765 = !DILocation(line: 293, column: 16, scope: !1739)
!1766 = !DILocation(line: 293, column: 3, scope: !1739)
!1767 = !DILocation(line: 293, column: 22, scope: !1739)
!1768 = !DILocation(line: 294, column: 1, scope: !1739)
!1769 = distinct !DISubprogram(name: "splitbuf_finishup", scope: !2, file: !2, line: 316, type: !1770, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!184, !1666}
!1772 = !{!1773, !1774, !1775, !1776, !1777}
!1773 = !DILocalVariable(name: "ss", arg: 1, scope: !1769, file: !2, line: 316, type: !1666)
!1774 = !DILocalVariable(name: "argc", scope: !1769, file: !2, line: 318, type: !100)
!1775 = !DILocalVariable(name: "argv", scope: !1769, file: !2, line: 319, type: !184)
!1776 = !DILocalVariable(name: "stringbase", scope: !1769, file: !2, line: 320, type: !128)
!1777 = !DILocalVariable(name: "i", scope: !1778, file: !2, line: 321, type: !100)
!1778 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 321, column: 3)
!1779 = !DILocation(line: 0, scope: !1769)
!1780 = !DILocation(line: 318, column: 18, scope: !1769)
!1781 = !DILocation(line: 319, column: 21, scope: !1769)
!1782 = !DILocation(line: 320, column: 36, scope: !1769)
!1783 = !DILocation(line: 320, column: 47, scope: !1769)
!1784 = !DILocation(line: 320, column: 41, scope: !1769)
!1785 = !DILocation(line: 0, scope: !1778)
!1786 = !DILocation(line: 321, column: 8, scope: !1778)
!1787 = !DILocation(line: 321, scope: !1778)
!1788 = !DILocation(line: 321, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 321, column: 3)
!1790 = !DILocation(line: 321, column: 3, scope: !1778)
!1791 = !DILocation(line: 322, column: 39, scope: !1789)
!1792 = !DILocation(line: 322, column: 28, scope: !1789)
!1793 = !DILocation(line: 322, column: 26, scope: !1789)
!1794 = !DILocation(line: 322, column: 5, scope: !1789)
!1795 = !DILocation(line: 322, column: 13, scope: !1789)
!1796 = !DILocation(line: 321, column: 30, scope: !1789)
!1797 = !DILocation(line: 321, column: 3, scope: !1789)
!1798 = distinct !{!1798, !1790, !1799, !626, !627}
!1799 = !DILocation(line: 322, column: 45, scope: !1778)
!1800 = !DILocation(line: 323, column: 3, scope: !1769)
!1801 = distinct !DISubprogram(name: "splitbuf_grow", scope: !2, file: !2, line: 276, type: !1664, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1802)
!1802 = !{!1803, !1804, !1805}
!1803 = !DILocalVariable(name: "ss", arg: 1, scope: !1801, file: !2, line: 276, type: !1666)
!1804 = !DILocalVariable(name: "old_half_alloc", scope: !1801, file: !2, line: 278, type: !364)
!1805 = !DILocalVariable(name: "string_bytes", scope: !1801, file: !2, line: 279, type: !364)
!1806 = !DILocation(line: 0, scope: !1801)
!1807 = !DILocation(line: 278, column: 30, scope: !1801)
!1808 = !DILocation(line: 279, column: 39, scope: !1801)
!1809 = !DILocation(line: 279, column: 48, scope: !1801)
!1810 = !DILocation(line: 279, column: 35, scope: !1801)
!1811 = !DILocation(line: 279, column: 24, scope: !1801)
!1812 = !DILocation(line: 280, column: 27, scope: !1801)
!1813 = !DILocation(line: 280, column: 38, scope: !1801)
!1814 = !DILocation(line: 280, column: 14, scope: !1801)
!1815 = !DILocation(line: 280, column: 7, scope: !1801)
!1816 = !DILocation(line: 280, column: 12, scope: !1801)
!1817 = !DILocation(line: 282, column: 16, scope: !1801)
!1818 = !DILocation(line: 282, column: 27, scope: !1801)
!1819 = !DILocation(line: 282, column: 21, scope: !1801)
!1820 = !DILocation(line: 282, column: 43, scope: !1801)
!1821 = !DILocation(line: 282, column: 48, scope: !1801)
!1822 = !DILocation(line: 282, column: 3, scope: !1801)
!1823 = !DILocation(line: 283, column: 1, scope: !1801)
!1824 = !DISubprogram(name: "xpalloc", scope: !1660, file: !1660, line: 88, type: !1825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!129, !129, !1827, !364, !366, !364}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!1828 = distinct !DISubprogram(name: "scan_varname", scope: !2, file: !2, line: 197, type: !1180, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1829)
!1829 = !{!1830, !1831}
!1830 = !DILocalVariable(name: "str", arg: 1, scope: !1828, file: !2, line: 197, type: !126)
!1831 = !DILocalVariable(name: "end", scope: !1832, file: !2, line: 201, type: !126)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 200, column: 5)
!1833 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 199, column: 7)
!1834 = !DILocation(line: 0, scope: !1828)
!1835 = !DILocation(line: 199, column: 7, scope: !1833)
!1836 = !DILocation(line: 199, column: 14, scope: !1833)
!1837 = !DILocation(line: 199, column: 21, scope: !1833)
!1838 = !DILocation(line: 199, column: 36, scope: !1833)
!1839 = !DILocation(line: 199, column: 25, scope: !1833)
!1840 = !DILocation(line: 199, column: 44, scope: !1833)
!1841 = !DILocation(line: 199, column: 47, scope: !1833)
!1842 = !DILocation(line: 199, column: 54, scope: !1833)
!1843 = !DILocation(line: 199, column: 7, scope: !1828)
!1844 = !DILocation(line: 201, column: 29, scope: !1832)
!1845 = !DILocation(line: 0, scope: !1832)
!1846 = !DILocation(line: 202, column: 7, scope: !1832)
!1847 = !DILocation(line: 202, column: 25, scope: !1832)
!1848 = !DILocation(line: 202, column: 14, scope: !1832)
!1849 = !DILocation(line: 202, column: 31, scope: !1832)
!1850 = !DILocation(line: 202, column: 34, scope: !1832)
!1851 = !DILocation(line: 202, column: 39, scope: !1832)
!1852 = !DILocation(line: 203, column: 9, scope: !1832)
!1853 = distinct !{!1853, !1846, !1854, !626, !627}
!1854 = !DILocation(line: 203, column: 11, scope: !1832)
!1855 = !DILocation(line: 204, column: 11, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 204, column: 11)
!1857 = !DILocation(line: 204, column: 16, scope: !1856)
!1858 = !DILocation(line: 204, column: 11, scope: !1832)
!1859 = !DILocation(line: 205, column: 9, scope: !1856)
!1860 = !DILocation(line: 206, column: 5, scope: !1833)
!1861 = !DILocation(line: 206, column: 5, scope: !1832)
!1862 = !DILocation(line: 208, column: 3, scope: !1828)
!1863 = !DILocation(line: 209, column: 1, scope: !1828)
!1864 = !DISubprogram(name: "xrealloc", scope: !1660, file: !1660, line: 76, type: !1865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!129, !129, !370}
!1867 = distinct !DISubprogram(name: "c_isalpha", scope: !1868, file: !1868, line: 181, type: !1869, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1871)
!1868 = !DIFile(filename: "../lib/c-ctype.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!190, !100}
!1871 = !{!1872}
!1872 = !DILocalVariable(name: "c", arg: 1, scope: !1867, file: !1868, line: 181, type: !100)
!1873 = !DILocation(line: 0, scope: !1867)
!1874 = !DILocation(line: 183, column: 3, scope: !1867)
!1875 = !DILocation(line: 187, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1867, file: !1868, line: 184, column: 5)
!1877 = !DILocation(line: 189, column: 7, scope: !1876)
!1878 = !DILocation(line: 0, scope: !1876)
!1879 = !DILocation(line: 191, column: 1, scope: !1867)
!1880 = distinct !DISubprogram(name: "c_isalnum", scope: !1868, file: !1868, line: 167, type: !1869, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1881)
!1881 = !{!1882}
!1882 = !DILocalVariable(name: "c", arg: 1, scope: !1880, file: !1868, line: 167, type: !100)
!1883 = !DILocation(line: 0, scope: !1880)
!1884 = !DILocation(line: 169, column: 3, scope: !1880)
!1885 = !DILocation(line: 174, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1880, file: !1868, line: 170, column: 5)
!1887 = !DILocation(line: 176, column: 7, scope: !1886)
!1888 = !DILocation(line: 0, scope: !1886)
!1889 = !DILocation(line: 178, column: 1, scope: !1880)
!1890 = !DISubprogram(name: "sigfillset", scope: !1435, file: !1435, line: 90, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1891 = !DISubprogram(name: "xstrdup", scope: !1660, file: !1660, line: 99, type: !1704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1892 = !DISubprogram(name: "strtok", scope: !655, file: !655, line: 90, type: !1893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!128, !128, !126}
!1895 = !DISubprogram(name: "operand2sig", scope: !1896, file: !1896, line: 18, type: !1897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1896 = !DIFile(filename: "../src/operand2sig.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!100, !126, !128}
!1899 = !DISubprogram(name: "rpl_free", scope: !1171, file: !1171, line: 756, type: !1900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !129}
!1902 = !DISubprogram(name: "x2nrealloc", scope: !1660, file: !1660, line: 86, type: !1903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!129, !129, !1905, !370}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!1906 = !DISubprogram(name: "xmalloc", scope: !1660, file: !1660, line: 55, type: !1907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!129, !370}
