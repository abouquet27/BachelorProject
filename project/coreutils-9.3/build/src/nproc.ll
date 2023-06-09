; ModuleID = 'coreutils-9.3/build/src/nproc.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [128 x i8] c"Print the number of processing units available to the current process,\0Awhich may be less than the number of online processors\0A\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [117 x i8] c"      --all      print the number of installed processors\0A      --ignore=N  if possible, exclude N processing units\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [6 x i8] c"nproc\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !37
@longopts = internal constant [5 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.30, i32 0, ptr null, i32 128 }, %struct.rpl_option { ptr @.str.31, i32 1, ptr null, i32 129 }, %struct.rpl_option { ptr @.str.32, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.33, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !42
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !69
@Version = external global ptr, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1, !dbg !74
@rpl_optarg = external global ptr, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1, !dbg !79
@rpl_optind = external global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !84
@.str.12 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1, !dbg !89
@.str.13 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !94
@.str.14 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !99
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !104
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !109
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !114
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !116
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !118
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !120
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !122
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.13, ptr @.str.14 }, %struct.infomap { ptr @.str.15, ptr @.str.16 }, %struct.infomap { ptr @.str.17, ptr @.str.18 }, %struct.infomap { ptr @.str.19, ptr @.str.18 }, %struct.infomap { ptr @.str.20, ptr @.str.18 }, %struct.infomap { ptr @.str.21, ptr @.str.18 }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !124
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !126
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !131
@.str.25 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !136
@.str.26 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !141
@.str.27 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !143
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !148
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !153
@.str.30 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !158
@.str.31 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1, !dbg !160
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !165
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !167

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !189 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !193, metadata !DIExpression()), !dbg !194
  %2 = icmp ne i32 %0, 0, !dbg !195
  br i1 %2, label %3, label %9, !dbg !197

3:                                                ; preds = %1
  br label %4, !dbg !198

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !199, !tbaa !201
  %6 = load ptr, ptr @program_name, align 8, !dbg !199, !tbaa !201
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !199
  br label %8, !dbg !199

8:                                                ; preds = %4
  br label %20, !dbg !199

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !205, !tbaa !201
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !207
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !208, !tbaa !201
  %13 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %12), !dbg !209
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !210, !tbaa !201
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %14), !dbg !211
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !212, !tbaa !201
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %16), !dbg !213
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !214, !tbaa !201
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %18), !dbg !215
  call void @emit_ancillary_info(ptr noundef @.str.6), !dbg !216
  br label %20

20:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #8, !dbg !217
  unreachable, !dbg !217
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !218 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !281 i32 @printf(ptr noundef, ...) #2

declare !dbg !284 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !287 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !291, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #9, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !306
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !306
  call void @llvm.dbg.value(metadata ptr %0, metadata !299, metadata !DIExpression()), !dbg !304
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !307
  call void @llvm.dbg.value(metadata ptr %3, metadata !300, metadata !DIExpression()), !dbg !304
  br label %4, !dbg !308

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !304
  call void @llvm.dbg.value(metadata ptr %.0, metadata !300, metadata !DIExpression()), !dbg !304
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !309
  %6 = load ptr, ptr %5, align 8, !dbg !309, !tbaa !310
  %7 = icmp ne ptr %6, null, !dbg !312
  br i1 %7, label %8, label %14, !dbg !313

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !314
  %10 = load ptr, ptr %9, align 8, !dbg !314, !tbaa !310
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !314
  %12 = icmp eq i32 %11, 0, !dbg !314
  %13 = xor i1 %12, true, !dbg !315
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !304
  br i1 %15, label %16, label %18, !dbg !308

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !316
  call void @llvm.dbg.value(metadata ptr %17, metadata !300, metadata !DIExpression()), !dbg !304
  br label %4, !dbg !308, !llvm.loop !317

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !320
  %20 = load ptr, ptr %19, align 8, !dbg !320, !tbaa !322
  %21 = icmp ne ptr %20, null, !dbg !323
  br i1 %21, label %22, label %25, !dbg !324

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !325
  %24 = load ptr, ptr %23, align 8, !dbg !325, !tbaa !322
  call void @llvm.dbg.value(metadata ptr %24, metadata !299, metadata !DIExpression()), !dbg !304
  br label %25, !dbg !326

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !304
  call void @llvm.dbg.value(metadata ptr %.01, metadata !299, metadata !DIExpression()), !dbg !304
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, ptr noundef @.str.8, ptr noundef @.str.23), !dbg !327
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !328
  call void @llvm.dbg.value(metadata ptr %27, metadata !302, metadata !DIExpression()), !dbg !304
  %28 = icmp ne ptr %27, null, !dbg !329
  br i1 %28, label %29, label %35, !dbg !331

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.24, i64 noundef 3), !dbg !332
  %31 = icmp ne i32 %30, 0, !dbg !332
  br i1 %31, label %32, label %35, !dbg !333

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !334, !tbaa !201
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.25, ptr noundef %33), !dbg !336
  br label %35, !dbg !337

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.13), !dbg !338
  %37 = icmp eq i32 %36, 0, !dbg !338
  br i1 %37, label %38, label %39, !dbg !338

38:                                               ; preds = %35
  br label %40, !dbg !338

39:                                               ; preds = %35
  br label %40, !dbg !338

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.26, %38 ], [ %0, %39 ], !dbg !338
  call void @llvm.dbg.value(metadata ptr %41, metadata !303, metadata !DIExpression()), !dbg !304
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.27, ptr noundef @.str.23, ptr noundef %41), !dbg !339
  %43 = icmp eq ptr %.01, %0, !dbg !340
  %44 = zext i1 %43 to i64, !dbg !341
  %45 = select i1 %43, ptr @.str.29, ptr @.str.7, !dbg !341
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.28, ptr noundef %.01, ptr noundef %45), !dbg !342
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #9, !dbg !343
  ret void, !dbg !343
}

; Function Attrs: noreturn
declare !dbg !344 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !346 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !350 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !354 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !361 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !366, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata ptr %1, metadata !367, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i64 0, metadata !369, metadata !DIExpression()), !dbg !373
  %3 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !374
  %4 = load ptr, ptr %3, align 8, !dbg !374, !tbaa !201
  call void @set_program_name(ptr noundef %4), !dbg !375
  %5 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.7), !dbg !376
  %6 = call i32 @atexit(ptr noundef @close_stdout), !dbg !377
  call void @llvm.dbg.value(metadata i32 2, metadata !370, metadata !DIExpression()), !dbg !373
  br label %7, !dbg !378

7:                                                ; preds = %24, %2
  %.03 = phi i64 [ 0, %2 ], [ %.25, %24 ], !dbg !379
  %.01 = phi i32 [ 2, %2 ], [ %.2, %24 ], !dbg !380
  call void @llvm.dbg.value(metadata i32 %.01, metadata !370, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i64 %.03, metadata !369, metadata !DIExpression()), !dbg !373
  br label %8, !dbg !378

8:                                                ; preds = %7
  %9 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.7, ptr noundef @longopts, ptr noundef null), !dbg !381
  call void @llvm.dbg.value(metadata i32 %9, metadata !371, metadata !DIExpression()), !dbg !382
  %10 = icmp eq i32 %9, -1, !dbg !383
  br i1 %10, label %11, label %12, !dbg !385

11:                                               ; preds = %8
  br label %23, !dbg !386

12:                                               ; preds = %8
  switch i32 %9, label %21 [
    i32 -130, label %13
    i32 -131, label %14
    i32 128, label %17
    i32 129, label %18
  ], !dbg !387

13:                                               ; preds = %12
  call void @usage(i32 noundef 0) #8, !dbg !388
  unreachable, !dbg !388

14:                                               ; preds = %12
  %15 = load ptr, ptr @__stdoutp, align 8, !dbg !390, !tbaa !201
  %16 = load ptr, ptr @Version, align 8, !dbg !390, !tbaa !201
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %15, ptr noundef @.str.6, ptr noundef @.str.8, ptr noundef %16, ptr noundef @.str.9, ptr noundef null), !dbg !390
  call void @exit(i32 noundef 0) #8, !dbg !390
  unreachable, !dbg !390

17:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !373
  br label %22, !dbg !391

18:                                               ; preds = %12
  %19 = load ptr, ptr @rpl_optarg, align 8, !dbg !392, !tbaa !201
  %20 = call i64 @xdectoumax(ptr noundef %19, i64 noundef 0, i64 noundef -1, ptr noundef @.str.7, ptr noundef @.str.10, i32 noundef 0), !dbg !393
  call void @llvm.dbg.value(metadata i64 %20, metadata !369, metadata !DIExpression()), !dbg !373
  br label %22, !dbg !394

21:                                               ; preds = %12
  call void @usage(i32 noundef 1) #8, !dbg !395
  unreachable, !dbg !395

22:                                               ; preds = %18, %17
  %.14 = phi i64 [ %20, %18 ], [ %.03, %17 ], !dbg !373
  %.1 = phi i32 [ %.01, %18 ], [ 0, %17 ], !dbg !373
  call void @llvm.dbg.value(metadata i32 %.1, metadata !370, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i64 %.14, metadata !369, metadata !DIExpression()), !dbg !373
  br label %23, !dbg !396

23:                                               ; preds = %22, %11
  %.25 = phi i64 [ %.03, %11 ], [ %.14, %22 ], !dbg !373
  %.2 = phi i32 [ %.01, %11 ], [ %.1, %22 ], !dbg !380
  %.0 = phi i32 [ 3, %11 ], [ 0, %22 ]
  call void @llvm.dbg.value(metadata i32 %.2, metadata !370, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i64 %.25, metadata !369, metadata !DIExpression()), !dbg !373
  switch i32 %.0, label %42 [
    i32 0, label %24
    i32 3, label %25
  ]

24:                                               ; preds = %23
  br label %7, !dbg !378, !llvm.loop !397

25:                                               ; preds = %23
  %26 = load i32, ptr @rpl_optind, align 4, !dbg !398, !tbaa !400
  %27 = icmp ne i32 %0, %26, !dbg !402
  br i1 %27, label %28, label %34, !dbg !403

28:                                               ; preds = %25
  %29 = load i32, ptr @rpl_optind, align 4, !dbg !404, !tbaa !400
  %30 = sext i32 %29 to i64, !dbg !406
  %31 = getelementptr inbounds ptr, ptr %1, i64 %30, !dbg !406
  %32 = load ptr, ptr %31, align 8, !dbg !406, !tbaa !201
  %33 = call ptr @quote(ptr noundef %32), !dbg !407
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.11, ptr noundef %33), !dbg !408
  call void @usage(i32 noundef 1) #8, !dbg !409
  unreachable, !dbg !409

34:                                               ; preds = %25
  %35 = call i64 @num_processors(i32 noundef %.2), !dbg !410
  call void @llvm.dbg.value(metadata i64 %35, metadata !368, metadata !DIExpression()), !dbg !373
  %36 = icmp ult i64 %.25, %35, !dbg !411
  br i1 %36, label %37, label %39, !dbg !413

37:                                               ; preds = %34
  %38 = sub i64 %35, %.25, !dbg !414
  call void @llvm.dbg.value(metadata i64 %38, metadata !368, metadata !DIExpression()), !dbg !373
  br label %40, !dbg !415

39:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 1, metadata !368, metadata !DIExpression()), !dbg !373
  br label %40

40:                                               ; preds = %39, %37
  %.02 = phi i64 [ %38, %37 ], [ 1, %39 ], !dbg !416
  call void @llvm.dbg.value(metadata i64 %.02, metadata !368, metadata !DIExpression()), !dbg !373
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i64 noundef %.02), !dbg !417
  ret i32 0, !dbg !418

42:                                               ; preds = %23
  unreachable
}

declare !dbg !419 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !421 i32 @atexit(ptr noundef) #2

declare !dbg !427 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !431 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !435 i64 @xdectoumax(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !441 ptr @quote(ptr noundef) #2

declare !dbg !445 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !449 i64 @num_processors(i32 noundef) #2

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

!llvm.dbg.cu = !{!44}
!llvm.ident = !{!182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/nproc.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 23)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 128)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 936, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 117)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 48)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 57)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 6)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 1)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "longopts", scope: !44, file: !2, line: 41, type: !172, isLocal: true, isDefinition: true)
!44 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !63, globals: !68, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!45 = !{!46, !53, !59}
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !47, line: 32, baseType: !48, size: 32, elements: !49)
!47 = !DIFile(filename: "../lib/nproc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "NPROC_ALL", value: 0)
!51 = !DIEnumerator(name: "NPROC_CURRENT", value: 1)
!52 = !DIEnumerator(name: "NPROC_CURRENT_OVERRIDABLE", value: 2)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 332, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!58 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 35, baseType: !48, size: 32, elements: !60)
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "ALL_OPTION", value: 128)
!62 = !DIEnumerator(name: "IGNORE_OPTION", value: 129)
!63 = !{!64, !66, !67}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !{!0, !7, !12, !17, !22, !27, !32, !37, !69, !74, !79, !84, !89, !94, !99, !104, !109, !114, !116, !118, !120, !122, !124, !126, !131, !136, !141, !143, !148, !153, !158, !160, !165, !167, !42}
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 14)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 18)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 15)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 17)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 5)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !54, line: 660, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 2)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !54, line: 660, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 16)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !54, line: 661, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 10)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !54, line: 661, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 22)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !54, line: 662, type: !106, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !54, line: 662, type: !81, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !54, line: 663, type: !106, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !54, line: 664, type: !106, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !54, line: 665, type: !106, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !54, line: 678, type: !9, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !54, line: 678, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 40)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !54, line: 683, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !54, line: 689, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 71)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !54, line: 695, type: !91, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !54, line: 696, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 27)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !54, line: 698, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 51)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !54, line: 699, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 12)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !133, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 7)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !91, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 8)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1280, elements: !92)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !175, line: 50, size: 256, elements: !176)
!175 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!176 = !{!177, !178, !179, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 52, baseType: !64, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !174, file: !175, line: 55, baseType: !55, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !174, file: !175, line: 56, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !174, file: !175, line: 57, baseType: !55, size: 32, offset: 192)
!182 = !{!"Homebrew clang version 16.0.4"}
!183 = !{i32 7, !"Dwarf Version", i32 4}
!184 = !{i32 2, !"Debug Info Version", i32 3}
!185 = !{i32 1, !"wchar_size", i32 4}
!186 = !{i32 8, !"PIC Level", i32 2}
!187 = !{i32 7, !"uwtable", i32 2}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 51, type: !190, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !55}
!192 = !{!193}
!193 = !DILocalVariable(name: "status", arg: 1, scope: !189, file: !2, line: 51, type: !55)
!194 = !DILocation(line: 0, scope: !189)
!195 = !DILocation(line: 53, column: 14, scope: !196)
!196 = distinct !DILexicalBlock(scope: !189, file: !2, line: 53, column: 7)
!197 = !DILocation(line: 53, column: 7, scope: !189)
!198 = !DILocation(line: 54, column: 5, scope: !196)
!199 = !DILocation(line: 54, column: 5, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !2, line: 54, column: 5)
!201 = !{!202, !202, i64 0}
!202 = !{!"any pointer", !203, i64 0}
!203 = !{!"omnipotent char", !204, i64 0}
!204 = !{!"Simple C/C++ TBAA"}
!205 = !DILocation(line: 57, column: 45, scope: !206)
!206 = distinct !DILexicalBlock(scope: !196, file: !2, line: 56, column: 5)
!207 = !DILocation(line: 57, column: 7, scope: !206)
!208 = !DILocation(line: 62, column: 5, scope: !206)
!209 = !DILocation(line: 58, column: 7, scope: !206)
!210 = !DILocation(line: 66, column: 5, scope: !206)
!211 = !DILocation(line: 63, column: 7, scope: !206)
!212 = !DILocation(line: 68, column: 39, scope: !206)
!213 = !DILocation(line: 68, column: 7, scope: !206)
!214 = !DILocation(line: 69, column: 42, scope: !206)
!215 = !DILocation(line: 69, column: 7, scope: !206)
!216 = !DILocation(line: 70, column: 7, scope: !206)
!217 = !DILocation(line: 72, column: 3, scope: !189)
!218 = !DISubprogram(name: "fprintf", scope: !219, file: !219, line: 155, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!219 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!220 = !DISubroutineType(types: !221)
!221 = !{!55, !222, !279, null}
!222 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !225, line: 157, baseType: !226)
!225 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !225, line: 126, size: 1216, elements: !227)
!227 = !{!228, !231, !232, !233, !235, !236, !241, !242, !243, !247, !251, !261, !265, !266, !269, !270, !274, !276, !277, !278}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !226, file: !225, line: 127, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !226, file: !225, line: 128, baseType: !55, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !226, file: !225, line: 129, baseType: !55, size: 32, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !226, file: !225, line: 130, baseType: !234, size: 16, offset: 128)
!234 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !226, file: !225, line: 131, baseType: !234, size: 16, offset: 144)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !226, file: !225, line: 132, baseType: !237, size: 128, offset: 192)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !225, line: 92, size: 128, elements: !238)
!238 = !{!239, !240}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !237, file: !225, line: 93, baseType: !229, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !237, file: !225, line: 94, baseType: !55, size: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !226, file: !225, line: 133, baseType: !55, size: 32, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !226, file: !225, line: 136, baseType: !67, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !226, file: !225, line: 137, baseType: !244, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!55, !67}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !226, file: !225, line: 138, baseType: !248, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!55, !67, !66, !55}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !226, file: !225, line: 139, baseType: !252, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !67, !255, !55}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !225, line: 81, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !257, line: 71, baseType: !258)
!257 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !259, line: 48, baseType: !260)
!259 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!260 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !226, file: !225, line: 140, baseType: !262, size: 64, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!55, !67, !64, !55}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !226, file: !225, line: 143, baseType: !237, size: 128, offset: 704)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !226, file: !225, line: 144, baseType: !267, size: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !225, line: 98, flags: DIFlagFwdDecl)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !226, file: !225, line: 145, baseType: !55, size: 32, offset: 896)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !226, file: !225, line: 148, baseType: !271, size: 24, offset: 928)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 24, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 3)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !226, file: !225, line: 149, baseType: !275, size: 8, offset: 952)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 8, elements: !40)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !226, file: !225, line: 152, baseType: !237, size: 128, offset: 960)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !226, file: !225, line: 155, baseType: !55, size: 32, offset: 1088)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !226, file: !225, line: 156, baseType: !255, size: 64, offset: 1152)
!279 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!280 = !{}
!281 = !DISubprogram(name: "printf", scope: !219, file: !219, line: 175, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!282 = !DISubroutineType(types: !283)
!283 = !{!55, !279, null}
!284 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !219, file: !219, line: 157, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!285 = !DISubroutineType(types: !286)
!286 = !{!55, !279, !222}
!287 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !54, file: !54, line: 657, type: !288, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !290)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !64}
!290 = !{!291, !292, !299, !300, !302, !303}
!291 = !DILocalVariable(name: "program", arg: 1, scope: !287, file: !54, line: 657, type: !64)
!292 = !DILocalVariable(name: "infomap", scope: !287, file: !54, line: 659, type: !293)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 896, elements: !163)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !287, file: !54, line: 659, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !295, file: !54, line: 659, baseType: !64, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !295, file: !54, line: 659, baseType: !64, size: 64, offset: 64)
!299 = !DILocalVariable(name: "node", scope: !287, file: !54, line: 669, type: !64)
!300 = !DILocalVariable(name: "map_prog", scope: !287, file: !54, line: 670, type: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!302 = !DILocalVariable(name: "lc_messages", scope: !287, file: !54, line: 682, type: !64)
!303 = !DILocalVariable(name: "url_program", scope: !287, file: !54, line: 695, type: !64)
!304 = !DILocation(line: 0, scope: !287)
!305 = !DILocation(line: 659, column: 3, scope: !287)
!306 = !DILocation(line: 659, column: 67, scope: !287)
!307 = !DILocation(line: 670, column: 36, scope: !287)
!308 = !DILocation(line: 672, column: 3, scope: !287)
!309 = !DILocation(line: 672, column: 20, scope: !287)
!310 = !{!311, !202, i64 0}
!311 = !{!"infomap", !202, i64 0, !202, i64 8}
!312 = !DILocation(line: 672, column: 10, scope: !287)
!313 = !DILocation(line: 672, column: 28, scope: !287)
!314 = !DILocation(line: 672, column: 33, scope: !287)
!315 = !DILocation(line: 672, column: 31, scope: !287)
!316 = !DILocation(line: 673, column: 13, scope: !287)
!317 = distinct !{!317, !308, !316, !318, !319}
!318 = !{!"llvm.loop.mustprogress"}
!319 = !{!"llvm.loop.unroll.disable"}
!320 = !DILocation(line: 675, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !287, file: !54, line: 675, column: 7)
!322 = !{!311, !202, i64 8}
!323 = !DILocation(line: 675, column: 7, scope: !321)
!324 = !DILocation(line: 675, column: 7, scope: !287)
!325 = !DILocation(line: 676, column: 22, scope: !321)
!326 = !DILocation(line: 676, column: 5, scope: !321)
!327 = !DILocation(line: 678, column: 3, scope: !287)
!328 = !DILocation(line: 682, column: 29, scope: !287)
!329 = !DILocation(line: 683, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !287, file: !54, line: 683, column: 7)
!331 = !DILocation(line: 683, column: 19, scope: !330)
!332 = !DILocation(line: 683, column: 22, scope: !330)
!333 = !DILocation(line: 683, column: 7, scope: !287)
!334 = !DILocation(line: 690, column: 61, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !54, line: 684, column: 5)
!336 = !DILocation(line: 689, column: 7, scope: !335)
!337 = !DILocation(line: 691, column: 5, scope: !335)
!338 = !DILocation(line: 695, column: 29, scope: !287)
!339 = !DILocation(line: 696, column: 3, scope: !287)
!340 = !DILocation(line: 699, column: 22, scope: !287)
!341 = !DILocation(line: 699, column: 17, scope: !287)
!342 = !DILocation(line: 698, column: 3, scope: !287)
!343 = !DILocation(line: 700, column: 1, scope: !287)
!344 = !DISubprogram(name: "exit", scope: !345, file: !345, line: 145, type: !190, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !280)
!345 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!346 = !DISubprogram(name: "strcmp", scope: !347, file: !347, line: 77, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!347 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!348 = !DISubroutineType(types: !349)
!349 = !{!55, !64, !64}
!350 = !DISubprogram(name: "setlocale", scope: !351, file: !351, line: 53, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!351 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!352 = !DISubroutineType(types: !353)
!353 = !{!66, !55, !64}
!354 = !DISubprogram(name: "strncmp", scope: !347, file: !347, line: 84, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!355 = !DISubroutineType(types: !356)
!356 = !{!55, !64, !64, !357}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !358, line: 31, baseType: !359)
!358 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !259, line: 94, baseType: !360)
!360 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!361 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 76, type: !362, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !365)
!362 = !DISubroutineType(types: !363)
!363 = !{!55, !55, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!365 = !{!366, !367, !368, !369, !370, !371}
!366 = !DILocalVariable(name: "argc", arg: 1, scope: !361, file: !2, line: 76, type: !55)
!367 = !DILocalVariable(name: "argv", arg: 2, scope: !361, file: !2, line: 76, type: !364)
!368 = !DILocalVariable(name: "nproc", scope: !361, file: !2, line: 78, type: !360)
!369 = !DILocalVariable(name: "ignore", scope: !361, file: !2, line: 78, type: !360)
!370 = !DILocalVariable(name: "mode", scope: !361, file: !2, line: 87, type: !46)
!371 = !DILocalVariable(name: "c", scope: !372, file: !2, line: 91, type: !55)
!372 = distinct !DILexicalBlock(scope: !361, file: !2, line: 90, column: 5)
!373 = !DILocation(line: 0, scope: !361)
!374 = !DILocation(line: 80, column: 21, scope: !361)
!375 = !DILocation(line: 80, column: 3, scope: !361)
!376 = !DILocation(line: 81, column: 3, scope: !361)
!377 = !DILocation(line: 85, column: 3, scope: !361)
!378 = !DILocation(line: 89, column: 3, scope: !361)
!379 = !DILocation(line: 78, column: 24, scope: !361)
!380 = !DILocation(line: 87, column: 20, scope: !361)
!381 = !DILocation(line: 91, column: 15, scope: !372)
!382 = !DILocation(line: 0, scope: !372)
!383 = !DILocation(line: 92, column: 13, scope: !384)
!384 = distinct !DILexicalBlock(scope: !372, file: !2, line: 92, column: 11)
!385 = !DILocation(line: 92, column: 11, scope: !372)
!386 = !DILocation(line: 93, column: 9, scope: !384)
!387 = !DILocation(line: 94, column: 7, scope: !372)
!388 = !DILocation(line: 96, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !372, file: !2, line: 95, column: 9)
!390 = !DILocation(line: 98, column: 9, scope: !389)
!391 = !DILocation(line: 102, column: 11, scope: !389)
!392 = !DILocation(line: 105, column: 32, scope: !389)
!393 = !DILocation(line: 105, column: 20, scope: !389)
!394 = !DILocation(line: 106, column: 11, scope: !389)
!395 = !DILocation(line: 109, column: 11, scope: !389)
!396 = !DILocation(line: 111, column: 5, scope: !361)
!397 = distinct !{!397, !378, !396, !319}
!398 = !DILocation(line: 113, column: 15, scope: !399)
!399 = distinct !DILexicalBlock(scope: !361, file: !2, line: 113, column: 7)
!400 = !{!401, !401, i64 0}
!401 = !{!"int", !203, i64 0}
!402 = !DILocation(line: 113, column: 12, scope: !399)
!403 = !DILocation(line: 113, column: 7, scope: !361)
!404 = !DILocation(line: 115, column: 55, scope: !405)
!405 = distinct !DILexicalBlock(scope: !399, file: !2, line: 114, column: 5)
!406 = !DILocation(line: 115, column: 50, scope: !405)
!407 = !DILocation(line: 115, column: 43, scope: !405)
!408 = !DILocation(line: 115, column: 7, scope: !405)
!409 = !DILocation(line: 116, column: 7, scope: !405)
!410 = !DILocation(line: 119, column: 11, scope: !361)
!411 = !DILocation(line: 121, column: 14, scope: !412)
!412 = distinct !DILexicalBlock(scope: !361, file: !2, line: 121, column: 7)
!413 = !DILocation(line: 121, column: 7, scope: !361)
!414 = !DILocation(line: 122, column: 11, scope: !412)
!415 = !DILocation(line: 122, column: 5, scope: !412)
!416 = !DILocation(line: 0, scope: !412)
!417 = !DILocation(line: 126, column: 3, scope: !361)
!418 = !DILocation(line: 129, column: 1, scope: !361)
!419 = !DISubprogram(name: "set_program_name", scope: !420, file: !420, line: 37, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!420 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!421 = !DISubprogram(name: "atexit", scope: !345, file: !345, line: 133, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!422 = !DISubroutineType(types: !423)
!423 = !{!55, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null}
!427 = !DISubprogram(name: "rpl_getopt_long", scope: !175, file: !175, line: 66, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!428 = !DISubroutineType(types: !429)
!429 = !{!55, !55, !364, !64, !430, !180}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!431 = !DISubprogram(name: "version_etc", scope: !432, file: !432, line: 65, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!432 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!433 = !DISubroutineType(types: !434)
!434 = !{null, !223, !64, !64, !64, null}
!435 = !DISubprogram(name: "xdectoumax", scope: !436, file: !436, line: 33, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!436 = !DIFile(filename: "../lib/xdectoint.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!437 = !DISubroutineType(types: !438)
!438 = !{!439, !64, !439, !439, !64, !64, !55}
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !440, line: 32, baseType: !360)
!440 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!441 = !DISubprogram(name: "quote", scope: !442, file: !442, line: 44, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!442 = !DIFile(filename: "../lib/quote.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!443 = !DISubroutineType(types: !444)
!444 = !{!64, !64}
!445 = !DISubprogram(name: "error", scope: !446, file: !446, line: 395, type: !447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!446 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!447 = !DISubroutineType(types: !448)
!448 = !{null, !55, !55, !64, null}
!449 = !DISubprogram(name: "num_processors", scope: !47, file: !47, line: 42, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!450 = !DISubroutineType(types: !451)
!451 = !{!360, !46}
