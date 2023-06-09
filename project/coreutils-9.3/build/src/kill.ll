; ModuleID = 'coreutils-9.3/build/src/kill.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"Usage: %s [-s SIGNAL | -SIGNAL] PID...\0A  or:  %s -l [SIGNAL]...\0A  or:  %s -t [SIGNAL]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [45 x i8] c"Send signals to processes, or list signals.\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [236 x i8] c"  -s, --signal=SIGNAL, -SIGNAL\0A                   specify the name or number of the signal to be sent\0A  -l, --list       list signal names, or convert signal names to/from numbers\0A  -t, --table      print a table of signal information\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [189 x i8] c"\0ASIGNAL may be a signal name like 'HUP', or a signal number like '1',\0Aor the exit status of a process terminated by a signal.\0APID is an integer; if negative it identifies a process group.\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [5 x i8] c"kill\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !47
@short_options = internal constant [113 x i8] c"0::1::2::3::4::5::6::7::8::9::A::B::C::D::E::F::G::H::I::J::K::M::N::O::P::Q::R::S::T::U::V::W::X::Y::Z::Lln:s:t\00", align 16, !dbg !52
@long_options = internal constant [6 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.35, i32 0, ptr null, i32 108 }, %struct.rpl_option { ptr @.str.36, i32 1, ptr null, i32 115 }, %struct.rpl_option { ptr @.str.37, i32 0, ptr null, i32 116 }, %struct.rpl_option { ptr @.str.38, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.39, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !192
@rpl_optind = external global i32, align 4
@rpl_optarg = external global ptr, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"invalid option -- %c\00", align 1, !dbg !69
@.str.11 = private unnamed_addr constant [31 x i8] c"%s: multiple signals specified\00", align 1, !dbg !74
@.str.12 = private unnamed_addr constant [36 x i8] c"multiple -l or -t options specified\00", align 1, !dbg !79
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !84
@Version = external global ptr, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1, !dbg !89
@.str.15 = private unnamed_addr constant [36 x i8] c"cannot combine signal with -l or -t\00", align 1, !dbg !94
@.str.16 = private unnamed_addr constant [24 x i8] c"no process ID specified\00", align 1, !dbg !96
@.str.17 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !101
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !106
@.str.19 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !111
@.str.20 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !116
@.str.21 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !121
@.str.22 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !126
@.str.23 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !128
@.str.24 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !133
@.str.25 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !135
@.str.26 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !137
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.18, ptr @.str.19 }, %struct.infomap { ptr @.str.20, ptr @.str.21 }, %struct.infomap { ptr @.str.22, ptr @.str.23 }, %struct.infomap { ptr @.str.24, ptr @.str.23 }, %struct.infomap { ptr @.str.25, ptr @.str.23 }, %struct.infomap { ptr @.str.26, ptr @.str.23 }, %struct.infomap zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !139
@.str.28 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !144
@.str.29 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !149
@.str.30 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !154
@.str.31 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !159
@.str.32 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !161
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !166
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !171
@.str.35 = private unnamed_addr constant [5 x i8] c"list\00", align 1, !dbg !173
@.str.36 = private unnamed_addr constant [7 x i8] c"signal\00", align 1, !dbg !175
@.str.37 = private unnamed_addr constant [6 x i8] c"table\00", align 1, !dbg !180
@.str.38 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !185
@.str.39 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !187
@.str.40 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !204
@.str.41 = private unnamed_addr constant [13 x i8] c"%*d %-*s %s\0A\00", align 1, !dbg !206
@.str.42 = private unnamed_addr constant [2 x i8] c"?\00", align 1, !dbg !211
@.str.43 = private unnamed_addr constant [23 x i8] c"%s: invalid process id\00", align 1, !dbg !213
@.str.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !215

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !230 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !234, metadata !DIExpression()), !dbg !235
  %2 = icmp ne i32 %0, 0, !dbg !236
  br i1 %2, label %3, label %9, !dbg !238

3:                                                ; preds = %1
  br label %4, !dbg !239

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !240, !tbaa !242
  %6 = load ptr, ptr @program_name, align 8, !dbg !240, !tbaa !242
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !240
  br label %8, !dbg !240

8:                                                ; preds = %4
  br label %25, !dbg !240

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !246, !tbaa !242
  %11 = load ptr, ptr @program_name, align 8, !dbg !248, !tbaa !242
  %12 = load ptr, ptr @program_name, align 8, !dbg !249, !tbaa !242
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10, ptr noundef %11, ptr noundef %12), !dbg !250
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !251, !tbaa !242
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %14), !dbg !252
  call void @emit_mandatory_arg_note(), !dbg !253
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !254, !tbaa !242
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %16), !dbg !255
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !256, !tbaa !242
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %18), !dbg !257
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !258, !tbaa !242
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %20), !dbg !259
  %22 = load ptr, ptr @__stdoutp, align 8, !dbg !260, !tbaa !242
  %23 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %22), !dbg !261
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef @.str.8), !dbg !262
  call void @emit_ancillary_info(ptr noundef @.str.8), !dbg !263
  br label %25

25:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #8, !dbg !264
  unreachable, !dbg !264
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !265 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !326 i32 @printf(ptr noundef, ...) #2

declare !dbg !329 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !332 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !335, !tbaa !242
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.17, ptr noundef %1), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !338 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !342, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #9, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %2, metadata !343, metadata !DIExpression()), !dbg !357
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !357
  call void @llvm.dbg.value(metadata ptr %0, metadata !350, metadata !DIExpression()), !dbg !355
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !358
  call void @llvm.dbg.value(metadata ptr %3, metadata !351, metadata !DIExpression()), !dbg !355
  br label %4, !dbg !359

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !355
  call void @llvm.dbg.value(metadata ptr %.0, metadata !351, metadata !DIExpression()), !dbg !355
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !360
  %6 = load ptr, ptr %5, align 8, !dbg !360, !tbaa !361
  %7 = icmp ne ptr %6, null, !dbg !363
  br i1 %7, label %8, label %14, !dbg !364

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !365
  %10 = load ptr, ptr %9, align 8, !dbg !365, !tbaa !361
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !365
  %12 = icmp eq i32 %11, 0, !dbg !365
  %13 = xor i1 %12, true, !dbg !366
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !355
  br i1 %15, label %16, label %18, !dbg !359

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !367
  call void @llvm.dbg.value(metadata ptr %17, metadata !351, metadata !DIExpression()), !dbg !355
  br label %4, !dbg !359, !llvm.loop !368

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !371
  %20 = load ptr, ptr %19, align 8, !dbg !371, !tbaa !373
  %21 = icmp ne ptr %20, null, !dbg !374
  br i1 %21, label %22, label %25, !dbg !375

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !376
  %24 = load ptr, ptr %23, align 8, !dbg !376, !tbaa !373
  call void @llvm.dbg.value(metadata ptr %24, metadata !350, metadata !DIExpression()), !dbg !355
  br label %25, !dbg !377

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !355
  call void @llvm.dbg.value(metadata ptr %.01, metadata !350, metadata !DIExpression()), !dbg !355
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.27, ptr noundef @.str.13, ptr noundef @.str.28), !dbg !378
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !379
  call void @llvm.dbg.value(metadata ptr %27, metadata !353, metadata !DIExpression()), !dbg !355
  %28 = icmp ne ptr %27, null, !dbg !380
  br i1 %28, label %29, label %35, !dbg !382

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.29, i64 noundef 3), !dbg !383
  %31 = icmp ne i32 %30, 0, !dbg !383
  br i1 %31, label %32, label %35, !dbg !384

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !385, !tbaa !242
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.30, ptr noundef %33), !dbg !387
  br label %35, !dbg !388

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.18), !dbg !389
  %37 = icmp eq i32 %36, 0, !dbg !389
  br i1 %37, label %38, label %39, !dbg !389

38:                                               ; preds = %35
  br label %40, !dbg !389

39:                                               ; preds = %35
  br label %40, !dbg !389

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.31, %38 ], [ %0, %39 ], !dbg !389
  call void @llvm.dbg.value(metadata ptr %41, metadata !354, metadata !DIExpression()), !dbg !355
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.32, ptr noundef @.str.28, ptr noundef %41), !dbg !390
  %43 = icmp eq ptr %.01, %0, !dbg !391
  %44 = zext i1 %43 to i64, !dbg !392
  %45 = select i1 %43, ptr @.str.34, ptr @.str.9, !dbg !392
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.33, ptr noundef %.01, ptr noundef %45), !dbg !393
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #9, !dbg !394
  ret void, !dbg !394
}

; Function Attrs: noreturn
declare !dbg !395 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !397 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !401 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !405 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !412 {
  %3 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !417, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata ptr %1, metadata !418, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8 0, metadata !420, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8 0, metadata !422, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32 -1, metadata !423, metadata !DIExpression()), !dbg !429
  call void @llvm.lifetime.start.p0(i64 19, ptr %3) #9, !dbg !430
  call void @llvm.dbg.declare(metadata ptr %3, metadata !424, metadata !DIExpression()), !dbg !431
  %4 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !432
  %5 = load ptr, ptr %4, align 8, !dbg !432, !tbaa !242
  call void @set_program_name(ptr noundef %5), !dbg !433
  %6 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.9), !dbg !434
  %7 = call i32 @atexit(ptr noundef @close_stdout), !dbg !435
  br label %8, !dbg !436

8:                                                ; preds = %70, %2
  %.04 = phi i8 [ 0, %2 ], [ %.15, %70 ], !dbg !429
  %.01 = phi i8 [ 0, %2 ], [ %.23, %70 ], !dbg !437
  %.0 = phi i32 [ -1, %2 ], [ %.1, %70 ], !dbg !438
  call void @llvm.dbg.value(metadata i32 %.0, metadata !423, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8 %.01, metadata !422, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8 %.04, metadata !420, metadata !DIExpression()), !dbg !429
  %9 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @short_options, ptr noundef @long_options, ptr noundef null), !dbg !439
  call void @llvm.dbg.value(metadata i32 %9, metadata !419, metadata !DIExpression()), !dbg !429
  %10 = icmp ne i32 %9, -1, !dbg !440
  br i1 %10, label %11, label %71, !dbg !436

11:                                               ; preds = %8
  switch i32 %9, label %69 [
    i32 48, label %12
    i32 49, label %12
    i32 50, label %12
    i32 51, label %12
    i32 52, label %12
    i32 53, label %12
    i32 54, label %12
    i32 55, label %12
    i32 56, label %12
    i32 57, label %12
    i32 65, label %19
    i32 66, label %19
    i32 67, label %19
    i32 68, label %19
    i32 69, label %19
    i32 70, label %19
    i32 71, label %19
    i32 72, label %19
    i32 73, label %19
    i32 74, label %19
    i32 75, label %19
    i32 77, label %19
    i32 78, label %19
    i32 79, label %19
    i32 80, label %19
    i32 81, label %19
    i32 82, label %19
    i32 83, label %19
    i32 84, label %19
    i32 85, label %19
    i32 86, label %19
    i32 87, label %19
    i32 88, label %19
    i32 89, label %19
    i32 90, label %19
    i32 110, label %48
    i32 115, label %48
    i32 76, label %60
    i32 116, label %60
    i32 108, label %61
    i32 -130, label %65
    i32 -131, label %66
  ], !dbg !441

12:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %13 = load i32, ptr @rpl_optind, align 4, !dbg !442, !tbaa !445
  %14 = icmp ne i32 %13, 2, !dbg !447
  br i1 %14, label %15, label %18, !dbg !448

15:                                               ; preds = %12
  %16 = load i32, ptr @rpl_optind, align 4, !dbg !449, !tbaa !445
  %17 = add nsw i32 %16, -1, !dbg !449
  store i32 %17, ptr @rpl_optind, align 4, !dbg !449, !tbaa !445
  br label %72, !dbg !451

18:                                               ; preds = %12
  br label %19, !dbg !452

19:                                               ; preds = %18, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %20 = load ptr, ptr @rpl_optarg, align 8, !dbg !453, !tbaa !242
  %21 = icmp ne ptr %20, null, !dbg !453
  br i1 %21, label %35, label %22, !dbg !455

22:                                               ; preds = %19
  %23 = load i32, ptr @rpl_optind, align 4, !dbg !456, !tbaa !445
  %24 = sub nsw i32 %23, 1, !dbg !457
  %25 = sext i32 %24 to i64, !dbg !458
  %26 = getelementptr inbounds ptr, ptr %1, i64 %25, !dbg !458
  %27 = load ptr, ptr %26, align 8, !dbg !458, !tbaa !242
  %28 = load i32, ptr @rpl_optind, align 4, !dbg !459, !tbaa !445
  %29 = sub nsw i32 %28, 1, !dbg !460
  %30 = sext i32 %29 to i64, !dbg !461
  %31 = getelementptr inbounds ptr, ptr %1, i64 %30, !dbg !461
  %32 = load ptr, ptr %31, align 8, !dbg !461, !tbaa !242
  %33 = call i64 @strlen(ptr noundef %32), !dbg !462
  %34 = getelementptr inbounds i8, ptr %27, i64 %33, !dbg !463
  store ptr %34, ptr @rpl_optarg, align 8, !dbg !464, !tbaa !242
  br label %35, !dbg !465

35:                                               ; preds = %22, %19
  %36 = load ptr, ptr @rpl_optarg, align 8, !dbg !466, !tbaa !242
  %37 = load i32, ptr @rpl_optind, align 4, !dbg !468, !tbaa !445
  %38 = sub nsw i32 %37, 1, !dbg !469
  %39 = sext i32 %38 to i64, !dbg !470
  %40 = getelementptr inbounds ptr, ptr %1, i64 %39, !dbg !470
  %41 = load ptr, ptr %40, align 8, !dbg !470, !tbaa !242
  %42 = getelementptr inbounds i8, ptr %41, i64 2, !dbg !471
  %43 = icmp ne ptr %36, %42, !dbg !472
  br i1 %43, label %44, label %45, !dbg !473

44:                                               ; preds = %35
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.10, i32 noundef %9), !dbg !474
  call void @usage(i32 noundef 1) #8, !dbg !476
  unreachable, !dbg !476

45:                                               ; preds = %35
  %46 = load ptr, ptr @rpl_optarg, align 8, !dbg !477, !tbaa !242
  %47 = getelementptr inbounds i8, ptr %46, i32 -1, !dbg !477
  store ptr %47, ptr @rpl_optarg, align 8, !dbg !477, !tbaa !242
  br label %48, !dbg !478

48:                                               ; preds = %45, %11, %11
  %49 = icmp sle i32 0, %.0, !dbg !479
  br i1 %49, label %50, label %53, !dbg !481

50:                                               ; preds = %48
  %51 = load ptr, ptr @rpl_optarg, align 8, !dbg !482, !tbaa !242
  %52 = call ptr @quote(ptr noundef %51), !dbg !484
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.11, ptr noundef %52), !dbg !485
  call void @usage(i32 noundef 1) #8, !dbg !486
  unreachable, !dbg !486

53:                                               ; preds = %48
  %54 = load ptr, ptr @rpl_optarg, align 8, !dbg !487, !tbaa !242
  %55 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !488
  %56 = call i32 @operand2sig(ptr noundef %54, ptr noundef %55), !dbg !489
  call void @llvm.dbg.value(metadata i32 %56, metadata !423, metadata !DIExpression()), !dbg !429
  %57 = icmp slt i32 %56, 0, !dbg !490
  br i1 %57, label %58, label %59, !dbg !492

58:                                               ; preds = %53
  call void @usage(i32 noundef 1) #8, !dbg !493
  unreachable, !dbg !493

59:                                               ; preds = %53
  br label %70, !dbg !494

60:                                               ; preds = %11, %11
  call void @llvm.dbg.value(metadata i8 1, metadata !422, metadata !DIExpression()), !dbg !429
  br label %61, !dbg !495

61:                                               ; preds = %60, %11
  %.12 = phi i8 [ %.01, %11 ], [ 1, %60 ], !dbg !429
  call void @llvm.dbg.value(metadata i8 %.12, metadata !422, metadata !DIExpression()), !dbg !429
  %62 = trunc i8 %.04 to i1, !dbg !496
  br i1 %62, label %63, label %64, !dbg !498

63:                                               ; preds = %61
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.12), !dbg !499
  call void @usage(i32 noundef 1) #8, !dbg !501
  unreachable, !dbg !501

64:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i8 1, metadata !420, metadata !DIExpression()), !dbg !429
  br label %70, !dbg !502

65:                                               ; preds = %11
  call void @usage(i32 noundef 0) #8, !dbg !503
  unreachable, !dbg !503

66:                                               ; preds = %11
  %67 = load ptr, ptr @__stdoutp, align 8, !dbg !504, !tbaa !242
  %68 = load ptr, ptr @Version, align 8, !dbg !504, !tbaa !242
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %67, ptr noundef @.str.8, ptr noundef @.str.13, ptr noundef %68, ptr noundef @.str.14, ptr noundef null), !dbg !504
  call void @exit(i32 noundef 0) #8, !dbg !504
  unreachable, !dbg !504

69:                                               ; preds = %11
  call void @usage(i32 noundef 1) #8, !dbg !505
  unreachable, !dbg !505

70:                                               ; preds = %64, %59
  %.15 = phi i8 [ 1, %64 ], [ %.04, %59 ], !dbg !429
  %.23 = phi i8 [ %.12, %64 ], [ %.01, %59 ], !dbg !437
  %.1 = phi i32 [ %.0, %64 ], [ %56, %59 ], !dbg !429
  call void @llvm.dbg.value(metadata i32 %.1, metadata !423, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8 %.23, metadata !422, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8 %.15, metadata !420, metadata !DIExpression()), !dbg !429
  br label %8, !dbg !436, !llvm.loop !506

71:                                               ; preds = %8
  br label %72, !dbg !436

72:                                               ; preds = %71, %15
  call void @llvm.dbg.label(metadata !428), !dbg !508
  %73 = icmp slt i32 %.0, 0, !dbg !509
  br i1 %73, label %74, label %75, !dbg !511

74:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 15, metadata !423, metadata !DIExpression()), !dbg !429
  br label %79, !dbg !512

75:                                               ; preds = %72
  %76 = trunc i8 %.04 to i1, !dbg !513
  br i1 %76, label %77, label %78, !dbg !515

77:                                               ; preds = %75
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.15), !dbg !516
  call void @usage(i32 noundef 1) #8, !dbg !518
  unreachable, !dbg !518

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78, %74
  %.2 = phi i32 [ 15, %74 ], [ %.0, %78 ], !dbg !429
  call void @llvm.dbg.value(metadata i32 %.2, metadata !423, metadata !DIExpression()), !dbg !429
  %80 = trunc i8 %.04 to i1, !dbg !519
  br i1 %80, label %85, label %81, !dbg !521

81:                                               ; preds = %79
  %82 = load i32, ptr @rpl_optind, align 4, !dbg !522, !tbaa !445
  %83 = icmp sle i32 %0, %82, !dbg !523
  br i1 %83, label %84, label %85, !dbg !524

84:                                               ; preds = %81
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.16), !dbg !525
  call void @usage(i32 noundef 1) #8, !dbg !527
  unreachable, !dbg !527

85:                                               ; preds = %81, %79
  %86 = trunc i8 %.04 to i1, !dbg !528
  br i1 %86, label %87, label %99, !dbg !528

87:                                               ; preds = %85
  %88 = trunc i8 %.01 to i1, !dbg !529
  %89 = load i32, ptr @rpl_optind, align 4, !dbg !530, !tbaa !445
  %90 = icmp slt i32 %89, %0, !dbg !531
  br i1 %90, label %91, label %95, !dbg !530

91:                                               ; preds = %87
  %92 = load i32, ptr @rpl_optind, align 4, !dbg !532, !tbaa !445
  %93 = sext i32 %92 to i64, !dbg !533
  %94 = getelementptr inbounds ptr, ptr %1, i64 %93, !dbg !533
  br label %96, !dbg !530

95:                                               ; preds = %87
  br label %96, !dbg !530

96:                                               ; preds = %95, %91
  %97 = phi ptr [ %94, %91 ], [ null, %95 ], !dbg !530
  %98 = call i32 @list_signals(i1 noundef zeroext %88, ptr noundef %97), !dbg !534
  br label %104, !dbg !528

99:                                               ; preds = %85
  %100 = load i32, ptr @rpl_optind, align 4, !dbg !535, !tbaa !445
  %101 = sext i32 %100 to i64, !dbg !536
  %102 = getelementptr inbounds ptr, ptr %1, i64 %101, !dbg !536
  %103 = call i32 @send_signals(i32 noundef %.2, ptr noundef %102), !dbg !537
  br label %104, !dbg !528

104:                                              ; preds = %99, %96
  %105 = phi i32 [ %98, %96 ], [ %103, %99 ], !dbg !528
  call void @llvm.lifetime.end.p0(i64 19, ptr %3) #9, !dbg !538
  ret i32 %105, !dbg !539
}

declare !dbg !540 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !542 i32 @atexit(ptr noundef) #2

declare !dbg !546 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !550 i64 @strlen(ptr noundef) #2

declare !dbg !553 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !557 ptr @quote(ptr noundef) #2

declare !dbg !561 i32 @operand2sig(ptr noundef, ptr noundef) #2

declare !dbg !565 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @list_signals(i1 noundef zeroext %0, ptr noundef %1) #7 !dbg !569 {
  %3 = alloca [19 x i8], align 16
  %4 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %4, metadata !575, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata ptr %1, metadata !576, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 0, metadata !578, metadata !DIExpression()), !dbg !589
  call void @llvm.lifetime.start.p0(i64 19, ptr %3) #9, !dbg !590
  call void @llvm.dbg.declare(metadata ptr %3, metadata !579, metadata !DIExpression()), !dbg !591
  %5 = trunc i8 %4 to i1, !dbg !592
  br i1 %5, label %6, label %63, !dbg !593

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !580, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i32 1, metadata !583, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i32 1, metadata !577, metadata !DIExpression()), !dbg !589
  br label %7, !dbg !595

7:                                                ; preds = %11, %6
  %.02 = phi i32 [ 1, %6 ], [ %12, %11 ], !dbg !597
  %.0 = phi i32 [ 1, %6 ], [ %10, %11 ], !dbg !594
  call void @llvm.dbg.value(metadata i32 %.0, metadata !583, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i32 %.02, metadata !577, metadata !DIExpression()), !dbg !589
  %8 = icmp sle i32 %.02, 3, !dbg !598
  br i1 %8, label %9, label %13, !dbg !600

9:                                                ; preds = %7
  %10 = add i32 %.0, 1, !dbg !601
  call void @llvm.dbg.value(metadata i32 %10, metadata !583, metadata !DIExpression()), !dbg !594
  br label %11, !dbg !602

11:                                               ; preds = %9
  %12 = mul nsw i32 %.02, 10, !dbg !603
  call void @llvm.dbg.value(metadata i32 %12, metadata !577, metadata !DIExpression()), !dbg !589
  br label %7, !dbg !604, !llvm.loop !605

13:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !577, metadata !DIExpression()), !dbg !589
  br label %14, !dbg !607

14:                                               ; preds = %29, %13
  %.08 = phi i32 [ 0, %13 ], [ %.210, %29 ], !dbg !594
  %.13 = phi i32 [ 1, %13 ], [ %30, %29 ], !dbg !608
  call void @llvm.dbg.value(metadata i32 %.13, metadata !577, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 %.08, metadata !580, metadata !DIExpression()), !dbg !594
  %15 = icmp sle i32 %.13, 31, !dbg !609
  br i1 %15, label %16, label %31, !dbg !610

16:                                               ; preds = %14
  %17 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !611
  %18 = call i32 @sig2str(i32 noundef %.13, ptr noundef %17), !dbg !612
  %19 = icmp eq i32 %18, 0, !dbg !613
  br i1 %19, label %20, label %28, !dbg !614

20:                                               ; preds = %16
  %21 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !615
  %22 = call i64 @strlen(ptr noundef %21), !dbg !616
  call void @llvm.dbg.value(metadata i64 %22, metadata !584, metadata !DIExpression()), !dbg !617
  %23 = zext i32 %.08 to i64, !dbg !618
  %24 = icmp ult i64 %23, %22, !dbg !620
  br i1 %24, label %25, label %27, !dbg !621

25:                                               ; preds = %20
  %26 = trunc i64 %22 to i32, !dbg !622
  call void @llvm.dbg.value(metadata i32 %26, metadata !580, metadata !DIExpression()), !dbg !594
  br label %27, !dbg !623

27:                                               ; preds = %25, %20
  %.19 = phi i32 [ %26, %25 ], [ %.08, %20 ], !dbg !594
  call void @llvm.dbg.value(metadata i32 %.19, metadata !580, metadata !DIExpression()), !dbg !594
  br label %28, !dbg !624

28:                                               ; preds = %27, %16
  %.210 = phi i32 [ %.19, %27 ], [ %.08, %16 ], !dbg !594
  call void @llvm.dbg.value(metadata i32 %.210, metadata !580, metadata !DIExpression()), !dbg !594
  br label %29, !dbg !625

29:                                               ; preds = %28
  %30 = add nsw i32 %.13, 1, !dbg !626
  call void @llvm.dbg.value(metadata i32 %30, metadata !577, metadata !DIExpression()), !dbg !589
  br label %14, !dbg !627, !llvm.loop !628

31:                                               ; preds = %14
  %32 = icmp ne ptr %1, null, !dbg !630
  br i1 %32, label %33, label %49, !dbg !632

33:                                               ; preds = %31
  br label %34, !dbg !633

34:                                               ; preds = %46, %33
  %.04 = phi i32 [ 0, %33 ], [ %.15, %46 ], !dbg !589
  %.01 = phi ptr [ %1, %33 ], [ %47, %46 ]
  call void @llvm.dbg.value(metadata ptr %.01, metadata !576, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 %.04, metadata !578, metadata !DIExpression()), !dbg !589
  %35 = load ptr, ptr %.01, align 8, !dbg !634, !tbaa !242
  %36 = icmp ne ptr %35, null, !dbg !637
  br i1 %36, label %37, label %48, !dbg !637

37:                                               ; preds = %34
  %38 = load ptr, ptr %.01, align 8, !dbg !638, !tbaa !242
  %39 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !640
  %40 = call i32 @operand2sig(ptr noundef %38, ptr noundef %39), !dbg !641
  call void @llvm.dbg.value(metadata i32 %40, metadata !577, metadata !DIExpression()), !dbg !589
  %41 = icmp slt i32 %40, 0, !dbg !642
  br i1 %41, label %42, label %43, !dbg !644

42:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !578, metadata !DIExpression()), !dbg !589
  br label %45, !dbg !645

43:                                               ; preds = %37
  %44 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !646
  call void @print_table_row(i32 noundef %.0, i32 noundef %40, i32 noundef %.08, ptr noundef %44), !dbg !647
  br label %45

45:                                               ; preds = %43, %42
  %.15 = phi i32 [ 1, %42 ], [ %.04, %43 ], !dbg !589
  call void @llvm.dbg.value(metadata i32 %.15, metadata !578, metadata !DIExpression()), !dbg !589
  br label %46, !dbg !648

46:                                               ; preds = %45
  %47 = getelementptr inbounds ptr, ptr %.01, i32 1, !dbg !649
  call void @llvm.dbg.value(metadata ptr %47, metadata !576, metadata !DIExpression()), !dbg !589
  br label %34, !dbg !650, !llvm.loop !651

48:                                               ; preds = %34
  br label %62, !dbg !652

49:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i32 1, metadata !577, metadata !DIExpression()), !dbg !589
  br label %50, !dbg !653

50:                                               ; preds = %59, %49
  %.2 = phi i32 [ 1, %49 ], [ %60, %59 ], !dbg !655
  call void @llvm.dbg.value(metadata i32 %.2, metadata !577, metadata !DIExpression()), !dbg !589
  %51 = icmp sle i32 %.2, 31, !dbg !656
  br i1 %51, label %52, label %61, !dbg !658

52:                                               ; preds = %50
  %53 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !659
  %54 = call i32 @sig2str(i32 noundef %.2, ptr noundef %53), !dbg !661
  %55 = icmp eq i32 %54, 0, !dbg !662
  br i1 %55, label %56, label %58, !dbg !663

56:                                               ; preds = %52
  %57 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !664
  call void @print_table_row(i32 noundef %.0, i32 noundef %.2, i32 noundef %.08, ptr noundef %57), !dbg !665
  br label %58, !dbg !665

58:                                               ; preds = %56, %52
  br label %59, !dbg !666

59:                                               ; preds = %58
  %60 = add nsw i32 %.2, 1, !dbg !667
  call void @llvm.dbg.value(metadata i32 %60, metadata !577, metadata !DIExpression()), !dbg !589
  br label %50, !dbg !668, !llvm.loop !669

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %48
  %.26 = phi i32 [ %.04, %48 ], [ 0, %61 ], !dbg !671
  call void @llvm.dbg.value(metadata i32 %.26, metadata !578, metadata !DIExpression()), !dbg !589
  br label %106, !dbg !672

63:                                               ; preds = %2
  %64 = icmp ne ptr %1, null, !dbg !673
  br i1 %64, label %65, label %91, !dbg !676

65:                                               ; preds = %63
  br label %66, !dbg !677

66:                                               ; preds = %88, %65
  %.37 = phi i32 [ 0, %65 ], [ %.4, %88 ], !dbg !589
  %.1 = phi ptr [ %1, %65 ], [ %89, %88 ]
  call void @llvm.dbg.value(metadata ptr %.1, metadata !576, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 %.37, metadata !578, metadata !DIExpression()), !dbg !589
  %67 = load ptr, ptr %.1, align 8, !dbg !678, !tbaa !242
  %68 = icmp ne ptr %67, null, !dbg !681
  br i1 %68, label %69, label %90, !dbg !681

69:                                               ; preds = %66
  %70 = load ptr, ptr %.1, align 8, !dbg !682, !tbaa !242
  %71 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !684
  %72 = call i32 @operand2sig(ptr noundef %70, ptr noundef %71), !dbg !685
  call void @llvm.dbg.value(metadata i32 %72, metadata !577, metadata !DIExpression()), !dbg !589
  %73 = icmp slt i32 %72, 0, !dbg !686
  br i1 %73, label %74, label %75, !dbg !688

74:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 1, metadata !578, metadata !DIExpression()), !dbg !589
  br label %87, !dbg !689

75:                                               ; preds = %69
  %76 = load ptr, ptr %.1, align 8, !dbg !690, !tbaa !242
  %77 = load i8, ptr %76, align 1, !dbg !690, !tbaa !693
  %78 = sext i8 %77 to i32, !dbg !690
  %79 = sub i32 %78, 48, !dbg !690
  %80 = icmp ule i32 %79, 9, !dbg !690
  br i1 %80, label %81, label %84, !dbg !694

81:                                               ; preds = %75
  %82 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !695
  %83 = call i32 @puts(ptr noundef %82), !dbg !696
  br label %86, !dbg !696

84:                                               ; preds = %75
  %85 = call i32 (ptr, ...) @printf(ptr noundef @.str.40, i32 noundef %72), !dbg !697
  br label %86

86:                                               ; preds = %84, %81
  br label %87

87:                                               ; preds = %86, %74
  %.4 = phi i32 [ 1, %74 ], [ %.37, %86 ], !dbg !589
  call void @llvm.dbg.value(metadata i32 %.4, metadata !578, metadata !DIExpression()), !dbg !589
  br label %88, !dbg !698

88:                                               ; preds = %87
  %89 = getelementptr inbounds ptr, ptr %.1, i32 1, !dbg !699
  call void @llvm.dbg.value(metadata ptr %89, metadata !576, metadata !DIExpression()), !dbg !589
  br label %66, !dbg !700, !llvm.loop !701

90:                                               ; preds = %66
  br label %105, !dbg !702

91:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 1, metadata !577, metadata !DIExpression()), !dbg !589
  br label %92, !dbg !703

92:                                               ; preds = %102, %91
  %.3 = phi i32 [ 1, %91 ], [ %103, %102 ], !dbg !705
  call void @llvm.dbg.value(metadata i32 %.3, metadata !577, metadata !DIExpression()), !dbg !589
  %93 = icmp sle i32 %.3, 31, !dbg !706
  br i1 %93, label %94, label %104, !dbg !708

94:                                               ; preds = %92
  %95 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !709
  %96 = call i32 @sig2str(i32 noundef %.3, ptr noundef %95), !dbg !711
  %97 = icmp eq i32 %96, 0, !dbg !712
  br i1 %97, label %98, label %101, !dbg !713

98:                                               ; preds = %94
  %99 = getelementptr inbounds [19 x i8], ptr %3, i64 0, i64 0, !dbg !714
  %100 = call i32 @puts(ptr noundef %99), !dbg !715
  br label %101, !dbg !715

101:                                              ; preds = %98, %94
  br label %102, !dbg !716

102:                                              ; preds = %101
  %103 = add nsw i32 %.3, 1, !dbg !717
  call void @llvm.dbg.value(metadata i32 %103, metadata !577, metadata !DIExpression()), !dbg !589
  br label %92, !dbg !718, !llvm.loop !719

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %90
  %.5 = phi i32 [ %.37, %90 ], [ 0, %104 ], !dbg !671
  call void @llvm.dbg.value(metadata i32 %.5, metadata !578, metadata !DIExpression()), !dbg !589
  br label %106

106:                                              ; preds = %105, %62
  %.6 = phi i32 [ %.26, %62 ], [ %.5, %105 ], !dbg !671
  call void @llvm.dbg.value(metadata i32 %.6, metadata !578, metadata !DIExpression()), !dbg !589
  call void @llvm.lifetime.end.p0(i64 19, ptr %3) #9, !dbg !721
  ret i32 %.6, !dbg !722
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @send_signals(i32 noundef %0, ptr noundef %1) #7 !dbg !723 {
  %3 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !727, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata ptr %1, metadata !728, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 0, metadata !729, metadata !DIExpression()), !dbg !742
  %4 = load ptr, ptr %1, align 8, !dbg !743, !tbaa !242
  call void @llvm.dbg.value(metadata ptr %4, metadata !730, metadata !DIExpression()), !dbg !742
  br label %5, !dbg !744

5:                                                ; preds = %38, %2
  %.02 = phi i32 [ 0, %2 ], [ %.2, %38 ], !dbg !742
  %.01 = phi ptr [ %1, %2 ], [ %39, %38 ]
  %.0 = phi ptr [ %4, %2 ], [ %40, %38 ], !dbg !742
  call void @llvm.dbg.value(metadata ptr %.0, metadata !730, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata ptr %.01, metadata !728, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 %.02, metadata !729, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %3, metadata !731, metadata !DIExpression()), !dbg !746
  %6 = call ptr @__error(), !dbg !747
  store i32 0, ptr %6, align 4, !dbg !748, !tbaa !445
  %7 = call i64 @strtoimax(ptr noundef %.0, ptr noundef %3, i32 noundef 10), !dbg !749
  call void @llvm.dbg.value(metadata i64 %7, metadata !733, metadata !DIExpression()), !dbg !750
  %8 = call ptr @__error(), !dbg !751
  %9 = load i32, ptr %8, align 4, !dbg !751, !tbaa !445
  %10 = icmp eq i32 %9, 34, !dbg !753
  br i1 %10, label %27, label %11, !dbg !754

11:                                               ; preds = %5
  %12 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %7, i64 0), !dbg !755
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !755
  %14 = extractvalue { i64, i1 } %12, 0, !dbg !755
  %15 = trunc i64 %14 to i32, !dbg !755
  %16 = sext i32 %15 to i64, !dbg !755
  %17 = icmp ne i64 %14, %16, !dbg !755
  %18 = or i1 %13, %17, !dbg !755
  call void @llvm.dbg.value(metadata i32 %15, metadata !737, metadata !DIExpression()), !dbg !750
  br i1 %18, label %27, label %19, !dbg !756

19:                                               ; preds = %11
  %20 = load ptr, ptr %3, align 8, !dbg !757, !tbaa !242
  %21 = icmp eq ptr %.0, %20, !dbg !758
  br i1 %21, label %27, label %22, !dbg !759

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 8, !dbg !760, !tbaa !242
  %24 = load i8, ptr %23, align 1, !dbg !761, !tbaa !693
  %25 = sext i8 %24 to i32, !dbg !761
  %26 = icmp ne i32 %25, 0, !dbg !761
  br i1 %26, label %27, label %29, !dbg !762

27:                                               ; preds = %22, %19, %11, %5
  %28 = call ptr @quote(ptr noundef %.0), !dbg !763
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.43, ptr noundef %28), !dbg !765
  call void @llvm.dbg.value(metadata i32 1, metadata !729, metadata !DIExpression()), !dbg !742
  br label %37, !dbg !766

29:                                               ; preds = %22
  %30 = call i32 @"\01_kill"(i32 noundef %15, i32 noundef %0), !dbg !767
  %31 = icmp ne i32 %30, 0, !dbg !769
  br i1 %31, label %32, label %36, !dbg !770

32:                                               ; preds = %29
  %33 = call ptr @__error(), !dbg !771
  %34 = load i32, ptr %33, align 4, !dbg !771, !tbaa !445
  %35 = call ptr @quote(ptr noundef %.0), !dbg !773
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %34, ptr noundef @.str.44, ptr noundef %35), !dbg !774
  call void @llvm.dbg.value(metadata i32 1, metadata !729, metadata !DIExpression()), !dbg !742
  br label %36, !dbg !775

36:                                               ; preds = %32, %29
  %.1 = phi i32 [ 1, %32 ], [ %.02, %29 ], !dbg !742
  call void @llvm.dbg.value(metadata i32 %.1, metadata !729, metadata !DIExpression()), !dbg !742
  br label %37

37:                                               ; preds = %36, %27
  %.2 = phi i32 [ 1, %27 ], [ %.1, %36 ], !dbg !776
  call void @llvm.dbg.value(metadata i32 %.2, metadata !729, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9, !dbg !777
  br label %38, !dbg !778

38:                                               ; preds = %37
  %39 = getelementptr inbounds ptr, ptr %.01, i32 1, !dbg !779
  call void @llvm.dbg.value(metadata ptr %39, metadata !728, metadata !DIExpression()), !dbg !742
  %40 = load ptr, ptr %39, align 8, !dbg !780, !tbaa !242
  call void @llvm.dbg.value(metadata ptr %40, metadata !730, metadata !DIExpression()), !dbg !742
  %41 = icmp ne ptr %40, null, !dbg !778
  br i1 %41, label %5, label %42, !dbg !778, !llvm.loop !781

42:                                               ; preds = %38
  ret i32 %.2, !dbg !783
}

declare !dbg !784 ptr @__error() #2

declare !dbg !788 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

declare !dbg !793 i32 @"\01_kill"(i32 noundef, i32 noundef) #2

declare !dbg !797 i32 @sig2str(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @print_table_row(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7 !dbg !801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !805, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i32 %1, metadata !806, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i32 %2, metadata !807, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata ptr %3, metadata !808, metadata !DIExpression()), !dbg !810
  %5 = call ptr @strsignal(i32 noundef %1), !dbg !811
  call void @llvm.dbg.value(metadata ptr %5, metadata !809, metadata !DIExpression()), !dbg !810
  %6 = icmp ne ptr %5, null, !dbg !812
  br i1 %6, label %7, label %8, !dbg !812

7:                                                ; preds = %4
  br label %9, !dbg !812

8:                                                ; preds = %4
  br label %9, !dbg !812

9:                                                ; preds = %8, %7
  %10 = phi ptr [ %5, %7 ], [ @.str.42, %8 ], !dbg !812
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.41, i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %10), !dbg !813
  ret void, !dbg !814
}

declare !dbg !815 i32 @puts(ptr noundef) #2

declare !dbg !818 ptr @strsignal(i32 noundef) #2

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
attributes #8 = { noreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!54}
!llvm.ident = !{!223}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/kill.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 720, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 90)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 45)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1888, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 236)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 48)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 57)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1512, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 189)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1528, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 191)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 5)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "short_options", scope: !54, file: !2, line: 54, type: !220, isLocal: true, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !62, globals: !68, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!55 = !{!56}
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 332, baseType: !58, size: 32, elements: !59)
!57 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !{!60, !61}
!60 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!61 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!62 = !{!63, !65, !66, !67}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!68 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !69, !74, !79, !84, !89, !94, !96, !101, !106, !111, !116, !121, !126, !128, !133, !135, !137, !139, !144, !149, !154, !159, !161, !166, !171, !52, !173, !175, !180, !185, !187, !192, !204, !206, !211, !213, !215}
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 21)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 31)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 36)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 14)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 12)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !81, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 24)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !57, line: 586, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 75)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !57, line: 660, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 2)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !57, line: 660, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 16)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !57, line: 661, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 10)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !57, line: 661, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 22)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !57, line: 662, type: !118, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !57, line: 662, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 15)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !57, line: 663, type: !118, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !57, line: 664, type: !118, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !57, line: 665, type: !118, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !57, line: 678, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 23)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !57, line: 678, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 40)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !57, line: 683, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 4)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !57, line: 689, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 71)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !57, line: 695, type: !44, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !57, line: 696, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 27)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !57, line: 698, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 51)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !57, line: 699, type: !91, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !44, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 7)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 6)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !44, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "long_options", scope: !54, file: !2, line: 60, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 1536, elements: !183)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !197, line: 50, size: 256, elements: !198)
!197 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!198 = !{!199, !200, !201, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !197, line: 52, baseType: !63, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !196, file: !197, line: 55, baseType: !58, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !196, file: !197, line: 56, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !196, file: !197, line: 57, baseType: !58, size: 32, offset: 192)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !151, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 13)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !108, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !141, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 3)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 904, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 113)
!223 = !{!"Homebrew clang version 16.0.4"}
!224 = !{i32 7, !"Dwarf Version", i32 4}
!225 = !{i32 2, !"Debug Info Version", i32 3}
!226 = !{i32 1, !"wchar_size", i32 4}
!227 = !{i32 8, !"PIC Level", i32 2}
!228 = !{i32 7, !"uwtable", i32 2}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 71, type: !231, scopeLine: 72, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !58}
!233 = !{!234}
!234 = !DILocalVariable(name: "status", arg: 1, scope: !230, file: !2, line: 71, type: !58)
!235 = !DILocation(line: 0, scope: !230)
!236 = !DILocation(line: 73, column: 14, scope: !237)
!237 = distinct !DILexicalBlock(scope: !230, file: !2, line: 73, column: 7)
!238 = !DILocation(line: 73, column: 7, scope: !230)
!239 = !DILocation(line: 74, column: 5, scope: !237)
!240 = !DILocation(line: 74, column: 5, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !2, line: 74, column: 5)
!242 = !{!243, !243, i64 0}
!243 = !{!"any pointer", !244, i64 0}
!244 = !{!"omnipotent char", !245, i64 0}
!245 = !{!"Simple C/C++ TBAA"}
!246 = !DILocation(line: 82, column: 15, scope: !247)
!247 = distinct !DILexicalBlock(scope: !237, file: !2, line: 76, column: 5)
!248 = !DILocation(line: 82, column: 29, scope: !247)
!249 = !DILocation(line: 82, column: 43, scope: !247)
!250 = !DILocation(line: 77, column: 7, scope: !247)
!251 = !DILocation(line: 85, column: 5, scope: !247)
!252 = !DILocation(line: 83, column: 7, scope: !247)
!253 = !DILocation(line: 87, column: 7, scope: !247)
!254 = !DILocation(line: 94, column: 5, scope: !247)
!255 = !DILocation(line: 89, column: 7, scope: !247)
!256 = !DILocation(line: 95, column: 39, scope: !247)
!257 = !DILocation(line: 95, column: 7, scope: !247)
!258 = !DILocation(line: 96, column: 42, scope: !247)
!259 = !DILocation(line: 96, column: 7, scope: !247)
!260 = !DILocation(line: 101, column: 5, scope: !247)
!261 = !DILocation(line: 97, column: 7, scope: !247)
!262 = !DILocation(line: 102, column: 7, scope: !247)
!263 = !DILocation(line: 103, column: 7, scope: !247)
!264 = !DILocation(line: 105, column: 3, scope: !230)
!265 = !DISubprogram(name: "fprintf", scope: !266, file: !266, line: 155, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!266 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!267 = !DISubroutineType(types: !268)
!268 = !{!58, !269, !324, null}
!269 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !272, line: 157, baseType: !273)
!272 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !272, line: 126, size: 1216, elements: !274)
!274 = !{!275, !278, !279, !280, !282, !283, !288, !289, !290, !294, !298, !308, !312, !313, !316, !317, !319, !321, !322, !323}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !273, file: !272, line: 127, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !273, file: !272, line: 128, baseType: !58, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !273, file: !272, line: 129, baseType: !58, size: 32, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !273, file: !272, line: 130, baseType: !281, size: 16, offset: 128)
!281 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !273, file: !272, line: 131, baseType: !281, size: 16, offset: 144)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !273, file: !272, line: 132, baseType: !284, size: 128, offset: 192)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !272, line: 92, size: 128, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !284, file: !272, line: 93, baseType: !276, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !284, file: !272, line: 94, baseType: !58, size: 32, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !273, file: !272, line: 133, baseType: !58, size: 32, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !273, file: !272, line: 136, baseType: !66, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !273, file: !272, line: 137, baseType: !291, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!58, !66}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !273, file: !272, line: 138, baseType: !295, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!58, !66, !65, !58}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !273, file: !272, line: 139, baseType: !299, size: 64, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !66, !302, !58}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !272, line: 81, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !304, line: 71, baseType: !305)
!304 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !306, line: 48, baseType: !307)
!306 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!307 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !273, file: !272, line: 140, baseType: !309, size: 64, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!58, !66, !63, !58}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !273, file: !272, line: 143, baseType: !284, size: 128, offset: 704)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !273, file: !272, line: 144, baseType: !314, size: 64, offset: 832)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !272, line: 98, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !273, file: !272, line: 145, baseType: !58, size: 32, offset: 896)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !273, file: !272, line: 148, baseType: !318, size: 24, offset: 928)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 24, elements: !218)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !273, file: !272, line: 149, baseType: !320, size: 8, offset: 952)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 8, elements: !50)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !273, file: !272, line: 152, baseType: !284, size: 128, offset: 960)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !273, file: !272, line: 155, baseType: !58, size: 32, offset: 1088)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !273, file: !272, line: 156, baseType: !302, size: 64, offset: 1152)
!324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!325 = !{}
!326 = !DISubprogram(name: "printf", scope: !266, file: !266, line: 175, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!327 = !DISubroutineType(types: !328)
!328 = !{!58, !324, null}
!329 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !266, file: !266, line: 157, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!330 = !DISubroutineType(types: !331)
!331 = !{!58, !324, !269}
!332 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !57, file: !57, line: 584, type: !333, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !325)
!333 = !DISubroutineType(types: !334)
!334 = !{null}
!335 = !DILocation(line: 588, column: 5, scope: !332)
!336 = !DILocation(line: 586, column: 3, scope: !332)
!337 = !DILocation(line: 589, column: 1, scope: !332)
!338 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !57, file: !57, line: 657, type: !339, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !63}
!341 = !{!342, !343, !350, !351, !353, !354}
!342 = !DILocalVariable(name: "program", arg: 1, scope: !338, file: !57, line: 657, type: !63)
!343 = !DILocalVariable(name: "infomap", scope: !338, file: !57, line: 659, type: !344)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 896, elements: !178)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !338, file: !57, line: 659, size: 128, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !346, file: !57, line: 659, baseType: !63, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !346, file: !57, line: 659, baseType: !63, size: 64, offset: 64)
!350 = !DILocalVariable(name: "node", scope: !338, file: !57, line: 669, type: !63)
!351 = !DILocalVariable(name: "map_prog", scope: !338, file: !57, line: 670, type: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!353 = !DILocalVariable(name: "lc_messages", scope: !338, file: !57, line: 682, type: !63)
!354 = !DILocalVariable(name: "url_program", scope: !338, file: !57, line: 695, type: !63)
!355 = !DILocation(line: 0, scope: !338)
!356 = !DILocation(line: 659, column: 3, scope: !338)
!357 = !DILocation(line: 659, column: 67, scope: !338)
!358 = !DILocation(line: 670, column: 36, scope: !338)
!359 = !DILocation(line: 672, column: 3, scope: !338)
!360 = !DILocation(line: 672, column: 20, scope: !338)
!361 = !{!362, !243, i64 0}
!362 = !{!"infomap", !243, i64 0, !243, i64 8}
!363 = !DILocation(line: 672, column: 10, scope: !338)
!364 = !DILocation(line: 672, column: 28, scope: !338)
!365 = !DILocation(line: 672, column: 33, scope: !338)
!366 = !DILocation(line: 672, column: 31, scope: !338)
!367 = !DILocation(line: 673, column: 13, scope: !338)
!368 = distinct !{!368, !359, !367, !369, !370}
!369 = !{!"llvm.loop.mustprogress"}
!370 = !{!"llvm.loop.unroll.disable"}
!371 = !DILocation(line: 675, column: 17, scope: !372)
!372 = distinct !DILexicalBlock(scope: !338, file: !57, line: 675, column: 7)
!373 = !{!362, !243, i64 8}
!374 = !DILocation(line: 675, column: 7, scope: !372)
!375 = !DILocation(line: 675, column: 7, scope: !338)
!376 = !DILocation(line: 676, column: 22, scope: !372)
!377 = !DILocation(line: 676, column: 5, scope: !372)
!378 = !DILocation(line: 678, column: 3, scope: !338)
!379 = !DILocation(line: 682, column: 29, scope: !338)
!380 = !DILocation(line: 683, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !338, file: !57, line: 683, column: 7)
!382 = !DILocation(line: 683, column: 19, scope: !381)
!383 = !DILocation(line: 683, column: 22, scope: !381)
!384 = !DILocation(line: 683, column: 7, scope: !338)
!385 = !DILocation(line: 690, column: 61, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !57, line: 684, column: 5)
!387 = !DILocation(line: 689, column: 7, scope: !386)
!388 = !DILocation(line: 691, column: 5, scope: !386)
!389 = !DILocation(line: 695, column: 29, scope: !338)
!390 = !DILocation(line: 696, column: 3, scope: !338)
!391 = !DILocation(line: 699, column: 22, scope: !338)
!392 = !DILocation(line: 699, column: 17, scope: !338)
!393 = !DILocation(line: 698, column: 3, scope: !338)
!394 = !DILocation(line: 700, column: 1, scope: !338)
!395 = !DISubprogram(name: "exit", scope: !396, file: !396, line: 145, type: !231, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !325)
!396 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!397 = !DISubprogram(name: "strcmp", scope: !398, file: !398, line: 77, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!398 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!399 = !DISubroutineType(types: !400)
!400 = !{!58, !63, !63}
!401 = !DISubprogram(name: "setlocale", scope: !402, file: !402, line: 53, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!402 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!403 = !DISubroutineType(types: !404)
!404 = !{!65, !58, !63}
!405 = !DISubprogram(name: "strncmp", scope: !398, file: !398, line: 84, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!406 = !DISubroutineType(types: !407)
!407 = !{!58, !63, !63, !408}
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !409, line: 31, baseType: !410)
!409 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !306, line: 94, baseType: !411)
!411 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!412 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 222, type: !413, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !416)
!413 = !DISubroutineType(types: !414)
!414 = !{!58, !58, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!416 = !{!417, !418, !419, !420, !422, !423, !424, !428}
!417 = !DILocalVariable(name: "argc", arg: 1, scope: !412, file: !2, line: 222, type: !58)
!418 = !DILocalVariable(name: "argv", arg: 2, scope: !412, file: !2, line: 222, type: !415)
!419 = !DILocalVariable(name: "optc", scope: !412, file: !2, line: 224, type: !58)
!420 = !DILocalVariable(name: "list", scope: !412, file: !2, line: 225, type: !421)
!421 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!422 = !DILocalVariable(name: "table", scope: !412, file: !2, line: 226, type: !421)
!423 = !DILocalVariable(name: "signum", scope: !412, file: !2, line: 227, type: !58)
!424 = !DILocalVariable(name: "signame", scope: !412, file: !2, line: 228, type: !425)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 19)
!428 = !DILabel(scope: !412, name: "no_more_options", file: !2, line: 296)
!429 = !DILocation(line: 0, scope: !412)
!430 = !DILocation(line: 228, column: 3, scope: !412)
!431 = !DILocation(line: 228, column: 8, scope: !412)
!432 = !DILocation(line: 231, column: 21, scope: !412)
!433 = !DILocation(line: 231, column: 3, scope: !412)
!434 = !DILocation(line: 232, column: 3, scope: !412)
!435 = !DILocation(line: 236, column: 3, scope: !412)
!436 = !DILocation(line: 238, column: 3, scope: !412)
!437 = !DILocation(line: 226, column: 8, scope: !412)
!438 = !DILocation(line: 227, column: 7, scope: !412)
!439 = !DILocation(line: 238, column: 18, scope: !412)
!440 = !DILocation(line: 239, column: 10, scope: !412)
!441 = !DILocation(line: 240, column: 5, scope: !412)
!442 = !DILocation(line: 244, column: 13, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !2, line: 244, column: 13)
!444 = distinct !DILexicalBlock(scope: !412, file: !2, line: 241, column: 7)
!445 = !{!446, !446, i64 0}
!446 = !{!"int", !244, i64 0}
!447 = !DILocation(line: 244, column: 20, scope: !443)
!448 = !DILocation(line: 244, column: 13, scope: !444)
!449 = !DILocation(line: 247, column: 19, scope: !450)
!450 = distinct !DILexicalBlock(scope: !443, file: !2, line: 245, column: 11)
!451 = !DILocation(line: 248, column: 13, scope: !450)
!452 = !DILocation(line: 244, column: 23, scope: !443)
!453 = !DILocation(line: 257, column: 15, scope: !454)
!454 = distinct !DILexicalBlock(scope: !444, file: !2, line: 257, column: 13)
!455 = !DILocation(line: 257, column: 13, scope: !444)
!456 = !DILocation(line: 258, column: 25, scope: !454)
!457 = !DILocation(line: 258, column: 32, scope: !454)
!458 = !DILocation(line: 258, column: 20, scope: !454)
!459 = !DILocation(line: 258, column: 52, scope: !454)
!460 = !DILocation(line: 258, column: 59, scope: !454)
!461 = !DILocation(line: 258, column: 47, scope: !454)
!462 = !DILocation(line: 258, column: 39, scope: !454)
!463 = !DILocation(line: 258, column: 37, scope: !454)
!464 = !DILocation(line: 258, column: 18, scope: !454)
!465 = !DILocation(line: 258, column: 11, scope: !454)
!466 = !DILocation(line: 259, column: 13, scope: !467)
!467 = distinct !DILexicalBlock(scope: !444, file: !2, line: 259, column: 13)
!468 = !DILocation(line: 259, column: 28, scope: !467)
!469 = !DILocation(line: 259, column: 35, scope: !467)
!470 = !DILocation(line: 259, column: 23, scope: !467)
!471 = !DILocation(line: 259, column: 40, scope: !467)
!472 = !DILocation(line: 259, column: 20, scope: !467)
!473 = !DILocation(line: 259, column: 13, scope: !444)
!474 = !DILocation(line: 261, column: 13, scope: !475)
!475 = distinct !DILexicalBlock(scope: !467, file: !2, line: 260, column: 11)
!476 = !DILocation(line: 262, column: 13, scope: !475)
!477 = !DILocation(line: 264, column: 15, scope: !444)
!478 = !DILocation(line: 264, column: 9, scope: !444)
!479 = !DILocation(line: 268, column: 15, scope: !480)
!480 = distinct !DILexicalBlock(scope: !444, file: !2, line: 268, column: 13)
!481 = !DILocation(line: 268, column: 13, scope: !444)
!482 = !DILocation(line: 270, column: 70, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !2, line: 269, column: 11)
!484 = !DILocation(line: 270, column: 63, scope: !483)
!485 = !DILocation(line: 270, column: 13, scope: !483)
!486 = !DILocation(line: 271, column: 13, scope: !483)
!487 = !DILocation(line: 273, column: 31, scope: !444)
!488 = !DILocation(line: 273, column: 39, scope: !444)
!489 = !DILocation(line: 273, column: 18, scope: !444)
!490 = !DILocation(line: 274, column: 20, scope: !491)
!491 = distinct !DILexicalBlock(scope: !444, file: !2, line: 274, column: 13)
!492 = !DILocation(line: 274, column: 13, scope: !444)
!493 = !DILocation(line: 275, column: 11, scope: !491)
!494 = !DILocation(line: 276, column: 9, scope: !444)
!495 = !DILocation(line: 280, column: 9, scope: !444)
!496 = !DILocation(line: 283, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !444, file: !2, line: 283, column: 13)
!498 = !DILocation(line: 283, column: 13, scope: !444)
!499 = !DILocation(line: 285, column: 13, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !2, line: 284, column: 11)
!501 = !DILocation(line: 286, column: 13, scope: !500)
!502 = !DILocation(line: 289, column: 9, scope: !444)
!503 = !DILocation(line: 291, column: 7, scope: !444)
!504 = !DILocation(line: 292, column: 7, scope: !444)
!505 = !DILocation(line: 294, column: 9, scope: !444)
!506 = distinct !{!506, !436, !507, !369, !370}
!507 = !DILocation(line: 295, column: 7, scope: !412)
!508 = !DILocation(line: 296, column: 2, scope: !412)
!509 = !DILocation(line: 298, column: 14, scope: !510)
!510 = distinct !DILexicalBlock(scope: !412, file: !2, line: 298, column: 7)
!511 = !DILocation(line: 298, column: 7, scope: !412)
!512 = !DILocation(line: 299, column: 5, scope: !510)
!513 = !DILocation(line: 300, column: 12, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !2, line: 300, column: 12)
!515 = !DILocation(line: 300, column: 12, scope: !510)
!516 = !DILocation(line: 302, column: 7, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !2, line: 301, column: 5)
!518 = !DILocation(line: 303, column: 7, scope: !517)
!519 = !DILocation(line: 306, column: 10, scope: !520)
!520 = distinct !DILexicalBlock(scope: !412, file: !2, line: 306, column: 8)
!521 = !DILocation(line: 306, column: 15, scope: !520)
!522 = !DILocation(line: 306, column: 26, scope: !520)
!523 = !DILocation(line: 306, column: 23, scope: !520)
!524 = !DILocation(line: 306, column: 8, scope: !412)
!525 = !DILocation(line: 308, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !520, file: !2, line: 307, column: 5)
!527 = !DILocation(line: 309, column: 7, scope: !526)
!528 = !DILocation(line: 312, column: 11, scope: !412)
!529 = !DILocation(line: 313, column: 27, scope: !412)
!530 = !DILocation(line: 313, column: 34, scope: !412)
!531 = !DILocation(line: 313, column: 41, scope: !412)
!532 = !DILocation(line: 313, column: 57, scope: !412)
!533 = !DILocation(line: 313, column: 55, scope: !412)
!534 = !DILocation(line: 313, column: 13, scope: !412)
!535 = !DILocation(line: 314, column: 42, scope: !412)
!536 = !DILocation(line: 314, column: 40, scope: !412)
!537 = !DILocation(line: 314, column: 13, scope: !412)
!538 = !DILocation(line: 315, column: 1, scope: !412)
!539 = !DILocation(line: 312, column: 3, scope: !412)
!540 = !DISubprogram(name: "set_program_name", scope: !541, file: !541, line: 37, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!541 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!542 = !DISubprogram(name: "atexit", scope: !396, file: !396, line: 133, type: !543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!543 = !DISubroutineType(types: !544)
!544 = !{!58, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!546 = !DISubprogram(name: "rpl_getopt_long", scope: !197, file: !197, line: 66, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!547 = !DISubroutineType(types: !548)
!548 = !{!58, !58, !415, !63, !549, !202}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!550 = !DISubprogram(name: "strlen", scope: !398, file: !398, line: 82, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!551 = !DISubroutineType(types: !552)
!552 = !{!411, !63}
!553 = !DISubprogram(name: "error", scope: !554, file: !554, line: 395, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!554 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!555 = !DISubroutineType(types: !556)
!556 = !{null, !58, !58, !63, null}
!557 = !DISubprogram(name: "quote", scope: !558, file: !558, line: 44, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!558 = !DIFile(filename: "../lib/quote.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!559 = !DISubroutineType(types: !560)
!560 = !{!63, !63}
!561 = !DISubprogram(name: "operand2sig", scope: !562, file: !562, line: 18, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!562 = !DIFile(filename: "../src/operand2sig.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!563 = !DISubroutineType(types: !564)
!564 = !{!58, !63, !65}
!565 = !DISubprogram(name: "version_etc", scope: !566, file: !566, line: 65, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!566 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!567 = !DISubroutineType(types: !568)
!568 = !{null, !270, !63, !63, !63, null}
!569 = distinct !DISubprogram(name: "list_signals", scope: !2, file: !2, line: 126, type: !570, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !574)
!570 = !DISubroutineType(types: !571)
!571 = !{!58, !421, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!574 = !{!575, !576, !577, !578, !579, !580, !583, !584}
!575 = !DILocalVariable(name: "table", arg: 1, scope: !569, file: !2, line: 126, type: !421)
!576 = !DILocalVariable(name: "argv", arg: 2, scope: !569, file: !2, line: 126, type: !572)
!577 = !DILocalVariable(name: "signum", scope: !569, file: !2, line: 128, type: !58)
!578 = !DILocalVariable(name: "status", scope: !569, file: !2, line: 129, type: !58)
!579 = !DILocalVariable(name: "signame", scope: !569, file: !2, line: 130, type: !425)
!580 = !DILocalVariable(name: "name_width", scope: !581, file: !2, line: 134, type: !67)
!581 = distinct !DILexicalBlock(scope: !582, file: !2, line: 133, column: 5)
!582 = distinct !DILexicalBlock(scope: !569, file: !2, line: 132, column: 7)
!583 = !DILocalVariable(name: "num_width", scope: !581, file: !2, line: 137, type: !67)
!584 = !DILocalVariable(name: "len", scope: !585, file: !2, line: 145, type: !408)
!585 = distinct !DILexicalBlock(scope: !586, file: !2, line: 144, column: 11)
!586 = distinct !DILexicalBlock(scope: !587, file: !2, line: 143, column: 13)
!587 = distinct !DILexicalBlock(scope: !588, file: !2, line: 142, column: 7)
!588 = distinct !DILexicalBlock(scope: !581, file: !2, line: 142, column: 7)
!589 = !DILocation(line: 0, scope: !569)
!590 = !DILocation(line: 130, column: 3, scope: !569)
!591 = !DILocation(line: 130, column: 8, scope: !569)
!592 = !DILocation(line: 132, column: 7, scope: !582)
!593 = !DILocation(line: 132, column: 7, scope: !569)
!594 = !DILocation(line: 0, scope: !581)
!595 = !DILocation(line: 138, column: 12, scope: !596)
!596 = distinct !DILexicalBlock(scope: !581, file: !2, line: 138, column: 7)
!597 = !DILocation(line: 138, scope: !596)
!598 = !DILocation(line: 138, column: 31, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !2, line: 138, column: 7)
!600 = !DILocation(line: 138, column: 7, scope: !596)
!601 = !DILocation(line: 139, column: 18, scope: !599)
!602 = !DILocation(line: 139, column: 9, scope: !599)
!603 = !DILocation(line: 138, column: 60, scope: !599)
!604 = !DILocation(line: 138, column: 7, scope: !599)
!605 = distinct !{!605, !600, !606, !369, !370}
!606 = !DILocation(line: 139, column: 18, scope: !596)
!607 = !DILocation(line: 142, column: 12, scope: !588)
!608 = !DILocation(line: 142, scope: !588)
!609 = !DILocation(line: 142, column: 31, scope: !587)
!610 = !DILocation(line: 142, column: 7, scope: !588)
!611 = !DILocation(line: 143, column: 30, scope: !586)
!612 = !DILocation(line: 143, column: 13, scope: !586)
!613 = !DILocation(line: 143, column: 39, scope: !586)
!614 = !DILocation(line: 143, column: 13, scope: !587)
!615 = !DILocation(line: 145, column: 34, scope: !585)
!616 = !DILocation(line: 145, column: 26, scope: !585)
!617 = !DILocation(line: 0, scope: !585)
!618 = !DILocation(line: 146, column: 17, scope: !619)
!619 = distinct !DILexicalBlock(scope: !585, file: !2, line: 146, column: 17)
!620 = !DILocation(line: 146, column: 28, scope: !619)
!621 = !DILocation(line: 146, column: 17, scope: !585)
!622 = !DILocation(line: 147, column: 28, scope: !619)
!623 = !DILocation(line: 147, column: 15, scope: !619)
!624 = !DILocation(line: 148, column: 11, scope: !585)
!625 = !DILocation(line: 143, column: 42, scope: !586)
!626 = !DILocation(line: 142, column: 54, scope: !587)
!627 = !DILocation(line: 142, column: 7, scope: !587)
!628 = distinct !{!628, !610, !629, !369, !370}
!629 = !DILocation(line: 148, column: 11, scope: !588)
!630 = !DILocation(line: 150, column: 11, scope: !631)
!631 = distinct !DILexicalBlock(scope: !581, file: !2, line: 150, column: 11)
!632 = !DILocation(line: 150, column: 11, scope: !581)
!633 = !DILocation(line: 151, column: 9, scope: !631)
!634 = !DILocation(line: 151, column: 16, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !2, line: 151, column: 9)
!636 = distinct !DILexicalBlock(scope: !631, file: !2, line: 151, column: 9)
!637 = !DILocation(line: 151, column: 9, scope: !636)
!638 = !DILocation(line: 153, column: 35, scope: !639)
!639 = distinct !DILexicalBlock(scope: !635, file: !2, line: 152, column: 11)
!640 = !DILocation(line: 153, column: 42, scope: !639)
!641 = !DILocation(line: 153, column: 22, scope: !639)
!642 = !DILocation(line: 154, column: 24, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !2, line: 154, column: 17)
!644 = !DILocation(line: 154, column: 17, scope: !639)
!645 = !DILocation(line: 155, column: 15, scope: !643)
!646 = !DILocation(line: 157, column: 63, scope: !643)
!647 = !DILocation(line: 157, column: 15, scope: !643)
!648 = !DILocation(line: 158, column: 11, scope: !639)
!649 = !DILocation(line: 151, column: 27, scope: !635)
!650 = !DILocation(line: 151, column: 9, scope: !635)
!651 = distinct !{!651, !637, !652, !369, !370}
!652 = !DILocation(line: 158, column: 11, scope: !636)
!653 = !DILocation(line: 160, column: 14, scope: !654)
!654 = distinct !DILexicalBlock(scope: !631, file: !2, line: 160, column: 9)
!655 = !DILocation(line: 160, scope: !654)
!656 = !DILocation(line: 160, column: 33, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !2, line: 160, column: 9)
!658 = !DILocation(line: 160, column: 9, scope: !654)
!659 = !DILocation(line: 161, column: 32, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !2, line: 161, column: 15)
!661 = !DILocation(line: 161, column: 15, scope: !660)
!662 = !DILocation(line: 161, column: 41, scope: !660)
!663 = !DILocation(line: 161, column: 15, scope: !657)
!664 = !DILocation(line: 162, column: 61, scope: !660)
!665 = !DILocation(line: 162, column: 13, scope: !660)
!666 = !DILocation(line: 161, column: 44, scope: !660)
!667 = !DILocation(line: 160, column: 56, scope: !657)
!668 = !DILocation(line: 160, column: 9, scope: !657)
!669 = distinct !{!669, !658, !670, !369, !370}
!670 = !DILocation(line: 162, column: 68, scope: !654)
!671 = !DILocation(line: 129, column: 7, scope: !569)
!672 = !DILocation(line: 163, column: 5, scope: !581)
!673 = !DILocation(line: 166, column: 11, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !2, line: 166, column: 11)
!675 = distinct !DILexicalBlock(scope: !582, file: !2, line: 165, column: 5)
!676 = !DILocation(line: 166, column: 11, scope: !675)
!677 = !DILocation(line: 167, column: 9, scope: !674)
!678 = !DILocation(line: 167, column: 16, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !2, line: 167, column: 9)
!680 = distinct !DILexicalBlock(scope: !674, file: !2, line: 167, column: 9)
!681 = !DILocation(line: 167, column: 9, scope: !680)
!682 = !DILocation(line: 169, column: 35, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !2, line: 168, column: 11)
!684 = !DILocation(line: 169, column: 42, scope: !683)
!685 = !DILocation(line: 169, column: 22, scope: !683)
!686 = !DILocation(line: 170, column: 24, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !2, line: 170, column: 17)
!688 = !DILocation(line: 170, column: 17, scope: !683)
!689 = !DILocation(line: 171, column: 15, scope: !687)
!690 = !DILocation(line: 174, column: 21, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !2, line: 174, column: 21)
!692 = distinct !DILexicalBlock(scope: !687, file: !2, line: 173, column: 15)
!693 = !{!244, !244, i64 0}
!694 = !DILocation(line: 174, column: 21, scope: !692)
!695 = !DILocation(line: 175, column: 25, scope: !691)
!696 = !DILocation(line: 175, column: 19, scope: !691)
!697 = !DILocation(line: 177, column: 19, scope: !691)
!698 = !DILocation(line: 179, column: 11, scope: !683)
!699 = !DILocation(line: 167, column: 27, scope: !679)
!700 = !DILocation(line: 167, column: 9, scope: !679)
!701 = distinct !{!701, !681, !702, !369, !370}
!702 = !DILocation(line: 179, column: 11, scope: !680)
!703 = !DILocation(line: 181, column: 14, scope: !704)
!704 = distinct !DILexicalBlock(scope: !674, file: !2, line: 181, column: 9)
!705 = !DILocation(line: 181, scope: !704)
!706 = !DILocation(line: 181, column: 33, scope: !707)
!707 = distinct !DILexicalBlock(scope: !704, file: !2, line: 181, column: 9)
!708 = !DILocation(line: 181, column: 9, scope: !704)
!709 = !DILocation(line: 182, column: 32, scope: !710)
!710 = distinct !DILexicalBlock(scope: !707, file: !2, line: 182, column: 15)
!711 = !DILocation(line: 182, column: 15, scope: !710)
!712 = !DILocation(line: 182, column: 41, scope: !710)
!713 = !DILocation(line: 182, column: 15, scope: !707)
!714 = !DILocation(line: 183, column: 19, scope: !710)
!715 = !DILocation(line: 183, column: 13, scope: !710)
!716 = !DILocation(line: 182, column: 44, scope: !710)
!717 = !DILocation(line: 181, column: 56, scope: !707)
!718 = !DILocation(line: 181, column: 9, scope: !707)
!719 = distinct !{!719, !708, !720, !369, !370}
!720 = !DILocation(line: 183, column: 26, scope: !704)
!721 = !DILocation(line: 187, column: 1, scope: !569)
!722 = !DILocation(line: 186, column: 3, scope: !569)
!723 = distinct !DISubprogram(name: "send_signals", scope: !2, file: !2, line: 193, type: !724, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!58, !58, !572}
!726 = !{!727, !728, !729, !730, !731, !733, !737}
!727 = !DILocalVariable(name: "signum", arg: 1, scope: !723, file: !2, line: 193, type: !58)
!728 = !DILocalVariable(name: "argv", arg: 2, scope: !723, file: !2, line: 193, type: !572)
!729 = !DILocalVariable(name: "status", scope: !723, file: !2, line: 195, type: !58)
!730 = !DILocalVariable(name: "arg", scope: !723, file: !2, line: 196, type: !63)
!731 = !DILocalVariable(name: "endp", scope: !732, file: !2, line: 200, type: !65)
!732 = distinct !DILexicalBlock(scope: !723, file: !2, line: 199, column: 5)
!733 = !DILocalVariable(name: "n", scope: !732, file: !2, line: 201, type: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !735, line: 32, baseType: !736)
!735 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_intmax_t.h", directory: "")
!736 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!737 = !DILocalVariable(name: "pid", scope: !732, file: !2, line: 202, type: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !739, line: 31, baseType: !740)
!739 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_pid_t.h", directory: "")
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pid_t", file: !304, line: 72, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !306, line: 46, baseType: !58)
!742 = !DILocation(line: 0, scope: !723)
!743 = !DILocation(line: 196, column: 21, scope: !723)
!744 = !DILocation(line: 198, column: 3, scope: !723)
!745 = !DILocation(line: 200, column: 7, scope: !732)
!746 = !DILocation(line: 200, column: 13, scope: !732)
!747 = !DILocation(line: 201, column: 21, scope: !732)
!748 = !DILocation(line: 201, column: 27, scope: !732)
!749 = !DILocation(line: 201, column: 32, scope: !732)
!750 = !DILocation(line: 0, scope: !732)
!751 = !DILocation(line: 204, column: 11, scope: !752)
!752 = distinct !DILexicalBlock(scope: !732, file: !2, line: 204, column: 11)
!753 = !DILocation(line: 204, column: 17, scope: !752)
!754 = !DILocation(line: 204, column: 27, scope: !752)
!755 = !DILocation(line: 204, column: 30, scope: !752)
!756 = !DILocation(line: 205, column: 11, scope: !752)
!757 = !DILocation(line: 205, column: 21, scope: !752)
!758 = !DILocation(line: 205, column: 18, scope: !752)
!759 = !DILocation(line: 205, column: 26, scope: !752)
!760 = !DILocation(line: 205, column: 30, scope: !752)
!761 = !DILocation(line: 205, column: 29, scope: !752)
!762 = !DILocation(line: 204, column: 11, scope: !732)
!763 = !DILocation(line: 207, column: 53, scope: !764)
!764 = distinct !DILexicalBlock(scope: !752, file: !2, line: 206, column: 9)
!765 = !DILocation(line: 207, column: 11, scope: !764)
!766 = !DILocation(line: 209, column: 9, scope: !764)
!767 = !DILocation(line: 210, column: 16, scope: !768)
!768 = distinct !DILexicalBlock(scope: !752, file: !2, line: 210, column: 16)
!769 = !DILocation(line: 210, column: 35, scope: !768)
!770 = !DILocation(line: 210, column: 16, scope: !752)
!771 = !DILocation(line: 212, column: 21, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !2, line: 211, column: 9)
!773 = !DILocation(line: 212, column: 34, scope: !772)
!774 = !DILocation(line: 212, column: 11, scope: !772)
!775 = !DILocation(line: 214, column: 9, scope: !772)
!776 = !DILocation(line: 0, scope: !752)
!777 = !DILocation(line: 215, column: 5, scope: !723)
!778 = !DILocation(line: 215, column: 5, scope: !732)
!779 = !DILocation(line: 216, column: 18, scope: !723)
!780 = !DILocation(line: 216, column: 17, scope: !723)
!781 = distinct !{!781, !744, !782, !369, !370}
!782 = !DILocation(line: 216, column: 25, scope: !723)
!783 = !DILocation(line: 218, column: 3, scope: !723)
!784 = !DISubprogram(name: "__error", scope: !785, file: !785, line: 80, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!785 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!786 = !DISubroutineType(types: !787)
!787 = !{!202}
!788 = !DISubprogram(name: "strtoimax", scope: !789, file: !789, line: 251, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!789 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/inttypes.h", directory: "")
!790 = !DISubroutineType(types: !791)
!791 = !{!734, !324, !792, !58}
!792 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !415)
!793 = !DISubprogram(name: "kill", linkageName: "\01_kill", scope: !794, file: !794, line: 80, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!794 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/signal.h", directory: "")
!795 = !DISubroutineType(types: !796)
!796 = !{!58, !738, !58}
!797 = !DISubprogram(name: "sig2str", scope: !798, file: !798, line: 34, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!798 = !DIFile(filename: "../lib/sig2str.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!799 = !DISubroutineType(types: !800)
!800 = !{!58, !58, !65}
!801 = distinct !DISubprogram(name: "print_table_row", scope: !2, file: !2, line: 113, type: !802, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !58, !58, !58, !63}
!804 = !{!805, !806, !807, !808, !809}
!805 = !DILocalVariable(name: "num_width", arg: 1, scope: !801, file: !2, line: 113, type: !58)
!806 = !DILocalVariable(name: "signum", arg: 2, scope: !801, file: !2, line: 113, type: !58)
!807 = !DILocalVariable(name: "name_width", arg: 3, scope: !801, file: !2, line: 114, type: !58)
!808 = !DILocalVariable(name: "signame", arg: 4, scope: !801, file: !2, line: 114, type: !63)
!809 = !DILocalVariable(name: "description", scope: !801, file: !2, line: 116, type: !63)
!810 = !DILocation(line: 0, scope: !801)
!811 = !DILocation(line: 116, column: 29, scope: !801)
!812 = !DILocation(line: 118, column: 11, scope: !801)
!813 = !DILocation(line: 117, column: 3, scope: !801)
!814 = !DILocation(line: 119, column: 1, scope: !801)
!815 = !DISubprogram(name: "puts", scope: !266, file: !266, line: 178, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!816 = !DISubroutineType(types: !817)
!817 = !{!58, !63}
!818 = !DISubprogram(name: "strsignal", scope: !398, file: !398, line: 134, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!819 = !DISubroutineType(types: !820)
!820 = !{!65, !58}
