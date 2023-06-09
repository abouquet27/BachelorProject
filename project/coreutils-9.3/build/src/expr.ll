; ModuleID = 'coreutils-9.3/build/src/expr.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.infomap = type { ptr, ptr }
%struct.valinfo = type { i32, %union.anon }
%union.anon = type { [1 x %struct.__mpz_struct] }
%struct.__mpz_struct = type { i32, i32, ptr }
%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.re_registers = type { i64, ptr, ptr }
%struct.mbuiter_multi = type { i8, %union.__mbstate_t, i8, %struct.mbchar }
%union.__mbstate_t = type { i64, [120 x i8] }
%struct.mbchar = type { ptr, i64, i8, i32, [24 x i8] }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s EXPRESSION\0A  or:  %s OPTION\0A\00", align 1, !dbg !7
@__stdoutp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [274 x i8] c"\0APrint the value of EXPRESSION to standard output.  A blank line below\0Aseparates increasing precedence groups.  EXPRESSION may be:\0A\0A  ARG1 | ARG2       ARG1 if it is neither null nor 0, otherwise ARG2\0A\0A  ARG1 & ARG2       ARG1 if neither argument is null or 0, otherwise 0\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [290 x i8] c"\0A  ARG1 < ARG2       ARG1 is less than ARG2\0A  ARG1 <= ARG2      ARG1 is less than or equal to ARG2\0A  ARG1 = ARG2       ARG1 is equal to ARG2\0A  ARG1 != ARG2      ARG1 is unequal to ARG2\0A  ARG1 >= ARG2      ARG1 is greater than or equal to ARG2\0A  ARG1 > ARG2       ARG1 is greater than ARG2\0A\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [113 x i8] c"\0A  ARG1 + ARG2       arithmetic sum of ARG1 and ARG2\0A  ARG1 - ARG2       arithmetic difference of ARG1 and ARG2\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [187 x i8] c"\0A  ARG1 * ARG2       arithmetic product of ARG1 and ARG2\0A  ARG1 / ARG2       arithmetic quotient of ARG1 divided by ARG2\0A  ARG1 % ARG2       arithmetic remainder of ARG1 divided by ARG2\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [310 x i8] c"\0A  STRING : REGEXP   anchored pattern match of REGEXP in STRING\0A\0A  match STRING REGEXP        same as STRING : REGEXP\0A  substr STRING POS LENGTH   substring of STRING, POS counted from 1\0A  index STRING CHARS         index in STRING where any CHARS is found, or 0\0A  length STRING              length of STRING\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [201 x i8] c"  + TOKEN                    interpret TOKEN as a string, even if it is a\0A                               keyword like 'match' or an operator like '/'\0A\0A  ( EXPRESSION )             value of EXPRESSION\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [292 x i8] c"\0ABeware that many operators need to be escaped or quoted for shells.\0AComparisons are arithmetic if both ARGs are numbers, else lexicographical.\0APattern matches return the string matched between \\( and \\) or null; if\0A\\( and \\) are not used, they return the number of characters matched or 0.\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [156 x i8] c"\0AExit status is 0 if EXPRESSION is neither null nor 0, 1 if EXPRESSION is null\0Aor 0, 2 if EXPRESSION is syntactically invalid, and 3 if an error occurred.\0A\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [5 x i8] c"expr\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !64
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [4 x i8] c"9.3\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1, !dbg !79
@.str.17 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1, !dbg !84
@.str.18 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1, !dbg !89
@.str.19 = private unnamed_addr constant [3 x i8] c"--\00", align 1, !dbg !91
@.str.20 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !96
@args = internal global ptr null, align 8, !dbg !101
@.str.21 = private unnamed_addr constant [37 x i8] c"syntax error: unexpected argument %s\00", align 1, !dbg !206
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !211
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !217
@.str.24 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !219
@.str.25 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !224
@.str.26 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !229
@.str.27 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !231
@.str.28 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !233
@.str.29 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !235
@.str.30 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !237
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.22, ptr @.str.23 }, %struct.infomap { ptr @.str.24, ptr @.str.25 }, %struct.infomap { ptr @.str.26, ptr @.str.27 }, %struct.infomap { ptr @.str.28, ptr @.str.27 }, %struct.infomap { ptr @.str.29, ptr @.str.27 }, %struct.infomap { ptr @.str.30, ptr @.str.27 }, %struct.infomap zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !239
@.str.32 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !244
@.str.33 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !249
@.str.34 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !251
@.str.35 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !256
@.str.36 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !258
@.str.37 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !263
@.str.38 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !268
@exit_failure = external global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"|\00", align 1, !dbg !270
@.str.40 = private unnamed_addr constant [2 x i8] c"&\00", align 1, !dbg !272
@.str.41 = private unnamed_addr constant [2 x i8] c"<\00", align 1, !dbg !274
@.str.42 = private unnamed_addr constant [3 x i8] c"<=\00", align 1, !dbg !276
@.str.43 = private unnamed_addr constant [2 x i8] c"=\00", align 1, !dbg !278
@.str.44 = private unnamed_addr constant [3 x i8] c"==\00", align 1, !dbg !280
@.str.45 = private unnamed_addr constant [3 x i8] c"!=\00", align 1, !dbg !282
@.str.46 = private unnamed_addr constant [3 x i8] c">=\00", align 1, !dbg !284
@.str.47 = private unnamed_addr constant [2 x i8] c">\00", align 1, !dbg !286
@.str.48 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1, !dbg !288
@.str.49 = private unnamed_addr constant [42 x i8] c"set LC_ALL='C' to work around the problem\00", align 1, !dbg !293
@.str.50 = private unnamed_addr constant [36 x i8] c"the strings compared were %s and %s\00", align 1, !dbg !298
@.str.51 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !303
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !305
@.str.53 = private unnamed_addr constant [21 x i8] c"non-integer argument\00", align 1, !dbg !307
@.str.54 = private unnamed_addr constant [2 x i8] c"*\00", align 1, !dbg !312
@.str.55 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !314
@.str.56 = private unnamed_addr constant [2 x i8] c"%\00", align 1, !dbg !316
@.str.57 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1, !dbg !318
@.str.58 = private unnamed_addr constant [2 x i8] c":\00", align 1, !dbg !323
@.str.59 = private unnamed_addr constant [7 x i8] c"length\00", align 1, !dbg !325
@.str.60 = private unnamed_addr constant [6 x i8] c"match\00", align 1, !dbg !330
@.str.61 = private unnamed_addr constant [6 x i8] c"index\00", align 1, !dbg !335
@.str.62 = private unnamed_addr constant [7 x i8] c"substr\00", align 1, !dbg !337
@.str.63 = private unnamed_addr constant [40 x i8] c"syntax error: missing argument after %s\00", align 1, !dbg !339
@__func__.mbuiter_multi_next = private unnamed_addr constant [19 x i8] c"mbuiter_multi_next\00", align 1, !dbg !341
@.str.64 = private unnamed_addr constant [10 x i8] c"mbuiter.h\00", align 1, !dbg !347
@.str.65 = private unnamed_addr constant [23 x i8] c"mbsinit (&iter->state)\00", align 1, !dbg !349
@.str.66 = private unnamed_addr constant [23 x i8] c"*iter->cur.ptr == '\\0'\00", align 1, !dbg !351
@.str.67 = private unnamed_addr constant [18 x i8] c"iter->cur.wc == 0\00", align 1, !dbg !353
@is_basic_table = external constant [0 x i32], align 4
@.str.68 = private unnamed_addr constant [2 x i8] c"(\00", align 1, !dbg !358
@.str.69 = private unnamed_addr constant [37 x i8] c"syntax error: expecting ')' after %s\00", align 1, !dbg !360
@.str.70 = private unnamed_addr constant [2 x i8] c")\00", align 1, !dbg !362
@.str.71 = private unnamed_addr constant [42 x i8] c"syntax error: expecting ')' instead of %s\00", align 1, !dbg !364
@.str.72 = private unnamed_addr constant [29 x i8] c"syntax error: unexpected ')'\00", align 1, !dbg !366
@rpl_re_syntax_options = external global i64, align 8
@.str.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !371
@.str.74 = private unnamed_addr constant [36 x i8] c"error in regular expression matcher\00", align 1, !dbg !373

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !387, metadata !DIExpression()), !dbg !388
  %2 = icmp ne i32 %0, 0, !dbg !389
  br i1 %2, label %3, label %9, !dbg !391

3:                                                ; preds = %1
  br label %4, !dbg !392

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !393, !tbaa !395
  %6 = load ptr, ptr @program_name, align 8, !dbg !393, !tbaa !395
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !393
  br label %8, !dbg !393

8:                                                ; preds = %4
  br label %35, !dbg !393

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !399, !tbaa !395
  %11 = load ptr, ptr @program_name, align 8, !dbg !401, !tbaa !395
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10, ptr noundef %11), !dbg !402
  %13 = load ptr, ptr @__stdoutp, align 8, !dbg !403, !tbaa !395
  %14 = call i32 @putc_unlocked(i32 noundef 10, ptr noundef %13), !dbg !403
  %15 = load ptr, ptr @__stdoutp, align 8, !dbg !404, !tbaa !395
  %16 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %15), !dbg !405
  %17 = load ptr, ptr @__stdoutp, align 8, !dbg !406, !tbaa !395
  %18 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %17), !dbg !407
  %19 = load ptr, ptr @__stdoutp, align 8, !dbg !408, !tbaa !395
  %20 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %19), !dbg !409
  %21 = load ptr, ptr @__stdoutp, align 8, !dbg !410, !tbaa !395
  %22 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %21), !dbg !411
  %23 = load ptr, ptr @__stdoutp, align 8, !dbg !412, !tbaa !395
  %24 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %23), !dbg !413
  %25 = load ptr, ptr @__stdoutp, align 8, !dbg !414, !tbaa !395
  %26 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %25), !dbg !415
  %27 = load ptr, ptr @__stdoutp, align 8, !dbg !416, !tbaa !395
  %28 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %27), !dbg !417
  %29 = load ptr, ptr @__stdoutp, align 8, !dbg !418, !tbaa !395
  %30 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %29), !dbg !419
  %31 = load ptr, ptr @__stdoutp, align 8, !dbg !420, !tbaa !395
  %32 = call i32 @"\01_fputs"(ptr noundef @.str.10, ptr noundef %31), !dbg !421
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !422, !tbaa !395
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.11, ptr noundef %33), !dbg !423
  call void @emit_ancillary_info(ptr noundef @.str.12), !dbg !424
  br label %35

35:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #15, !dbg !425
  unreachable, !dbg !425
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !426 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !485 i32 @printf(ptr noundef, ...) #2

declare !dbg !488 i32 @putc_unlocked(i32 noundef, ptr noundef) #2

declare !dbg !491 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !494 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !498, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #16, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %2, metadata !499, metadata !DIExpression()), !dbg !513
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !513
  call void @llvm.dbg.value(metadata ptr %0, metadata !506, metadata !DIExpression()), !dbg !511
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !514
  call void @llvm.dbg.value(metadata ptr %3, metadata !507, metadata !DIExpression()), !dbg !511
  br label %4, !dbg !515

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !511
  call void @llvm.dbg.value(metadata ptr %.0, metadata !507, metadata !DIExpression()), !dbg !511
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !516
  %6 = load ptr, ptr %5, align 8, !dbg !516, !tbaa !517
  %7 = icmp ne ptr %6, null, !dbg !519
  br i1 %7, label %8, label %14, !dbg !520

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !521
  %10 = load ptr, ptr %9, align 8, !dbg !521, !tbaa !517
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !521
  %12 = icmp eq i32 %11, 0, !dbg !521
  %13 = xor i1 %12, true, !dbg !522
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !511
  br i1 %15, label %16, label %18, !dbg !515

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !523
  call void @llvm.dbg.value(metadata ptr %17, metadata !507, metadata !DIExpression()), !dbg !511
  br label %4, !dbg !515, !llvm.loop !524

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !527
  %20 = load ptr, ptr %19, align 8, !dbg !527, !tbaa !529
  %21 = icmp ne ptr %20, null, !dbg !530
  br i1 %21, label %22, label %25, !dbg !531

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !532
  %24 = load ptr, ptr %23, align 8, !dbg !532, !tbaa !529
  call void @llvm.dbg.value(metadata ptr %24, metadata !506, metadata !DIExpression()), !dbg !511
  br label %25, !dbg !533

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !511
  call void @llvm.dbg.value(metadata ptr %.01, metadata !506, metadata !DIExpression()), !dbg !511
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.31, ptr noundef @.str.14, ptr noundef @.str.32), !dbg !534
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !535
  call void @llvm.dbg.value(metadata ptr %27, metadata !509, metadata !DIExpression()), !dbg !511
  %28 = icmp ne ptr %27, null, !dbg !536
  br i1 %28, label %29, label %35, !dbg !538

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.33, i64 noundef 3), !dbg !539
  %31 = icmp ne i32 %30, 0, !dbg !539
  br i1 %31, label %32, label %35, !dbg !540

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !541, !tbaa !395
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.34, ptr noundef %33), !dbg !543
  br label %35, !dbg !544

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.22), !dbg !545
  %37 = icmp eq i32 %36, 0, !dbg !545
  br i1 %37, label %38, label %39, !dbg !545

38:                                               ; preds = %35
  br label %40, !dbg !545

39:                                               ; preds = %35
  br label %40, !dbg !545

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.35, %38 ], [ %0, %39 ], !dbg !545
  call void @llvm.dbg.value(metadata ptr %41, metadata !510, metadata !DIExpression()), !dbg !511
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef @.str.32, ptr noundef %41), !dbg !546
  %43 = icmp eq ptr %.01, %0, !dbg !547
  %44 = zext i1 %43 to i64, !dbg !548
  %45 = select i1 %43, ptr @.str.38, ptr @.str.13, !dbg !548
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, ptr noundef %.01, ptr noundef %45), !dbg !549
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #16, !dbg !550
  ret void, !dbg !550
}

; Function Attrs: noreturn
declare !dbg !551 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !553 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !557 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !561 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !568, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata ptr %1, metadata !569, metadata !DIExpression()), !dbg !572
  %3 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !573
  %4 = load ptr, ptr %3, align 8, !dbg !573, !tbaa !395
  call void @set_program_name(ptr noundef %4), !dbg !574
  %5 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.13), !dbg !575
  call void @initialize_exit_failure(i32 noundef 3), !dbg !576
  %6 = call i32 @atexit(ptr noundef @close_stdout), !dbg !577
  call void (i32, ptr, ptr, ptr, ptr, ptr, ...) @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef @.str.12, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef @usage, ptr noundef @.str.16, ptr noundef @.str.17, ptr noundef @.str.18, ptr noundef null), !dbg !578
  call void @llvm.dbg.value(metadata i32 %0, metadata !571, metadata !DIExpression()), !dbg !572
  %7 = icmp ult i32 1, %0, !dbg !579
  br i1 %7, label %8, label %16, !dbg !581

8:                                                ; preds = %2
  %9 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !582
  %10 = load ptr, ptr %9, align 8, !dbg !582, !tbaa !395
  %11 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.19), !dbg !582
  %12 = icmp eq i32 %11, 0, !dbg !582
  br i1 %12, label %13, label %16, !dbg !583

13:                                               ; preds = %8
  %14 = add i32 %0, -1, !dbg !584
  call void @llvm.dbg.value(metadata i32 %14, metadata !571, metadata !DIExpression()), !dbg !572
  %15 = getelementptr inbounds ptr, ptr %1, i32 1, !dbg !586
  call void @llvm.dbg.value(metadata ptr %15, metadata !569, metadata !DIExpression()), !dbg !572
  br label %16, !dbg !587

16:                                               ; preds = %13, %8, %2
  %.01 = phi ptr [ %15, %13 ], [ %1, %8 ], [ %1, %2 ]
  %.0 = phi i32 [ %14, %13 ], [ %0, %8 ], [ %0, %2 ], !dbg !572
  call void @llvm.dbg.value(metadata i32 %.0, metadata !571, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata ptr %.01, metadata !569, metadata !DIExpression()), !dbg !572
  %17 = icmp ule i32 %.0, 1, !dbg !588
  br i1 %17, label %18, label %19, !dbg !590

18:                                               ; preds = %16
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.20), !dbg !591
  call void @usage(i32 noundef 2) #15, !dbg !593
  unreachable, !dbg !593

19:                                               ; preds = %16
  %20 = getelementptr inbounds ptr, ptr %.01, i64 1, !dbg !594
  store ptr %20, ptr @args, align 8, !dbg !595, !tbaa !395
  %21 = call ptr @eval(i1 noundef zeroext true), !dbg !596
  call void @llvm.dbg.value(metadata ptr %21, metadata !570, metadata !DIExpression()), !dbg !572
  %22 = call zeroext i1 @nomoreargs(), !dbg !597
  br i1 %22, label %27, label %23, !dbg !599

23:                                               ; preds = %19
  %24 = load ptr, ptr @args, align 8, !dbg !600, !tbaa !395
  %25 = load ptr, ptr %24, align 8, !dbg !600, !tbaa !395
  %26 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %25), !dbg !600
  call void (i32, i32, ptr, ...) @error(i32 noundef 2, i32 noundef 0, ptr noundef @.str.21, ptr noundef %26), !dbg !600
  unreachable, !dbg !600

27:                                               ; preds = %19
  call void @printv(ptr noundef %21), !dbg !601
  %28 = call zeroext i1 @null(ptr noundef %21), !dbg !602
  %29 = zext i1 %28 to i32, !dbg !602
  ret i32 %29, !dbg !602
}

declare !dbg !603 void @set_program_name(ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @initialize_exit_failure(i32 noundef %0) #3 !dbg !605 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !607, metadata !DIExpression()), !dbg !608
  %2 = icmp ne i32 %0, 1, !dbg !609
  br i1 %2, label %3, label %4, !dbg !611

3:                                                ; preds = %1
  store volatile i32 %0, ptr @exit_failure, align 4, !dbg !612, !tbaa !613
  br label %4, !dbg !615

4:                                                ; preds = %3, %1
  ret void, !dbg !616
}

declare void @close_stdout() #2

declare !dbg !617 i32 @atexit(ptr noundef) #2

declare !dbg !623 void @parse_long_options(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !628 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @eval(i1 noundef zeroext %0) #7 !dbg !632 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !634, metadata !DIExpression()), !dbg !637
  %3 = trunc i8 %2 to i1, !dbg !638
  %4 = call ptr @eval1(i1 noundef zeroext %3), !dbg !639
  call void @llvm.dbg.value(metadata ptr %4, metadata !635, metadata !DIExpression()), !dbg !637
  br label %5, !dbg !640

5:                                                ; preds = %24, %1
  %.0 = phi ptr [ %4, %1 ], [ %.2, %24 ], !dbg !637
  call void @llvm.dbg.value(metadata ptr %.0, metadata !635, metadata !DIExpression()), !dbg !637
  br label %6, !dbg !640

6:                                                ; preds = %5
  %7 = call zeroext i1 @nextarg(ptr noundef @.str.39), !dbg !641
  br i1 %7, label %8, label %23, !dbg !644

8:                                                ; preds = %6
  %9 = trunc i8 %2 to i1, !dbg !645
  br i1 %9, label %10, label %12, !dbg !647

10:                                               ; preds = %8
  %11 = call zeroext i1 @null(ptr noundef %.0) #17, !dbg !648
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i1 [ false, %8 ], [ %11, %10 ], !dbg !649
  %14 = call ptr @eval1(i1 noundef zeroext %13), !dbg !650
  call void @llvm.dbg.value(metadata ptr %14, metadata !636, metadata !DIExpression()), !dbg !637
  %15 = call zeroext i1 @null(ptr noundef %.0) #17, !dbg !651
  br i1 %15, label %16, label %21, !dbg !653

16:                                               ; preds = %12
  call void @freev(ptr noundef %.0), !dbg !654
  call void @llvm.dbg.value(metadata ptr %14, metadata !635, metadata !DIExpression()), !dbg !637
  %17 = call zeroext i1 @null(ptr noundef %14) #17, !dbg !656
  br i1 %17, label %18, label %20, !dbg !658

18:                                               ; preds = %16
  call void @freev(ptr noundef %14), !dbg !659
  %19 = call ptr @int_value(i64 noundef 0), !dbg !661
  call void @llvm.dbg.value(metadata ptr %19, metadata !635, metadata !DIExpression()), !dbg !637
  br label %20, !dbg !662

20:                                               ; preds = %18, %16
  %.1 = phi ptr [ %19, %18 ], [ %14, %16 ], !dbg !663
  call void @llvm.dbg.value(metadata ptr %.1, metadata !635, metadata !DIExpression()), !dbg !637
  br label %22, !dbg !664

21:                                               ; preds = %12
  call void @freev(ptr noundef %14), !dbg !665
  br label %22

22:                                               ; preds = %21, %20
  %.2 = phi ptr [ %.1, %20 ], [ %.0, %21 ], !dbg !637
  call void @llvm.dbg.value(metadata ptr %.2, metadata !635, metadata !DIExpression()), !dbg !637
  br label %24, !dbg !666

23:                                               ; preds = %6
  ret ptr %.0, !dbg !667

24:                                               ; preds = %22
  br label %5, !dbg !640, !llvm.loop !668
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @nomoreargs() #7 !dbg !670 {
  %1 = load ptr, ptr @args, align 8, !dbg !673, !tbaa !395
  %2 = load ptr, ptr %1, align 8, !dbg !674, !tbaa !395
  %3 = icmp eq ptr %2, null, !dbg !675
  ret i1 %3, !dbg !676
}

declare !dbg !677 ptr @quotearg_n_style(i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @printv(ptr noundef %0) #7 !dbg !680 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !684, metadata !DIExpression()), !dbg !685
  %2 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 0, !dbg !686
  %3 = load i32, ptr %2, align 8, !dbg !686, !tbaa !687
  switch i32 %3, label %15 [
    i32 0, label %4
    i32 1, label %11
  ], !dbg !689

4:                                                ; preds = %1
  %5 = load ptr, ptr @__stdoutp, align 8, !dbg !690, !tbaa !395
  %6 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !692
  %7 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %6, i64 0, i64 0, !dbg !693
  %8 = call i64 @mpz_out_str(ptr noundef %5, i32 noundef 10, ptr noundef %7), !dbg !694
  %9 = load ptr, ptr @__stdoutp, align 8, !dbg !695, !tbaa !395
  %10 = call i32 @putc_unlocked(i32 noundef 10, ptr noundef %9), !dbg !695
  br label %16, !dbg !696

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !697
  %13 = load ptr, ptr %12, align 8, !dbg !698, !tbaa !699
  %14 = call i32 @puts(ptr noundef %13), !dbg !700
  br label %16, !dbg !701

15:                                               ; preds = %1
  call void @abort() #18, !dbg !702
  unreachable, !dbg !702

16:                                               ; preds = %11, %4
  ret void, !dbg !703
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @null(ptr noundef %0) #7 !dbg !704 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !708, metadata !DIExpression()), !dbg !712
  %2 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 0, !dbg !713
  %3 = load i32, ptr %2, align 8, !dbg !713, !tbaa !687
  switch i32 %3, label %35 [
    i32 0, label %4
    i32 1, label %9
  ], !dbg !714

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !715
  %6 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %5, i64 0, i64 0, !dbg !716
  %7 = call i32 @mpz_sgn(ptr noundef %6), !dbg !717
  %8 = icmp eq i32 %7, 0, !dbg !718
  br label %36, !dbg !719

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !720
  %11 = load ptr, ptr %10, align 8, !dbg !721, !tbaa !699
  call void @llvm.dbg.value(metadata ptr %11, metadata !709, metadata !DIExpression()), !dbg !722
  %12 = load i8, ptr %11, align 1, !dbg !723, !tbaa !699
  %13 = sext i8 %12 to i32, !dbg !723
  %14 = icmp eq i32 %13, 0, !dbg !725
  br i1 %14, label %15, label %16, !dbg !726

15:                                               ; preds = %9
  br label %34, !dbg !727

16:                                               ; preds = %9
  %17 = load i8, ptr %11, align 1, !dbg !728, !tbaa !699
  %18 = sext i8 %17 to i32, !dbg !728
  %19 = icmp eq i32 %18, 45, !dbg !729
  %20 = zext i1 %19 to i32, !dbg !729
  %21 = sext i32 %20 to i64, !dbg !730
  %22 = getelementptr inbounds i8, ptr %11, i64 %21, !dbg !730
  call void @llvm.dbg.value(metadata ptr %22, metadata !709, metadata !DIExpression()), !dbg !722
  br label %23, !dbg !731

23:                                               ; preds = %29, %16
  %.01 = phi ptr [ %22, %16 ], [ %30, %29 ], !dbg !722
  call void @llvm.dbg.value(metadata ptr %.01, metadata !709, metadata !DIExpression()), !dbg !722
  %24 = load i8, ptr %.01, align 1, !dbg !732, !tbaa !699
  %25 = sext i8 %24 to i32, !dbg !732
  %26 = icmp ne i32 %25, 48, !dbg !735
  br i1 %26, label %27, label %28, !dbg !736

27:                                               ; preds = %23
  br label %34, !dbg !737

28:                                               ; preds = %23
  br label %29, !dbg !738

29:                                               ; preds = %28
  %30 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !739
  call void @llvm.dbg.value(metadata ptr %30, metadata !709, metadata !DIExpression()), !dbg !722
  %31 = load i8, ptr %30, align 1, !dbg !740, !tbaa !699
  %32 = icmp ne i8 %31, 0, !dbg !738
  br i1 %32, label %23, label %33, !dbg !738, !llvm.loop !741

33:                                               ; preds = %29
  br label %34, !dbg !743

34:                                               ; preds = %33, %27, %15
  %.0 = phi i1 [ true, %15 ], [ false, %27 ], [ true, %33 ], !dbg !722
  br label %36

35:                                               ; preds = %1
  call void @abort() #18, !dbg !744
  unreachable, !dbg !744

36:                                               ; preds = %34, %4
  %.1 = phi i1 [ %.0, %34 ], [ %8, %4 ], !dbg !745
  ret i1 %.1, !dbg !746
}

declare !dbg !747 i32 @mpz_sgn(ptr noundef) #2

; Function Attrs: cold noreturn
declare !dbg !752 void @abort() #8

declare !dbg !753 i64 @mpz_out_str(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !756 i32 @puts(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @eval1(i1 noundef zeroext %0) #7 !dbg !759 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !761, metadata !DIExpression()), !dbg !764
  %3 = trunc i8 %2 to i1, !dbg !765
  %4 = call ptr @eval2(i1 noundef zeroext %3), !dbg !766
  call void @llvm.dbg.value(metadata ptr %4, metadata !762, metadata !DIExpression()), !dbg !764
  br label %5, !dbg !767

5:                                                ; preds = %24, %1
  %.0 = phi ptr [ %4, %1 ], [ %.1, %24 ], !dbg !764
  call void @llvm.dbg.value(metadata ptr %.0, metadata !762, metadata !DIExpression()), !dbg !764
  br label %6, !dbg !767

6:                                                ; preds = %5
  %7 = call zeroext i1 @nextarg(ptr noundef @.str.40), !dbg !768
  br i1 %7, label %8, label %23, !dbg !771

8:                                                ; preds = %6
  %9 = trunc i8 %2 to i1, !dbg !772
  br i1 %9, label %10, label %13, !dbg !774

10:                                               ; preds = %8
  %11 = call zeroext i1 @null(ptr noundef %.0) #17, !dbg !775
  %12 = xor i1 %11, true, !dbg !776
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i1 [ false, %8 ], [ %12, %10 ], !dbg !777
  %15 = call ptr @eval2(i1 noundef zeroext %14), !dbg !778
  call void @llvm.dbg.value(metadata ptr %15, metadata !763, metadata !DIExpression()), !dbg !764
  %16 = call zeroext i1 @null(ptr noundef %.0) #17, !dbg !779
  br i1 %16, label %19, label %17, !dbg !781

17:                                               ; preds = %13
  %18 = call zeroext i1 @null(ptr noundef %15) #17, !dbg !782
  br i1 %18, label %19, label %21, !dbg !783

19:                                               ; preds = %17, %13
  call void @freev(ptr noundef %.0), !dbg !784
  call void @freev(ptr noundef %15), !dbg !786
  %20 = call ptr @int_value(i64 noundef 0), !dbg !787
  call void @llvm.dbg.value(metadata ptr %20, metadata !762, metadata !DIExpression()), !dbg !764
  br label %22, !dbg !788

21:                                               ; preds = %17
  call void @freev(ptr noundef %15), !dbg !789
  br label %22

22:                                               ; preds = %21, %19
  %.1 = phi ptr [ %20, %19 ], [ %.0, %21 ], !dbg !764
  call void @llvm.dbg.value(metadata ptr %.1, metadata !762, metadata !DIExpression()), !dbg !764
  br label %24, !dbg !790

23:                                               ; preds = %6
  ret ptr %.0, !dbg !791

24:                                               ; preds = %22
  br label %5, !dbg !767, !llvm.loop !792
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @nextarg(ptr noundef %0) #7 !dbg !794 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !798, metadata !DIExpression()), !dbg !802
  %2 = load ptr, ptr @args, align 8, !dbg !803, !tbaa !395
  %3 = load ptr, ptr %2, align 8, !dbg !804, !tbaa !395
  %4 = icmp eq ptr %3, null, !dbg !805
  br i1 %4, label %5, label %6, !dbg !806

5:                                                ; preds = %1
  br label %18, !dbg !807

6:                                                ; preds = %1
  %7 = load ptr, ptr @args, align 8, !dbg !808, !tbaa !395
  %8 = load ptr, ptr %7, align 8, !dbg !808, !tbaa !395
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef %0), !dbg !808
  %10 = icmp eq i32 %9, 0, !dbg !808
  %11 = zext i1 %10 to i8, !dbg !809
  call void @llvm.dbg.value(metadata i8 %11, metadata !799, metadata !DIExpression()), !dbg !810
  %12 = trunc i8 %11 to i1, !dbg !811
  %13 = zext i1 %12 to i32, !dbg !811
  %14 = load ptr, ptr @args, align 8, !dbg !812, !tbaa !395
  %15 = sext i32 %13 to i64, !dbg !812
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15, !dbg !812
  store ptr %16, ptr @args, align 8, !dbg !812, !tbaa !395
  %17 = trunc i8 %11 to i1, !dbg !813
  br label %18

18:                                               ; preds = %6, %5
  %.0 = phi i1 [ false, %5 ], [ %17, %6 ], !dbg !814
  ret i1 %.0, !dbg !815
}

; Function Attrs: nounwind ssp uwtable
define internal void @freev(ptr noundef %0) #7 !dbg !816 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !818, metadata !DIExpression()), !dbg !819
  %2 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 0, !dbg !820
  %3 = load i32, ptr %2, align 8, !dbg !820, !tbaa !687
  %4 = icmp eq i32 %3, 1, !dbg !822
  br i1 %4, label %5, label %8, !dbg !823

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !824
  %7 = load ptr, ptr %6, align 8, !dbg !825, !tbaa !699
  call void @rpl_free(ptr noundef %7), !dbg !826
  br label %11, !dbg !826

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !827
  %10 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %9, i64 0, i64 0, !dbg !828
  call void @mpz_clear(ptr noundef %10), !dbg !829
  br label %11

11:                                               ; preds = %8, %5
  call void @rpl_free(ptr noundef %0), !dbg !830
  ret void, !dbg !831
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @int_value(i64 noundef %0) #7 !dbg !832 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !836, metadata !DIExpression()), !dbg !838
  %2 = call noalias nonnull ptr @xmalloc(i64 noundef 24) #19, !dbg !839
  call void @llvm.dbg.value(metadata ptr %2, metadata !837, metadata !DIExpression()), !dbg !838
  %3 = getelementptr inbounds %struct.valinfo, ptr %2, i32 0, i32 0, !dbg !840
  store i32 0, ptr %3, align 8, !dbg !841, !tbaa !687
  %4 = getelementptr inbounds %struct.valinfo, ptr %2, i32 0, i32 1, !dbg !842
  %5 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %4, i64 0, i64 0, !dbg !843
  call void @mpz_init_set_ui(ptr noundef %5, i64 noundef %0), !dbg !844
  ret ptr %2, !dbg !845
}

; Function Attrs: allocsize(0)
declare !dbg !846 noalias nonnull ptr @xmalloc(i64 noundef) #9

declare !dbg !850 void @mpz_init_set_ui(ptr noundef, i64 noundef) #2

declare !dbg !854 void @rpl_free(ptr noundef) #2

declare !dbg !858 void @mpz_clear(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @eval2(i1 noundef zeroext %0) #7 !dbg !129 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !159, metadata !DIExpression()), !dbg !861
  %3 = trunc i8 %2 to i1, !dbg !862
  %4 = call ptr @eval3(i1 noundef zeroext %3), !dbg !863
  call void @llvm.dbg.value(metadata ptr %4, metadata !160, metadata !DIExpression()), !dbg !861
  br label %5, !dbg !864

5:                                                ; preds = %96, %1
  %.02 = phi ptr [ %4, %1 ], [ %.13, %96 ], !dbg !861
  %.0 = phi ptr [ undef, %1 ], [ %.1, %96 ]
  call void @llvm.dbg.value(metadata ptr %.02, metadata !160, metadata !DIExpression()), !dbg !861
  br label %6, !dbg !864

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8 0, metadata !164, metadata !DIExpression()), !dbg !865
  %7 = call zeroext i1 @nextarg(ptr noundef @.str.41), !dbg !866
  br i1 %7, label %8, label %9, !dbg !868

8:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !163, metadata !DIExpression()), !dbg !865
  br label %32, !dbg !869

9:                                                ; preds = %6
  %10 = call zeroext i1 @nextarg(ptr noundef @.str.42), !dbg !870
  br i1 %10, label %11, label %12, !dbg !872

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 1, metadata !163, metadata !DIExpression()), !dbg !865
  br label %31, !dbg !873

12:                                               ; preds = %9
  %13 = call zeroext i1 @nextarg(ptr noundef @.str.43), !dbg !874
  br i1 %13, label %16, label %14, !dbg !876

14:                                               ; preds = %12
  %15 = call zeroext i1 @nextarg(ptr noundef @.str.44), !dbg !877
  br i1 %15, label %16, label %17, !dbg !878

16:                                               ; preds = %14, %12
  call void @llvm.dbg.value(metadata i32 2, metadata !163, metadata !DIExpression()), !dbg !865
  br label %30, !dbg !879

17:                                               ; preds = %14
  %18 = call zeroext i1 @nextarg(ptr noundef @.str.45), !dbg !880
  br i1 %18, label %19, label %20, !dbg !882

19:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 3, metadata !163, metadata !DIExpression()), !dbg !865
  br label %29, !dbg !883

20:                                               ; preds = %17
  %21 = call zeroext i1 @nextarg(ptr noundef @.str.46), !dbg !884
  br i1 %21, label %22, label %23, !dbg !886

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 4, metadata !163, metadata !DIExpression()), !dbg !865
  br label %28, !dbg !887

23:                                               ; preds = %20
  %24 = call zeroext i1 @nextarg(ptr noundef @.str.47), !dbg !888
  br i1 %24, label %25, label %26, !dbg !890

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 5, metadata !163, metadata !DIExpression()), !dbg !865
  br label %27, !dbg !891

26:                                               ; preds = %23
  br label %95, !dbg !892

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %22
  %.05 = phi i32 [ 4, %22 ], [ 5, %27 ], !dbg !893
  call void @llvm.dbg.value(metadata i32 %.05, metadata !163, metadata !DIExpression()), !dbg !865
  br label %29

29:                                               ; preds = %28, %19
  %.16 = phi i32 [ 3, %19 ], [ %.05, %28 ], !dbg !894
  call void @llvm.dbg.value(metadata i32 %.16, metadata !163, metadata !DIExpression()), !dbg !865
  br label %30

30:                                               ; preds = %29, %16
  %.2 = phi i32 [ 2, %16 ], [ %.16, %29 ], !dbg !895
  call void @llvm.dbg.value(metadata i32 %.2, metadata !163, metadata !DIExpression()), !dbg !865
  br label %31

31:                                               ; preds = %30, %11
  %.3 = phi i32 [ 1, %11 ], [ %.2, %30 ], !dbg !896
  call void @llvm.dbg.value(metadata i32 %.3, metadata !163, metadata !DIExpression()), !dbg !865
  br label %32

32:                                               ; preds = %31, %8
  %.4 = phi i32 [ 0, %8 ], [ %.3, %31 ], !dbg !897
  call void @llvm.dbg.value(metadata i32 %.4, metadata !163, metadata !DIExpression()), !dbg !865
  %33 = trunc i8 %2 to i1, !dbg !898
  %34 = call ptr @eval3(i1 noundef zeroext %33), !dbg !899
  call void @llvm.dbg.value(metadata ptr %34, metadata !161, metadata !DIExpression()), !dbg !865
  %35 = trunc i8 %2 to i1, !dbg !900
  br i1 %35, label %36, label %91, !dbg !901

36:                                               ; preds = %32
  call void @tostring(ptr noundef %.02), !dbg !902
  call void @tostring(ptr noundef %34), !dbg !903
  %37 = getelementptr inbounds %struct.valinfo, ptr %.02, i32 0, i32 1, !dbg !904
  %38 = load ptr, ptr %37, align 8, !dbg !906, !tbaa !699
  %39 = call zeroext i1 @looks_like_integer(ptr noundef %38) #17, !dbg !907
  br i1 %39, label %40, label %50, !dbg !908

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.valinfo, ptr %34, i32 0, i32 1, !dbg !909
  %42 = load ptr, ptr %41, align 8, !dbg !910, !tbaa !699
  %43 = call zeroext i1 @looks_like_integer(ptr noundef %42) #17, !dbg !911
  br i1 %43, label %44, label %50, !dbg !912

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.valinfo, ptr %.02, i32 0, i32 1, !dbg !913
  %46 = load ptr, ptr %45, align 8, !dbg !914, !tbaa !699
  %47 = getelementptr inbounds %struct.valinfo, ptr %34, i32 0, i32 1, !dbg !915
  %48 = load ptr, ptr %47, align 8, !dbg !916, !tbaa !699
  %49 = call i32 @strintcmp(ptr noundef %46, ptr noundef %48) #17, !dbg !917
  call void @llvm.dbg.value(metadata i32 %49, metadata !165, metadata !DIExpression()), !dbg !918
  br label %70, !dbg !919

50:                                               ; preds = %40, %36
  %51 = call ptr @__error(), !dbg !920
  store i32 0, ptr %51, align 4, !dbg !922, !tbaa !613
  %52 = getelementptr inbounds %struct.valinfo, ptr %.02, i32 0, i32 1, !dbg !923
  %53 = load ptr, ptr %52, align 8, !dbg !924, !tbaa !699
  %54 = getelementptr inbounds %struct.valinfo, ptr %34, i32 0, i32 1, !dbg !925
  %55 = load ptr, ptr %54, align 8, !dbg !926, !tbaa !699
  %56 = call i32 @strcoll(ptr noundef %53, ptr noundef %55), !dbg !927
  call void @llvm.dbg.value(metadata i32 %56, metadata !165, metadata !DIExpression()), !dbg !918
  %57 = call ptr @__error(), !dbg !928
  %58 = load i32, ptr %57, align 4, !dbg !928, !tbaa !613
  %59 = icmp ne i32 %58, 0, !dbg !928
  br i1 %59, label %60, label %69, !dbg !930

60:                                               ; preds = %50
  %61 = call ptr @__error(), !dbg !931
  %62 = load i32, ptr %61, align 4, !dbg !931, !tbaa !613
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %62, ptr noundef @.str.48), !dbg !933
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.49), !dbg !934
  %63 = getelementptr inbounds %struct.valinfo, ptr %.02, i32 0, i32 1, !dbg !935
  %64 = load ptr, ptr %63, align 8, !dbg !935, !tbaa !699
  %65 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %64), !dbg !935
  %66 = getelementptr inbounds %struct.valinfo, ptr %34, i32 0, i32 1, !dbg !935
  %67 = load ptr, ptr %66, align 8, !dbg !935, !tbaa !699
  %68 = call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 8, ptr noundef %67), !dbg !935
  call void (i32, i32, ptr, ...) @error(i32 noundef 2, i32 noundef 0, ptr noundef @.str.50, ptr noundef %65, ptr noundef %68), !dbg !935
  unreachable, !dbg !935

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %44
  %.01 = phi i32 [ %49, %44 ], [ %56, %69 ], !dbg !936
  call void @llvm.dbg.value(metadata i32 %.01, metadata !165, metadata !DIExpression()), !dbg !918
  switch i32 %.4, label %89 [
    i32 0, label %71
    i32 1, label %74
    i32 2, label %77
    i32 3, label %80
    i32 4, label %83
    i32 5, label %86
  ], !dbg !937

71:                                               ; preds = %70
  %72 = icmp slt i32 %.01, 0, !dbg !938
  %73 = zext i1 %72 to i8, !dbg !940
  call void @llvm.dbg.value(metadata i8 %73, metadata !164, metadata !DIExpression()), !dbg !865
  br label %90, !dbg !941

74:                                               ; preds = %70
  %75 = icmp sle i32 %.01, 0, !dbg !942
  %76 = zext i1 %75 to i8, !dbg !943
  call void @llvm.dbg.value(metadata i8 %76, metadata !164, metadata !DIExpression()), !dbg !865
  br label %90, !dbg !944

77:                                               ; preds = %70
  %78 = icmp eq i32 %.01, 0, !dbg !945
  %79 = zext i1 %78 to i8, !dbg !946
  call void @llvm.dbg.value(metadata i8 %79, metadata !164, metadata !DIExpression()), !dbg !865
  br label %90, !dbg !947

80:                                               ; preds = %70
  %81 = icmp ne i32 %.01, 0, !dbg !948
  %82 = zext i1 %81 to i8, !dbg !949
  call void @llvm.dbg.value(metadata i8 %82, metadata !164, metadata !DIExpression()), !dbg !865
  br label %90, !dbg !950

83:                                               ; preds = %70
  %84 = icmp sge i32 %.01, 0, !dbg !951
  %85 = zext i1 %84 to i8, !dbg !952
  call void @llvm.dbg.value(metadata i8 %85, metadata !164, metadata !DIExpression()), !dbg !865
  br label %90, !dbg !953

86:                                               ; preds = %70
  %87 = icmp sgt i32 %.01, 0, !dbg !954
  %88 = zext i1 %87 to i8, !dbg !955
  call void @llvm.dbg.value(metadata i8 %88, metadata !164, metadata !DIExpression()), !dbg !865
  br label %90, !dbg !956

89:                                               ; preds = %70
  call void @abort() #18, !dbg !957
  unreachable, !dbg !957

90:                                               ; preds = %86, %83, %80, %77, %74, %71
  %.07 = phi i8 [ %88, %86 ], [ %85, %83 ], [ %82, %80 ], [ %79, %77 ], [ %76, %74 ], [ %73, %71 ], !dbg !958
  call void @llvm.dbg.value(metadata i8 %.07, metadata !164, metadata !DIExpression()), !dbg !865
  br label %91, !dbg !959

91:                                               ; preds = %90, %32
  %.18 = phi i8 [ %.07, %90 ], [ 0, %32 ], !dbg !865
  call void @llvm.dbg.value(metadata i8 %.18, metadata !164, metadata !DIExpression()), !dbg !865
  call void @freev(ptr noundef %.02), !dbg !960
  call void @freev(ptr noundef %34), !dbg !961
  %92 = trunc i8 %.18 to i1, !dbg !962
  %93 = zext i1 %92 to i64, !dbg !962
  %94 = call ptr @int_value(i64 noundef %93), !dbg !963
  call void @llvm.dbg.value(metadata ptr %94, metadata !160, metadata !DIExpression()), !dbg !861
  br label %95, !dbg !964

95:                                               ; preds = %91, %26
  %.04 = phi i32 [ 0, %91 ], [ 1, %26 ]
  %.13 = phi ptr [ %94, %91 ], [ %.02, %26 ], !dbg !861
  %.1 = phi ptr [ %.0, %91 ], [ %.02, %26 ]
  call void @llvm.dbg.value(metadata ptr %.13, metadata !160, metadata !DIExpression()), !dbg !861
  switch i32 %.04, label %97 [
    i32 0, label %96
  ]

96:                                               ; preds = %95
  br label %5, !dbg !864, !llvm.loop !965

97:                                               ; preds = %95
  ret ptr %.1, !dbg !966
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @eval3(i1 noundef zeroext %0) #7 !dbg !176 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !178, metadata !DIExpression()), !dbg !967
  %3 = trunc i8 %2 to i1, !dbg !968
  %4 = call ptr @eval4(i1 noundef zeroext %3), !dbg !969
  call void @llvm.dbg.value(metadata ptr %4, metadata !179, metadata !DIExpression()), !dbg !967
  br label %5, !dbg !970

5:                                                ; preds = %33, %1
  br label %6, !dbg !970

6:                                                ; preds = %5
  %7 = call zeroext i1 @nextarg(ptr noundef @.str.51), !dbg !971
  br i1 %7, label %8, label %9, !dbg !974

8:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !967
  br label %14, !dbg !975

9:                                                ; preds = %6
  %10 = call zeroext i1 @nextarg(ptr noundef @.str.52), !dbg !976
  br i1 %10, label %11, label %12, !dbg !978

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 1, metadata !181, metadata !DIExpression()), !dbg !967
  br label %13, !dbg !979

12:                                               ; preds = %9
  ret ptr %4, !dbg !980

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ 0, %8 ], [ 1, %13 ], !dbg !981
  call void @llvm.dbg.value(metadata i32 %.0, metadata !181, metadata !DIExpression()), !dbg !967
  %15 = trunc i8 %2 to i1, !dbg !982
  %16 = call ptr @eval4(i1 noundef zeroext %15), !dbg !983
  call void @llvm.dbg.value(metadata ptr %16, metadata !180, metadata !DIExpression()), !dbg !967
  %17 = trunc i8 %2 to i1, !dbg !984
  br i1 %17, label %18, label %33, !dbg !986

18:                                               ; preds = %14
  %19 = call zeroext i1 @toarith(ptr noundef %4), !dbg !987
  br i1 %19, label %20, label %22, !dbg !990

20:                                               ; preds = %18
  %21 = call zeroext i1 @toarith(ptr noundef %16), !dbg !991
  br i1 %21, label %23, label %22, !dbg !992

22:                                               ; preds = %20, %18
  call void (i32, i32, ptr, ...) @error(i32 noundef 2, i32 noundef 0, ptr noundef @.str.53), !dbg !993
  unreachable, !dbg !993

23:                                               ; preds = %20
  %24 = icmp eq i32 %.0, 0, !dbg !994
  %25 = zext i1 %24 to i64, !dbg !995
  %26 = select i1 %24, ptr @mpz_add, ptr @mpz_sub, !dbg !995
  %27 = getelementptr inbounds %struct.valinfo, ptr %4, i32 0, i32 1, !dbg !996
  %28 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %27, i64 0, i64 0, !dbg !997
  %29 = getelementptr inbounds %struct.valinfo, ptr %4, i32 0, i32 1, !dbg !998
  %30 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %29, i64 0, i64 0, !dbg !999
  %31 = getelementptr inbounds %struct.valinfo, ptr %16, i32 0, i32 1, !dbg !1000
  %32 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %31, i64 0, i64 0, !dbg !1001
  call void %26(ptr noundef %28, ptr noundef %30, ptr noundef %32), !dbg !1002
  br label %33, !dbg !1003

33:                                               ; preds = %23, %14
  call void @freev(ptr noundef %16), !dbg !1004
  br label %5, !dbg !970, !llvm.loop !1005
}

; Function Attrs: nounwind ssp uwtable
define internal void @tostring(ptr noundef %0) #7 !dbg !1007 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1009, metadata !DIExpression()), !dbg !1013
  %2 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 0, !dbg !1014
  %3 = load i32, ptr %2, align 8, !dbg !1014, !tbaa !687
  switch i32 %3, label %12 [
    i32 0, label %4
    i32 1, label %13
  ], !dbg !1015

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !1016
  %6 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %5, i64 0, i64 0, !dbg !1017
  %7 = call ptr @mpz_get_str(ptr noundef null, i32 noundef 10, ptr noundef %6), !dbg !1018
  call void @llvm.dbg.value(metadata ptr %7, metadata !1010, metadata !DIExpression()), !dbg !1019
  %8 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !1020
  %9 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %8, i64 0, i64 0, !dbg !1021
  call void @mpz_clear(ptr noundef %9), !dbg !1022
  %10 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !1023
  store ptr %7, ptr %10, align 8, !dbg !1024, !tbaa !699
  %11 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 0, !dbg !1025
  store i32 1, ptr %11, align 8, !dbg !1026, !tbaa !687
  br label %13, !dbg !1027

12:                                               ; preds = %1
  call void @abort() #18, !dbg !1028
  unreachable, !dbg !1028

13:                                               ; preds = %4, %1
  ret void, !dbg !1029
}

; Function Attrs: nounwind ssp willreturn memory(read) uwtable
define internal zeroext i1 @looks_like_integer(ptr noundef %0) #10 !dbg !1030 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1032, metadata !DIExpression()), !dbg !1033
  %2 = load i8, ptr %0, align 1, !dbg !1034, !tbaa !699
  %3 = sext i8 %2 to i32, !dbg !1034
  %4 = icmp eq i32 %3, 45, !dbg !1035
  %5 = zext i1 %4 to i32, !dbg !1035
  %6 = sext i32 %5 to i64, !dbg !1036
  %7 = getelementptr inbounds i8, ptr %0, i64 %6, !dbg !1036
  call void @llvm.dbg.value(metadata ptr %7, metadata !1032, metadata !DIExpression()), !dbg !1033
  br label %8, !dbg !1037

8:                                                ; preds = %15, %1
  %.01 = phi ptr [ %7, %1 ], [ %16, %15 ], !dbg !1033
  call void @llvm.dbg.value(metadata ptr %.01, metadata !1032, metadata !DIExpression()), !dbg !1033
  %9 = load i8, ptr %.01, align 1, !dbg !1038, !tbaa !699
  %10 = sext i8 %9 to i32, !dbg !1038
  %11 = sub i32 %10, 48, !dbg !1038
  %12 = icmp ule i32 %11, 9, !dbg !1038
  br i1 %12, label %14, label %13, !dbg !1040

13:                                               ; preds = %8
  br label %20, !dbg !1041

14:                                               ; preds = %8
  br label %15, !dbg !1038

15:                                               ; preds = %14
  %16 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !1042
  call void @llvm.dbg.value(metadata ptr %16, metadata !1032, metadata !DIExpression()), !dbg !1033
  %17 = load i8, ptr %16, align 1, !dbg !1043, !tbaa !699
  %18 = icmp ne i8 %17, 0, !dbg !1038
  br i1 %18, label %8, label %19, !dbg !1038, !llvm.loop !1044

19:                                               ; preds = %15
  br label %20, !dbg !1046

20:                                               ; preds = %19, %13
  %.0 = phi i1 [ true, %19 ], [ false, %13 ], !dbg !1033
  ret i1 %.0, !dbg !1047
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1048 i32 @strintcmp(ptr noundef, ptr noundef) #11

declare !dbg !1050 ptr @__error() #2

declare !dbg !1055 i32 @strcoll(ptr noundef, ptr noundef) #2

declare !dbg !1056 ptr @mpz_get_str(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @eval4(i1 noundef zeroext %0) #7 !dbg !186 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !188, metadata !DIExpression()), !dbg !1059
  %3 = trunc i8 %2 to i1, !dbg !1060
  %4 = call ptr @eval5(i1 noundef zeroext %3), !dbg !1061
  call void @llvm.dbg.value(metadata ptr %4, metadata !189, metadata !DIExpression()), !dbg !1059
  br label %5, !dbg !1062

5:                                                ; preds = %50, %1
  br label %6, !dbg !1062

6:                                                ; preds = %5
  %7 = call zeroext i1 @nextarg(ptr noundef @.str.54), !dbg !1063
  br i1 %7, label %8, label %9, !dbg !1066

8:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !1059
  br label %18, !dbg !1067

9:                                                ; preds = %6
  %10 = call zeroext i1 @nextarg(ptr noundef @.str.55), !dbg !1068
  br i1 %10, label %11, label %12, !dbg !1070

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 1, metadata !191, metadata !DIExpression()), !dbg !1059
  br label %17, !dbg !1071

12:                                               ; preds = %9
  %13 = call zeroext i1 @nextarg(ptr noundef @.str.56), !dbg !1072
  br i1 %13, label %14, label %15, !dbg !1074

14:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 2, metadata !191, metadata !DIExpression()), !dbg !1059
  br label %16, !dbg !1075

15:                                               ; preds = %12
  ret ptr %4, !dbg !1076

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %11
  %.0 = phi i32 [ 1, %11 ], [ 2, %16 ], !dbg !1077
  call void @llvm.dbg.value(metadata i32 %.0, metadata !191, metadata !DIExpression()), !dbg !1059
  br label %18

18:                                               ; preds = %17, %8
  %.1 = phi i32 [ 0, %8 ], [ %.0, %17 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %.1, metadata !191, metadata !DIExpression()), !dbg !1059
  %19 = trunc i8 %2 to i1, !dbg !1079
  %20 = call ptr @eval5(i1 noundef zeroext %19), !dbg !1080
  call void @llvm.dbg.value(metadata ptr %20, metadata !190, metadata !DIExpression()), !dbg !1059
  %21 = trunc i8 %2 to i1, !dbg !1081
  br i1 %21, label %22, label %50, !dbg !1083

22:                                               ; preds = %18
  %23 = call zeroext i1 @toarith(ptr noundef %4), !dbg !1084
  br i1 %23, label %24, label %26, !dbg !1087

24:                                               ; preds = %22
  %25 = call zeroext i1 @toarith(ptr noundef %20), !dbg !1088
  br i1 %25, label %27, label %26, !dbg !1089

26:                                               ; preds = %24, %22
  call void (i32, i32, ptr, ...) @error(i32 noundef 2, i32 noundef 0, ptr noundef @.str.53), !dbg !1090
  unreachable, !dbg !1090

27:                                               ; preds = %24
  %28 = icmp ne i32 %.1, 0, !dbg !1091
  br i1 %28, label %29, label %35, !dbg !1093

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.valinfo, ptr %20, i32 0, i32 1, !dbg !1094
  %31 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %30, i64 0, i64 0, !dbg !1095
  %32 = call i32 @mpz_sgn(ptr noundef %31), !dbg !1096
  %33 = icmp eq i32 %32, 0, !dbg !1097
  br i1 %33, label %34, label %35, !dbg !1098

34:                                               ; preds = %29
  call void (i32, i32, ptr, ...) @error(i32 noundef 2, i32 noundef 0, ptr noundef @.str.57), !dbg !1099
  unreachable, !dbg !1099

35:                                               ; preds = %29, %27
  %36 = icmp eq i32 %.1, 0, !dbg !1100
  br i1 %36, label %37, label %38, !dbg !1101

37:                                               ; preds = %35
  br label %42, !dbg !1101

38:                                               ; preds = %35
  %39 = icmp eq i32 %.1, 1, !dbg !1102
  %40 = zext i1 %39 to i64, !dbg !1103
  %41 = select i1 %39, ptr @mpz_tdiv_q, ptr @mpz_tdiv_r, !dbg !1103
  br label %42, !dbg !1101

42:                                               ; preds = %38, %37
  %43 = phi ptr [ @mpz_mul, %37 ], [ %41, %38 ], !dbg !1101
  %44 = getelementptr inbounds %struct.valinfo, ptr %4, i32 0, i32 1, !dbg !1104
  %45 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %44, i64 0, i64 0, !dbg !1105
  %46 = getelementptr inbounds %struct.valinfo, ptr %4, i32 0, i32 1, !dbg !1106
  %47 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %46, i64 0, i64 0, !dbg !1107
  %48 = getelementptr inbounds %struct.valinfo, ptr %20, i32 0, i32 1, !dbg !1108
  %49 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %48, i64 0, i64 0, !dbg !1109
  call void %43(ptr noundef %45, ptr noundef %47, ptr noundef %49), !dbg !1110
  br label %50, !dbg !1111

50:                                               ; preds = %42, %18
  call void @freev(ptr noundef %20), !dbg !1112
  br label %5, !dbg !1062, !llvm.loop !1113
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @toarith(ptr noundef %0) #7 !dbg !1115 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1117, metadata !DIExpression()), !dbg !1121
  %2 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 0, !dbg !1122
  %3 = load i32, ptr %2, align 8, !dbg !1122, !tbaa !687
  switch i32 %3, label %19 [
    i32 0, label %4
    i32 1, label %5
  ], !dbg !1123

4:                                                ; preds = %1
  br label %20, !dbg !1124

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !1125
  %7 = load ptr, ptr %6, align 8, !dbg !1126, !tbaa !699
  call void @llvm.dbg.value(metadata ptr %7, metadata !1118, metadata !DIExpression()), !dbg !1127
  %8 = call zeroext i1 @looks_like_integer(ptr noundef %7) #17, !dbg !1128
  br i1 %8, label %10, label %9, !dbg !1130

9:                                                ; preds = %5
  br label %18, !dbg !1131

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !1132
  %12 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %11, i64 0, i64 0, !dbg !1134
  %13 = call i32 @mpz_init_set_str(ptr noundef %12, ptr noundef %7, i32 noundef 10), !dbg !1135
  %14 = icmp ne i32 %13, 0, !dbg !1136
  br i1 %14, label %15, label %16, !dbg !1137

15:                                               ; preds = %10
  call void (i32, i32, ptr, ...) @error(i32 noundef 3, i32 noundef 34, ptr noundef @.str.73, ptr noundef %7), !dbg !1138
  unreachable, !dbg !1138

16:                                               ; preds = %10
  call void @rpl_free(ptr noundef %7), !dbg !1139
  %17 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 0, !dbg !1140
  store i32 0, ptr %17, align 8, !dbg !1141, !tbaa !687
  br label %18, !dbg !1142

18:                                               ; preds = %16, %9
  %.0 = phi i1 [ true, %16 ], [ false, %9 ], !dbg !1127
  br label %20

19:                                               ; preds = %1
  call void @abort() #18, !dbg !1143
  unreachable, !dbg !1143

20:                                               ; preds = %18, %4
  %.1 = phi i1 [ %.0, %18 ], [ true, %4 ], !dbg !1144
  ret i1 %.1, !dbg !1145
}

declare void @mpz_add(ptr noundef, ptr noundef, ptr noundef) #2

declare void @mpz_sub(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1146 i32 @mpz_init_set_str(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @eval5(i1 noundef zeroext %0) #7 !dbg !1149 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1151, metadata !DIExpression()), !dbg !1155
  %3 = trunc i8 %2 to i1, !dbg !1156
  %4 = call ptr @eval6(i1 noundef zeroext %3), !dbg !1157
  call void @llvm.dbg.value(metadata ptr %4, metadata !1152, metadata !DIExpression()), !dbg !1155
  br label %5, !dbg !1158

5:                                                ; preds = %16, %1
  %.0 = phi ptr [ %4, %1 ], [ %.1, %16 ], !dbg !1155
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1152, metadata !DIExpression()), !dbg !1155
  br label %6, !dbg !1158

6:                                                ; preds = %5
  %7 = call zeroext i1 @nextarg(ptr noundef @.str.58), !dbg !1159
  br i1 %7, label %8, label %15, !dbg !1162

8:                                                ; preds = %6
  %9 = trunc i8 %2 to i1, !dbg !1163
  %10 = call ptr @eval6(i1 noundef zeroext %9), !dbg !1165
  call void @llvm.dbg.value(metadata ptr %10, metadata !1153, metadata !DIExpression()), !dbg !1155
  %11 = trunc i8 %2 to i1, !dbg !1166
  br i1 %11, label %12, label %14, !dbg !1168

12:                                               ; preds = %8
  %13 = call ptr @docolon(ptr noundef %.0, ptr noundef %10), !dbg !1169
  call void @llvm.dbg.value(metadata ptr %13, metadata !1154, metadata !DIExpression()), !dbg !1155
  call void @freev(ptr noundef %.0), !dbg !1171
  call void @llvm.dbg.value(metadata ptr %13, metadata !1152, metadata !DIExpression()), !dbg !1155
  br label %14, !dbg !1172

14:                                               ; preds = %12, %8
  %.1 = phi ptr [ %13, %12 ], [ %.0, %8 ], !dbg !1155
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1152, metadata !DIExpression()), !dbg !1155
  call void @freev(ptr noundef %10), !dbg !1173
  br label %16, !dbg !1174

15:                                               ; preds = %6
  ret ptr %.0, !dbg !1175

16:                                               ; preds = %14
  br label %5, !dbg !1158, !llvm.loop !1176
}

declare void @mpz_tdiv_q(ptr noundef, ptr noundef, ptr noundef) #2

declare void @mpz_tdiv_r(ptr noundef, ptr noundef, ptr noundef) #2

declare void @mpz_mul(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @eval6(i1 noundef zeroext %0) #7 !dbg !1178 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1180, metadata !DIExpression()), !dbg !1199
  %3 = call zeroext i1 @nextarg(ptr noundef @.str.51), !dbg !1200
  br i1 %3, label %4, label %9, !dbg !1201

4:                                                ; preds = %1
  call void @require_more_args(), !dbg !1202
  %5 = load ptr, ptr @args, align 8, !dbg !1204, !tbaa !395
  %6 = getelementptr inbounds ptr, ptr %5, i32 1, !dbg !1204
  store ptr %6, ptr @args, align 8, !dbg !1204, !tbaa !395
  %7 = load ptr, ptr %5, align 8, !dbg !1205, !tbaa !395
  %8 = call ptr @str_value(ptr noundef %7), !dbg !1206
  br label %72, !dbg !1207

9:                                                ; preds = %1
  %10 = call zeroext i1 @nextarg(ptr noundef @.str.59), !dbg !1208
  br i1 %10, label %11, label %18, !dbg !1209

11:                                               ; preds = %9
  %12 = trunc i8 %2 to i1, !dbg !1210
  %13 = call ptr @eval6(i1 noundef zeroext %12), !dbg !1212
  call void @llvm.dbg.value(metadata ptr %13, metadata !1182, metadata !DIExpression()), !dbg !1199
  call void @tostring(ptr noundef %13), !dbg !1213
  %14 = getelementptr inbounds %struct.valinfo, ptr %13, i32 0, i32 1, !dbg !1214
  %15 = load ptr, ptr %14, align 8, !dbg !1215, !tbaa !699
  %16 = call i64 @mbslen(ptr noundef %15) #17, !dbg !1216
  %17 = call ptr @int_value(i64 noundef %16), !dbg !1217
  call void @llvm.dbg.value(metadata ptr %17, metadata !1183, metadata !DIExpression()), !dbg !1199
  call void @freev(ptr noundef %13), !dbg !1218
  br label %72, !dbg !1219

18:                                               ; preds = %9
  %19 = call zeroext i1 @nextarg(ptr noundef @.str.60), !dbg !1220
  br i1 %19, label %20, label %30, !dbg !1221

20:                                               ; preds = %18
  %21 = trunc i8 %2 to i1, !dbg !1222
  %22 = call ptr @eval6(i1 noundef zeroext %21), !dbg !1224
  call void @llvm.dbg.value(metadata ptr %22, metadata !1181, metadata !DIExpression()), !dbg !1199
  %23 = trunc i8 %2 to i1, !dbg !1225
  %24 = call ptr @eval6(i1 noundef zeroext %23), !dbg !1226
  call void @llvm.dbg.value(metadata ptr %24, metadata !1182, metadata !DIExpression()), !dbg !1199
  %25 = trunc i8 %2 to i1, !dbg !1227
  br i1 %25, label %26, label %28, !dbg !1229

26:                                               ; preds = %20
  %27 = call ptr @docolon(ptr noundef %22, ptr noundef %24), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %27, metadata !1183, metadata !DIExpression()), !dbg !1199
  call void @freev(ptr noundef %22), !dbg !1232
  br label %29, !dbg !1233

28:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !1183, metadata !DIExpression()), !dbg !1199
  br label %29

29:                                               ; preds = %28, %26
  %.01 = phi ptr [ %27, %26 ], [ %22, %28 ], !dbg !1234
  call void @llvm.dbg.value(metadata ptr %.01, metadata !1183, metadata !DIExpression()), !dbg !1199
  call void @freev(ptr noundef %24), !dbg !1235
  br label %72, !dbg !1236

30:                                               ; preds = %18
  %31 = call zeroext i1 @nextarg(ptr noundef @.str.61), !dbg !1237
  br i1 %31, label %32, label %43, !dbg !1238

32:                                               ; preds = %30
  %33 = trunc i8 %2 to i1, !dbg !1239
  %34 = call ptr @eval6(i1 noundef zeroext %33), !dbg !1240
  call void @llvm.dbg.value(metadata ptr %34, metadata !1181, metadata !DIExpression()), !dbg !1199
  %35 = trunc i8 %2 to i1, !dbg !1241
  %36 = call ptr @eval6(i1 noundef zeroext %35), !dbg !1242
  call void @llvm.dbg.value(metadata ptr %36, metadata !1182, metadata !DIExpression()), !dbg !1199
  call void @tostring(ptr noundef %34), !dbg !1243
  call void @tostring(ptr noundef %36), !dbg !1244
  %37 = getelementptr inbounds %struct.valinfo, ptr %34, i32 0, i32 1, !dbg !1245
  %38 = load ptr, ptr %37, align 8, !dbg !1246, !tbaa !699
  %39 = getelementptr inbounds %struct.valinfo, ptr %36, i32 0, i32 1, !dbg !1247
  %40 = load ptr, ptr %39, align 8, !dbg !1248, !tbaa !699
  %41 = call i64 @mbs_logical_cspn(ptr noundef %38, ptr noundef %40), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %41, metadata !1186, metadata !DIExpression()), !dbg !1250
  %42 = call ptr @int_value(i64 noundef %41), !dbg !1251
  call void @llvm.dbg.value(metadata ptr %42, metadata !1183, metadata !DIExpression()), !dbg !1199
  call void @freev(ptr noundef %34), !dbg !1252
  call void @freev(ptr noundef %36), !dbg !1253
  br label %72

43:                                               ; preds = %30
  %44 = call zeroext i1 @nextarg(ptr noundef @.str.62), !dbg !1254
  br i1 %44, label %45, label %69, !dbg !1255

45:                                               ; preds = %43
  %46 = trunc i8 %2 to i1, !dbg !1256
  %47 = call ptr @eval6(i1 noundef zeroext %46), !dbg !1257
  call void @llvm.dbg.value(metadata ptr %47, metadata !1181, metadata !DIExpression()), !dbg !1199
  %48 = trunc i8 %2 to i1, !dbg !1258
  %49 = call ptr @eval6(i1 noundef zeroext %48), !dbg !1259
  call void @llvm.dbg.value(metadata ptr %49, metadata !1184, metadata !DIExpression()), !dbg !1199
  %50 = trunc i8 %2 to i1, !dbg !1260
  %51 = call ptr @eval6(i1 noundef zeroext %50), !dbg !1261
  call void @llvm.dbg.value(metadata ptr %51, metadata !1185, metadata !DIExpression()), !dbg !1199
  call void @tostring(ptr noundef %47), !dbg !1262
  %52 = call zeroext i1 @toarith(ptr noundef %49), !dbg !1263
  br i1 %52, label %53, label %55, !dbg !1264

53:                                               ; preds = %45
  %54 = call zeroext i1 @toarith(ptr noundef %51), !dbg !1265
  br i1 %54, label %57, label %55, !dbg !1266

55:                                               ; preds = %53, %45
  %56 = call ptr @str_value(ptr noundef @.str.13), !dbg !1267
  call void @llvm.dbg.value(metadata ptr %56, metadata !1183, metadata !DIExpression()), !dbg !1199
  br label %68, !dbg !1268

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.valinfo, ptr %49, i32 0, i32 1, !dbg !1269
  %59 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %58, i64 0, i64 0, !dbg !1270
  %60 = call i64 @getsize(ptr noundef %59), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %60, metadata !1192, metadata !DIExpression()), !dbg !1272
  %61 = getelementptr inbounds %struct.valinfo, ptr %51, i32 0, i32 1, !dbg !1273
  %62 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %61, i64 0, i64 0, !dbg !1274
  %63 = call i64 @getsize(ptr noundef %62), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %63, metadata !1197, metadata !DIExpression()), !dbg !1272
  %64 = getelementptr inbounds %struct.valinfo, ptr %47, i32 0, i32 1, !dbg !1276
  %65 = load ptr, ptr %64, align 8, !dbg !1277, !tbaa !699
  %66 = call ptr @mbs_logical_substr(ptr noundef %65, i64 noundef %60, i64 noundef %63), !dbg !1278
  call void @llvm.dbg.value(metadata ptr %66, metadata !1198, metadata !DIExpression()), !dbg !1272
  %67 = call ptr @str_value(ptr noundef %66), !dbg !1279
  call void @llvm.dbg.value(metadata ptr %67, metadata !1183, metadata !DIExpression()), !dbg !1199
  call void @rpl_free(ptr noundef %66), !dbg !1280
  br label %68

68:                                               ; preds = %57, %55
  %.1 = phi ptr [ %67, %57 ], [ %56, %55 ], !dbg !1281
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1183, metadata !DIExpression()), !dbg !1199
  call void @freev(ptr noundef %47), !dbg !1282
  call void @freev(ptr noundef %49), !dbg !1283
  call void @freev(ptr noundef %51), !dbg !1284
  br label %72, !dbg !1285

69:                                               ; preds = %43
  %70 = trunc i8 %2 to i1, !dbg !1286
  %71 = call ptr @eval7(i1 noundef zeroext %70), !dbg !1287
  br label %72, !dbg !1288

72:                                               ; preds = %69, %68, %32, %29, %11, %4
  %.0 = phi ptr [ %8, %4 ], [ %17, %11 ], [ %.01, %29 ], [ %42, %32 ], [ %.1, %68 ], [ %71, %69 ], !dbg !1289
  ret ptr %.0, !dbg !1290
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @docolon(ptr noundef %0, ptr noundef %1) #7 !dbg !1291 {
  %3 = alloca %struct.re_pattern_buffer, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.re_registers, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1295, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata ptr %1, metadata !1296, metadata !DIExpression()), !dbg !1344
  call void @llvm.lifetime.start.p0(i64 64, ptr %3) #16, !dbg !1345
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1299, metadata !DIExpression()), !dbg !1346
  call void @llvm.lifetime.start.p0(i64 256, ptr %4) #16, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1321, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.start.p0(i64 24, ptr %5) #16, !dbg !1349
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1325, metadata !DIExpression()), !dbg !1350
  call void @tostring(ptr noundef %0), !dbg !1351
  call void @tostring(ptr noundef %1), !dbg !1352
  %6 = getelementptr inbounds %struct.re_registers, ptr %5, i32 0, i32 0, !dbg !1353
  store i64 0, ptr %6, align 8, !dbg !1354, !tbaa !1355
  %7 = getelementptr inbounds %struct.re_registers, ptr %5, i32 0, i32 1, !dbg !1358
  store ptr null, ptr %7, align 8, !dbg !1359, !tbaa !1360
  %8 = getelementptr inbounds %struct.re_registers, ptr %5, i32 0, i32 2, !dbg !1361
  store ptr null, ptr %8, align 8, !dbg !1362, !tbaa !1363
  %9 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i32 0, i32 0, !dbg !1364
  store ptr null, ptr %9, align 8, !dbg !1365, !tbaa !1366
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i32 0, i32 1, !dbg !1368
  store i64 0, ptr %10, align 8, !dbg !1369, !tbaa !1370
  %11 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 0, !dbg !1371
  %12 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i32 0, i32 4, !dbg !1372
  store ptr %11, ptr %12, align 8, !dbg !1373, !tbaa !1374
  %13 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i32 0, i32 5, !dbg !1375
  store ptr null, ptr %13, align 8, !dbg !1376, !tbaa !1377
  store i64 710, ptr @rpl_re_syntax_options, align 8, !dbg !1378, !tbaa !1379
  %14 = getelementptr inbounds %struct.valinfo, ptr %1, i32 0, i32 1, !dbg !1380
  %15 = load ptr, ptr %14, align 8, !dbg !1381, !tbaa !699
  %16 = getelementptr inbounds %struct.valinfo, ptr %1, i32 0, i32 1, !dbg !1382
  %17 = load ptr, ptr %16, align 8, !dbg !1383, !tbaa !699
  %18 = call i64 @strlen(ptr noundef %17), !dbg !1384
  %19 = call ptr @rpl_re_compile_pattern(ptr noundef %15, i64 noundef %18, ptr noundef %3), !dbg !1385
  call void @llvm.dbg.value(metadata ptr %19, metadata !1298, metadata !DIExpression()), !dbg !1344
  %20 = icmp ne ptr %19, null, !dbg !1386
  br i1 %20, label %21, label %22, !dbg !1388

21:                                               ; preds = %2
  call void (i32, i32, ptr, ...) @error(i32 noundef 2, i32 noundef 0, ptr noundef @.str.73, ptr noundef %19), !dbg !1389
  unreachable, !dbg !1389

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i32 0, i32 7, !dbg !1390
  %24 = load i8, ptr %23, align 8, !dbg !1391
  %25 = and i8 %24, 127, !dbg !1391
  %26 = or i8 %25, 0, !dbg !1391
  store i8 %26, ptr %23, align 8, !dbg !1391
  %27 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !1392
  %28 = load ptr, ptr %27, align 8, !dbg !1393, !tbaa !699
  %29 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !1394
  %30 = load ptr, ptr %29, align 8, !dbg !1395, !tbaa !699
  %31 = call i64 @strlen(ptr noundef %30), !dbg !1396
  %32 = call i64 @rpl_re_match(ptr noundef %3, ptr noundef %28, i64 noundef %31, i64 noundef 0, ptr noundef %5), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %32, metadata !1338, metadata !DIExpression()), !dbg !1344
  %33 = icmp sle i64 0, %32, !dbg !1398
  br i1 %33, label %34, label %75, !dbg !1399

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i32 0, i32 6, !dbg !1400
  %36 = load i64, ptr %35, align 8, !dbg !1400, !tbaa !1401
  %37 = icmp ugt i64 %36, 0, !dbg !1402
  br i1 %37, label %38, label %63, !dbg !1403

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.re_registers, ptr %5, i32 0, i32 2, !dbg !1404
  %40 = load ptr, ptr %39, align 8, !dbg !1404, !tbaa !1363
  %41 = getelementptr inbounds i64, ptr %40, i64 1, !dbg !1407
  %42 = load i64, ptr %41, align 8, !dbg !1407, !tbaa !1379
  %43 = icmp slt i64 %42, 0, !dbg !1408
  br i1 %43, label %44, label %46, !dbg !1409

44:                                               ; preds = %38
  %45 = call ptr @str_value(ptr noundef @.str.13), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %45, metadata !1297, metadata !DIExpression()), !dbg !1344
  br label %62, !dbg !1411

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !1412
  %48 = load ptr, ptr %47, align 8, !dbg !1414, !tbaa !699
  %49 = getelementptr inbounds %struct.re_registers, ptr %5, i32 0, i32 2, !dbg !1415
  %50 = load ptr, ptr %49, align 8, !dbg !1415, !tbaa !1363
  %51 = getelementptr inbounds i64, ptr %50, i64 1, !dbg !1416
  %52 = load i64, ptr %51, align 8, !dbg !1416, !tbaa !1379
  %53 = getelementptr inbounds i8, ptr %48, i64 %52, !dbg !1417
  store i8 0, ptr %53, align 1, !dbg !1418, !tbaa !699
  %54 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !1419
  %55 = load ptr, ptr %54, align 8, !dbg !1420, !tbaa !699
  %56 = getelementptr inbounds %struct.re_registers, ptr %5, i32 0, i32 1, !dbg !1421
  %57 = load ptr, ptr %56, align 8, !dbg !1421, !tbaa !1360
  %58 = getelementptr inbounds i64, ptr %57, i64 1, !dbg !1422
  %59 = load i64, ptr %58, align 8, !dbg !1422, !tbaa !1379
  %60 = getelementptr inbounds i8, ptr %55, i64 %59, !dbg !1423
  %61 = call ptr @str_value(ptr noundef %60), !dbg !1424
  call void @llvm.dbg.value(metadata ptr %61, metadata !1297, metadata !DIExpression()), !dbg !1344
  br label %62

62:                                               ; preds = %46, %44
  %.0 = phi ptr [ %45, %44 ], [ %61, %46 ], !dbg !1425
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1297, metadata !DIExpression()), !dbg !1344
  br label %74, !dbg !1426

63:                                               ; preds = %34
  %64 = call i32 @___mb_cur_max(), !dbg !1427
  %65 = icmp eq i32 %64, 1, !dbg !1428
  br i1 %65, label %66, label %67, !dbg !1427

66:                                               ; preds = %63
  br label %71, !dbg !1427

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.valinfo, ptr %0, i32 0, i32 1, !dbg !1429
  %69 = load ptr, ptr %68, align 8, !dbg !1430, !tbaa !699
  %70 = call i64 @mbs_offset_to_chars(ptr noundef %69, i64 noundef %32), !dbg !1431
  br label %71, !dbg !1427

71:                                               ; preds = %67, %66
  %72 = phi i64 [ %32, %66 ], [ %70, %67 ], !dbg !1427
  call void @llvm.dbg.value(metadata i64 %72, metadata !1339, metadata !DIExpression()), !dbg !1432
  %73 = call ptr @int_value(i64 noundef %72), !dbg !1433
  call void @llvm.dbg.value(metadata ptr %73, metadata !1297, metadata !DIExpression()), !dbg !1344
  br label %74

74:                                               ; preds = %71, %62
  %.1 = phi ptr [ %.0, %62 ], [ %73, %71 ], !dbg !1434
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1297, metadata !DIExpression()), !dbg !1344
  br label %95, !dbg !1435

75:                                               ; preds = %22
  %76 = icmp eq i64 %32, -1, !dbg !1436
  br i1 %76, label %77, label %86, !dbg !1438

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i32 0, i32 6, !dbg !1439
  %79 = load i64, ptr %78, align 8, !dbg !1439, !tbaa !1401
  %80 = icmp ugt i64 %79, 0, !dbg !1442
  br i1 %80, label %81, label %83, !dbg !1443

81:                                               ; preds = %77
  %82 = call ptr @str_value(ptr noundef @.str.13), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %82, metadata !1297, metadata !DIExpression()), !dbg !1344
  br label %85, !dbg !1445

83:                                               ; preds = %77
  %84 = call ptr @int_value(i64 noundef 0), !dbg !1446
  call void @llvm.dbg.value(metadata ptr %84, metadata !1297, metadata !DIExpression()), !dbg !1344
  br label %85

85:                                               ; preds = %83, %81
  %.2 = phi ptr [ %82, %81 ], [ %84, %83 ], !dbg !1447
  call void @llvm.dbg.value(metadata ptr %.2, metadata !1297, metadata !DIExpression()), !dbg !1344
  br label %94, !dbg !1448

86:                                               ; preds = %75
  %87 = icmp eq i64 %32, -2, !dbg !1449
  br i1 %87, label %88, label %91, !dbg !1449

88:                                               ; preds = %86
  %89 = call ptr @__error(), !dbg !1449
  %90 = load i32, ptr %89, align 4, !dbg !1449, !tbaa !613
  br label %92, !dbg !1449

91:                                               ; preds = %86
  br label %92, !dbg !1449

92:                                               ; preds = %91, %88
  %93 = phi i32 [ %90, %88 ], [ 84, %91 ], !dbg !1449
  call void (i32, i32, ptr, ...) @error(i32 noundef 3, i32 noundef %93, ptr noundef @.str.74), !dbg !1449
  unreachable, !dbg !1449

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %74
  %.3 = phi ptr [ %.1, %74 ], [ %.2, %94 ], !dbg !1450
  call void @llvm.dbg.value(metadata ptr %.3, metadata !1297, metadata !DIExpression()), !dbg !1344
  %96 = getelementptr inbounds %struct.re_registers, ptr %5, i32 0, i32 0, !dbg !1451
  %97 = load i64, ptr %96, align 8, !dbg !1451, !tbaa !1355
  %98 = icmp ult i64 0, %97, !dbg !1453
  br i1 %98, label %99, label %104, !dbg !1454

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.re_registers, ptr %5, i32 0, i32 1, !dbg !1455
  %101 = load ptr, ptr %100, align 8, !dbg !1455, !tbaa !1360
  call void @rpl_free(ptr noundef %101), !dbg !1457
  %102 = getelementptr inbounds %struct.re_registers, ptr %5, i32 0, i32 2, !dbg !1458
  %103 = load ptr, ptr %102, align 8, !dbg !1458, !tbaa !1363
  call void @rpl_free(ptr noundef %103), !dbg !1459
  br label %104, !dbg !1460

104:                                              ; preds = %99, %95
  %105 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i32 0, i32 4, !dbg !1461
  store ptr null, ptr %105, align 8, !dbg !1462, !tbaa !1374
  call void @rpl_regfree(ptr noundef %3), !dbg !1463
  call void @llvm.lifetime.end.p0(i64 24, ptr %5) #16, !dbg !1464
  call void @llvm.lifetime.end.p0(i64 256, ptr %4) #16, !dbg !1464
  call void @llvm.lifetime.end.p0(i64 64, ptr %3) #16, !dbg !1464
  ret ptr %.3, !dbg !1465
}

declare !dbg !1466 i64 @strlen(ptr noundef) #2

declare !dbg !1469 ptr @rpl_re_compile_pattern(ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !1473 i64 @rpl_re_match(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @str_value(ptr noundef %0) #7 !dbg !1477 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1481, metadata !DIExpression()), !dbg !1483
  %2 = call noalias nonnull ptr @xmalloc(i64 noundef 24) #19, !dbg !1484
  call void @llvm.dbg.value(metadata ptr %2, metadata !1482, metadata !DIExpression()), !dbg !1483
  %3 = getelementptr inbounds %struct.valinfo, ptr %2, i32 0, i32 0, !dbg !1485
  store i32 1, ptr %3, align 8, !dbg !1486, !tbaa !687
  %4 = call noalias nonnull ptr @xstrdup(ptr noundef %0), !dbg !1487
  %5 = getelementptr inbounds %struct.valinfo, ptr %2, i32 0, i32 1, !dbg !1488
  store ptr %4, ptr %5, align 8, !dbg !1489, !tbaa !699
  ret ptr %2, !dbg !1490
}

declare !dbg !1491 i32 @___mb_cur_max() #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @mbs_offset_to_chars(ptr noundef %0, i64 noundef %1) #7 !dbg !1495 {
  %3 = alloca %struct.mbuiter_multi, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %1, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.lifetime.start.p0(i64 192, ptr %3) #16, !dbg !1540
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1501, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1539
  %4 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1542
  %5 = getelementptr inbounds %struct.mbchar, ptr %4, i32 0, i32 0, !dbg !1542
  store ptr %0, ptr %5, align 8, !dbg !1542, !tbaa !1543
  %6 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 0, !dbg !1542
  store i8 0, ptr %6, align 8, !dbg !1542, !tbaa !1547
  %7 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 1, !dbg !1542
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 128, i1 false), !dbg !1542
  %8 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 2, !dbg !1542
  store i8 0, ptr %8, align 8, !dbg !1542, !tbaa !1548
  br label %9, !dbg !1542

9:                                                ; preds = %35, %2
  %.01 = phi i64 [ 0, %2 ], [ %.1, %35 ], !dbg !1549
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1533, metadata !DIExpression()), !dbg !1539
  call void @mbuiter_multi_next(ptr noundef %3), !dbg !1550
  %10 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1550
  %11 = getelementptr inbounds %struct.mbchar, ptr %10, i32 0, i32 2, !dbg !1550
  %12 = load i8, ptr %11, align 8, !dbg !1550, !tbaa !1551, !range !1552, !noundef !484
  %13 = trunc i8 %12 to i1, !dbg !1550
  br i1 %13, label %14, label %19, !dbg !1550

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1550
  %16 = getelementptr inbounds %struct.mbchar, ptr %15, i32 0, i32 3, !dbg !1550
  %17 = load i32, ptr %16, align 4, !dbg !1550, !tbaa !1553
  %18 = icmp eq i32 %17, 0, !dbg !1550
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ], !dbg !1554
  %21 = xor i1 %20, true, !dbg !1550
  br i1 %21, label %22, label %44, !dbg !1555

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1556
  %24 = getelementptr inbounds %struct.mbchar, ptr %23, i32 0, i32 0, !dbg !1556
  %25 = load ptr, ptr %24, align 8, !dbg !1556, !tbaa !1543
  %26 = ptrtoint ptr %25 to i64, !dbg !1557
  %27 = ptrtoint ptr %0 to i64, !dbg !1557
  %28 = sub i64 %26, %27, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %28, metadata !1534, metadata !DIExpression()), !dbg !1558
  %29 = icmp uge i64 %28, %1, !dbg !1559
  br i1 %29, label %30, label %31, !dbg !1561

30:                                               ; preds = %22
  br label %33, !dbg !1562

31:                                               ; preds = %22
  %32 = add i64 %.01, 1, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %32, metadata !1533, metadata !DIExpression()), !dbg !1539
  br label %33, !dbg !1564

33:                                               ; preds = %31, %30
  %.1 = phi i64 [ %.01, %30 ], [ %32, %31 ], !dbg !1539
  %.0 = phi i32 [ 2, %30 ], [ 0, %31 ]
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1533, metadata !DIExpression()), !dbg !1539
  switch i32 %.0, label %45 [
    i32 0, label %34
    i32 2, label %44
  ]

34:                                               ; preds = %33
  br label %35, !dbg !1565

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1566
  %37 = getelementptr inbounds %struct.mbchar, ptr %36, i32 0, i32 1, !dbg !1566
  %38 = load i64, ptr %37, align 8, !dbg !1566, !tbaa !1567
  %39 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1566
  %40 = getelementptr inbounds %struct.mbchar, ptr %39, i32 0, i32 0, !dbg !1566
  %41 = load ptr, ptr %40, align 8, !dbg !1566, !tbaa !1543
  %42 = getelementptr inbounds i8, ptr %41, i64 %38, !dbg !1566
  store ptr %42, ptr %40, align 8, !dbg !1566, !tbaa !1543
  %43 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 2, !dbg !1566
  store i8 0, ptr %43, align 8, !dbg !1566, !tbaa !1548
  br label %9, !dbg !1568, !llvm.loop !1569

44:                                               ; preds = %33, %19
  %.2 = phi i64 [ %.1, %33 ], [ %.01, %19 ], !dbg !1549
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1533, metadata !DIExpression()), !dbg !1539
  call void @llvm.lifetime.end.p0(i64 192, ptr %3) #16, !dbg !1571
  ret i64 %.2, !dbg !1572

45:                                               ; preds = %33
  unreachable
}

declare !dbg !1573 void @rpl_regfree(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @mbuiter_multi_next(ptr noundef %0) #3 !dbg !1578 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1583, metadata !DIExpression()), !dbg !1587
  %2 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 2, !dbg !1588
  %3 = load i8, ptr %2, align 8, !dbg !1588, !tbaa !1548, !range !1552, !noundef !484
  %4 = trunc i8 %3 to i1, !dbg !1588
  br i1 %4, label %5, label %6, !dbg !1590

5:                                                ; preds = %1
  br label %131, !dbg !1591

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 0, !dbg !1592
  %8 = load i8, ptr %7, align 8, !dbg !1592, !tbaa !1547, !range !1552, !noundef !484
  %9 = trunc i8 %8 to i1, !dbg !1592
  br i1 %9, label %10, label %11, !dbg !1594

10:                                               ; preds = %6
  br label %43, !dbg !1595

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1596
  %13 = getelementptr inbounds %struct.mbchar, ptr %12, i32 0, i32 0, !dbg !1597
  %14 = load ptr, ptr %13, align 8, !dbg !1597, !tbaa !1543
  %15 = load i8, ptr %14, align 1, !dbg !1598, !tbaa !699
  %16 = call zeroext i1 @is_basic(i8 noundef signext %15), !dbg !1599
  br i1 %16, label %17, label %29, !dbg !1600

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1601
  %19 = getelementptr inbounds %struct.mbchar, ptr %18, i32 0, i32 1, !dbg !1603
  store i64 1, ptr %19, align 8, !dbg !1604, !tbaa !1567
  %20 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1605
  %21 = getelementptr inbounds %struct.mbchar, ptr %20, i32 0, i32 0, !dbg !1606
  %22 = load ptr, ptr %21, align 8, !dbg !1606, !tbaa !1543
  %23 = load i8, ptr %22, align 1, !dbg !1607, !tbaa !699
  %24 = sext i8 %23 to i32, !dbg !1607
  %25 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1608
  %26 = getelementptr inbounds %struct.mbchar, ptr %25, i32 0, i32 3, !dbg !1609
  store i32 %24, ptr %26, align 4, !dbg !1610, !tbaa !1553
  %27 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1611
  %28 = getelementptr inbounds %struct.mbchar, ptr %27, i32 0, i32 2, !dbg !1612
  store i8 1, ptr %28, align 8, !dbg !1613, !tbaa !1551
  br label %129, !dbg !1614

29:                                               ; preds = %11
  %30 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 1, !dbg !1615
  %31 = call i32 @mbsinit(ptr noundef %30), !dbg !1615
  %32 = icmp ne i32 %31, 0, !dbg !1615
  %33 = xor i1 %32, true, !dbg !1615
  %34 = zext i1 %33 to i32, !dbg !1615
  %35 = sext i32 %34 to i64, !dbg !1615
  %36 = call i64 @llvm.expect.i64(i64 %35, i64 0), !dbg !1615
  %37 = icmp ne i64 %36, 0, !dbg !1615
  br i1 %37, label %38, label %40, !dbg !1615

38:                                               ; preds = %29
  call void @__assert_rtn(ptr noundef @__func__.mbuiter_multi_next, ptr noundef @.str.64, i32 noundef 142, ptr noundef @.str.65) #18, !dbg !1615
  unreachable, !dbg !1615

39:                                               ; No predecessors!
  br label %41, !dbg !1615

40:                                               ; preds = %29
  br label %41, !dbg !1615

41:                                               ; preds = %40, %39
  %42 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 0, !dbg !1616
  store i8 1, ptr %42, align 8, !dbg !1617, !tbaa !1547
  br label %43, !dbg !1618

43:                                               ; preds = %41, %10
  call void @llvm.dbg.label(metadata !1584), !dbg !1619
  %44 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1620
  %45 = getelementptr inbounds %struct.mbchar, ptr %44, i32 0, i32 3, !dbg !1621
  %46 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1622
  %47 = getelementptr inbounds %struct.mbchar, ptr %46, i32 0, i32 0, !dbg !1623
  %48 = load ptr, ptr %47, align 8, !dbg !1623, !tbaa !1543
  %49 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1624
  %50 = getelementptr inbounds %struct.mbchar, ptr %49, i32 0, i32 0, !dbg !1625
  %51 = load ptr, ptr %50, align 8, !dbg !1625, !tbaa !1543
  %52 = call i32 @___mb_cur_max(), !dbg !1626
  %53 = sext i32 %52 to i64, !dbg !1626
  %54 = call i64 @strnlen1(ptr noundef %51, i64 noundef %53) #17, !dbg !1627
  %55 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 1, !dbg !1628
  %56 = call i64 @mbrtowc(ptr noundef %45, ptr noundef %48, i64 noundef %54, ptr noundef %55), !dbg !1629
  %57 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1630
  %58 = getelementptr inbounds %struct.mbchar, ptr %57, i32 0, i32 1, !dbg !1631
  store i64 %56, ptr %58, align 8, !dbg !1632, !tbaa !1567
  %59 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1633
  %60 = getelementptr inbounds %struct.mbchar, ptr %59, i32 0, i32 1, !dbg !1635
  %61 = load i64, ptr %60, align 8, !dbg !1635, !tbaa !1567
  %62 = icmp eq i64 %61, -1, !dbg !1636
  br i1 %62, label %63, label %68, !dbg !1637

63:                                               ; preds = %43
  %64 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1638
  %65 = getelementptr inbounds %struct.mbchar, ptr %64, i32 0, i32 1, !dbg !1640
  store i64 1, ptr %65, align 8, !dbg !1641, !tbaa !1567
  %66 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1642
  %67 = getelementptr inbounds %struct.mbchar, ptr %66, i32 0, i32 2, !dbg !1643
  store i8 0, ptr %67, align 8, !dbg !1644, !tbaa !1551
  br label %128, !dbg !1645

68:                                               ; preds = %43
  %69 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1646
  %70 = getelementptr inbounds %struct.mbchar, ptr %69, i32 0, i32 1, !dbg !1648
  %71 = load i64, ptr %70, align 8, !dbg !1648, !tbaa !1567
  %72 = icmp eq i64 %71, -2, !dbg !1649
  br i1 %72, label %73, label %82, !dbg !1650

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1651
  %75 = getelementptr inbounds %struct.mbchar, ptr %74, i32 0, i32 0, !dbg !1653
  %76 = load ptr, ptr %75, align 8, !dbg !1653, !tbaa !1543
  %77 = call i64 @strlen(ptr noundef %76), !dbg !1654
  %78 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1655
  %79 = getelementptr inbounds %struct.mbchar, ptr %78, i32 0, i32 1, !dbg !1656
  store i64 %77, ptr %79, align 8, !dbg !1657, !tbaa !1567
  %80 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1658
  %81 = getelementptr inbounds %struct.mbchar, ptr %80, i32 0, i32 2, !dbg !1659
  store i8 0, ptr %81, align 8, !dbg !1660, !tbaa !1551
  br label %127, !dbg !1661

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1662
  %84 = getelementptr inbounds %struct.mbchar, ptr %83, i32 0, i32 1, !dbg !1665
  %85 = load i64, ptr %84, align 8, !dbg !1665, !tbaa !1567
  %86 = icmp eq i64 %85, 0, !dbg !1666
  br i1 %86, label %87, label %118, !dbg !1667

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1668
  %89 = getelementptr inbounds %struct.mbchar, ptr %88, i32 0, i32 1, !dbg !1670
  store i64 1, ptr %89, align 8, !dbg !1671, !tbaa !1567
  %90 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1672
  %91 = getelementptr inbounds %struct.mbchar, ptr %90, i32 0, i32 0, !dbg !1672
  %92 = load ptr, ptr %91, align 8, !dbg !1672, !tbaa !1543
  %93 = load i8, ptr %92, align 1, !dbg !1672, !tbaa !699
  %94 = sext i8 %93 to i32, !dbg !1672
  %95 = icmp eq i32 %94, 0, !dbg !1672
  %96 = xor i1 %95, true, !dbg !1672
  %97 = zext i1 %96 to i32, !dbg !1672
  %98 = sext i32 %97 to i64, !dbg !1672
  %99 = call i64 @llvm.expect.i64(i64 %98, i64 0), !dbg !1672
  %100 = icmp ne i64 %99, 0, !dbg !1672
  br i1 %100, label %101, label %103, !dbg !1672

101:                                              ; preds = %87
  call void @__assert_rtn(ptr noundef @__func__.mbuiter_multi_next, ptr noundef @.str.64, i32 noundef 170, ptr noundef @.str.66) #18, !dbg !1672
  unreachable, !dbg !1672

102:                                              ; No predecessors!
  br label %104, !dbg !1672

103:                                              ; preds = %87
  br label %104, !dbg !1672

104:                                              ; preds = %103, %102
  %105 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1673
  %106 = getelementptr inbounds %struct.mbchar, ptr %105, i32 0, i32 3, !dbg !1673
  %107 = load i32, ptr %106, align 4, !dbg !1673, !tbaa !1553
  %108 = icmp eq i32 %107, 0, !dbg !1673
  %109 = xor i1 %108, true, !dbg !1673
  %110 = zext i1 %109 to i32, !dbg !1673
  %111 = sext i32 %110 to i64, !dbg !1673
  %112 = call i64 @llvm.expect.i64(i64 %111, i64 0), !dbg !1673
  %113 = icmp ne i64 %112, 0, !dbg !1673
  br i1 %113, label %114, label %116, !dbg !1673

114:                                              ; preds = %104
  call void @__assert_rtn(ptr noundef @__func__.mbuiter_multi_next, ptr noundef @.str.64, i32 noundef 171, ptr noundef @.str.67) #18, !dbg !1673
  unreachable, !dbg !1673

115:                                              ; No predecessors!
  br label %117, !dbg !1673

116:                                              ; preds = %104
  br label %117, !dbg !1673

117:                                              ; preds = %116, %115
  br label %118, !dbg !1674

118:                                              ; preds = %117, %82
  %119 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 3, !dbg !1675
  %120 = getelementptr inbounds %struct.mbchar, ptr %119, i32 0, i32 2, !dbg !1676
  store i8 1, ptr %120, align 8, !dbg !1677, !tbaa !1551
  %121 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 1, !dbg !1678
  %122 = call i32 @mbsinit(ptr noundef %121), !dbg !1680
  %123 = icmp ne i32 %122, 0, !dbg !1680
  br i1 %123, label %124, label %126, !dbg !1681

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 0, !dbg !1682
  store i8 0, ptr %125, align 8, !dbg !1683, !tbaa !1547
  br label %126, !dbg !1684

126:                                              ; preds = %124, %118
  br label %127

127:                                              ; preds = %126, %73
  br label %128

128:                                              ; preds = %127, %63
  br label %129

129:                                              ; preds = %128, %17
  %130 = getelementptr inbounds %struct.mbuiter_multi, ptr %0, i32 0, i32 2, !dbg !1685
  store i8 1, ptr %130, align 8, !dbg !1686, !tbaa !1548
  br label %131, !dbg !1687

131:                                              ; preds = %129, %5
  ret void, !dbg !1687
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally zeroext i1 @is_basic(i8 noundef signext %0) #3 !dbg !1688 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1692, metadata !DIExpression()), !dbg !1693
  %2 = zext i8 %0 to i32, !dbg !1694
  %3 = ashr i32 %2, 5, !dbg !1695
  %4 = sext i32 %3 to i64, !dbg !1696
  %5 = getelementptr inbounds [0 x i32], ptr @is_basic_table, i64 0, i64 %4, !dbg !1696
  %6 = load i32, ptr %5, align 4, !dbg !1696, !tbaa !613
  %7 = zext i8 %0 to i32, !dbg !1697
  %8 = and i32 %7, 31, !dbg !1698
  %9 = lshr i32 %6, %8, !dbg !1699
  %10 = and i32 %9, 1, !dbg !1700
  %11 = icmp ne i32 %10, 0, !dbg !1701
  ret i1 %11, !dbg !1702
}

declare !dbg !1703 i32 @mbsinit(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: cold noreturn
declare !dbg !1709 void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1713 i64 @strnlen1(ptr noundef, i64 noundef) #11

declare !dbg !1715 i64 @mbrtowc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !1722 noalias nonnull ptr @xstrdup(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @require_more_args() #7 !dbg !1725 {
  %1 = call zeroext i1 @nomoreargs(), !dbg !1726
  br i1 %1, label %2, label %7, !dbg !1728

2:                                                ; preds = %0
  %3 = load ptr, ptr @args, align 8, !dbg !1729, !tbaa !395
  %4 = getelementptr inbounds ptr, ptr %3, i64 -1, !dbg !1729
  %5 = load ptr, ptr %4, align 8, !dbg !1729, !tbaa !395
  %6 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %5), !dbg !1729
  call void (i32, i32, ptr, ...) @error(i32 noundef 2, i32 noundef 0, ptr noundef @.str.63, ptr noundef %6), !dbg !1729
  unreachable, !dbg !1729

7:                                                ; preds = %0
  ret void, !dbg !1730
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1731 i64 @mbslen(ptr noundef) #11

; Function Attrs: nounwind ssp uwtable
define internal i64 @mbs_logical_cspn(ptr noundef %0, ptr noundef %1) #7 !dbg !1735 {
  %3 = alloca %struct.mbuiter_multi, align 8
  %4 = alloca %struct.mbuiter_multi, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1739, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata ptr %1, metadata !1740, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()), !dbg !1753
  %5 = getelementptr inbounds i8, ptr %1, i64 0, !dbg !1754
  %6 = load i8, ptr %5, align 1, !dbg !1754, !tbaa !699
  %7 = sext i8 %6 to i32, !dbg !1754
  %8 = icmp eq i32 %7, 0, !dbg !1756
  br i1 %8, label %9, label %10, !dbg !1757

9:                                                ; preds = %2
  br label %142, !dbg !1758

10:                                               ; preds = %2
  %11 = call i32 @___mb_cur_max(), !dbg !1759
  %12 = icmp sgt i32 %11, 1, !dbg !1760
  br i1 %12, label %13, label %131, !dbg !1761

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 192, ptr %3) #16, !dbg !1762
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1742, metadata !DIExpression()), !dbg !1763
  %14 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1764
  %15 = getelementptr inbounds %struct.mbchar, ptr %14, i32 0, i32 0, !dbg !1764
  store ptr %0, ptr %15, align 8, !dbg !1764, !tbaa !1543
  %16 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 0, !dbg !1764
  store i8 0, ptr %16, align 8, !dbg !1764, !tbaa !1547
  %17 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 1, !dbg !1764
  call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 128, i1 false), !dbg !1764
  %18 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 2, !dbg !1764
  store i8 0, ptr %18, align 8, !dbg !1764, !tbaa !1548
  br label %19, !dbg !1764

19:                                               ; preds = %120, %13
  %.02 = phi i64 [ 0, %13 ], [ %33, %120 ], !dbg !1753
  %.0 = phi i64 [ undef, %13 ], [ %.2, %120 ]
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @mbuiter_multi_next(ptr noundef %3), !dbg !1765
  %20 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1765
  %21 = getelementptr inbounds %struct.mbchar, ptr %20, i32 0, i32 2, !dbg !1765
  %22 = load i8, ptr %21, align 8, !dbg !1765, !tbaa !1551, !range !1552, !noundef !484
  %23 = trunc i8 %22 to i1, !dbg !1765
  br i1 %23, label %24, label %29, !dbg !1765

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1765
  %26 = getelementptr inbounds %struct.mbchar, ptr %25, i32 0, i32 3, !dbg !1765
  %27 = load i32, ptr %26, align 4, !dbg !1765, !tbaa !1553
  %28 = icmp eq i32 %27, 0, !dbg !1765
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ], !dbg !1766
  %31 = xor i1 %30, true, !dbg !1765
  br i1 %31, label %32, label %129, !dbg !1767

32:                                               ; preds = %29
  %33 = add i64 %.02, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %33, metadata !1741, metadata !DIExpression()), !dbg !1753
  %34 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1769
  %35 = getelementptr inbounds %struct.mbchar, ptr %34, i32 0, i32 1, !dbg !1769
  %36 = load i64, ptr %35, align 8, !dbg !1769, !tbaa !1567
  %37 = icmp eq i64 %36, 1, !dbg !1770
  br i1 %37, label %38, label %48, !dbg !1771

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1772
  %40 = getelementptr inbounds %struct.mbchar, ptr %39, i32 0, i32 0, !dbg !1772
  %41 = load ptr, ptr %40, align 8, !dbg !1772, !tbaa !1543
  %42 = load i8, ptr %41, align 1, !dbg !1775, !tbaa !699
  %43 = sext i8 %42 to i32, !dbg !1775
  %44 = call ptr @mbschr(ptr noundef %1, i32 noundef %43) #17, !dbg !1776
  %45 = icmp ne ptr %44, null, !dbg !1776
  br i1 %45, label %46, label %47, !dbg !1777

46:                                               ; preds = %38
  br label %130, !dbg !1778

47:                                               ; preds = %38
  br label %119, !dbg !1779

48:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 192, ptr %4) #16, !dbg !1780
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1745, metadata !DIExpression()), !dbg !1781
  %49 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1782
  %50 = getelementptr inbounds %struct.mbchar, ptr %49, i32 0, i32 0, !dbg !1782
  store ptr %1, ptr %50, align 8, !dbg !1782, !tbaa !1543
  %51 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 0, !dbg !1782
  store i8 0, ptr %51, align 8, !dbg !1782, !tbaa !1547
  %52 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 1, !dbg !1782
  call void @llvm.memset.p0.i64(ptr align 8 %52, i8 0, i64 128, i1 false), !dbg !1782
  %53 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 2, !dbg !1782
  store i8 0, ptr %53, align 8, !dbg !1782, !tbaa !1548
  br label %54, !dbg !1782

54:                                               ; preds = %107, %48
  call void @mbuiter_multi_next(ptr noundef %4), !dbg !1784
  %55 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1784
  %56 = getelementptr inbounds %struct.mbchar, ptr %55, i32 0, i32 2, !dbg !1784
  %57 = load i8, ptr %56, align 8, !dbg !1784, !tbaa !1551, !range !1552, !noundef !484
  %58 = trunc i8 %57 to i1, !dbg !1784
  br i1 %58, label %59, label %64, !dbg !1784

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1784
  %61 = getelementptr inbounds %struct.mbchar, ptr %60, i32 0, i32 3, !dbg !1784
  %62 = load i32, ptr %61, align 4, !dbg !1784, !tbaa !1553
  %63 = icmp eq i32 %62, 0, !dbg !1784
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ], !dbg !1786
  %66 = xor i1 %65, true, !dbg !1784
  br i1 %66, label %67, label %116, !dbg !1787

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1788
  %69 = getelementptr inbounds %struct.mbchar, ptr %68, i32 0, i32 2, !dbg !1788
  %70 = load i8, ptr %69, align 8, !dbg !1788, !tbaa !1551, !range !1552, !noundef !484
  %71 = trunc i8 %70 to i1, !dbg !1788
  br i1 %71, label %72, label %85, !dbg !1788

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1788
  %74 = getelementptr inbounds %struct.mbchar, ptr %73, i32 0, i32 2, !dbg !1788
  %75 = load i8, ptr %74, align 8, !dbg !1788, !tbaa !1551, !range !1552, !noundef !484
  %76 = trunc i8 %75 to i1, !dbg !1788
  br i1 %76, label %77, label %85, !dbg !1790

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1788
  %79 = getelementptr inbounds %struct.mbchar, ptr %78, i32 0, i32 3, !dbg !1788
  %80 = load i32, ptr %79, align 4, !dbg !1788, !tbaa !1553
  %81 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1788
  %82 = getelementptr inbounds %struct.mbchar, ptr %81, i32 0, i32 3, !dbg !1788
  %83 = load i32, ptr %82, align 4, !dbg !1788, !tbaa !1553
  %84 = icmp eq i32 %80, %83, !dbg !1788
  br i1 %84, label %105, label %106, !dbg !1788

85:                                               ; preds = %72, %67
  %86 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1788
  %87 = getelementptr inbounds %struct.mbchar, ptr %86, i32 0, i32 1, !dbg !1788
  %88 = load i64, ptr %87, align 8, !dbg !1788, !tbaa !1567
  %89 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1788
  %90 = getelementptr inbounds %struct.mbchar, ptr %89, i32 0, i32 1, !dbg !1788
  %91 = load i64, ptr %90, align 8, !dbg !1788, !tbaa !1567
  %92 = icmp eq i64 %88, %91, !dbg !1788
  br i1 %92, label %93, label %106, !dbg !1788

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1788
  %95 = getelementptr inbounds %struct.mbchar, ptr %94, i32 0, i32 0, !dbg !1788
  %96 = load ptr, ptr %95, align 8, !dbg !1788, !tbaa !1543
  %97 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1788
  %98 = getelementptr inbounds %struct.mbchar, ptr %97, i32 0, i32 0, !dbg !1788
  %99 = load ptr, ptr %98, align 8, !dbg !1788, !tbaa !1543
  %100 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1788
  %101 = getelementptr inbounds %struct.mbchar, ptr %100, i32 0, i32 1, !dbg !1788
  %102 = load i64, ptr %101, align 8, !dbg !1788, !tbaa !1567
  %103 = call i32 @memcmp(ptr noundef %96, ptr noundef %99, i64 noundef %102), !dbg !1788
  %104 = icmp eq i32 %103, 0, !dbg !1788
  br i1 %104, label %105, label %106, !dbg !1790

105:                                              ; preds = %93, %77
  br label %117, !dbg !1791

106:                                              ; preds = %93, %85, %77
  br label %107, !dbg !1788

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1792
  %109 = getelementptr inbounds %struct.mbchar, ptr %108, i32 0, i32 1, !dbg !1792
  %110 = load i64, ptr %109, align 8, !dbg !1792, !tbaa !1567
  %111 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1792
  %112 = getelementptr inbounds %struct.mbchar, ptr %111, i32 0, i32 0, !dbg !1792
  %113 = load ptr, ptr %112, align 8, !dbg !1792, !tbaa !1543
  %114 = getelementptr inbounds i8, ptr %113, i64 %110, !dbg !1792
  store ptr %114, ptr %112, align 8, !dbg !1792, !tbaa !1543
  %115 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 2, !dbg !1792
  store i8 0, ptr %115, align 8, !dbg !1792, !tbaa !1548
  br label %54, !dbg !1793, !llvm.loop !1794

116:                                              ; preds = %64
  br label %117, !dbg !1796

117:                                              ; preds = %116, %105
  %.01 = phi i32 [ 1, %105 ], [ 0, %116 ]
  %.1 = phi i64 [ %33, %105 ], [ %.0, %116 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr %4) #16, !dbg !1796
  switch i32 %.01, label %130 [
    i32 0, label %118
  ]

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %47
  %.2 = phi i64 [ %.0, %47 ], [ %.1, %118 ]
  br label %120, !dbg !1797

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1798
  %122 = getelementptr inbounds %struct.mbchar, ptr %121, i32 0, i32 1, !dbg !1798
  %123 = load i64, ptr %122, align 8, !dbg !1798, !tbaa !1567
  %124 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 3, !dbg !1798
  %125 = getelementptr inbounds %struct.mbchar, ptr %124, i32 0, i32 0, !dbg !1798
  %126 = load ptr, ptr %125, align 8, !dbg !1798, !tbaa !1543
  %127 = getelementptr inbounds i8, ptr %126, i64 %123, !dbg !1798
  store ptr %127, ptr %125, align 8, !dbg !1798, !tbaa !1543
  %128 = getelementptr inbounds %struct.mbuiter_multi, ptr %3, i32 0, i32 2, !dbg !1798
  store i8 0, ptr %128, align 8, !dbg !1798, !tbaa !1548
  br label %19, !dbg !1799, !llvm.loop !1800

129:                                              ; preds = %29
  br label %130, !dbg !1802

130:                                              ; preds = %129, %117, %46
  %.3 = phi i64 [ %33, %46 ], [ %.1, %117 ], [ 0, %129 ], !dbg !1803
  call void @llvm.lifetime.end.p0(i64 192, ptr %3) #16, !dbg !1804
  br label %142

131:                                              ; preds = %10
  %132 = call i64 @strcspn(ptr noundef %0, ptr noundef %1), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %132, metadata !1751, metadata !DIExpression()), !dbg !1806
  %133 = getelementptr inbounds i8, ptr %0, i64 %132, !dbg !1807
  %134 = load i8, ptr %133, align 1, !dbg !1807, !tbaa !699
  %135 = sext i8 %134 to i32, !dbg !1807
  %136 = icmp ne i32 %135, 0, !dbg !1807
  br i1 %136, label %137, label %139, !dbg !1807

137:                                              ; preds = %131
  %138 = add i64 %132, 1, !dbg !1808
  br label %140, !dbg !1807

139:                                              ; preds = %131
  br label %140, !dbg !1807

140:                                              ; preds = %139, %137
  %141 = phi i64 [ %138, %137 ], [ 0, %139 ], !dbg !1807
  br label %142

142:                                              ; preds = %140, %130, %9
  %.4 = phi i64 [ 0, %9 ], [ %.3, %130 ], [ %141, %140 ], !dbg !1753
  ret i64 %.4, !dbg !1809
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @getsize(ptr noundef %0) #7 !dbg !1810 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1814, metadata !DIExpression()), !dbg !1818
  %2 = call i32 @mpz_sgn(ptr noundef %0), !dbg !1819
  %3 = icmp slt i32 %2, 0, !dbg !1821
  br i1 %3, label %4, label %5, !dbg !1822

4:                                                ; preds = %1
  br label %16, !dbg !1823

5:                                                ; preds = %1
  %6 = call i32 @mpz_fits_ulong_p(ptr noundef %0), !dbg !1824
  %7 = icmp ne i32 %6, 0, !dbg !1824
  br i1 %7, label %8, label %15, !dbg !1825

8:                                                ; preds = %5
  %9 = call i64 @mpz_get_ui(ptr noundef %0), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %9, metadata !1815, metadata !DIExpression()), !dbg !1827
  %10 = icmp ult i64 %9, -1, !dbg !1828
  br i1 %10, label %11, label %12, !dbg !1830

11:                                               ; preds = %8
  br label %13, !dbg !1831

12:                                               ; preds = %8
  br label %13, !dbg !1832

13:                                               ; preds = %12, %11
  %.01 = phi i32 [ 1, %11 ], [ 0, %12 ]
  switch i32 %.01, label %17 [
    i32 0, label %14
    i32 1, label %16
  ]

14:                                               ; preds = %13
  br label %15, !dbg !1833

15:                                               ; preds = %14, %5
  br label %16, !dbg !1834

16:                                               ; preds = %15, %13, %4
  %.1 = phi i64 [ -1, %4 ], [ %9, %13 ], [ -2, %15 ], !dbg !1818
  ret i64 %.1, !dbg !1835

17:                                               ; preds = %13
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @mbs_logical_substr(ptr noundef %0, i64 noundef %1, i64 noundef %2) #7 !dbg !1836 {
  %4 = alloca %struct.mbuiter_multi, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1840, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %1, metadata !1841, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %2, metadata !1842, metadata !DIExpression()), !dbg !1852
  %5 = call i64 @strlen(ptr noundef %0), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %5, metadata !1845, metadata !DIExpression()), !dbg !1852
  %6 = call i32 @___mb_cur_max(), !dbg !1854
  %7 = icmp sgt i32 %6, 1, !dbg !1855
  br i1 %7, label %8, label %10, !dbg !1856

8:                                                ; preds = %3
  %9 = call i64 @mbslen(ptr noundef %0) #17, !dbg !1857
  br label %11, !dbg !1856

10:                                               ; preds = %3
  br label %11, !dbg !1856

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ %5, %10 ], !dbg !1856
  call void @llvm.dbg.value(metadata i64 %12, metadata !1846, metadata !DIExpression()), !dbg !1852
  %13 = icmp ult i64 %12, %1, !dbg !1858
  br i1 %13, label %20, label %14, !dbg !1860

14:                                               ; preds = %11
  %15 = icmp eq i64 %1, 0, !dbg !1861
  br i1 %15, label %20, label %16, !dbg !1862

16:                                               ; preds = %14
  %17 = icmp eq i64 %2, 0, !dbg !1863
  br i1 %17, label %20, label %18, !dbg !1864

18:                                               ; preds = %16
  %19 = icmp eq i64 %2, -1, !dbg !1865
  br i1 %19, label %20, label %22, !dbg !1866

20:                                               ; preds = %18, %16, %14, %11
  %21 = call noalias nonnull ptr @xstrdup(ptr noundef @.str.13), !dbg !1867
  br label %89, !dbg !1868

22:                                               ; preds = %18
  %23 = sub i64 %12, %1, !dbg !1869
  %24 = add i64 %23, 1, !dbg !1869
  %25 = icmp ult i64 %2, %24, !dbg !1869
  br i1 %25, label %26, label %27, !dbg !1869

26:                                               ; preds = %22
  br label %30, !dbg !1869

27:                                               ; preds = %22
  %28 = sub i64 %12, %1, !dbg !1869
  %29 = add i64 %28, 1, !dbg !1869
  br label %30, !dbg !1869

30:                                               ; preds = %27, %26
  %31 = phi i64 [ %2, %26 ], [ %29, %27 ], !dbg !1869
  call void @llvm.dbg.value(metadata i64 %31, metadata !1847, metadata !DIExpression()), !dbg !1852
  %32 = call i32 @___mb_cur_max(), !dbg !1870
  %33 = icmp eq i32 %32, 1, !dbg !1871
  br i1 %33, label %34, label %40, !dbg !1872

34:                                               ; preds = %30
  %35 = add i64 %31, 1, !dbg !1873
  %36 = call noalias nonnull ptr @xmalloc(i64 noundef %35) #19, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %36, metadata !1843, metadata !DIExpression()), !dbg !1852
  %37 = getelementptr inbounds i8, ptr %0, i64 %1, !dbg !1876
  %38 = getelementptr inbounds i8, ptr %37, i64 -1, !dbg !1877
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %38, i64 %31, i1 false), !dbg !1878
  %39 = getelementptr inbounds i8, ptr %36, i64 %31, !dbg !1878
  call void @llvm.dbg.value(metadata ptr %39, metadata !1844, metadata !DIExpression()), !dbg !1852
  br label %88, !dbg !1879

40:                                               ; preds = %30
  %41 = add i64 %5, 1, !dbg !1880
  %42 = call noalias nonnull ptr @xmalloc(i64 noundef %41) #19, !dbg !1881
  call void @llvm.dbg.value(metadata ptr %42, metadata !1843, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %42, metadata !1844, metadata !DIExpression()), !dbg !1852
  call void @llvm.lifetime.start.p0(i64 192, ptr %4) #16, !dbg !1882
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1848, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 1, metadata !1851, metadata !DIExpression()), !dbg !1884
  %43 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1885
  %44 = getelementptr inbounds %struct.mbchar, ptr %43, i32 0, i32 0, !dbg !1885
  store ptr %0, ptr %44, align 8, !dbg !1885, !tbaa !1543
  %45 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 0, !dbg !1885
  store i8 0, ptr %45, align 8, !dbg !1885, !tbaa !1547
  %46 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 1, !dbg !1885
  call void @llvm.memset.p0.i64(ptr align 8 %46, i8 0, i64 128, i1 false), !dbg !1885
  %47 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 2, !dbg !1885
  store i8 0, ptr %47, align 8, !dbg !1885, !tbaa !1548
  br label %48, !dbg !1885

48:                                               ; preds = %77, %40
  %.04 = phi ptr [ %42, %40 ], [ %.15, %77 ], !dbg !1887
  %.02 = phi i64 [ %31, %40 ], [ %.1, %77 ], !dbg !1888
  %.01 = phi i64 [ 1, %40 ], [ %86, %77 ], !dbg !1884
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1851, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1847, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %.04, metadata !1844, metadata !DIExpression()), !dbg !1852
  call void @mbuiter_multi_next(ptr noundef %4), !dbg !1889
  %49 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1889
  %50 = getelementptr inbounds %struct.mbchar, ptr %49, i32 0, i32 2, !dbg !1889
  %51 = load i8, ptr %50, align 8, !dbg !1889, !tbaa !1551, !range !1552, !noundef !484
  %52 = trunc i8 %51 to i1, !dbg !1889
  br i1 %52, label %53, label %58, !dbg !1889

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1889
  %55 = getelementptr inbounds %struct.mbchar, ptr %54, i32 0, i32 3, !dbg !1889
  %56 = load i32, ptr %55, align 4, !dbg !1889, !tbaa !1553
  %57 = icmp eq i32 %56, 0, !dbg !1889
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ], !dbg !1891
  %60 = xor i1 %59, true, !dbg !1889
  br i1 %60, label %61, label %63, !dbg !1892

61:                                               ; preds = %58
  %62 = icmp ugt i64 %.02, 0, !dbg !1893
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i1 [ false, %58 ], [ %62, %61 ], !dbg !1891
  br i1 %64, label %65, label %87, !dbg !1894

65:                                               ; preds = %63
  %66 = icmp ult i64 %.01, %1, !dbg !1895
  br i1 %66, label %67, label %68, !dbg !1898

67:                                               ; preds = %65
  br label %77, !dbg !1899

68:                                               ; preds = %65
  %69 = add i64 %.02, -1, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %69, metadata !1847, metadata !DIExpression()), !dbg !1852
  %70 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1901
  %71 = getelementptr inbounds %struct.mbchar, ptr %70, i32 0, i32 0, !dbg !1901
  %72 = load ptr, ptr %71, align 8, !dbg !1901, !tbaa !1543
  %73 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1902
  %74 = getelementptr inbounds %struct.mbchar, ptr %73, i32 0, i32 1, !dbg !1902
  %75 = load i64, ptr %74, align 8, !dbg !1902, !tbaa !1567
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04, ptr align 1 %72, i64 %75, i1 false), !dbg !1903
  %76 = getelementptr inbounds i8, ptr %.04, i64 %75, !dbg !1903
  call void @llvm.dbg.value(metadata ptr %76, metadata !1844, metadata !DIExpression()), !dbg !1852
  br label %77, !dbg !1904

77:                                               ; preds = %68, %67
  %.15 = phi ptr [ %.04, %67 ], [ %76, %68 ], !dbg !1884
  %.1 = phi i64 [ %.02, %67 ], [ %69, %68 ], !dbg !1852
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1847, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %.15, metadata !1844, metadata !DIExpression()), !dbg !1852
  %78 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1905
  %79 = getelementptr inbounds %struct.mbchar, ptr %78, i32 0, i32 1, !dbg !1905
  %80 = load i64, ptr %79, align 8, !dbg !1905, !tbaa !1567
  %81 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 3, !dbg !1905
  %82 = getelementptr inbounds %struct.mbchar, ptr %81, i32 0, i32 0, !dbg !1905
  %83 = load ptr, ptr %82, align 8, !dbg !1905, !tbaa !1543
  %84 = getelementptr inbounds i8, ptr %83, i64 %80, !dbg !1905
  store ptr %84, ptr %82, align 8, !dbg !1905, !tbaa !1543
  %85 = getelementptr inbounds %struct.mbuiter_multi, ptr %4, i32 0, i32 2, !dbg !1905
  store i8 0, ptr %85, align 8, !dbg !1905, !tbaa !1548
  %86 = add i64 %.01, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %86, metadata !1851, metadata !DIExpression()), !dbg !1884
  br label %48, !dbg !1907, !llvm.loop !1908

87:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 192, ptr %4) #16, !dbg !1910
  br label %88

88:                                               ; preds = %87, %34
  %.2 = phi ptr [ %39, %34 ], [ %.04, %87 ], !dbg !1911
  %.03 = phi ptr [ %36, %34 ], [ %42, %87 ], !dbg !1911
  call void @llvm.dbg.value(metadata ptr %.03, metadata !1843, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %.2, metadata !1844, metadata !DIExpression()), !dbg !1852
  store i8 0, ptr %.2, align 1, !dbg !1912, !tbaa !699
  br label %89

89:                                               ; preds = %88, %20
  %.0 = phi ptr [ %21, %20 ], [ %.03, %88 ], !dbg !1852
  ret ptr %.0, !dbg !1913
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @eval7(i1 noundef zeroext %0) #7 !dbg !1914 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1916, metadata !DIExpression()), !dbg !1918
  call void @require_more_args(), !dbg !1919
  %3 = call zeroext i1 @nextarg(ptr noundef @.str.68), !dbg !1920
  br i1 %3, label %4, label %20, !dbg !1922

4:                                                ; preds = %1
  %5 = trunc i8 %2 to i1, !dbg !1923
  %6 = call ptr @eval(i1 noundef zeroext %5), !dbg !1925
  call void @llvm.dbg.value(metadata ptr %6, metadata !1917, metadata !DIExpression()), !dbg !1918
  %7 = call zeroext i1 @nomoreargs(), !dbg !1926
  br i1 %7, label %8, label %13, !dbg !1928

8:                                                ; preds = %4
  %9 = load ptr, ptr @args, align 8, !dbg !1929, !tbaa !395
  %10 = getelementptr inbounds ptr, ptr %9, i64 -1, !dbg !1929
  %11 = load ptr, ptr %10, align 8, !dbg !1929, !tbaa !395
  %12 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %11), !dbg !1929
  call void (i32, i32, ptr, ...) @error(i32 noundef 2, i32 noundef 0, ptr noundef @.str.69, ptr noundef %12), !dbg !1929
  unreachable, !dbg !1929

13:                                               ; preds = %4
  %14 = call zeroext i1 @nextarg(ptr noundef @.str.70), !dbg !1930
  br i1 %14, label %19, label %15, !dbg !1932

15:                                               ; preds = %13
  %16 = load ptr, ptr @args, align 8, !dbg !1933, !tbaa !395
  %17 = load ptr, ptr %16, align 8, !dbg !1933, !tbaa !395
  %18 = call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %17), !dbg !1933
  call void (i32, i32, ptr, ...) @error(i32 noundef 2, i32 noundef 0, ptr noundef @.str.71, ptr noundef %18), !dbg !1933
  unreachable, !dbg !1933

19:                                               ; preds = %13
  br label %28, !dbg !1934

20:                                               ; preds = %1
  %21 = call zeroext i1 @nextarg(ptr noundef @.str.70), !dbg !1935
  br i1 %21, label %22, label %23, !dbg !1937

22:                                               ; preds = %20
  call void (i32, i32, ptr, ...) @error(i32 noundef 2, i32 noundef 0, ptr noundef @.str.72), !dbg !1938
  unreachable, !dbg !1938

23:                                               ; preds = %20
  %24 = load ptr, ptr @args, align 8, !dbg !1939, !tbaa !395
  %25 = getelementptr inbounds ptr, ptr %24, i32 1, !dbg !1939
  store ptr %25, ptr @args, align 8, !dbg !1939, !tbaa !395
  %26 = load ptr, ptr %24, align 8, !dbg !1940, !tbaa !395
  %27 = call ptr @str_value(ptr noundef %26), !dbg !1941
  br label %28, !dbg !1942

28:                                               ; preds = %23, %19
  %.0 = phi ptr [ %6, %19 ], [ %27, %23 ], !dbg !1918
  ret ptr %.0, !dbg !1943
}

declare !dbg !1944 i32 @mpz_fits_ulong_p(ptr noundef) #2

declare !dbg !1945 i64 @mpz_get_ui(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1948 ptr @mbschr(ptr noundef, i32 noundef) #11

declare !dbg !1951 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1956 i64 @strcspn(ptr noundef, ptr noundef) #2

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
attributes #9 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { cold noreturn }
attributes #19 = { allocsize(0) }

!llvm.dbg.cu = !{!103}
!llvm.ident = !{!376}
!llvm.module.flags = !{!377, !378, !379, !380, !381, !382}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/expr.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 48)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 57)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 255, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2192, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 274)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2320, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 290)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 273, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 904, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 113)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 280, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1496, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 187)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2480, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 310)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1608, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 201)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2336, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 292)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1248, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 156)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 5)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 333, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 14)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 333, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 4)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 12)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 15)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !81, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 339, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 3)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 347, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 16)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "args", scope: !103, file: !2, line: 91, type: !375, isLocal: true, isDefinition: true)
!103 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !104, retainedTypes: !196, globals: !205, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!104 = !{!105, !110, !114, !128, !175, !185}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "valtype", file: !2, line: 71, baseType: !106, size: 32, elements: !107)
!106 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "integer", value: 0)
!109 = !DIEnumerator(name: "string", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 58, baseType: !106, size: 32, elements: !111)
!111 = !{!112, !113}
!112 = !DIEnumerator(name: "EXPR_INVALID", value: 2)
!113 = !DIEnumerator(name: "EXPR_FAILURE", value: 3)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !115, line: 32, baseType: !106, size: 32, elements: !116)
!115 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!117 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!118 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!119 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!120 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!121 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!122 = !DIEnumerator(name: "c_quoting_style", value: 5)
!123 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!124 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!125 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!126 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!127 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !129, file: !2, line: 889, baseType: !106, size: 32, elements: !168)
!129 = distinct !DISubprogram(name: "eval2", scope: !2, file: !2, line: 878, type: !130, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !158)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !157}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "VALUE", file: !2, line: 88, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "valinfo", file: !2, line: 79, size: 192, elements: !135)
!135 = !{!136, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !2, line: 81, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "TYPE", file: !2, line: 76, baseType: !105)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !134, file: !2, line: 86, baseType: !139, size: 128, offset: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !2, line: 82, size: 128, elements: !140)
!140 = !{!141, !155}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !139, file: !2, line: 84, baseType: !142, size: 128)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_t", file: !143, line: 77, baseType: !144)
!143 = !DIFile(filename: "../lib/mini-gmp.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !67)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mpz_struct", file: !143, line: 75, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 67, size: 128, elements: !147)
!147 = !{!148, !150, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_alloc", scope: !146, file: !143, line: 69, baseType: !149, size: 32)
!149 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_size", scope: !146, file: !143, line: 71, baseType: !149, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_d", scope: !146, file: !143, line: 74, baseType: !152, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_limb_t", file: !143, line: 60, baseType: !154)
!154 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !139, file: !2, line: 85, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!157 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!158 = !{!159, !160, !161, !163, !164, !165}
!159 = !DILocalVariable(name: "evaluate", arg: 1, scope: !129, file: !2, line: 878, type: !157)
!160 = !DILocalVariable(name: "l", scope: !129, file: !2, line: 880, type: !132)
!161 = !DILocalVariable(name: "r", scope: !162, file: !2, line: 888, type: !132)
!162 = distinct !DILexicalBlock(scope: !129, file: !2, line: 887, column: 5)
!163 = !DILocalVariable(name: "fxn", scope: !162, file: !2, line: 892, type: !128)
!164 = !DILocalVariable(name: "val", scope: !162, file: !2, line: 893, type: !157)
!165 = !DILocalVariable(name: "cmp", scope: !166, file: !2, line: 913, type: !149)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 912, column: 9)
!167 = distinct !DILexicalBlock(scope: !162, file: !2, line: 911, column: 11)
!168 = !{!169, !170, !171, !172, !173, !174}
!169 = !DIEnumerator(name: "less_than", value: 0)
!170 = !DIEnumerator(name: "less_equal", value: 1)
!171 = !DIEnumerator(name: "equal", value: 2)
!172 = !DIEnumerator(name: "not_equal", value: 3)
!173 = !DIEnumerator(name: "greater_equal", value: 4)
!174 = !DIEnumerator(name: "greater_than", value: 5)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !176, file: !2, line: 850, baseType: !106, size: 32, elements: !182)
!176 = distinct !DISubprogram(name: "eval3", scope: !2, file: !2, line: 846, type: !130, scopeLine: 847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !177)
!177 = !{!178, !179, !180, !181}
!178 = !DILocalVariable(name: "evaluate", arg: 1, scope: !176, file: !2, line: 846, type: !157)
!179 = !DILocalVariable(name: "l", scope: !176, file: !2, line: 848, type: !132)
!180 = !DILocalVariable(name: "r", scope: !176, file: !2, line: 849, type: !132)
!181 = !DILocalVariable(name: "fxn", scope: !176, file: !2, line: 850, type: !175)
!182 = !{!183, !184}
!183 = !DIEnumerator(name: "plus", value: 0)
!184 = !DIEnumerator(name: "minus", value: 1)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !186, file: !2, line: 811, baseType: !106, size: 32, elements: !192)
!186 = distinct !DISubprogram(name: "eval4", scope: !2, file: !2, line: 807, type: !130, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !187)
!187 = !{!188, !189, !190, !191}
!188 = !DILocalVariable(name: "evaluate", arg: 1, scope: !186, file: !2, line: 807, type: !157)
!189 = !DILocalVariable(name: "l", scope: !186, file: !2, line: 809, type: !132)
!190 = !DILocalVariable(name: "r", scope: !186, file: !2, line: 810, type: !132)
!191 = !DILocalVariable(name: "fxn", scope: !186, file: !2, line: 811, type: !185)
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "multiply", value: 0)
!194 = !DIEnumerator(name: "divide", value: 1)
!195 = !DIEnumerator(name: "mod", value: 2)
!196 = !{!197, !199, !200, !204, !154, !106}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !201, line: 31, baseType: !202)
!201 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !203, line: 94, baseType: !154)
!203 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!204 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!205 = !{!0, !7, !9, !14, !19, !24, !29, !34, !39, !44, !49, !54, !59, !64, !69, !74, !79, !84, !89, !91, !96, !206, !101, !211, !217, !219, !224, !229, !231, !233, !235, !237, !239, !244, !249, !251, !256, !258, !263, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !293, !298, !303, !305, !307, !312, !314, !316, !318, !323, !325, !330, !335, !337, !339, !341, !347, !349, !351, !353, !358, !360, !362, !364, !366, !371, !373}
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 355, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 37)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !213, line: 660, type: !214, isLocal: true, isDefinition: true)
!213 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 2)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !213, line: 660, type: !98, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !213, line: 661, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 10)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !213, line: 661, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 22)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !213, line: 662, type: !221, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !213, line: 662, type: !86, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !213, line: 663, type: !221, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !213, line: 664, type: !221, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !213, line: 665, type: !221, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !213, line: 678, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 23)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !213, line: 678, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 40)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !213, line: 683, type: !76, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !213, line: 689, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 71)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !213, line: 695, type: !61, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !213, line: 696, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 27)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !213, line: 698, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 51)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !213, line: 699, type: !81, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 998, type: !214, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !2, line: 967, type: !214, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 895, type: !214, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !2, line: 897, type: !93, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !2, line: 899, type: !214, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !2, line: 899, type: !93, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !2, line: 901, type: !93, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !2, line: 903, type: !93, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 905, type: !214, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 926, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 25)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !2, line: 927, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 42)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !2, line: 928, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 36)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !2, line: 858, type: !214, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !2, line: 860, type: !214, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !2, line: 868, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 21)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !2, line: 819, type: !214, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !214, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 823, type: !214, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !2, line: 833, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 17)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 788, type: !214, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 709, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 7)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 717, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 6)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 731, type: !332, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !2, line: 745, type: !327, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !246, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !343, line: 142, type: !344, isLocal: true, isDefinition: true)
!343 = !DIFile(filename: "../lib/mbuiter.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 152, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 19)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !343, line: 142, type: !221, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !343, line: 142, type: !241, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !343, line: 170, type: !241, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !343, line: 171, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 18)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 672, type: !214, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 676, type: !208, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 678, type: !214, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 679, type: !295, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 685, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 29)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !2, line: 610, type: !93, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !2, line: 646, type: !300, isLocal: true, isDefinition: true)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!376 = !{!"Homebrew clang version 16.0.4"}
!377 = !{i32 7, !"Dwarf Version", i32 4}
!378 = !{i32 2, !"Debug Info Version", i32 3}
!379 = !{i32 1, !"wchar_size", i32 4}
!380 = !{i32 8, !"PIC Level", i32 2}
!381 = !{i32 7, !"uwtable", i32 2}
!382 = !{i32 7, !"frame-pointer", i32 2}
!383 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 241, type: !384, scopeLine: 242, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !149}
!386 = !{!387}
!387 = !DILocalVariable(name: "status", arg: 1, scope: !383, file: !2, line: 241, type: !149)
!388 = !DILocation(line: 0, scope: !383)
!389 = !DILocation(line: 243, column: 14, scope: !390)
!390 = distinct !DILexicalBlock(scope: !383, file: !2, line: 243, column: 7)
!391 = !DILocation(line: 243, column: 7, scope: !383)
!392 = !DILocation(line: 244, column: 5, scope: !390)
!393 = !DILocation(line: 244, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !2, line: 244, column: 5)
!395 = !{!396, !396, i64 0}
!396 = !{!"any pointer", !397, i64 0}
!397 = !{!"omnipotent char", !398, i64 0}
!398 = !{!"Simple C/C++ TBAA"}
!399 = !DILocation(line: 251, column: 15, scope: !400)
!400 = distinct !DILexicalBlock(scope: !390, file: !2, line: 246, column: 5)
!401 = !DILocation(line: 251, column: 29, scope: !400)
!402 = !DILocation(line: 247, column: 7, scope: !400)
!403 = !DILocation(line: 252, column: 7, scope: !400)
!404 = !DILocation(line: 253, column: 39, scope: !400)
!405 = !DILocation(line: 253, column: 7, scope: !400)
!406 = !DILocation(line: 254, column: 42, scope: !400)
!407 = !DILocation(line: 254, column: 7, scope: !400)
!408 = !DILocation(line: 263, column: 5, scope: !400)
!409 = !DILocation(line: 255, column: 7, scope: !400)
!410 = !DILocation(line: 272, column: 5, scope: !400)
!411 = !DILocation(line: 264, column: 7, scope: !400)
!412 = !DILocation(line: 277, column: 5, scope: !400)
!413 = !DILocation(line: 273, column: 7, scope: !400)
!414 = !DILocation(line: 285, column: 5, scope: !400)
!415 = !DILocation(line: 280, column: 7, scope: !400)
!416 = !DILocation(line: 294, column: 5, scope: !400)
!417 = !DILocation(line: 286, column: 7, scope: !400)
!418 = !DILocation(line: 300, column: 5, scope: !400)
!419 = !DILocation(line: 295, column: 7, scope: !400)
!420 = !DILocation(line: 307, column: 5, scope: !400)
!421 = !DILocation(line: 301, column: 7, scope: !400)
!422 = !DILocation(line: 312, column: 5, scope: !400)
!423 = !DILocation(line: 308, column: 7, scope: !400)
!424 = !DILocation(line: 313, column: 7, scope: !400)
!425 = !DILocation(line: 315, column: 3, scope: !383)
!426 = !DISubprogram(name: "fprintf", scope: !427, file: !427, line: 155, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!427 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!428 = !DISubroutineType(types: !429)
!429 = !{!149, !430, !483, null}
!430 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !433, line: 157, baseType: !434)
!433 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !433, line: 126, size: 1216, elements: !435)
!435 = !{!436, !438, !439, !440, !442, !443, !448, !449, !450, !454, !458, !467, !471, !472, !475, !476, !478, !480, !481, !482}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !434, file: !433, line: 127, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !434, file: !433, line: 128, baseType: !149, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !434, file: !433, line: 129, baseType: !149, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !434, file: !433, line: 130, baseType: !441, size: 16, offset: 128)
!441 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !434, file: !433, line: 131, baseType: !441, size: 16, offset: 144)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !434, file: !433, line: 132, baseType: !444, size: 128, offset: 192)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !433, line: 92, size: 128, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !444, file: !433, line: 93, baseType: !437, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !444, file: !433, line: 94, baseType: !149, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !434, file: !433, line: 133, baseType: !149, size: 32, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !434, file: !433, line: 136, baseType: !199, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !434, file: !433, line: 137, baseType: !451, size: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!149, !199}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !434, file: !433, line: 138, baseType: !455, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!149, !199, !156, !149}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !434, file: !433, line: 139, baseType: !459, size: 64, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!462, !199, !462, !149}
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !433, line: 81, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !464, line: 71, baseType: !465)
!464 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !203, line: 48, baseType: !466)
!466 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !434, file: !433, line: 140, baseType: !468, size: 64, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!149, !199, !197, !149}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !434, file: !433, line: 143, baseType: !444, size: 128, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !434, file: !433, line: 144, baseType: !473, size: 64, offset: 832)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !433, line: 98, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !434, file: !433, line: 145, baseType: !149, size: 32, offset: 896)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !434, file: !433, line: 148, baseType: !477, size: 24, offset: 928)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 24, elements: !94)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !434, file: !433, line: 149, baseType: !479, size: 8, offset: 952)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 8, elements: !67)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !434, file: !433, line: 152, baseType: !444, size: 128, offset: 960)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !434, file: !433, line: 155, baseType: !149, size: 32, offset: 1088)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !434, file: !433, line: 156, baseType: !462, size: 64, offset: 1152)
!483 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !197)
!484 = !{}
!485 = !DISubprogram(name: "printf", scope: !427, file: !427, line: 175, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!486 = !DISubroutineType(types: !487)
!487 = !{!149, !483, null}
!488 = !DISubprogram(name: "putc_unlocked", scope: !427, file: !427, line: 301, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!489 = !DISubroutineType(types: !490)
!490 = !{!149, !149, !431}
!491 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !427, file: !427, line: 157, type: !492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!492 = !DISubroutineType(types: !493)
!493 = !{!149, !483, !430}
!494 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !213, file: !213, line: 657, type: !495, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !197}
!497 = !{!498, !499, !506, !507, !509, !510}
!498 = !DILocalVariable(name: "program", arg: 1, scope: !494, file: !213, line: 657, type: !197)
!499 = !DILocalVariable(name: "infomap", scope: !494, file: !213, line: 659, type: !500)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 896, elements: !328)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !494, file: !213, line: 659, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !502, file: !213, line: 659, baseType: !197, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !213, line: 659, baseType: !197, size: 64, offset: 64)
!506 = !DILocalVariable(name: "node", scope: !494, file: !213, line: 669, type: !197)
!507 = !DILocalVariable(name: "map_prog", scope: !494, file: !213, line: 670, type: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!509 = !DILocalVariable(name: "lc_messages", scope: !494, file: !213, line: 682, type: !197)
!510 = !DILocalVariable(name: "url_program", scope: !494, file: !213, line: 695, type: !197)
!511 = !DILocation(line: 0, scope: !494)
!512 = !DILocation(line: 659, column: 3, scope: !494)
!513 = !DILocation(line: 659, column: 67, scope: !494)
!514 = !DILocation(line: 670, column: 36, scope: !494)
!515 = !DILocation(line: 672, column: 3, scope: !494)
!516 = !DILocation(line: 672, column: 20, scope: !494)
!517 = !{!518, !396, i64 0}
!518 = !{!"infomap", !396, i64 0, !396, i64 8}
!519 = !DILocation(line: 672, column: 10, scope: !494)
!520 = !DILocation(line: 672, column: 28, scope: !494)
!521 = !DILocation(line: 672, column: 33, scope: !494)
!522 = !DILocation(line: 672, column: 31, scope: !494)
!523 = !DILocation(line: 673, column: 13, scope: !494)
!524 = distinct !{!524, !515, !523, !525, !526}
!525 = !{!"llvm.loop.mustprogress"}
!526 = !{!"llvm.loop.unroll.disable"}
!527 = !DILocation(line: 675, column: 17, scope: !528)
!528 = distinct !DILexicalBlock(scope: !494, file: !213, line: 675, column: 7)
!529 = !{!518, !396, i64 8}
!530 = !DILocation(line: 675, column: 7, scope: !528)
!531 = !DILocation(line: 675, column: 7, scope: !494)
!532 = !DILocation(line: 676, column: 22, scope: !528)
!533 = !DILocation(line: 676, column: 5, scope: !528)
!534 = !DILocation(line: 678, column: 3, scope: !494)
!535 = !DILocation(line: 682, column: 29, scope: !494)
!536 = !DILocation(line: 683, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !494, file: !213, line: 683, column: 7)
!538 = !DILocation(line: 683, column: 19, scope: !537)
!539 = !DILocation(line: 683, column: 22, scope: !537)
!540 = !DILocation(line: 683, column: 7, scope: !494)
!541 = !DILocation(line: 690, column: 61, scope: !542)
!542 = distinct !DILexicalBlock(scope: !537, file: !213, line: 684, column: 5)
!543 = !DILocation(line: 689, column: 7, scope: !542)
!544 = !DILocation(line: 691, column: 5, scope: !542)
!545 = !DILocation(line: 695, column: 29, scope: !494)
!546 = !DILocation(line: 696, column: 3, scope: !494)
!547 = !DILocation(line: 699, column: 22, scope: !494)
!548 = !DILocation(line: 699, column: 17, scope: !494)
!549 = !DILocation(line: 698, column: 3, scope: !494)
!550 = !DILocation(line: 700, column: 1, scope: !494)
!551 = !DISubprogram(name: "exit", scope: !552, file: !552, line: 145, type: !384, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !484)
!552 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!553 = !DISubprogram(name: "strcmp", scope: !554, file: !554, line: 77, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!554 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!555 = !DISubroutineType(types: !556)
!556 = !{!149, !197, !197}
!557 = !DISubprogram(name: "setlocale", scope: !558, file: !558, line: 53, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!558 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!559 = !DISubroutineType(types: !560)
!560 = !{!156, !149, !197}
!561 = !DISubprogram(name: "strncmp", scope: !554, file: !554, line: 84, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!562 = !DISubroutineType(types: !563)
!563 = !{!149, !197, !197, !200}
!564 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 320, type: !565, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!149, !149, !375}
!567 = !{!568, !569, !570, !571}
!568 = !DILocalVariable(name: "argc", arg: 1, scope: !564, file: !2, line: 320, type: !149)
!569 = !DILocalVariable(name: "argv", arg: 2, scope: !564, file: !2, line: 320, type: !375)
!570 = !DILocalVariable(name: "v", scope: !564, file: !2, line: 322, type: !132)
!571 = !DILocalVariable(name: "u_argc", scope: !564, file: !2, line: 338, type: !106)
!572 = !DILocation(line: 0, scope: !564)
!573 = !DILocation(line: 325, column: 21, scope: !564)
!574 = !DILocation(line: 325, column: 3, scope: !564)
!575 = !DILocation(line: 326, column: 3, scope: !564)
!576 = !DILocation(line: 330, column: 3, scope: !564)
!577 = !DILocation(line: 331, column: 3, scope: !564)
!578 = !DILocation(line: 333, column: 3, scope: !564)
!579 = !DILocation(line: 339, column: 9, scope: !580)
!580 = distinct !DILexicalBlock(scope: !564, file: !2, line: 339, column: 7)
!581 = !DILocation(line: 339, column: 18, scope: !580)
!582 = !DILocation(line: 339, column: 21, scope: !580)
!583 = !DILocation(line: 339, column: 7, scope: !564)
!584 = !DILocation(line: 341, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !580, file: !2, line: 340, column: 5)
!586 = !DILocation(line: 342, column: 7, scope: !585)
!587 = !DILocation(line: 343, column: 5, scope: !585)
!588 = !DILocation(line: 345, column: 14, scope: !589)
!589 = distinct !DILexicalBlock(scope: !564, file: !2, line: 345, column: 7)
!590 = !DILocation(line: 345, column: 7, scope: !564)
!591 = !DILocation(line: 347, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !2, line: 346, column: 5)
!593 = !DILocation(line: 348, column: 7, scope: !592)
!594 = !DILocation(line: 351, column: 15, scope: !564)
!595 = !DILocation(line: 351, column: 8, scope: !564)
!596 = !DILocation(line: 353, column: 7, scope: !564)
!597 = !DILocation(line: 354, column: 8, scope: !598)
!598 = distinct !DILexicalBlock(scope: !564, file: !2, line: 354, column: 7)
!599 = !DILocation(line: 354, column: 7, scope: !564)
!600 = !DILocation(line: 355, column: 5, scope: !598)
!601 = !DILocation(line: 358, column: 3, scope: !564)
!602 = !DILocation(line: 360, column: 3, scope: !564)
!603 = !DISubprogram(name: "set_program_name", scope: !604, file: !604, line: 37, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!604 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!605 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !213, file: !213, line: 96, type: !384, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !606)
!606 = !{!607}
!607 = !DILocalVariable(name: "status", arg: 1, scope: !605, file: !213, line: 96, type: !149)
!608 = !DILocation(line: 0, scope: !605)
!609 = !DILocation(line: 98, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !213, line: 98, column: 7)
!611 = !DILocation(line: 98, column: 7, scope: !605)
!612 = !DILocation(line: 99, column: 18, scope: !610)
!613 = !{!614, !614, i64 0}
!614 = !{!"int", !397, i64 0}
!615 = !DILocation(line: 99, column: 5, scope: !610)
!616 = !DILocation(line: 100, column: 1, scope: !605)
!617 = !DISubprogram(name: "atexit", scope: !552, file: !552, line: 133, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!618 = !DISubroutineType(types: !619)
!619 = !{!149, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{null}
!623 = !DISubprogram(name: "parse_long_options", scope: !624, file: !624, line: 23, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!624 = !DIFile(filename: "../lib/long-options.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!625 = !DISubroutineType(types: !626)
!626 = !{null, !149, !375, !197, !197, !197, !627, null}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!628 = !DISubprogram(name: "error", scope: !629, file: !629, line: 395, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!629 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!630 = !DISubroutineType(types: !631)
!631 = !{null, !149, !149, !197, null}
!632 = distinct !DISubprogram(name: "eval", scope: !2, file: !2, line: 987, type: !130, scopeLine: 988, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !633)
!633 = !{!634, !635, !636}
!634 = !DILocalVariable(name: "evaluate", arg: 1, scope: !632, file: !2, line: 987, type: !157)
!635 = !DILocalVariable(name: "l", scope: !632, file: !2, line: 989, type: !132)
!636 = !DILocalVariable(name: "r", scope: !632, file: !2, line: 990, type: !132)
!637 = !DILocation(line: 0, scope: !632)
!638 = !DILocation(line: 995, column: 14, scope: !632)
!639 = !DILocation(line: 995, column: 7, scope: !632)
!640 = !DILocation(line: 996, column: 3, scope: !632)
!641 = !DILocation(line: 998, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !2, line: 998, column: 11)
!643 = distinct !DILexicalBlock(scope: !632, file: !2, line: 997, column: 5)
!644 = !DILocation(line: 998, column: 11, scope: !643)
!645 = !DILocation(line: 1000, column: 22, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !2, line: 999, column: 9)
!647 = !DILocation(line: 1000, column: 31, scope: !646)
!648 = !DILocation(line: 1000, column: 34, scope: !646)
!649 = !DILocation(line: 0, scope: !646)
!650 = !DILocation(line: 1000, column: 15, scope: !646)
!651 = !DILocation(line: 1001, column: 15, scope: !652)
!652 = distinct !DILexicalBlock(scope: !646, file: !2, line: 1001, column: 15)
!653 = !DILocation(line: 1001, column: 15, scope: !646)
!654 = !DILocation(line: 1003, column: 15, scope: !655)
!655 = distinct !DILexicalBlock(scope: !652, file: !2, line: 1002, column: 13)
!656 = !DILocation(line: 1005, column: 19, scope: !657)
!657 = distinct !DILexicalBlock(scope: !655, file: !2, line: 1005, column: 19)
!658 = !DILocation(line: 1005, column: 19, scope: !655)
!659 = !DILocation(line: 1007, column: 19, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !2, line: 1006, column: 17)
!661 = !DILocation(line: 1008, column: 23, scope: !660)
!662 = !DILocation(line: 1009, column: 17, scope: !660)
!663 = !DILocation(line: 0, scope: !655)
!664 = !DILocation(line: 1010, column: 13, scope: !655)
!665 = !DILocation(line: 1012, column: 13, scope: !652)
!666 = !DILocation(line: 1013, column: 9, scope: !646)
!667 = !DILocation(line: 1015, column: 9, scope: !642)
!668 = distinct !{!668, !640, !669, !526}
!669 = !DILocation(line: 1016, column: 5, scope: !632)
!670 = distinct !DISubprogram(name: "nomoreargs", scope: !2, file: !2, line: 548, type: !671, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !484)
!671 = !DISubroutineType(types: !672)
!672 = !{!157}
!673 = !DILocation(line: 550, column: 11, scope: !670)
!674 = !DILocation(line: 550, column: 10, scope: !670)
!675 = !DILocation(line: 550, column: 16, scope: !670)
!676 = !DILocation(line: 550, column: 3, scope: !670)
!677 = !DISubprogram(name: "quotearg_n_style", scope: !115, file: !115, line: 374, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!678 = !DISubroutineType(types: !679)
!679 = !{!156, !149, !114, !197}
!680 = distinct !DISubprogram(name: "printv", scope: !2, file: !2, line: 400, type: !681, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !132}
!683 = !{!684}
!684 = !DILocalVariable(name: "v", arg: 1, scope: !680, file: !2, line: 400, type: !132)
!685 = !DILocation(line: 0, scope: !680)
!686 = !DILocation(line: 402, column: 14, scope: !680)
!687 = !{!688, !397, i64 0}
!688 = !{!"valinfo", !397, i64 0, !397, i64 8}
!689 = !DILocation(line: 402, column: 3, scope: !680)
!690 = !DILocation(line: 405, column: 20, scope: !691)
!691 = distinct !DILexicalBlock(scope: !680, file: !2, line: 403, column: 5)
!692 = !DILocation(line: 405, column: 35, scope: !691)
!693 = !DILocation(line: 405, column: 32, scope: !691)
!694 = !DILocation(line: 405, column: 7, scope: !691)
!695 = !DILocation(line: 406, column: 7, scope: !691)
!696 = !DILocation(line: 407, column: 7, scope: !691)
!697 = !DILocation(line: 409, column: 16, scope: !691)
!698 = !DILocation(line: 409, column: 18, scope: !691)
!699 = !{!397, !397, i64 0}
!700 = !DILocation(line: 409, column: 7, scope: !691)
!701 = !DILocation(line: 410, column: 7, scope: !691)
!702 = !DILocation(line: 412, column: 7, scope: !691)
!703 = !DILocation(line: 414, column: 1, scope: !680)
!704 = distinct !DISubprogram(name: "null", scope: !2, file: !2, line: 420, type: !705, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{!157, !132}
!707 = !{!708, !709}
!708 = !DILocalVariable(name: "v", arg: 1, scope: !704, file: !2, line: 420, type: !132)
!709 = !DILocalVariable(name: "cp", scope: !710, file: !2, line: 428, type: !197)
!710 = distinct !DILexicalBlock(scope: !711, file: !2, line: 427, column: 7)
!711 = distinct !DILexicalBlock(scope: !704, file: !2, line: 423, column: 5)
!712 = !DILocation(line: 0, scope: !704)
!713 = !DILocation(line: 422, column: 14, scope: !704)
!714 = !DILocation(line: 422, column: 3, scope: !704)
!715 = !DILocation(line: 425, column: 26, scope: !711)
!716 = !DILocation(line: 425, column: 23, scope: !711)
!717 = !DILocation(line: 425, column: 14, scope: !711)
!718 = !DILocation(line: 425, column: 31, scope: !711)
!719 = !DILocation(line: 425, column: 7, scope: !711)
!720 = !DILocation(line: 428, column: 29, scope: !710)
!721 = !DILocation(line: 428, column: 31, scope: !710)
!722 = !DILocation(line: 0, scope: !710)
!723 = !DILocation(line: 429, column: 13, scope: !724)
!724 = distinct !DILexicalBlock(scope: !710, file: !2, line: 429, column: 13)
!725 = !DILocation(line: 429, column: 17, scope: !724)
!726 = !DILocation(line: 429, column: 13, scope: !710)
!727 = !DILocation(line: 430, column: 11, scope: !724)
!728 = !DILocation(line: 432, column: 16, scope: !710)
!729 = !DILocation(line: 432, column: 20, scope: !710)
!730 = !DILocation(line: 432, column: 12, scope: !710)
!731 = !DILocation(line: 434, column: 9, scope: !710)
!732 = !DILocation(line: 436, column: 17, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 436, column: 17)
!734 = distinct !DILexicalBlock(scope: !710, file: !2, line: 435, column: 11)
!735 = !DILocation(line: 436, column: 21, scope: !733)
!736 = !DILocation(line: 436, column: 17, scope: !734)
!737 = !DILocation(line: 437, column: 15, scope: !733)
!738 = !DILocation(line: 438, column: 11, scope: !734)
!739 = !DILocation(line: 439, column: 17, scope: !710)
!740 = !DILocation(line: 439, column: 16, scope: !710)
!741 = distinct !{!741, !731, !742, !525, !526}
!742 = !DILocation(line: 439, column: 21, scope: !710)
!743 = !DILocation(line: 441, column: 9, scope: !710)
!744 = !DILocation(line: 444, column: 7, scope: !711)
!745 = !DILocation(line: 0, scope: !711)
!746 = !DILocation(line: 446, column: 1, scope: !704)
!747 = !DISubprogram(name: "mpz_sgn", scope: !143, file: !143, line: 133, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!748 = !DISubroutineType(types: !749)
!749 = !{!149, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!752 = !DISubprogram(name: "abort", scope: !552, file: !552, line: 131, type: !621, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !484)
!753 = !DISubprogram(name: "mpz_out_str", scope: !143, file: !143, line: 301, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!754 = !DISubroutineType(types: !755)
!755 = !{!200, !431, !149, !750}
!756 = !DISubprogram(name: "puts", scope: !427, file: !427, line: 178, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!757 = !DISubroutineType(types: !758)
!758 = !{!149, !197}
!759 = distinct !DISubprogram(name: "eval1", scope: !2, file: !2, line: 956, type: !130, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !760)
!760 = !{!761, !762, !763}
!761 = !DILocalVariable(name: "evaluate", arg: 1, scope: !759, file: !2, line: 956, type: !157)
!762 = !DILocalVariable(name: "l", scope: !759, file: !2, line: 958, type: !132)
!763 = !DILocalVariable(name: "r", scope: !759, file: !2, line: 959, type: !132)
!764 = !DILocation(line: 0, scope: !759)
!765 = !DILocation(line: 964, column: 14, scope: !759)
!766 = !DILocation(line: 964, column: 7, scope: !759)
!767 = !DILocation(line: 965, column: 3, scope: !759)
!768 = !DILocation(line: 967, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !2, line: 967, column: 11)
!770 = distinct !DILexicalBlock(scope: !759, file: !2, line: 966, column: 5)
!771 = !DILocation(line: 967, column: 11, scope: !770)
!772 = !DILocation(line: 969, column: 22, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !2, line: 968, column: 9)
!774 = !DILocation(line: 969, column: 31, scope: !773)
!775 = !DILocation(line: 969, column: 35, scope: !773)
!776 = !DILocation(line: 969, column: 34, scope: !773)
!777 = !DILocation(line: 0, scope: !773)
!778 = !DILocation(line: 969, column: 15, scope: !773)
!779 = !DILocation(line: 970, column: 15, scope: !780)
!780 = distinct !DILexicalBlock(scope: !773, file: !2, line: 970, column: 15)
!781 = !DILocation(line: 970, column: 24, scope: !780)
!782 = !DILocation(line: 970, column: 27, scope: !780)
!783 = !DILocation(line: 970, column: 15, scope: !773)
!784 = !DILocation(line: 972, column: 15, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !2, line: 971, column: 13)
!786 = !DILocation(line: 973, column: 15, scope: !785)
!787 = !DILocation(line: 974, column: 19, scope: !785)
!788 = !DILocation(line: 975, column: 13, scope: !785)
!789 = !DILocation(line: 977, column: 13, scope: !780)
!790 = !DILocation(line: 978, column: 9, scope: !773)
!791 = !DILocation(line: 980, column: 9, scope: !769)
!792 = distinct !{!792, !767, !793, !526}
!793 = !DILocation(line: 981, column: 5, scope: !759)
!794 = distinct !DISubprogram(name: "nextarg", scope: !2, file: !2, line: 533, type: !795, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!157, !197}
!797 = !{!798, !799}
!798 = !DILocalVariable(name: "str", arg: 1, scope: !794, file: !2, line: 533, type: !197)
!799 = !DILocalVariable(name: "r", scope: !800, file: !2, line: 539, type: !157)
!800 = distinct !DILexicalBlock(scope: !801, file: !2, line: 538, column: 5)
!801 = distinct !DILexicalBlock(scope: !794, file: !2, line: 535, column: 7)
!802 = !DILocation(line: 0, scope: !794)
!803 = !DILocation(line: 535, column: 8, scope: !801)
!804 = !DILocation(line: 535, column: 7, scope: !801)
!805 = !DILocation(line: 535, column: 13, scope: !801)
!806 = !DILocation(line: 535, column: 7, scope: !794)
!807 = !DILocation(line: 536, column: 5, scope: !801)
!808 = !DILocation(line: 539, column: 16, scope: !800)
!809 = !DILocation(line: 539, column: 12, scope: !800)
!810 = !DILocation(line: 0, scope: !800)
!811 = !DILocation(line: 540, column: 15, scope: !800)
!812 = !DILocation(line: 540, column: 12, scope: !800)
!813 = !DILocation(line: 541, column: 14, scope: !800)
!814 = !DILocation(line: 0, scope: !801)
!815 = !DILocation(line: 543, column: 1, scope: !794)
!816 = distinct !DISubprogram(name: "freev", scope: !2, file: !2, line: 388, type: !681, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !817)
!817 = !{!818}
!818 = !DILocalVariable(name: "v", arg: 1, scope: !816, file: !2, line: 388, type: !132)
!819 = !DILocation(line: 0, scope: !816)
!820 = !DILocation(line: 390, column: 10, scope: !821)
!821 = distinct !DILexicalBlock(scope: !816, file: !2, line: 390, column: 7)
!822 = !DILocation(line: 390, column: 15, scope: !821)
!823 = !DILocation(line: 390, column: 7, scope: !816)
!824 = !DILocation(line: 391, column: 14, scope: !821)
!825 = !DILocation(line: 391, column: 16, scope: !821)
!826 = !DILocation(line: 391, column: 5, scope: !821)
!827 = !DILocation(line: 393, column: 19, scope: !821)
!828 = !DILocation(line: 393, column: 16, scope: !821)
!829 = !DILocation(line: 393, column: 5, scope: !821)
!830 = !DILocation(line: 394, column: 3, scope: !816)
!831 = !DILocation(line: 395, column: 1, scope: !816)
!832 = distinct !DISubprogram(name: "int_value", scope: !2, file: !2, line: 366, type: !833, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{!132, !154}
!835 = !{!836, !837}
!836 = !DILocalVariable(name: "i", arg: 1, scope: !832, file: !2, line: 366, type: !154)
!837 = !DILocalVariable(name: "v", scope: !832, file: !2, line: 368, type: !132)
!838 = !DILocation(line: 0, scope: !832)
!839 = !DILocation(line: 368, column: 14, scope: !832)
!840 = !DILocation(line: 369, column: 6, scope: !832)
!841 = !DILocation(line: 369, column: 11, scope: !832)
!842 = !DILocation(line: 370, column: 23, scope: !832)
!843 = !DILocation(line: 370, column: 20, scope: !832)
!844 = !DILocation(line: 370, column: 3, scope: !832)
!845 = !DILocation(line: 371, column: 3, scope: !832)
!846 = !DISubprogram(name: "xmalloc", scope: !847, file: !847, line: 55, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!847 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!848 = !DISubroutineType(types: !849)
!849 = !{!199, !200}
!850 = !DISubprogram(name: "mpz_init_set_ui", scope: !143, file: !143, line: 272, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !853, !154}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!854 = !DISubprogram(name: "rpl_free", scope: !855, file: !855, line: 716, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!855 = !DIFile(filename: "./lib/wchar.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!856 = !DISubroutineType(types: !857)
!857 = !{null, !199}
!858 = !DISubprogram(name: "mpz_clear", scope: !143, file: !143, line: 128, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !853}
!861 = !DILocation(line: 0, scope: !129)
!862 = !DILocation(line: 885, column: 14, scope: !129)
!863 = !DILocation(line: 885, column: 7, scope: !129)
!864 = !DILocation(line: 886, column: 3, scope: !129)
!865 = !DILocation(line: 0, scope: !162)
!866 = !DILocation(line: 895, column: 11, scope: !867)
!867 = distinct !DILexicalBlock(scope: !162, file: !2, line: 895, column: 11)
!868 = !DILocation(line: 895, column: 11, scope: !162)
!869 = !DILocation(line: 896, column: 9, scope: !867)
!870 = !DILocation(line: 897, column: 16, scope: !871)
!871 = distinct !DILexicalBlock(scope: !867, file: !2, line: 897, column: 16)
!872 = !DILocation(line: 897, column: 16, scope: !867)
!873 = !DILocation(line: 898, column: 9, scope: !871)
!874 = !DILocation(line: 899, column: 16, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !2, line: 899, column: 16)
!876 = !DILocation(line: 899, column: 30, scope: !875)
!877 = !DILocation(line: 899, column: 33, scope: !875)
!878 = !DILocation(line: 899, column: 16, scope: !871)
!879 = !DILocation(line: 900, column: 9, scope: !875)
!880 = !DILocation(line: 901, column: 16, scope: !881)
!881 = distinct !DILexicalBlock(scope: !875, file: !2, line: 901, column: 16)
!882 = !DILocation(line: 901, column: 16, scope: !875)
!883 = !DILocation(line: 902, column: 9, scope: !881)
!884 = !DILocation(line: 903, column: 16, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !2, line: 903, column: 16)
!886 = !DILocation(line: 903, column: 16, scope: !881)
!887 = !DILocation(line: 904, column: 9, scope: !885)
!888 = !DILocation(line: 905, column: 16, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !2, line: 905, column: 16)
!890 = !DILocation(line: 905, column: 16, scope: !885)
!891 = !DILocation(line: 906, column: 9, scope: !889)
!892 = !DILocation(line: 908, column: 9, scope: !889)
!893 = !DILocation(line: 0, scope: !885)
!894 = !DILocation(line: 0, scope: !881)
!895 = !DILocation(line: 0, scope: !875)
!896 = !DILocation(line: 0, scope: !871)
!897 = !DILocation(line: 0, scope: !867)
!898 = !DILocation(line: 909, column: 18, scope: !162)
!899 = !DILocation(line: 909, column: 11, scope: !162)
!900 = !DILocation(line: 911, column: 11, scope: !167)
!901 = !DILocation(line: 911, column: 11, scope: !162)
!902 = !DILocation(line: 914, column: 11, scope: !166)
!903 = !DILocation(line: 915, column: 11, scope: !166)
!904 = !DILocation(line: 917, column: 38, scope: !905)
!905 = distinct !DILexicalBlock(scope: !166, file: !2, line: 917, column: 15)
!906 = !DILocation(line: 917, column: 40, scope: !905)
!907 = !DILocation(line: 917, column: 15, scope: !905)
!908 = !DILocation(line: 917, column: 43, scope: !905)
!909 = !DILocation(line: 917, column: 69, scope: !905)
!910 = !DILocation(line: 917, column: 71, scope: !905)
!911 = !DILocation(line: 917, column: 46, scope: !905)
!912 = !DILocation(line: 917, column: 15, scope: !166)
!913 = !DILocation(line: 918, column: 33, scope: !905)
!914 = !DILocation(line: 918, column: 35, scope: !905)
!915 = !DILocation(line: 918, column: 41, scope: !905)
!916 = !DILocation(line: 918, column: 43, scope: !905)
!917 = !DILocation(line: 918, column: 19, scope: !905)
!918 = !DILocation(line: 0, scope: !166)
!919 = !DILocation(line: 918, column: 13, scope: !905)
!920 = !DILocation(line: 921, column: 15, scope: !921)
!921 = distinct !DILexicalBlock(scope: !905, file: !2, line: 920, column: 13)
!922 = !DILocation(line: 921, column: 21, scope: !921)
!923 = !DILocation(line: 922, column: 33, scope: !921)
!924 = !DILocation(line: 922, column: 35, scope: !921)
!925 = !DILocation(line: 922, column: 41, scope: !921)
!926 = !DILocation(line: 922, column: 43, scope: !921)
!927 = !DILocation(line: 922, column: 21, scope: !921)
!928 = !DILocation(line: 924, column: 19, scope: !929)
!929 = distinct !DILexicalBlock(scope: !921, file: !2, line: 924, column: 19)
!930 = !DILocation(line: 924, column: 19, scope: !921)
!931 = !DILocation(line: 926, column: 29, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !2, line: 925, column: 17)
!933 = !DILocation(line: 926, column: 19, scope: !932)
!934 = !DILocation(line: 927, column: 19, scope: !932)
!935 = !DILocation(line: 928, column: 19, scope: !932)
!936 = !DILocation(line: 0, scope: !905)
!937 = !DILocation(line: 935, column: 11, scope: !166)
!938 = !DILocation(line: 937, column: 44, scope: !939)
!939 = distinct !DILexicalBlock(scope: !166, file: !2, line: 936, column: 13)
!940 = !DILocation(line: 937, column: 37, scope: !939)
!941 = !DILocation(line: 937, column: 51, scope: !939)
!942 = !DILocation(line: 938, column: 44, scope: !939)
!943 = !DILocation(line: 938, column: 37, scope: !939)
!944 = !DILocation(line: 938, column: 51, scope: !939)
!945 = !DILocation(line: 939, column: 44, scope: !939)
!946 = !DILocation(line: 939, column: 37, scope: !939)
!947 = !DILocation(line: 939, column: 51, scope: !939)
!948 = !DILocation(line: 940, column: 44, scope: !939)
!949 = !DILocation(line: 940, column: 37, scope: !939)
!950 = !DILocation(line: 940, column: 51, scope: !939)
!951 = !DILocation(line: 941, column: 44, scope: !939)
!952 = !DILocation(line: 941, column: 37, scope: !939)
!953 = !DILocation(line: 941, column: 51, scope: !939)
!954 = !DILocation(line: 942, column: 44, scope: !939)
!955 = !DILocation(line: 942, column: 37, scope: !939)
!956 = !DILocation(line: 942, column: 51, scope: !939)
!957 = !DILocation(line: 943, column: 22, scope: !939)
!958 = !DILocation(line: 0, scope: !939)
!959 = !DILocation(line: 945, column: 9, scope: !166)
!960 = !DILocation(line: 947, column: 7, scope: !162)
!961 = !DILocation(line: 948, column: 7, scope: !162)
!962 = !DILocation(line: 949, column: 22, scope: !162)
!963 = !DILocation(line: 949, column: 11, scope: !162)
!964 = !DILocation(line: 950, column: 5, scope: !129)
!965 = distinct !{!965, !864, !964, !526}
!966 = !DILocation(line: 951, column: 1, scope: !129)
!967 = !DILocation(line: 0, scope: !176)
!968 = !DILocation(line: 855, column: 14, scope: !176)
!969 = !DILocation(line: 855, column: 7, scope: !176)
!970 = !DILocation(line: 856, column: 3, scope: !176)
!971 = !DILocation(line: 858, column: 11, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !2, line: 858, column: 11)
!973 = distinct !DILexicalBlock(scope: !176, file: !2, line: 857, column: 5)
!974 = !DILocation(line: 858, column: 11, scope: !973)
!975 = !DILocation(line: 859, column: 9, scope: !972)
!976 = !DILocation(line: 860, column: 16, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !2, line: 860, column: 16)
!978 = !DILocation(line: 860, column: 16, scope: !972)
!979 = !DILocation(line: 861, column: 9, scope: !977)
!980 = !DILocation(line: 863, column: 9, scope: !977)
!981 = !DILocation(line: 0, scope: !972)
!982 = !DILocation(line: 864, column: 18, scope: !973)
!983 = !DILocation(line: 864, column: 11, scope: !973)
!984 = !DILocation(line: 865, column: 11, scope: !985)
!985 = distinct !DILexicalBlock(scope: !973, file: !2, line: 865, column: 11)
!986 = !DILocation(line: 865, column: 11, scope: !973)
!987 = !DILocation(line: 867, column: 16, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !2, line: 867, column: 15)
!989 = distinct !DILexicalBlock(scope: !985, file: !2, line: 866, column: 9)
!990 = !DILocation(line: 867, column: 28, scope: !988)
!991 = !DILocation(line: 867, column: 32, scope: !988)
!992 = !DILocation(line: 867, column: 15, scope: !989)
!993 = !DILocation(line: 868, column: 13, scope: !988)
!994 = !DILocation(line: 869, column: 16, scope: !989)
!995 = !DILocation(line: 869, column: 12, scope: !989)
!996 = !DILocation(line: 869, column: 49, scope: !989)
!997 = !DILocation(line: 869, column: 46, scope: !989)
!998 = !DILocation(line: 869, column: 57, scope: !989)
!999 = !DILocation(line: 869, column: 54, scope: !989)
!1000 = !DILocation(line: 869, column: 65, scope: !989)
!1001 = !DILocation(line: 869, column: 62, scope: !989)
!1002 = !DILocation(line: 869, column: 11, scope: !989)
!1003 = !DILocation(line: 870, column: 9, scope: !989)
!1004 = !DILocation(line: 871, column: 7, scope: !973)
!1005 = distinct !{!1005, !970, !1006, !526}
!1006 = !DILocation(line: 872, column: 5, scope: !176)
!1007 = distinct !DISubprogram(name: "tostring", scope: !2, file: !2, line: 467, type: !681, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1008)
!1008 = !{!1009, !1010}
!1009 = !DILocalVariable(name: "v", arg: 1, scope: !1007, file: !2, line: 467, type: !132)
!1010 = !DILocalVariable(name: "s", scope: !1011, file: !2, line: 473, type: !156)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 472, column: 7)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 470, column: 5)
!1013 = !DILocation(line: 0, scope: !1007)
!1014 = !DILocation(line: 469, column: 14, scope: !1007)
!1015 = !DILocation(line: 469, column: 3, scope: !1007)
!1016 = !DILocation(line: 473, column: 45, scope: !1011)
!1017 = !DILocation(line: 473, column: 42, scope: !1011)
!1018 = !DILocation(line: 473, column: 19, scope: !1011)
!1019 = !DILocation(line: 0, scope: !1011)
!1020 = !DILocation(line: 474, column: 23, scope: !1011)
!1021 = !DILocation(line: 474, column: 20, scope: !1011)
!1022 = !DILocation(line: 474, column: 9, scope: !1011)
!1023 = !DILocation(line: 475, column: 12, scope: !1011)
!1024 = !DILocation(line: 475, column: 16, scope: !1011)
!1025 = !DILocation(line: 476, column: 12, scope: !1011)
!1026 = !DILocation(line: 476, column: 17, scope: !1011)
!1027 = !DILocation(line: 478, column: 7, scope: !1012)
!1028 = !DILocation(line: 482, column: 7, scope: !1012)
!1029 = !DILocation(line: 484, column: 1, scope: !1007)
!1030 = distinct !DISubprogram(name: "looks_like_integer", scope: !2, file: !2, line: 452, type: !795, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1031)
!1031 = !{!1032}
!1032 = !DILocalVariable(name: "cp", arg: 1, scope: !1030, file: !2, line: 452, type: !197)
!1033 = !DILocation(line: 0, scope: !1030)
!1034 = !DILocation(line: 454, column: 10, scope: !1030)
!1035 = !DILocation(line: 454, column: 14, scope: !1030)
!1036 = !DILocation(line: 454, column: 6, scope: !1030)
!1037 = !DILocation(line: 456, column: 3, scope: !1030)
!1038 = !DILocation(line: 457, column: 11, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 457, column: 9)
!1040 = !DILocation(line: 457, column: 9, scope: !1030)
!1041 = !DILocation(line: 458, column: 7, scope: !1039)
!1042 = !DILocation(line: 459, column: 11, scope: !1030)
!1043 = !DILocation(line: 459, column: 10, scope: !1030)
!1044 = distinct !{!1044, !1037, !1045, !525, !526}
!1045 = !DILocation(line: 459, column: 15, scope: !1030)
!1046 = !DILocation(line: 461, column: 3, scope: !1030)
!1047 = !DILocation(line: 462, column: 1, scope: !1030)
!1048 = !DISubprogram(name: "strintcmp", scope: !1049, file: !1049, line: 1, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1049 = !DIFile(filename: "../lib/strnumcmp.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1050 = !DISubprogram(name: "__error", scope: !1051, file: !1051, line: 80, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1051 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1055 = !DISubprogram(name: "strcoll", scope: !554, file: !554, line: 78, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1056 = !DISubprogram(name: "mpz_get_str", scope: !143, file: !143, line: 277, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!156, !156, !149, !750}
!1059 = !DILocation(line: 0, scope: !186)
!1060 = !DILocation(line: 816, column: 14, scope: !186)
!1061 = !DILocation(line: 816, column: 7, scope: !186)
!1062 = !DILocation(line: 817, column: 3, scope: !186)
!1063 = !DILocation(line: 819, column: 11, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 819, column: 11)
!1065 = distinct !DILexicalBlock(scope: !186, file: !2, line: 818, column: 5)
!1066 = !DILocation(line: 819, column: 11, scope: !1065)
!1067 = !DILocation(line: 820, column: 9, scope: !1064)
!1068 = !DILocation(line: 821, column: 16, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 821, column: 16)
!1070 = !DILocation(line: 821, column: 16, scope: !1064)
!1071 = !DILocation(line: 822, column: 9, scope: !1069)
!1072 = !DILocation(line: 823, column: 16, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 823, column: 16)
!1074 = !DILocation(line: 823, column: 16, scope: !1069)
!1075 = !DILocation(line: 824, column: 9, scope: !1073)
!1076 = !DILocation(line: 826, column: 9, scope: !1073)
!1077 = !DILocation(line: 0, scope: !1069)
!1078 = !DILocation(line: 0, scope: !1064)
!1079 = !DILocation(line: 827, column: 18, scope: !1065)
!1080 = !DILocation(line: 827, column: 11, scope: !1065)
!1081 = !DILocation(line: 828, column: 11, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 828, column: 11)
!1083 = !DILocation(line: 828, column: 11, scope: !1065)
!1084 = !DILocation(line: 830, column: 16, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 830, column: 15)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 829, column: 9)
!1087 = !DILocation(line: 830, column: 28, scope: !1085)
!1088 = !DILocation(line: 830, column: 32, scope: !1085)
!1089 = !DILocation(line: 830, column: 15, scope: !1086)
!1090 = !DILocation(line: 831, column: 13, scope: !1085)
!1091 = !DILocation(line: 832, column: 19, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 832, column: 15)
!1093 = !DILocation(line: 832, column: 31, scope: !1092)
!1094 = !DILocation(line: 832, column: 46, scope: !1092)
!1095 = !DILocation(line: 832, column: 43, scope: !1092)
!1096 = !DILocation(line: 832, column: 34, scope: !1092)
!1097 = !DILocation(line: 832, column: 51, scope: !1092)
!1098 = !DILocation(line: 832, column: 15, scope: !1086)
!1099 = !DILocation(line: 833, column: 13, scope: !1092)
!1100 = !DILocation(line: 834, column: 17, scope: !1086)
!1101 = !DILocation(line: 834, column: 13, scope: !1086)
!1102 = !DILocation(line: 835, column: 19, scope: !1086)
!1103 = !DILocation(line: 835, column: 15, scope: !1086)
!1104 = !DILocation(line: 837, column: 16, scope: !1086)
!1105 = !DILocation(line: 837, column: 13, scope: !1086)
!1106 = !DILocation(line: 837, column: 24, scope: !1086)
!1107 = !DILocation(line: 837, column: 21, scope: !1086)
!1108 = !DILocation(line: 837, column: 32, scope: !1086)
!1109 = !DILocation(line: 837, column: 29, scope: !1086)
!1110 = !DILocation(line: 834, column: 12, scope: !1086)
!1111 = !DILocation(line: 838, column: 9, scope: !1086)
!1112 = !DILocation(line: 839, column: 7, scope: !1065)
!1113 = distinct !{!1113, !1062, !1114, !526}
!1114 = !DILocation(line: 840, column: 5, scope: !186)
!1115 = distinct !DISubprogram(name: "toarith", scope: !2, file: !2, line: 489, type: !705, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1116)
!1116 = !{!1117, !1118}
!1117 = !DILocalVariable(name: "v", arg: 1, scope: !1115, file: !2, line: 489, type: !132)
!1118 = !DILocalVariable(name: "s", scope: !1119, file: !2, line: 497, type: !156)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 496, column: 7)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 492, column: 5)
!1121 = !DILocation(line: 0, scope: !1115)
!1122 = !DILocation(line: 491, column: 14, scope: !1115)
!1123 = !DILocation(line: 491, column: 3, scope: !1115)
!1124 = !DILocation(line: 494, column: 7, scope: !1120)
!1125 = !DILocation(line: 497, column: 22, scope: !1119)
!1126 = !DILocation(line: 497, column: 24, scope: !1119)
!1127 = !DILocation(line: 0, scope: !1119)
!1128 = !DILocation(line: 499, column: 15, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 499, column: 13)
!1130 = !DILocation(line: 499, column: 13, scope: !1119)
!1131 = !DILocation(line: 500, column: 11, scope: !1129)
!1132 = !DILocation(line: 501, column: 34, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 501, column: 13)
!1134 = !DILocation(line: 501, column: 31, scope: !1133)
!1135 = !DILocation(line: 501, column: 13, scope: !1133)
!1136 = !DILocation(line: 501, column: 46, scope: !1133)
!1137 = !DILocation(line: 501, column: 13, scope: !1119)
!1138 = !DILocation(line: 502, column: 11, scope: !1133)
!1139 = !DILocation(line: 503, column: 9, scope: !1119)
!1140 = !DILocation(line: 504, column: 12, scope: !1119)
!1141 = !DILocation(line: 504, column: 17, scope: !1119)
!1142 = !DILocation(line: 505, column: 9, scope: !1119)
!1143 = !DILocation(line: 508, column: 7, scope: !1120)
!1144 = !DILocation(line: 0, scope: !1120)
!1145 = !DILocation(line: 510, column: 1, scope: !1115)
!1146 = !DISubprogram(name: "mpz_init_set_str", scope: !143, file: !143, line: 279, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!149, !853, !197, !149}
!1149 = distinct !DISubprogram(name: "eval5", scope: !2, file: !2, line: 776, type: !130, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1150)
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1149, file: !2, line: 776, type: !157)
!1152 = !DILocalVariable(name: "l", scope: !1149, file: !2, line: 778, type: !132)
!1153 = !DILocalVariable(name: "r", scope: !1149, file: !2, line: 779, type: !132)
!1154 = !DILocalVariable(name: "v", scope: !1149, file: !2, line: 780, type: !132)
!1155 = !DILocation(line: 0, scope: !1149)
!1156 = !DILocation(line: 785, column: 14, scope: !1149)
!1157 = !DILocation(line: 785, column: 7, scope: !1149)
!1158 = !DILocation(line: 786, column: 3, scope: !1149)
!1159 = !DILocation(line: 788, column: 11, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 788, column: 11)
!1161 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 787, column: 5)
!1162 = !DILocation(line: 788, column: 11, scope: !1161)
!1163 = !DILocation(line: 790, column: 22, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 789, column: 9)
!1165 = !DILocation(line: 790, column: 15, scope: !1164)
!1166 = !DILocation(line: 791, column: 15, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 791, column: 15)
!1168 = !DILocation(line: 791, column: 15, scope: !1164)
!1169 = !DILocation(line: 793, column: 19, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 792, column: 13)
!1171 = !DILocation(line: 794, column: 15, scope: !1170)
!1172 = !DILocation(line: 796, column: 13, scope: !1170)
!1173 = !DILocation(line: 797, column: 11, scope: !1164)
!1174 = !DILocation(line: 798, column: 9, scope: !1164)
!1175 = !DILocation(line: 800, column: 9, scope: !1160)
!1176 = distinct !{!1176, !1158, !1177, !526}
!1177 = !DILocation(line: 801, column: 5, scope: !1149)
!1178 = distinct !DISubprogram(name: "eval6", scope: !2, file: !2, line: 693, type: !130, scopeLine: 694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1192, !1197, !1198}
!1180 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1178, file: !2, line: 693, type: !157)
!1181 = !DILocalVariable(name: "l", scope: !1178, file: !2, line: 695, type: !132)
!1182 = !DILocalVariable(name: "r", scope: !1178, file: !2, line: 696, type: !132)
!1183 = !DILocalVariable(name: "v", scope: !1178, file: !2, line: 697, type: !132)
!1184 = !DILocalVariable(name: "i1", scope: !1178, file: !2, line: 698, type: !132)
!1185 = !DILocalVariable(name: "i2", scope: !1178, file: !2, line: 699, type: !132)
!1186 = !DILocalVariable(name: "pos", scope: !1187, file: !2, line: 733, type: !200)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 732, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 731, column: 12)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 717, column: 12)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 709, column: 12)
!1191 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 704, column: 7)
!1192 = !DILocalVariable(name: "pos", scope: !1193, file: !2, line: 756, type: !200)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 755, column: 9)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 752, column: 11)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 746, column: 5)
!1196 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 745, column: 12)
!1197 = !DILocalVariable(name: "len", scope: !1193, file: !2, line: 757, type: !200)
!1198 = !DILocalVariable(name: "s", scope: !1193, file: !2, line: 759, type: !156)
!1199 = !DILocation(line: 0, scope: !1178)
!1200 = !DILocation(line: 704, column: 7, scope: !1191)
!1201 = !DILocation(line: 704, column: 7, scope: !1178)
!1202 = !DILocation(line: 706, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 705, column: 5)
!1204 = !DILocation(line: 707, column: 30, scope: !1203)
!1205 = !DILocation(line: 707, column: 25, scope: !1203)
!1206 = !DILocation(line: 707, column: 14, scope: !1203)
!1207 = !DILocation(line: 707, column: 7, scope: !1203)
!1208 = !DILocation(line: 709, column: 12, scope: !1190)
!1209 = !DILocation(line: 709, column: 12, scope: !1191)
!1210 = !DILocation(line: 711, column: 18, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 710, column: 5)
!1212 = !DILocation(line: 711, column: 11, scope: !1211)
!1213 = !DILocation(line: 712, column: 7, scope: !1211)
!1214 = !DILocation(line: 713, column: 33, scope: !1211)
!1215 = !DILocation(line: 713, column: 35, scope: !1211)
!1216 = !DILocation(line: 713, column: 22, scope: !1211)
!1217 = !DILocation(line: 713, column: 11, scope: !1211)
!1218 = !DILocation(line: 714, column: 7, scope: !1211)
!1219 = !DILocation(line: 715, column: 7, scope: !1211)
!1220 = !DILocation(line: 717, column: 12, scope: !1189)
!1221 = !DILocation(line: 717, column: 12, scope: !1190)
!1222 = !DILocation(line: 719, column: 18, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 718, column: 5)
!1224 = !DILocation(line: 719, column: 11, scope: !1223)
!1225 = !DILocation(line: 720, column: 18, scope: !1223)
!1226 = !DILocation(line: 720, column: 11, scope: !1223)
!1227 = !DILocation(line: 721, column: 11, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 721, column: 11)
!1229 = !DILocation(line: 721, column: 11, scope: !1223)
!1230 = !DILocation(line: 723, column: 15, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 722, column: 9)
!1232 = !DILocation(line: 724, column: 11, scope: !1231)
!1233 = !DILocation(line: 725, column: 9, scope: !1231)
!1234 = !DILocation(line: 0, scope: !1228)
!1235 = !DILocation(line: 728, column: 7, scope: !1223)
!1236 = !DILocation(line: 729, column: 7, scope: !1223)
!1237 = !DILocation(line: 731, column: 12, scope: !1188)
!1238 = !DILocation(line: 731, column: 12, scope: !1189)
!1239 = !DILocation(line: 735, column: 18, scope: !1187)
!1240 = !DILocation(line: 735, column: 11, scope: !1187)
!1241 = !DILocation(line: 736, column: 18, scope: !1187)
!1242 = !DILocation(line: 736, column: 11, scope: !1187)
!1243 = !DILocation(line: 737, column: 7, scope: !1187)
!1244 = !DILocation(line: 738, column: 7, scope: !1187)
!1245 = !DILocation(line: 739, column: 34, scope: !1187)
!1246 = !DILocation(line: 739, column: 36, scope: !1187)
!1247 = !DILocation(line: 739, column: 42, scope: !1187)
!1248 = !DILocation(line: 739, column: 44, scope: !1187)
!1249 = !DILocation(line: 739, column: 13, scope: !1187)
!1250 = !DILocation(line: 0, scope: !1187)
!1251 = !DILocation(line: 740, column: 11, scope: !1187)
!1252 = !DILocation(line: 741, column: 7, scope: !1187)
!1253 = !DILocation(line: 742, column: 7, scope: !1187)
!1254 = !DILocation(line: 745, column: 12, scope: !1196)
!1255 = !DILocation(line: 745, column: 12, scope: !1188)
!1256 = !DILocation(line: 747, column: 18, scope: !1195)
!1257 = !DILocation(line: 747, column: 11, scope: !1195)
!1258 = !DILocation(line: 748, column: 19, scope: !1195)
!1259 = !DILocation(line: 748, column: 12, scope: !1195)
!1260 = !DILocation(line: 749, column: 19, scope: !1195)
!1261 = !DILocation(line: 749, column: 12, scope: !1195)
!1262 = !DILocation(line: 750, column: 7, scope: !1195)
!1263 = !DILocation(line: 752, column: 12, scope: !1194)
!1264 = !DILocation(line: 752, column: 25, scope: !1194)
!1265 = !DILocation(line: 752, column: 29, scope: !1194)
!1266 = !DILocation(line: 752, column: 11, scope: !1195)
!1267 = !DILocation(line: 753, column: 13, scope: !1194)
!1268 = !DILocation(line: 753, column: 9, scope: !1194)
!1269 = !DILocation(line: 756, column: 37, scope: !1193)
!1270 = !DILocation(line: 756, column: 33, scope: !1193)
!1271 = !DILocation(line: 756, column: 24, scope: !1193)
!1272 = !DILocation(line: 0, scope: !1193)
!1273 = !DILocation(line: 757, column: 37, scope: !1193)
!1274 = !DILocation(line: 757, column: 33, scope: !1193)
!1275 = !DILocation(line: 757, column: 24, scope: !1193)
!1276 = !DILocation(line: 759, column: 44, scope: !1193)
!1277 = !DILocation(line: 759, column: 46, scope: !1193)
!1278 = !DILocation(line: 759, column: 21, scope: !1193)
!1279 = !DILocation(line: 760, column: 15, scope: !1193)
!1280 = !DILocation(line: 761, column: 11, scope: !1193)
!1281 = !DILocation(line: 0, scope: !1194)
!1282 = !DILocation(line: 763, column: 7, scope: !1195)
!1283 = !DILocation(line: 764, column: 7, scope: !1195)
!1284 = !DILocation(line: 765, column: 7, scope: !1195)
!1285 = !DILocation(line: 766, column: 7, scope: !1195)
!1286 = !DILocation(line: 769, column: 19, scope: !1196)
!1287 = !DILocation(line: 769, column: 12, scope: !1196)
!1288 = !DILocation(line: 769, column: 5, scope: !1196)
!1289 = !DILocation(line: 0, scope: !1191)
!1290 = !DILocation(line: 770, column: 1, scope: !1178)
!1291 = distinct !DISubprogram(name: "docolon", scope: !2, file: !2, line: 586, type: !1292, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!132, !132, !132}
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1321, !1325, !1338, !1339}
!1295 = !DILocalVariable(name: "sv", arg: 1, scope: !1291, file: !2, line: 586, type: !132)
!1296 = !DILocalVariable(name: "pv", arg: 2, scope: !1291, file: !2, line: 586, type: !132)
!1297 = !DILocalVariable(name: "v", scope: !1291, file: !2, line: 588, type: !132)
!1298 = !DILocalVariable(name: "errmsg", scope: !1291, file: !2, line: 589, type: !197)
!1299 = !DILocalVariable(name: "re_buffer", scope: !1291, file: !2, line: 590, type: !1300)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !1301, line: 413, size: 512, elements: !1302)
!1301 = !DIFile(filename: "../lib/regex.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1302 = !{!1303, !1306, !1308, !1309, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1300, file: !1301, line: 417, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !1301, line: 417, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1300, file: !1301, line: 420, baseType: !1307, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !1301, line: 49, baseType: !200)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1300, file: !1301, line: 423, baseType: !1307, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !1300, file: !1301, line: 426, baseType: !1310, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !1301, line: 72, baseType: !154)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !1300, file: !1301, line: 431, baseType: !156, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1300, file: !1301, line: 437, baseType: !437, size: 64, offset: 320)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !1300, file: !1301, line: 440, baseType: !200, size: 64, offset: 384)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !1300, file: !1301, line: 446, baseType: !106, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !1300, file: !1301, line: 457, baseType: !106, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !1300, file: !1301, line: 461, baseType: !106, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !1300, file: !1301, line: 465, baseType: !106, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !1300, file: !1301, line: 469, baseType: !106, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !1300, file: !1301, line: 472, baseType: !106, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !1300, file: !1301, line: 475, baseType: !106, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!1321 = !DILocalVariable(name: "fastmap", scope: !1291, file: !2, line: 591, type: !1322)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: 256)
!1325 = !DILocalVariable(name: "re_regs", scope: !1291, file: !2, line: 592, type: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !1301, line: 497, size: 192, elements: !1327)
!1327 = !{!1328, !1330, !1337}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !1326, file: !1301, line: 499, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !1301, line: 45, baseType: !200)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1326, file: !1301, line: 500, baseType: !1331, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !1301, line: 486, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1334, line: 31, baseType: !1335)
!1334 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_ssize_t.h", directory: "")
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ssize_t", file: !203, line: 121, baseType: !1336)
!1336 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1326, file: !1301, line: 501, baseType: !1331, size: 64, offset: 128)
!1338 = !DILocalVariable(name: "matchlen", scope: !1291, file: !2, line: 593, type: !1332)
!1339 = !DILocalVariable(name: "i", scope: !1340, file: !2, line: 631, type: !200)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 628, column: 9)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 617, column: 11)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 615, column: 5)
!1343 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 614, column: 7)
!1344 = !DILocation(line: 0, scope: !1291)
!1345 = !DILocation(line: 590, column: 3, scope: !1291)
!1346 = !DILocation(line: 590, column: 28, scope: !1291)
!1347 = !DILocation(line: 591, column: 3, scope: !1291)
!1348 = !DILocation(line: 591, column: 8, scope: !1291)
!1349 = !DILocation(line: 592, column: 3, scope: !1291)
!1350 = !DILocation(line: 592, column: 23, scope: !1291)
!1351 = !DILocation(line: 595, column: 3, scope: !1291)
!1352 = !DILocation(line: 596, column: 3, scope: !1291)
!1353 = !DILocation(line: 598, column: 11, scope: !1291)
!1354 = !DILocation(line: 598, column: 20, scope: !1291)
!1355 = !{!1356, !1357, i64 0}
!1356 = !{!"re_registers", !1357, i64 0, !396, i64 8, !396, i64 16}
!1357 = !{!"long", !397, i64 0}
!1358 = !DILocation(line: 599, column: 11, scope: !1291)
!1359 = !DILocation(line: 599, column: 17, scope: !1291)
!1360 = !{!1356, !396, i64 8}
!1361 = !DILocation(line: 600, column: 11, scope: !1291)
!1362 = !DILocation(line: 600, column: 15, scope: !1291)
!1363 = !{!1356, !396, i64 16}
!1364 = !DILocation(line: 602, column: 13, scope: !1291)
!1365 = !DILocation(line: 602, column: 20, scope: !1291)
!1366 = !{!1367, !396, i64 0}
!1367 = !{!"re_pattern_buffer", !396, i64 0, !1357, i64 8, !1357, i64 16, !1357, i64 24, !396, i64 32, !396, i64 40, !1357, i64 48, !614, i64 56, !614, i64 56, !614, i64 56, !614, i64 56, !614, i64 56, !614, i64 56, !614, i64 56}
!1368 = !DILocation(line: 603, column: 13, scope: !1291)
!1369 = !DILocation(line: 603, column: 23, scope: !1291)
!1370 = !{!1367, !1357, i64 8}
!1371 = !DILocation(line: 604, column: 23, scope: !1291)
!1372 = !DILocation(line: 604, column: 13, scope: !1291)
!1373 = !DILocation(line: 604, column: 21, scope: !1291)
!1374 = !{!1367, !396, i64 32}
!1375 = !DILocation(line: 605, column: 13, scope: !1291)
!1376 = !DILocation(line: 605, column: 23, scope: !1291)
!1377 = !{!1367, !396, i64 40}
!1378 = !DILocation(line: 606, column: 21, scope: !1291)
!1379 = !{!1357, !1357, i64 0}
!1380 = !DILocation(line: 608, column: 36, scope: !1291)
!1381 = !DILocation(line: 608, column: 38, scope: !1291)
!1382 = !DILocation(line: 608, column: 53, scope: !1291)
!1383 = !DILocation(line: 608, column: 55, scope: !1291)
!1384 = !DILocation(line: 608, column: 41, scope: !1291)
!1385 = !DILocation(line: 608, column: 12, scope: !1291)
!1386 = !DILocation(line: 609, column: 7, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 609, column: 7)
!1388 = !DILocation(line: 609, column: 7, scope: !1291)
!1389 = !DILocation(line: 610, column: 5, scope: !1387)
!1390 = !DILocation(line: 611, column: 13, scope: !1291)
!1391 = !DILocation(line: 611, column: 28, scope: !1291)
!1392 = !DILocation(line: 613, column: 40, scope: !1291)
!1393 = !DILocation(line: 613, column: 42, scope: !1291)
!1394 = !DILocation(line: 613, column: 57, scope: !1291)
!1395 = !DILocation(line: 613, column: 59, scope: !1291)
!1396 = !DILocation(line: 613, column: 45, scope: !1291)
!1397 = !DILocation(line: 613, column: 14, scope: !1291)
!1398 = !DILocation(line: 614, column: 9, scope: !1343)
!1399 = !DILocation(line: 614, column: 7, scope: !1291)
!1400 = !DILocation(line: 617, column: 21, scope: !1341)
!1401 = !{!1367, !1357, i64 48}
!1402 = !DILocation(line: 617, column: 29, scope: !1341)
!1403 = !DILocation(line: 617, column: 11, scope: !1342)
!1404 = !DILocation(line: 619, column: 23, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 619, column: 15)
!1406 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 618, column: 9)
!1407 = !DILocation(line: 619, column: 15, scope: !1405)
!1408 = !DILocation(line: 619, column: 30, scope: !1405)
!1409 = !DILocation(line: 619, column: 15, scope: !1406)
!1410 = !DILocation(line: 620, column: 17, scope: !1405)
!1411 = !DILocation(line: 620, column: 13, scope: !1405)
!1412 = !DILocation(line: 623, column: 19, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 622, column: 13)
!1414 = !DILocation(line: 623, column: 21, scope: !1413)
!1415 = !DILocation(line: 623, column: 31, scope: !1413)
!1416 = !DILocation(line: 623, column: 23, scope: !1413)
!1417 = !DILocation(line: 623, column: 15, scope: !1413)
!1418 = !DILocation(line: 623, column: 39, scope: !1413)
!1419 = !DILocation(line: 624, column: 34, scope: !1413)
!1420 = !DILocation(line: 624, column: 36, scope: !1413)
!1421 = !DILocation(line: 624, column: 48, scope: !1413)
!1422 = !DILocation(line: 624, column: 40, scope: !1413)
!1423 = !DILocation(line: 624, column: 38, scope: !1413)
!1424 = !DILocation(line: 624, column: 19, scope: !1413)
!1425 = !DILocation(line: 0, scope: !1405)
!1426 = !DILocation(line: 626, column: 9, scope: !1406)
!1427 = !DILocation(line: 631, column: 23, scope: !1340)
!1428 = !DILocation(line: 631, column: 34, scope: !1340)
!1429 = !DILocation(line: 633, column: 50, scope: !1340)
!1430 = !DILocation(line: 633, column: 52, scope: !1340)
!1431 = !DILocation(line: 633, column: 25, scope: !1340)
!1432 = !DILocation(line: 0, scope: !1340)
!1433 = !DILocation(line: 634, column: 15, scope: !1340)
!1434 = !DILocation(line: 0, scope: !1341)
!1435 = !DILocation(line: 636, column: 5, scope: !1342)
!1436 = !DILocation(line: 637, column: 21, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 637, column: 12)
!1438 = !DILocation(line: 637, column: 12, scope: !1343)
!1439 = !DILocation(line: 640, column: 21, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 640, column: 11)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 638, column: 5)
!1442 = !DILocation(line: 640, column: 29, scope: !1440)
!1443 = !DILocation(line: 640, column: 11, scope: !1441)
!1444 = !DILocation(line: 641, column: 13, scope: !1440)
!1445 = !DILocation(line: 641, column: 9, scope: !1440)
!1446 = !DILocation(line: 643, column: 13, scope: !1440)
!1447 = !DILocation(line: 0, scope: !1440)
!1448 = !DILocation(line: 644, column: 5, scope: !1441)
!1449 = !DILocation(line: 646, column: 5, scope: !1437)
!1450 = !DILocation(line: 0, scope: !1343)
!1451 = !DILocation(line: 650, column: 19, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 650, column: 7)
!1453 = !DILocation(line: 650, column: 9, scope: !1452)
!1454 = !DILocation(line: 650, column: 7, scope: !1291)
!1455 = !DILocation(line: 652, column: 21, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 651, column: 5)
!1457 = !DILocation(line: 652, column: 7, scope: !1456)
!1458 = !DILocation(line: 653, column: 21, scope: !1456)
!1459 = !DILocation(line: 653, column: 7, scope: !1456)
!1460 = !DILocation(line: 654, column: 5, scope: !1456)
!1461 = !DILocation(line: 655, column: 13, scope: !1291)
!1462 = !DILocation(line: 655, column: 21, scope: !1291)
!1463 = !DILocation(line: 656, column: 3, scope: !1291)
!1464 = !DILocation(line: 658, column: 1, scope: !1291)
!1465 = !DILocation(line: 657, column: 3, scope: !1291)
!1466 = !DISubprogram(name: "strlen", scope: !554, file: !554, line: 82, type: !1467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!154, !197}
!1469 = !DISubprogram(name: "rpl_re_compile_pattern", scope: !1301, file: !1301, line: 562, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!197, !197, !200, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1473 = !DISubprogram(name: "rpl_re_match", scope: !1301, file: !1301, line: 599, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1332, !1472, !197, !1332, !1332, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1477 = distinct !DISubprogram(name: "str_value", scope: !2, file: !2, line: 377, type: !1478, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!132, !197}
!1480 = !{!1481, !1482}
!1481 = !DILocalVariable(name: "s", arg: 1, scope: !1477, file: !2, line: 377, type: !197)
!1482 = !DILocalVariable(name: "v", scope: !1477, file: !2, line: 379, type: !132)
!1483 = !DILocation(line: 0, scope: !1477)
!1484 = !DILocation(line: 379, column: 14, scope: !1477)
!1485 = !DILocation(line: 380, column: 6, scope: !1477)
!1486 = !DILocation(line: 380, column: 11, scope: !1477)
!1487 = !DILocation(line: 381, column: 12, scope: !1477)
!1488 = !DILocation(line: 381, column: 6, scope: !1477)
!1489 = !DILocation(line: 381, column: 10, scope: !1477)
!1490 = !DILocation(line: 382, column: 3, scope: !1477)
!1491 = !DISubprogram(name: "___mb_cur_max", scope: !1492, file: !1492, line: 33, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1492 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_xlocale.h", directory: "")
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!149}
!1495 = distinct !DISubprogram(name: "mbs_offset_to_chars", scope: !2, file: !2, line: 224, type: !1496, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!200, !197, !200}
!1498 = !{!1499, !1500, !1501, !1533, !1534}
!1499 = !DILocalVariable(name: "s", arg: 1, scope: !1495, file: !2, line: 224, type: !197)
!1500 = !DILocalVariable(name: "ofs", arg: 2, scope: !1495, file: !2, line: 224, type: !200)
!1501 = !DILocalVariable(name: "iter", scope: !1495, file: !2, line: 226, type: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbui_iterator_t", file: !343, line: 202, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbuiter_multi", file: !343, line: 109, size: 1536, elements: !1504)
!1504 = !{!1505, !1506, !1518, !1519}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "in_shift", scope: !1503, file: !343, line: 111, baseType: !157, size: 8)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1503, file: !343, line: 112, baseType: !1507, size: 1024, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1508, line: 32, baseType: !1509)
!1508 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mbstate_t.h", directory: "")
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mbstate_t", file: !203, line: 83, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !203, line: 81, baseType: !1511)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !203, line: 78, size: 1024, elements: !1512)
!1512 = !{!1513, !1517}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__mbstate8", scope: !1511, file: !203, line: 79, baseType: !1514, size: 1024)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1515)
!1515 = !{!1516}
!1516 = !DISubrange(count: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstateL", scope: !1511, file: !203, line: 80, baseType: !466, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "next_done", scope: !1503, file: !343, line: 113, baseType: !157, size: 8, offset: 1088)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !1503, file: !343, line: 114, baseType: !1520, size: 384, offset: 1152)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbchar", file: !1521, line: 161, size: 384, elements: !1522)
!1521 = !DIFile(filename: "../lib/mbchar.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1522 = !{!1523, !1524, !1525, !1526, !1529}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1520, file: !1521, line: 163, baseType: !197, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1520, file: !1521, line: 164, baseType: !200, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "wc_valid", scope: !1520, file: !1521, line: 165, baseType: !157, size: 8, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !1520, file: !1521, line: 166, baseType: !1527, size: 32, offset: 160)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1528, line: 74, baseType: !149)
!1528 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1520, file: !1521, line: 167, baseType: !1530, size: 192, offset: 192)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !1531)
!1531 = !{!1532}
!1532 = !DISubrange(count: 24)
!1533 = !DILocalVariable(name: "c", scope: !1495, file: !2, line: 227, type: !200)
!1534 = !DILocalVariable(name: "d", scope: !1535, file: !2, line: 230, type: !1538)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 229, column: 5)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 228, column: 3)
!1537 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 228, column: 3)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1528, line: 35, baseType: !1336)
!1539 = !DILocation(line: 0, scope: !1495)
!1540 = !DILocation(line: 226, column: 3, scope: !1495)
!1541 = !DILocation(line: 226, column: 19, scope: !1495)
!1542 = !DILocation(line: 228, column: 8, scope: !1537)
!1543 = !{!1544, !396, i64 144}
!1544 = !{!"mbuiter_multi", !1545, i64 0, !397, i64 8, !1545, i64 136, !1546, i64 144}
!1545 = !{!"_Bool", !397, i64 0}
!1546 = !{!"mbchar", !396, i64 0, !1357, i64 8, !1545, i64 16, !614, i64 20, !397, i64 24}
!1547 = !{!1544, !1545, i64 0}
!1548 = !{!1544, !1545, i64 136}
!1549 = !DILocation(line: 227, column: 10, scope: !1495)
!1550 = !DILocation(line: 228, column: 29, scope: !1536)
!1551 = !{!1544, !1545, i64 160}
!1552 = !{i8 0, i8 2}
!1553 = !{!1544, !614, i64 164}
!1554 = !DILocation(line: 0, scope: !1536)
!1555 = !DILocation(line: 228, column: 3, scope: !1537)
!1556 = !DILocation(line: 230, column: 21, scope: !1535)
!1557 = !DILocation(line: 230, column: 41, scope: !1535)
!1558 = !DILocation(line: 0, scope: !1535)
!1559 = !DILocation(line: 231, column: 13, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 231, column: 11)
!1561 = !DILocation(line: 231, column: 11, scope: !1535)
!1562 = !DILocation(line: 232, column: 9, scope: !1560)
!1563 = !DILocation(line: 233, column: 7, scope: !1535)
!1564 = !DILocation(line: 234, column: 5, scope: !1536)
!1565 = !DILocation(line: 234, column: 5, scope: !1535)
!1566 = !DILocation(line: 228, column: 48, scope: !1536)
!1567 = !{!1544, !1357, i64 152}
!1568 = !DILocation(line: 228, column: 3, scope: !1536)
!1569 = distinct !{!1569, !1555, !1570, !525, !526}
!1570 = !DILocation(line: 234, column: 5, scope: !1537)
!1571 = !DILocation(line: 236, column: 1, scope: !1495)
!1572 = !DILocation(line: 235, column: 3, scope: !1495)
!1573 = !DISubprogram(name: "rpl_regfree", scope: !1301, file: !1301, line: 689, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !1301, line: 478, baseType: !1300)
!1578 = distinct !DISubprogram(name: "mbuiter_multi_next", scope: !343, file: !343, line: 124, type: !1579, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1582)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1581}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1582 = !{!1583, !1584}
!1583 = !DILocalVariable(name: "iter", arg: 1, scope: !1578, file: !343, line: 124, type: !1581)
!1584 = !DILabel(scope: !1585, name: "with_shift", file: !343, line: 144)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !343, line: 141, column: 5)
!1586 = distinct !DILexicalBlock(scope: !1578, file: !343, line: 131, column: 7)
!1587 = !DILocation(line: 0, scope: !1578)
!1588 = !DILocation(line: 126, column: 13, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1578, file: !343, line: 126, column: 7)
!1590 = !DILocation(line: 126, column: 7, scope: !1578)
!1591 = !DILocation(line: 127, column: 5, scope: !1589)
!1592 = !DILocation(line: 128, column: 13, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1578, file: !343, line: 128, column: 7)
!1594 = !DILocation(line: 128, column: 7, scope: !1578)
!1595 = !DILocation(line: 129, column: 5, scope: !1593)
!1596 = !DILocation(line: 131, column: 24, scope: !1586)
!1597 = !DILocation(line: 131, column: 28, scope: !1586)
!1598 = !DILocation(line: 131, column: 17, scope: !1586)
!1599 = !DILocation(line: 131, column: 7, scope: !1586)
!1600 = !DILocation(line: 131, column: 7, scope: !1578)
!1601 = !DILocation(line: 136, column: 13, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1586, file: !343, line: 132, column: 5)
!1603 = !DILocation(line: 136, column: 17, scope: !1602)
!1604 = !DILocation(line: 136, column: 23, scope: !1602)
!1605 = !DILocation(line: 137, column: 29, scope: !1602)
!1606 = !DILocation(line: 137, column: 33, scope: !1602)
!1607 = !DILocation(line: 137, column: 22, scope: !1602)
!1608 = !DILocation(line: 137, column: 13, scope: !1602)
!1609 = !DILocation(line: 137, column: 17, scope: !1602)
!1610 = !DILocation(line: 137, column: 20, scope: !1602)
!1611 = !DILocation(line: 138, column: 13, scope: !1602)
!1612 = !DILocation(line: 138, column: 17, scope: !1602)
!1613 = !DILocation(line: 138, column: 26, scope: !1602)
!1614 = !DILocation(line: 139, column: 5, scope: !1602)
!1615 = !DILocation(line: 142, column: 7, scope: !1585)
!1616 = !DILocation(line: 143, column: 13, scope: !1585)
!1617 = !DILocation(line: 143, column: 22, scope: !1585)
!1618 = !DILocation(line: 143, column: 7, scope: !1585)
!1619 = !DILocation(line: 144, column: 5, scope: !1585)
!1620 = !DILocation(line: 145, column: 41, scope: !1585)
!1621 = !DILocation(line: 145, column: 45, scope: !1585)
!1622 = !DILocation(line: 145, column: 55, scope: !1585)
!1623 = !DILocation(line: 145, column: 59, scope: !1585)
!1624 = !DILocation(line: 146, column: 50, scope: !1585)
!1625 = !DILocation(line: 146, column: 54, scope: !1585)
!1626 = !DILocation(line: 146, column: 59, scope: !1585)
!1627 = !DILocation(line: 146, column: 34, scope: !1585)
!1628 = !DILocation(line: 147, column: 41, scope: !1585)
!1629 = !DILocation(line: 145, column: 25, scope: !1585)
!1630 = !DILocation(line: 145, column: 13, scope: !1585)
!1631 = !DILocation(line: 145, column: 17, scope: !1585)
!1632 = !DILocation(line: 145, column: 23, scope: !1585)
!1633 = !DILocation(line: 148, column: 17, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1585, file: !343, line: 148, column: 11)
!1635 = !DILocation(line: 148, column: 21, scope: !1634)
!1636 = !DILocation(line: 148, column: 27, scope: !1634)
!1637 = !DILocation(line: 148, column: 11, scope: !1585)
!1638 = !DILocation(line: 151, column: 17, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !343, line: 149, column: 9)
!1640 = !DILocation(line: 151, column: 21, scope: !1639)
!1641 = !DILocation(line: 151, column: 27, scope: !1639)
!1642 = !DILocation(line: 152, column: 17, scope: !1639)
!1643 = !DILocation(line: 152, column: 21, scope: !1639)
!1644 = !DILocation(line: 152, column: 30, scope: !1639)
!1645 = !DILocation(line: 155, column: 9, scope: !1639)
!1646 = !DILocation(line: 156, column: 22, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1634, file: !343, line: 156, column: 16)
!1648 = !DILocation(line: 156, column: 26, scope: !1647)
!1649 = !DILocation(line: 156, column: 32, scope: !1647)
!1650 = !DILocation(line: 156, column: 16, scope: !1634)
!1651 = !DILocation(line: 159, column: 43, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !343, line: 157, column: 9)
!1653 = !DILocation(line: 159, column: 47, scope: !1652)
!1654 = !DILocation(line: 159, column: 29, scope: !1652)
!1655 = !DILocation(line: 159, column: 17, scope: !1652)
!1656 = !DILocation(line: 159, column: 21, scope: !1652)
!1657 = !DILocation(line: 159, column: 27, scope: !1652)
!1658 = !DILocation(line: 160, column: 17, scope: !1652)
!1659 = !DILocation(line: 160, column: 21, scope: !1652)
!1660 = !DILocation(line: 160, column: 30, scope: !1652)
!1661 = !DILocation(line: 163, column: 9, scope: !1652)
!1662 = !DILocation(line: 166, column: 21, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !343, line: 166, column: 15)
!1664 = distinct !DILexicalBlock(scope: !1647, file: !343, line: 165, column: 9)
!1665 = !DILocation(line: 166, column: 25, scope: !1663)
!1666 = !DILocation(line: 166, column: 31, scope: !1663)
!1667 = !DILocation(line: 166, column: 15, scope: !1664)
!1668 = !DILocation(line: 169, column: 21, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1663, file: !343, line: 167, column: 13)
!1670 = !DILocation(line: 169, column: 25, scope: !1669)
!1671 = !DILocation(line: 169, column: 31, scope: !1669)
!1672 = !DILocation(line: 170, column: 15, scope: !1669)
!1673 = !DILocation(line: 171, column: 15, scope: !1669)
!1674 = !DILocation(line: 172, column: 13, scope: !1669)
!1675 = !DILocation(line: 173, column: 17, scope: !1664)
!1676 = !DILocation(line: 173, column: 21, scope: !1664)
!1677 = !DILocation(line: 173, column: 30, scope: !1664)
!1678 = !DILocation(line: 177, column: 31, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1664, file: !343, line: 177, column: 15)
!1680 = !DILocation(line: 177, column: 15, scope: !1679)
!1681 = !DILocation(line: 177, column: 15, scope: !1664)
!1682 = !DILocation(line: 178, column: 19, scope: !1679)
!1683 = !DILocation(line: 178, column: 28, scope: !1679)
!1684 = !DILocation(line: 178, column: 13, scope: !1679)
!1685 = !DILocation(line: 181, column: 9, scope: !1578)
!1686 = !DILocation(line: 181, column: 19, scope: !1578)
!1687 = !DILocation(line: 182, column: 1, scope: !1578)
!1688 = distinct !DISubprogram(name: "is_basic", scope: !1521, file: !1521, line: 308, type: !1689, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!157, !4}
!1691 = !{!1692}
!1692 = !DILocalVariable(name: "c", arg: 1, scope: !1688, file: !1521, line: 308, type: !4)
!1693 = !DILocation(line: 0, scope: !1688)
!1694 = !DILocation(line: 310, column: 27, scope: !1688)
!1695 = !DILocation(line: 310, column: 45, scope: !1688)
!1696 = !DILocation(line: 310, column: 11, scope: !1688)
!1697 = !DILocation(line: 310, column: 55, scope: !1688)
!1698 = !DILocation(line: 310, column: 73, scope: !1688)
!1699 = !DILocation(line: 310, column: 51, scope: !1688)
!1700 = !DILocation(line: 311, column: 10, scope: !1688)
!1701 = !DILocation(line: 310, column: 10, scope: !1688)
!1702 = !DILocation(line: 310, column: 3, scope: !1688)
!1703 = !DISubprogram(name: "mbsinit", scope: !1704, file: !1704, line: 110, type: !1705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1704 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/wchar.h", directory: "")
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!149, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1507)
!1709 = !DISubprogram(name: "__assert_rtn", scope: !1710, file: !1710, line: 82, type: !1711, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1710 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/assert.h", directory: "")
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !197, !197, !149, !197}
!1713 = !DISubprogram(name: "strnlen1", scope: !1714, file: !1714, line: 31, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1714 = !DIFile(filename: "../lib/strnlen1.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1715 = !DISubprogram(name: "mbrtowc", scope: !1704, file: !1704, line: 108, type: !1716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!200, !1718, !483, !200, !1720}
!1718 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1719)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1721)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1722 = !DISubprogram(name: "xstrdup", scope: !847, file: !847, line: 99, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!156, !197}
!1725 = distinct !DISubprogram(name: "require_more_args", scope: !2, file: !2, line: 557, type: !621, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !484)
!1726 = !DILocation(line: 559, column: 7, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 559, column: 7)
!1728 = !DILocation(line: 559, column: 7, scope: !1725)
!1729 = !DILocation(line: 560, column: 5, scope: !1727)
!1730 = !DILocation(line: 562, column: 1, scope: !1725)
!1731 = !DISubprogram(name: "mbslen", scope: !1732, file: !1732, line: 1509, type: !1733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1732 = !DIFile(filename: "./lib/string.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!200, !197}
!1735 = distinct !DISubprogram(name: "mbs_logical_cspn", scope: !2, file: !2, line: 117, type: !1736, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!200, !197, !197}
!1738 = !{!1739, !1740, !1741, !1742, !1745, !1751}
!1739 = !DILocalVariable(name: "s", arg: 1, scope: !1735, file: !2, line: 117, type: !197)
!1740 = !DILocalVariable(name: "accept", arg: 2, scope: !1735, file: !2, line: 117, type: !197)
!1741 = !DILocalVariable(name: "idx", scope: !1735, file: !2, line: 119, type: !200)
!1742 = !DILocalVariable(name: "iter", scope: !1743, file: !2, line: 127, type: !1502)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 126, column: 5)
!1744 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 125, column: 7)
!1745 = !DILocalVariable(name: "aiter", scope: !1746, file: !2, line: 139, type: !1502)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 138, column: 13)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 132, column: 15)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 130, column: 9)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 129, column: 7)
!1750 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 129, column: 7)
!1751 = !DILocalVariable(name: "i", scope: !1752, file: !2, line: 156, type: !200)
!1752 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 153, column: 5)
!1753 = !DILocation(line: 0, scope: !1735)
!1754 = !DILocation(line: 121, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 121, column: 7)
!1756 = !DILocation(line: 121, column: 17, scope: !1755)
!1757 = !DILocation(line: 121, column: 7, scope: !1735)
!1758 = !DILocation(line: 122, column: 5, scope: !1755)
!1759 = !DILocation(line: 125, column: 7, scope: !1744)
!1760 = !DILocation(line: 125, column: 18, scope: !1744)
!1761 = !DILocation(line: 125, column: 7, scope: !1735)
!1762 = !DILocation(line: 127, column: 7, scope: !1743)
!1763 = !DILocation(line: 127, column: 23, scope: !1743)
!1764 = !DILocation(line: 129, column: 12, scope: !1750)
!1765 = !DILocation(line: 129, column: 33, scope: !1749)
!1766 = !DILocation(line: 0, scope: !1749)
!1767 = !DILocation(line: 129, column: 7, scope: !1750)
!1768 = !DILocation(line: 131, column: 11, scope: !1748)
!1769 = !DILocation(line: 132, column: 15, scope: !1747)
!1770 = !DILocation(line: 132, column: 40, scope: !1747)
!1771 = !DILocation(line: 132, column: 15, scope: !1748)
!1772 = !DILocation(line: 134, column: 36, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !2, line: 134, column: 19)
!1774 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 133, column: 13)
!1775 = !DILocation(line: 134, column: 35, scope: !1773)
!1776 = !DILocation(line: 134, column: 19, scope: !1773)
!1777 = !DILocation(line: 134, column: 19, scope: !1774)
!1778 = !DILocation(line: 135, column: 17, scope: !1773)
!1779 = !DILocation(line: 136, column: 13, scope: !1774)
!1780 = !DILocation(line: 139, column: 15, scope: !1746)
!1781 = !DILocation(line: 139, column: 31, scope: !1746)
!1782 = !DILocation(line: 141, column: 20, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 141, column: 15)
!1784 = !DILocation(line: 142, column: 20, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 141, column: 15)
!1786 = !DILocation(line: 0, scope: !1785)
!1787 = !DILocation(line: 141, column: 15, scope: !1783)
!1788 = !DILocation(line: 144, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 144, column: 21)
!1790 = !DILocation(line: 144, column: 21, scope: !1785)
!1791 = !DILocation(line: 145, column: 19, scope: !1789)
!1792 = !DILocation(line: 143, column: 20, scope: !1785)
!1793 = !DILocation(line: 141, column: 15, scope: !1785)
!1794 = distinct !{!1794, !1787, !1795, !525, !526}
!1795 = !DILocation(line: 145, column: 26, scope: !1783)
!1796 = !DILocation(line: 146, column: 13, scope: !1747)
!1797 = !DILocation(line: 147, column: 9, scope: !1748)
!1798 = !DILocation(line: 129, column: 52, scope: !1749)
!1799 = !DILocation(line: 129, column: 7, scope: !1749)
!1800 = distinct !{!1800, !1767, !1801, !525, !526}
!1801 = !DILocation(line: 147, column: 9, scope: !1750)
!1802 = !DILocation(line: 150, column: 7, scope: !1743)
!1803 = !DILocation(line: 0, scope: !1743)
!1804 = !DILocation(line: 151, column: 5, scope: !1744)
!1805 = !DILocation(line: 156, column: 18, scope: !1752)
!1806 = !DILocation(line: 0, scope: !1752)
!1807 = !DILocation(line: 157, column: 15, scope: !1752)
!1808 = !DILocation(line: 157, column: 24, scope: !1752)
!1809 = !DILocation(line: 159, column: 1, scope: !1735)
!1810 = distinct !DISubprogram(name: "getsize", scope: !2, file: !2, line: 516, type: !1811, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!200, !853}
!1813 = !{!1814, !1815}
!1814 = !DILocalVariable(name: "i", arg: 1, scope: !1810, file: !2, line: 516, type: !853)
!1815 = !DILocalVariable(name: "ul", scope: !1816, file: !2, line: 522, type: !154)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 521, column: 5)
!1817 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 520, column: 7)
!1818 = !DILocation(line: 0, scope: !1810)
!1819 = !DILocation(line: 518, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 518, column: 7)
!1821 = !DILocation(line: 518, column: 19, scope: !1820)
!1822 = !DILocation(line: 518, column: 7, scope: !1810)
!1823 = !DILocation(line: 519, column: 5, scope: !1820)
!1824 = !DILocation(line: 520, column: 7, scope: !1817)
!1825 = !DILocation(line: 520, column: 7, scope: !1810)
!1826 = !DILocation(line: 522, column: 30, scope: !1816)
!1827 = !DILocation(line: 0, scope: !1816)
!1828 = !DILocation(line: 523, column: 14, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 523, column: 11)
!1830 = !DILocation(line: 523, column: 11, scope: !1816)
!1831 = !DILocation(line: 524, column: 9, scope: !1829)
!1832 = !DILocation(line: 525, column: 5, scope: !1817)
!1833 = !DILocation(line: 525, column: 5, scope: !1816)
!1834 = !DILocation(line: 526, column: 3, scope: !1810)
!1835 = !DILocation(line: 527, column: 1, scope: !1810)
!1836 = distinct !DISubprogram(name: "mbs_logical_substr", scope: !2, file: !2, line: 169, type: !1837, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!156, !197, !200, !200}
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1851}
!1840 = !DILocalVariable(name: "s", arg: 1, scope: !1836, file: !2, line: 169, type: !197)
!1841 = !DILocalVariable(name: "pos", arg: 2, scope: !1836, file: !2, line: 169, type: !200)
!1842 = !DILocalVariable(name: "len", arg: 3, scope: !1836, file: !2, line: 169, type: !200)
!1843 = !DILocalVariable(name: "v", scope: !1836, file: !2, line: 171, type: !156)
!1844 = !DILocalVariable(name: "vlim", scope: !1836, file: !2, line: 171, type: !156)
!1845 = !DILocalVariable(name: "blen", scope: !1836, file: !2, line: 173, type: !200)
!1846 = !DILocalVariable(name: "llen", scope: !1836, file: !2, line: 174, type: !200)
!1847 = !DILocalVariable(name: "vlen", scope: !1836, file: !2, line: 180, type: !200)
!1848 = !DILocalVariable(name: "iter", scope: !1849, file: !2, line: 196, type: !1502)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 189, column: 5)
!1850 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 182, column: 7)
!1851 = !DILocalVariable(name: "idx", scope: !1849, file: !2, line: 197, type: !200)
!1852 = !DILocation(line: 0, scope: !1836)
!1853 = !DILocation(line: 173, column: 17, scope: !1836)
!1854 = !DILocation(line: 174, column: 18, scope: !1836)
!1855 = !DILocation(line: 174, column: 29, scope: !1836)
!1856 = !DILocation(line: 174, column: 17, scope: !1836)
!1857 = !DILocation(line: 174, column: 36, scope: !1836)
!1858 = !DILocation(line: 176, column: 12, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 176, column: 7)
!1860 = !DILocation(line: 176, column: 18, scope: !1859)
!1861 = !DILocation(line: 176, column: 25, scope: !1859)
!1862 = !DILocation(line: 176, column: 30, scope: !1859)
!1863 = !DILocation(line: 176, column: 37, scope: !1859)
!1864 = !DILocation(line: 176, column: 42, scope: !1859)
!1865 = !DILocation(line: 176, column: 49, scope: !1859)
!1866 = !DILocation(line: 176, column: 7, scope: !1836)
!1867 = !DILocation(line: 177, column: 12, scope: !1859)
!1868 = !DILocation(line: 177, column: 5, scope: !1859)
!1869 = !DILocation(line: 180, column: 17, scope: !1836)
!1870 = !DILocation(line: 182, column: 7, scope: !1850)
!1871 = !DILocation(line: 182, column: 18, scope: !1850)
!1872 = !DILocation(line: 182, column: 7, scope: !1836)
!1873 = !DILocation(line: 185, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 183, column: 5)
!1875 = !DILocation(line: 185, column: 11, scope: !1874)
!1876 = !DILocation(line: 186, column: 28, scope: !1874)
!1877 = !DILocation(line: 186, column: 34, scope: !1874)
!1878 = !DILocation(line: 186, column: 14, scope: !1874)
!1879 = !DILocation(line: 187, column: 5, scope: !1874)
!1880 = !DILocation(line: 194, column: 32, scope: !1849)
!1881 = !DILocation(line: 194, column: 18, scope: !1849)
!1882 = !DILocation(line: 196, column: 7, scope: !1849)
!1883 = !DILocation(line: 196, column: 23, scope: !1849)
!1884 = !DILocation(line: 0, scope: !1849)
!1885 = !DILocation(line: 198, column: 12, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 198, column: 7)
!1887 = !DILocation(line: 194, column: 12, scope: !1849)
!1888 = !DILocation(line: 180, column: 10, scope: !1836)
!1889 = !DILocation(line: 199, column: 12, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 198, column: 7)
!1891 = !DILocation(line: 0, scope: !1890)
!1892 = !DILocation(line: 199, column: 30, scope: !1890)
!1893 = !DILocation(line: 199, column: 38, scope: !1890)
!1894 = !DILocation(line: 198, column: 7, scope: !1886)
!1895 = !DILocation(line: 203, column: 19, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 203, column: 15)
!1897 = distinct !DILexicalBlock(scope: !1890, file: !2, line: 201, column: 9)
!1898 = !DILocation(line: 203, column: 15, scope: !1897)
!1899 = !DILocation(line: 204, column: 13, scope: !1896)
!1900 = !DILocation(line: 207, column: 11, scope: !1897)
!1901 = !DILocation(line: 208, column: 33, scope: !1897)
!1902 = !DILocation(line: 208, column: 54, scope: !1897)
!1903 = !DILocation(line: 208, column: 18, scope: !1897)
!1904 = !DILocation(line: 209, column: 9, scope: !1897)
!1905 = !DILocation(line: 200, column: 12, scope: !1890)
!1906 = !DILocation(line: 200, column: 33, scope: !1890)
!1907 = !DILocation(line: 198, column: 7, scope: !1890)
!1908 = distinct !{!1908, !1894, !1909, !525, !526}
!1909 = !DILocation(line: 209, column: 9, scope: !1886)
!1910 = !DILocation(line: 210, column: 5, scope: !1850)
!1911 = !DILocation(line: 0, scope: !1850)
!1912 = !DILocation(line: 211, column: 9, scope: !1836)
!1913 = !DILocation(line: 213, column: 1, scope: !1836)
!1914 = distinct !DISubprogram(name: "eval7", scope: !2, file: !2, line: 663, type: !130, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, retainedNodes: !1915)
!1915 = !{!1916, !1917}
!1916 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1914, file: !2, line: 663, type: !157)
!1917 = !DILocalVariable(name: "v", scope: !1914, file: !2, line: 665, type: !132)
!1918 = !DILocation(line: 0, scope: !1914)
!1919 = !DILocation(line: 670, column: 3, scope: !1914)
!1920 = !DILocation(line: 672, column: 7, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 672, column: 7)
!1922 = !DILocation(line: 672, column: 7, scope: !1914)
!1923 = !DILocation(line: 674, column: 17, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 673, column: 5)
!1925 = !DILocation(line: 674, column: 11, scope: !1924)
!1926 = !DILocation(line: 675, column: 11, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 675, column: 11)
!1928 = !DILocation(line: 675, column: 11, scope: !1924)
!1929 = !DILocation(line: 676, column: 9, scope: !1927)
!1930 = !DILocation(line: 678, column: 12, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 678, column: 11)
!1932 = !DILocation(line: 678, column: 11, scope: !1924)
!1933 = !DILocation(line: 679, column: 9, scope: !1931)
!1934 = !DILocation(line: 681, column: 7, scope: !1924)
!1935 = !DILocation(line: 684, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 684, column: 7)
!1937 = !DILocation(line: 684, column: 7, scope: !1914)
!1938 = !DILocation(line: 685, column: 5, scope: !1936)
!1939 = !DILocation(line: 687, column: 26, scope: !1914)
!1940 = !DILocation(line: 687, column: 21, scope: !1914)
!1941 = !DILocation(line: 687, column: 10, scope: !1914)
!1942 = !DILocation(line: 687, column: 3, scope: !1914)
!1943 = !DILocation(line: 688, column: 1, scope: !1914)
!1944 = !DISubprogram(name: "mpz_fits_ulong_p", scope: !143, file: !143, line: 246, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1945 = !DISubprogram(name: "mpz_get_ui", scope: !143, file: !143, line: 252, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!154, !750}
!1948 = !DISubprogram(name: "mbschr", scope: !1732, file: !1732, line: 1541, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!156, !197, !149}
!1951 = !DISubprogram(name: "memcmp", scope: !554, file: !554, line: 71, type: !1952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!149, !1954, !1954, !200}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1956 = !DISubprogram(name: "strcspn", scope: !554, file: !554, line: 80, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !484)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!154, !197, !197}
