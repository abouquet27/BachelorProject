; ModuleID = 'coreutils-9.3/build/src/test.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.infomap = type { ptr, ptr }
%struct._RuneLocale = type { [8 x i8], [32 x i8], ptr, ptr, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, ptr, i32, i32, ptr }
%struct._RuneRange = type { i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"Usage: test EXPRESSION\0A  or:  test\0A  or:  [ EXPRESSION ]\0A  or:  [ ]\0A  or:  [ OPTION\0A\00", align 1, !dbg !7
@__stdoutp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Exit with the status determined by EXPRESSION.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [120 x i8] c"\0AAn omitted EXPRESSION defaults to false.  Otherwise,\0AEXPRESSION is true or false and sets exit status.  It is one of:\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [249 x i8] c"\0A  ( EXPRESSION )               EXPRESSION is true\0A  ! EXPRESSION                 EXPRESSION is false\0A  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\0A  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [250 x i8] c"\0A  -n STRING            the length of STRING is nonzero\0A  STRING               equivalent to -n STRING\0A  -z STRING            the length of STRING is zero\0A  STRING1 = STRING2    the strings are equal\0A  STRING1 != STRING2   the strings are not equal\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [376 x i8] c"\0A  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\0A  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2\0A  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\0A  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\0A  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\0A  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [189 x i8] c"\0A  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\0A  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\0A  FILE1 -ot FILE2   FILE1 is older than FILE2\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [171 x i8] c"\0A  -b FILE     FILE exists and is block special\0A  -c FILE     FILE exists and is character special\0A  -d FILE     FILE exists and is a directory\0A  -e FILE     FILE exists\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [275 x i8] c"  -f FILE     FILE exists and is a regular file\0A  -g FILE     FILE exists and is set-group-ID\0A  -G FILE     FILE exists and is owned by the effective group ID\0A  -h FILE     FILE exists and is a symbolic link (same as -L)\0A  -k FILE     FILE exists and has its sticky bit set\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [358 x i8] c"  -L FILE     FILE exists and is a symbolic link (same as -h)\0A  -N FILE     FILE exists and has been modified since it was last read\0A  -O FILE     FILE exists and is owned by the effective user ID\0A  -p FILE     FILE exists and is a named pipe\0A  -r FILE     FILE exists and the user has read access\0A  -s FILE     FILE exists and has a size greater than zero\0A\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [283 x i8] c"  -S FILE     FILE exists and is a socket\0A  -t FD       file descriptor FD is opened on a terminal\0A  -u FILE     FILE exists and its set-user-ID bit is set\0A  -w FILE     FILE exists and the user has write access\0A  -x FILE     FILE exists and the user has execute (or search) access\0A\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [225 x i8] c"\0AExcept for -h and -L, all FILE-related tests dereference symbolic links.\0ABeware that parentheses need to be escaped (e.g., by backslashes) for shells.\0AINTEGER may also be -l STRING, which evaluates to the length of STRING.\0A\00", align 1, !dbg !72
@.str.15 = private unnamed_addr constant [122 x i8] c"\0ANOTE: Binary -a and -o are inherently ambiguous.  Use 'test EXPR1 && test\0AEXPR2' or 'test EXPR1 || test EXPR2' instead.\0A\00", align 1, !dbg !77
@.str.16 = private unnamed_addr constant [136 x i8] c"\0ANOTE: [ honors the --help and --version options, but test does not.\0Atest treats each of those as it treats any other nonempty STRING.\0A\00", align 1, !dbg !82
@.str.17 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !87
@.str.18 = private unnamed_addr constant [14 x i8] c"test and/or [\00", align 1, !dbg !92
@.str.19 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !97
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !102
@argv = internal global ptr null, align 8, !dbg !107
@argc = internal global i32 0, align 4, !dbg !129
@pos = internal global i32 0, align 4, !dbg !126
@.str.21 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1, !dbg !121
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !131
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !137
@.str.24 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !142
@.str.25 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !147
@.str.26 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !152
@.str.27 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !154
@.str.28 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !159
@.str.29 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !161
@.str.30 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !163
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.22, ptr @.str.23 }, %struct.infomap { ptr @.str.24, ptr @.str.25 }, %struct.infomap { ptr @.str.26, ptr @.str.27 }, %struct.infomap { ptr @.str.28, ptr @.str.27 }, %struct.infomap { ptr @.str.29, ptr @.str.27 }, %struct.infomap { ptr @.str.30, ptr @.str.27 }, %struct.infomap zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !165
@.str.32 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !170
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !172
@.str.34 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !177
@.str.35 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !182
@.str.36 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !187
@.str.37 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !192
@.str.38 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !197
@exit_failure = external global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"!\00", align 1, !dbg !202
@.str.40 = private unnamed_addr constant [2 x i8] c"(\00", align 1, !dbg !204
@.str.41 = private unnamed_addr constant [2 x i8] c")\00", align 1, !dbg !206
@.str.42 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1, !dbg !208
@.str.43 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1, !dbg !213
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8
@.str.44 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1, !dbg !218
@.str.45 = private unnamed_addr constant [3 x i8] c"-a\00", align 1, !dbg !223
@.str.46 = private unnamed_addr constant [3 x i8] c"-o\00", align 1, !dbg !228
@.str.47 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1, !dbg !230
@.str.48 = private unnamed_addr constant [2 x i8] c"=\00", align 1, !dbg !235
@.str.49 = private unnamed_addr constant [3 x i8] c"!=\00", align 1, !dbg !237
@.str.50 = private unnamed_addr constant [3 x i8] c"==\00", align 1, !dbg !239
@.str.51 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1, !dbg !241
@.str.52 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1, !dbg !243
@.str.53 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1, !dbg !245
@.str.54 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1, !dbg !247
@.str.55 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1, !dbg !249
@.str.56 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1, !dbg !251
@.str.57 = private unnamed_addr constant [4 x i8] c"-le\00", align 1, !dbg !253
@.str.58 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1, !dbg !255
@.str.59 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1, !dbg !257
@.str.60 = private unnamed_addr constant [3 x i8] c"-l\00", align 1, !dbg !259
@.str.61 = private unnamed_addr constant [23 x i8] c"-nt does not accept -l\00", align 1, !dbg !261
@.str.62 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1, !dbg !263
@.str.63 = private unnamed_addr constant [23 x i8] c"-ot does not accept -l\00", align 1, !dbg !265
@.str.64 = private unnamed_addr constant [28 x i8] c"%s: unknown binary operator\00", align 1, !dbg !267
@.str.65 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1, !dbg !269
@.str.66 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1, !dbg !271

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !282 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !286, metadata !DIExpression()), !dbg !287
  %2 = icmp ne i32 %0, 0, !dbg !288
  br i1 %2, label %3, label %9, !dbg !290

3:                                                ; preds = %1
  br label %4, !dbg !291

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !292, !tbaa !294
  %6 = load ptr, ptr @program_name, align 8, !dbg !292, !tbaa !294
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !292
  br label %8, !dbg !292

8:                                                ; preds = %4
  br label %43, !dbg !292

9:                                                ; preds = %1
  %10 = load ptr, ptr @__stdoutp, align 8, !dbg !298, !tbaa !294
  %11 = call i32 @"\01_fputs"(ptr noundef @.str.1, ptr noundef %10), !dbg !300
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !301, !tbaa !294
  %13 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %12), !dbg !302
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !303, !tbaa !294
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %14), !dbg !304
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !305, !tbaa !294
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %16), !dbg !306
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !307, !tbaa !294
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %18), !dbg !308
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !309, !tbaa !294
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %20), !dbg !310
  %22 = load ptr, ptr @__stdoutp, align 8, !dbg !311, !tbaa !294
  %23 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %22), !dbg !312
  %24 = load ptr, ptr @__stdoutp, align 8, !dbg !313, !tbaa !294
  %25 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %24), !dbg !314
  %26 = load ptr, ptr @__stdoutp, align 8, !dbg !315, !tbaa !294
  %27 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %26), !dbg !316
  %28 = load ptr, ptr @__stdoutp, align 8, !dbg !317, !tbaa !294
  %29 = call i32 @"\01_fputs"(ptr noundef @.str.10, ptr noundef %28), !dbg !318
  %30 = load ptr, ptr @__stdoutp, align 8, !dbg !319, !tbaa !294
  %31 = call i32 @"\01_fputs"(ptr noundef @.str.11, ptr noundef %30), !dbg !320
  %32 = load ptr, ptr @__stdoutp, align 8, !dbg !321, !tbaa !294
  %33 = call i32 @"\01_fputs"(ptr noundef @.str.12, ptr noundef %32), !dbg !322
  %34 = load ptr, ptr @__stdoutp, align 8, !dbg !323, !tbaa !294
  %35 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %34), !dbg !324
  %36 = load ptr, ptr @__stdoutp, align 8, !dbg !325, !tbaa !294
  %37 = call i32 @"\01_fputs"(ptr noundef @.str.14, ptr noundef %36), !dbg !326
  %38 = load ptr, ptr @__stdoutp, align 8, !dbg !327, !tbaa !294
  %39 = call i32 @"\01_fputs"(ptr noundef @.str.15, ptr noundef %38), !dbg !328
  %40 = load ptr, ptr @__stdoutp, align 8, !dbg !329, !tbaa !294
  %41 = call i32 @"\01_fputs"(ptr noundef @.str.16, ptr noundef %40), !dbg !330
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, ptr noundef @.str.18), !dbg !331
  call void @emit_ancillary_info(ptr noundef @.str.19), !dbg !332
  br label %43

43:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #12, !dbg !333
  unreachable, !dbg !333
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !334 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !396 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

declare !dbg !399 i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !402 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !406, metadata !DIExpression()), !dbg !421
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #13, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %2, metadata !407, metadata !DIExpression()), !dbg !423
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !423
  call void @llvm.dbg.value(metadata ptr %0, metadata !416, metadata !DIExpression()), !dbg !421
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !424
  call void @llvm.dbg.value(metadata ptr %3, metadata !417, metadata !DIExpression()), !dbg !421
  br label %4, !dbg !425

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !421
  call void @llvm.dbg.value(metadata ptr %.0, metadata !417, metadata !DIExpression()), !dbg !421
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !426
  %6 = load ptr, ptr %5, align 8, !dbg !426, !tbaa !427
  %7 = icmp ne ptr %6, null, !dbg !429
  br i1 %7, label %8, label %14, !dbg !430

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !431
  %10 = load ptr, ptr %9, align 8, !dbg !431, !tbaa !427
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !431
  %12 = icmp eq i32 %11, 0, !dbg !431
  %13 = xor i1 %12, true, !dbg !432
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !421
  br i1 %15, label %16, label %18, !dbg !425

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !433
  call void @llvm.dbg.value(metadata ptr %17, metadata !417, metadata !DIExpression()), !dbg !421
  br label %4, !dbg !425, !llvm.loop !434

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !437
  %20 = load ptr, ptr %19, align 8, !dbg !437, !tbaa !439
  %21 = icmp ne ptr %20, null, !dbg !440
  br i1 %21, label %22, label %25, !dbg !441

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !442
  %24 = load ptr, ptr %23, align 8, !dbg !442, !tbaa !439
  call void @llvm.dbg.value(metadata ptr %24, metadata !416, metadata !DIExpression()), !dbg !421
  br label %25, !dbg !443

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !421
  call void @llvm.dbg.value(metadata ptr %.01, metadata !416, metadata !DIExpression()), !dbg !421
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.31, ptr noundef @.str.32, ptr noundef @.str.33), !dbg !444
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !445
  call void @llvm.dbg.value(metadata ptr %27, metadata !419, metadata !DIExpression()), !dbg !421
  %28 = icmp ne ptr %27, null, !dbg !446
  br i1 %28, label %29, label %35, !dbg !448

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.34, i64 noundef 3), !dbg !449
  %31 = icmp ne i32 %30, 0, !dbg !449
  br i1 %31, label %32, label %35, !dbg !450

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !451, !tbaa !294
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.35, ptr noundef %33), !dbg !453
  br label %35, !dbg !454

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.22), !dbg !455
  %37 = icmp eq i32 %36, 0, !dbg !455
  br i1 %37, label %38, label %39, !dbg !455

38:                                               ; preds = %35
  br label %40, !dbg !455

39:                                               ; preds = %35
  br label %40, !dbg !455

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.19, %38 ], [ %0, %39 ], !dbg !455
  call void @llvm.dbg.value(metadata ptr %41, metadata !420, metadata !DIExpression()), !dbg !421
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef @.str.33, ptr noundef %41), !dbg !456
  %43 = icmp eq ptr %.01, %0, !dbg !457
  %44 = zext i1 %43 to i64, !dbg !458
  %45 = select i1 %43, ptr @.str.38, ptr @.str.20, !dbg !458
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, ptr noundef %.01, ptr noundef %45), !dbg !459
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #13, !dbg !460
  ret void, !dbg !460
}

; Function Attrs: noreturn
declare !dbg !461 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !463 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !467 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !471 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !482, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata ptr %1, metadata !483, metadata !DIExpression()), !dbg !486
  %3 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !487
  %4 = load ptr, ptr %3, align 8, !dbg !487, !tbaa !294
  call void @set_program_name(ptr noundef %4), !dbg !488
  %5 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.20), !dbg !489
  call void @initialize_exit_failure(i32 noundef 2), !dbg !490
  %6 = call i32 @atexit(ptr noundef @close_stdout), !dbg !491
  store ptr %1, ptr @argv, align 8, !dbg !492, !tbaa !294
  store i32 %0, ptr @argc, align 4, !dbg !493, !tbaa !494
  store i32 1, ptr @pos, align 4, !dbg !496, !tbaa !494
  %7 = load i32, ptr @pos, align 4, !dbg !497, !tbaa !494
  %8 = load i32, ptr @argc, align 4, !dbg !499, !tbaa !494
  %9 = icmp sge i32 %7, %8, !dbg !500
  br i1 %9, label %10, label %11, !dbg !501

10:                                               ; preds = %2
  br label %30, !dbg !502

11:                                               ; preds = %2
  %12 = load i32, ptr @argc, align 4, !dbg !503, !tbaa !494
  %13 = sub nsw i32 %12, 1, !dbg !504
  %14 = call zeroext i1 @posixtest(i32 noundef %13), !dbg !505
  %15 = zext i1 %14 to i8, !dbg !506
  call void @llvm.dbg.value(metadata i8 %15, metadata !484, metadata !DIExpression()), !dbg !486
  %16 = load i32, ptr @pos, align 4, !dbg !507, !tbaa !494
  %17 = load i32, ptr @argc, align 4, !dbg !509, !tbaa !494
  %18 = icmp ne i32 %16, %17, !dbg !510
  br i1 %18, label %19, label %26, !dbg !511

19:                                               ; preds = %11
  %20 = load ptr, ptr @argv, align 8, !dbg !512, !tbaa !294
  %21 = load i32, ptr @pos, align 4, !dbg !513, !tbaa !494
  %22 = sext i32 %21 to i64, !dbg !512
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22, !dbg !512
  %24 = load ptr, ptr %23, align 8, !dbg !512, !tbaa !294
  %25 = call ptr @quote(ptr noundef %24), !dbg !514
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.21, ptr noundef %25) #12, !dbg !515
  unreachable, !dbg !515

26:                                               ; preds = %11
  %27 = trunc i8 %15 to i1, !dbg !516
  %28 = zext i1 %27 to i64, !dbg !516
  %29 = select i1 %27, i32 0, i32 1, !dbg !516
  br label %30, !dbg !516

30:                                               ; preds = %26, %10
  %.0 = phi i32 [ 1, %10 ], [ %29, %26 ], !dbg !486
  ret i32 %.0, !dbg !517
}

declare !dbg !518 void @set_program_name(ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @initialize_exit_failure(i32 noundef %0) #3 !dbg !520 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !522, metadata !DIExpression()), !dbg !523
  %2 = icmp ne i32 %0, 1, !dbg !524
  br i1 %2, label %3, label %4, !dbg !526

3:                                                ; preds = %1
  store volatile i32 %0, ptr @exit_failure, align 4, !dbg !527, !tbaa !494
  br label %4, !dbg !528

4:                                                ; preds = %3, %1
  ret void, !dbg !529
}

declare void @close_stdout() #2

declare !dbg !530 i32 @atexit(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @posixtest(i32 noundef %0) #7 !dbg !536 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !540, metadata !DIExpression()), !dbg !542
  switch i32 %0, label %45 [
    i32 1, label %2
    i32 2, label %5
    i32 3, label %8
    i32 4, label %11
    i32 5, label %44
  ], !dbg !543

2:                                                ; preds = %1
  %3 = call zeroext i1 @one_argument(), !dbg !544
  %4 = zext i1 %3 to i8, !dbg !546
  call void @llvm.dbg.value(metadata i8 %4, metadata !541, metadata !DIExpression()), !dbg !542
  br label %51, !dbg !547

5:                                                ; preds = %1
  %6 = call zeroext i1 @two_arguments(), !dbg !548
  %7 = zext i1 %6 to i8, !dbg !549
  call void @llvm.dbg.value(metadata i8 %7, metadata !541, metadata !DIExpression()), !dbg !542
  br label %51, !dbg !550

8:                                                ; preds = %1
  %9 = call zeroext i1 @three_arguments(), !dbg !551
  %10 = zext i1 %9 to i8, !dbg !552
  call void @llvm.dbg.value(metadata i8 %10, metadata !541, metadata !DIExpression()), !dbg !542
  br label %51, !dbg !553

11:                                               ; preds = %1
  %12 = load ptr, ptr @argv, align 8, !dbg !554, !tbaa !294
  %13 = load i32, ptr @pos, align 4, !dbg !554, !tbaa !494
  %14 = sext i32 %13 to i64, !dbg !554
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !554
  %16 = load ptr, ptr %15, align 8, !dbg !554, !tbaa !294
  %17 = call i32 @strcmp(ptr noundef %16, ptr noundef @.str.39), !dbg !554
  %18 = icmp eq i32 %17, 0, !dbg !554
  br i1 %18, label %19, label %23, !dbg !556

19:                                               ; preds = %11
  call void @advance(i1 noundef zeroext true), !dbg !557
  %20 = call zeroext i1 @three_arguments(), !dbg !559
  %21 = xor i1 %20, true, !dbg !560
  %22 = zext i1 %21 to i8, !dbg !561
  call void @llvm.dbg.value(metadata i8 %22, metadata !541, metadata !DIExpression()), !dbg !542
  br label %51, !dbg !562

23:                                               ; preds = %11
  %24 = load ptr, ptr @argv, align 8, !dbg !563, !tbaa !294
  %25 = load i32, ptr @pos, align 4, !dbg !563, !tbaa !494
  %26 = sext i32 %25 to i64, !dbg !563
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26, !dbg !563
  %28 = load ptr, ptr %27, align 8, !dbg !563, !tbaa !294
  %29 = call i32 @strcmp(ptr noundef %28, ptr noundef @.str.40), !dbg !563
  %30 = icmp eq i32 %29, 0, !dbg !563
  br i1 %30, label %31, label %43, !dbg !565

31:                                               ; preds = %23
  %32 = load ptr, ptr @argv, align 8, !dbg !566, !tbaa !294
  %33 = load i32, ptr @pos, align 4, !dbg !566, !tbaa !494
  %34 = add nsw i32 %33, 3, !dbg !566
  %35 = sext i32 %34 to i64, !dbg !566
  %36 = getelementptr inbounds ptr, ptr %32, i64 %35, !dbg !566
  %37 = load ptr, ptr %36, align 8, !dbg !566, !tbaa !294
  %38 = call i32 @strcmp(ptr noundef %37, ptr noundef @.str.41), !dbg !566
  %39 = icmp eq i32 %38, 0, !dbg !566
  br i1 %39, label %40, label %43, !dbg !567

40:                                               ; preds = %31
  call void @advance(i1 noundef zeroext false), !dbg !568
  %41 = call zeroext i1 @two_arguments(), !dbg !570
  %42 = zext i1 %41 to i8, !dbg !571
  call void @llvm.dbg.value(metadata i8 %42, metadata !541, metadata !DIExpression()), !dbg !542
  call void @advance(i1 noundef zeroext false), !dbg !572
  br label %51, !dbg !573

43:                                               ; preds = %31, %23
  br label %44, !dbg !566

44:                                               ; preds = %43, %1
  br label %45, !dbg !574

45:                                               ; preds = %44, %1
  %46 = icmp sle i32 %0, 0, !dbg !575
  br i1 %46, label %47, label %48, !dbg !577

47:                                               ; preds = %45
  call void @abort() #14, !dbg !578
  unreachable, !dbg !578

48:                                               ; preds = %45
  %49 = call zeroext i1 @expr(), !dbg !579
  %50 = zext i1 %49 to i8, !dbg !580
  call void @llvm.dbg.value(metadata i8 %50, metadata !541, metadata !DIExpression()), !dbg !542
  br label %51, !dbg !581

51:                                               ; preds = %48, %40, %19, %8, %5, %2
  %.0 = phi i8 [ %50, %48 ], [ %22, %19 ], [ %42, %40 ], [ %10, %8 ], [ %7, %5 ], [ %4, %2 ], !dbg !582
  call void @llvm.dbg.value(metadata i8 %.0, metadata !541, metadata !DIExpression()), !dbg !542
  %52 = trunc i8 %.0 to i1, !dbg !583
  ret i1 %52, !dbg !584
}

declare !dbg !585 ptr @quote(ptr noundef) #2

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @test_syntax_error(ptr noundef %0, ...) #0 !dbg !589 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !593, metadata !DIExpression()), !dbg !605
  call void @llvm.lifetime.start.p0(i64 24, ptr %2) #13, !dbg !606
  call void @llvm.dbg.declare(metadata ptr %2, metadata !594, metadata !DIExpression()), !dbg !607
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %2, i64 0, i64 0, !dbg !608
  call void @llvm.va_start(ptr %3), !dbg !608
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %2, i64 0, i64 0, !dbg !609
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef %4), !dbg !610
  call void @exit(i32 noundef 2) #12, !dbg !611
  unreachable, !dbg !611
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

declare !dbg !612 void @verror(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @one_argument() #7 !dbg !617 {
  %1 = load ptr, ptr @argv, align 8, !dbg !620, !tbaa !294
  %2 = load i32, ptr @pos, align 4, !dbg !621, !tbaa !494
  %3 = add nsw i32 %2, 1, !dbg !621
  store i32 %3, ptr @pos, align 4, !dbg !621, !tbaa !494
  %4 = sext i32 %2 to i64, !dbg !620
  %5 = getelementptr inbounds ptr, ptr %1, i64 %4, !dbg !620
  %6 = load ptr, ptr %5, align 8, !dbg !620, !tbaa !294
  %7 = getelementptr inbounds i8, ptr %6, i64 0, !dbg !620
  %8 = load i8, ptr %7, align 1, !dbg !620, !tbaa !622
  %9 = sext i8 %8 to i32, !dbg !620
  %10 = icmp ne i32 %9, 0, !dbg !623
  ret i1 %10, !dbg !624
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @two_arguments() #7 !dbg !625 {
  %1 = load ptr, ptr @argv, align 8, !dbg !628, !tbaa !294
  %2 = load i32, ptr @pos, align 4, !dbg !628, !tbaa !494
  %3 = sext i32 %2 to i64, !dbg !628
  %4 = getelementptr inbounds ptr, ptr %1, i64 %3, !dbg !628
  %5 = load ptr, ptr %4, align 8, !dbg !628, !tbaa !294
  %6 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.39), !dbg !628
  %7 = icmp eq i32 %6, 0, !dbg !628
  br i1 %7, label %8, label %12, !dbg !630

8:                                                ; preds = %0
  call void @advance(i1 noundef zeroext false), !dbg !631
  %9 = call zeroext i1 @one_argument(), !dbg !633
  %10 = xor i1 %9, true, !dbg !634
  %11 = zext i1 %10 to i8, !dbg !635
  call void @llvm.dbg.value(metadata i8 %11, metadata !627, metadata !DIExpression()), !dbg !636
  br label %47, !dbg !637

12:                                               ; preds = %0
  %13 = load ptr, ptr @argv, align 8, !dbg !638, !tbaa !294
  %14 = load i32, ptr @pos, align 4, !dbg !640, !tbaa !494
  %15 = sext i32 %14 to i64, !dbg !638
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15, !dbg !638
  %17 = load ptr, ptr %16, align 8, !dbg !638, !tbaa !294
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !638
  %19 = load i8, ptr %18, align 1, !dbg !638, !tbaa !622
  %20 = sext i8 %19 to i32, !dbg !638
  %21 = icmp eq i32 %20, 45, !dbg !641
  br i1 %21, label %22, label %45, !dbg !642

22:                                               ; preds = %12
  %23 = load ptr, ptr @argv, align 8, !dbg !643, !tbaa !294
  %24 = load i32, ptr @pos, align 4, !dbg !644, !tbaa !494
  %25 = sext i32 %24 to i64, !dbg !643
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25, !dbg !643
  %27 = load ptr, ptr %26, align 8, !dbg !643, !tbaa !294
  %28 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !643
  %29 = load i8, ptr %28, align 1, !dbg !643, !tbaa !622
  %30 = sext i8 %29 to i32, !dbg !643
  %31 = icmp ne i32 %30, 0, !dbg !645
  br i1 %31, label %32, label %45, !dbg !646

32:                                               ; preds = %22
  %33 = load ptr, ptr @argv, align 8, !dbg !647, !tbaa !294
  %34 = load i32, ptr @pos, align 4, !dbg !648, !tbaa !494
  %35 = sext i32 %34 to i64, !dbg !647
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35, !dbg !647
  %37 = load ptr, ptr %36, align 8, !dbg !647, !tbaa !294
  %38 = getelementptr inbounds i8, ptr %37, i64 2, !dbg !647
  %39 = load i8, ptr %38, align 1, !dbg !647, !tbaa !622
  %40 = sext i8 %39 to i32, !dbg !647
  %41 = icmp eq i32 %40, 0, !dbg !649
  br i1 %41, label %42, label %45, !dbg !650

42:                                               ; preds = %32
  %43 = call zeroext i1 @unary_operator(), !dbg !651
  %44 = zext i1 %43 to i8, !dbg !653
  call void @llvm.dbg.value(metadata i8 %44, metadata !627, metadata !DIExpression()), !dbg !636
  br label %46, !dbg !654

45:                                               ; preds = %32, %22, %12
  call void @beyond() #12, !dbg !655
  unreachable, !dbg !655

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %8
  %.0 = phi i8 [ %11, %8 ], [ %44, %46 ], !dbg !656
  call void @llvm.dbg.value(metadata i8 %.0, metadata !627, metadata !DIExpression()), !dbg !636
  %48 = trunc i8 %.0 to i1, !dbg !657
  ret i1 %48, !dbg !658
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @three_arguments() #7 !dbg !659 {
  %1 = load ptr, ptr @argv, align 8, !dbg !662, !tbaa !294
  %2 = load i32, ptr @pos, align 4, !dbg !664, !tbaa !494
  %3 = add nsw i32 %2, 1, !dbg !665
  %4 = sext i32 %3 to i64, !dbg !662
  %5 = getelementptr inbounds ptr, ptr %1, i64 %4, !dbg !662
  %6 = load ptr, ptr %5, align 8, !dbg !662, !tbaa !294
  %7 = call zeroext i1 @binop(ptr noundef %6), !dbg !666
  br i1 %7, label %8, label %11, !dbg !667

8:                                                ; preds = %0
  %9 = call zeroext i1 @binary_operator(i1 noundef zeroext false), !dbg !668
  %10 = zext i1 %9 to i8, !dbg !669
  call void @llvm.dbg.value(metadata i8 %10, metadata !661, metadata !DIExpression()), !dbg !670
  br label %75, !dbg !671

11:                                               ; preds = %0
  %12 = load ptr, ptr @argv, align 8, !dbg !672, !tbaa !294
  %13 = load i32, ptr @pos, align 4, !dbg !672, !tbaa !494
  %14 = sext i32 %13 to i64, !dbg !672
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !672
  %16 = load ptr, ptr %15, align 8, !dbg !672, !tbaa !294
  %17 = call i32 @strcmp(ptr noundef %16, ptr noundef @.str.39), !dbg !672
  %18 = icmp eq i32 %17, 0, !dbg !672
  br i1 %18, label %19, label %23, !dbg !674

19:                                               ; preds = %11
  call void @advance(i1 noundef zeroext true), !dbg !675
  %20 = call zeroext i1 @two_arguments(), !dbg !677
  %21 = xor i1 %20, true, !dbg !678
  %22 = zext i1 %21 to i8, !dbg !679
  call void @llvm.dbg.value(metadata i8 %22, metadata !661, metadata !DIExpression()), !dbg !670
  br label %74, !dbg !680

23:                                               ; preds = %11
  %24 = load ptr, ptr @argv, align 8, !dbg !681, !tbaa !294
  %25 = load i32, ptr @pos, align 4, !dbg !681, !tbaa !494
  %26 = sext i32 %25 to i64, !dbg !681
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26, !dbg !681
  %28 = load ptr, ptr %27, align 8, !dbg !681, !tbaa !294
  %29 = call i32 @strcmp(ptr noundef %28, ptr noundef @.str.40), !dbg !681
  %30 = icmp eq i32 %29, 0, !dbg !681
  br i1 %30, label %31, label %43, !dbg !683

31:                                               ; preds = %23
  %32 = load ptr, ptr @argv, align 8, !dbg !684, !tbaa !294
  %33 = load i32, ptr @pos, align 4, !dbg !684, !tbaa !494
  %34 = add nsw i32 %33, 2, !dbg !684
  %35 = sext i32 %34 to i64, !dbg !684
  %36 = getelementptr inbounds ptr, ptr %32, i64 %35, !dbg !684
  %37 = load ptr, ptr %36, align 8, !dbg !684, !tbaa !294
  %38 = call i32 @strcmp(ptr noundef %37, ptr noundef @.str.41), !dbg !684
  %39 = icmp eq i32 %38, 0, !dbg !684
  br i1 %39, label %40, label %43, !dbg !685

40:                                               ; preds = %31
  call void @advance(i1 noundef zeroext false), !dbg !686
  %41 = call zeroext i1 @one_argument(), !dbg !688
  %42 = zext i1 %41 to i8, !dbg !689
  call void @llvm.dbg.value(metadata i8 %42, metadata !661, metadata !DIExpression()), !dbg !670
  call void @advance(i1 noundef zeroext false), !dbg !690
  br label %73, !dbg !691

43:                                               ; preds = %31, %23
  %44 = load ptr, ptr @argv, align 8, !dbg !692, !tbaa !294
  %45 = load i32, ptr @pos, align 4, !dbg !692, !tbaa !494
  %46 = add nsw i32 %45, 1, !dbg !692
  %47 = sext i32 %46 to i64, !dbg !692
  %48 = getelementptr inbounds ptr, ptr %44, i64 %47, !dbg !692
  %49 = load ptr, ptr %48, align 8, !dbg !692, !tbaa !294
  %50 = call i32 @strcmp(ptr noundef %49, ptr noundef @.str.45), !dbg !692
  %51 = icmp eq i32 %50, 0, !dbg !692
  br i1 %51, label %61, label %52, !dbg !694

52:                                               ; preds = %43
  %53 = load ptr, ptr @argv, align 8, !dbg !695, !tbaa !294
  %54 = load i32, ptr @pos, align 4, !dbg !695, !tbaa !494
  %55 = add nsw i32 %54, 1, !dbg !695
  %56 = sext i32 %55 to i64, !dbg !695
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56, !dbg !695
  %58 = load ptr, ptr %57, align 8, !dbg !695, !tbaa !294
  %59 = call i32 @strcmp(ptr noundef %58, ptr noundef @.str.46), !dbg !695
  %60 = icmp eq i32 %59, 0, !dbg !695
  br i1 %60, label %61, label %64, !dbg !696

61:                                               ; preds = %52, %43
  %62 = call zeroext i1 @expr(), !dbg !697
  %63 = zext i1 %62 to i8, !dbg !698
  call void @llvm.dbg.value(metadata i8 %63, metadata !661, metadata !DIExpression()), !dbg !670
  br label %72, !dbg !699

64:                                               ; preds = %52
  %65 = load ptr, ptr @argv, align 8, !dbg !700, !tbaa !294
  %66 = load i32, ptr @pos, align 4, !dbg !701, !tbaa !494
  %67 = add nsw i32 %66, 1, !dbg !702
  %68 = sext i32 %67 to i64, !dbg !700
  %69 = getelementptr inbounds ptr, ptr %65, i64 %68, !dbg !700
  %70 = load ptr, ptr %69, align 8, !dbg !700, !tbaa !294
  %71 = call ptr @quote(ptr noundef %70), !dbg !703
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.47, ptr noundef %71) #12, !dbg !704
  unreachable, !dbg !704

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %40
  %.0 = phi i8 [ %42, %40 ], [ %63, %72 ], !dbg !705
  call void @llvm.dbg.value(metadata i8 %.0, metadata !661, metadata !DIExpression()), !dbg !670
  br label %74

74:                                               ; preds = %73, %19
  %.1 = phi i8 [ %22, %19 ], [ %.0, %73 ], !dbg !706
  call void @llvm.dbg.value(metadata i8 %.1, metadata !661, metadata !DIExpression()), !dbg !670
  br label %75

75:                                               ; preds = %74, %8
  %.2 = phi i8 [ %10, %8 ], [ %.1, %74 ], !dbg !707
  call void @llvm.dbg.value(metadata i8 %.2, metadata !661, metadata !DIExpression()), !dbg !670
  %76 = trunc i8 %.2 to i1, !dbg !708
  ret i1 %76, !dbg !709
}

; Function Attrs: nounwind ssp uwtable
define internal void @advance(i1 noundef zeroext %0) #7 !dbg !710 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !714, metadata !DIExpression()), !dbg !715
  %3 = load i32, ptr @pos, align 4, !dbg !716, !tbaa !494
  %4 = add nsw i32 %3, 1, !dbg !716
  store i32 %4, ptr @pos, align 4, !dbg !716, !tbaa !494
  %5 = trunc i8 %2 to i1, !dbg !717
  br i1 %5, label %6, label %11, !dbg !719

6:                                                ; preds = %1
  %7 = load i32, ptr @pos, align 4, !dbg !720, !tbaa !494
  %8 = load i32, ptr @argc, align 4, !dbg !721, !tbaa !494
  %9 = icmp sge i32 %7, %8, !dbg !722
  br i1 %9, label %10, label %11, !dbg !723

10:                                               ; preds = %6
  call void @beyond(), !dbg !724
  unreachable, !dbg !724

11:                                               ; preds = %6, %1
  ret void, !dbg !725
}

; Function Attrs: cold noreturn
declare !dbg !726 void @abort() #9

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @expr() #7 !dbg !727 {
  %1 = load i32, ptr @pos, align 4, !dbg !728, !tbaa !494
  %2 = load i32, ptr @argc, align 4, !dbg !730, !tbaa !494
  %3 = icmp sge i32 %1, %2, !dbg !731
  br i1 %3, label %4, label %5, !dbg !732

4:                                                ; preds = %0
  call void @beyond() #12, !dbg !733
  unreachable, !dbg !733

5:                                                ; preds = %0
  %6 = call zeroext i1 @or(), !dbg !734
  ret i1 %6, !dbg !735
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @beyond() #0 !dbg !736 {
  %1 = load ptr, ptr @argv, align 8, !dbg !737, !tbaa !294
  %2 = load i32, ptr @argc, align 4, !dbg !738, !tbaa !494
  %3 = sub nsw i32 %2, 1, !dbg !739
  %4 = sext i32 %3 to i64, !dbg !737
  %5 = getelementptr inbounds ptr, ptr %1, i64 %4, !dbg !737
  %6 = load ptr, ptr %5, align 8, !dbg !737, !tbaa !294
  %7 = call ptr @quote(ptr noundef %6), !dbg !740
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.44, ptr noundef %7) #12, !dbg !741
  unreachable, !dbg !741
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @or() #7 !dbg !742 {
  call void @llvm.dbg.value(metadata i8 0, metadata !744, metadata !DIExpression()), !dbg !745
  br label %1, !dbg !746

1:                                                ; preds = %23, %0
  %.0 = phi i8 [ 0, %0 ], [ %9, %23 ], !dbg !745
  call void @llvm.dbg.value(metadata i8 %.0, metadata !744, metadata !DIExpression()), !dbg !745
  br label %2, !dbg !746

2:                                                ; preds = %1
  %3 = call zeroext i1 @and(), !dbg !747
  %4 = zext i1 %3 to i32, !dbg !747
  %5 = trunc i8 %.0 to i1, !dbg !749
  %6 = zext i1 %5 to i32, !dbg !749
  %7 = or i32 %6, %4, !dbg !749
  %8 = icmp ne i32 %7, 0, !dbg !749
  %9 = zext i1 %8 to i8, !dbg !749
  call void @llvm.dbg.value(metadata i8 %9, metadata !744, metadata !DIExpression()), !dbg !745
  %10 = load i32, ptr @pos, align 4, !dbg !750, !tbaa !494
  %11 = load i32, ptr @argc, align 4, !dbg !752, !tbaa !494
  %12 = icmp slt i32 %10, %11, !dbg !753
  br i1 %12, label %13, label %21, !dbg !754

13:                                               ; preds = %2
  %14 = load ptr, ptr @argv, align 8, !dbg !755, !tbaa !294
  %15 = load i32, ptr @pos, align 4, !dbg !755, !tbaa !494
  %16 = sext i32 %15 to i64, !dbg !755
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16, !dbg !755
  %18 = load ptr, ptr %17, align 8, !dbg !755, !tbaa !294
  %19 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.46), !dbg !755
  %20 = icmp eq i32 %19, 0, !dbg !755
  br i1 %20, label %23, label %21, !dbg !756

21:                                               ; preds = %13, %2
  %22 = trunc i8 %9 to i1, !dbg !757
  ret i1 %22, !dbg !758

23:                                               ; preds = %13
  call void @advance(i1 noundef zeroext false), !dbg !759
  br label %1, !dbg !746, !llvm.loop !760
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @and() #7 !dbg !762 {
  call void @llvm.dbg.value(metadata i8 1, metadata !764, metadata !DIExpression()), !dbg !765
  br label %1, !dbg !766

1:                                                ; preds = %23, %0
  %.0 = phi i8 [ 1, %0 ], [ %9, %23 ], !dbg !765
  call void @llvm.dbg.value(metadata i8 %.0, metadata !764, metadata !DIExpression()), !dbg !765
  br label %2, !dbg !766

2:                                                ; preds = %1
  %3 = call zeroext i1 @term(), !dbg !767
  %4 = zext i1 %3 to i32, !dbg !767
  %5 = trunc i8 %.0 to i1, !dbg !769
  %6 = zext i1 %5 to i32, !dbg !769
  %7 = and i32 %6, %4, !dbg !769
  %8 = icmp ne i32 %7, 0, !dbg !769
  %9 = zext i1 %8 to i8, !dbg !769
  call void @llvm.dbg.value(metadata i8 %9, metadata !764, metadata !DIExpression()), !dbg !765
  %10 = load i32, ptr @pos, align 4, !dbg !770, !tbaa !494
  %11 = load i32, ptr @argc, align 4, !dbg !772, !tbaa !494
  %12 = icmp slt i32 %10, %11, !dbg !773
  br i1 %12, label %13, label %21, !dbg !774

13:                                               ; preds = %2
  %14 = load ptr, ptr @argv, align 8, !dbg !775, !tbaa !294
  %15 = load i32, ptr @pos, align 4, !dbg !775, !tbaa !494
  %16 = sext i32 %15 to i64, !dbg !775
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16, !dbg !775
  %18 = load ptr, ptr %17, align 8, !dbg !775, !tbaa !294
  %19 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.45), !dbg !775
  %20 = icmp eq i32 %19, 0, !dbg !775
  br i1 %20, label %23, label %21, !dbg !776

21:                                               ; preds = %13, %2
  %22 = trunc i8 %9 to i1, !dbg !777
  ret i1 %22, !dbg !778

23:                                               ; preds = %13
  call void @advance(i1 noundef zeroext false), !dbg !779
  br label %1, !dbg !766, !llvm.loop !780
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @term() #7 !dbg !782 {
  call void @llvm.dbg.value(metadata i8 0, metadata !785, metadata !DIExpression()), !dbg !789
  br label %1, !dbg !790

1:                                                ; preds = %27, %0
  %.01 = phi i8 [ 0, %0 ], [ %30, %27 ], !dbg !789
  call void @llvm.dbg.value(metadata i8 %.01, metadata !785, metadata !DIExpression()), !dbg !789
  %2 = load i32, ptr @pos, align 4, !dbg !791, !tbaa !494
  %3 = load i32, ptr @argc, align 4, !dbg !792, !tbaa !494
  %4 = icmp slt i32 %2, %3, !dbg !793
  br i1 %4, label %5, label %25, !dbg !794

5:                                                ; preds = %1
  %6 = load ptr, ptr @argv, align 8, !dbg !795, !tbaa !294
  %7 = load i32, ptr @pos, align 4, !dbg !796, !tbaa !494
  %8 = sext i32 %7 to i64, !dbg !795
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8, !dbg !795
  %10 = load ptr, ptr %9, align 8, !dbg !795, !tbaa !294
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !795
  %12 = load i8, ptr %11, align 1, !dbg !795, !tbaa !622
  %13 = sext i8 %12 to i32, !dbg !795
  %14 = icmp eq i32 %13, 33, !dbg !797
  br i1 %14, label %15, label %25, !dbg !798

15:                                               ; preds = %5
  %16 = load ptr, ptr @argv, align 8, !dbg !799, !tbaa !294
  %17 = load i32, ptr @pos, align 4, !dbg !800, !tbaa !494
  %18 = sext i32 %17 to i64, !dbg !799
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18, !dbg !799
  %20 = load ptr, ptr %19, align 8, !dbg !799, !tbaa !294
  %21 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !799
  %22 = load i8, ptr %21, align 1, !dbg !799, !tbaa !622
  %23 = sext i8 %22 to i32, !dbg !799
  %24 = icmp eq i32 %23, 0, !dbg !801
  br label %25

25:                                               ; preds = %15, %5, %1
  %26 = phi i1 [ false, %5 ], [ false, %1 ], [ %24, %15 ], !dbg !789
  br i1 %26, label %27, label %31, !dbg !790

27:                                               ; preds = %25
  call void @advance(i1 noundef zeroext true), !dbg !802
  %28 = trunc i8 %.01 to i1, !dbg !804
  %29 = xor i1 %28, true, !dbg !805
  %30 = zext i1 %29 to i8, !dbg !806
  call void @llvm.dbg.value(metadata i8 %30, metadata !785, metadata !DIExpression()), !dbg !789
  br label %1, !dbg !790, !llvm.loop !807

31:                                               ; preds = %25
  %32 = load i32, ptr @pos, align 4, !dbg !809, !tbaa !494
  %33 = load i32, ptr @argc, align 4, !dbg !811, !tbaa !494
  %34 = icmp sge i32 %32, %33, !dbg !812
  br i1 %34, label %35, label %36, !dbg !813

35:                                               ; preds = %31
  call void @beyond() #12, !dbg !814
  unreachable, !dbg !814

36:                                               ; preds = %31
  %37 = load ptr, ptr @argv, align 8, !dbg !815, !tbaa !294
  %38 = load i32, ptr @pos, align 4, !dbg !816, !tbaa !494
  %39 = sext i32 %38 to i64, !dbg !815
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39, !dbg !815
  %41 = load ptr, ptr %40, align 8, !dbg !815, !tbaa !294
  %42 = getelementptr inbounds i8, ptr %41, i64 0, !dbg !815
  %43 = load i8, ptr %42, align 1, !dbg !815, !tbaa !622
  %44 = sext i8 %43 to i32, !dbg !815
  %45 = icmp eq i32 %44, 40, !dbg !817
  br i1 %45, label %46, label %124, !dbg !818

46:                                               ; preds = %36
  %47 = load ptr, ptr @argv, align 8, !dbg !819, !tbaa !294
  %48 = load i32, ptr @pos, align 4, !dbg !820, !tbaa !494
  %49 = sext i32 %48 to i64, !dbg !819
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49, !dbg !819
  %51 = load ptr, ptr %50, align 8, !dbg !819, !tbaa !294
  %52 = getelementptr inbounds i8, ptr %51, i64 1, !dbg !819
  %53 = load i8, ptr %52, align 1, !dbg !819, !tbaa !622
  %54 = sext i8 %53 to i32, !dbg !819
  %55 = icmp eq i32 %54, 0, !dbg !821
  br i1 %55, label %56, label %124, !dbg !822

56:                                               ; preds = %46
  call void @advance(i1 noundef zeroext true), !dbg !823
  call void @llvm.dbg.value(metadata i32 1, metadata !786, metadata !DIExpression()), !dbg !824
  br label %57, !dbg !825

57:                                               ; preds = %81, %56
  %.02 = phi i32 [ 1, %56 ], [ %82, %81 ], !dbg !827
  call void @llvm.dbg.value(metadata i32 %.02, metadata !786, metadata !DIExpression()), !dbg !824
  %58 = load i32, ptr @pos, align 4, !dbg !828, !tbaa !494
  %59 = add nsw i32 %58, %.02, !dbg !830
  %60 = load i32, ptr @argc, align 4, !dbg !831, !tbaa !494
  %61 = icmp slt i32 %59, %60, !dbg !832
  br i1 %61, label %62, label %72, !dbg !833

62:                                               ; preds = %57
  %63 = load ptr, ptr @argv, align 8, !dbg !834, !tbaa !294
  %64 = load i32, ptr @pos, align 4, !dbg !834, !tbaa !494
  %65 = add nsw i32 %64, %.02, !dbg !834
  %66 = sext i32 %65 to i64, !dbg !834
  %67 = getelementptr inbounds ptr, ptr %63, i64 %66, !dbg !834
  %68 = load ptr, ptr %67, align 8, !dbg !834, !tbaa !294
  %69 = call i32 @strcmp(ptr noundef %68, ptr noundef @.str.41), !dbg !834
  %70 = icmp eq i32 %69, 0, !dbg !834
  %71 = xor i1 %70, true, !dbg !835
  br label %72

72:                                               ; preds = %62, %57
  %73 = phi i1 [ false, %57 ], [ %71, %62 ], !dbg !836
  br i1 %73, label %74, label %83, !dbg !837

74:                                               ; preds = %72
  %75 = icmp eq i32 %.02, 4, !dbg !838
  br i1 %75, label %76, label %80, !dbg !840

76:                                               ; preds = %74
  %77 = load i32, ptr @argc, align 4, !dbg !841, !tbaa !494
  %78 = load i32, ptr @pos, align 4, !dbg !843, !tbaa !494
  %79 = sub nsw i32 %77, %78, !dbg !844
  call void @llvm.dbg.value(metadata i32 %79, metadata !786, metadata !DIExpression()), !dbg !824
  br label %83, !dbg !845

80:                                               ; preds = %74
  br label %81, !dbg !846

81:                                               ; preds = %80
  %82 = add nsw i32 %.02, 1, !dbg !847
  call void @llvm.dbg.value(metadata i32 %82, metadata !786, metadata !DIExpression()), !dbg !824
  br label %57, !dbg !848, !llvm.loop !849

83:                                               ; preds = %76, %72
  %.13 = phi i32 [ %79, %76 ], [ %.02, %72 ], !dbg !827
  call void @llvm.dbg.value(metadata i32 %.13, metadata !786, metadata !DIExpression()), !dbg !824
  %84 = call zeroext i1 @posixtest(i32 noundef %.13), !dbg !851
  %85 = zext i1 %84 to i8, !dbg !852
  call void @llvm.dbg.value(metadata i8 %85, metadata !784, metadata !DIExpression()), !dbg !789
  %86 = load ptr, ptr @argv, align 8, !dbg !853, !tbaa !294
  %87 = load i32, ptr @pos, align 4, !dbg !855, !tbaa !494
  %88 = sext i32 %87 to i64, !dbg !853
  %89 = getelementptr inbounds ptr, ptr %86, i64 %88, !dbg !853
  %90 = load ptr, ptr %89, align 8, !dbg !853, !tbaa !294
  %91 = icmp eq ptr %90, null, !dbg !856
  br i1 %91, label %92, label %94, !dbg !857

92:                                               ; preds = %83
  %93 = call ptr @quote(ptr noundef @.str.41), !dbg !858
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.65, ptr noundef %93) #12, !dbg !859
  unreachable, !dbg !859

94:                                               ; preds = %83
  %95 = load ptr, ptr @argv, align 8, !dbg !860, !tbaa !294
  %96 = load i32, ptr @pos, align 4, !dbg !862, !tbaa !494
  %97 = sext i32 %96 to i64, !dbg !860
  %98 = getelementptr inbounds ptr, ptr %95, i64 %97, !dbg !860
  %99 = load ptr, ptr %98, align 8, !dbg !860, !tbaa !294
  %100 = getelementptr inbounds i8, ptr %99, i64 0, !dbg !860
  %101 = load i8, ptr %100, align 1, !dbg !860, !tbaa !622
  %102 = sext i8 %101 to i32, !dbg !860
  %103 = icmp ne i32 %102, 41, !dbg !863
  br i1 %103, label %114, label %104, !dbg !864

104:                                              ; preds = %94
  %105 = load ptr, ptr @argv, align 8, !dbg !865, !tbaa !294
  %106 = load i32, ptr @pos, align 4, !dbg !866, !tbaa !494
  %107 = sext i32 %106 to i64, !dbg !865
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107, !dbg !865
  %109 = load ptr, ptr %108, align 8, !dbg !865, !tbaa !294
  %110 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !865
  %111 = load i8, ptr %110, align 1, !dbg !865, !tbaa !622
  %112 = sext i8 %111 to i32, !dbg !865
  %113 = icmp ne i32 %112, 0, !dbg !865
  br i1 %113, label %114, label %122, !dbg !867

114:                                              ; preds = %104, %94
  %115 = call ptr @quote_n(i32 noundef 0, ptr noundef @.str.41), !dbg !868
  %116 = load ptr, ptr @argv, align 8, !dbg !869, !tbaa !294
  %117 = load i32, ptr @pos, align 4, !dbg !870, !tbaa !494
  %118 = sext i32 %117 to i64, !dbg !869
  %119 = getelementptr inbounds ptr, ptr %116, i64 %118, !dbg !869
  %120 = load ptr, ptr %119, align 8, !dbg !869, !tbaa !294
  %121 = call ptr @quote_n(i32 noundef 1, ptr noundef %120), !dbg !871
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.66, ptr noundef %115, ptr noundef %121) #12, !dbg !872
  unreachable, !dbg !872

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122
  call void @advance(i1 noundef zeroext false), !dbg !873
  br label %211, !dbg !874

124:                                              ; preds = %46, %36
  %125 = load i32, ptr @argc, align 4, !dbg !875, !tbaa !494
  %126 = load i32, ptr @pos, align 4, !dbg !877, !tbaa !494
  %127 = sub nsw i32 %125, %126, !dbg !878
  %128 = icmp sle i32 4, %127, !dbg !879
  br i1 %128, label %129, label %148, !dbg !880

129:                                              ; preds = %124
  %130 = load ptr, ptr @argv, align 8, !dbg !881, !tbaa !294
  %131 = load i32, ptr @pos, align 4, !dbg !881, !tbaa !494
  %132 = sext i32 %131 to i64, !dbg !881
  %133 = getelementptr inbounds ptr, ptr %130, i64 %132, !dbg !881
  %134 = load ptr, ptr %133, align 8, !dbg !881, !tbaa !294
  %135 = call i32 @strcmp(ptr noundef %134, ptr noundef @.str.60), !dbg !881
  %136 = icmp eq i32 %135, 0, !dbg !881
  br i1 %136, label %137, label %148, !dbg !882

137:                                              ; preds = %129
  %138 = load ptr, ptr @argv, align 8, !dbg !883, !tbaa !294
  %139 = load i32, ptr @pos, align 4, !dbg !884, !tbaa !494
  %140 = add nsw i32 %139, 2, !dbg !885
  %141 = sext i32 %140 to i64, !dbg !883
  %142 = getelementptr inbounds ptr, ptr %138, i64 %141, !dbg !883
  %143 = load ptr, ptr %142, align 8, !dbg !883, !tbaa !294
  %144 = call zeroext i1 @binop(ptr noundef %143), !dbg !886
  br i1 %144, label %145, label %148, !dbg !887

145:                                              ; preds = %137
  %146 = call zeroext i1 @binary_operator(i1 noundef zeroext true), !dbg !888
  %147 = zext i1 %146 to i8, !dbg !889
  call void @llvm.dbg.value(metadata i8 %147, metadata !784, metadata !DIExpression()), !dbg !789
  br label %210, !dbg !890

148:                                              ; preds = %137, %129, %124
  %149 = load i32, ptr @argc, align 4, !dbg !891, !tbaa !494
  %150 = load i32, ptr @pos, align 4, !dbg !893, !tbaa !494
  %151 = sub nsw i32 %149, %150, !dbg !894
  %152 = icmp sle i32 3, %151, !dbg !895
  br i1 %152, label %153, label %164, !dbg !896

153:                                              ; preds = %148
  %154 = load ptr, ptr @argv, align 8, !dbg !897, !tbaa !294
  %155 = load i32, ptr @pos, align 4, !dbg !898, !tbaa !494
  %156 = add nsw i32 %155, 1, !dbg !899
  %157 = sext i32 %156 to i64, !dbg !897
  %158 = getelementptr inbounds ptr, ptr %154, i64 %157, !dbg !897
  %159 = load ptr, ptr %158, align 8, !dbg !897, !tbaa !294
  %160 = call zeroext i1 @binop(ptr noundef %159), !dbg !900
  br i1 %160, label %161, label %164, !dbg !901

161:                                              ; preds = %153
  %162 = call zeroext i1 @binary_operator(i1 noundef zeroext false), !dbg !902
  %163 = zext i1 %162 to i8, !dbg !903
  call void @llvm.dbg.value(metadata i8 %163, metadata !784, metadata !DIExpression()), !dbg !789
  br label %209, !dbg !904

164:                                              ; preds = %153, %148
  %165 = load ptr, ptr @argv, align 8, !dbg !905, !tbaa !294
  %166 = load i32, ptr @pos, align 4, !dbg !907, !tbaa !494
  %167 = sext i32 %166 to i64, !dbg !905
  %168 = getelementptr inbounds ptr, ptr %165, i64 %167, !dbg !905
  %169 = load ptr, ptr %168, align 8, !dbg !905, !tbaa !294
  %170 = getelementptr inbounds i8, ptr %169, i64 0, !dbg !905
  %171 = load i8, ptr %170, align 1, !dbg !905, !tbaa !622
  %172 = sext i8 %171 to i32, !dbg !905
  %173 = icmp eq i32 %172, 45, !dbg !908
  br i1 %173, label %174, label %197, !dbg !909

174:                                              ; preds = %164
  %175 = load ptr, ptr @argv, align 8, !dbg !910, !tbaa !294
  %176 = load i32, ptr @pos, align 4, !dbg !911, !tbaa !494
  %177 = sext i32 %176 to i64, !dbg !910
  %178 = getelementptr inbounds ptr, ptr %175, i64 %177, !dbg !910
  %179 = load ptr, ptr %178, align 8, !dbg !910, !tbaa !294
  %180 = getelementptr inbounds i8, ptr %179, i64 1, !dbg !910
  %181 = load i8, ptr %180, align 1, !dbg !910, !tbaa !622
  %182 = sext i8 %181 to i32, !dbg !910
  %183 = icmp ne i32 %182, 0, !dbg !910
  br i1 %183, label %184, label %197, !dbg !912

184:                                              ; preds = %174
  %185 = load ptr, ptr @argv, align 8, !dbg !913, !tbaa !294
  %186 = load i32, ptr @pos, align 4, !dbg !914, !tbaa !494
  %187 = sext i32 %186 to i64, !dbg !913
  %188 = getelementptr inbounds ptr, ptr %185, i64 %187, !dbg !913
  %189 = load ptr, ptr %188, align 8, !dbg !913, !tbaa !294
  %190 = getelementptr inbounds i8, ptr %189, i64 2, !dbg !913
  %191 = load i8, ptr %190, align 1, !dbg !913, !tbaa !622
  %192 = sext i8 %191 to i32, !dbg !913
  %193 = icmp eq i32 %192, 0, !dbg !915
  br i1 %193, label %194, label %197, !dbg !916

194:                                              ; preds = %184
  %195 = call zeroext i1 @unary_operator(), !dbg !917
  %196 = zext i1 %195 to i8, !dbg !918
  call void @llvm.dbg.value(metadata i8 %196, metadata !784, metadata !DIExpression()), !dbg !789
  br label %208, !dbg !919

197:                                              ; preds = %184, %174, %164
  %198 = load ptr, ptr @argv, align 8, !dbg !920, !tbaa !294
  %199 = load i32, ptr @pos, align 4, !dbg !922, !tbaa !494
  %200 = sext i32 %199 to i64, !dbg !920
  %201 = getelementptr inbounds ptr, ptr %198, i64 %200, !dbg !920
  %202 = load ptr, ptr %201, align 8, !dbg !920, !tbaa !294
  %203 = getelementptr inbounds i8, ptr %202, i64 0, !dbg !920
  %204 = load i8, ptr %203, align 1, !dbg !920, !tbaa !622
  %205 = sext i8 %204 to i32, !dbg !920
  %206 = icmp ne i32 %205, 0, !dbg !923
  %207 = zext i1 %206 to i8, !dbg !924
  call void @llvm.dbg.value(metadata i8 %207, metadata !784, metadata !DIExpression()), !dbg !789
  call void @advance(i1 noundef zeroext false), !dbg !925
  br label %208

208:                                              ; preds = %197, %194
  %.0 = phi i8 [ %196, %194 ], [ %207, %197 ], !dbg !926
  call void @llvm.dbg.value(metadata i8 %.0, metadata !784, metadata !DIExpression()), !dbg !789
  br label %209

209:                                              ; preds = %208, %161
  %.1 = phi i8 [ %163, %161 ], [ %.0, %208 ], !dbg !927
  call void @llvm.dbg.value(metadata i8 %.1, metadata !784, metadata !DIExpression()), !dbg !789
  br label %210

210:                                              ; preds = %209, %145
  %.2 = phi i8 [ %147, %145 ], [ %.1, %209 ], !dbg !928
  call void @llvm.dbg.value(metadata i8 %.2, metadata !784, metadata !DIExpression()), !dbg !789
  br label %211

211:                                              ; preds = %210, %123
  %.3 = phi i8 [ %85, %123 ], [ %.2, %210 ], !dbg !929
  call void @llvm.dbg.value(metadata i8 %.3, metadata !784, metadata !DIExpression()), !dbg !789
  %212 = trunc i8 %.01 to i1, !dbg !930
  %213 = zext i1 %212 to i32, !dbg !930
  %214 = trunc i8 %.3 to i1, !dbg !931
  %215 = zext i1 %214 to i32, !dbg !931
  %216 = xor i32 %213, %215, !dbg !932
  %217 = icmp ne i32 %216, 0, !dbg !930
  ret i1 %217, !dbg !933
}

declare !dbg !934 ptr @quote_n(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @binop(ptr noundef %0) #7 !dbg !937 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !942
  %2 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.48), !dbg !943
  %3 = icmp eq i32 %2, 0, !dbg !943
  br i1 %3, label %37, label %4, !dbg !944

4:                                                ; preds = %1
  %5 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.49), !dbg !945
  %6 = icmp eq i32 %5, 0, !dbg !945
  br i1 %6, label %37, label %7, !dbg !946

7:                                                ; preds = %4
  %8 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.50), !dbg !947
  %9 = icmp eq i32 %8, 0, !dbg !947
  br i1 %9, label %37, label %10, !dbg !948

10:                                               ; preds = %7
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.51), !dbg !949
  %12 = icmp eq i32 %11, 0, !dbg !949
  br i1 %12, label %37, label %13, !dbg !950

13:                                               ; preds = %10
  %14 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.52), !dbg !951
  %15 = icmp eq i32 %14, 0, !dbg !951
  br i1 %15, label %37, label %16, !dbg !952

16:                                               ; preds = %13
  %17 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.53), !dbg !953
  %18 = icmp eq i32 %17, 0, !dbg !953
  br i1 %18, label %37, label %19, !dbg !954

19:                                               ; preds = %16
  %20 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.54), !dbg !955
  %21 = icmp eq i32 %20, 0, !dbg !955
  br i1 %21, label %37, label %22, !dbg !956

22:                                               ; preds = %19
  %23 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.55), !dbg !957
  %24 = icmp eq i32 %23, 0, !dbg !957
  br i1 %24, label %37, label %25, !dbg !958

25:                                               ; preds = %22
  %26 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.56), !dbg !959
  %27 = icmp eq i32 %26, 0, !dbg !959
  br i1 %27, label %37, label %28, !dbg !960

28:                                               ; preds = %25
  %29 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.57), !dbg !961
  %30 = icmp eq i32 %29, 0, !dbg !961
  br i1 %30, label %37, label %31, !dbg !962

31:                                               ; preds = %28
  %32 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.58), !dbg !963
  %33 = icmp eq i32 %32, 0, !dbg !963
  br i1 %33, label %37, label %34, !dbg !964

34:                                               ; preds = %31
  %35 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.59), !dbg !965
  %36 = icmp eq i32 %35, 0, !dbg !965
  br label %37, !dbg !964

37:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %36, %34 ]
  ret i1 %38, !dbg !966
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @binary_operator(i1 noundef zeroext %0) #7 !dbg !967 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca [21 x i8], align 16
  %5 = alloca [21 x i8], align 16
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %10, metadata !971, metadata !DIExpression()), !dbg !1066
  call void @llvm.lifetime.start.p0(i64 144, ptr %2) #13, !dbg !1067
  call void @llvm.dbg.declare(metadata ptr %2, metadata !973, metadata !DIExpression()), !dbg !1068
  call void @llvm.lifetime.start.p0(i64 144, ptr %3) #13, !dbg !1067
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1032, metadata !DIExpression()), !dbg !1069
  %11 = trunc i8 %10 to i1, !dbg !1070
  br i1 %11, label %12, label %13, !dbg !1072

12:                                               ; preds = %1
  call void @advance(i1 noundef zeroext false), !dbg !1073
  br label %13, !dbg !1073

13:                                               ; preds = %12, %1
  %14 = load i32, ptr @pos, align 4, !dbg !1074, !tbaa !494
  %15 = add nsw i32 %14, 1, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %15, metadata !972, metadata !DIExpression()), !dbg !1066
  %16 = load i32, ptr @argc, align 4, !dbg !1076, !tbaa !494
  %17 = sub nsw i32 %16, 2, !dbg !1078
  %18 = icmp slt i32 %15, %17, !dbg !1079
  br i1 %18, label %19, label %28, !dbg !1080

19:                                               ; preds = %13
  %20 = load ptr, ptr @argv, align 8, !dbg !1081, !tbaa !294
  %21 = add nsw i32 %15, 1, !dbg !1081
  %22 = sext i32 %21 to i64, !dbg !1081
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22, !dbg !1081
  %24 = load ptr, ptr %23, align 8, !dbg !1081, !tbaa !294
  %25 = call i32 @strcmp(ptr noundef %24, ptr noundef @.str.60), !dbg !1081
  %26 = icmp eq i32 %25, 0, !dbg !1081
  br i1 %26, label %27, label %28, !dbg !1082

27:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8 1, metadata !1033, metadata !DIExpression()), !dbg !1066
  call void @advance(i1 noundef zeroext false), !dbg !1083
  br label %29, !dbg !1085

28:                                               ; preds = %19, %13
  call void @llvm.dbg.value(metadata i8 0, metadata !1033, metadata !DIExpression()), !dbg !1066
  br label %29

29:                                               ; preds = %28, %27
  %.01 = phi i8 [ 1, %27 ], [ 0, %28 ], !dbg !1086
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1033, metadata !DIExpression()), !dbg !1066
  %30 = load ptr, ptr @argv, align 8, !dbg !1087, !tbaa !294
  %31 = sext i32 %15 to i64, !dbg !1087
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31, !dbg !1087
  %33 = load ptr, ptr %32, align 8, !dbg !1087, !tbaa !294
  %34 = getelementptr inbounds i8, ptr %33, i64 0, !dbg !1087
  %35 = load i8, ptr %34, align 1, !dbg !1087, !tbaa !622
  %36 = sext i8 %35 to i32, !dbg !1087
  %37 = icmp eq i32 %36, 45, !dbg !1088
  br i1 %37, label %38, label %396, !dbg !1089

38:                                               ; preds = %29
  %39 = load ptr, ptr @argv, align 8, !dbg !1090, !tbaa !294
  %40 = sext i32 %15 to i64, !dbg !1090
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40, !dbg !1090
  %42 = load ptr, ptr %41, align 8, !dbg !1090, !tbaa !294
  %43 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !1090
  %44 = load i8, ptr %43, align 1, !dbg !1090, !tbaa !622
  %45 = sext i8 %44 to i32, !dbg !1090
  %46 = icmp eq i32 %45, 108, !dbg !1091
  br i1 %46, label %56, label %47, !dbg !1092

47:                                               ; preds = %38
  %48 = load ptr, ptr @argv, align 8, !dbg !1093, !tbaa !294
  %49 = sext i32 %15 to i64, !dbg !1093
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49, !dbg !1093
  %51 = load ptr, ptr %50, align 8, !dbg !1093, !tbaa !294
  %52 = getelementptr inbounds i8, ptr %51, i64 1, !dbg !1093
  %53 = load i8, ptr %52, align 1, !dbg !1093, !tbaa !622
  %54 = sext i8 %53 to i32, !dbg !1093
  %55 = icmp eq i32 %54, 103, !dbg !1094
  br i1 %55, label %56, label %74, !dbg !1095

56:                                               ; preds = %47, %38
  %57 = load ptr, ptr @argv, align 8, !dbg !1096, !tbaa !294
  %58 = sext i32 %15 to i64, !dbg !1096
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58, !dbg !1096
  %60 = load ptr, ptr %59, align 8, !dbg !1096, !tbaa !294
  %61 = getelementptr inbounds i8, ptr %60, i64 2, !dbg !1096
  %62 = load i8, ptr %61, align 1, !dbg !1096, !tbaa !622
  %63 = sext i8 %62 to i32, !dbg !1096
  %64 = icmp eq i32 %63, 101, !dbg !1097
  br i1 %64, label %110, label %65, !dbg !1098

65:                                               ; preds = %56
  %66 = load ptr, ptr @argv, align 8, !dbg !1099, !tbaa !294
  %67 = sext i32 %15 to i64, !dbg !1099
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67, !dbg !1099
  %69 = load ptr, ptr %68, align 8, !dbg !1099, !tbaa !294
  %70 = getelementptr inbounds i8, ptr %69, i64 2, !dbg !1099
  %71 = load i8, ptr %70, align 1, !dbg !1099, !tbaa !622
  %72 = sext i8 %71 to i32, !dbg !1099
  %73 = icmp eq i32 %72, 116, !dbg !1100
  br i1 %73, label %110, label %74, !dbg !1101

74:                                               ; preds = %65, %47
  %75 = load ptr, ptr @argv, align 8, !dbg !1102, !tbaa !294
  %76 = sext i32 %15 to i64, !dbg !1102
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76, !dbg !1102
  %78 = load ptr, ptr %77, align 8, !dbg !1102, !tbaa !294
  %79 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1102
  %80 = load i8, ptr %79, align 1, !dbg !1102, !tbaa !622
  %81 = sext i8 %80 to i32, !dbg !1102
  %82 = icmp eq i32 %81, 101, !dbg !1103
  br i1 %82, label %83, label %92, !dbg !1104

83:                                               ; preds = %74
  %84 = load ptr, ptr @argv, align 8, !dbg !1105, !tbaa !294
  %85 = sext i32 %15 to i64, !dbg !1105
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85, !dbg !1105
  %87 = load ptr, ptr %86, align 8, !dbg !1105, !tbaa !294
  %88 = getelementptr inbounds i8, ptr %87, i64 2, !dbg !1105
  %89 = load i8, ptr %88, align 1, !dbg !1105, !tbaa !622
  %90 = sext i8 %89 to i32, !dbg !1105
  %91 = icmp eq i32 %90, 113, !dbg !1106
  br i1 %91, label %110, label %92, !dbg !1107

92:                                               ; preds = %83, %74
  %93 = load ptr, ptr @argv, align 8, !dbg !1108, !tbaa !294
  %94 = sext i32 %15 to i64, !dbg !1108
  %95 = getelementptr inbounds ptr, ptr %93, i64 %94, !dbg !1108
  %96 = load ptr, ptr %95, align 8, !dbg !1108, !tbaa !294
  %97 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1108
  %98 = load i8, ptr %97, align 1, !dbg !1108, !tbaa !622
  %99 = sext i8 %98 to i32, !dbg !1108
  %100 = icmp eq i32 %99, 110, !dbg !1109
  br i1 %100, label %101, label %209, !dbg !1110

101:                                              ; preds = %92
  %102 = load ptr, ptr @argv, align 8, !dbg !1111, !tbaa !294
  %103 = sext i32 %15 to i64, !dbg !1111
  %104 = getelementptr inbounds ptr, ptr %102, i64 %103, !dbg !1111
  %105 = load ptr, ptr %104, align 8, !dbg !1111, !tbaa !294
  %106 = getelementptr inbounds i8, ptr %105, i64 2, !dbg !1111
  %107 = load i8, ptr %106, align 1, !dbg !1111, !tbaa !622
  %108 = sext i8 %107 to i32, !dbg !1111
  %109 = icmp eq i32 %108, 101, !dbg !1112
  br i1 %109, label %110, label %209, !dbg !1113

110:                                              ; preds = %101, %83, %65, %56
  %111 = load ptr, ptr @argv, align 8, !dbg !1114, !tbaa !294
  %112 = sext i32 %15 to i64, !dbg !1114
  %113 = getelementptr inbounds ptr, ptr %111, i64 %112, !dbg !1114
  %114 = load ptr, ptr %113, align 8, !dbg !1114, !tbaa !294
  %115 = getelementptr inbounds i8, ptr %114, i64 3, !dbg !1114
  %116 = load i8, ptr %115, align 1, !dbg !1114, !tbaa !622
  %117 = icmp ne i8 %116, 0, !dbg !1114
  br i1 %117, label %209, label %118, !dbg !1115

118:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 21, ptr %4) #13, !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1034, metadata !DIExpression()), !dbg !1117
  call void @llvm.lifetime.start.p0(i64 21, ptr %5) #13, !dbg !1118
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1042, metadata !DIExpression()), !dbg !1119
  %119 = trunc i8 %10 to i1, !dbg !1120
  br i1 %119, label %120, label %129, !dbg !1120

120:                                              ; preds = %118
  %121 = load ptr, ptr @argv, align 8, !dbg !1121, !tbaa !294
  %122 = sub nsw i32 %15, 1, !dbg !1122
  %123 = sext i32 %122 to i64, !dbg !1121
  %124 = getelementptr inbounds ptr, ptr %121, i64 %123, !dbg !1121
  %125 = load ptr, ptr %124, align 8, !dbg !1121, !tbaa !294
  %126 = call i64 @strlen(ptr noundef %125), !dbg !1123
  %127 = getelementptr inbounds [21 x i8], ptr %4, i64 0, i64 0, !dbg !1124
  %128 = call ptr @umaxtostr(i64 noundef %126, ptr noundef %127), !dbg !1125
  br label %136, !dbg !1120

129:                                              ; preds = %118
  %130 = load ptr, ptr @argv, align 8, !dbg !1126, !tbaa !294
  %131 = sub nsw i32 %15, 1, !dbg !1127
  %132 = sext i32 %131 to i64, !dbg !1126
  %133 = getelementptr inbounds ptr, ptr %130, i64 %132, !dbg !1126
  %134 = load ptr, ptr %133, align 8, !dbg !1126, !tbaa !294
  %135 = call ptr @find_int(ptr noundef %134), !dbg !1128
  br label %136, !dbg !1120

136:                                              ; preds = %129, %120
  %137 = phi ptr [ %128, %120 ], [ %135, %129 ], !dbg !1120
  call void @llvm.dbg.value(metadata ptr %137, metadata !1043, metadata !DIExpression()), !dbg !1129
  %138 = trunc i8 %.01 to i1, !dbg !1130
  br i1 %138, label %139, label %148, !dbg !1130

139:                                              ; preds = %136
  %140 = load ptr, ptr @argv, align 8, !dbg !1131, !tbaa !294
  %141 = add nsw i32 %15, 2, !dbg !1132
  %142 = sext i32 %141 to i64, !dbg !1131
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142, !dbg !1131
  %144 = load ptr, ptr %143, align 8, !dbg !1131, !tbaa !294
  %145 = call i64 @strlen(ptr noundef %144), !dbg !1133
  %146 = getelementptr inbounds [21 x i8], ptr %5, i64 0, i64 0, !dbg !1134
  %147 = call ptr @umaxtostr(i64 noundef %145, ptr noundef %146), !dbg !1135
  br label %155, !dbg !1130

148:                                              ; preds = %136
  %149 = load ptr, ptr @argv, align 8, !dbg !1136, !tbaa !294
  %150 = add nsw i32 %15, 1, !dbg !1137
  %151 = sext i32 %150 to i64, !dbg !1136
  %152 = getelementptr inbounds ptr, ptr %149, i64 %151, !dbg !1136
  %153 = load ptr, ptr %152, align 8, !dbg !1136, !tbaa !294
  %154 = call ptr @find_int(ptr noundef %153), !dbg !1138
  br label %155, !dbg !1130

155:                                              ; preds = %148, %139
  %156 = phi ptr [ %147, %139 ], [ %154, %148 ], !dbg !1130
  call void @llvm.dbg.value(metadata ptr %156, metadata !1044, metadata !DIExpression()), !dbg !1129
  %157 = call i32 @strintcmp(ptr noundef %137, ptr noundef %156) #15, !dbg !1139
  call void @llvm.dbg.value(metadata i32 %157, metadata !1045, metadata !DIExpression()), !dbg !1129
  %158 = load ptr, ptr @argv, align 8, !dbg !1140, !tbaa !294
  %159 = sext i32 %15 to i64, !dbg !1140
  %160 = getelementptr inbounds ptr, ptr %158, i64 %159, !dbg !1140
  %161 = load ptr, ptr %160, align 8, !dbg !1140, !tbaa !294
  %162 = getelementptr inbounds i8, ptr %161, i64 2, !dbg !1140
  %163 = load i8, ptr %162, align 1, !dbg !1140, !tbaa !622
  %164 = sext i8 %163 to i32, !dbg !1140
  %165 = icmp eq i32 %164, 101, !dbg !1141
  %166 = zext i1 %165 to i8, !dbg !1142
  call void @llvm.dbg.value(metadata i8 %166, metadata !1046, metadata !DIExpression()), !dbg !1129
  %167 = load i32, ptr @pos, align 4, !dbg !1143, !tbaa !494
  %168 = add nsw i32 %167, 3, !dbg !1143
  store i32 %168, ptr @pos, align 4, !dbg !1143, !tbaa !494
  %169 = load ptr, ptr @argv, align 8, !dbg !1144, !tbaa !294
  %170 = sext i32 %15 to i64, !dbg !1144
  %171 = getelementptr inbounds ptr, ptr %169, i64 %170, !dbg !1144
  %172 = load ptr, ptr %171, align 8, !dbg !1144, !tbaa !294
  %173 = getelementptr inbounds i8, ptr %172, i64 1, !dbg !1144
  %174 = load i8, ptr %173, align 1, !dbg !1144, !tbaa !622
  %175 = sext i8 %174 to i32, !dbg !1144
  %176 = icmp eq i32 %175, 108, !dbg !1145
  br i1 %176, label %177, label %182, !dbg !1144

177:                                              ; preds = %155
  %178 = trunc i8 %166 to i1, !dbg !1146
  %179 = zext i1 %178 to i32, !dbg !1146
  %180 = icmp slt i32 %157, %179, !dbg !1147
  %181 = zext i1 %180 to i32, !dbg !1147
  br label %206, !dbg !1144

182:                                              ; preds = %155
  %183 = load ptr, ptr @argv, align 8, !dbg !1148, !tbaa !294
  %184 = sext i32 %15 to i64, !dbg !1148
  %185 = getelementptr inbounds ptr, ptr %183, i64 %184, !dbg !1148
  %186 = load ptr, ptr %185, align 8, !dbg !1148, !tbaa !294
  %187 = getelementptr inbounds i8, ptr %186, i64 1, !dbg !1148
  %188 = load i8, ptr %187, align 1, !dbg !1148, !tbaa !622
  %189 = sext i8 %188 to i32, !dbg !1148
  %190 = icmp eq i32 %189, 103, !dbg !1149
  br i1 %190, label %191, label %197, !dbg !1148

191:                                              ; preds = %182
  %192 = trunc i8 %166 to i1, !dbg !1150
  %193 = zext i1 %192 to i32, !dbg !1150
  %194 = sub nsw i32 0, %193, !dbg !1151
  %195 = icmp sgt i32 %157, %194, !dbg !1152
  %196 = zext i1 %195 to i32, !dbg !1152
  br label %204, !dbg !1148

197:                                              ; preds = %182
  %198 = icmp ne i32 %157, 0, !dbg !1153
  %199 = zext i1 %198 to i32, !dbg !1153
  %200 = trunc i8 %166 to i1, !dbg !1154
  %201 = zext i1 %200 to i32, !dbg !1154
  %202 = icmp eq i32 %199, %201, !dbg !1155
  %203 = zext i1 %202 to i32, !dbg !1155
  br label %204, !dbg !1148

204:                                              ; preds = %197, %191
  %205 = phi i32 [ %196, %191 ], [ %203, %197 ], !dbg !1148
  br label %206, !dbg !1144

206:                                              ; preds = %204, %177
  %207 = phi i32 [ %181, %177 ], [ %205, %204 ], !dbg !1144
  %208 = icmp ne i32 %207, 0, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 21, ptr %5) #13, !dbg !1157
  call void @llvm.lifetime.end.p0(i64 21, ptr %4) #13, !dbg !1157
  br label %475

209:                                              ; preds = %110, %101, %92
  %210 = load ptr, ptr @argv, align 8, !dbg !1158, !tbaa !294
  %211 = sext i32 %15 to i64, !dbg !1158
  %212 = getelementptr inbounds ptr, ptr %210, i64 %211, !dbg !1158
  %213 = load ptr, ptr %212, align 8, !dbg !1158, !tbaa !294
  %214 = getelementptr inbounds i8, ptr %213, i64 1, !dbg !1158
  %215 = load i8, ptr %214, align 1, !dbg !1158, !tbaa !622
  %216 = sext i8 %215 to i32, !dbg !1158
  switch i32 %216, label %217 [
    i32 110, label %218
    i32 101, label %276
    i32 111, label %331
  ], !dbg !1159

217:                                              ; preds = %209
  br label %390, !dbg !1160

218:                                              ; preds = %209
  %219 = load ptr, ptr @argv, align 8, !dbg !1161, !tbaa !294
  %220 = sext i32 %15 to i64, !dbg !1161
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220, !dbg !1161
  %222 = load ptr, ptr %221, align 8, !dbg !1161, !tbaa !294
  %223 = getelementptr inbounds i8, ptr %222, i64 2, !dbg !1161
  %224 = load i8, ptr %223, align 1, !dbg !1161, !tbaa !622
  %225 = sext i8 %224 to i32, !dbg !1161
  %226 = icmp eq i32 %225, 116, !dbg !1162
  br i1 %226, label %227, label %275, !dbg !1163

227:                                              ; preds = %218
  %228 = load ptr, ptr @argv, align 8, !dbg !1164, !tbaa !294
  %229 = sext i32 %15 to i64, !dbg !1164
  %230 = getelementptr inbounds ptr, ptr %228, i64 %229, !dbg !1164
  %231 = load ptr, ptr %230, align 8, !dbg !1164, !tbaa !294
  %232 = getelementptr inbounds i8, ptr %231, i64 3, !dbg !1164
  %233 = load i8, ptr %232, align 1, !dbg !1164, !tbaa !622
  %234 = icmp ne i8 %233, 0, !dbg !1164
  br i1 %234, label %275, label %235, !dbg !1165

235:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 16, ptr %6) #13, !dbg !1166
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1047, metadata !DIExpression()), !dbg !1167
  call void @llvm.lifetime.start.p0(i64 16, ptr %7) #13, !dbg !1166
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1051, metadata !DIExpression()), !dbg !1168
  %236 = load i32, ptr @pos, align 4, !dbg !1169, !tbaa !494
  %237 = add nsw i32 %236, 3, !dbg !1169
  store i32 %237, ptr @pos, align 4, !dbg !1169, !tbaa !494
  %238 = trunc i8 %10 to i1, !dbg !1170
  br i1 %238, label %241, label %239, !dbg !1172

239:                                              ; preds = %235
  %240 = trunc i8 %.01 to i1, !dbg !1173
  br i1 %240, label %241, label %242, !dbg !1174

241:                                              ; preds = %239, %235
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.61) #12, !dbg !1175
  unreachable, !dbg !1175

242:                                              ; preds = %239
  %243 = load ptr, ptr @argv, align 8, !dbg !1176, !tbaa !294
  %244 = sub nsw i32 %15, 1, !dbg !1177
  %245 = sext i32 %244 to i64, !dbg !1176
  %246 = getelementptr inbounds ptr, ptr %243, i64 %245, !dbg !1176
  %247 = load ptr, ptr %246, align 8, !dbg !1176, !tbaa !294
  %248 = call zeroext i1 @get_mtime(ptr noundef %247, ptr noundef %6), !dbg !1178
  %249 = zext i1 %248 to i8, !dbg !1179
  call void @llvm.dbg.value(metadata i8 %249, metadata !1052, metadata !DIExpression()), !dbg !1180
  %250 = load ptr, ptr @argv, align 8, !dbg !1181, !tbaa !294
  %251 = add nsw i32 %15, 1, !dbg !1182
  %252 = sext i32 %251 to i64, !dbg !1181
  %253 = getelementptr inbounds ptr, ptr %250, i64 %252, !dbg !1181
  %254 = load ptr, ptr %253, align 8, !dbg !1181, !tbaa !294
  %255 = call zeroext i1 @get_mtime(ptr noundef %254, ptr noundef %7), !dbg !1183
  %256 = zext i1 %255 to i8, !dbg !1184
  call void @llvm.dbg.value(metadata i8 %256, metadata !1053, metadata !DIExpression()), !dbg !1180
  %257 = trunc i8 %249 to i1, !dbg !1185
  br i1 %257, label %258, label %273, !dbg !1186

258:                                              ; preds = %242
  %259 = trunc i8 %256 to i1, !dbg !1187
  br i1 %259, label %260, label %271, !dbg !1188

260:                                              ; preds = %258
  %261 = getelementptr inbounds { i64, i64 }, ptr %6, i32 0, i32 0, !dbg !1189
  %262 = load i64, ptr %261, align 8, !dbg !1189
  %263 = getelementptr inbounds { i64, i64 }, ptr %6, i32 0, i32 1, !dbg !1189
  %264 = load i64, ptr %263, align 8, !dbg !1189
  %265 = getelementptr inbounds { i64, i64 }, ptr %7, i32 0, i32 0, !dbg !1189
  %266 = load i64, ptr %265, align 8, !dbg !1189
  %267 = getelementptr inbounds { i64, i64 }, ptr %7, i32 0, i32 1, !dbg !1189
  %268 = load i64, ptr %267, align 8, !dbg !1189
  %269 = call i32 @timespec_cmp(i64 %262, i64 %264, i64 %266, i64 %268) #15, !dbg !1189
  %270 = icmp sgt i32 %269, 0, !dbg !1190
  br label %271, !dbg !1188

271:                                              ; preds = %260, %258
  %272 = phi i1 [ true, %258 ], [ %270, %260 ]
  br label %273

273:                                              ; preds = %271, %242
  %274 = phi i1 [ false, %242 ], [ %272, %271 ], !dbg !1180
  call void @llvm.lifetime.end.p0(i64 16, ptr %7) #13, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 16, ptr %6) #13, !dbg !1191
  br label %475

275:                                              ; preds = %227, %218
  br label %390, !dbg !1192

276:                                              ; preds = %209
  %277 = load ptr, ptr @argv, align 8, !dbg !1193, !tbaa !294
  %278 = sext i32 %15 to i64, !dbg !1193
  %279 = getelementptr inbounds ptr, ptr %277, i64 %278, !dbg !1193
  %280 = load ptr, ptr %279, align 8, !dbg !1193, !tbaa !294
  %281 = getelementptr inbounds i8, ptr %280, i64 2, !dbg !1193
  %282 = load i8, ptr %281, align 1, !dbg !1193, !tbaa !622
  %283 = sext i8 %282 to i32, !dbg !1193
  %284 = icmp eq i32 %283, 102, !dbg !1195
  br i1 %284, label %285, label %330, !dbg !1196

285:                                              ; preds = %276
  %286 = load ptr, ptr @argv, align 8, !dbg !1197, !tbaa !294
  %287 = sext i32 %15 to i64, !dbg !1197
  %288 = getelementptr inbounds ptr, ptr %286, i64 %287, !dbg !1197
  %289 = load ptr, ptr %288, align 8, !dbg !1197, !tbaa !294
  %290 = getelementptr inbounds i8, ptr %289, i64 3, !dbg !1197
  %291 = load i8, ptr %290, align 1, !dbg !1197, !tbaa !622
  %292 = icmp ne i8 %291, 0, !dbg !1197
  br i1 %292, label %330, label %293, !dbg !1198

293:                                              ; preds = %285
  %294 = load i32, ptr @pos, align 4, !dbg !1199, !tbaa !494
  %295 = add nsw i32 %294, 3, !dbg !1199
  store i32 %295, ptr @pos, align 4, !dbg !1199, !tbaa !494
  %296 = trunc i8 %10 to i1, !dbg !1201
  br i1 %296, label %299, label %297, !dbg !1203

297:                                              ; preds = %293
  %298 = trunc i8 %.01 to i1, !dbg !1204
  br i1 %298, label %299, label %300, !dbg !1205

299:                                              ; preds = %297, %293
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.62) #12, !dbg !1206
  unreachable, !dbg !1206

300:                                              ; preds = %297
  %301 = load ptr, ptr @argv, align 8, !dbg !1207, !tbaa !294
  %302 = sub nsw i32 %15, 1, !dbg !1207
  %303 = sext i32 %302 to i64, !dbg !1207
  %304 = getelementptr inbounds ptr, ptr %301, i64 %303, !dbg !1207
  %305 = load ptr, ptr %304, align 8, !dbg !1207, !tbaa !294
  %306 = call i32 @rpl_stat(ptr noundef %305, ptr noundef %2), !dbg !1207
  %307 = icmp eq i32 %306, 0, !dbg !1208
  br i1 %307, label %308, label %328, !dbg !1209

308:                                              ; preds = %300
  %309 = load ptr, ptr @argv, align 8, !dbg !1210, !tbaa !294
  %310 = add nsw i32 %15, 1, !dbg !1210
  %311 = sext i32 %310 to i64, !dbg !1210
  %312 = getelementptr inbounds ptr, ptr %309, i64 %311, !dbg !1210
  %313 = load ptr, ptr %312, align 8, !dbg !1210, !tbaa !294
  %314 = call i32 @rpl_stat(ptr noundef %313, ptr noundef %3), !dbg !1210
  %315 = icmp eq i32 %314, 0, !dbg !1211
  br i1 %315, label %316, label %328, !dbg !1212

316:                                              ; preds = %308
  %317 = getelementptr inbounds %struct.stat, ptr %2, i32 0, i32 0, !dbg !1213
  %318 = load i32, ptr %317, align 8, !dbg !1213, !tbaa !1214
  %319 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 0, !dbg !1220
  %320 = load i32, ptr %319, align 8, !dbg !1220, !tbaa !1214
  %321 = icmp eq i32 %318, %320, !dbg !1221
  br i1 %321, label %322, label %328, !dbg !1222

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.stat, ptr %2, i32 0, i32 3, !dbg !1223
  %324 = load i64, ptr %323, align 8, !dbg !1223, !tbaa !1224
  %325 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 3, !dbg !1225
  %326 = load i64, ptr %325, align 8, !dbg !1225, !tbaa !1224
  %327 = icmp eq i64 %324, %326, !dbg !1226
  br label %328

328:                                              ; preds = %322, %316, %308, %300
  %329 = phi i1 [ false, %316 ], [ false, %308 ], [ false, %300 ], [ %327, %322 ], !dbg !1227
  br label %475, !dbg !1228

330:                                              ; preds = %285, %276
  br label %390, !dbg !1229

331:                                              ; preds = %209
  %332 = load ptr, ptr @argv, align 8, !dbg !1230, !tbaa !294
  %333 = sext i32 %15 to i64, !dbg !1230
  %334 = getelementptr inbounds ptr, ptr %332, i64 %333, !dbg !1230
  %335 = load ptr, ptr %334, align 8, !dbg !1230, !tbaa !294
  %336 = getelementptr inbounds i8, ptr %335, i64 2, !dbg !1230
  %337 = load i8, ptr %336, align 1, !dbg !1230, !tbaa !622
  %338 = sext i8 %337 to i32, !dbg !1230
  %339 = icmp eq i32 116, %338, !dbg !1231
  br i1 %339, label %340, label %389, !dbg !1232

340:                                              ; preds = %331
  %341 = load ptr, ptr @argv, align 8, !dbg !1233, !tbaa !294
  %342 = sext i32 %15 to i64, !dbg !1233
  %343 = getelementptr inbounds ptr, ptr %341, i64 %342, !dbg !1233
  %344 = load ptr, ptr %343, align 8, !dbg !1233, !tbaa !294
  %345 = getelementptr inbounds i8, ptr %344, i64 3, !dbg !1233
  %346 = load i8, ptr %345, align 1, !dbg !1233, !tbaa !622
  %347 = sext i8 %346 to i32, !dbg !1233
  %348 = icmp eq i32 0, %347, !dbg !1234
  br i1 %348, label %349, label %389, !dbg !1235

349:                                              ; preds = %340
  call void @llvm.lifetime.start.p0(i64 16, ptr %8) #13, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1054, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.start.p0(i64 16, ptr %9) #13, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1057, metadata !DIExpression()), !dbg !1238
  %350 = load i32, ptr @pos, align 4, !dbg !1239, !tbaa !494
  %351 = add nsw i32 %350, 3, !dbg !1239
  store i32 %351, ptr @pos, align 4, !dbg !1239, !tbaa !494
  %352 = trunc i8 %10 to i1, !dbg !1240
  br i1 %352, label %355, label %353, !dbg !1242

353:                                              ; preds = %349
  %354 = trunc i8 %.01 to i1, !dbg !1243
  br i1 %354, label %355, label %356, !dbg !1244

355:                                              ; preds = %353, %349
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.63) #12, !dbg !1245
  unreachable, !dbg !1245

356:                                              ; preds = %353
  %357 = load ptr, ptr @argv, align 8, !dbg !1246, !tbaa !294
  %358 = sub nsw i32 %15, 1, !dbg !1247
  %359 = sext i32 %358 to i64, !dbg !1246
  %360 = getelementptr inbounds ptr, ptr %357, i64 %359, !dbg !1246
  %361 = load ptr, ptr %360, align 8, !dbg !1246, !tbaa !294
  %362 = call zeroext i1 @get_mtime(ptr noundef %361, ptr noundef %8), !dbg !1248
  %363 = zext i1 %362 to i8, !dbg !1249
  call void @llvm.dbg.value(metadata i8 %363, metadata !1058, metadata !DIExpression()), !dbg !1250
  %364 = load ptr, ptr @argv, align 8, !dbg !1251, !tbaa !294
  %365 = add nsw i32 %15, 1, !dbg !1252
  %366 = sext i32 %365 to i64, !dbg !1251
  %367 = getelementptr inbounds ptr, ptr %364, i64 %366, !dbg !1251
  %368 = load ptr, ptr %367, align 8, !dbg !1251, !tbaa !294
  %369 = call zeroext i1 @get_mtime(ptr noundef %368, ptr noundef %9), !dbg !1253
  %370 = zext i1 %369 to i8, !dbg !1254
  call void @llvm.dbg.value(metadata i8 %370, metadata !1059, metadata !DIExpression()), !dbg !1250
  %371 = trunc i8 %370 to i1, !dbg !1255
  br i1 %371, label %372, label %387, !dbg !1256

372:                                              ; preds = %356
  %373 = trunc i8 %363 to i1, !dbg !1257
  br i1 %373, label %374, label %385, !dbg !1258

374:                                              ; preds = %372
  %375 = getelementptr inbounds { i64, i64 }, ptr %8, i32 0, i32 0, !dbg !1259
  %376 = load i64, ptr %375, align 8, !dbg !1259
  %377 = getelementptr inbounds { i64, i64 }, ptr %8, i32 0, i32 1, !dbg !1259
  %378 = load i64, ptr %377, align 8, !dbg !1259
  %379 = getelementptr inbounds { i64, i64 }, ptr %9, i32 0, i32 0, !dbg !1259
  %380 = load i64, ptr %379, align 8, !dbg !1259
  %381 = getelementptr inbounds { i64, i64 }, ptr %9, i32 0, i32 1, !dbg !1259
  %382 = load i64, ptr %381, align 8, !dbg !1259
  %383 = call i32 @timespec_cmp(i64 %376, i64 %378, i64 %380, i64 %382) #15, !dbg !1259
  %384 = icmp slt i32 %383, 0, !dbg !1260
  br label %385, !dbg !1258

385:                                              ; preds = %374, %372
  %386 = phi i1 [ true, %372 ], [ %384, %374 ]
  br label %387

387:                                              ; preds = %385, %356
  %388 = phi i1 [ false, %356 ], [ %386, %385 ], !dbg !1250
  call void @llvm.lifetime.end.p0(i64 16, ptr %9) #13, !dbg !1261
  call void @llvm.lifetime.end.p0(i64 16, ptr %8) #13, !dbg !1261
  br label %475

389:                                              ; preds = %340, %331
  br label %390, !dbg !1262

390:                                              ; preds = %389, %330, %275, %217
  %391 = load ptr, ptr @argv, align 8, !dbg !1263, !tbaa !294
  %392 = sext i32 %15 to i64, !dbg !1263
  %393 = getelementptr inbounds ptr, ptr %391, i64 %392, !dbg !1263
  %394 = load ptr, ptr %393, align 8, !dbg !1263, !tbaa !294
  %395 = call ptr @quote(ptr noundef %394), !dbg !1264
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.64, ptr noundef %395) #12, !dbg !1265
  unreachable, !dbg !1265

396:                                              ; preds = %29
  %397 = load ptr, ptr @argv, align 8, !dbg !1266, !tbaa !294
  %398 = sext i32 %15 to i64, !dbg !1266
  %399 = getelementptr inbounds ptr, ptr %397, i64 %398, !dbg !1266
  %400 = load ptr, ptr %399, align 8, !dbg !1266, !tbaa !294
  %401 = getelementptr inbounds i8, ptr %400, i64 0, !dbg !1266
  %402 = load i8, ptr %401, align 1, !dbg !1266, !tbaa !622
  %403 = sext i8 %402 to i32, !dbg !1266
  %404 = icmp eq i32 %403, 61, !dbg !1267
  br i1 %404, label %405, label %448, !dbg !1268

405:                                              ; preds = %396
  %406 = load ptr, ptr @argv, align 8, !dbg !1269, !tbaa !294
  %407 = sext i32 %15 to i64, !dbg !1269
  %408 = getelementptr inbounds ptr, ptr %406, i64 %407, !dbg !1269
  %409 = load ptr, ptr %408, align 8, !dbg !1269, !tbaa !294
  %410 = getelementptr inbounds i8, ptr %409, i64 1, !dbg !1269
  %411 = load i8, ptr %410, align 1, !dbg !1269, !tbaa !622
  %412 = icmp ne i8 %411, 0, !dbg !1269
  br i1 %412, label %413, label %430, !dbg !1270

413:                                              ; preds = %405
  %414 = load ptr, ptr @argv, align 8, !dbg !1271, !tbaa !294
  %415 = sext i32 %15 to i64, !dbg !1271
  %416 = getelementptr inbounds ptr, ptr %414, i64 %415, !dbg !1271
  %417 = load ptr, ptr %416, align 8, !dbg !1271, !tbaa !294
  %418 = getelementptr inbounds i8, ptr %417, i64 1, !dbg !1271
  %419 = load i8, ptr %418, align 1, !dbg !1271, !tbaa !622
  %420 = sext i8 %419 to i32, !dbg !1271
  %421 = icmp eq i32 %420, 61, !dbg !1272
  br i1 %421, label %422, label %448, !dbg !1273

422:                                              ; preds = %413
  %423 = load ptr, ptr @argv, align 8, !dbg !1274, !tbaa !294
  %424 = sext i32 %15 to i64, !dbg !1274
  %425 = getelementptr inbounds ptr, ptr %423, i64 %424, !dbg !1274
  %426 = load ptr, ptr %425, align 8, !dbg !1274, !tbaa !294
  %427 = getelementptr inbounds i8, ptr %426, i64 2, !dbg !1274
  %428 = load i8, ptr %427, align 1, !dbg !1274, !tbaa !622
  %429 = icmp ne i8 %428, 0, !dbg !1274
  br i1 %429, label %448, label %430, !dbg !1275

430:                                              ; preds = %422, %405
  %431 = load ptr, ptr @argv, align 8, !dbg !1276, !tbaa !294
  %432 = load i32, ptr @pos, align 4, !dbg !1276, !tbaa !494
  %433 = sext i32 %432 to i64, !dbg !1276
  %434 = getelementptr inbounds ptr, ptr %431, i64 %433, !dbg !1276
  %435 = load ptr, ptr %434, align 8, !dbg !1276, !tbaa !294
  %436 = load ptr, ptr @argv, align 8, !dbg !1276, !tbaa !294
  %437 = load i32, ptr @pos, align 4, !dbg !1276, !tbaa !494
  %438 = add nsw i32 %437, 2, !dbg !1276
  %439 = sext i32 %438 to i64, !dbg !1276
  %440 = getelementptr inbounds ptr, ptr %436, i64 %439, !dbg !1276
  %441 = load ptr, ptr %440, align 8, !dbg !1276, !tbaa !294
  %442 = call i32 @strcmp(ptr noundef %435, ptr noundef %441), !dbg !1276
  %443 = icmp eq i32 %442, 0, !dbg !1276
  %444 = zext i1 %443 to i8, !dbg !1277
  call void @llvm.dbg.value(metadata i8 %444, metadata !1060, metadata !DIExpression()), !dbg !1278
  %445 = load i32, ptr @pos, align 4, !dbg !1279, !tbaa !494
  %446 = add nsw i32 %445, 3, !dbg !1279
  store i32 %446, ptr @pos, align 4, !dbg !1279, !tbaa !494
  %447 = trunc i8 %444 to i1, !dbg !1280
  br label %475

448:                                              ; preds = %422, %413, %396
  %449 = load ptr, ptr @argv, align 8, !dbg !1281, !tbaa !294
  %450 = sext i32 %15 to i64, !dbg !1281
  %451 = getelementptr inbounds ptr, ptr %449, i64 %450, !dbg !1281
  %452 = load ptr, ptr %451, align 8, !dbg !1281, !tbaa !294
  %453 = call i32 @strcmp(ptr noundef %452, ptr noundef @.str.49), !dbg !1281
  %454 = icmp eq i32 %453, 0, !dbg !1281
  br i1 %454, label %455, label %474, !dbg !1282

455:                                              ; preds = %448
  %456 = load ptr, ptr @argv, align 8, !dbg !1283, !tbaa !294
  %457 = load i32, ptr @pos, align 4, !dbg !1283, !tbaa !494
  %458 = sext i32 %457 to i64, !dbg !1283
  %459 = getelementptr inbounds ptr, ptr %456, i64 %458, !dbg !1283
  %460 = load ptr, ptr %459, align 8, !dbg !1283, !tbaa !294
  %461 = load ptr, ptr @argv, align 8, !dbg !1283, !tbaa !294
  %462 = load i32, ptr @pos, align 4, !dbg !1283, !tbaa !494
  %463 = add nsw i32 %462, 2, !dbg !1283
  %464 = sext i32 %463 to i64, !dbg !1283
  %465 = getelementptr inbounds ptr, ptr %461, i64 %464, !dbg !1283
  %466 = load ptr, ptr %465, align 8, !dbg !1283, !tbaa !294
  %467 = call i32 @strcmp(ptr noundef %460, ptr noundef %466), !dbg !1283
  %468 = icmp eq i32 %467, 0, !dbg !1283
  %469 = xor i1 %468, true, !dbg !1284
  %470 = zext i1 %469 to i8, !dbg !1285
  call void @llvm.dbg.value(metadata i8 %470, metadata !1063, metadata !DIExpression()), !dbg !1286
  %471 = load i32, ptr @pos, align 4, !dbg !1287, !tbaa !494
  %472 = add nsw i32 %471, 3, !dbg !1287
  store i32 %472, ptr @pos, align 4, !dbg !1287, !tbaa !494
  %473 = trunc i8 %470 to i1, !dbg !1288
  br label %475

474:                                              ; preds = %448
  call void @abort() #14, !dbg !1289
  unreachable, !dbg !1289

475:                                              ; preds = %455, %430, %387, %328, %273, %206
  %.0 = phi i1 [ %388, %387 ], [ %329, %328 ], [ %274, %273 ], [ %208, %206 ], [ %473, %455 ], [ %447, %430 ], !dbg !1066
  call void @llvm.lifetime.end.p0(i64 144, ptr %3) #13, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 144, ptr %2) #13, !dbg !1290
  ret i1 %.0, !dbg !1290
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @unary_operator() #7 !dbg !1291 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr %1) #13, !dbg !1307
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1293, metadata !DIExpression()), !dbg !1308
  %4 = load ptr, ptr @argv, align 8, !dbg !1309, !tbaa !294
  %5 = load i32, ptr @pos, align 4, !dbg !1310, !tbaa !494
  %6 = sext i32 %5 to i64, !dbg !1309
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6, !dbg !1309
  %8 = load ptr, ptr %7, align 8, !dbg !1309, !tbaa !294
  %9 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1309
  %10 = load i8, ptr %9, align 1, !dbg !1309, !tbaa !622
  %11 = sext i8 %10 to i32, !dbg !1309
  switch i32 %11, label %12 [
    i32 101, label %19
    i32 114, label %28
    i32 119, label %37
    i32 120, label %46
    i32 78, label %55
    i32 79, label %86
    i32 71, label %110
    i32 102, label %134
    i32 100, label %151
    i32 115, label %168
    i32 83, label %183
    i32 99, label %200
    i32 98, label %217
    i32 112, label %234
    i32 76, label %251
    i32 104, label %251
    i32 117, label %268
    i32 103, label %285
    i32 107, label %302
    i32 116, label %319
    i32 110, label %342
    i32 122, label %353
  ], !dbg !1311

12:                                               ; preds = %0
  %13 = load ptr, ptr @argv, align 8, !dbg !1312, !tbaa !294
  %14 = load i32, ptr @pos, align 4, !dbg !1313, !tbaa !494
  %15 = sext i32 %14 to i64, !dbg !1312
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15, !dbg !1312
  %17 = load ptr, ptr %16, align 8, !dbg !1312, !tbaa !294
  %18 = call ptr @quote(ptr noundef %17), !dbg !1314
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.42, ptr noundef %18) #12, !dbg !1315
  unreachable, !dbg !1315

19:                                               ; preds = %0
  call void @unary_advance(), !dbg !1316
  %20 = load ptr, ptr @argv, align 8, !dbg !1317, !tbaa !294
  %21 = load i32, ptr @pos, align 4, !dbg !1317, !tbaa !494
  %22 = sub nsw i32 %21, 1, !dbg !1317
  %23 = sext i32 %22 to i64, !dbg !1317
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23, !dbg !1317
  %25 = load ptr, ptr %24, align 8, !dbg !1317, !tbaa !294
  %26 = call i32 @rpl_stat(ptr noundef %25, ptr noundef %1), !dbg !1317
  %27 = icmp eq i32 %26, 0, !dbg !1318
  br label %364, !dbg !1319

28:                                               ; preds = %0
  call void @unary_advance(), !dbg !1320
  %29 = load ptr, ptr @argv, align 8, !dbg !1321, !tbaa !294
  %30 = load i32, ptr @pos, align 4, !dbg !1322, !tbaa !494
  %31 = sub nsw i32 %30, 1, !dbg !1323
  %32 = sext i32 %31 to i64, !dbg !1321
  %33 = getelementptr inbounds ptr, ptr %29, i64 %32, !dbg !1321
  %34 = load ptr, ptr %33, align 8, !dbg !1321, !tbaa !294
  %35 = call i32 @euidaccess(ptr noundef %34, i32 noundef 4), !dbg !1324
  %36 = icmp eq i32 %35, 0, !dbg !1325
  br label %364, !dbg !1326

37:                                               ; preds = %0
  call void @unary_advance(), !dbg !1327
  %38 = load ptr, ptr @argv, align 8, !dbg !1328, !tbaa !294
  %39 = load i32, ptr @pos, align 4, !dbg !1329, !tbaa !494
  %40 = sub nsw i32 %39, 1, !dbg !1330
  %41 = sext i32 %40 to i64, !dbg !1328
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41, !dbg !1328
  %43 = load ptr, ptr %42, align 8, !dbg !1328, !tbaa !294
  %44 = call i32 @euidaccess(ptr noundef %43, i32 noundef 2), !dbg !1331
  %45 = icmp eq i32 %44, 0, !dbg !1332
  br label %364, !dbg !1333

46:                                               ; preds = %0
  call void @unary_advance(), !dbg !1334
  %47 = load ptr, ptr @argv, align 8, !dbg !1335, !tbaa !294
  %48 = load i32, ptr @pos, align 4, !dbg !1336, !tbaa !494
  %49 = sub nsw i32 %48, 1, !dbg !1337
  %50 = sext i32 %49 to i64, !dbg !1335
  %51 = getelementptr inbounds ptr, ptr %47, i64 %50, !dbg !1335
  %52 = load ptr, ptr %51, align 8, !dbg !1335, !tbaa !294
  %53 = call i32 @euidaccess(ptr noundef %52, i32 noundef 1), !dbg !1338
  %54 = icmp eq i32 %53, 0, !dbg !1339
  br label %364, !dbg !1340

55:                                               ; preds = %0
  call void @unary_advance(), !dbg !1341
  %56 = load ptr, ptr @argv, align 8, !dbg !1342, !tbaa !294
  %57 = load i32, ptr @pos, align 4, !dbg !1342, !tbaa !494
  %58 = sub nsw i32 %57, 1, !dbg !1342
  %59 = sext i32 %58 to i64, !dbg !1342
  %60 = getelementptr inbounds ptr, ptr %56, i64 %59, !dbg !1342
  %61 = load ptr, ptr %60, align 8, !dbg !1342, !tbaa !294
  %62 = call i32 @rpl_stat(ptr noundef %61, ptr noundef %1), !dbg !1342
  %63 = icmp ne i32 %62, 0, !dbg !1344
  br i1 %63, label %64, label %65, !dbg !1345

64:                                               ; preds = %55
  br label %364, !dbg !1346

65:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 16, ptr %2) #13, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1294, metadata !DIExpression()), !dbg !1348
  %66 = call { i64, i64 } @get_stat_atime(ptr noundef %1) #15, !dbg !1349
  %67 = getelementptr inbounds { i64, i64 }, ptr %2, i32 0, i32 0, !dbg !1349
  %68 = extractvalue { i64, i64 } %66, 0, !dbg !1349
  store i64 %68, ptr %67, align 8, !dbg !1349
  %69 = getelementptr inbounds { i64, i64 }, ptr %2, i32 0, i32 1, !dbg !1349
  %70 = extractvalue { i64, i64 } %66, 1, !dbg !1349
  store i64 %70, ptr %69, align 8, !dbg !1349
  call void @llvm.lifetime.start.p0(i64 16, ptr %3) #13, !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1297, metadata !DIExpression()), !dbg !1351
  %71 = call { i64, i64 } @get_stat_mtime(ptr noundef %1) #15, !dbg !1352
  %72 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 0, !dbg !1352
  %73 = extractvalue { i64, i64 } %71, 0, !dbg !1352
  store i64 %73, ptr %72, align 8, !dbg !1352
  %74 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 1, !dbg !1352
  %75 = extractvalue { i64, i64 } %71, 1, !dbg !1352
  store i64 %75, ptr %74, align 8, !dbg !1352
  %76 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 0, !dbg !1353
  %77 = load i64, ptr %76, align 8, !dbg !1353
  %78 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 1, !dbg !1353
  %79 = load i64, ptr %78, align 8, !dbg !1353
  %80 = getelementptr inbounds { i64, i64 }, ptr %2, i32 0, i32 0, !dbg !1353
  %81 = load i64, ptr %80, align 8, !dbg !1353
  %82 = getelementptr inbounds { i64, i64 }, ptr %2, i32 0, i32 1, !dbg !1353
  %83 = load i64, ptr %82, align 8, !dbg !1353
  %84 = call i32 @timespec_cmp(i64 %77, i64 %79, i64 %81, i64 %83) #15, !dbg !1353
  %85 = icmp sgt i32 %84, 0, !dbg !1354
  call void @llvm.lifetime.end.p0(i64 16, ptr %3) #13, !dbg !1355
  call void @llvm.lifetime.end.p0(i64 16, ptr %2) #13, !dbg !1355
  br label %364

86:                                               ; preds = %0
  call void @unary_advance(), !dbg !1356
  %87 = load ptr, ptr @argv, align 8, !dbg !1357, !tbaa !294
  %88 = load i32, ptr @pos, align 4, !dbg !1357, !tbaa !494
  %89 = sub nsw i32 %88, 1, !dbg !1357
  %90 = sext i32 %89 to i64, !dbg !1357
  %91 = getelementptr inbounds ptr, ptr %87, i64 %90, !dbg !1357
  %92 = load ptr, ptr %91, align 8, !dbg !1357, !tbaa !294
  %93 = call i32 @rpl_stat(ptr noundef %92, ptr noundef %1), !dbg !1357
  %94 = icmp ne i32 %93, 0, !dbg !1359
  br i1 %94, label %95, label %96, !dbg !1360

95:                                               ; preds = %86
  br label %364, !dbg !1361

96:                                               ; preds = %86
  %97 = call ptr @__error(), !dbg !1362
  store i32 0, ptr %97, align 4, !dbg !1363, !tbaa !494
  %98 = call i32 @geteuid(), !dbg !1364
  call void @llvm.dbg.value(metadata i32 %98, metadata !1298, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 -1, metadata !1300, metadata !DIExpression()), !dbg !1365
  %99 = icmp eq i32 %98, -1, !dbg !1366
  br i1 %99, label %100, label %104, !dbg !1367

100:                                              ; preds = %96
  %101 = call ptr @__error(), !dbg !1368
  %102 = load i32, ptr %101, align 4, !dbg !1368, !tbaa !494
  %103 = icmp ne i32 %102, 0, !dbg !1368
  br i1 %103, label %108, label %104, !dbg !1369

104:                                              ; preds = %100, %96
  %105 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 4, !dbg !1370
  %106 = load i32, ptr %105, align 8, !dbg !1370, !tbaa !1371
  %107 = icmp eq i32 %98, %106, !dbg !1372
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i1 [ false, %100 ], [ %107, %104 ], !dbg !1365
  br label %364

110:                                              ; preds = %0
  call void @unary_advance(), !dbg !1373
  %111 = load ptr, ptr @argv, align 8, !dbg !1374, !tbaa !294
  %112 = load i32, ptr @pos, align 4, !dbg !1374, !tbaa !494
  %113 = sub nsw i32 %112, 1, !dbg !1374
  %114 = sext i32 %113 to i64, !dbg !1374
  %115 = getelementptr inbounds ptr, ptr %111, i64 %114, !dbg !1374
  %116 = load ptr, ptr %115, align 8, !dbg !1374, !tbaa !294
  %117 = call i32 @rpl_stat(ptr noundef %116, ptr noundef %1), !dbg !1374
  %118 = icmp ne i32 %117, 0, !dbg !1376
  br i1 %118, label %119, label %120, !dbg !1377

119:                                              ; preds = %110
  br label %364, !dbg !1378

120:                                              ; preds = %110
  %121 = call ptr @__error(), !dbg !1379
  store i32 0, ptr %121, align 4, !dbg !1380, !tbaa !494
  %122 = call i32 @getegid(), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %122, metadata !1301, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i32 -1, metadata !1303, metadata !DIExpression()), !dbg !1382
  %123 = icmp eq i32 %122, -1, !dbg !1383
  br i1 %123, label %124, label %128, !dbg !1384

124:                                              ; preds = %120
  %125 = call ptr @__error(), !dbg !1385
  %126 = load i32, ptr %125, align 4, !dbg !1385, !tbaa !494
  %127 = icmp ne i32 %126, 0, !dbg !1385
  br i1 %127, label %132, label %128, !dbg !1386

128:                                              ; preds = %124, %120
  %129 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 5, !dbg !1387
  %130 = load i32, ptr %129, align 4, !dbg !1387, !tbaa !1388
  %131 = icmp eq i32 %122, %130, !dbg !1389
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi i1 [ false, %124 ], [ %131, %128 ], !dbg !1382
  br label %364

134:                                              ; preds = %0
  call void @unary_advance(), !dbg !1390
  %135 = load ptr, ptr @argv, align 8, !dbg !1391, !tbaa !294
  %136 = load i32, ptr @pos, align 4, !dbg !1391, !tbaa !494
  %137 = sub nsw i32 %136, 1, !dbg !1391
  %138 = sext i32 %137 to i64, !dbg !1391
  %139 = getelementptr inbounds ptr, ptr %135, i64 %138, !dbg !1391
  %140 = load ptr, ptr %139, align 8, !dbg !1391, !tbaa !294
  %141 = call i32 @rpl_stat(ptr noundef %140, ptr noundef %1), !dbg !1391
  %142 = icmp eq i32 %141, 0, !dbg !1392
  br i1 %142, label %143, label %149, !dbg !1393

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1394
  %145 = load i16, ptr %144, align 4, !dbg !1394, !tbaa !1395
  %146 = zext i16 %145 to i32, !dbg !1394
  %147 = and i32 %146, 61440, !dbg !1394
  %148 = icmp eq i32 %147, 32768, !dbg !1394
  br label %149

149:                                              ; preds = %143, %134
  %150 = phi i1 [ false, %134 ], [ %148, %143 ], !dbg !1396
  br label %364, !dbg !1397

151:                                              ; preds = %0
  call void @unary_advance(), !dbg !1398
  %152 = load ptr, ptr @argv, align 8, !dbg !1399, !tbaa !294
  %153 = load i32, ptr @pos, align 4, !dbg !1399, !tbaa !494
  %154 = sub nsw i32 %153, 1, !dbg !1399
  %155 = sext i32 %154 to i64, !dbg !1399
  %156 = getelementptr inbounds ptr, ptr %152, i64 %155, !dbg !1399
  %157 = load ptr, ptr %156, align 8, !dbg !1399, !tbaa !294
  %158 = call i32 @rpl_stat(ptr noundef %157, ptr noundef %1), !dbg !1399
  %159 = icmp eq i32 %158, 0, !dbg !1400
  br i1 %159, label %160, label %166, !dbg !1401

160:                                              ; preds = %151
  %161 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1402
  %162 = load i16, ptr %161, align 4, !dbg !1402, !tbaa !1395
  %163 = zext i16 %162 to i32, !dbg !1402
  %164 = and i32 %163, 61440, !dbg !1402
  %165 = icmp eq i32 %164, 16384, !dbg !1402
  br label %166

166:                                              ; preds = %160, %151
  %167 = phi i1 [ false, %151 ], [ %165, %160 ], !dbg !1396
  br label %364, !dbg !1403

168:                                              ; preds = %0
  call void @unary_advance(), !dbg !1404
  %169 = load ptr, ptr @argv, align 8, !dbg !1405, !tbaa !294
  %170 = load i32, ptr @pos, align 4, !dbg !1405, !tbaa !494
  %171 = sub nsw i32 %170, 1, !dbg !1405
  %172 = sext i32 %171 to i64, !dbg !1405
  %173 = getelementptr inbounds ptr, ptr %169, i64 %172, !dbg !1405
  %174 = load ptr, ptr %173, align 8, !dbg !1405, !tbaa !294
  %175 = call i32 @rpl_stat(ptr noundef %174, ptr noundef %1), !dbg !1405
  %176 = icmp eq i32 %175, 0, !dbg !1406
  br i1 %176, label %177, label %181, !dbg !1407

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 11, !dbg !1408
  %179 = load i64, ptr %178, align 8, !dbg !1408, !tbaa !1409
  %180 = icmp slt i64 0, %179, !dbg !1410
  br label %181

181:                                              ; preds = %177, %168
  %182 = phi i1 [ false, %168 ], [ %180, %177 ], !dbg !1396
  br label %364, !dbg !1411

183:                                              ; preds = %0
  call void @unary_advance(), !dbg !1412
  %184 = load ptr, ptr @argv, align 8, !dbg !1413, !tbaa !294
  %185 = load i32, ptr @pos, align 4, !dbg !1413, !tbaa !494
  %186 = sub nsw i32 %185, 1, !dbg !1413
  %187 = sext i32 %186 to i64, !dbg !1413
  %188 = getelementptr inbounds ptr, ptr %184, i64 %187, !dbg !1413
  %189 = load ptr, ptr %188, align 8, !dbg !1413, !tbaa !294
  %190 = call i32 @rpl_stat(ptr noundef %189, ptr noundef %1), !dbg !1413
  %191 = icmp eq i32 %190, 0, !dbg !1414
  br i1 %191, label %192, label %198, !dbg !1415

192:                                              ; preds = %183
  %193 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1416
  %194 = load i16, ptr %193, align 4, !dbg !1416, !tbaa !1395
  %195 = zext i16 %194 to i32, !dbg !1416
  %196 = and i32 %195, 61440, !dbg !1416
  %197 = icmp eq i32 %196, 49152, !dbg !1416
  br label %198

198:                                              ; preds = %192, %183
  %199 = phi i1 [ false, %183 ], [ %197, %192 ], !dbg !1396
  br label %364, !dbg !1417

200:                                              ; preds = %0
  call void @unary_advance(), !dbg !1418
  %201 = load ptr, ptr @argv, align 8, !dbg !1419, !tbaa !294
  %202 = load i32, ptr @pos, align 4, !dbg !1419, !tbaa !494
  %203 = sub nsw i32 %202, 1, !dbg !1419
  %204 = sext i32 %203 to i64, !dbg !1419
  %205 = getelementptr inbounds ptr, ptr %201, i64 %204, !dbg !1419
  %206 = load ptr, ptr %205, align 8, !dbg !1419, !tbaa !294
  %207 = call i32 @rpl_stat(ptr noundef %206, ptr noundef %1), !dbg !1419
  %208 = icmp eq i32 %207, 0, !dbg !1420
  br i1 %208, label %209, label %215, !dbg !1421

209:                                              ; preds = %200
  %210 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1422
  %211 = load i16, ptr %210, align 4, !dbg !1422, !tbaa !1395
  %212 = zext i16 %211 to i32, !dbg !1422
  %213 = and i32 %212, 61440, !dbg !1422
  %214 = icmp eq i32 %213, 8192, !dbg !1422
  br label %215

215:                                              ; preds = %209, %200
  %216 = phi i1 [ false, %200 ], [ %214, %209 ], !dbg !1396
  br label %364, !dbg !1423

217:                                              ; preds = %0
  call void @unary_advance(), !dbg !1424
  %218 = load ptr, ptr @argv, align 8, !dbg !1425, !tbaa !294
  %219 = load i32, ptr @pos, align 4, !dbg !1425, !tbaa !494
  %220 = sub nsw i32 %219, 1, !dbg !1425
  %221 = sext i32 %220 to i64, !dbg !1425
  %222 = getelementptr inbounds ptr, ptr %218, i64 %221, !dbg !1425
  %223 = load ptr, ptr %222, align 8, !dbg !1425, !tbaa !294
  %224 = call i32 @rpl_stat(ptr noundef %223, ptr noundef %1), !dbg !1425
  %225 = icmp eq i32 %224, 0, !dbg !1426
  br i1 %225, label %226, label %232, !dbg !1427

226:                                              ; preds = %217
  %227 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1428
  %228 = load i16, ptr %227, align 4, !dbg !1428, !tbaa !1395
  %229 = zext i16 %228 to i32, !dbg !1428
  %230 = and i32 %229, 61440, !dbg !1428
  %231 = icmp eq i32 %230, 24576, !dbg !1428
  br label %232

232:                                              ; preds = %226, %217
  %233 = phi i1 [ false, %217 ], [ %231, %226 ], !dbg !1396
  br label %364, !dbg !1429

234:                                              ; preds = %0
  call void @unary_advance(), !dbg !1430
  %235 = load ptr, ptr @argv, align 8, !dbg !1431, !tbaa !294
  %236 = load i32, ptr @pos, align 4, !dbg !1431, !tbaa !494
  %237 = sub nsw i32 %236, 1, !dbg !1431
  %238 = sext i32 %237 to i64, !dbg !1431
  %239 = getelementptr inbounds ptr, ptr %235, i64 %238, !dbg !1431
  %240 = load ptr, ptr %239, align 8, !dbg !1431, !tbaa !294
  %241 = call i32 @rpl_stat(ptr noundef %240, ptr noundef %1), !dbg !1431
  %242 = icmp eq i32 %241, 0, !dbg !1432
  br i1 %242, label %243, label %249, !dbg !1433

243:                                              ; preds = %234
  %244 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1434
  %245 = load i16, ptr %244, align 4, !dbg !1434, !tbaa !1395
  %246 = zext i16 %245 to i32, !dbg !1434
  %247 = and i32 %246, 61440, !dbg !1434
  %248 = icmp eq i32 %247, 4096, !dbg !1434
  br label %249

249:                                              ; preds = %243, %234
  %250 = phi i1 [ false, %234 ], [ %248, %243 ], !dbg !1396
  br label %364, !dbg !1435

251:                                              ; preds = %0, %0
  call void @unary_advance(), !dbg !1436
  %252 = load ptr, ptr @argv, align 8, !dbg !1437, !tbaa !294
  %253 = load i32, ptr @pos, align 4, !dbg !1438, !tbaa !494
  %254 = sub nsw i32 %253, 1, !dbg !1439
  %255 = sext i32 %254 to i64, !dbg !1437
  %256 = getelementptr inbounds ptr, ptr %252, i64 %255, !dbg !1437
  %257 = load ptr, ptr %256, align 8, !dbg !1437, !tbaa !294
  %258 = call i32 @rpl_lstat(ptr noundef %257, ptr noundef %1), !dbg !1440
  %259 = icmp eq i32 %258, 0, !dbg !1441
  br i1 %259, label %260, label %266, !dbg !1442

260:                                              ; preds = %251
  %261 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1443
  %262 = load i16, ptr %261, align 4, !dbg !1443, !tbaa !1395
  %263 = zext i16 %262 to i32, !dbg !1443
  %264 = and i32 %263, 61440, !dbg !1443
  %265 = icmp eq i32 %264, 40960, !dbg !1443
  br label %266

266:                                              ; preds = %260, %251
  %267 = phi i1 [ false, %251 ], [ %265, %260 ], !dbg !1396
  br label %364, !dbg !1444

268:                                              ; preds = %0
  call void @unary_advance(), !dbg !1445
  %269 = load ptr, ptr @argv, align 8, !dbg !1446, !tbaa !294
  %270 = load i32, ptr @pos, align 4, !dbg !1446, !tbaa !494
  %271 = sub nsw i32 %270, 1, !dbg !1446
  %272 = sext i32 %271 to i64, !dbg !1446
  %273 = getelementptr inbounds ptr, ptr %269, i64 %272, !dbg !1446
  %274 = load ptr, ptr %273, align 8, !dbg !1446, !tbaa !294
  %275 = call i32 @rpl_stat(ptr noundef %274, ptr noundef %1), !dbg !1446
  %276 = icmp eq i32 %275, 0, !dbg !1447
  br i1 %276, label %277, label %283, !dbg !1448

277:                                              ; preds = %268
  %278 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1449
  %279 = load i16, ptr %278, align 4, !dbg !1449, !tbaa !1395
  %280 = zext i16 %279 to i32, !dbg !1450
  %281 = and i32 %280, 2048, !dbg !1451
  %282 = icmp ne i32 %281, 0, !dbg !1448
  br label %283

283:                                              ; preds = %277, %268
  %284 = phi i1 [ false, %268 ], [ %282, %277 ], !dbg !1396
  br label %364, !dbg !1452

285:                                              ; preds = %0
  call void @unary_advance(), !dbg !1453
  %286 = load ptr, ptr @argv, align 8, !dbg !1454, !tbaa !294
  %287 = load i32, ptr @pos, align 4, !dbg !1454, !tbaa !494
  %288 = sub nsw i32 %287, 1, !dbg !1454
  %289 = sext i32 %288 to i64, !dbg !1454
  %290 = getelementptr inbounds ptr, ptr %286, i64 %289, !dbg !1454
  %291 = load ptr, ptr %290, align 8, !dbg !1454, !tbaa !294
  %292 = call i32 @rpl_stat(ptr noundef %291, ptr noundef %1), !dbg !1454
  %293 = icmp eq i32 %292, 0, !dbg !1455
  br i1 %293, label %294, label %300, !dbg !1456

294:                                              ; preds = %285
  %295 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1457
  %296 = load i16, ptr %295, align 4, !dbg !1457, !tbaa !1395
  %297 = zext i16 %296 to i32, !dbg !1458
  %298 = and i32 %297, 1024, !dbg !1459
  %299 = icmp ne i32 %298, 0, !dbg !1456
  br label %300

300:                                              ; preds = %294, %285
  %301 = phi i1 [ false, %285 ], [ %299, %294 ], !dbg !1396
  br label %364, !dbg !1460

302:                                              ; preds = %0
  call void @unary_advance(), !dbg !1461
  %303 = load ptr, ptr @argv, align 8, !dbg !1462, !tbaa !294
  %304 = load i32, ptr @pos, align 4, !dbg !1462, !tbaa !494
  %305 = sub nsw i32 %304, 1, !dbg !1462
  %306 = sext i32 %305 to i64, !dbg !1462
  %307 = getelementptr inbounds ptr, ptr %303, i64 %306, !dbg !1462
  %308 = load ptr, ptr %307, align 8, !dbg !1462, !tbaa !294
  %309 = call i32 @rpl_stat(ptr noundef %308, ptr noundef %1), !dbg !1462
  %310 = icmp eq i32 %309, 0, !dbg !1463
  br i1 %310, label %311, label %317, !dbg !1464

311:                                              ; preds = %302
  %312 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1465
  %313 = load i16, ptr %312, align 4, !dbg !1465, !tbaa !1395
  %314 = zext i16 %313 to i32, !dbg !1466
  %315 = and i32 %314, 512, !dbg !1467
  %316 = icmp ne i32 %315, 0, !dbg !1464
  br label %317

317:                                              ; preds = %311, %302
  %318 = phi i1 [ false, %302 ], [ %316, %311 ], !dbg !1396
  br label %364, !dbg !1468

319:                                              ; preds = %0
  call void @unary_advance(), !dbg !1469
  %320 = load ptr, ptr @argv, align 8, !dbg !1470, !tbaa !294
  %321 = load i32, ptr @pos, align 4, !dbg !1471, !tbaa !494
  %322 = sub nsw i32 %321, 1, !dbg !1472
  %323 = sext i32 %322 to i64, !dbg !1470
  %324 = getelementptr inbounds ptr, ptr %320, i64 %323, !dbg !1470
  %325 = load ptr, ptr %324, align 8, !dbg !1470, !tbaa !294
  %326 = call ptr @find_int(ptr noundef %325), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %326, metadata !1306, metadata !DIExpression()), !dbg !1474
  %327 = call ptr @__error(), !dbg !1475
  store i32 0, ptr %327, align 4, !dbg !1476, !tbaa !494
  %328 = call i64 @strtol(ptr noundef %326, ptr noundef null, i32 noundef 10), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %328, metadata !1304, metadata !DIExpression()), !dbg !1474
  %329 = call ptr @__error(), !dbg !1478
  %330 = load i32, ptr %329, align 4, !dbg !1478, !tbaa !494
  %331 = icmp ne i32 %330, 34, !dbg !1479
  br i1 %331, label %332, label %340, !dbg !1480

332:                                              ; preds = %319
  %333 = icmp sle i64 0, %328, !dbg !1481
  br i1 %333, label %334, label %340, !dbg !1482

334:                                              ; preds = %332
  %335 = icmp sle i64 %328, 2147483647, !dbg !1483
  br i1 %335, label %336, label %340, !dbg !1484

336:                                              ; preds = %334
  %337 = trunc i64 %328 to i32, !dbg !1485
  %338 = call i32 @isatty(i32 noundef %337), !dbg !1486
  %339 = icmp ne i32 %338, 0, !dbg !1484
  br label %340

340:                                              ; preds = %336, %334, %332, %319
  %341 = phi i1 [ false, %334 ], [ false, %332 ], [ false, %319 ], [ %339, %336 ], !dbg !1474
  br label %364

342:                                              ; preds = %0
  call void @unary_advance(), !dbg !1487
  %343 = load ptr, ptr @argv, align 8, !dbg !1488, !tbaa !294
  %344 = load i32, ptr @pos, align 4, !dbg !1489, !tbaa !494
  %345 = sub nsw i32 %344, 1, !dbg !1490
  %346 = sext i32 %345 to i64, !dbg !1488
  %347 = getelementptr inbounds ptr, ptr %343, i64 %346, !dbg !1488
  %348 = load ptr, ptr %347, align 8, !dbg !1488, !tbaa !294
  %349 = getelementptr inbounds i8, ptr %348, i64 0, !dbg !1488
  %350 = load i8, ptr %349, align 1, !dbg !1488, !tbaa !622
  %351 = sext i8 %350 to i32, !dbg !1488
  %352 = icmp ne i32 %351, 0, !dbg !1491
  br label %364, !dbg !1492

353:                                              ; preds = %0
  call void @unary_advance(), !dbg !1493
  %354 = load ptr, ptr @argv, align 8, !dbg !1494, !tbaa !294
  %355 = load i32, ptr @pos, align 4, !dbg !1495, !tbaa !494
  %356 = sub nsw i32 %355, 1, !dbg !1496
  %357 = sext i32 %356 to i64, !dbg !1494
  %358 = getelementptr inbounds ptr, ptr %354, i64 %357, !dbg !1494
  %359 = load ptr, ptr %358, align 8, !dbg !1494, !tbaa !294
  %360 = getelementptr inbounds i8, ptr %359, i64 0, !dbg !1494
  %361 = load i8, ptr %360, align 1, !dbg !1494, !tbaa !622
  %362 = sext i8 %361 to i32, !dbg !1494
  %363 = icmp eq i32 %362, 0, !dbg !1497
  br label %364, !dbg !1498

364:                                              ; preds = %353, %342, %340, %317, %300, %283, %266, %249, %232, %215, %198, %181, %166, %149, %132, %119, %108, %95, %65, %64, %46, %37, %28, %19
  %.0 = phi i1 [ %363, %353 ], [ %352, %342 ], [ %341, %340 ], [ %318, %317 ], [ %301, %300 ], [ %284, %283 ], [ %267, %266 ], [ %250, %249 ], [ %233, %232 ], [ %216, %215 ], [ %199, %198 ], [ %182, %181 ], [ %167, %166 ], [ %150, %149 ], [ false, %119 ], [ %133, %132 ], [ false, %95 ], [ %109, %108 ], [ false, %64 ], [ %85, %65 ], [ %54, %46 ], [ %45, %37 ], [ %36, %28 ], [ %27, %19 ], !dbg !1396
  call void @llvm.lifetime.end.p0(i64 144, ptr %1) #13, !dbg !1499
  ret i1 %.0, !dbg !1499
}

; Function Attrs: nounwind ssp uwtable
define internal void @unary_advance() #7 !dbg !1500 {
  call void @advance(i1 noundef zeroext true), !dbg !1501
  %1 = load i32, ptr @pos, align 4, !dbg !1502, !tbaa !494
  %2 = add nsw i32 %1, 1, !dbg !1502
  store i32 %2, ptr @pos, align 4, !dbg !1502, !tbaa !494
  ret void, !dbg !1503
}

declare !dbg !1504 i32 @rpl_stat(ptr noundef, ptr noundef) #2

declare !dbg !1510 i32 @euidaccess(ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally { i64, i64 } @get_stat_atime(ptr noundef %0) #10 !dbg !1514 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1521, metadata !DIExpression()), !dbg !1522
  %3 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 7, !dbg !1523
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false), !dbg !1523, !tbaa.struct !1524
  %4 = load { i64, i64 }, ptr %2, align 8, !dbg !1526
  ret { i64, i64 } %4, !dbg !1526
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally { i64, i64 } @get_stat_mtime(ptr noundef %0) #10 !dbg !1527 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1529, metadata !DIExpression()), !dbg !1530
  %3 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 8, !dbg !1531
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false), !dbg !1531, !tbaa.struct !1524
  %4 = load { i64, i64 }, ptr %2, align 8, !dbg !1532
  ret { i64, i64 } %4, !dbg !1532
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally i32 @timespec_cmp(i64 %0, i64 %1, i64 %2, i64 %3) #10 !dbg !1533 {
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0
  store i64 %0, ptr %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, ptr %6, i32 0, i32 0
  store i64 %2, ptr %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, ptr %6, i32 0, i32 1
  store i64 %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1538, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1539, metadata !DIExpression()), !dbg !1541
  %11 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0, !dbg !1542
  %12 = load i64, ptr %11, align 8, !dbg !1542, !tbaa !1543
  %13 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 0, !dbg !1542
  %14 = load i64, ptr %13, align 8, !dbg !1542, !tbaa !1543
  %15 = icmp sgt i64 %12, %14, !dbg !1542
  %16 = zext i1 %15 to i32, !dbg !1542
  %17 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0, !dbg !1542
  %18 = load i64, ptr %17, align 8, !dbg !1542, !tbaa !1543
  %19 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 0, !dbg !1542
  %20 = load i64, ptr %19, align 8, !dbg !1542, !tbaa !1543
  %21 = icmp slt i64 %18, %20, !dbg !1542
  %22 = zext i1 %21 to i32, !dbg !1542
  %23 = sub nsw i32 %16, %22, !dbg !1542
  %24 = mul nsw i32 2, %23, !dbg !1544
  %25 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 1, !dbg !1545
  %26 = load i64, ptr %25, align 8, !dbg !1545, !tbaa !1546
  %27 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !1545
  %28 = load i64, ptr %27, align 8, !dbg !1545, !tbaa !1546
  %29 = icmp sgt i64 %26, %28, !dbg !1545
  %30 = zext i1 %29 to i32, !dbg !1545
  %31 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 1, !dbg !1545
  %32 = load i64, ptr %31, align 8, !dbg !1545, !tbaa !1546
  %33 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !1545
  %34 = load i64, ptr %33, align 8, !dbg !1545, !tbaa !1546
  %35 = icmp slt i64 %32, %34, !dbg !1545
  %36 = zext i1 %35 to i32, !dbg !1545
  %37 = sub nsw i32 %30, %36, !dbg !1545
  %38 = add nsw i32 %24, %37, !dbg !1547
  ret i32 %38, !dbg !1548
}

declare !dbg !1549 ptr @__error() #2

declare !dbg !1554 i32 @geteuid() #2

declare !dbg !1558 i32 @getegid() #2

declare !dbg !1561 i32 @rpl_lstat(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @find_int(ptr noundef %0) #7 !dbg !1562 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1564, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata ptr %0, metadata !1565, metadata !DIExpression()), !dbg !1567
  br label %2, !dbg !1568

2:                                                ; preds = %9, %1
  %.01 = phi ptr [ %0, %1 ], [ %10, %9 ], !dbg !1570
  call void @llvm.dbg.value(metadata ptr %.01, metadata !1565, metadata !DIExpression()), !dbg !1567
  %3 = load i8, ptr %.01, align 1, !dbg !1571, !tbaa !622
  %4 = call zeroext i8 @to_uchar(i8 noundef signext %3), !dbg !1573
  %5 = zext i8 %4 to i32, !dbg !1573
  %6 = call i32 @isblank(i32 noundef %5) #15, !dbg !1574
  %7 = icmp ne i32 %6, 0, !dbg !1575
  br i1 %7, label %8, label %11, !dbg !1575

8:                                                ; preds = %2
  br label %9, !dbg !1576

9:                                                ; preds = %8
  %10 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !1577
  call void @llvm.dbg.value(metadata ptr %10, metadata !1565, metadata !DIExpression()), !dbg !1567
  br label %2, !dbg !1578, !llvm.loop !1579

11:                                               ; preds = %2
  %12 = load i8, ptr %.01, align 1, !dbg !1581, !tbaa !622
  %13 = sext i8 %12 to i32, !dbg !1581
  %14 = icmp eq i32 %13, 43, !dbg !1583
  br i1 %14, label %15, label %17, !dbg !1584

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !1585
  call void @llvm.dbg.value(metadata ptr %16, metadata !1565, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata ptr %16, metadata !1566, metadata !DIExpression()), !dbg !1567
  br label %24, !dbg !1587

17:                                               ; preds = %11
  call void @llvm.dbg.value(metadata ptr %.01, metadata !1566, metadata !DIExpression()), !dbg !1567
  %18 = load i8, ptr %.01, align 1, !dbg !1588, !tbaa !622
  %19 = sext i8 %18 to i32, !dbg !1588
  %20 = icmp eq i32 %19, 45, !dbg !1590
  %21 = zext i1 %20 to i32, !dbg !1590
  %22 = sext i32 %21 to i64, !dbg !1591
  %23 = getelementptr inbounds i8, ptr %.01, i64 %22, !dbg !1591
  call void @llvm.dbg.value(metadata ptr %23, metadata !1565, metadata !DIExpression()), !dbg !1567
  br label %24

24:                                               ; preds = %17, %15
  %.1 = phi ptr [ %16, %15 ], [ %23, %17 ], !dbg !1592
  %.0 = phi ptr [ %16, %15 ], [ %.01, %17 ], !dbg !1592
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1565, metadata !DIExpression()), !dbg !1567
  %25 = getelementptr inbounds i8, ptr %.1, i32 1, !dbg !1593
  call void @llvm.dbg.value(metadata ptr %25, metadata !1565, metadata !DIExpression()), !dbg !1567
  %26 = load i8, ptr %.1, align 1, !dbg !1593, !tbaa !622
  %27 = sext i8 %26 to i32, !dbg !1593
  %28 = sub i32 %27, 48, !dbg !1593
  %29 = icmp ule i32 %28, 9, !dbg !1593
  br i1 %29, label %30, label %52, !dbg !1595

30:                                               ; preds = %24
  br label %31, !dbg !1596

31:                                               ; preds = %36, %30
  %.2 = phi ptr [ %25, %30 ], [ %37, %36 ], !dbg !1598
  call void @llvm.dbg.value(metadata ptr %.2, metadata !1565, metadata !DIExpression()), !dbg !1567
  %32 = load i8, ptr %.2, align 1, !dbg !1599, !tbaa !622
  %33 = sext i8 %32 to i32, !dbg !1599
  %34 = sub i32 %33, 48, !dbg !1599
  %35 = icmp ule i32 %34, 9, !dbg !1599
  br i1 %35, label %36, label %38, !dbg !1596

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %.2, i32 1, !dbg !1600
  call void @llvm.dbg.value(metadata ptr %37, metadata !1565, metadata !DIExpression()), !dbg !1567
  br label %31, !dbg !1596, !llvm.loop !1601

38:                                               ; preds = %31
  br label %39, !dbg !1602

39:                                               ; preds = %45, %38
  %.3 = phi ptr [ %.2, %38 ], [ %46, %45 ], !dbg !1598
  call void @llvm.dbg.value(metadata ptr %.3, metadata !1565, metadata !DIExpression()), !dbg !1567
  %40 = load i8, ptr %.3, align 1, !dbg !1603, !tbaa !622
  %41 = call zeroext i8 @to_uchar(i8 noundef signext %40), !dbg !1604
  %42 = zext i8 %41 to i32, !dbg !1604
  %43 = call i32 @isblank(i32 noundef %42) #15, !dbg !1605
  %44 = icmp ne i32 %43, 0, !dbg !1602
  br i1 %44, label %45, label %47, !dbg !1602

45:                                               ; preds = %39
  %46 = getelementptr inbounds i8, ptr %.3, i32 1, !dbg !1606
  call void @llvm.dbg.value(metadata ptr %46, metadata !1565, metadata !DIExpression()), !dbg !1567
  br label %39, !dbg !1602, !llvm.loop !1607

47:                                               ; preds = %39
  %48 = load i8, ptr %.3, align 1, !dbg !1608, !tbaa !622
  %49 = icmp ne i8 %48, 0, !dbg !1608
  br i1 %49, label %51, label %50, !dbg !1610

50:                                               ; preds = %47
  ret ptr %.0, !dbg !1611

51:                                               ; preds = %47
  br label %52, !dbg !1612

52:                                               ; preds = %51, %24
  %53 = call ptr @quote(ptr noundef %0), !dbg !1613
  call void (ptr, ...) @test_syntax_error(ptr noundef @.str.43, ptr noundef %53) #12, !dbg !1614
  unreachable, !dbg !1614
}

declare !dbg !1615 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !1618 i32 @isatty(i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i8 @to_uchar(i8 noundef signext %0) #3 !dbg !1621 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1625, metadata !DIExpression()), !dbg !1626
  ret i8 %0, !dbg !1627
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally i32 @isblank(i32 noundef %0) #10 !dbg !1628 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1631, metadata !DIExpression()), !dbg !1632
  %2 = call i32 @__istype(i32 noundef %0, i64 noundef 131072), !dbg !1633
  ret i32 %2, !dbg !1634
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__istype(i32 noundef %0, i64 noundef %1) #3 !dbg !1635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1640, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i64 %1, metadata !1641, metadata !DIExpression()), !dbg !1642
  %3 = call i32 @isascii(i32 noundef %0), !dbg !1643
  %4 = icmp ne i32 %3, 0, !dbg !1643
  br i1 %4, label %5, label %15, !dbg !1643

5:                                                ; preds = %2
  %6 = sext i32 %0 to i64, !dbg !1644
  %7 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (%struct._RuneLocale, ptr @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %6, !dbg !1644
  %8 = load i32, ptr %7, align 4, !dbg !1644, !tbaa !494
  %9 = zext i32 %8 to i64, !dbg !1644
  %10 = and i64 %9, %1, !dbg !1645
  %11 = icmp ne i64 %10, 0, !dbg !1646
  %12 = xor i1 %11, true, !dbg !1646
  %13 = xor i1 %12, true, !dbg !1647
  %14 = zext i1 %13 to i32, !dbg !1647
  br label %21, !dbg !1643

15:                                               ; preds = %2
  %16 = call i32 @__maskrune(i32 noundef %0, i64 noundef %1), !dbg !1648
  %17 = icmp ne i32 %16, 0, !dbg !1649
  %18 = xor i1 %17, true, !dbg !1649
  %19 = xor i1 %18, true, !dbg !1650
  %20 = zext i1 %19 to i32, !dbg !1650
  br label %21, !dbg !1643

21:                                               ; preds = %15, %5
  %22 = phi i32 [ %14, %5 ], [ %20, %15 ], !dbg !1643
  ret i32 %22, !dbg !1651
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @isascii(i32 noundef %0) #3 !dbg !1652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1654, metadata !DIExpression()), !dbg !1655
  %2 = and i32 %0, -128, !dbg !1656
  %3 = icmp eq i32 %2, 0, !dbg !1657
  %4 = zext i1 %3 to i32, !dbg !1657
  ret i32 %4, !dbg !1658
}

declare !dbg !1659 i32 @__maskrune(i32 noundef, i64 noundef) #2

declare !dbg !1660 i64 @strlen(ptr noundef) #2

declare !dbg !1663 ptr @umaxtostr(i64 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1669 i32 @strintcmp(ptr noundef, ptr noundef) #11

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @get_mtime(ptr noundef %0, ptr noundef %1) #7 !dbg !1671 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1676, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata ptr %1, metadata !1677, metadata !DIExpression()), !dbg !1680
  call void @llvm.lifetime.start.p0(i64 144, ptr %3) #13, !dbg !1681
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1678, metadata !DIExpression()), !dbg !1682
  %5 = call i32 @rpl_stat(ptr noundef %0, ptr noundef %3), !dbg !1683
  %6 = icmp eq i32 %5, 0, !dbg !1684
  %7 = zext i1 %6 to i8, !dbg !1685
  call void @llvm.dbg.value(metadata i8 %7, metadata !1679, metadata !DIExpression()), !dbg !1680
  %8 = trunc i8 %7 to i1, !dbg !1686
  br i1 %8, label %9, label %15, !dbg !1688

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr %4) #13, !dbg !1689
  %10 = call { i64, i64 } @get_stat_mtime(ptr noundef %3) #15, !dbg !1689
  %11 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 0, !dbg !1689
  %12 = extractvalue { i64, i64 } %10, 0, !dbg !1689
  store i64 %12, ptr %11, align 8, !dbg !1689
  %13 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 1, !dbg !1689
  %14 = extractvalue { i64, i64 } %10, 1, !dbg !1689
  store i64 %14, ptr %13, align 8, !dbg !1689
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %4, i64 16, i1 false), !dbg !1689, !tbaa.struct !1524
  call void @llvm.lifetime.end.p0(i64 16, ptr %4) #13, !dbg !1689
  br label %15, !dbg !1690

15:                                               ; preds = %9, %2
  %16 = trunc i8 %7 to i1, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 144, ptr %3) #13, !dbg !1692
  ret i1 %16, !dbg !1693
}

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
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn }
attributes #13 = { nounwind }
attributes #14 = { cold noreturn }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!109}
!llvm.ident = !{!275}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 683, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/test.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 686, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 85)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 693, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 49)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 697, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 48)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 698, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 57)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 699, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 960, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 120)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 704, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1992, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 249)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 711, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2000, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 250)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 719, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3008, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 376)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 728, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1512, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 189)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 734, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 171)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 741, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2200, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 275)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 748, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2864, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 358)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 756, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2264, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 283)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 763, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1800, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 225)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 769, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 976, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 122)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 774, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1088, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 136)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 779, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1528, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 191)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 779, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 14)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 780, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 5)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 815, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 1)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "argv", scope: !109, file: !2, line: 73, type: !273, isLocal: true, isDefinition: true)
!109 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !117, globals: !120, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!110 = !{!111}
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 59, baseType: !112, size: 32, elements: !113)
!112 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!113 = !{!114, !115, !116}
!114 = !DIEnumerator(name: "TEST_TRUE", value: 0)
!115 = !DIEnumerator(name: "TEST_FALSE", value: 1)
!116 = !DIEnumerator(name: "TEST_FAILURE", value: 2)
!117 = !{!118, !112}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!120 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !77, !82, !87, !92, !97, !102, !121, !126, !129, !107, !131, !137, !142, !147, !152, !154, !159, !161, !163, !165, !170, !172, !177, !182, !187, !192, !197, !202, !204, !206, !208, !213, !218, !223, !228, !230, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 860, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 18)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "pos", scope: !109, file: !2, line: 71, type: !128, isLocal: true, isDefinition: true)
!128 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "argc", scope: !109, file: !2, line: 72, type: !128, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !133, line: 660, type: !134, isLocal: true, isDefinition: true)
!133 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 2)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !133, line: 660, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 16)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !133, line: 661, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 10)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !133, line: 661, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 22)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !133, line: 662, type: !144, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !133, line: 662, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 15)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !133, line: 663, type: !144, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !133, line: 664, type: !144, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !133, line: 665, type: !144, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !133, line: 678, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 23)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !133, line: 678, type: !94, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !133, line: 678, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 40)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !133, line: 683, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 4)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !133, line: 689, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 71)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !133, line: 696, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 27)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !133, line: 698, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 51)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !133, line: 699, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 12)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 653, type: !134, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 659, type: !134, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 659, type: !134, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 391, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 28)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 19)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 26)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 3)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !225, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 627, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 29)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !134, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !225, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !225, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !179, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !179, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !179, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !179, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !179, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !179, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !179, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !179, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !179, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !225, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 323, type: !167, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !2, line: 336, type: !167, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !167, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 361, type: !210, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !199, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !149, isLocal: true, isDefinition: true)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!275 = !{!"Homebrew clang version 16.0.4"}
!276 = !{i32 7, !"Dwarf Version", i32 4}
!277 = !{i32 2, !"Debug Info Version", i32 3}
!278 = !{i32 1, !"wchar_size", i32 4}
!279 = !{i32 8, !"PIC Level", i32 2}
!280 = !{i32 7, !"uwtable", i32 2}
!281 = !{i32 7, !"frame-pointer", i32 2}
!282 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 680, type: !283, scopeLine: 681, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !128}
!285 = !{!286}
!286 = !DILocalVariable(name: "status", arg: 1, scope: !282, file: !2, line: 680, type: !128)
!287 = !DILocation(line: 0, scope: !282)
!288 = !DILocation(line: 682, column: 14, scope: !289)
!289 = distinct !DILexicalBlock(scope: !282, file: !2, line: 682, column: 7)
!290 = !DILocation(line: 682, column: 7, scope: !282)
!291 = !DILocation(line: 683, column: 5, scope: !289)
!292 = !DILocation(line: 683, column: 5, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !2, line: 683, column: 5)
!294 = !{!295, !295, i64 0}
!295 = !{!"any pointer", !296, i64 0}
!296 = !{!"omnipotent char", !297, i64 0}
!297 = !{!"Simple C/C++ TBAA"}
!298 = !DILocation(line: 692, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !289, file: !2, line: 685, column: 5)
!300 = !DILocation(line: 686, column: 7, scope: !299)
!301 = !DILocation(line: 696, column: 5, scope: !299)
!302 = !DILocation(line: 693, column: 7, scope: !299)
!303 = !DILocation(line: 697, column: 39, scope: !299)
!304 = !DILocation(line: 697, column: 7, scope: !299)
!305 = !DILocation(line: 698, column: 42, scope: !299)
!306 = !DILocation(line: 698, column: 7, scope: !299)
!307 = !DILocation(line: 703, column: 5, scope: !299)
!308 = !DILocation(line: 699, column: 7, scope: !299)
!309 = !DILocation(line: 710, column: 5, scope: !299)
!310 = !DILocation(line: 704, column: 7, scope: !299)
!311 = !DILocation(line: 718, column: 5, scope: !299)
!312 = !DILocation(line: 711, column: 7, scope: !299)
!313 = !DILocation(line: 727, column: 5, scope: !299)
!314 = !DILocation(line: 719, column: 7, scope: !299)
!315 = !DILocation(line: 733, column: 5, scope: !299)
!316 = !DILocation(line: 728, column: 7, scope: !299)
!317 = !DILocation(line: 740, column: 5, scope: !299)
!318 = !DILocation(line: 734, column: 7, scope: !299)
!319 = !DILocation(line: 747, column: 5, scope: !299)
!320 = !DILocation(line: 741, column: 7, scope: !299)
!321 = !DILocation(line: 755, column: 5, scope: !299)
!322 = !DILocation(line: 748, column: 7, scope: !299)
!323 = !DILocation(line: 762, column: 5, scope: !299)
!324 = !DILocation(line: 756, column: 7, scope: !299)
!325 = !DILocation(line: 768, column: 5, scope: !299)
!326 = !DILocation(line: 763, column: 7, scope: !299)
!327 = !DILocation(line: 773, column: 5, scope: !299)
!328 = !DILocation(line: 769, column: 7, scope: !299)
!329 = !DILocation(line: 778, column: 5, scope: !299)
!330 = !DILocation(line: 774, column: 7, scope: !299)
!331 = !DILocation(line: 779, column: 7, scope: !299)
!332 = !DILocation(line: 780, column: 7, scope: !299)
!333 = !DILocation(line: 782, column: 3, scope: !282)
!334 = !DISubprogram(name: "fprintf", scope: !335, file: !335, line: 155, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!335 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!336 = !DISubroutineType(types: !337)
!337 = !{!128, !338, !394, null}
!338 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !341, line: 157, baseType: !342)
!341 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !341, line: 126, size: 1216, elements: !343)
!343 = !{!344, !347, !348, !349, !351, !352, !357, !358, !360, !364, !368, !378, !382, !383, !386, !387, !389, !391, !392, !393}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !342, file: !341, line: 127, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !342, file: !341, line: 128, baseType: !128, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !342, file: !341, line: 129, baseType: !128, size: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !342, file: !341, line: 130, baseType: !350, size: 16, offset: 128)
!350 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !342, file: !341, line: 131, baseType: !350, size: 16, offset: 144)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !342, file: !341, line: 132, baseType: !353, size: 128, offset: 192)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !341, line: 92, size: 128, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !353, file: !341, line: 93, baseType: !345, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !353, file: !341, line: 94, baseType: !128, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !342, file: !341, line: 133, baseType: !128, size: 32, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !342, file: !341, line: 136, baseType: !359, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !342, file: !341, line: 137, baseType: !361, size: 64, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!128, !359}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !342, file: !341, line: 138, baseType: !365, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!128, !359, !274, !128}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !342, file: !341, line: 139, baseType: !369, size: 64, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!372, !359, !372, !128}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !341, line: 81, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !374, line: 71, baseType: !375)
!374 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !376, line: 48, baseType: !377)
!376 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!377 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !342, file: !341, line: 140, baseType: !379, size: 64, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!128, !359, !118, !128}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !342, file: !341, line: 143, baseType: !353, size: 128, offset: 704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !342, file: !341, line: 144, baseType: !384, size: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !341, line: 98, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !342, file: !341, line: 145, baseType: !128, size: 32, offset: 896)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !342, file: !341, line: 148, baseType: !388, size: 24, offset: 928)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 24, elements: !226)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !342, file: !341, line: 149, baseType: !390, size: 8, offset: 952)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 8, elements: !105)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !342, file: !341, line: 152, baseType: !353, size: 128, offset: 960)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !342, file: !341, line: 155, baseType: !128, size: 32, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !342, file: !341, line: 156, baseType: !372, size: 64, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!395 = !{}
!396 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !335, file: !335, line: 157, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!397 = !DISubroutineType(types: !398)
!398 = !{!128, !394, !338}
!399 = !DISubprogram(name: "printf", scope: !335, file: !335, line: 175, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!400 = !DISubroutineType(types: !401)
!401 = !{!128, !394, null}
!402 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !133, file: !133, line: 657, type: !403, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !118}
!405 = !{!406, !407, !416, !417, !419, !420}
!406 = !DILocalVariable(name: "program", arg: 1, scope: !402, file: !133, line: 657, type: !118)
!407 = !DILocalVariable(name: "infomap", scope: !402, file: !133, line: 659, type: !408)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 896, elements: !414)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !402, file: !133, line: 659, size: 128, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !410, file: !133, line: 659, baseType: !118, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !410, file: !133, line: 659, baseType: !118, size: 64, offset: 64)
!414 = !{!415}
!415 = !DISubrange(count: 7)
!416 = !DILocalVariable(name: "node", scope: !402, file: !133, line: 669, type: !118)
!417 = !DILocalVariable(name: "map_prog", scope: !402, file: !133, line: 670, type: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!419 = !DILocalVariable(name: "lc_messages", scope: !402, file: !133, line: 682, type: !118)
!420 = !DILocalVariable(name: "url_program", scope: !402, file: !133, line: 695, type: !118)
!421 = !DILocation(line: 0, scope: !402)
!422 = !DILocation(line: 659, column: 3, scope: !402)
!423 = !DILocation(line: 659, column: 67, scope: !402)
!424 = !DILocation(line: 670, column: 36, scope: !402)
!425 = !DILocation(line: 672, column: 3, scope: !402)
!426 = !DILocation(line: 672, column: 20, scope: !402)
!427 = !{!428, !295, i64 0}
!428 = !{!"infomap", !295, i64 0, !295, i64 8}
!429 = !DILocation(line: 672, column: 10, scope: !402)
!430 = !DILocation(line: 672, column: 28, scope: !402)
!431 = !DILocation(line: 672, column: 33, scope: !402)
!432 = !DILocation(line: 672, column: 31, scope: !402)
!433 = !DILocation(line: 673, column: 13, scope: !402)
!434 = distinct !{!434, !425, !433, !435, !436}
!435 = !{!"llvm.loop.mustprogress"}
!436 = !{!"llvm.loop.unroll.disable"}
!437 = !DILocation(line: 675, column: 17, scope: !438)
!438 = distinct !DILexicalBlock(scope: !402, file: !133, line: 675, column: 7)
!439 = !{!428, !295, i64 8}
!440 = !DILocation(line: 675, column: 7, scope: !438)
!441 = !DILocation(line: 675, column: 7, scope: !402)
!442 = !DILocation(line: 676, column: 22, scope: !438)
!443 = !DILocation(line: 676, column: 5, scope: !438)
!444 = !DILocation(line: 678, column: 3, scope: !402)
!445 = !DILocation(line: 682, column: 29, scope: !402)
!446 = !DILocation(line: 683, column: 7, scope: !447)
!447 = distinct !DILexicalBlock(scope: !402, file: !133, line: 683, column: 7)
!448 = !DILocation(line: 683, column: 19, scope: !447)
!449 = !DILocation(line: 683, column: 22, scope: !447)
!450 = !DILocation(line: 683, column: 7, scope: !402)
!451 = !DILocation(line: 690, column: 61, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !133, line: 684, column: 5)
!453 = !DILocation(line: 689, column: 7, scope: !452)
!454 = !DILocation(line: 691, column: 5, scope: !452)
!455 = !DILocation(line: 695, column: 29, scope: !402)
!456 = !DILocation(line: 696, column: 3, scope: !402)
!457 = !DILocation(line: 699, column: 22, scope: !402)
!458 = !DILocation(line: 699, column: 17, scope: !402)
!459 = !DILocation(line: 698, column: 3, scope: !402)
!460 = !DILocation(line: 700, column: 1, scope: !402)
!461 = !DISubprogram(name: "exit", scope: !462, file: !462, line: 145, type: !283, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !395)
!462 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!463 = !DISubprogram(name: "strcmp", scope: !464, file: !464, line: 77, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!464 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!465 = !DISubroutineType(types: !466)
!466 = !{!128, !118, !118}
!467 = !DISubprogram(name: "setlocale", scope: !468, file: !468, line: 53, type: !469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!468 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!469 = !DISubroutineType(types: !470)
!470 = !{!274, !128, !118}
!471 = !DISubprogram(name: "strncmp", scope: !464, file: !464, line: 84, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!472 = !DISubroutineType(types: !473)
!473 = !{!128, !118, !118, !474}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !475, line: 31, baseType: !476)
!475 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !376, line: 94, baseType: !477)
!477 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!478 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 801, type: !479, scopeLine: 802, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{!128, !128, !273}
!481 = !{!482, !483, !484}
!482 = !DILocalVariable(name: "margc", arg: 1, scope: !478, file: !2, line: 801, type: !128)
!483 = !DILocalVariable(name: "margv", arg: 2, scope: !478, file: !2, line: 801, type: !273)
!484 = !DILocalVariable(name: "value", scope: !478, file: !2, line: 803, type: !485)
!485 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!486 = !DILocation(line: 0, scope: !478)
!487 = !DILocation(line: 814, column: 21, scope: !478)
!488 = !DILocation(line: 814, column: 3, scope: !478)
!489 = !DILocation(line: 815, column: 3, scope: !478)
!490 = !DILocation(line: 819, column: 3, scope: !478)
!491 = !DILocation(line: 820, column: 3, scope: !478)
!492 = !DILocation(line: 823, column: 8, scope: !478)
!493 = !DILocation(line: 851, column: 8, scope: !478)
!494 = !{!495, !495, i64 0}
!495 = !{!"int", !296, i64 0}
!496 = !DILocation(line: 852, column: 7, scope: !478)
!497 = !DILocation(line: 854, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !478, file: !2, line: 854, column: 7)
!499 = !DILocation(line: 854, column: 14, scope: !498)
!500 = !DILocation(line: 854, column: 11, scope: !498)
!501 = !DILocation(line: 854, column: 7, scope: !478)
!502 = !DILocation(line: 855, column: 5, scope: !498)
!503 = !DILocation(line: 857, column: 22, scope: !478)
!504 = !DILocation(line: 857, column: 27, scope: !478)
!505 = !DILocation(line: 857, column: 11, scope: !478)
!506 = !DILocation(line: 857, column: 9, scope: !478)
!507 = !DILocation(line: 859, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !478, file: !2, line: 859, column: 7)
!509 = !DILocation(line: 859, column: 14, scope: !508)
!510 = !DILocation(line: 859, column: 11, scope: !508)
!511 = !DILocation(line: 859, column: 7, scope: !478)
!512 = !DILocation(line: 860, column: 55, scope: !508)
!513 = !DILocation(line: 860, column: 60, scope: !508)
!514 = !DILocation(line: 860, column: 48, scope: !508)
!515 = !DILocation(line: 860, column: 5, scope: !508)
!516 = !DILocation(line: 862, column: 3, scope: !478)
!517 = !DILocation(line: 863, column: 1, scope: !478)
!518 = !DISubprogram(name: "set_program_name", scope: !519, file: !519, line: 37, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!519 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!520 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !133, file: !133, line: 96, type: !283, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !521)
!521 = !{!522}
!522 = !DILocalVariable(name: "status", arg: 1, scope: !520, file: !133, line: 96, type: !128)
!523 = !DILocation(line: 0, scope: !520)
!524 = !DILocation(line: 98, column: 14, scope: !525)
!525 = distinct !DILexicalBlock(scope: !520, file: !133, line: 98, column: 7)
!526 = !DILocation(line: 98, column: 7, scope: !520)
!527 = !DILocation(line: 99, column: 18, scope: !525)
!528 = !DILocation(line: 99, column: 5, scope: !525)
!529 = !DILocation(line: 100, column: 1, scope: !520)
!530 = !DISubprogram(name: "atexit", scope: !462, file: !462, line: 133, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!531 = !DISubroutineType(types: !532)
!532 = !{!128, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null}
!536 = distinct !DISubprogram(name: "posixtest", scope: !2, file: !2, line: 634, type: !537, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!485, !128}
!539 = !{!540, !541}
!540 = !DILocalVariable(name: "nargs", arg: 1, scope: !536, file: !2, line: 634, type: !128)
!541 = !DILocalVariable(name: "value", scope: !536, file: !2, line: 636, type: !485)
!542 = !DILocation(line: 0, scope: !536)
!543 = !DILocation(line: 638, column: 3, scope: !536)
!544 = !DILocation(line: 641, column: 17, scope: !545)
!545 = distinct !DILexicalBlock(scope: !536, file: !2, line: 639, column: 5)
!546 = !DILocation(line: 641, column: 15, scope: !545)
!547 = !DILocation(line: 642, column: 9, scope: !545)
!548 = !DILocation(line: 645, column: 17, scope: !545)
!549 = !DILocation(line: 645, column: 15, scope: !545)
!550 = !DILocation(line: 646, column: 9, scope: !545)
!551 = !DILocation(line: 649, column: 17, scope: !545)
!552 = !DILocation(line: 649, column: 15, scope: !545)
!553 = !DILocation(line: 650, column: 9, scope: !545)
!554 = !DILocation(line: 653, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !545, file: !2, line: 653, column: 13)
!556 = !DILocation(line: 653, column: 13, scope: !545)
!557 = !DILocation(line: 655, column: 13, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !2, line: 654, column: 11)
!559 = !DILocation(line: 656, column: 22, scope: !558)
!560 = !DILocation(line: 656, column: 21, scope: !558)
!561 = !DILocation(line: 656, column: 19, scope: !558)
!562 = !DILocation(line: 657, column: 13, scope: !558)
!563 = !DILocation(line: 659, column: 13, scope: !564)
!564 = distinct !DILexicalBlock(scope: !545, file: !2, line: 659, column: 13)
!565 = !DILocation(line: 659, column: 36, scope: !564)
!566 = !DILocation(line: 659, column: 39, scope: !564)
!567 = !DILocation(line: 659, column: 13, scope: !545)
!568 = !DILocation(line: 661, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !564, file: !2, line: 660, column: 11)
!570 = !DILocation(line: 662, column: 21, scope: !569)
!571 = !DILocation(line: 662, column: 19, scope: !569)
!572 = !DILocation(line: 663, column: 13, scope: !569)
!573 = !DILocation(line: 664, column: 13, scope: !569)
!574 = !DILocation(line: 667, column: 7, scope: !545)
!575 = !DILocation(line: 669, column: 19, scope: !576)
!576 = distinct !DILexicalBlock(scope: !545, file: !2, line: 669, column: 13)
!577 = !DILocation(line: 669, column: 13, scope: !545)
!578 = !DILocation(line: 670, column: 11, scope: !576)
!579 = !DILocation(line: 671, column: 17, scope: !545)
!580 = !DILocation(line: 671, column: 15, scope: !545)
!581 = !DILocation(line: 672, column: 5, scope: !545)
!582 = !DILocation(line: 0, scope: !545)
!583 = !DILocation(line: 674, column: 11, scope: !536)
!584 = !DILocation(line: 674, column: 3, scope: !536)
!585 = !DISubprogram(name: "quote", scope: !586, file: !586, line: 44, type: !587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!586 = !DIFile(filename: "../lib/quote.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!587 = !DISubroutineType(types: !588)
!588 = !{!118, !118}
!589 = distinct !DISubprogram(name: "test_syntax_error", scope: !2, file: !2, line: 90, type: !590, scopeLine: 91, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !118, null}
!592 = !{!593, !594}
!593 = !DILocalVariable(name: "format", arg: 1, scope: !589, file: !2, line: 90, type: !118)
!594 = !DILocalVariable(name: "ap", scope: !589, file: !2, line: 92, type: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !596, line: 22, baseType: !597)
!596 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stdarg.h", directory: "")
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 192, elements: !105)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !600)
!600 = !{!601, !602, !603, !604}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !599, file: !2, line: 92, baseType: !112, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !599, file: !2, line: 92, baseType: !112, size: 32, offset: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !599, file: !2, line: 92, baseType: !359, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !599, file: !2, line: 92, baseType: !359, size: 64, offset: 128)
!605 = !DILocation(line: 0, scope: !589)
!606 = !DILocation(line: 92, column: 3, scope: !589)
!607 = !DILocation(line: 92, column: 11, scope: !589)
!608 = !DILocation(line: 93, column: 3, scope: !589)
!609 = !DILocation(line: 94, column: 25, scope: !589)
!610 = !DILocation(line: 94, column: 3, scope: !589)
!611 = !DILocation(line: 95, column: 3, scope: !589)
!612 = !DISubprogram(name: "verror", scope: !613, file: !613, line: 35, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!613 = !DIFile(filename: "../lib/verror.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!614 = !DISubroutineType(types: !615)
!615 = !{null, !128, !128, !118, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!617 = distinct !DISubprogram(name: "one_argument", scope: !2, file: !2, line: 580, type: !618, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !395)
!618 = !DISubroutineType(types: !619)
!619 = !{!485}
!620 = !DILocation(line: 582, column: 10, scope: !617)
!621 = !DILocation(line: 582, column: 18, scope: !617)
!622 = !{!296, !296, i64 0}
!623 = !DILocation(line: 582, column: 25, scope: !617)
!624 = !DILocation(line: 582, column: 3, scope: !617)
!625 = distinct !DISubprogram(name: "two_arguments", scope: !2, file: !2, line: 586, type: !618, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !626)
!626 = !{!627}
!627 = !DILocalVariable(name: "value", scope: !625, file: !2, line: 588, type: !485)
!628 = !DILocation(line: 590, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !2, line: 590, column: 7)
!630 = !DILocation(line: 590, column: 7, scope: !625)
!631 = !DILocation(line: 592, column: 7, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !2, line: 591, column: 5)
!633 = !DILocation(line: 593, column: 17, scope: !632)
!634 = !DILocation(line: 593, column: 15, scope: !632)
!635 = !DILocation(line: 593, column: 13, scope: !632)
!636 = !DILocation(line: 0, scope: !625)
!637 = !DILocation(line: 594, column: 5, scope: !632)
!638 = !DILocation(line: 595, column: 12, scope: !639)
!639 = distinct !DILexicalBlock(scope: !629, file: !2, line: 595, column: 12)
!640 = !DILocation(line: 595, column: 17, scope: !639)
!641 = !DILocation(line: 595, column: 25, scope: !639)
!642 = !DILocation(line: 596, column: 12, scope: !639)
!643 = !DILocation(line: 596, column: 15, scope: !639)
!644 = !DILocation(line: 596, column: 20, scope: !639)
!645 = !DILocation(line: 596, column: 28, scope: !639)
!646 = !DILocation(line: 597, column: 12, scope: !639)
!647 = !DILocation(line: 597, column: 15, scope: !639)
!648 = !DILocation(line: 597, column: 20, scope: !639)
!649 = !DILocation(line: 597, column: 28, scope: !639)
!650 = !DILocation(line: 595, column: 12, scope: !629)
!651 = !DILocation(line: 599, column: 15, scope: !652)
!652 = distinct !DILexicalBlock(scope: !639, file: !2, line: 598, column: 5)
!653 = !DILocation(line: 599, column: 13, scope: !652)
!654 = !DILocation(line: 600, column: 5, scope: !652)
!655 = !DILocation(line: 602, column: 5, scope: !639)
!656 = !DILocation(line: 0, scope: !629)
!657 = !DILocation(line: 603, column: 11, scope: !625)
!658 = !DILocation(line: 603, column: 3, scope: !625)
!659 = distinct !DISubprogram(name: "three_arguments", scope: !2, file: !2, line: 607, type: !618, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !660)
!660 = !{!661}
!661 = !DILocalVariable(name: "value", scope: !659, file: !2, line: 609, type: !485)
!662 = !DILocation(line: 611, column: 14, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !2, line: 611, column: 7)
!664 = !DILocation(line: 611, column: 19, scope: !663)
!665 = !DILocation(line: 611, column: 23, scope: !663)
!666 = !DILocation(line: 611, column: 7, scope: !663)
!667 = !DILocation(line: 611, column: 7, scope: !659)
!668 = !DILocation(line: 612, column: 13, scope: !663)
!669 = !DILocation(line: 612, column: 11, scope: !663)
!670 = !DILocation(line: 0, scope: !659)
!671 = !DILocation(line: 612, column: 5, scope: !663)
!672 = !DILocation(line: 613, column: 12, scope: !673)
!673 = distinct !DILexicalBlock(scope: !663, file: !2, line: 613, column: 12)
!674 = !DILocation(line: 613, column: 12, scope: !663)
!675 = !DILocation(line: 615, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !2, line: 614, column: 5)
!677 = !DILocation(line: 616, column: 16, scope: !676)
!678 = !DILocation(line: 616, column: 15, scope: !676)
!679 = !DILocation(line: 616, column: 13, scope: !676)
!680 = !DILocation(line: 617, column: 5, scope: !676)
!681 = !DILocation(line: 618, column: 12, scope: !682)
!682 = distinct !DILexicalBlock(scope: !673, file: !2, line: 618, column: 12)
!683 = !DILocation(line: 618, column: 35, scope: !682)
!684 = !DILocation(line: 618, column: 38, scope: !682)
!685 = !DILocation(line: 618, column: 12, scope: !673)
!686 = !DILocation(line: 620, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !682, file: !2, line: 619, column: 5)
!688 = !DILocation(line: 621, column: 15, scope: !687)
!689 = !DILocation(line: 621, column: 13, scope: !687)
!690 = !DILocation(line: 622, column: 7, scope: !687)
!691 = !DILocation(line: 623, column: 5, scope: !687)
!692 = !DILocation(line: 624, column: 12, scope: !693)
!693 = distinct !DILexicalBlock(scope: !682, file: !2, line: 624, column: 12)
!694 = !DILocation(line: 624, column: 40, scope: !693)
!695 = !DILocation(line: 624, column: 43, scope: !693)
!696 = !DILocation(line: 624, column: 12, scope: !682)
!697 = !DILocation(line: 625, column: 13, scope: !693)
!698 = !DILocation(line: 625, column: 11, scope: !693)
!699 = !DILocation(line: 625, column: 5, scope: !693)
!700 = !DILocation(line: 628, column: 31, scope: !693)
!701 = !DILocation(line: 628, column: 36, scope: !693)
!702 = !DILocation(line: 628, column: 40, scope: !693)
!703 = !DILocation(line: 628, column: 24, scope: !693)
!704 = !DILocation(line: 627, column: 5, scope: !693)
!705 = !DILocation(line: 0, scope: !682)
!706 = !DILocation(line: 0, scope: !673)
!707 = !DILocation(line: 0, scope: !663)
!708 = !DILocation(line: 629, column: 11, scope: !659)
!709 = !DILocation(line: 629, column: 3, scope: !659)
!710 = distinct !DISubprogram(name: "advance", scope: !2, file: !2, line: 103, type: !711, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !485}
!713 = !{!714}
!714 = !DILocalVariable(name: "f", arg: 1, scope: !710, file: !2, line: 103, type: !485)
!715 = !DILocation(line: 0, scope: !710)
!716 = !DILocation(line: 105, column: 3, scope: !710)
!717 = !DILocation(line: 107, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !710, file: !2, line: 107, column: 7)
!719 = !DILocation(line: 107, column: 9, scope: !718)
!720 = !DILocation(line: 107, column: 12, scope: !718)
!721 = !DILocation(line: 107, column: 19, scope: !718)
!722 = !DILocation(line: 107, column: 16, scope: !718)
!723 = !DILocation(line: 107, column: 7, scope: !710)
!724 = !DILocation(line: 108, column: 5, scope: !718)
!725 = !DILocation(line: 109, column: 1, scope: !710)
!726 = !DISubprogram(name: "abort", scope: !462, file: !462, line: 131, type: !534, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !395)
!727 = distinct !DISubprogram(name: "expr", scope: !2, file: !2, line: 571, type: !618, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !395)
!728 = !DILocation(line: 573, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !727, file: !2, line: 573, column: 7)
!730 = !DILocation(line: 573, column: 14, scope: !729)
!731 = !DILocation(line: 573, column: 11, scope: !729)
!732 = !DILocation(line: 573, column: 7, scope: !727)
!733 = !DILocation(line: 574, column: 5, scope: !729)
!734 = !DILocation(line: 576, column: 10, scope: !727)
!735 = !DILocation(line: 576, column: 3, scope: !727)
!736 = distinct !DISubprogram(name: "beyond", scope: !2, file: !2, line: 123, type: !534, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !395)
!737 = !DILocation(line: 125, column: 61, scope: !736)
!738 = !DILocation(line: 125, column: 66, scope: !736)
!739 = !DILocation(line: 125, column: 71, scope: !736)
!740 = !DILocation(line: 125, column: 54, scope: !736)
!741 = !DILocation(line: 125, column: 3, scope: !736)
!742 = distinct !DISubprogram(name: "or", scope: !2, file: !2, line: 553, type: !618, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !743)
!743 = !{!744}
!744 = !DILocalVariable(name: "value", scope: !742, file: !2, line: 555, type: !485)
!745 = !DILocation(line: 0, scope: !742)
!746 = !DILocation(line: 557, column: 3, scope: !742)
!747 = !DILocation(line: 559, column: 16, scope: !748)
!748 = distinct !DILexicalBlock(scope: !742, file: !2, line: 558, column: 5)
!749 = !DILocation(line: 559, column: 13, scope: !748)
!750 = !DILocation(line: 560, column: 14, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !2, line: 560, column: 11)
!752 = !DILocation(line: 560, column: 20, scope: !751)
!753 = !DILocation(line: 560, column: 18, scope: !751)
!754 = !DILocation(line: 560, column: 25, scope: !751)
!755 = !DILocation(line: 560, column: 28, scope: !751)
!756 = !DILocation(line: 560, column: 11, scope: !748)
!757 = !DILocation(line: 561, column: 16, scope: !751)
!758 = !DILocation(line: 561, column: 9, scope: !751)
!759 = !DILocation(line: 562, column: 7, scope: !748)
!760 = distinct !{!760, !746, !761, !436}
!761 = !DILocation(line: 563, column: 5, scope: !742)
!762 = distinct !DISubprogram(name: "and", scope: !2, file: !2, line: 534, type: !618, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !763)
!763 = !{!764}
!764 = !DILocalVariable(name: "value", scope: !762, file: !2, line: 536, type: !485)
!765 = !DILocation(line: 0, scope: !762)
!766 = !DILocation(line: 538, column: 3, scope: !762)
!767 = !DILocation(line: 540, column: 16, scope: !768)
!768 = distinct !DILexicalBlock(scope: !762, file: !2, line: 539, column: 5)
!769 = !DILocation(line: 540, column: 13, scope: !768)
!770 = !DILocation(line: 541, column: 14, scope: !771)
!771 = distinct !DILexicalBlock(scope: !768, file: !2, line: 541, column: 11)
!772 = !DILocation(line: 541, column: 20, scope: !771)
!773 = !DILocation(line: 541, column: 18, scope: !771)
!774 = !DILocation(line: 541, column: 25, scope: !771)
!775 = !DILocation(line: 541, column: 28, scope: !771)
!776 = !DILocation(line: 541, column: 11, scope: !768)
!777 = !DILocation(line: 542, column: 16, scope: !771)
!778 = !DILocation(line: 542, column: 9, scope: !771)
!779 = !DILocation(line: 543, column: 7, scope: !768)
!780 = distinct !{!780, !766, !781, !436}
!781 = !DILocation(line: 544, column: 5, scope: !762)
!782 = distinct !DISubprogram(name: "term", scope: !2, file: !2, line: 206, type: !618, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !783)
!783 = !{!784, !785, !786}
!784 = !DILocalVariable(name: "value", scope: !782, file: !2, line: 208, type: !485)
!785 = !DILocalVariable(name: "negated", scope: !782, file: !2, line: 209, type: !485)
!786 = !DILocalVariable(name: "nargs", scope: !787, file: !2, line: 224, type: !128)
!787 = distinct !DILexicalBlock(scope: !788, file: !2, line: 223, column: 5)
!788 = distinct !DILexicalBlock(scope: !782, file: !2, line: 222, column: 7)
!789 = !DILocation(line: 0, scope: !782)
!790 = !DILocation(line: 212, column: 3, scope: !782)
!791 = !DILocation(line: 212, column: 10, scope: !782)
!792 = !DILocation(line: 212, column: 16, scope: !782)
!793 = !DILocation(line: 212, column: 14, scope: !782)
!794 = !DILocation(line: 212, column: 21, scope: !782)
!795 = !DILocation(line: 212, column: 24, scope: !782)
!796 = !DILocation(line: 212, column: 29, scope: !782)
!797 = !DILocation(line: 212, column: 37, scope: !782)
!798 = !DILocation(line: 212, column: 44, scope: !782)
!799 = !DILocation(line: 212, column: 47, scope: !782)
!800 = !DILocation(line: 212, column: 52, scope: !782)
!801 = !DILocation(line: 212, column: 60, scope: !782)
!802 = !DILocation(line: 214, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !782, file: !2, line: 213, column: 5)
!804 = !DILocation(line: 215, column: 18, scope: !803)
!805 = !DILocation(line: 215, column: 17, scope: !803)
!806 = !DILocation(line: 215, column: 15, scope: !803)
!807 = distinct !{!807, !790, !808, !435, !436}
!808 = !DILocation(line: 216, column: 5, scope: !782)
!809 = !DILocation(line: 218, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !782, file: !2, line: 218, column: 7)
!811 = !DILocation(line: 218, column: 14, scope: !810)
!812 = !DILocation(line: 218, column: 11, scope: !810)
!813 = !DILocation(line: 218, column: 7, scope: !782)
!814 = !DILocation(line: 219, column: 5, scope: !810)
!815 = !DILocation(line: 222, column: 7, scope: !788)
!816 = !DILocation(line: 222, column: 12, scope: !788)
!817 = !DILocation(line: 222, column: 20, scope: !788)
!818 = !DILocation(line: 222, column: 27, scope: !788)
!819 = !DILocation(line: 222, column: 30, scope: !788)
!820 = !DILocation(line: 222, column: 35, scope: !788)
!821 = !DILocation(line: 222, column: 43, scope: !788)
!822 = !DILocation(line: 222, column: 7, scope: !782)
!823 = !DILocation(line: 226, column: 7, scope: !787)
!824 = !DILocation(line: 0, scope: !787)
!825 = !DILocation(line: 228, column: 12, scope: !826)
!826 = distinct !DILexicalBlock(scope: !787, file: !2, line: 228, column: 7)
!827 = !DILocation(line: 0, scope: !826)
!828 = !DILocation(line: 229, column: 12, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !2, line: 228, column: 7)
!830 = !DILocation(line: 229, column: 16, scope: !829)
!831 = !DILocation(line: 229, column: 26, scope: !829)
!832 = !DILocation(line: 229, column: 24, scope: !829)
!833 = !DILocation(line: 229, column: 31, scope: !829)
!834 = !DILocation(line: 229, column: 36, scope: !829)
!835 = !DILocation(line: 229, column: 34, scope: !829)
!836 = !DILocation(line: 0, scope: !829)
!837 = !DILocation(line: 228, column: 7, scope: !826)
!838 = !DILocation(line: 231, column: 19, scope: !839)
!839 = distinct !DILexicalBlock(scope: !829, file: !2, line: 231, column: 13)
!840 = !DILocation(line: 231, column: 13, scope: !829)
!841 = !DILocation(line: 233, column: 21, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !2, line: 232, column: 11)
!843 = !DILocation(line: 233, column: 28, scope: !842)
!844 = !DILocation(line: 233, column: 26, scope: !842)
!845 = !DILocation(line: 234, column: 13, scope: !842)
!846 = !DILocation(line: 231, column: 22, scope: !839)
!847 = !DILocation(line: 230, column: 17, scope: !829)
!848 = !DILocation(line: 228, column: 7, scope: !829)
!849 = distinct !{!849, !837, !850, !435, !436}
!850 = !DILocation(line: 235, column: 11, scope: !826)
!851 = !DILocation(line: 237, column: 15, scope: !787)
!852 = !DILocation(line: 237, column: 13, scope: !787)
!853 = !DILocation(line: 238, column: 11, scope: !854)
!854 = distinct !DILexicalBlock(scope: !787, file: !2, line: 238, column: 11)
!855 = !DILocation(line: 238, column: 16, scope: !854)
!856 = !DILocation(line: 238, column: 21, scope: !854)
!857 = !DILocation(line: 238, column: 11, scope: !787)
!858 = !DILocation(line: 239, column: 46, scope: !854)
!859 = !DILocation(line: 239, column: 9, scope: !854)
!860 = !DILocation(line: 241, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !854, file: !2, line: 241, column: 13)
!862 = !DILocation(line: 241, column: 18, scope: !861)
!863 = !DILocation(line: 241, column: 26, scope: !861)
!864 = !DILocation(line: 241, column: 33, scope: !861)
!865 = !DILocation(line: 241, column: 36, scope: !861)
!866 = !DILocation(line: 241, column: 41, scope: !861)
!867 = !DILocation(line: 241, column: 13, scope: !854)
!868 = !DILocation(line: 243, column: 30, scope: !861)
!869 = !DILocation(line: 243, column: 60, scope: !861)
!870 = !DILocation(line: 243, column: 65, scope: !861)
!871 = !DILocation(line: 243, column: 48, scope: !861)
!872 = !DILocation(line: 242, column: 11, scope: !861)
!873 = !DILocation(line: 244, column: 7, scope: !787)
!874 = !DILocation(line: 245, column: 5, scope: !787)
!875 = !DILocation(line: 248, column: 17, scope: !876)
!876 = distinct !DILexicalBlock(scope: !788, file: !2, line: 248, column: 12)
!877 = !DILocation(line: 248, column: 24, scope: !876)
!878 = !DILocation(line: 248, column: 22, scope: !876)
!879 = !DILocation(line: 248, column: 14, scope: !876)
!880 = !DILocation(line: 248, column: 28, scope: !876)
!881 = !DILocation(line: 248, column: 31, scope: !876)
!882 = !DILocation(line: 248, column: 55, scope: !876)
!883 = !DILocation(line: 248, column: 65, scope: !876)
!884 = !DILocation(line: 248, column: 70, scope: !876)
!885 = !DILocation(line: 248, column: 74, scope: !876)
!886 = !DILocation(line: 248, column: 58, scope: !876)
!887 = !DILocation(line: 248, column: 12, scope: !788)
!888 = !DILocation(line: 249, column: 13, scope: !876)
!889 = !DILocation(line: 249, column: 11, scope: !876)
!890 = !DILocation(line: 249, column: 5, scope: !876)
!891 = !DILocation(line: 250, column: 17, scope: !892)
!892 = distinct !DILexicalBlock(scope: !876, file: !2, line: 250, column: 12)
!893 = !DILocation(line: 250, column: 24, scope: !892)
!894 = !DILocation(line: 250, column: 22, scope: !892)
!895 = !DILocation(line: 250, column: 14, scope: !892)
!896 = !DILocation(line: 250, column: 28, scope: !892)
!897 = !DILocation(line: 250, column: 38, scope: !892)
!898 = !DILocation(line: 250, column: 43, scope: !892)
!899 = !DILocation(line: 250, column: 47, scope: !892)
!900 = !DILocation(line: 250, column: 31, scope: !892)
!901 = !DILocation(line: 250, column: 12, scope: !876)
!902 = !DILocation(line: 251, column: 13, scope: !892)
!903 = !DILocation(line: 251, column: 11, scope: !892)
!904 = !DILocation(line: 251, column: 5, scope: !892)
!905 = !DILocation(line: 254, column: 12, scope: !906)
!906 = distinct !DILexicalBlock(scope: !892, file: !2, line: 254, column: 12)
!907 = !DILocation(line: 254, column: 17, scope: !906)
!908 = !DILocation(line: 254, column: 25, scope: !906)
!909 = !DILocation(line: 254, column: 32, scope: !906)
!910 = !DILocation(line: 254, column: 35, scope: !906)
!911 = !DILocation(line: 254, column: 40, scope: !906)
!912 = !DILocation(line: 254, column: 48, scope: !906)
!913 = !DILocation(line: 254, column: 51, scope: !906)
!914 = !DILocation(line: 254, column: 56, scope: !906)
!915 = !DILocation(line: 254, column: 64, scope: !906)
!916 = !DILocation(line: 254, column: 12, scope: !892)
!917 = !DILocation(line: 255, column: 13, scope: !906)
!918 = !DILocation(line: 255, column: 11, scope: !906)
!919 = !DILocation(line: 255, column: 5, scope: !906)
!920 = !DILocation(line: 258, column: 16, scope: !921)
!921 = distinct !DILexicalBlock(scope: !906, file: !2, line: 257, column: 5)
!922 = !DILocation(line: 258, column: 21, scope: !921)
!923 = !DILocation(line: 258, column: 29, scope: !921)
!924 = !DILocation(line: 258, column: 13, scope: !921)
!925 = !DILocation(line: 259, column: 7, scope: !921)
!926 = !DILocation(line: 0, scope: !906)
!927 = !DILocation(line: 0, scope: !892)
!928 = !DILocation(line: 0, scope: !876)
!929 = !DILocation(line: 0, scope: !788)
!930 = !DILocation(line: 262, column: 10, scope: !782)
!931 = !DILocation(line: 262, column: 20, scope: !782)
!932 = !DILocation(line: 262, column: 18, scope: !782)
!933 = !DILocation(line: 262, column: 3, scope: !782)
!934 = !DISubprogram(name: "quote_n", scope: !586, file: !586, line: 40, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!935 = !DISubroutineType(types: !936)
!936 = !{!118, !128, !118}
!937 = distinct !DISubprogram(name: "binop", scope: !2, file: !2, line: 178, type: !938, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{!485, !118}
!940 = !{!941}
!941 = !DILocalVariable(name: "s", arg: 1, scope: !937, file: !2, line: 178, type: !118)
!942 = !DILocation(line: 0, scope: !937)
!943 = !DILocation(line: 180, column: 12, scope: !937)
!944 = !DILocation(line: 180, column: 30, scope: !937)
!945 = !DILocation(line: 180, column: 34, scope: !937)
!946 = !DILocation(line: 180, column: 52, scope: !937)
!947 = !DILocation(line: 180, column: 56, scope: !937)
!948 = !DILocation(line: 180, column: 73, scope: !937)
!949 = !DILocation(line: 181, column: 12, scope: !937)
!950 = !DILocation(line: 181, column: 32, scope: !937)
!951 = !DILocation(line: 182, column: 12, scope: !937)
!952 = !DILocation(line: 182, column: 30, scope: !937)
!953 = !DILocation(line: 182, column: 34, scope: !937)
!954 = !DILocation(line: 182, column: 52, scope: !937)
!955 = !DILocation(line: 182, column: 56, scope: !937)
!956 = !DILocation(line: 182, column: 74, scope: !937)
!957 = !DILocation(line: 183, column: 12, scope: !937)
!958 = !DILocation(line: 183, column: 30, scope: !937)
!959 = !DILocation(line: 183, column: 34, scope: !937)
!960 = !DILocation(line: 183, column: 52, scope: !937)
!961 = !DILocation(line: 183, column: 56, scope: !937)
!962 = !DILocation(line: 183, column: 74, scope: !937)
!963 = !DILocation(line: 184, column: 12, scope: !937)
!964 = !DILocation(line: 184, column: 30, scope: !937)
!965 = !DILocation(line: 184, column: 34, scope: !937)
!966 = !DILocation(line: 180, column: 3, scope: !937)
!967 = distinct !DISubprogram(name: "binary_operator", scope: !2, file: !2, line: 266, type: !968, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!485, !485}
!970 = !{!971, !972, !973, !1032, !1033, !1034, !1042, !1043, !1044, !1045, !1046, !1047, !1051, !1052, !1053, !1054, !1057, !1058, !1059, !1060, !1063}
!971 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !967, file: !2, line: 266, type: !485)
!972 = !DILocalVariable(name: "op", scope: !967, file: !2, line: 268, type: !128)
!973 = !DILocalVariable(name: "stat_buf", scope: !967, file: !2, line: 269, type: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !975, line: 182, size: 1152, elements: !976)
!975 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!976 = !{!977, !982, !988, !991, !995, !1000, !1004, !1005, !1013, !1014, !1015, !1016, !1019, !1023, !1027, !1028, !1029, !1030}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !974, file: !975, line: 182, baseType: !978, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !979, line: 31, baseType: !980)
!979 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !374, line: 57, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !376, line: 46, baseType: !128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !974, file: !975, line: 182, baseType: !983, size: 16, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !984, line: 31, baseType: !985)
!984 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !374, line: 70, baseType: !986)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !376, line: 45, baseType: !987)
!987 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !974, file: !975, line: 182, baseType: !989, size: 16, offset: 48)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !990, line: 31, baseType: !986)
!990 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!991 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !974, file: !975, line: 182, baseType: !992, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !374, line: 62, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !376, line: 49, baseType: !994)
!994 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !974, file: !975, line: 182, baseType: !996, size: 32, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !997, line: 31, baseType: !998)
!997 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !374, line: 75, baseType: !999)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !376, line: 47, baseType: !112)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !974, file: !975, line: 182, baseType: !1001, size: 32, offset: 160)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1002, line: 31, baseType: !1003)
!1002 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !374, line: 60, baseType: !999)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !974, file: !975, line: 182, baseType: !978, size: 32, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !974, file: !975, line: 182, baseType: !1006, size: 128, offset: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1007, line: 33, size: 128, elements: !1008)
!1007 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!1008 = !{!1009, !1012}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1006, file: !1007, line: 35, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !376, line: 122, baseType: !1011)
!1011 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1006, file: !1007, line: 36, baseType: !1011, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !974, file: !975, line: 182, baseType: !1006, size: 128, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !974, file: !975, line: 182, baseType: !1006, size: 128, offset: 512)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !974, file: !975, line: 182, baseType: !1006, size: 128, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !974, file: !975, line: 182, baseType: !1017, size: 64, offset: 768)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1018, line: 31, baseType: !373)
!1018 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !974, file: !975, line: 182, baseType: !1020, size: 64, offset: 832)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !1021, line: 31, baseType: !1022)
!1021 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !374, line: 55, baseType: !375)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !974, file: !975, line: 182, baseType: !1024, size: 32, offset: 896)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !1025, line: 31, baseType: !1026)
!1025 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !374, line: 56, baseType: !981)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !974, file: !975, line: 182, baseType: !999, size: 32, offset: 928)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !974, file: !975, line: 182, baseType: !999, size: 32, offset: 960)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !974, file: !975, line: 182, baseType: !981, size: 32, offset: 992)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !974, file: !975, line: 182, baseType: !1031, size: 128, offset: 1024)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 128, elements: !135)
!1032 = !DILocalVariable(name: "stat_spare", scope: !967, file: !2, line: 269, type: !974)
!1033 = !DILocalVariable(name: "r_is_l", scope: !967, file: !2, line: 271, type: !485)
!1034 = !DILocalVariable(name: "lbuf", scope: !1035, file: !2, line: 294, type: !1039)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 293, column: 9)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 288, column: 11)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 286, column: 5)
!1038 = distinct !DILexicalBlock(scope: !967, file: !2, line: 285, column: 7)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !1040)
!1040 = !{!1041}
!1041 = !DISubrange(count: 21)
!1042 = !DILocalVariable(name: "rbuf", scope: !1035, file: !2, line: 295, type: !1039)
!1043 = !DILocalVariable(name: "l", scope: !1035, file: !2, line: 296, type: !118)
!1044 = !DILocalVariable(name: "r", scope: !1035, file: !2, line: 299, type: !118)
!1045 = !DILocalVariable(name: "cmp", scope: !1035, file: !2, line: 302, type: !128)
!1046 = !DILocalVariable(name: "xe_operator", scope: !1035, file: !2, line: 303, type: !485)
!1047 = !DILocalVariable(name: "lt", scope: !1048, file: !2, line: 319, type: !1006)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 317, column: 13)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 316, column: 15)
!1050 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 311, column: 9)
!1051 = !DILocalVariable(name: "rt", scope: !1048, file: !2, line: 319, type: !1006)
!1052 = !DILocalVariable(name: "le", scope: !1048, file: !2, line: 320, type: !485)
!1053 = !DILocalVariable(name: "re", scope: !1048, file: !2, line: 320, type: !485)
!1054 = !DILocalVariable(name: "lt", scope: !1055, file: !2, line: 348, type: !1006)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 346, column: 13)
!1056 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 345, column: 15)
!1057 = !DILocalVariable(name: "rt", scope: !1055, file: !2, line: 348, type: !1006)
!1058 = !DILocalVariable(name: "le", scope: !1055, file: !2, line: 349, type: !485)
!1059 = !DILocalVariable(name: "re", scope: !1055, file: !2, line: 349, type: !485)
!1060 = !DILocalVariable(name: "value", scope: !1061, file: !2, line: 367, type: !485)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 366, column: 5)
!1062 = distinct !DILexicalBlock(scope: !967, file: !2, line: 364, column: 7)
!1063 = !DILocalVariable(name: "value", scope: !1064, file: !2, line: 374, type: !485)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 373, column: 5)
!1065 = distinct !DILexicalBlock(scope: !967, file: !2, line: 372, column: 7)
!1066 = !DILocation(line: 0, scope: !967)
!1067 = !DILocation(line: 269, column: 3, scope: !967)
!1068 = !DILocation(line: 269, column: 15, scope: !967)
!1069 = !DILocation(line: 269, column: 25, scope: !967)
!1070 = !DILocation(line: 273, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !967, file: !2, line: 273, column: 7)
!1072 = !DILocation(line: 273, column: 7, scope: !967)
!1073 = !DILocation(line: 274, column: 5, scope: !1071)
!1074 = !DILocation(line: 275, column: 8, scope: !967)
!1075 = !DILocation(line: 275, column: 12, scope: !967)
!1076 = !DILocation(line: 277, column: 13, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !967, file: !2, line: 277, column: 7)
!1078 = !DILocation(line: 277, column: 18, scope: !1077)
!1079 = !DILocation(line: 277, column: 11, scope: !1077)
!1080 = !DILocation(line: 277, column: 23, scope: !1077)
!1081 = !DILocation(line: 277, column: 26, scope: !1077)
!1082 = !DILocation(line: 277, column: 7, scope: !967)
!1083 = !DILocation(line: 280, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 278, column: 5)
!1085 = !DILocation(line: 281, column: 5, scope: !1084)
!1086 = !DILocation(line: 0, scope: !1077)
!1087 = !DILocation(line: 285, column: 7, scope: !1038)
!1088 = !DILocation(line: 285, column: 19, scope: !1038)
!1089 = !DILocation(line: 285, column: 7, scope: !967)
!1090 = !DILocation(line: 288, column: 14, scope: !1036)
!1091 = !DILocation(line: 288, column: 26, scope: !1036)
!1092 = !DILocation(line: 288, column: 33, scope: !1036)
!1093 = !DILocation(line: 288, column: 36, scope: !1036)
!1094 = !DILocation(line: 288, column: 48, scope: !1036)
!1095 = !DILocation(line: 289, column: 13, scope: !1036)
!1096 = !DILocation(line: 289, column: 17, scope: !1036)
!1097 = !DILocation(line: 289, column: 29, scope: !1036)
!1098 = !DILocation(line: 289, column: 36, scope: !1036)
!1099 = !DILocation(line: 289, column: 39, scope: !1036)
!1100 = !DILocation(line: 289, column: 51, scope: !1036)
!1101 = !DILocation(line: 290, column: 12, scope: !1036)
!1102 = !DILocation(line: 290, column: 16, scope: !1036)
!1103 = !DILocation(line: 290, column: 28, scope: !1036)
!1104 = !DILocation(line: 290, column: 35, scope: !1036)
!1105 = !DILocation(line: 290, column: 38, scope: !1036)
!1106 = !DILocation(line: 290, column: 50, scope: !1036)
!1107 = !DILocation(line: 291, column: 12, scope: !1036)
!1108 = !DILocation(line: 291, column: 16, scope: !1036)
!1109 = !DILocation(line: 291, column: 28, scope: !1036)
!1110 = !DILocation(line: 291, column: 35, scope: !1036)
!1111 = !DILocation(line: 291, column: 38, scope: !1036)
!1112 = !DILocation(line: 291, column: 50, scope: !1036)
!1113 = !DILocation(line: 292, column: 11, scope: !1036)
!1114 = !DILocation(line: 292, column: 15, scope: !1036)
!1115 = !DILocation(line: 288, column: 11, scope: !1037)
!1116 = !DILocation(line: 294, column: 11, scope: !1035)
!1117 = !DILocation(line: 294, column: 16, scope: !1035)
!1118 = !DILocation(line: 295, column: 11, scope: !1035)
!1119 = !DILocation(line: 295, column: 16, scope: !1035)
!1120 = !DILocation(line: 296, column: 28, scope: !1035)
!1121 = !DILocation(line: 297, column: 49, scope: !1035)
!1122 = !DILocation(line: 297, column: 57, scope: !1035)
!1123 = !DILocation(line: 297, column: 41, scope: !1035)
!1124 = !DILocation(line: 297, column: 64, scope: !1035)
!1125 = !DILocation(line: 297, column: 30, scope: !1035)
!1126 = !DILocation(line: 298, column: 40, scope: !1035)
!1127 = !DILocation(line: 298, column: 48, scope: !1035)
!1128 = !DILocation(line: 298, column: 30, scope: !1035)
!1129 = !DILocation(line: 0, scope: !1035)
!1130 = !DILocation(line: 299, column: 28, scope: !1035)
!1131 = !DILocation(line: 300, column: 49, scope: !1035)
!1132 = !DILocation(line: 300, column: 57, scope: !1035)
!1133 = !DILocation(line: 300, column: 41, scope: !1035)
!1134 = !DILocation(line: 300, column: 64, scope: !1035)
!1135 = !DILocation(line: 300, column: 30, scope: !1035)
!1136 = !DILocation(line: 301, column: 40, scope: !1035)
!1137 = !DILocation(line: 301, column: 48, scope: !1035)
!1138 = !DILocation(line: 301, column: 30, scope: !1035)
!1139 = !DILocation(line: 302, column: 21, scope: !1035)
!1140 = !DILocation(line: 303, column: 31, scope: !1035)
!1141 = !DILocation(line: 303, column: 43, scope: !1035)
!1142 = !DILocation(line: 303, column: 16, scope: !1035)
!1143 = !DILocation(line: 304, column: 15, scope: !1035)
!1144 = !DILocation(line: 305, column: 19, scope: !1035)
!1145 = !DILocation(line: 305, column: 31, scope: !1035)
!1146 = !DILocation(line: 305, column: 46, scope: !1035)
!1147 = !DILocation(line: 305, column: 44, scope: !1035)
!1148 = !DILocation(line: 306, column: 21, scope: !1035)
!1149 = !DILocation(line: 306, column: 33, scope: !1035)
!1150 = !DILocation(line: 306, column: 50, scope: !1035)
!1151 = !DILocation(line: 306, column: 48, scope: !1035)
!1152 = !DILocation(line: 306, column: 46, scope: !1035)
!1153 = !DILocation(line: 307, column: 26, scope: !1035)
!1154 = !DILocation(line: 307, column: 35, scope: !1035)
!1155 = !DILocation(line: 307, column: 32, scope: !1035)
!1156 = !DILocation(line: 305, column: 18, scope: !1035)
!1157 = !DILocation(line: 308, column: 9, scope: !1036)
!1158 = !DILocation(line: 310, column: 15, scope: !1037)
!1159 = !DILocation(line: 310, column: 7, scope: !1037)
!1160 = !DILocation(line: 313, column: 11, scope: !1050)
!1161 = !DILocation(line: 316, column: 15, scope: !1049)
!1162 = !DILocation(line: 316, column: 27, scope: !1049)
!1163 = !DILocation(line: 316, column: 34, scope: !1049)
!1164 = !DILocation(line: 316, column: 38, scope: !1049)
!1165 = !DILocation(line: 316, column: 15, scope: !1050)
!1166 = !DILocation(line: 319, column: 15, scope: !1048)
!1167 = !DILocation(line: 319, column: 31, scope: !1048)
!1168 = !DILocation(line: 319, column: 35, scope: !1048)
!1169 = !DILocation(line: 321, column: 19, scope: !1048)
!1170 = !DILocation(line: 322, column: 19, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 322, column: 19)
!1172 = !DILocation(line: 322, column: 26, scope: !1171)
!1173 = !DILocation(line: 322, column: 29, scope: !1171)
!1174 = !DILocation(line: 322, column: 19, scope: !1048)
!1175 = !DILocation(line: 323, column: 17, scope: !1171)
!1176 = !DILocation(line: 324, column: 31, scope: !1048)
!1177 = !DILocation(line: 324, column: 39, scope: !1048)
!1178 = !DILocation(line: 324, column: 20, scope: !1048)
!1179 = !DILocation(line: 324, column: 18, scope: !1048)
!1180 = !DILocation(line: 0, scope: !1048)
!1181 = !DILocation(line: 325, column: 31, scope: !1048)
!1182 = !DILocation(line: 325, column: 39, scope: !1048)
!1183 = !DILocation(line: 325, column: 20, scope: !1048)
!1184 = !DILocation(line: 325, column: 18, scope: !1048)
!1185 = !DILocation(line: 326, column: 22, scope: !1048)
!1186 = !DILocation(line: 326, column: 25, scope: !1048)
!1187 = !DILocation(line: 326, column: 30, scope: !1048)
!1188 = !DILocation(line: 326, column: 33, scope: !1048)
!1189 = !DILocation(line: 326, column: 36, scope: !1048)
!1190 = !DILocation(line: 326, column: 58, scope: !1048)
!1191 = !DILocation(line: 327, column: 13, scope: !1049)
!1192 = !DILocation(line: 328, column: 11, scope: !1050)
!1193 = !DILocation(line: 331, column: 15, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 331, column: 15)
!1195 = !DILocation(line: 331, column: 27, scope: !1194)
!1196 = !DILocation(line: 331, column: 34, scope: !1194)
!1197 = !DILocation(line: 331, column: 38, scope: !1194)
!1198 = !DILocation(line: 331, column: 15, scope: !1050)
!1199 = !DILocation(line: 334, column: 19, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 332, column: 13)
!1201 = !DILocation(line: 335, column: 19, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 335, column: 19)
!1203 = !DILocation(line: 335, column: 26, scope: !1202)
!1204 = !DILocation(line: 335, column: 29, scope: !1202)
!1205 = !DILocation(line: 335, column: 19, scope: !1200)
!1206 = !DILocation(line: 336, column: 17, scope: !1202)
!1207 = !DILocation(line: 337, column: 23, scope: !1200)
!1208 = !DILocation(line: 337, column: 54, scope: !1200)
!1209 = !DILocation(line: 338, column: 23, scope: !1200)
!1210 = !DILocation(line: 338, column: 26, scope: !1200)
!1211 = !DILocation(line: 338, column: 59, scope: !1200)
!1212 = !DILocation(line: 339, column: 23, scope: !1200)
!1213 = !DILocation(line: 339, column: 35, scope: !1200)
!1214 = !{!1215, !495, i64 0}
!1215 = !{!"stat", !495, i64 0, !1216, i64 4, !1216, i64 6, !1217, i64 8, !495, i64 16, !495, i64 20, !495, i64 24, !1218, i64 32, !1218, i64 48, !1218, i64 64, !1218, i64 80, !1217, i64 96, !1217, i64 104, !495, i64 112, !495, i64 116, !495, i64 120, !495, i64 124, !296, i64 128}
!1216 = !{!"short", !296, i64 0}
!1217 = !{!"long long", !296, i64 0}
!1218 = !{!"timespec", !1219, i64 0, !1219, i64 8}
!1219 = !{!"long", !296, i64 0}
!1220 = !DILocation(line: 339, column: 56, scope: !1200)
!1221 = !DILocation(line: 339, column: 42, scope: !1200)
!1222 = !DILocation(line: 340, column: 23, scope: !1200)
!1223 = !DILocation(line: 340, column: 35, scope: !1200)
!1224 = !{!1215, !1217, i64 8}
!1225 = !DILocation(line: 340, column: 56, scope: !1200)
!1226 = !DILocation(line: 340, column: 42, scope: !1200)
!1227 = !DILocation(line: 0, scope: !1200)
!1228 = !DILocation(line: 337, column: 15, scope: !1200)
!1229 = !DILocation(line: 342, column: 11, scope: !1050)
!1230 = !DILocation(line: 345, column: 22, scope: !1056)
!1231 = !DILocation(line: 345, column: 19, scope: !1056)
!1232 = !DILocation(line: 345, column: 34, scope: !1056)
!1233 = !DILocation(line: 345, column: 47, scope: !1056)
!1234 = !DILocation(line: 345, column: 44, scope: !1056)
!1235 = !DILocation(line: 345, column: 15, scope: !1050)
!1236 = !DILocation(line: 348, column: 15, scope: !1055)
!1237 = !DILocation(line: 348, column: 31, scope: !1055)
!1238 = !DILocation(line: 348, column: 35, scope: !1055)
!1239 = !DILocation(line: 350, column: 19, scope: !1055)
!1240 = !DILocation(line: 351, column: 19, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 351, column: 19)
!1242 = !DILocation(line: 351, column: 26, scope: !1241)
!1243 = !DILocation(line: 351, column: 29, scope: !1241)
!1244 = !DILocation(line: 351, column: 19, scope: !1055)
!1245 = !DILocation(line: 352, column: 17, scope: !1241)
!1246 = !DILocation(line: 353, column: 31, scope: !1055)
!1247 = !DILocation(line: 353, column: 39, scope: !1055)
!1248 = !DILocation(line: 353, column: 20, scope: !1055)
!1249 = !DILocation(line: 353, column: 18, scope: !1055)
!1250 = !DILocation(line: 0, scope: !1055)
!1251 = !DILocation(line: 354, column: 31, scope: !1055)
!1252 = !DILocation(line: 354, column: 39, scope: !1055)
!1253 = !DILocation(line: 354, column: 20, scope: !1055)
!1254 = !DILocation(line: 354, column: 18, scope: !1055)
!1255 = !DILocation(line: 355, column: 22, scope: !1055)
!1256 = !DILocation(line: 355, column: 25, scope: !1055)
!1257 = !DILocation(line: 355, column: 30, scope: !1055)
!1258 = !DILocation(line: 355, column: 33, scope: !1055)
!1259 = !DILocation(line: 355, column: 36, scope: !1055)
!1260 = !DILocation(line: 355, column: 58, scope: !1055)
!1261 = !DILocation(line: 356, column: 13, scope: !1056)
!1262 = !DILocation(line: 357, column: 11, scope: !1050)
!1263 = !DILocation(line: 361, column: 67, scope: !1037)
!1264 = !DILocation(line: 361, column: 60, scope: !1037)
!1265 = !DILocation(line: 361, column: 7, scope: !1037)
!1266 = !DILocation(line: 364, column: 7, scope: !1062)
!1267 = !DILocation(line: 364, column: 19, scope: !1062)
!1268 = !DILocation(line: 365, column: 7, scope: !1062)
!1269 = !DILocation(line: 365, column: 12, scope: !1062)
!1270 = !DILocation(line: 365, column: 24, scope: !1062)
!1271 = !DILocation(line: 365, column: 29, scope: !1062)
!1272 = !DILocation(line: 365, column: 41, scope: !1062)
!1273 = !DILocation(line: 365, column: 49, scope: !1062)
!1274 = !DILocation(line: 365, column: 53, scope: !1062)
!1275 = !DILocation(line: 364, column: 7, scope: !967)
!1276 = !DILocation(line: 367, column: 20, scope: !1061)
!1277 = !DILocation(line: 367, column: 12, scope: !1061)
!1278 = !DILocation(line: 0, scope: !1061)
!1279 = !DILocation(line: 368, column: 11, scope: !1061)
!1280 = !DILocation(line: 369, column: 14, scope: !1061)
!1281 = !DILocation(line: 372, column: 7, scope: !1065)
!1282 = !DILocation(line: 372, column: 7, scope: !967)
!1283 = !DILocation(line: 374, column: 21, scope: !1064)
!1284 = !DILocation(line: 374, column: 20, scope: !1064)
!1285 = !DILocation(line: 374, column: 12, scope: !1064)
!1286 = !DILocation(line: 0, scope: !1064)
!1287 = !DILocation(line: 375, column: 11, scope: !1064)
!1288 = !DILocation(line: 376, column: 14, scope: !1064)
!1289 = !DILocation(line: 380, column: 3, scope: !967)
!1290 = !DILocation(line: 381, column: 1, scope: !967)
!1291 = distinct !DISubprogram(name: "unary_operator", scope: !2, file: !2, line: 384, type: !618, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1292)
!1292 = !{!1293, !1294, !1297, !1298, !1300, !1301, !1303, !1304, !1306}
!1293 = !DILocalVariable(name: "stat_buf", scope: !1291, file: !2, line: 386, type: !974)
!1294 = !DILocalVariable(name: "atime", scope: !1295, file: !2, line: 420, type: !1006)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 416, column: 7)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 389, column: 5)
!1297 = !DILocalVariable(name: "mtime", scope: !1295, file: !2, line: 421, type: !1006)
!1298 = !DILocalVariable(name: "euid", scope: !1299, file: !2, line: 431, type: !996)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 426, column: 7)
!1300 = !DILocalVariable(name: "NO_UID", scope: !1299, file: !2, line: 432, type: !996)
!1301 = !DILocalVariable(name: "egid", scope: !1302, file: !2, line: 442, type: !1001)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 437, column: 7)
!1303 = !DILocalVariable(name: "NO_GID", scope: !1302, file: !2, line: 443, type: !1001)
!1304 = !DILocalVariable(name: "fd", scope: !1305, file: !2, line: 509, type: !1011)
!1305 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 508, column: 7)
!1306 = !DILocalVariable(name: "arg", scope: !1305, file: !2, line: 510, type: !118)
!1307 = !DILocation(line: 386, column: 3, scope: !1291)
!1308 = !DILocation(line: 386, column: 15, scope: !1291)
!1309 = !DILocation(line: 388, column: 11, scope: !1291)
!1310 = !DILocation(line: 388, column: 16, scope: !1291)
!1311 = !DILocation(line: 388, column: 3, scope: !1291)
!1312 = !DILocation(line: 391, column: 67, scope: !1296)
!1313 = !DILocation(line: 391, column: 72, scope: !1296)
!1314 = !DILocation(line: 391, column: 60, scope: !1296)
!1315 = !DILocation(line: 391, column: 7, scope: !1296)
!1316 = !DILocation(line: 400, column: 7, scope: !1296)
!1317 = !DILocation(line: 401, column: 14, scope: !1296)
!1318 = !DILocation(line: 401, column: 46, scope: !1296)
!1319 = !DILocation(line: 401, column: 7, scope: !1296)
!1320 = !DILocation(line: 404, column: 7, scope: !1296)
!1321 = !DILocation(line: 405, column: 26, scope: !1296)
!1322 = !DILocation(line: 405, column: 31, scope: !1296)
!1323 = !DILocation(line: 405, column: 35, scope: !1296)
!1324 = !DILocation(line: 405, column: 14, scope: !1296)
!1325 = !DILocation(line: 405, column: 47, scope: !1296)
!1326 = !DILocation(line: 405, column: 7, scope: !1296)
!1327 = !DILocation(line: 408, column: 7, scope: !1296)
!1328 = !DILocation(line: 409, column: 26, scope: !1296)
!1329 = !DILocation(line: 409, column: 31, scope: !1296)
!1330 = !DILocation(line: 409, column: 35, scope: !1296)
!1331 = !DILocation(line: 409, column: 14, scope: !1296)
!1332 = !DILocation(line: 409, column: 47, scope: !1296)
!1333 = !DILocation(line: 409, column: 7, scope: !1296)
!1334 = !DILocation(line: 412, column: 7, scope: !1296)
!1335 = !DILocation(line: 413, column: 26, scope: !1296)
!1336 = !DILocation(line: 413, column: 31, scope: !1296)
!1337 = !DILocation(line: 413, column: 35, scope: !1296)
!1338 = !DILocation(line: 413, column: 14, scope: !1296)
!1339 = !DILocation(line: 413, column: 47, scope: !1296)
!1340 = !DILocation(line: 413, column: 7, scope: !1296)
!1341 = !DILocation(line: 417, column: 9, scope: !1295)
!1342 = !DILocation(line: 418, column: 13, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 418, column: 13)
!1344 = !DILocation(line: 418, column: 45, scope: !1343)
!1345 = !DILocation(line: 418, column: 13, scope: !1295)
!1346 = !DILocation(line: 419, column: 11, scope: !1343)
!1347 = !DILocation(line: 420, column: 9, scope: !1295)
!1348 = !DILocation(line: 420, column: 25, scope: !1295)
!1349 = !DILocation(line: 420, column: 33, scope: !1295)
!1350 = !DILocation(line: 421, column: 9, scope: !1295)
!1351 = !DILocation(line: 421, column: 25, scope: !1295)
!1352 = !DILocation(line: 421, column: 33, scope: !1295)
!1353 = !DILocation(line: 422, column: 17, scope: !1295)
!1354 = !DILocation(line: 422, column: 45, scope: !1295)
!1355 = !DILocation(line: 423, column: 7, scope: !1296)
!1356 = !DILocation(line: 427, column: 9, scope: !1299)
!1357 = !DILocation(line: 428, column: 13, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 428, column: 13)
!1359 = !DILocation(line: 428, column: 45, scope: !1358)
!1360 = !DILocation(line: 428, column: 13, scope: !1299)
!1361 = !DILocation(line: 429, column: 11, scope: !1358)
!1362 = !DILocation(line: 430, column: 9, scope: !1299)
!1363 = !DILocation(line: 430, column: 15, scope: !1299)
!1364 = !DILocation(line: 431, column: 22, scope: !1299)
!1365 = !DILocation(line: 0, scope: !1299)
!1366 = !DILocation(line: 433, column: 24, scope: !1299)
!1367 = !DILocation(line: 433, column: 34, scope: !1299)
!1368 = !DILocation(line: 433, column: 37, scope: !1299)
!1369 = !DILocation(line: 433, column: 44, scope: !1299)
!1370 = !DILocation(line: 433, column: 64, scope: !1299)
!1371 = !{!1215, !495, i64 16}
!1372 = !DILocation(line: 433, column: 52, scope: !1299)
!1373 = !DILocation(line: 438, column: 9, scope: !1302)
!1374 = !DILocation(line: 439, column: 13, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 439, column: 13)
!1376 = !DILocation(line: 439, column: 45, scope: !1375)
!1377 = !DILocation(line: 439, column: 13, scope: !1302)
!1378 = !DILocation(line: 440, column: 11, scope: !1375)
!1379 = !DILocation(line: 441, column: 9, scope: !1302)
!1380 = !DILocation(line: 441, column: 15, scope: !1302)
!1381 = !DILocation(line: 442, column: 22, scope: !1302)
!1382 = !DILocation(line: 0, scope: !1302)
!1383 = !DILocation(line: 444, column: 24, scope: !1302)
!1384 = !DILocation(line: 444, column: 34, scope: !1302)
!1385 = !DILocation(line: 444, column: 37, scope: !1302)
!1386 = !DILocation(line: 444, column: 44, scope: !1302)
!1387 = !DILocation(line: 444, column: 64, scope: !1302)
!1388 = !{!1215, !495, i64 20}
!1389 = !DILocation(line: 444, column: 52, scope: !1302)
!1390 = !DILocation(line: 448, column: 7, scope: !1296)
!1391 = !DILocation(line: 451, column: 15, scope: !1296)
!1392 = !DILocation(line: 451, column: 47, scope: !1296)
!1393 = !DILocation(line: 452, column: 15, scope: !1296)
!1394 = !DILocation(line: 452, column: 18, scope: !1296)
!1395 = !{!1215, !1216, i64 4}
!1396 = !DILocation(line: 0, scope: !1296)
!1397 = !DILocation(line: 451, column: 7, scope: !1296)
!1398 = !DILocation(line: 455, column: 7, scope: !1296)
!1399 = !DILocation(line: 456, column: 15, scope: !1296)
!1400 = !DILocation(line: 456, column: 47, scope: !1296)
!1401 = !DILocation(line: 457, column: 15, scope: !1296)
!1402 = !DILocation(line: 457, column: 18, scope: !1296)
!1403 = !DILocation(line: 456, column: 7, scope: !1296)
!1404 = !DILocation(line: 460, column: 7, scope: !1296)
!1405 = !DILocation(line: 461, column: 15, scope: !1296)
!1406 = !DILocation(line: 461, column: 47, scope: !1296)
!1407 = !DILocation(line: 462, column: 15, scope: !1296)
!1408 = !DILocation(line: 462, column: 31, scope: !1296)
!1409 = !{!1215, !1217, i64 96}
!1410 = !DILocation(line: 462, column: 20, scope: !1296)
!1411 = !DILocation(line: 461, column: 7, scope: !1296)
!1412 = !DILocation(line: 465, column: 7, scope: !1296)
!1413 = !DILocation(line: 466, column: 15, scope: !1296)
!1414 = !DILocation(line: 466, column: 47, scope: !1296)
!1415 = !DILocation(line: 467, column: 15, scope: !1296)
!1416 = !DILocation(line: 467, column: 18, scope: !1296)
!1417 = !DILocation(line: 466, column: 7, scope: !1296)
!1418 = !DILocation(line: 470, column: 7, scope: !1296)
!1419 = !DILocation(line: 471, column: 15, scope: !1296)
!1420 = !DILocation(line: 471, column: 47, scope: !1296)
!1421 = !DILocation(line: 472, column: 15, scope: !1296)
!1422 = !DILocation(line: 472, column: 18, scope: !1296)
!1423 = !DILocation(line: 471, column: 7, scope: !1296)
!1424 = !DILocation(line: 475, column: 7, scope: !1296)
!1425 = !DILocation(line: 476, column: 15, scope: !1296)
!1426 = !DILocation(line: 476, column: 47, scope: !1296)
!1427 = !DILocation(line: 477, column: 15, scope: !1296)
!1428 = !DILocation(line: 477, column: 18, scope: !1296)
!1429 = !DILocation(line: 476, column: 7, scope: !1296)
!1430 = !DILocation(line: 480, column: 7, scope: !1296)
!1431 = !DILocation(line: 481, column: 15, scope: !1296)
!1432 = !DILocation(line: 481, column: 47, scope: !1296)
!1433 = !DILocation(line: 482, column: 15, scope: !1296)
!1434 = !DILocation(line: 482, column: 18, scope: !1296)
!1435 = !DILocation(line: 481, column: 7, scope: !1296)
!1436 = !DILocation(line: 488, column: 7, scope: !1296)
!1437 = !DILocation(line: 489, column: 22, scope: !1296)
!1438 = !DILocation(line: 489, column: 27, scope: !1296)
!1439 = !DILocation(line: 489, column: 31, scope: !1296)
!1440 = !DILocation(line: 489, column: 15, scope: !1296)
!1441 = !DILocation(line: 489, column: 48, scope: !1296)
!1442 = !DILocation(line: 490, column: 15, scope: !1296)
!1443 = !DILocation(line: 490, column: 18, scope: !1296)
!1444 = !DILocation(line: 489, column: 7, scope: !1296)
!1445 = !DILocation(line: 493, column: 7, scope: !1296)
!1446 = !DILocation(line: 494, column: 15, scope: !1296)
!1447 = !DILocation(line: 494, column: 47, scope: !1296)
!1448 = !DILocation(line: 495, column: 15, scope: !1296)
!1449 = !DILocation(line: 495, column: 28, scope: !1296)
!1450 = !DILocation(line: 495, column: 19, scope: !1296)
!1451 = !DILocation(line: 495, column: 36, scope: !1296)
!1452 = !DILocation(line: 494, column: 7, scope: !1296)
!1453 = !DILocation(line: 498, column: 7, scope: !1296)
!1454 = !DILocation(line: 499, column: 15, scope: !1296)
!1455 = !DILocation(line: 499, column: 47, scope: !1296)
!1456 = !DILocation(line: 500, column: 15, scope: !1296)
!1457 = !DILocation(line: 500, column: 28, scope: !1296)
!1458 = !DILocation(line: 500, column: 19, scope: !1296)
!1459 = !DILocation(line: 500, column: 36, scope: !1296)
!1460 = !DILocation(line: 499, column: 7, scope: !1296)
!1461 = !DILocation(line: 503, column: 7, scope: !1296)
!1462 = !DILocation(line: 504, column: 15, scope: !1296)
!1463 = !DILocation(line: 504, column: 47, scope: !1296)
!1464 = !DILocation(line: 505, column: 15, scope: !1296)
!1465 = !DILocation(line: 505, column: 28, scope: !1296)
!1466 = !DILocation(line: 505, column: 19, scope: !1296)
!1467 = !DILocation(line: 505, column: 36, scope: !1296)
!1468 = !DILocation(line: 504, column: 7, scope: !1296)
!1469 = !DILocation(line: 511, column: 9, scope: !1305)
!1470 = !DILocation(line: 512, column: 25, scope: !1305)
!1471 = !DILocation(line: 512, column: 30, scope: !1305)
!1472 = !DILocation(line: 512, column: 34, scope: !1305)
!1473 = !DILocation(line: 512, column: 15, scope: !1305)
!1474 = !DILocation(line: 0, scope: !1305)
!1475 = !DILocation(line: 513, column: 9, scope: !1305)
!1476 = !DILocation(line: 513, column: 15, scope: !1305)
!1477 = !DILocation(line: 514, column: 14, scope: !1305)
!1478 = !DILocation(line: 515, column: 17, scope: !1305)
!1479 = !DILocation(line: 515, column: 23, scope: !1305)
!1480 = !DILocation(line: 515, column: 33, scope: !1305)
!1481 = !DILocation(line: 515, column: 38, scope: !1305)
!1482 = !DILocation(line: 515, column: 44, scope: !1305)
!1483 = !DILocation(line: 515, column: 50, scope: !1305)
!1484 = !DILocation(line: 515, column: 61, scope: !1305)
!1485 = !DILocation(line: 515, column: 72, scope: !1305)
!1486 = !DILocation(line: 515, column: 64, scope: !1305)
!1487 = !DILocation(line: 519, column: 7, scope: !1296)
!1488 = !DILocation(line: 520, column: 14, scope: !1296)
!1489 = !DILocation(line: 520, column: 19, scope: !1296)
!1490 = !DILocation(line: 520, column: 23, scope: !1296)
!1491 = !DILocation(line: 520, column: 31, scope: !1296)
!1492 = !DILocation(line: 520, column: 7, scope: !1296)
!1493 = !DILocation(line: 523, column: 7, scope: !1296)
!1494 = !DILocation(line: 524, column: 14, scope: !1296)
!1495 = !DILocation(line: 524, column: 19, scope: !1296)
!1496 = !DILocation(line: 524, column: 23, scope: !1296)
!1497 = !DILocation(line: 524, column: 31, scope: !1296)
!1498 = !DILocation(line: 524, column: 7, scope: !1296)
!1499 = !DILocation(line: 526, column: 1, scope: !1291)
!1500 = distinct !DISubprogram(name: "unary_advance", scope: !2, file: !2, line: 112, type: !534, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !395)
!1501 = !DILocation(line: 114, column: 3, scope: !1500)
!1502 = !DILocation(line: 115, column: 3, scope: !1500)
!1503 = !DILocation(line: 116, column: 1, scope: !1500)
!1504 = !DISubprogram(name: "rpl_stat", scope: !1505, file: !1505, line: 1355, type: !1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1505 = !DIFile(filename: "./lib/sys/stat.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!128, !394, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!1510 = !DISubprogram(name: "euidaccess", scope: !1511, file: !1511, line: 1143, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1511 = !DIFile(filename: "./lib/unistd.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!128, !118, !128}
!1514 = distinct !DISubprogram(name: "get_stat_atime", scope: !1515, file: !1515, line: 117, type: !1516, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1520)
!1515 = !DIFile(filename: "../lib/stat-time.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!1006, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!1520 = !{!1521}
!1521 = !DILocalVariable(name: "st", arg: 1, scope: !1514, file: !1515, line: 117, type: !1518)
!1522 = !DILocation(line: 0, scope: !1514)
!1523 = !DILocation(line: 120, column: 10, scope: !1514)
!1524 = !{i64 0, i64 8, !1525, i64 8, i64 8, !1525}
!1525 = !{!1219, !1219, i64 0}
!1526 = !DILocation(line: 120, column: 3, scope: !1514)
!1527 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1515, file: !1515, line: 145, type: !1516, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1528)
!1528 = !{!1529}
!1529 = !DILocalVariable(name: "st", arg: 1, scope: !1527, file: !1515, line: 145, type: !1518)
!1530 = !DILocation(line: 0, scope: !1527)
!1531 = !DILocation(line: 148, column: 10, scope: !1527)
!1532 = !DILocation(line: 148, column: 3, scope: !1527)
!1533 = distinct !DISubprogram(name: "timespec_cmp", scope: !1534, file: !1534, line: 64, type: !1535, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1537)
!1534 = !DIFile(filename: "../lib/timespec.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!128, !1006, !1006}
!1537 = !{!1538, !1539}
!1538 = !DILocalVariable(name: "a", arg: 1, scope: !1533, file: !1534, line: 64, type: !1006)
!1539 = !DILocalVariable(name: "b", arg: 2, scope: !1533, file: !1534, line: 64, type: !1006)
!1540 = !DILocation(line: 64, column: 31, scope: !1533)
!1541 = !DILocation(line: 64, column: 50, scope: !1533)
!1542 = !DILocation(line: 66, column: 14, scope: !1533)
!1543 = !{!1218, !1219, i64 0}
!1544 = !DILocation(line: 66, column: 12, scope: !1533)
!1545 = !DILocation(line: 66, column: 45, scope: !1533)
!1546 = !{!1218, !1219, i64 8}
!1547 = !DILocation(line: 66, column: 43, scope: !1533)
!1548 = !DILocation(line: 66, column: 3, scope: !1533)
!1549 = !DISubprogram(name: "__error", scope: !1550, file: !1550, line: 80, type: !1551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1550 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1553}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1554 = !DISubprogram(name: "geteuid", scope: !1555, file: !1555, line: 451, type: !1556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1555 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/unistd.h", directory: "")
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!996}
!1558 = !DISubprogram(name: "getegid", scope: !1555, file: !1555, line: 450, type: !1559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!1001}
!1561 = !DISubprogram(name: "rpl_lstat", scope: !1505, file: !1505, line: 1385, type: !1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1562 = distinct !DISubprogram(name: "find_int", scope: !2, file: !2, line: 132, type: !587, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DILocalVariable(name: "string", arg: 1, scope: !1562, file: !2, line: 132, type: !118)
!1565 = !DILocalVariable(name: "p", scope: !1562, file: !2, line: 134, type: !118)
!1566 = !DILocalVariable(name: "number_start", scope: !1562, file: !2, line: 135, type: !118)
!1567 = !DILocation(line: 0, scope: !1562)
!1568 = !DILocation(line: 137, column: 8, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 137, column: 3)
!1570 = !DILocation(line: 137, scope: !1569)
!1571 = !DILocation(line: 137, column: 39, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !2, line: 137, column: 3)
!1573 = !DILocation(line: 137, column: 29, scope: !1572)
!1574 = !DILocation(line: 137, column: 20, scope: !1572)
!1575 = !DILocation(line: 137, column: 3, scope: !1569)
!1576 = !DILocation(line: 138, column: 5, scope: !1572)
!1577 = !DILocation(line: 137, column: 46, scope: !1572)
!1578 = !DILocation(line: 137, column: 3, scope: !1572)
!1579 = distinct !{!1579, !1575, !1580, !435, !436}
!1580 = !DILocation(line: 138, column: 5, scope: !1569)
!1581 = !DILocation(line: 140, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 140, column: 7)
!1583 = !DILocation(line: 140, column: 10, scope: !1582)
!1584 = !DILocation(line: 140, column: 7, scope: !1562)
!1585 = !DILocation(line: 142, column: 8, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 141, column: 5)
!1587 = !DILocation(line: 144, column: 5, scope: !1586)
!1588 = !DILocation(line: 148, column: 13, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 146, column: 5)
!1590 = !DILocation(line: 148, column: 16, scope: !1589)
!1591 = !DILocation(line: 148, column: 9, scope: !1589)
!1592 = !DILocation(line: 0, scope: !1582)
!1593 = !DILocation(line: 151, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 151, column: 7)
!1595 = !DILocation(line: 151, column: 7, scope: !1562)
!1596 = !DILocation(line: 153, column: 7, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 152, column: 5)
!1598 = !DILocation(line: 0, scope: !1594)
!1599 = !DILocation(line: 153, column: 14, scope: !1597)
!1600 = !DILocation(line: 154, column: 10, scope: !1597)
!1601 = distinct !{!1601, !1596, !1600, !435, !436}
!1602 = !DILocation(line: 155, column: 7, scope: !1597)
!1603 = !DILocation(line: 155, column: 33, scope: !1597)
!1604 = !DILocation(line: 155, column: 23, scope: !1597)
!1605 = !DILocation(line: 155, column: 14, scope: !1597)
!1606 = !DILocation(line: 156, column: 10, scope: !1597)
!1607 = distinct !{!1607, !1602, !1606, !435, !436}
!1608 = !DILocation(line: 157, column: 12, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 157, column: 11)
!1610 = !DILocation(line: 157, column: 11, scope: !1597)
!1611 = !DILocation(line: 158, column: 9, scope: !1609)
!1612 = !DILocation(line: 159, column: 5, scope: !1597)
!1613 = !DILocation(line: 161, column: 47, scope: !1562)
!1614 = !DILocation(line: 161, column: 3, scope: !1562)
!1615 = !DISubprogram(name: "strtol", scope: !462, file: !462, line: 167, type: !1616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!1011, !118, !273, !128}
!1618 = !DISubprogram(name: "isatty", scope: !1555, file: !1555, line: 463, type: !1619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!128, !128}
!1621 = distinct !DISubprogram(name: "to_uchar", scope: !133, file: !133, line: 158, type: !1622, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!346, !4}
!1624 = !{!1625}
!1625 = !DILocalVariable(name: "ch", arg: 1, scope: !1621, file: !133, line: 158, type: !4)
!1626 = !DILocation(line: 0, scope: !1621)
!1627 = !DILocation(line: 158, column: 50, scope: !1621)
!1628 = distinct !DISubprogram(name: "isblank", scope: !1629, file: !1629, line: 224, type: !1619, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1630)
!1629 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_ctype.h", directory: "")
!1630 = !{!1631}
!1631 = !DILocalVariable(name: "_c", arg: 1, scope: !1628, file: !1629, line: 224, type: !128)
!1632 = !DILocation(line: 0, scope: !1628)
!1633 = !DILocation(line: 226, column: 10, scope: !1628)
!1634 = !DILocation(line: 226, column: 2, scope: !1628)
!1635 = distinct !DISubprogram(name: "__istype", scope: !1629, file: !1629, line: 153, type: !1636, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1639)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!128, !1638, !477}
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !376, line: 72, baseType: !128)
!1639 = !{!1640, !1641}
!1640 = !DILocalVariable(name: "_c", arg: 1, scope: !1635, file: !1629, line: 153, type: !1638)
!1641 = !DILocalVariable(name: "_f", arg: 2, scope: !1635, file: !1629, line: 153, type: !477)
!1642 = !DILocation(line: 0, scope: !1635)
!1643 = !DILocation(line: 158, column: 10, scope: !1635)
!1644 = !DILocation(line: 158, column: 27, scope: !1635)
!1645 = !DILocation(line: 158, column: 61, scope: !1635)
!1646 = !DILocation(line: 158, column: 25, scope: !1635)
!1647 = !DILocation(line: 158, column: 24, scope: !1635)
!1648 = !DILocation(line: 159, column: 7, scope: !1635)
!1649 = !DILocation(line: 159, column: 6, scope: !1635)
!1650 = !DILocation(line: 159, column: 5, scope: !1635)
!1651 = !DILocation(line: 158, column: 2, scope: !1635)
!1652 = distinct !DISubprogram(name: "isascii", scope: !1629, file: !1629, line: 135, type: !1619, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1653)
!1653 = !{!1654}
!1654 = !DILocalVariable(name: "_c", arg: 1, scope: !1652, file: !1629, line: 135, type: !128)
!1655 = !DILocation(line: 0, scope: !1652)
!1656 = !DILocation(line: 137, column: 14, scope: !1652)
!1657 = !DILocation(line: 137, column: 23, scope: !1652)
!1658 = !DILocation(line: 137, column: 2, scope: !1652)
!1659 = !DISubprogram(name: "__maskrune", scope: !1629, file: !1629, line: 148, type: !1636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1660 = !DISubprogram(name: "strlen", scope: !464, file: !464, line: 82, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!477, !118}
!1663 = !DISubprogram(name: "umaxtostr", scope: !1664, file: !1664, line: 29, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1664 = !DIFile(filename: "../lib/inttostr.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!274, !1667, !274}
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1668, line: 32, baseType: !477)
!1668 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!1669 = !DISubprogram(name: "strintcmp", scope: !1670, file: !1670, line: 1, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !395)
!1670 = !DIFile(filename: "../lib/strnumcmp.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1671 = distinct !DISubprogram(name: "get_mtime", scope: !2, file: !2, line: 167, type: !1672, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !109, retainedNodes: !1675)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!485, !118, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1675 = !{!1676, !1677, !1678, !1679}
!1676 = !DILocalVariable(name: "filename", arg: 1, scope: !1671, file: !2, line: 167, type: !118)
!1677 = !DILocalVariable(name: "mtime", arg: 2, scope: !1671, file: !2, line: 167, type: !1674)
!1678 = !DILocalVariable(name: "finfo", scope: !1671, file: !2, line: 169, type: !974)
!1679 = !DILocalVariable(name: "ok", scope: !1671, file: !2, line: 170, type: !485)
!1680 = !DILocation(line: 0, scope: !1671)
!1681 = !DILocation(line: 169, column: 3, scope: !1671)
!1682 = !DILocation(line: 169, column: 15, scope: !1671)
!1683 = !DILocation(line: 170, column: 14, scope: !1671)
!1684 = !DILocation(line: 170, column: 38, scope: !1671)
!1685 = !DILocation(line: 170, column: 8, scope: !1671)
!1686 = !DILocation(line: 171, column: 7, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 171, column: 7)
!1688 = !DILocation(line: 171, column: 7, scope: !1671)
!1689 = !DILocation(line: 172, column: 14, scope: !1687)
!1690 = !DILocation(line: 172, column: 5, scope: !1687)
!1691 = !DILocation(line: 173, column: 10, scope: !1671)
!1692 = !DILocation(line: 174, column: 1, scope: !1671)
!1693 = !DILocation(line: 173, column: 3, scope: !1671)
