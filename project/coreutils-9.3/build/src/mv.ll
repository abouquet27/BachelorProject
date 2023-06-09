; ModuleID = 'coreutils-9.3/build/src/mv.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct.dev_ino = type { i64, i32 }
%struct.cp_options = type { i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.rm_options = type { i8, i32, i8, i8, i8, ptr, i8, i8, i8, i8 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [127 x i8] c"Usage: %s [OPTION]... [-T] SOURCE DEST\0A  or:  %s [OPTION]... SOURCE... DIRECTORY\0A  or:  %s [OPTION]... -t DIRECTORY SOURCE...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [56 x i8] c"Rename SOURCE to DEST, or move SOURCE(s) to DIRECTORY.\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [157 x i8] c"      --backup[=CONTROL]       make a backup of each existing destination file\0A  -b                           like --backup but does not accept an argument\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [74 x i8] c"      --debug                  explain how a file is copied.  Implies -v\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [262 x i8] c"  -f, --force                  do not prompt before overwriting\0A  -i, --interactive            prompt before overwrite\0A  -n, --no-clobber             do not overwrite an existing file\0AIf you specify more than one of -i, -f, -n, only the final one takes effect.\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [245 x i8] c"      --no-copy                do not copy if renaming fails\0A      --strip-trailing-slashes  remove any trailing slashes from each SOURCE\0A                                 argument\0A  -S, --suffix=SUFFIX          override the usual backup suffix\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [137 x i8] c"  -t, --target-directory=DIRECTORY  move all SOURCE arguments into DIRECTORY\0A  -T, --no-target-directory    treat DEST as a normal file\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [214 x i8] c"  --update[=UPDATE]            control which existing files are updated;\0A                                 UPDATE={all,none,older(default)}.  See below\0A  -u                           equivalent to --update[=older]\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [188 x i8] c"  -v, --verbose                explain what is being done\0A  -Z, --context                set SELinux security context of destination\0A                                 file to default type\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [3 x i8] c"mv\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !67
@.str.14 = private unnamed_addr constant [13 x i8] c"bfint:uvS:TZ\00", align 1, !dbg !72
@long_options = internal constant [16 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.51, i32 2, ptr null, i32 98 }, %struct.rpl_option { ptr @.str.52, i32 0, ptr null, i32 90 }, %struct.rpl_option { ptr @.str.53, i32 0, ptr null, i32 128 }, %struct.rpl_option { ptr @.str.54, i32 0, ptr null, i32 102 }, %struct.rpl_option { ptr @.str.55, i32 0, ptr null, i32 105 }, %struct.rpl_option { ptr @.str.56, i32 0, ptr null, i32 110 }, %struct.rpl_option { ptr @.str.57, i32 0, ptr null, i32 129 }, %struct.rpl_option { ptr @.str.58, i32 0, ptr null, i32 84 }, %struct.rpl_option { ptr @.str.59, i32 0, ptr null, i32 130 }, %struct.rpl_option { ptr @.str.60, i32 1, ptr null, i32 83 }, %struct.rpl_option { ptr @.str.61, i32 1, ptr null, i32 116 }, %struct.rpl_option { ptr @.str.62, i32 2, ptr null, i32 117 }, %struct.rpl_option { ptr @.str.63, i32 0, ptr null, i32 118 }, %struct.rpl_option { ptr @.str.64, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.65, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !77
@rpl_optarg = external global ptr, align 8
@.str.15 = private unnamed_addr constant [38 x i8] c"multiple target directories specified\00", align 1, !dbg !165
@update_type = internal constant [3 x i32] [i32 0, i32 2, i32 1], align 4, !dbg !357
@.str.16 = private unnamed_addr constant [9 x i8] c"--update\00", align 1, !dbg !170
@update_type_string = internal constant [4 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null], align 16, !dbg !367
@argmatch_die = external global ptr, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"warning: ignoring --context\00", align 1, !dbg !175
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !180
@Version = external global ptr, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1, !dbg !185
@.str.20 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !190
@.str.21 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !195
@rpl_optind = external global i32, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1, !dbg !197
@.str.23 = private unnamed_addr constant [42 x i8] c"missing destination file operand after %s\00", align 1, !dbg !202
@.str.24 = private unnamed_addr constant [70 x i8] c"cannot combine --target-directory (-t) and --no-target-directory (-T)\00", align 1, !dbg !207
@.str.25 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !212
@.str.26 = private unnamed_addr constant [20 x i8] c"target directory %s\00", align 1, !dbg !217
@.str.27 = private unnamed_addr constant [10 x i8] c"target %s\00", align 1, !dbg !222
@.str.28 = private unnamed_addr constant [57 x i8] c"options --backup and --no-clobber are mutually exclusive\00", align 1, !dbg !227
@.str.29 = private unnamed_addr constant [12 x i8] c"backup type\00", align 1, !dbg !229
@.str.30 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !231
@.str.31 = private unnamed_addr constant [508 x i8] c"\0AUPDATE controls which existing files in the destination are replaced.\0A'all' is the default operation when an --update option is not specified,\0Aand results in all existing files in the destination being replaced.\0A'none' is similar to the --no-clobber option, in that no files in the\0Adestination are replaced, but also skipped files do not induce a failure.\0A'older' is the default operation when --update is specified, and results\0Ain files being replaced if they're older than the corresponding source file.\0A\00", align 1, !dbg !236
@.str.32 = private unnamed_addr constant [221 x i8] c"\0AThe backup suffix is '~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.\0AThe version control method may be selected via the --backup option or through\0Athe VERSION_CONTROL environment variable.  Here are the values:\0A\0A\00", align 1, !dbg !241
@.str.33 = private unnamed_addr constant [222 x i8] c"  none, off       never make backups (even if --backup is given)\0A  numbered, t     make numbered backups\0A  existing, nil   numbered if numbered backups exist, simple otherwise\0A  simple, never   always make simple backups\0A\00", align 1, !dbg !246
@.str.34 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !251
@.str.35 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !256
@.str.36 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !258
@.str.37 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !260
@.str.38 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !265
@.str.39 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !267
@.str.40 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !272
@.str.41 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !274
@.str.42 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !276
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.34, ptr @.str.35 }, %struct.infomap { ptr @.str.36, ptr @.str.37 }, %struct.infomap { ptr @.str.38, ptr @.str.39 }, %struct.infomap { ptr @.str.40, ptr @.str.39 }, %struct.infomap { ptr @.str.41, ptr @.str.39 }, %struct.infomap { ptr @.str.42, ptr @.str.39 }, %struct.infomap zeroinitializer], align 16
@.str.43 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !278
@.str.44 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !283
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !288
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !293
@.str.47 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !298
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !303
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !308
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !313
@.str.51 = private unnamed_addr constant [7 x i8] c"backup\00", align 1, !dbg !315
@.str.52 = private unnamed_addr constant [8 x i8] c"context\00", align 1, !dbg !320
@.str.53 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !325
@.str.54 = private unnamed_addr constant [6 x i8] c"force\00", align 1, !dbg !330
@.str.55 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1, !dbg !332
@.str.56 = private unnamed_addr constant [11 x i8] c"no-clobber\00", align 1, !dbg !334
@.str.57 = private unnamed_addr constant [8 x i8] c"no-copy\00", align 1, !dbg !339
@.str.58 = private unnamed_addr constant [20 x i8] c"no-target-directory\00", align 1, !dbg !341
@.str.59 = private unnamed_addr constant [23 x i8] c"strip-trailing-slashes\00", align 1, !dbg !343
@.str.60 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1, !dbg !345
@.str.61 = private unnamed_addr constant [17 x i8] c"target-directory\00", align 1, !dbg !347
@.str.62 = private unnamed_addr constant [7 x i8] c"update\00", align 1, !dbg !349
@.str.63 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !351
@.str.64 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !353
@.str.65 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !355
@.str.66 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !361
@.str.67 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !363
@.str.68 = private unnamed_addr constant [6 x i8] c"older\00", align 1, !dbg !365
@__func__.do_move = private unnamed_addr constant [8 x i8] c"do_move\00", align 1, !dbg !371
@.str.69 = private unnamed_addr constant [5 x i8] c"mv.c\00", align 1, !dbg !374
@.str.70 = private unnamed_addr constant [22 x i8] c"VALID_STATUS (status)\00", align 1, !dbg !376
@rm_option_init.dev_ino_buf = internal global %struct.dev_ino zeroinitializer, align 8, !dbg !378
@.str.71 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1, !dbg !417
@.str.72 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !422

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !441 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !445, metadata !DIExpression()), !dbg !446
  %2 = icmp ne i32 %0, 0, !dbg !447
  br i1 %2, label %3, label %9, !dbg !449

3:                                                ; preds = %1
  br label %4, !dbg !450

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !451, !tbaa !453
  %6 = load ptr, ptr @program_name, align 8, !dbg !451, !tbaa !453
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !451
  br label %8, !dbg !451

8:                                                ; preds = %4
  br label %34, !dbg !451

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !457, !tbaa !453
  %11 = load ptr, ptr @program_name, align 8, !dbg !459, !tbaa !453
  %12 = load ptr, ptr @program_name, align 8, !dbg !460, !tbaa !453
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10, ptr noundef %11, ptr noundef %12), !dbg !461
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !462, !tbaa !453
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %14), !dbg !463
  call void @emit_mandatory_arg_note(), !dbg !464
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !465, !tbaa !453
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %16), !dbg !466
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !467, !tbaa !453
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %18), !dbg !468
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !469, !tbaa !453
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %20), !dbg !470
  %22 = load ptr, ptr @__stdoutp, align 8, !dbg !471, !tbaa !453
  %23 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %22), !dbg !472
  %24 = load ptr, ptr @__stdoutp, align 8, !dbg !473, !tbaa !453
  %25 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %24), !dbg !474
  %26 = load ptr, ptr @__stdoutp, align 8, !dbg !475, !tbaa !453
  %27 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %26), !dbg !476
  %28 = load ptr, ptr @__stdoutp, align 8, !dbg !477, !tbaa !453
  %29 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %28), !dbg !478
  %30 = load ptr, ptr @__stdoutp, align 8, !dbg !479, !tbaa !453
  %31 = call i32 @"\01_fputs"(ptr noundef @.str.10, ptr noundef %30), !dbg !480
  %32 = load ptr, ptr @__stdoutp, align 8, !dbg !481, !tbaa !453
  %33 = call i32 @"\01_fputs"(ptr noundef @.str.11, ptr noundef %32), !dbg !482
  call void @emit_update_parameters_note(), !dbg !483
  call void @emit_backup_suffix_note(), !dbg !484
  call void @emit_ancillary_info(ptr noundef @.str.12), !dbg !485
  br label %34

34:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #12, !dbg !486
  unreachable, !dbg !486
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !487 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !546 i32 @printf(ptr noundef, ...) #2

declare !dbg !549 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !552 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !555, !tbaa !453
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.30, ptr noundef %1), !dbg !556
  ret void, !dbg !557
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_update_parameters_note() #3 !dbg !558 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !559, !tbaa !453
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.31, ptr noundef %1), !dbg !560
  ret void, !dbg !561
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_backup_suffix_note() #3 !dbg !562 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !563, !tbaa !453
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.32, ptr noundef %1), !dbg !564
  %3 = load ptr, ptr @__stdoutp, align 8, !dbg !565, !tbaa !453
  %4 = call i32 @"\01_fputs"(ptr noundef @.str.33, ptr noundef %3), !dbg !566
  ret void, !dbg !567
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !568 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !572, metadata !DIExpression()), !dbg !585
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #13, !dbg !586
  call void @llvm.dbg.declare(metadata ptr %2, metadata !573, metadata !DIExpression()), !dbg !587
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !587
  call void @llvm.dbg.value(metadata ptr %0, metadata !580, metadata !DIExpression()), !dbg !585
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !588
  call void @llvm.dbg.value(metadata ptr %3, metadata !581, metadata !DIExpression()), !dbg !585
  br label %4, !dbg !589

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !585
  call void @llvm.dbg.value(metadata ptr %.0, metadata !581, metadata !DIExpression()), !dbg !585
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !590
  %6 = load ptr, ptr %5, align 8, !dbg !590, !tbaa !591
  %7 = icmp ne ptr %6, null, !dbg !593
  br i1 %7, label %8, label %14, !dbg !594

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !595
  %10 = load ptr, ptr %9, align 8, !dbg !595, !tbaa !591
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !595
  %12 = icmp eq i32 %11, 0, !dbg !595
  %13 = xor i1 %12, true, !dbg !596
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !585
  br i1 %15, label %16, label %18, !dbg !589

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !597
  call void @llvm.dbg.value(metadata ptr %17, metadata !581, metadata !DIExpression()), !dbg !585
  br label %4, !dbg !589, !llvm.loop !598

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !601
  %20 = load ptr, ptr %19, align 8, !dbg !601, !tbaa !603
  %21 = icmp ne ptr %20, null, !dbg !604
  br i1 %21, label %22, label %25, !dbg !605

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !606
  %24 = load ptr, ptr %23, align 8, !dbg !606, !tbaa !603
  call void @llvm.dbg.value(metadata ptr %24, metadata !580, metadata !DIExpression()), !dbg !585
  br label %25, !dbg !607

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !585
  call void @llvm.dbg.value(metadata ptr %.01, metadata !580, metadata !DIExpression()), !dbg !585
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.43, ptr noundef @.str.18, ptr noundef @.str.44), !dbg !608
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !609
  call void @llvm.dbg.value(metadata ptr %27, metadata !583, metadata !DIExpression()), !dbg !585
  %28 = icmp ne ptr %27, null, !dbg !610
  br i1 %28, label %29, label %35, !dbg !612

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.45, i64 noundef 3), !dbg !613
  %31 = icmp ne i32 %30, 0, !dbg !613
  br i1 %31, label %32, label %35, !dbg !614

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !615, !tbaa !453
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.46, ptr noundef %33), !dbg !617
  br label %35, !dbg !618

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.34), !dbg !619
  %37 = icmp eq i32 %36, 0, !dbg !619
  br i1 %37, label %38, label %39, !dbg !619

38:                                               ; preds = %35
  br label %40, !dbg !619

39:                                               ; preds = %35
  br label %40, !dbg !619

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.47, %38 ], [ %0, %39 ], !dbg !619
  call void @llvm.dbg.value(metadata ptr %41, metadata !584, metadata !DIExpression()), !dbg !585
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.48, ptr noundef @.str.44, ptr noundef %41), !dbg !620
  %43 = icmp eq ptr %.01, %0, !dbg !621
  %44 = zext i1 %43 to i64, !dbg !622
  %45 = select i1 %43, ptr @.str.50, ptr @.str.13, !dbg !622
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.49, ptr noundef %.01, ptr noundef %45), !dbg !623
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #13, !dbg !624
  ret void, !dbg !624
}

; Function Attrs: noreturn
declare !dbg !625 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !627 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !631 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !635 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !642 {
  %3 = alloca %struct.cp_options, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !647, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %1, metadata !648, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 0, metadata !651, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr null, metadata !652, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr null, metadata !653, metadata !DIExpression()), !dbg !793
  call void @llvm.lifetime.start.p0(i64 88, ptr %3) #13, !dbg !794
  call void @llvm.dbg.declare(metadata ptr %3, metadata !654, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 0, metadata !710, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr null, metadata !711, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 0, metadata !712, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 0, metadata !715, metadata !DIExpression()), !dbg !793
  %6 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !796
  %7 = load ptr, ptr %6, align 8, !dbg !796, !tbaa !453
  call void @set_program_name(ptr noundef %7), !dbg !797
  %8 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.13), !dbg !798
  %9 = call i32 @atexit(ptr noundef @close_stdin), !dbg !799
  call void @cp_option_init(ptr noundef %3), !dbg !800
  %10 = call i32 @priv_set_remove_linkdir(), !dbg !801
  br label %11, !dbg !802

11:                                               ; preds = %96, %2
  %.022 = phi i8 [ 0, %2 ], [ %.123, %96 ], !dbg !803
  %.018 = phi ptr [ null, %2 ], [ %.119, %96 ], !dbg !804
  %.016 = phi i8 [ 0, %2 ], [ %.117, %96 ], !dbg !805
  %.013 = phi ptr [ null, %2 ], [ %.215, %96 ], !dbg !806
  %.011 = phi ptr [ null, %2 ], [ %.112, %96 ], !dbg !807
  %.09 = phi i8 [ 0, %2 ], [ %.110, %96 ], !dbg !808
  call void @llvm.dbg.value(metadata i8 %.09, metadata !651, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %.011, metadata !652, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %.013, metadata !653, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %.016, metadata !710, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %.018, metadata !711, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %.022, metadata !712, metadata !DIExpression()), !dbg !793
  %12 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.14, ptr noundef @long_options, ptr noundef null), !dbg !809
  call void @llvm.dbg.value(metadata i32 %12, metadata !649, metadata !DIExpression()), !dbg !793
  %13 = icmp ne i32 %12, -1, !dbg !810
  br i1 %13, label %14, label %97, !dbg !802

14:                                               ; preds = %11
  switch i32 %12, label %95 [
    i32 98, label %15
    i32 102, label %21
    i32 105, label %23
    i32 110, label %25
    i32 128, label %27
    i32 129, label %30
    i32 130, label %32
    i32 116, label %33
    i32 84, label %38
    i32 117, label %39
    i32 118, label %73
    i32 83, label %75
    i32 90, label %77
    i32 -130, label %91
    i32 -131, label %92
  ], !dbg !811

15:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !651, metadata !DIExpression()), !dbg !793
  %16 = load ptr, ptr @rpl_optarg, align 8, !dbg !812, !tbaa !453
  %17 = icmp ne ptr %16, null, !dbg !812
  br i1 %17, label %18, label %20, !dbg !814

18:                                               ; preds = %15
  %19 = load ptr, ptr @rpl_optarg, align 8, !dbg !815, !tbaa !453
  call void @llvm.dbg.value(metadata ptr %19, metadata !653, metadata !DIExpression()), !dbg !793
  br label %20, !dbg !816

20:                                               ; preds = %18, %15
  %.114 = phi ptr [ %19, %18 ], [ %.013, %15 ], !dbg !793
  call void @llvm.dbg.value(metadata ptr %.114, metadata !653, metadata !DIExpression()), !dbg !793
  br label %96, !dbg !817

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 2, !dbg !818
  store i32 1, ptr %22, align 8, !dbg !819, !tbaa !820
  br label %96, !dbg !825

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 2, !dbg !826
  store i32 4, ptr %24, align 8, !dbg !827, !tbaa !820
  br label %96, !dbg !828

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 2, !dbg !829
  store i32 2, ptr %26, align 8, !dbg !830, !tbaa !820
  br label %96, !dbg !831

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 32, !dbg !832
  store i8 1, ptr %28, align 4, !dbg !833, !tbaa !834
  %29 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 33, !dbg !835
  store i8 1, ptr %29, align 1, !dbg !836, !tbaa !837
  br label %96, !dbg !838

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 10, !dbg !839
  store i8 1, ptr %31, align 1, !dbg !840, !tbaa !841
  br label %96, !dbg !842

32:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !710, metadata !DIExpression()), !dbg !793
  br label %96, !dbg !843

33:                                               ; preds = %14
  %34 = icmp ne ptr %.018, null, !dbg !844
  br i1 %34, label %35, label %36, !dbg !846

35:                                               ; preds = %33
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.15), !dbg !847
  unreachable, !dbg !847

36:                                               ; preds = %33
  %37 = load ptr, ptr @rpl_optarg, align 8, !dbg !848, !tbaa !453
  call void @llvm.dbg.value(metadata ptr %37, metadata !711, metadata !DIExpression()), !dbg !793
  br label %96, !dbg !849

38:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !712, metadata !DIExpression()), !dbg !793
  br label %96, !dbg !850

39:                                               ; preds = %14
  %40 = load ptr, ptr @rpl_optarg, align 8, !dbg !851, !tbaa !453
  %41 = icmp eq ptr %40, null, !dbg !852
  br i1 %41, label %42, label %44, !dbg !853

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 31, !dbg !854
  store i8 1, ptr %43, align 1, !dbg !855, !tbaa !856
  br label %72, !dbg !857

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 2, !dbg !858
  %46 = load i32, ptr %45, align 8, !dbg !858, !tbaa !820
  %47 = icmp ne i32 %46, 2, !dbg !859
  br i1 %47, label %48, label %71, !dbg !860

48:                                               ; preds = %44
  %49 = load ptr, ptr @rpl_optarg, align 8, !dbg !861, !tbaa !453
  %50 = load ptr, ptr @argmatch_die, align 8, !dbg !861, !tbaa !453
  %51 = call i64 @__xargmatch_internal(ptr noundef @.str.16, ptr noundef %49, ptr noundef @update_type_string, ptr noundef @update_type, i64 noundef 4, ptr noundef %50, i1 noundef zeroext true), !dbg !861
  %52 = getelementptr inbounds [3 x i32], ptr @update_type, i64 0, i64 %51, !dbg !861
  %53 = load i32, ptr %52, align 4, !dbg !861, !tbaa !862
  call void @llvm.dbg.value(metadata i32 %53, metadata !716, metadata !DIExpression()), !dbg !863
  %54 = icmp eq i32 %53, 0, !dbg !864
  br i1 %54, label %55, label %58, !dbg !866

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 31, !dbg !867
  store i8 0, ptr %56, align 1, !dbg !869, !tbaa !856
  %57 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 2, !dbg !870
  store i32 5, ptr %57, align 8, !dbg !871, !tbaa !820
  br label %70, !dbg !872

58:                                               ; preds = %48
  %59 = icmp eq i32 %53, 2, !dbg !873
  br i1 %59, label %60, label %63, !dbg !875

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 31, !dbg !876
  store i8 0, ptr %61, align 1, !dbg !878, !tbaa !856
  %62 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 2, !dbg !879
  store i32 3, ptr %62, align 8, !dbg !880, !tbaa !820
  br label %69, !dbg !881

63:                                               ; preds = %58
  %64 = icmp eq i32 %53, 1, !dbg !882
  br i1 %64, label %65, label %68, !dbg !884

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 31, !dbg !885
  store i8 1, ptr %66, align 1, !dbg !887, !tbaa !856
  %67 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 2, !dbg !888
  store i32 5, ptr %67, align 8, !dbg !889, !tbaa !820
  br label %68, !dbg !890

68:                                               ; preds = %65, %63
  br label %69

69:                                               ; preds = %68, %60
  br label %70

70:                                               ; preds = %69, %55
  br label %71, !dbg !891

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %42
  br label %96, !dbg !892

73:                                               ; preds = %14
  %74 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 32, !dbg !893
  store i8 1, ptr %74, align 4, !dbg !894, !tbaa !834
  br label %96, !dbg !895

75:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !651, metadata !DIExpression()), !dbg !793
  %76 = load ptr, ptr @rpl_optarg, align 8, !dbg !896, !tbaa !453
  call void @llvm.dbg.value(metadata ptr %76, metadata !652, metadata !DIExpression()), !dbg !793
  br label %96, !dbg !897

77:                                               ; preds = %14
  %78 = trunc i8 0 to i1, !dbg !898
  br i1 %78, label %79, label %90, !dbg !900

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 23, !dbg !901
  store i8 0, ptr %80, align 1, !dbg !903, !tbaa !904
  %81 = call ptr @selabel_open(i32 noundef 0, ptr noundef null, i32 noundef 0), !dbg !905
  %82 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 19, !dbg !906
  store ptr %81, ptr %82, align 8, !dbg !907, !tbaa !908
  %83 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 19, !dbg !909
  %84 = load ptr, ptr %83, align 8, !dbg !909, !tbaa !908
  %85 = icmp ne ptr %84, null, !dbg !911
  br i1 %85, label %89, label %86, !dbg !912

86:                                               ; preds = %79
  %87 = call ptr @__error(), !dbg !913
  %88 = load i32, ptr %87, align 4, !dbg !913, !tbaa !914
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %88, ptr noundef @.str.17), !dbg !915
  br label %89, !dbg !915

89:                                               ; preds = %86, %79
  br label %90, !dbg !916

90:                                               ; preds = %89, %77
  br label %96, !dbg !917

91:                                               ; preds = %14
  call void @usage(i32 noundef 0) #12, !dbg !918
  unreachable, !dbg !918

92:                                               ; preds = %14
  %93 = load ptr, ptr @__stdoutp, align 8, !dbg !919, !tbaa !453
  %94 = load ptr, ptr @Version, align 8, !dbg !919, !tbaa !453
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %93, ptr noundef @.str.12, ptr noundef @.str.18, ptr noundef %94, ptr noundef @.str.19, ptr noundef @.str.20, ptr noundef @.str.21, ptr noundef null), !dbg !919
  call void @exit(i32 noundef 0) #12, !dbg !919
  unreachable, !dbg !919

95:                                               ; preds = %14
  call void @usage(i32 noundef 1) #12, !dbg !920
  unreachable, !dbg !920

96:                                               ; preds = %90, %75, %73, %72, %38, %36, %32, %30, %27, %25, %23, %21, %20
  %.123 = phi i8 [ %.022, %90 ], [ %.022, %75 ], [ %.022, %73 ], [ %.022, %72 ], [ 1, %38 ], [ %.022, %36 ], [ %.022, %32 ], [ %.022, %30 ], [ %.022, %27 ], [ %.022, %25 ], [ %.022, %23 ], [ %.022, %21 ], [ %.022, %20 ], !dbg !793
  %.119 = phi ptr [ %.018, %90 ], [ %.018, %75 ], [ %.018, %73 ], [ %.018, %72 ], [ %.018, %38 ], [ %37, %36 ], [ %.018, %32 ], [ %.018, %30 ], [ %.018, %27 ], [ %.018, %25 ], [ %.018, %23 ], [ %.018, %21 ], [ %.018, %20 ], !dbg !793
  %.117 = phi i8 [ %.016, %90 ], [ %.016, %75 ], [ %.016, %73 ], [ %.016, %72 ], [ %.016, %38 ], [ %.016, %36 ], [ 1, %32 ], [ %.016, %30 ], [ %.016, %27 ], [ %.016, %25 ], [ %.016, %23 ], [ %.016, %21 ], [ %.016, %20 ], !dbg !793
  %.215 = phi ptr [ %.013, %90 ], [ %.013, %75 ], [ %.013, %73 ], [ %.013, %72 ], [ %.013, %38 ], [ %.013, %36 ], [ %.013, %32 ], [ %.013, %30 ], [ %.013, %27 ], [ %.013, %25 ], [ %.013, %23 ], [ %.013, %21 ], [ %.114, %20 ], !dbg !793
  %.112 = phi ptr [ %.011, %90 ], [ %76, %75 ], [ %.011, %73 ], [ %.011, %72 ], [ %.011, %38 ], [ %.011, %36 ], [ %.011, %32 ], [ %.011, %30 ], [ %.011, %27 ], [ %.011, %25 ], [ %.011, %23 ], [ %.011, %21 ], [ %.011, %20 ], !dbg !793
  %.110 = phi i8 [ %.09, %90 ], [ 1, %75 ], [ %.09, %73 ], [ %.09, %72 ], [ %.09, %38 ], [ %.09, %36 ], [ %.09, %32 ], [ %.09, %30 ], [ %.09, %27 ], [ %.09, %25 ], [ %.09, %23 ], [ %.09, %21 ], [ 1, %20 ], !dbg !793
  call void @llvm.dbg.value(metadata i8 %.110, metadata !651, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %.112, metadata !652, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %.215, metadata !653, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %.117, metadata !710, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %.119, metadata !711, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %.123, metadata !712, metadata !DIExpression()), !dbg !793
  br label %11, !dbg !802, !llvm.loop !921

97:                                               ; preds = %11
  %98 = load i32, ptr @rpl_optind, align 4, !dbg !923, !tbaa !914
  %99 = sub nsw i32 %0, %98, !dbg !924
  call void @llvm.dbg.value(metadata i32 %99, metadata !713, metadata !DIExpression()), !dbg !793
  %100 = load i32, ptr @rpl_optind, align 4, !dbg !925, !tbaa !914
  %101 = sext i32 %100 to i64, !dbg !926
  %102 = getelementptr inbounds ptr, ptr %1, i64 %101, !dbg !926
  call void @llvm.dbg.value(metadata ptr %102, metadata !714, metadata !DIExpression()), !dbg !793
  %103 = icmp ne ptr %.018, null, !dbg !927
  %104 = xor i1 %103, true, !dbg !927
  %105 = zext i1 %104 to i32, !dbg !927
  %106 = icmp sle i32 %99, %105, !dbg !929
  br i1 %106, label %107, label %115, !dbg !930

107:                                              ; preds = %97
  %108 = icmp sle i32 %99, 0, !dbg !931
  br i1 %108, label %109, label %110, !dbg !934

109:                                              ; preds = %107
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.22), !dbg !935
  br label %114, !dbg !935

110:                                              ; preds = %107
  %111 = getelementptr inbounds ptr, ptr %102, i64 0, !dbg !936
  %112 = load ptr, ptr %111, align 8, !dbg !936, !tbaa !453
  %113 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %112), !dbg !936
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.23, ptr noundef %113), !dbg !937
  br label %114

114:                                              ; preds = %110, %109
  call void @usage(i32 noundef 1) #12, !dbg !938
  unreachable, !dbg !938

115:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 144, ptr %4) #13, !dbg !939
  call void @llvm.dbg.declare(metadata ptr %4, metadata !722, metadata !DIExpression()), !dbg !940
  %116 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 1, !dbg !941
  store i16 0, ptr %116, align 4, !dbg !942, !tbaa !943
  call void @llvm.dbg.value(metadata i32 -2, metadata !769, metadata !DIExpression()), !dbg !793
  %117 = trunc i8 %.022 to i1, !dbg !948
  br i1 %117, label %118, label %128, !dbg !949

118:                                              ; preds = %115
  %119 = icmp ne ptr %.018, null, !dbg !950
  br i1 %119, label %120, label %121, !dbg !953

120:                                              ; preds = %118
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.24), !dbg !954
  unreachable, !dbg !954

121:                                              ; preds = %118
  %122 = icmp slt i32 2, %99, !dbg !955
  br i1 %122, label %123, label %127, !dbg !957

123:                                              ; preds = %121
  %124 = getelementptr inbounds ptr, ptr %102, i64 2, !dbg !958
  %125 = load ptr, ptr %124, align 8, !dbg !958, !tbaa !453
  %126 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %125), !dbg !958
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.25, ptr noundef %126), !dbg !960
  call void @usage(i32 noundef 1) #12, !dbg !961
  unreachable, !dbg !961

127:                                              ; preds = %121
  br label %192, !dbg !962

128:                                              ; preds = %115
  %129 = icmp ne ptr %.018, null, !dbg !963
  br i1 %129, label %130, label %138, !dbg !964

130:                                              ; preds = %128
  %131 = call i32 @target_directory_operand(ptr noundef %.018, ptr noundef %4), !dbg !965
  call void @llvm.dbg.value(metadata i32 %131, metadata !769, metadata !DIExpression()), !dbg !793
  %132 = call zeroext i1 @target_dirfd_valid(i32 noundef %131) #14, !dbg !967
  br i1 %132, label %137, label %133, !dbg !969

133:                                              ; preds = %130
  %134 = call ptr @__error(), !dbg !970
  %135 = load i32, ptr %134, align 4, !dbg !970, !tbaa !914
  %136 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %.018), !dbg !970
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %135, ptr noundef @.str.26, ptr noundef %136), !dbg !970
  unreachable, !dbg !970

137:                                              ; preds = %130
  br label %191, !dbg !971

138:                                              ; preds = %128
  %139 = sub nsw i32 %99, 1, !dbg !972
  %140 = sext i32 %139 to i64, !dbg !973
  %141 = getelementptr inbounds ptr, ptr %102, i64 %140, !dbg !973
  %142 = load ptr, ptr %141, align 8, !dbg !973, !tbaa !453
  call void @llvm.dbg.value(metadata ptr %142, metadata !770, metadata !DIExpression()), !dbg !974
  %143 = icmp eq i32 %99, 2, !dbg !975
  br i1 %143, label %144, label %156, !dbg !977

144:                                              ; preds = %138
  %145 = getelementptr inbounds ptr, ptr %102, i64 0, !dbg !978
  %146 = load ptr, ptr %145, align 8, !dbg !978, !tbaa !453
  %147 = call i32 @renameatu(i32 noundef -2, ptr noundef %146, i32 noundef -2, ptr noundef %142, i32 noundef 1), !dbg !979
  %148 = icmp ne i32 %147, 0, !dbg !979
  br i1 %148, label %149, label %152, !dbg !979

149:                                              ; preds = %144
  %150 = call ptr @__error(), !dbg !980
  %151 = load i32, ptr %150, align 4, !dbg !980, !tbaa !914
  br label %153, !dbg !979

152:                                              ; preds = %144
  br label %153, !dbg !979

153:                                              ; preds = %152, %149
  %154 = phi i32 [ %151, %149 ], [ 0, %152 ], !dbg !979
  %155 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 37, !dbg !981
  store i32 %154, ptr %155, align 4, !dbg !982, !tbaa !983
  br label %156, !dbg !984

156:                                              ; preds = %153, %138
  %157 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 37, !dbg !985
  %158 = load i32, ptr %157, align 4, !dbg !985, !tbaa !983
  %159 = icmp ne i32 %158, 0, !dbg !986
  br i1 %159, label %160, label %190, !dbg !987

160:                                              ; preds = %156
  %161 = call i32 @target_directory_operand(ptr noundef %142, ptr noundef %4), !dbg !988
  call void @llvm.dbg.value(metadata i32 %161, metadata !774, metadata !DIExpression()), !dbg !989
  %162 = call zeroext i1 @target_dirfd_valid(i32 noundef %161) #14, !dbg !990
  br i1 %162, label %163, label %166, !dbg !991

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 37, !dbg !992
  store i32 -1, ptr %164, align 4, !dbg !994, !tbaa !983
  call void @llvm.dbg.value(metadata i32 %161, metadata !769, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %142, metadata !711, metadata !DIExpression()), !dbg !793
  %165 = add nsw i32 %99, -1, !dbg !995
  call void @llvm.dbg.value(metadata i32 %165, metadata !713, metadata !DIExpression()), !dbg !793
  br label %189, !dbg !996

166:                                              ; preds = %160
  %167 = call ptr @__error(), !dbg !997
  %168 = load i32, ptr %167, align 4, !dbg !997, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %168, metadata !777, metadata !DIExpression()), !dbg !998
  %169 = icmp slt i32 2, %99, !dbg !999
  br i1 %169, label %186, label %170, !dbg !1001

170:                                              ; preds = %166
  %171 = icmp eq i32 %168, 13, !dbg !1002
  br i1 %171, label %172, label %188, !dbg !1003

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 1, !dbg !1004
  %174 = load i16, ptr %173, align 4, !dbg !1004, !tbaa !943
  %175 = zext i16 %174 to i32, !dbg !1005
  %176 = icmp ne i32 %175, 0, !dbg !1006
  br i1 %176, label %180, label %177, !dbg !1007

177:                                              ; preds = %172
  %178 = call i32 @rpl_stat(ptr noundef %142, ptr noundef %4), !dbg !1008
  %179 = icmp eq i32 %178, 0, !dbg !1009
  br i1 %179, label %180, label %188, !dbg !1010

180:                                              ; preds = %177, %172
  %181 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 1, !dbg !1011
  %182 = load i16, ptr %181, align 4, !dbg !1011, !tbaa !943
  %183 = zext i16 %182 to i32, !dbg !1011
  %184 = and i32 %183, 61440, !dbg !1011
  %185 = icmp eq i32 %184, 16384, !dbg !1011
  br i1 %185, label %186, label %188, !dbg !1012

186:                                              ; preds = %180, %166
  %187 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %142), !dbg !1013
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %168, ptr noundef @.str.27, ptr noundef %187), !dbg !1013
  unreachable, !dbg !1013

188:                                              ; preds = %180, %177, %170
  br label %189

189:                                              ; preds = %188, %163
  %.220 = phi ptr [ %142, %163 ], [ %.018, %188 ], !dbg !793
  %.03 = phi i32 [ %165, %163 ], [ %99, %188 ], !dbg !793
  %.02 = phi i32 [ %161, %163 ], [ -2, %188 ], !dbg !793
  call void @llvm.dbg.value(metadata i32 %.02, metadata !769, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i32 %.03, metadata !713, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %.220, metadata !711, metadata !DIExpression()), !dbg !793
  br label %190, !dbg !1014

190:                                              ; preds = %189, %156
  %.321 = phi ptr [ %.220, %189 ], [ %.018, %156 ], !dbg !793
  %.14 = phi i32 [ %.03, %189 ], [ %99, %156 ], !dbg !793
  %.1 = phi i32 [ %.02, %189 ], [ -2, %156 ], !dbg !793
  call void @llvm.dbg.value(metadata i32 %.1, metadata !769, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i32 %.14, metadata !713, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %.321, metadata !711, metadata !DIExpression()), !dbg !793
  br label %191

191:                                              ; preds = %190, %137
  %.4 = phi ptr [ %.018, %137 ], [ %.321, %190 ], !dbg !793
  %.25 = phi i32 [ %99, %137 ], [ %.14, %190 ], !dbg !793
  %.2 = phi i32 [ %131, %137 ], [ %.1, %190 ], !dbg !1015
  call void @llvm.dbg.value(metadata i32 %.2, metadata !769, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i32 %.25, metadata !713, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %.4, metadata !711, metadata !DIExpression()), !dbg !793
  br label %192

192:                                              ; preds = %191, %127
  %.5 = phi ptr [ %.018, %127 ], [ %.4, %191 ], !dbg !804
  %.36 = phi i32 [ %99, %127 ], [ %.25, %191 ], !dbg !1016
  %.3 = phi i32 [ -2, %127 ], [ %.2, %191 ], !dbg !793
  call void @llvm.dbg.value(metadata i32 %.3, metadata !769, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i32 %.36, metadata !713, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %.5, metadata !711, metadata !DIExpression()), !dbg !793
  %193 = trunc i8 %.016 to i1, !dbg !1017
  br i1 %193, label %194, label %206, !dbg !1018

194:                                              ; preds = %192
  call void @llvm.dbg.value(metadata i32 0, metadata !780, metadata !DIExpression()), !dbg !1019
  br label %195, !dbg !1020

195:                                              ; preds = %203, %194
  %.01 = phi i32 [ 0, %194 ], [ %204, %203 ], !dbg !1021
  call void @llvm.dbg.value(metadata i32 %.01, metadata !780, metadata !DIExpression()), !dbg !1019
  %196 = icmp slt i32 %.01, %.36, !dbg !1022
  br i1 %196, label %198, label %197, !dbg !1024

197:                                              ; preds = %195
  br label %205

198:                                              ; preds = %195
  %199 = sext i32 %.01 to i64, !dbg !1025
  %200 = getelementptr inbounds ptr, ptr %102, i64 %199, !dbg !1025
  %201 = load ptr, ptr %200, align 8, !dbg !1025, !tbaa !453
  %202 = call zeroext i1 @strip_trailing_slashes(ptr noundef %201), !dbg !1026
  br label %203, !dbg !1026

203:                                              ; preds = %198
  %204 = add nsw i32 %.01, 1, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %204, metadata !780, metadata !DIExpression()), !dbg !1019
  br label %195, !dbg !1028, !llvm.loop !1029

205:                                              ; preds = %197
  br label %206, !dbg !1030

206:                                              ; preds = %205, %192
  %207 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 2, !dbg !1031
  %208 = load i32, ptr %207, align 8, !dbg !1031, !tbaa !820
  %209 = icmp eq i32 %208, 2, !dbg !1033
  br i1 %209, label %210, label %212, !dbg !1034

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 31, !dbg !1035
  store i8 0, ptr %211, align 1, !dbg !1036, !tbaa !856
  br label %212, !dbg !1037

212:                                              ; preds = %210, %206
  %213 = trunc i8 %.09 to i1, !dbg !1038
  br i1 %213, label %214, label %219, !dbg !1040

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 2, !dbg !1041
  %216 = load i32, ptr %215, align 8, !dbg !1041, !tbaa !820
  %217 = icmp eq i32 %216, 2, !dbg !1042
  br i1 %217, label %218, label %219, !dbg !1043

218:                                              ; preds = %214
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.28), !dbg !1044
  call void @usage(i32 noundef 1) #12, !dbg !1046
  unreachable, !dbg !1046

219:                                              ; preds = %214, %212
  %220 = trunc i8 %.09 to i1, !dbg !1047
  br i1 %220, label %221, label %223, !dbg !1047

221:                                              ; preds = %219
  %222 = call i32 @xget_version(ptr noundef @.str.29, ptr noundef %.013), !dbg !1048
  br label %224, !dbg !1047

223:                                              ; preds = %219
  br label %224, !dbg !1047

224:                                              ; preds = %223, %221
  %225 = phi i32 [ %222, %221 ], [ 0, %223 ], !dbg !1047
  %226 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 0, !dbg !1049
  store i32 %225, ptr %226, align 8, !dbg !1050, !tbaa !1051
  call void @set_simple_backup_suffix(ptr noundef %.011), !dbg !1052
  call void @hash_init(), !dbg !1053
  %227 = icmp ne ptr %.5, null, !dbg !1054
  br i1 %227, label %228, label %258, !dbg !1055

228:                                              ; preds = %224
  %229 = icmp sle i32 2, %.36, !dbg !1056
  br i1 %229, label %230, label %231, !dbg !1058

230:                                              ; preds = %228
  call void @dest_info_init(ptr noundef %3), !dbg !1059
  br label %231, !dbg !1059

231:                                              ; preds = %230, %228
  call void @llvm.dbg.value(metadata i8 1, metadata !650, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i32 0, metadata !783, metadata !DIExpression()), !dbg !1060
  br label %232, !dbg !1061

232:                                              ; preds = %255, %231
  %.07 = phi i8 [ 1, %231 ], [ %254, %255 ], !dbg !1062
  %.0 = phi i32 [ 0, %231 ], [ %256, %255 ], !dbg !1063
  call void @llvm.dbg.value(metadata i32 %.0, metadata !783, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8 %.07, metadata !650, metadata !DIExpression()), !dbg !793
  %233 = icmp slt i32 %.0, %.36, !dbg !1064
  br i1 %233, label %235, label %234, !dbg !1065

234:                                              ; preds = %232
  br label %257

235:                                              ; preds = %232
  %236 = add nsw i32 %.0, 1, !dbg !1066
  %237 = icmp eq i32 %236, %.36, !dbg !1067
  %238 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 36, !dbg !1068
  %239 = zext i1 %237 to i8, !dbg !1069
  store i8 %239, ptr %238, align 8, !dbg !1069, !tbaa !1070
  %240 = sext i32 %.0 to i64, !dbg !1071
  %241 = getelementptr inbounds ptr, ptr %102, i64 %240, !dbg !1071
  %242 = load ptr, ptr %241, align 8, !dbg !1071, !tbaa !453
  call void @llvm.dbg.value(metadata ptr %242, metadata !787, metadata !DIExpression()), !dbg !1072
  %243 = call ptr @last_component(ptr noundef %242) #14, !dbg !1073
  call void @llvm.dbg.value(metadata ptr %243, metadata !790, metadata !DIExpression()), !dbg !1072
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #13, !dbg !1074
  call void @llvm.dbg.declare(metadata ptr %5, metadata !791, metadata !DIExpression()), !dbg !1075
  %244 = call noalias nonnull ptr @file_name_concat(ptr noundef %.5, ptr noundef %243, ptr noundef %5), !dbg !1076
  call void @llvm.dbg.value(metadata ptr %244, metadata !792, metadata !DIExpression()), !dbg !1072
  %245 = load ptr, ptr %5, align 8, !dbg !1077, !tbaa !453
  %246 = call zeroext i1 @strip_trailing_slashes(ptr noundef %245), !dbg !1078
  %247 = load ptr, ptr %5, align 8, !dbg !1079, !tbaa !453
  %248 = call zeroext i1 @do_move(ptr noundef %242, ptr noundef %244, i32 noundef %.3, ptr noundef %247, ptr noundef %3), !dbg !1080
  %249 = zext i1 %248 to i32, !dbg !1080
  %250 = trunc i8 %.07 to i1, !dbg !1081
  %251 = zext i1 %250 to i32, !dbg !1081
  %252 = and i32 %251, %249, !dbg !1081
  %253 = icmp ne i32 %252, 0, !dbg !1081
  %254 = zext i1 %253 to i8, !dbg !1081
  call void @llvm.dbg.value(metadata i8 %254, metadata !650, metadata !DIExpression()), !dbg !793
  call void @rpl_free(ptr noundef %244), !dbg !1082
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #13, !dbg !1083
  br label %255, !dbg !1084

255:                                              ; preds = %235
  %256 = add nsw i32 %.0, 1, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %256, metadata !783, metadata !DIExpression()), !dbg !1060
  br label %232, !dbg !1086, !llvm.loop !1087

257:                                              ; preds = %234
  br label %268, !dbg !1089

258:                                              ; preds = %224
  %259 = getelementptr inbounds %struct.cp_options, ptr %3, i32 0, i32 36, !dbg !1090
  store i8 1, ptr %259, align 8, !dbg !1092, !tbaa !1070
  %260 = getelementptr inbounds ptr, ptr %102, i64 0, !dbg !1093
  %261 = load ptr, ptr %260, align 8, !dbg !1093, !tbaa !453
  %262 = getelementptr inbounds ptr, ptr %102, i64 1, !dbg !1094
  %263 = load ptr, ptr %262, align 8, !dbg !1094, !tbaa !453
  %264 = getelementptr inbounds ptr, ptr %102, i64 1, !dbg !1095
  %265 = load ptr, ptr %264, align 8, !dbg !1095, !tbaa !453
  %266 = call zeroext i1 @do_move(ptr noundef %261, ptr noundef %263, i32 noundef -2, ptr noundef %265, ptr noundef %3), !dbg !1096
  %267 = zext i1 %266 to i8, !dbg !1097
  call void @llvm.dbg.value(metadata i8 %267, metadata !650, metadata !DIExpression()), !dbg !793
  br label %268

268:                                              ; preds = %258, %257
  %.18 = phi i8 [ %.07, %257 ], [ %267, %258 ], !dbg !1098
  call void @llvm.dbg.value(metadata i8 %.18, metadata !650, metadata !DIExpression()), !dbg !793
  %269 = trunc i8 %.18 to i1, !dbg !1099
  %270 = zext i1 %269 to i64, !dbg !1099
  %271 = select i1 %269, i32 0, i32 1, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 144, ptr %4) #13, !dbg !1100
  call void @llvm.lifetime.end.p0(i64 88, ptr %3) #13, !dbg !1100
  ret i32 %271, !dbg !1099
}

declare !dbg !1101 void @set_program_name(ptr noundef) #2

declare void @close_stdin() #2

declare !dbg !1103 i32 @atexit(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @cp_option_init(ptr noundef %0) #7 !dbg !1107 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1112, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 0, metadata !1113, metadata !DIExpression()), !dbg !1114
  call void @cp_options_default(ptr noundef %0), !dbg !1115
  %2 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 5, !dbg !1116
  store i8 0, ptr %2, align 2, !dbg !1117, !tbaa !1118
  %3 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 38, !dbg !1119
  store i32 1, ptr %3, align 8, !dbg !1120, !tbaa !1121
  %4 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 1, !dbg !1122
  store i32 2, ptr %4, align 4, !dbg !1123, !tbaa !1124
  %5 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 6, !dbg !1125
  store i8 0, ptr %5, align 1, !dbg !1126, !tbaa !1127
  %6 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 7, !dbg !1128
  store i8 0, ptr %6, align 4, !dbg !1129, !tbaa !1130
  %7 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 8, !dbg !1131
  store i8 0, ptr %7, align 1, !dbg !1132, !tbaa !1133
  %8 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 2, !dbg !1134
  store i32 5, ptr %8, align 8, !dbg !1135, !tbaa !820
  %9 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 9, !dbg !1136
  store i8 1, ptr %9, align 2, !dbg !1137, !tbaa !1138
  %10 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 11, !dbg !1139
  store i8 0, ptr %10, align 8, !dbg !1140, !tbaa !1141
  %11 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 14, !dbg !1142
  store i8 0, ptr %11, align 1, !dbg !1143, !tbaa !1144
  %12 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 15, !dbg !1145
  store i8 1, ptr %12, align 4, !dbg !1146, !tbaa !1147
  %13 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 20, !dbg !1148
  store i8 1, ptr %13, align 8, !dbg !1149, !tbaa !1150
  %14 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 16, !dbg !1151
  store i8 1, ptr %14, align 1, !dbg !1152, !tbaa !1153
  %15 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 17, !dbg !1154
  store i8 1, ptr %15, align 2, !dbg !1155, !tbaa !1156
  %16 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 18, !dbg !1157
  store i8 0, ptr %16, align 1, !dbg !1158, !tbaa !1159
  %17 = trunc i8 0 to i1, !dbg !1160
  %18 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 23, !dbg !1161
  %19 = zext i1 %17 to i8, !dbg !1162
  store i8 %19, ptr %18, align 1, !dbg !1162, !tbaa !904
  %20 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 19, !dbg !1163
  store ptr null, ptr %20, align 8, !dbg !1164, !tbaa !908
  %21 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 27, !dbg !1165
  store i8 0, ptr %21, align 1, !dbg !1166, !tbaa !1167
  %22 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 21, !dbg !1168
  store i8 1, ptr %22, align 1, !dbg !1169, !tbaa !1170
  %23 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 22, !dbg !1171
  store i8 0, ptr %23, align 2, !dbg !1172, !tbaa !1173
  %24 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 24, !dbg !1174
  store i8 0, ptr %24, align 4, !dbg !1175, !tbaa !1176
  %25 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 25, !dbg !1177
  store i8 1, ptr %25, align 1, !dbg !1178, !tbaa !1179
  %26 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 26, !dbg !1180
  store i8 0, ptr %26, align 2, !dbg !1181, !tbaa !1182
  %27 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 28, !dbg !1183
  store i8 1, ptr %27, align 8, !dbg !1184, !tbaa !1185
  %28 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 3, !dbg !1186
  store i32 2, ptr %28, align 4, !dbg !1187, !tbaa !1188
  %29 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 30, !dbg !1189
  store i8 0, ptr %29, align 2, !dbg !1190, !tbaa !1191
  %30 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 29, !dbg !1192
  store i8 0, ptr %30, align 1, !dbg !1193, !tbaa !1194
  %31 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 4, !dbg !1195
  store i16 0, ptr %31, align 8, !dbg !1196, !tbaa !1197
  %32 = call i32 @isatty(i32 noundef 0), !dbg !1198
  %33 = icmp ne i32 %32, 0, !dbg !1198
  %34 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 34, !dbg !1199
  %35 = zext i1 %33 to i8, !dbg !1200
  store i8 %35, ptr %34, align 2, !dbg !1200, !tbaa !1201
  %36 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 35, !dbg !1202
  store i8 0, ptr %36, align 1, !dbg !1203, !tbaa !1204
  %37 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 31, !dbg !1205
  store i8 0, ptr %37, align 1, !dbg !1206, !tbaa !856
  %38 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 32, !dbg !1207
  store i8 0, ptr %38, align 4, !dbg !1208, !tbaa !834
  %39 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 39, !dbg !1209
  store ptr null, ptr %39, align 8, !dbg !1210, !tbaa !1211
  %40 = getelementptr inbounds %struct.cp_options, ptr %0, i32 0, i32 40, !dbg !1212
  store ptr null, ptr %40, align 8, !dbg !1213, !tbaa !1214
  ret void, !dbg !1215
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @priv_set_remove_linkdir() #3 !dbg !1216 {
  ret i32 -1, !dbg !1220
}

declare !dbg !1221 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1225 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !1229 i64 @__xargmatch_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally ptr @selabel_open(i32 noundef %0, ptr noundef %1, i32 noundef %2) #3 !dbg !1237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1244, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %1, metadata !1245, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 %2, metadata !1246, metadata !DIExpression()), !dbg !1247
  %4 = call ptr @__error(), !dbg !1248
  store i32 45, ptr %4, align 4, !dbg !1249, !tbaa !914
  ret ptr null, !dbg !1250
}

declare !dbg !1251 ptr @__error() #2

declare !dbg !1255 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !1259 ptr @quotearg_style(i32 noundef, ptr noundef) #2

declare !dbg !1262 i32 @target_directory_operand(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally zeroext i1 @target_dirfd_valid(i32 noundef %0) #8 !dbg !1267 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1271, metadata !DIExpression()), !dbg !1272
  %2 = icmp ne i32 %0, -1, !dbg !1273
  ret i1 %2, !dbg !1274
}

declare !dbg !1275 i32 @renameatu(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare !dbg !1279 i32 @rpl_stat(ptr noundef, ptr noundef) #2

declare !dbg !1284 zeroext i1 @strip_trailing_slashes(ptr noundef) #2

declare !dbg !1288 i32 @xget_version(ptr noundef, ptr noundef) #2

declare !dbg !1291 void @set_simple_backup_suffix(ptr noundef) #2

declare !dbg !1292 void @hash_init() #2

declare !dbg !1294 void @dest_info_init(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1295 ptr @last_component(ptr noundef) #9

declare !dbg !1299 noalias nonnull ptr @file_name_concat(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @do_move(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #7 !dbg !1303 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.rm_options, align 8
  %9 = alloca [2 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1309, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata ptr %1, metadata !1310, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 %2, metadata !1311, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata ptr %3, metadata !1312, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata ptr %4, metadata !1313, metadata !DIExpression()), !dbg !1326
  call void @llvm.lifetime.start.p0(i64 1, ptr %6) #13, !dbg !1327
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1314, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.start.p0(i64 1, ptr %7) #13, !dbg !1329
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1315, metadata !DIExpression()), !dbg !1330
  %10 = call zeroext i1 @copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef %4, ptr noundef %6, ptr noundef %7), !dbg !1331
  %11 = zext i1 %10 to i8, !dbg !1332
  call void @llvm.dbg.value(metadata i8 %11, metadata !1316, metadata !DIExpression()), !dbg !1326
  %12 = trunc i8 %11 to i1, !dbg !1333
  br i1 %12, label %13, label %57, !dbg !1334

13:                                               ; preds = %5
  %14 = load i8, ptr %6, align 1, !dbg !1335, !tbaa !1337, !range !1338, !noundef !545
  %15 = trunc i8 %14 to i1, !dbg !1335
  br i1 %15, label %16, label %17, !dbg !1339

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr null, metadata !1317, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i8 0, metadata !1316, metadata !DIExpression()), !dbg !1326
  br label %23, !dbg !1341

17:                                               ; preds = %13
  %18 = load i8, ptr %7, align 1, !dbg !1343, !tbaa !1337, !range !1338, !noundef !545
  %19 = trunc i8 %18 to i1, !dbg !1343
  br i1 %19, label %20, label %21, !dbg !1345

20:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr null, metadata !1317, metadata !DIExpression()), !dbg !1340
  br label %22, !dbg !1346

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr %0, metadata !1317, metadata !DIExpression()), !dbg !1340
  br label %22

22:                                               ; preds = %21, %20
  %.0 = phi ptr [ null, %20 ], [ %0, %21 ], !dbg !1348
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1317, metadata !DIExpression()), !dbg !1340
  br label %23

23:                                               ; preds = %22, %16
  %.01 = phi i8 [ 0, %16 ], [ %11, %22 ], !dbg !1326
  %.1 = phi ptr [ null, %16 ], [ %.0, %22 ], !dbg !1349
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1317, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1316, metadata !DIExpression()), !dbg !1326
  %24 = icmp ne ptr %.1, null, !dbg !1350
  br i1 %24, label %25, label %56, !dbg !1351

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 32, ptr %8) #13, !dbg !1352
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1320, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.start.p0(i64 16, ptr %9) #13, !dbg !1354
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1324, metadata !DIExpression()), !dbg !1355
  call void @rm_option_init(ptr noundef %8), !dbg !1356
  %26 = getelementptr inbounds %struct.cp_options, ptr %4, i32 0, i32 32, !dbg !1357
  %27 = load i8, ptr %26, align 4, !dbg !1357, !tbaa !834, !range !1338, !noundef !545
  %28 = trunc i8 %27 to i1, !dbg !1357
  %29 = getelementptr inbounds %struct.rm_options, ptr %8, i32 0, i32 8, !dbg !1358
  %30 = zext i1 %28 to i8, !dbg !1359
  store i8 %30, ptr %29, align 2, !dbg !1359, !tbaa !1360
  %31 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 0, !dbg !1362
  store ptr %.1, ptr %31, align 16, !dbg !1363, !tbaa !453
  %32 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 1, !dbg !1364
  store ptr null, ptr %32, align 8, !dbg !1365, !tbaa !453
  %33 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 0, !dbg !1366
  %34 = call i32 @rm(ptr noundef %33, ptr noundef %8), !dbg !1367
  call void @llvm.dbg.value(metadata i32 %34, metadata !1323, metadata !DIExpression()), !dbg !1368
  %35 = icmp eq i32 %34, 2, !dbg !1369
  br i1 %35, label %42, label %36, !dbg !1369

36:                                               ; preds = %25
  %37 = icmp eq i32 %34, 3, !dbg !1369
  br i1 %37, label %42, label %38, !dbg !1369

38:                                               ; preds = %36
  %39 = icmp eq i32 %34, 4, !dbg !1369
  br i1 %39, label %42, label %40, !dbg !1369

40:                                               ; preds = %38
  %41 = icmp eq i32 %34, 5, !dbg !1369
  br label %42, !dbg !1369

42:                                               ; preds = %40, %38, %36, %25
  %43 = phi i1 [ true, %38 ], [ true, %36 ], [ true, %25 ], [ %41, %40 ]
  %44 = xor i1 %43, true, !dbg !1369
  %45 = zext i1 %44 to i32, !dbg !1369
  %46 = sext i32 %45 to i64, !dbg !1369
  %47 = call i64 @llvm.expect.i64(i64 %46, i64 0), !dbg !1369
  %48 = icmp ne i64 %47, 0, !dbg !1369
  br i1 %48, label %49, label %51, !dbg !1369

49:                                               ; preds = %42
  call void @__assert_rtn(ptr noundef @__func__.do_move, ptr noundef @.str.69, i32 noundef 240, ptr noundef @.str.70) #15, !dbg !1369
  unreachable, !dbg !1369

50:                                               ; No predecessors!
  br label %52, !dbg !1369

51:                                               ; preds = %42
  br label %52, !dbg !1369

52:                                               ; preds = %51, %50
  %53 = icmp eq i32 %34, 5, !dbg !1370
  br i1 %53, label %54, label %55, !dbg !1372

54:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8 0, metadata !1316, metadata !DIExpression()), !dbg !1326
  br label %55, !dbg !1373

55:                                               ; preds = %54, %52
  %.12 = phi i8 [ 0, %54 ], [ %.01, %52 ], !dbg !1340
  call void @llvm.dbg.value(metadata i8 %.12, metadata !1316, metadata !DIExpression()), !dbg !1326
  call void @llvm.lifetime.end.p0(i64 16, ptr %9) #13, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 32, ptr %8) #13, !dbg !1374
  br label %56, !dbg !1375

56:                                               ; preds = %55, %23
  %.2 = phi i8 [ %.12, %55 ], [ %.01, %23 ], !dbg !1340
  call void @llvm.dbg.value(metadata i8 %.2, metadata !1316, metadata !DIExpression()), !dbg !1326
  br label %57, !dbg !1376

57:                                               ; preds = %56, %5
  %.3 = phi i8 [ %.2, %56 ], [ %11, %5 ], !dbg !1326
  call void @llvm.dbg.value(metadata i8 %.3, metadata !1316, metadata !DIExpression()), !dbg !1326
  %58 = trunc i8 %.3 to i1, !dbg !1377
  call void @llvm.lifetime.end.p0(i64 1, ptr %7) #13, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 1, ptr %6) #13, !dbg !1378
  ret i1 %58, !dbg !1379
}

declare !dbg !1380 void @rpl_free(ptr noundef) #2

declare !dbg !1384 zeroext i1 @copy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @rm_option_init(ptr noundef %0) #7 !dbg !380 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !416, metadata !DIExpression()), !dbg !1388
  %2 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 0, !dbg !1389
  store i8 0, ptr %2, align 8, !dbg !1390, !tbaa !1391
  %3 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 4, !dbg !1392
  store i8 1, ptr %3, align 2, !dbg !1393, !tbaa !1394
  %4 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 3, !dbg !1395
  store i8 1, ptr %4, align 1, !dbg !1396, !tbaa !1397
  %5 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 2, !dbg !1398
  store i8 0, ptr %5, align 8, !dbg !1399, !tbaa !1400
  %6 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 1, !dbg !1401
  store i32 5, ptr %6, align 4, !dbg !1402, !tbaa !1403
  %7 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 7, !dbg !1404
  store i8 0, ptr %7, align 1, !dbg !1405, !tbaa !1406
  %8 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 8, !dbg !1407
  store i8 0, ptr %8, align 2, !dbg !1408, !tbaa !1360
  %9 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 9, !dbg !1409
  store i8 1, ptr %9, align 1, !dbg !1410, !tbaa !1411
  %10 = call ptr @get_root_dev_ino(ptr noundef @rm_option_init.dev_ino_buf), !dbg !1412
  %11 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 5, !dbg !1414
  store ptr %10, ptr %11, align 8, !dbg !1415, !tbaa !1416
  %12 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 5, !dbg !1417
  %13 = load ptr, ptr %12, align 8, !dbg !1417, !tbaa !1416
  %14 = icmp eq ptr %13, null, !dbg !1419
  br i1 %14, label %15, label %19, !dbg !1420

15:                                               ; preds = %1
  %16 = call ptr @__error(), !dbg !1421
  %17 = load i32, ptr %16, align 4, !dbg !1421, !tbaa !914
  %18 = call ptr @quotearg_style(i32 noundef 4, ptr noundef @.str.72), !dbg !1421
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %17, ptr noundef @.str.71, ptr noundef %18), !dbg !1421
  unreachable, !dbg !1421

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.rm_options, ptr %0, i32 0, i32 6, !dbg !1422
  store i8 0, ptr %20, align 8, !dbg !1423, !tbaa !1424
  ret void, !dbg !1425
}

declare !dbg !1426 i32 @rm(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: cold noreturn
declare !dbg !1433 void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #11

declare !dbg !1437 ptr @get_root_dev_ino(ptr noundef) #2

declare !dbg !1441 void @cp_options_default(ptr noundef) #2

declare !dbg !1442 i32 @isatty(i32 noundef) #2

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
attributes #8 = { inlinehint nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold noreturn }

!llvm.dbg.cu = !{!79}
!llvm.ident = !{!434}
!llvm.module.flags = !{!435, !436, !437, !438, !439, !440}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/mv.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1016, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 127)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 56)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1256, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 157)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 273, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 74)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 276, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2096, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 262)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1960, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 245)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1096, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 137)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1712, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 214)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1504, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 188)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 48)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 57)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 329, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 13)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "long_options", scope: !79, file: !2, line: 67, type: !424, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !157, globals: !164, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!80 = !{!81, !89, !96, !103, !109, !114, !119, !124, !130, !144, !150}
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backup_type", file: !82, line: 33, baseType: !83, size: 32, elements: !84)
!82 = !DIFile(filename: "../lib/backupfile.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!83 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!84 = !{!85, !86, !87, !88}
!85 = !DIEnumerator(name: "no_backups", value: 0)
!86 = !DIEnumerator(name: "simple_backups", value: 1)
!87 = !DIEnumerator(name: "numbered_existing_backups", value: 2)
!88 = !DIEnumerator(name: "numbered_backups", value: 3)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Dereference_symlink", file: !90, line: 84, baseType: !83, size: 32, elements: !91)
!90 = !DIFile(filename: "../src/copy.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!91 = !{!92, !93, !94, !95}
!92 = !DIEnumerator(name: "DEREF_UNDEFINED", value: 1)
!93 = !DIEnumerator(name: "DEREF_NEVER", value: 2)
!94 = !DIEnumerator(name: "DEREF_COMMAND_LINE_ARGUMENTS", value: 3)
!95 = !DIEnumerator(name: "DEREF_ALWAYS", value: 4)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Interactive", file: !90, line: 74, baseType: !83, size: 32, elements: !97)
!97 = !{!98, !99, !100, !101, !102}
!98 = !DIEnumerator(name: "I_ALWAYS_YES", value: 1)
!99 = !DIEnumerator(name: "I_ALWAYS_NO", value: 2)
!100 = !DIEnumerator(name: "I_ALWAYS_SKIP", value: 3)
!101 = !DIEnumerator(name: "I_ASK_USER", value: 4)
!102 = !DIEnumerator(name: "I_UNSPECIFIED", value: 5)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Sparse_type", file: !90, line: 27, baseType: !83, size: 32, elements: !104)
!104 = !{!105, !106, !107, !108}
!105 = !DIEnumerator(name: "SPARSE_UNUSED", value: 0)
!106 = !DIEnumerator(name: "SPARSE_NEVER", value: 1)
!107 = !DIEnumerator(name: "SPARSE_AUTO", value: 2)
!108 = !DIEnumerator(name: "SPARSE_ALWAYS", value: 3)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Reflink_type", file: !90, line: 48, baseType: !83, size: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "REFLINK_NEVER", value: 0)
!112 = !DIEnumerator(name: "REFLINK_AUTO", value: 1)
!113 = !DIEnumerator(name: "REFLINK_ALWAYS", value: 2)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 50, baseType: !83, size: 32, elements: !115)
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "DEBUG_OPTION", value: 128)
!117 = !DIEnumerator(name: "NO_COPY_OPTION", value: 129)
!118 = !DIEnumerator(name: "STRIP_TRAILING_SLASHES_OPTION", value: 130)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Update_type", file: !90, line: 61, baseType: !83, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "UPDATE_ALL", value: 0)
!122 = !DIEnumerator(name: "UPDATE_OLDER", value: 1)
!123 = !DIEnumerator(name: "UPDATE_NONE", value: 2)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 332, baseType: !126, size: 32, elements: !127)
!125 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !{!128, !129}
!128 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!129 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !131, line: 32, baseType: !83, size: 32, elements: !132)
!131 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!133 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!134 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!135 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!136 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!137 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!138 = !DIEnumerator(name: "c_quoting_style", value: 5)
!139 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!140 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!141 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!142 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!143 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rm_interactive", file: !145, line: 23, baseType: !83, size: 32, elements: !146)
!145 = !DIFile(filename: "../src/remove.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "RMI_ALWAYS", value: 3)
!148 = !DIEnumerator(name: "RMI_SOMETIMES", value: 4)
!149 = !DIEnumerator(name: "RMI_NEVER", value: 5)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RM_status", file: !145, line: 78, baseType: !83, size: 32, elements: !151)
!151 = !{!152, !153, !154, !155, !156}
!152 = !DIEnumerator(name: "RM_OK", value: 2)
!153 = !DIEnumerator(name: "RM_USER_ACCEPTED", value: 3)
!154 = !DIEnumerator(name: "RM_USER_DECLINED", value: 4)
!155 = !DIEnumerator(name: "RM_ERROR", value: 5)
!156 = !DIEnumerator(name: "RM_NONEMPTY_DIR", value: 6)
!157 = !{!158, !160, !161, !163}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!164 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !165, !170, !175, !180, !185, !190, !195, !197, !202, !207, !212, !217, !222, !227, !229, !231, !236, !241, !246, !251, !256, !258, !260, !265, !267, !272, !274, !276, !278, !283, !288, !293, !298, !303, !308, !313, !315, !320, !325, !330, !332, !334, !339, !341, !343, !345, !347, !349, !351, !353, !355, !77, !357, !361, !363, !365, !367, !371, !374, !376, !378, !417, !422}
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 370, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 38)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 9)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 417, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 28)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 421, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 14)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 421, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 12)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 421, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 16)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 421, type: !74, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 21)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 435, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 42)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 70)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 451, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 17)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 20)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 495, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 10)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !2, line: 515, type: !59, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 520, type: !187, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !125, line: 586, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 75)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !125, line: 614, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4064, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 508)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !125, line: 629, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1768, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 221)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !125, line: 636, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1776, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 222)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !125, line: 660, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 2)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !125, line: 660, type: !192, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !125, line: 661, type: !224, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !125, line: 661, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 22)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !125, line: 662, type: !224, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !125, line: 662, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 15)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !125, line: 663, type: !224, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !125, line: 664, type: !224, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !125, line: 665, type: !224, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !125, line: 678, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 23)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !125, line: 678, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 40)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !125, line: 683, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 4)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !125, line: 689, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 71)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !125, line: 695, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 5)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !125, line: 696, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 27)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !125, line: 698, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 51)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !125, line: 699, type: !187, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 7)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 8)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 6)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !327, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !187, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 11)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !322, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !219, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !280, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !317, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !214, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !317, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !322, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !300, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !322, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "update_type", scope: !79, file: !2, line: 61, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 96, elements: !65)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !290, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !300, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !327, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "update_type_string", scope: !79, file: !2, line: 57, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 256, elements: !291)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !323)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !300, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !262, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "dev_ino_buf", scope: !380, file: !2, line: 109, type: !394, isLocal: true, isDefinition: true)
!380 = distinct !DISubprogram(name: "rm_option_init", scope: !2, file: !2, line: 88, type: !381, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !415)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rm_options", file: !145, line: 32, size: 256, elements: !385)
!385 = !{!386, !388, !389, !390, !391, !392, !411, !412, !413, !414}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_missing_files", scope: !384, file: !145, line: 35, baseType: !387, size: 8)
!387 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "interactive", scope: !384, file: !145, line: 38, baseType: !144, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "one_file_system", scope: !384, file: !145, line: 47, baseType: !387, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "recursive", scope: !384, file: !145, line: 50, baseType: !387, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "remove_empty_directories", scope: !384, file: !145, line: 53, baseType: !387, size: 8, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "root_dev_ino", scope: !384, file: !145, line: 57, baseType: !393, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !395, line: 25, size: 128, elements: !396)
!395 = !DIFile(filename: "../lib/dev-ino.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!396 = !{!397, !406}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !394, file: !395, line: 27, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !399, line: 31, baseType: !400)
!399 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_ino_t.h", directory: "")
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino_t", file: !401, line: 64, baseType: !402)
!401 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !401, line: 62, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !404, line: 49, baseType: !405)
!404 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!405 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !394, file: !395, line: 28, baseType: !407, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !408, line: 31, baseType: !409)
!408 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !401, line: 57, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !404, line: 46, baseType: !126)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_all_root", scope: !384, file: !145, line: 61, baseType: !387, size: 8, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "stdin_tty", scope: !384, file: !145, line: 64, baseType: !387, size: 8, offset: 200)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !384, file: !145, line: 67, baseType: !387, size: 8, offset: 208)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "require_restore_cwd", scope: !384, file: !145, line: 75, baseType: !387, size: 8, offset: 216)
!415 = !{!416}
!416 = !DILocalVariable(name: "x", arg: 1, scope: !380, file: !2, line: 88, type: !383)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !419, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 31)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !253, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 4096, elements: !193)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !427, line: 50, size: 256, elements: !428)
!427 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!428 = !{!429, !430, !431, !433}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !426, file: !427, line: 52, baseType: !158, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !426, file: !427, line: 55, baseType: !126, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !426, file: !427, line: 56, baseType: !432, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !426, file: !427, line: 57, baseType: !126, size: 32, offset: 192)
!434 = !{!"Homebrew clang version 16.0.4"}
!435 = !{i32 7, !"Dwarf Version", i32 4}
!436 = !{i32 2, !"Debug Info Version", i32 3}
!437 = !{i32 1, !"wchar_size", i32 4}
!438 = !{i32 8, !"PIC Level", i32 2}
!439 = !{i32 7, !"uwtable", i32 2}
!440 = !{i32 7, !"frame-pointer", i32 2}
!441 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 250, type: !442, scopeLine: 251, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !126}
!444 = !{!445}
!445 = !DILocalVariable(name: "status", arg: 1, scope: !441, file: !2, line: 250, type: !126)
!446 = !DILocation(line: 0, scope: !441)
!447 = !DILocation(line: 252, column: 14, scope: !448)
!448 = distinct !DILexicalBlock(scope: !441, file: !2, line: 252, column: 7)
!449 = !DILocation(line: 252, column: 7, scope: !441)
!450 = !DILocation(line: 253, column: 5, scope: !448)
!451 = !DILocation(line: 253, column: 5, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !2, line: 253, column: 5)
!453 = !{!454, !454, i64 0}
!454 = !{!"any pointer", !455, i64 0}
!455 = !{!"omnipotent char", !456, i64 0}
!456 = !{!"Simple C/C++ TBAA"}
!457 = !DILocation(line: 261, column: 15, scope: !458)
!458 = distinct !DILexicalBlock(scope: !448, file: !2, line: 255, column: 5)
!459 = !DILocation(line: 261, column: 29, scope: !458)
!460 = !DILocation(line: 261, column: 43, scope: !458)
!461 = !DILocation(line: 256, column: 7, scope: !458)
!462 = !DILocation(line: 264, column: 5, scope: !458)
!463 = !DILocation(line: 262, column: 7, scope: !458)
!464 = !DILocation(line: 266, column: 7, scope: !458)
!465 = !DILocation(line: 272, column: 5, scope: !458)
!466 = !DILocation(line: 268, column: 7, scope: !458)
!467 = !DILocation(line: 275, column: 5, scope: !458)
!468 = !DILocation(line: 273, column: 7, scope: !458)
!469 = !DILocation(line: 281, column: 5, scope: !458)
!470 = !DILocation(line: 276, column: 7, scope: !458)
!471 = !DILocation(line: 287, column: 5, scope: !458)
!472 = !DILocation(line: 282, column: 7, scope: !458)
!473 = !DILocation(line: 291, column: 5, scope: !458)
!474 = !DILocation(line: 288, column: 7, scope: !458)
!475 = !DILocation(line: 296, column: 5, scope: !458)
!476 = !DILocation(line: 292, column: 7, scope: !458)
!477 = !DILocation(line: 301, column: 5, scope: !458)
!478 = !DILocation(line: 297, column: 7, scope: !458)
!479 = !DILocation(line: 302, column: 39, scope: !458)
!480 = !DILocation(line: 302, column: 7, scope: !458)
!481 = !DILocation(line: 303, column: 42, scope: !458)
!482 = !DILocation(line: 303, column: 7, scope: !458)
!483 = !DILocation(line: 304, column: 7, scope: !458)
!484 = !DILocation(line: 305, column: 7, scope: !458)
!485 = !DILocation(line: 306, column: 7, scope: !458)
!486 = !DILocation(line: 308, column: 3, scope: !441)
!487 = !DISubprogram(name: "fprintf", scope: !488, file: !488, line: 155, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!488 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!489 = !DISubroutineType(types: !490)
!490 = !{!126, !491, !544, null}
!491 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !494, line: 157, baseType: !495)
!494 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !494, line: 126, size: 1216, elements: !496)
!496 = !{!497, !500, !501, !502, !504, !505, !510, !511, !512, !516, !520, !528, !532, !533, !536, !537, !539, !541, !542, !543}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !495, file: !494, line: 127, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !495, file: !494, line: 128, baseType: !126, size: 32, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !495, file: !494, line: 129, baseType: !126, size: 32, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !495, file: !494, line: 130, baseType: !503, size: 16, offset: 128)
!503 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !495, file: !494, line: 131, baseType: !503, size: 16, offset: 144)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !495, file: !494, line: 132, baseType: !506, size: 128, offset: 192)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !494, line: 92, size: 128, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !506, file: !494, line: 93, baseType: !498, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !506, file: !494, line: 94, baseType: !126, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !495, file: !494, line: 133, baseType: !126, size: 32, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !495, file: !494, line: 136, baseType: !160, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !495, file: !494, line: 137, baseType: !513, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!126, !160}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !495, file: !494, line: 138, baseType: !517, size: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!126, !160, !163, !126}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !495, file: !494, line: 139, baseType: !521, size: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!524, !160, !524, !126}
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !494, line: 81, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !401, line: 71, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !404, line: 48, baseType: !527)
!527 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !495, file: !494, line: 140, baseType: !529, size: 64, offset: 640)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!126, !160, !158, !126}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !495, file: !494, line: 143, baseType: !506, size: 128, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !495, file: !494, line: 144, baseType: !534, size: 64, offset: 832)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !494, line: 98, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !495, file: !494, line: 145, baseType: !126, size: 32, offset: 896)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !495, file: !494, line: 148, baseType: !538, size: 24, offset: 928)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 24, elements: !65)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !495, file: !494, line: 149, baseType: !540, size: 8, offset: 952)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 8, elements: !70)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !495, file: !494, line: 152, baseType: !506, size: 128, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !495, file: !494, line: 155, baseType: !126, size: 32, offset: 1088)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !495, file: !494, line: 156, baseType: !524, size: 64, offset: 1152)
!544 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !158)
!545 = !{}
!546 = !DISubprogram(name: "printf", scope: !488, file: !488, line: 175, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!547 = !DISubroutineType(types: !548)
!548 = !{!126, !544, null}
!549 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !488, file: !488, line: 157, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!550 = !DISubroutineType(types: !551)
!551 = !{!126, !544, !491}
!552 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !125, file: !125, line: 584, type: !553, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !545)
!553 = !DISubroutineType(types: !554)
!554 = !{null}
!555 = !DILocation(line: 588, column: 5, scope: !552)
!556 = !DILocation(line: 586, column: 3, scope: !552)
!557 = !DILocation(line: 589, column: 1, scope: !552)
!558 = distinct !DISubprogram(name: "emit_update_parameters_note", scope: !125, file: !125, line: 612, type: !553, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !545)
!559 = !DILocation(line: 623, column: 5, scope: !558)
!560 = !DILocation(line: 614, column: 3, scope: !558)
!561 = !DILocation(line: 624, column: 1, scope: !558)
!562 = distinct !DISubprogram(name: "emit_backup_suffix_note", scope: !125, file: !125, line: 627, type: !553, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !545)
!563 = !DILocation(line: 635, column: 5, scope: !562)
!564 = !DILocation(line: 629, column: 3, scope: !562)
!565 = !DILocation(line: 641, column: 5, scope: !562)
!566 = !DILocation(line: 636, column: 3, scope: !562)
!567 = !DILocation(line: 642, column: 1, scope: !562)
!568 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !125, file: !125, line: 657, type: !569, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !158}
!571 = !{!572, !573, !580, !581, !583, !584}
!572 = !DILocalVariable(name: "program", arg: 1, scope: !568, file: !125, line: 657, type: !158)
!573 = !DILocalVariable(name: "infomap", scope: !568, file: !125, line: 659, type: !574)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 896, elements: !318)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !568, file: !125, line: 659, size: 128, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !576, file: !125, line: 659, baseType: !158, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !576, file: !125, line: 659, baseType: !158, size: 64, offset: 64)
!580 = !DILocalVariable(name: "node", scope: !568, file: !125, line: 669, type: !158)
!581 = !DILocalVariable(name: "map_prog", scope: !568, file: !125, line: 670, type: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!583 = !DILocalVariable(name: "lc_messages", scope: !568, file: !125, line: 682, type: !158)
!584 = !DILocalVariable(name: "url_program", scope: !568, file: !125, line: 695, type: !158)
!585 = !DILocation(line: 0, scope: !568)
!586 = !DILocation(line: 659, column: 3, scope: !568)
!587 = !DILocation(line: 659, column: 67, scope: !568)
!588 = !DILocation(line: 670, column: 36, scope: !568)
!589 = !DILocation(line: 672, column: 3, scope: !568)
!590 = !DILocation(line: 672, column: 20, scope: !568)
!591 = !{!592, !454, i64 0}
!592 = !{!"infomap", !454, i64 0, !454, i64 8}
!593 = !DILocation(line: 672, column: 10, scope: !568)
!594 = !DILocation(line: 672, column: 28, scope: !568)
!595 = !DILocation(line: 672, column: 33, scope: !568)
!596 = !DILocation(line: 672, column: 31, scope: !568)
!597 = !DILocation(line: 673, column: 13, scope: !568)
!598 = distinct !{!598, !589, !597, !599, !600}
!599 = !{!"llvm.loop.mustprogress"}
!600 = !{!"llvm.loop.unroll.disable"}
!601 = !DILocation(line: 675, column: 17, scope: !602)
!602 = distinct !DILexicalBlock(scope: !568, file: !125, line: 675, column: 7)
!603 = !{!592, !454, i64 8}
!604 = !DILocation(line: 675, column: 7, scope: !602)
!605 = !DILocation(line: 675, column: 7, scope: !568)
!606 = !DILocation(line: 676, column: 22, scope: !602)
!607 = !DILocation(line: 676, column: 5, scope: !602)
!608 = !DILocation(line: 678, column: 3, scope: !568)
!609 = !DILocation(line: 682, column: 29, scope: !568)
!610 = !DILocation(line: 683, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !568, file: !125, line: 683, column: 7)
!612 = !DILocation(line: 683, column: 19, scope: !611)
!613 = !DILocation(line: 683, column: 22, scope: !611)
!614 = !DILocation(line: 683, column: 7, scope: !568)
!615 = !DILocation(line: 690, column: 61, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !125, line: 684, column: 5)
!617 = !DILocation(line: 689, column: 7, scope: !616)
!618 = !DILocation(line: 691, column: 5, scope: !616)
!619 = !DILocation(line: 695, column: 29, scope: !568)
!620 = !DILocation(line: 696, column: 3, scope: !568)
!621 = !DILocation(line: 699, column: 22, scope: !568)
!622 = !DILocation(line: 699, column: 17, scope: !568)
!623 = !DILocation(line: 698, column: 3, scope: !568)
!624 = !DILocation(line: 700, column: 1, scope: !568)
!625 = !DISubprogram(name: "exit", scope: !626, file: !626, line: 145, type: !442, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !545)
!626 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!627 = !DISubprogram(name: "strcmp", scope: !628, file: !628, line: 77, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!628 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!629 = !DISubroutineType(types: !630)
!630 = !{!126, !158, !158}
!631 = !DISubprogram(name: "setlocale", scope: !632, file: !632, line: 53, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!632 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!633 = !DISubroutineType(types: !634)
!634 = !{!163, !126, !158}
!635 = !DISubprogram(name: "strncmp", scope: !628, file: !628, line: 84, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!636 = !DISubroutineType(types: !637)
!637 = !{!126, !158, !158, !638}
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !639, line: 31, baseType: !640)
!639 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !404, line: 94, baseType: !641)
!641 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!642 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 312, type: !643, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !646)
!643 = !DISubroutineType(types: !644)
!644 = !{!126, !126, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !710, !711, !712, !713, !714, !715, !716, !722, !769, !770, !774, !777, !780, !783, !787, !790, !791, !792}
!647 = !DILocalVariable(name: "argc", arg: 1, scope: !642, file: !2, line: 312, type: !126)
!648 = !DILocalVariable(name: "argv", arg: 2, scope: !642, file: !2, line: 312, type: !645)
!649 = !DILocalVariable(name: "c", scope: !642, file: !2, line: 314, type: !126)
!650 = !DILocalVariable(name: "ok", scope: !642, file: !2, line: 315, type: !387)
!651 = !DILocalVariable(name: "make_backups", scope: !642, file: !2, line: 316, type: !387)
!652 = !DILocalVariable(name: "backup_suffix", scope: !642, file: !2, line: 317, type: !158)
!653 = !DILocalVariable(name: "version_control_string", scope: !642, file: !2, line: 318, type: !163)
!654 = !DILocalVariable(name: "x", scope: !642, file: !2, line: 319, type: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cp_options", file: !90, line: 113, size: 704, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !709}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "backup_type", scope: !655, file: !90, line: 115, baseType: !81, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dereference", scope: !655, file: !90, line: 118, baseType: !89, size: 32, offset: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "interactive", scope: !655, file: !90, line: 123, baseType: !96, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sparse_mode", scope: !655, file: !90, line: 126, baseType: !103, size: 32, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !655, file: !90, line: 130, baseType: !662, size: 16, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !663, line: 31, baseType: !664)
!663 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !401, line: 70, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !404, line: 45, baseType: !666)
!666 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "copy_as_regular", scope: !655, file: !90, line: 134, baseType: !387, size: 8, offset: 144)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "unlink_dest_before_opening", scope: !655, file: !90, line: 138, baseType: !387, size: 8, offset: 152)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "unlink_dest_after_failed_open", scope: !655, file: !90, line: 145, baseType: !387, size: 8, offset: 160)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "hard_link", scope: !655, file: !90, line: 149, baseType: !387, size: 8, offset: 168)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "move_mode", scope: !655, file: !90, line: 153, baseType: !387, size: 8, offset: 176)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "no_copy", scope: !655, file: !90, line: 153, baseType: !387, size: 8, offset: 184)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "install_mode", scope: !655, file: !90, line: 156, baseType: !387, size: 8, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "chown_privileges", scope: !655, file: !90, line: 160, baseType: !387, size: 8, offset: 200)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "owner_privileges", scope: !655, file: !90, line: 167, baseType: !387, size: 8, offset: 208)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "one_file_system", scope: !655, file: !90, line: 171, baseType: !387, size: 8, offset: 216)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_ownership", scope: !655, file: !90, line: 175, baseType: !387, size: 8, offset: 224)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_mode", scope: !655, file: !90, line: 176, baseType: !387, size: 8, offset: 232)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_timestamps", scope: !655, file: !90, line: 177, baseType: !387, size: 8, offset: 240)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_no_preserve_mode", scope: !655, file: !90, line: 178, baseType: !387, size: 8, offset: 248)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !655, file: !90, line: 181, baseType: !682, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !684, line: 50, flags: DIFlagFwdDecl)
!684 = !DIFile(filename: "./lib/selinux/label.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!685 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_links", scope: !655, file: !90, line: 193, baseType: !387, size: 8, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "data_copy_required", scope: !655, file: !90, line: 197, baseType: !387, size: 8, offset: 328)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "require_preserve", scope: !655, file: !90, line: 203, baseType: !387, size: 8, offset: 336)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_security_context", scope: !655, file: !90, line: 207, baseType: !387, size: 8, offset: 344)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "require_preserve_context", scope: !655, file: !90, line: 216, baseType: !387, size: 8, offset: 352)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_xattr", scope: !655, file: !90, line: 220, baseType: !387, size: 8, offset: 360)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "require_preserve_xattr", scope: !655, file: !90, line: 229, baseType: !387, size: 8, offset: 368)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reduce_diagnostics", scope: !655, file: !90, line: 238, baseType: !387, size: 8, offset: 376)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "recursive", scope: !655, file: !90, line: 242, baseType: !387, size: 8, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !655, file: !90, line: 246, baseType: !387, size: 8, offset: 392)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "symbolic_link", scope: !655, file: !90, line: 250, baseType: !387, size: 8, offset: 400)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !655, file: !90, line: 254, baseType: !387, size: 8, offset: 408)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !655, file: !90, line: 257, baseType: !387, size: 8, offset: 416)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !655, file: !90, line: 260, baseType: !387, size: 8, offset: 424)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "stdin_tty", scope: !655, file: !90, line: 263, baseType: !387, size: 8, offset: 432)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "open_dangling_dest_symlink", scope: !655, file: !90, line: 268, baseType: !387, size: 8, offset: 440)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "last_file", scope: !655, file: !90, line: 272, baseType: !387, size: 8, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rename_errno", scope: !655, file: !90, line: 277, baseType: !126, size: 32, offset: 480)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reflink_mode", scope: !655, file: !90, line: 280, baseType: !109, size: 32, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dest_info", scope: !655, file: !90, line: 291, baseType: !705, size: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_table", file: !707, line: 49, baseType: !708)
!707 = !DIFile(filename: "../lib/hash.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", file: !707, line: 47, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "src_info", scope: !655, file: !90, line: 294, baseType: !705, size: 64, offset: 640)
!710 = !DILocalVariable(name: "remove_trailing_slashes", scope: !642, file: !2, line: 320, type: !387)
!711 = !DILocalVariable(name: "target_directory", scope: !642, file: !2, line: 321, type: !158)
!712 = !DILocalVariable(name: "no_target_directory", scope: !642, file: !2, line: 322, type: !387)
!713 = !DILocalVariable(name: "n_files", scope: !642, file: !2, line: 323, type: !126)
!714 = !DILocalVariable(name: "file", scope: !642, file: !2, line: 324, type: !645)
!715 = !DILocalVariable(name: "selinux_enabled", scope: !642, file: !2, line: 325, type: !387)
!716 = !DILocalVariable(name: "update_opt", scope: !717, file: !2, line: 381, type: !119)
!717 = distinct !DILexicalBlock(scope: !718, file: !2, line: 380, column: 13)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 379, column: 20)
!719 = distinct !DILexicalBlock(scope: !720, file: !2, line: 377, column: 15)
!720 = distinct !DILexicalBlock(scope: !721, file: !2, line: 344, column: 9)
!721 = distinct !DILexicalBlock(scope: !642, file: !2, line: 342, column: 5)
!722 = !DILocalVariable(name: "sb", scope: !642, file: !2, line: 440, type: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !724, line: 182, size: 1152, elements: !725)
!724 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!725 = !{!726, !727, !728, !731, !732, !737, !741, !742, !750, !751, !752, !753, !756, !760, !764, !765, !766, !767}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !723, file: !724, line: 182, baseType: !407, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !723, file: !724, line: 182, baseType: !662, size: 16, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !723, file: !724, line: 182, baseType: !729, size: 16, offset: 48)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !730, line: 31, baseType: !665)
!730 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !723, file: !724, line: 182, baseType: !402, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !723, file: !724, line: 182, baseType: !733, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !734, line: 31, baseType: !735)
!734 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !401, line: 75, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !404, line: 47, baseType: !83)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !723, file: !724, line: 182, baseType: !738, size: 32, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !739, line: 31, baseType: !740)
!739 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !401, line: 60, baseType: !736)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !723, file: !724, line: 182, baseType: !407, size: 32, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !723, file: !724, line: 182, baseType: !743, size: 128, offset: 256)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !744, line: 33, size: 128, elements: !745)
!744 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!745 = !{!746, !749}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !743, file: !744, line: 35, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !404, line: 122, baseType: !748)
!748 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !743, file: !744, line: 36, baseType: !748, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !723, file: !724, line: 182, baseType: !743, size: 128, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !723, file: !724, line: 182, baseType: !743, size: 128, offset: 512)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !723, file: !724, line: 182, baseType: !743, size: 128, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !723, file: !724, line: 182, baseType: !754, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !755, line: 31, baseType: !525)
!755 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!756 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !723, file: !724, line: 182, baseType: !757, size: 64, offset: 832)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !758, line: 31, baseType: !759)
!758 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !401, line: 55, baseType: !526)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !723, file: !724, line: 182, baseType: !761, size: 32, offset: 896)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !762, line: 31, baseType: !763)
!762 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !401, line: 56, baseType: !410)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !723, file: !724, line: 182, baseType: !736, size: 32, offset: 928)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !723, file: !724, line: 182, baseType: !736, size: 32, offset: 960)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !723, file: !724, line: 182, baseType: !410, size: 32, offset: 992)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !723, file: !724, line: 182, baseType: !768, size: 128, offset: 1024)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 128, elements: !254)
!769 = !DILocalVariable(name: "target_dirfd", scope: !642, file: !2, line: 442, type: !126)
!770 = !DILocalVariable(name: "lastfile", scope: !771, file: !2, line: 464, type: !158)
!771 = distinct !DILexicalBlock(scope: !772, file: !2, line: 463, column: 5)
!772 = distinct !DILexicalBlock(scope: !773, file: !2, line: 455, column: 12)
!773 = distinct !DILexicalBlock(scope: !642, file: !2, line: 443, column: 7)
!774 = !DILocalVariable(name: "fd", scope: !775, file: !2, line: 471, type: !126)
!775 = distinct !DILexicalBlock(scope: !776, file: !2, line: 470, column: 9)
!776 = distinct !DILexicalBlock(scope: !771, file: !2, line: 469, column: 11)
!777 = !DILocalVariable(name: "err", scope: !778, file: !2, line: 490, type: !126)
!778 = distinct !DILexicalBlock(scope: !779, file: !2, line: 480, column: 13)
!779 = distinct !DILexicalBlock(scope: !775, file: !2, line: 472, column: 15)
!780 = !DILocalVariable(name: "i", scope: !781, file: !2, line: 506, type: !126)
!781 = distinct !DILexicalBlock(scope: !782, file: !2, line: 506, column: 5)
!782 = distinct !DILexicalBlock(scope: !642, file: !2, line: 505, column: 7)
!783 = !DILocalVariable(name: "i", scope: !784, file: !2, line: 536, type: !126)
!784 = distinct !DILexicalBlock(scope: !785, file: !2, line: 536, column: 7)
!785 = distinct !DILexicalBlock(scope: !786, file: !2, line: 528, column: 5)
!786 = distinct !DILexicalBlock(scope: !642, file: !2, line: 527, column: 7)
!787 = !DILocalVariable(name: "source", scope: !788, file: !2, line: 539, type: !158)
!788 = distinct !DILexicalBlock(scope: !789, file: !2, line: 537, column: 9)
!789 = distinct !DILexicalBlock(scope: !784, file: !2, line: 536, column: 7)
!790 = !DILocalVariable(name: "source_basename", scope: !788, file: !2, line: 540, type: !158)
!791 = !DILocalVariable(name: "dest_relname", scope: !788, file: !2, line: 541, type: !163)
!792 = !DILocalVariable(name: "dest", scope: !788, file: !2, line: 542, type: !163)
!793 = !DILocation(line: 0, scope: !642)
!794 = !DILocation(line: 319, column: 3, scope: !642)
!795 = !DILocation(line: 319, column: 21, scope: !642)
!796 = !DILocation(line: 328, column: 21, scope: !642)
!797 = !DILocation(line: 328, column: 3, scope: !642)
!798 = !DILocation(line: 329, column: 3, scope: !642)
!799 = !DILocation(line: 333, column: 3, scope: !642)
!800 = !DILocation(line: 335, column: 3, scope: !642)
!801 = !DILocation(line: 338, column: 3, scope: !642)
!802 = !DILocation(line: 340, column: 3, scope: !642)
!803 = !DILocation(line: 322, column: 8, scope: !642)
!804 = !DILocation(line: 321, column: 15, scope: !642)
!805 = !DILocation(line: 320, column: 8, scope: !642)
!806 = !DILocation(line: 318, column: 9, scope: !642)
!807 = !DILocation(line: 317, column: 15, scope: !642)
!808 = !DILocation(line: 316, column: 8, scope: !642)
!809 = !DILocation(line: 340, column: 15, scope: !642)
!810 = !DILocation(line: 341, column: 10, scope: !642)
!811 = !DILocation(line: 343, column: 7, scope: !721)
!812 = !DILocation(line: 347, column: 15, scope: !813)
!813 = distinct !DILexicalBlock(scope: !720, file: !2, line: 347, column: 15)
!814 = !DILocation(line: 347, column: 15, scope: !720)
!815 = !DILocation(line: 348, column: 38, scope: !813)
!816 = !DILocation(line: 348, column: 13, scope: !813)
!817 = !DILocation(line: 349, column: 11, scope: !720)
!818 = !DILocation(line: 351, column: 13, scope: !720)
!819 = !DILocation(line: 351, column: 25, scope: !720)
!820 = !{!821, !455, i64 8}
!821 = !{!"cp_options", !455, i64 0, !455, i64 4, !455, i64 8, !455, i64 12, !822, i64 16, !823, i64 18, !823, i64 19, !823, i64 20, !823, i64 21, !823, i64 22, !823, i64 23, !823, i64 24, !823, i64 25, !823, i64 26, !823, i64 27, !823, i64 28, !823, i64 29, !823, i64 30, !823, i64 31, !454, i64 32, !823, i64 40, !823, i64 41, !823, i64 42, !823, i64 43, !823, i64 44, !823, i64 45, !823, i64 46, !823, i64 47, !823, i64 48, !823, i64 49, !823, i64 50, !823, i64 51, !823, i64 52, !823, i64 53, !823, i64 54, !823, i64 55, !823, i64 56, !824, i64 60, !455, i64 64, !454, i64 72, !454, i64 80}
!822 = !{!"short", !455, i64 0}
!823 = !{!"_Bool", !455, i64 0}
!824 = !{!"int", !455, i64 0}
!825 = !DILocation(line: 352, column: 11, scope: !720)
!826 = !DILocation(line: 354, column: 13, scope: !720)
!827 = !DILocation(line: 354, column: 25, scope: !720)
!828 = !DILocation(line: 355, column: 11, scope: !720)
!829 = !DILocation(line: 357, column: 13, scope: !720)
!830 = !DILocation(line: 357, column: 25, scope: !720)
!831 = !DILocation(line: 358, column: 11, scope: !720)
!832 = !DILocation(line: 360, column: 23, scope: !720)
!833 = !DILocation(line: 360, column: 31, scope: !720)
!834 = !{!821, !823, i64 52}
!835 = !DILocation(line: 360, column: 13, scope: !720)
!836 = !DILocation(line: 360, column: 19, scope: !720)
!837 = !{!821, !823, i64 53}
!838 = !DILocation(line: 361, column: 11, scope: !720)
!839 = !DILocation(line: 363, column: 13, scope: !720)
!840 = !DILocation(line: 363, column: 21, scope: !720)
!841 = !{!821, !823, i64 23}
!842 = !DILocation(line: 364, column: 11, scope: !720)
!843 = !DILocation(line: 367, column: 11, scope: !720)
!844 = !DILocation(line: 369, column: 15, scope: !845)
!845 = distinct !DILexicalBlock(scope: !720, file: !2, line: 369, column: 15)
!846 = !DILocation(line: 369, column: 15, scope: !720)
!847 = !DILocation(line: 370, column: 13, scope: !845)
!848 = !DILocation(line: 371, column: 30, scope: !720)
!849 = !DILocation(line: 372, column: 11, scope: !720)
!850 = !DILocation(line: 375, column: 11, scope: !720)
!851 = !DILocation(line: 377, column: 15, scope: !719)
!852 = !DILocation(line: 377, column: 22, scope: !719)
!853 = !DILocation(line: 377, column: 15, scope: !720)
!854 = !DILocation(line: 378, column: 15, scope: !719)
!855 = !DILocation(line: 378, column: 22, scope: !719)
!856 = !{!821, !823, i64 51}
!857 = !DILocation(line: 378, column: 13, scope: !719)
!858 = !DILocation(line: 379, column: 22, scope: !718)
!859 = !DILocation(line: 379, column: 34, scope: !718)
!860 = !DILocation(line: 379, column: 20, scope: !719)
!861 = !DILocation(line: 382, column: 28, scope: !717)
!862 = !{!455, !455, i64 0}
!863 = !DILocation(line: 0, scope: !717)
!864 = !DILocation(line: 384, column: 30, scope: !865)
!865 = distinct !DILexicalBlock(scope: !717, file: !2, line: 384, column: 19)
!866 = !DILocation(line: 384, column: 19, scope: !717)
!867 = !DILocation(line: 387, column: 21, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !2, line: 385, column: 17)
!869 = !DILocation(line: 387, column: 28, scope: !868)
!870 = !DILocation(line: 388, column: 21, scope: !868)
!871 = !DILocation(line: 388, column: 33, scope: !868)
!872 = !DILocation(line: 389, column: 17, scope: !868)
!873 = !DILocation(line: 390, column: 35, scope: !874)
!874 = distinct !DILexicalBlock(scope: !865, file: !2, line: 390, column: 24)
!875 = !DILocation(line: 390, column: 24, scope: !865)
!876 = !DILocation(line: 392, column: 21, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !2, line: 391, column: 17)
!878 = !DILocation(line: 392, column: 28, scope: !877)
!879 = !DILocation(line: 393, column: 21, scope: !877)
!880 = !DILocation(line: 393, column: 33, scope: !877)
!881 = !DILocation(line: 394, column: 17, scope: !877)
!882 = !DILocation(line: 395, column: 35, scope: !883)
!883 = distinct !DILexicalBlock(scope: !874, file: !2, line: 395, column: 24)
!884 = !DILocation(line: 395, column: 24, scope: !874)
!885 = !DILocation(line: 397, column: 21, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !2, line: 396, column: 17)
!887 = !DILocation(line: 397, column: 28, scope: !886)
!888 = !DILocation(line: 398, column: 21, scope: !886)
!889 = !DILocation(line: 398, column: 33, scope: !886)
!890 = !DILocation(line: 399, column: 17, scope: !886)
!891 = !DILocation(line: 400, column: 13, scope: !717)
!892 = !DILocation(line: 401, column: 11, scope: !720)
!893 = !DILocation(line: 403, column: 13, scope: !720)
!894 = !DILocation(line: 403, column: 21, scope: !720)
!895 = !DILocation(line: 404, column: 11, scope: !720)
!896 = !DILocation(line: 407, column: 27, scope: !720)
!897 = !DILocation(line: 408, column: 11, scope: !720)
!898 = !DILocation(line: 412, column: 15, scope: !899)
!899 = distinct !DILexicalBlock(scope: !720, file: !2, line: 412, column: 15)
!900 = !DILocation(line: 412, column: 15, scope: !720)
!901 = !DILocation(line: 414, column: 17, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !2, line: 413, column: 13)
!903 = !DILocation(line: 414, column: 43, scope: !902)
!904 = !{!821, !823, i64 43}
!905 = !DILocation(line: 415, column: 40, scope: !902)
!906 = !DILocation(line: 415, column: 17, scope: !902)
!907 = !DILocation(line: 415, column: 38, scope: !902)
!908 = !{!821, !454, i64 32}
!909 = !DILocation(line: 416, column: 23, scope: !910)
!910 = distinct !DILexicalBlock(scope: !902, file: !2, line: 416, column: 19)
!911 = !DILocation(line: 416, column: 21, scope: !910)
!912 = !DILocation(line: 416, column: 19, scope: !902)
!913 = !DILocation(line: 417, column: 27, scope: !910)
!914 = !{!824, !824, i64 0}
!915 = !DILocation(line: 417, column: 17, scope: !910)
!916 = !DILocation(line: 418, column: 13, scope: !902)
!917 = !DILocation(line: 419, column: 11, scope: !720)
!918 = !DILocation(line: 420, column: 9, scope: !720)
!919 = !DILocation(line: 421, column: 9, scope: !720)
!920 = !DILocation(line: 423, column: 11, scope: !720)
!921 = distinct !{!921, !802, !922, !599, !600}
!922 = !DILocation(line: 425, column: 5, scope: !642)
!923 = !DILocation(line: 427, column: 20, scope: !642)
!924 = !DILocation(line: 427, column: 18, scope: !642)
!925 = !DILocation(line: 428, column: 17, scope: !642)
!926 = !DILocation(line: 428, column: 15, scope: !642)
!927 = !DILocation(line: 430, column: 18, scope: !928)
!928 = distinct !DILexicalBlock(scope: !642, file: !2, line: 430, column: 7)
!929 = !DILocation(line: 430, column: 15, scope: !928)
!930 = !DILocation(line: 430, column: 7, scope: !642)
!931 = !DILocation(line: 432, column: 19, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !2, line: 432, column: 11)
!933 = distinct !DILexicalBlock(scope: !928, file: !2, line: 431, column: 5)
!934 = !DILocation(line: 432, column: 11, scope: !933)
!935 = !DILocation(line: 433, column: 9, scope: !932)
!936 = !DILocation(line: 436, column: 16, scope: !932)
!937 = !DILocation(line: 435, column: 9, scope: !932)
!938 = !DILocation(line: 437, column: 7, scope: !933)
!939 = !DILocation(line: 440, column: 3, scope: !642)
!940 = !DILocation(line: 440, column: 15, scope: !642)
!941 = !DILocation(line: 441, column: 6, scope: !642)
!942 = !DILocation(line: 441, column: 14, scope: !642)
!943 = !{!944, !822, i64 4}
!944 = !{!"stat", !824, i64 0, !822, i64 4, !822, i64 6, !945, i64 8, !824, i64 16, !824, i64 20, !824, i64 24, !946, i64 32, !946, i64 48, !946, i64 64, !946, i64 80, !945, i64 96, !945, i64 104, !824, i64 112, !824, i64 116, !824, i64 120, !824, i64 124, !455, i64 128}
!945 = !{!"long long", !455, i64 0}
!946 = !{!"timespec", !947, i64 0, !947, i64 8}
!947 = !{!"long", !455, i64 0}
!948 = !DILocation(line: 443, column: 7, scope: !773)
!949 = !DILocation(line: 443, column: 7, scope: !642)
!950 = !DILocation(line: 445, column: 11, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !2, line: 445, column: 11)
!952 = distinct !DILexicalBlock(scope: !773, file: !2, line: 444, column: 5)
!953 = !DILocation(line: 445, column: 11, scope: !952)
!954 = !DILocation(line: 446, column: 9, scope: !951)
!955 = !DILocation(line: 449, column: 13, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !2, line: 449, column: 11)
!957 = !DILocation(line: 449, column: 11, scope: !952)
!958 = !DILocation(line: 451, column: 47, scope: !959)
!959 = distinct !DILexicalBlock(scope: !956, file: !2, line: 450, column: 9)
!960 = !DILocation(line: 451, column: 11, scope: !959)
!961 = !DILocation(line: 452, column: 11, scope: !959)
!962 = !DILocation(line: 454, column: 5, scope: !952)
!963 = !DILocation(line: 455, column: 12, scope: !772)
!964 = !DILocation(line: 455, column: 12, scope: !773)
!965 = !DILocation(line: 457, column: 22, scope: !966)
!966 = distinct !DILexicalBlock(scope: !772, file: !2, line: 456, column: 5)
!967 = !DILocation(line: 458, column: 13, scope: !968)
!968 = distinct !DILexicalBlock(scope: !966, file: !2, line: 458, column: 11)
!969 = !DILocation(line: 458, column: 11, scope: !966)
!970 = !DILocation(line: 459, column: 9, scope: !968)
!971 = !DILocation(line: 461, column: 5, scope: !966)
!972 = !DILocation(line: 464, column: 43, scope: !771)
!973 = !DILocation(line: 464, column: 30, scope: !771)
!974 = !DILocation(line: 0, scope: !771)
!975 = !DILocation(line: 465, column: 19, scope: !976)
!976 = distinct !DILexicalBlock(scope: !771, file: !2, line: 465, column: 11)
!977 = !DILocation(line: 465, column: 11, scope: !771)
!978 = !DILocation(line: 466, column: 48, scope: !976)
!979 = !DILocation(line: 466, column: 27, scope: !976)
!980 = !DILocation(line: 468, column: 29, scope: !976)
!981 = !DILocation(line: 466, column: 11, scope: !976)
!982 = !DILocation(line: 466, column: 24, scope: !976)
!983 = !{!821, !824, i64 60}
!984 = !DILocation(line: 466, column: 9, scope: !976)
!985 = !DILocation(line: 469, column: 13, scope: !776)
!986 = !DILocation(line: 469, column: 26, scope: !776)
!987 = !DILocation(line: 469, column: 11, scope: !771)
!988 = !DILocation(line: 471, column: 20, scope: !775)
!989 = !DILocation(line: 0, scope: !775)
!990 = !DILocation(line: 472, column: 15, scope: !779)
!991 = !DILocation(line: 472, column: 15, scope: !775)
!992 = !DILocation(line: 474, column: 17, scope: !993)
!993 = distinct !DILexicalBlock(scope: !779, file: !2, line: 473, column: 13)
!994 = !DILocation(line: 474, column: 30, scope: !993)
!995 = !DILocation(line: 477, column: 22, scope: !993)
!996 = !DILocation(line: 478, column: 13, scope: !993)
!997 = !DILocation(line: 490, column: 25, scope: !778)
!998 = !DILocation(line: 0, scope: !778)
!999 = !DILocation(line: 491, column: 21, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !778, file: !2, line: 491, column: 19)
!1001 = !DILocation(line: 492, column: 19, scope: !1000)
!1002 = !DILocation(line: 492, column: 55, scope: !1000)
!1003 = !DILocation(line: 493, column: 23, scope: !1000)
!1004 = !DILocation(line: 493, column: 30, scope: !1000)
!1005 = !DILocation(line: 493, column: 27, scope: !1000)
!1006 = !DILocation(line: 493, column: 38, scope: !1000)
!1007 = !DILocation(line: 493, column: 43, scope: !1000)
!1008 = !DILocation(line: 493, column: 46, scope: !1000)
!1009 = !DILocation(line: 493, column: 67, scope: !1000)
!1010 = !DILocation(line: 494, column: 23, scope: !1000)
!1011 = !DILocation(line: 494, column: 26, scope: !1000)
!1012 = !DILocation(line: 491, column: 19, scope: !778)
!1013 = !DILocation(line: 495, column: 17, scope: !1000)
!1014 = !DILocation(line: 497, column: 9, scope: !775)
!1015 = !DILocation(line: 0, scope: !772)
!1016 = !DILocation(line: 427, column: 11, scope: !642)
!1017 = !DILocation(line: 505, column: 7, scope: !782)
!1018 = !DILocation(line: 505, column: 7, scope: !642)
!1019 = !DILocation(line: 0, scope: !781)
!1020 = !DILocation(line: 506, column: 10, scope: !781)
!1021 = !DILocation(line: 506, scope: !781)
!1022 = !DILocation(line: 506, column: 23, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !781, file: !2, line: 506, column: 5)
!1024 = !DILocation(line: 506, column: 5, scope: !781)
!1025 = !DILocation(line: 507, column: 31, scope: !1023)
!1026 = !DILocation(line: 507, column: 7, scope: !1023)
!1027 = !DILocation(line: 506, column: 35, scope: !1023)
!1028 = !DILocation(line: 506, column: 5, scope: !1023)
!1029 = distinct !{!1029, !1024, !1030, !599, !600}
!1030 = !DILocation(line: 507, column: 38, scope: !781)
!1031 = !DILocation(line: 509, column: 9, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !642, file: !2, line: 509, column: 7)
!1033 = !DILocation(line: 509, column: 21, scope: !1032)
!1034 = !DILocation(line: 509, column: 7, scope: !642)
!1035 = !DILocation(line: 510, column: 7, scope: !1032)
!1036 = !DILocation(line: 510, column: 14, scope: !1032)
!1037 = !DILocation(line: 510, column: 5, scope: !1032)
!1038 = !DILocation(line: 512, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !642, file: !2, line: 512, column: 7)
!1040 = !DILocation(line: 512, column: 20, scope: !1039)
!1041 = !DILocation(line: 512, column: 25, scope: !1039)
!1042 = !DILocation(line: 512, column: 37, scope: !1039)
!1043 = !DILocation(line: 512, column: 7, scope: !642)
!1044 = !DILocation(line: 514, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 513, column: 5)
!1046 = !DILocation(line: 516, column: 7, scope: !1045)
!1047 = !DILocation(line: 519, column: 20, scope: !642)
!1048 = !DILocation(line: 520, column: 22, scope: !642)
!1049 = !DILocation(line: 519, column: 5, scope: !642)
!1050 = !DILocation(line: 519, column: 17, scope: !642)
!1051 = !{!821, !455, i64 0}
!1052 = !DILocation(line: 523, column: 3, scope: !642)
!1053 = !DILocation(line: 525, column: 3, scope: !642)
!1054 = !DILocation(line: 527, column: 7, scope: !786)
!1055 = !DILocation(line: 527, column: 7, scope: !642)
!1056 = !DILocation(line: 532, column: 13, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !785, file: !2, line: 532, column: 11)
!1058 = !DILocation(line: 532, column: 11, scope: !785)
!1059 = !DILocation(line: 533, column: 9, scope: !1057)
!1060 = !DILocation(line: 0, scope: !784)
!1061 = !DILocation(line: 536, column: 12, scope: !784)
!1062 = !DILocation(line: 0, scope: !785)
!1063 = !DILocation(line: 536, scope: !784)
!1064 = !DILocation(line: 536, column: 25, scope: !789)
!1065 = !DILocation(line: 536, column: 7, scope: !784)
!1066 = !DILocation(line: 538, column: 27, scope: !788)
!1067 = !DILocation(line: 538, column: 31, scope: !788)
!1068 = !DILocation(line: 538, column: 13, scope: !788)
!1069 = !DILocation(line: 538, column: 23, scope: !788)
!1070 = !{!821, !823, i64 56}
!1071 = !DILocation(line: 539, column: 32, scope: !788)
!1072 = !DILocation(line: 0, scope: !788)
!1073 = !DILocation(line: 540, column: 41, scope: !788)
!1074 = !DILocation(line: 541, column: 11, scope: !788)
!1075 = !DILocation(line: 541, column: 17, scope: !788)
!1076 = !DILocation(line: 542, column: 24, scope: !788)
!1077 = !DILocation(line: 544, column: 35, scope: !788)
!1078 = !DILocation(line: 544, column: 11, scope: !788)
!1079 = !DILocation(line: 545, column: 54, scope: !788)
!1080 = !DILocation(line: 545, column: 17, scope: !788)
!1081 = !DILocation(line: 545, column: 14, scope: !788)
!1082 = !DILocation(line: 546, column: 11, scope: !788)
!1083 = !DILocation(line: 547, column: 9, scope: !789)
!1084 = !DILocation(line: 547, column: 9, scope: !788)
!1085 = !DILocation(line: 536, column: 36, scope: !789)
!1086 = !DILocation(line: 536, column: 7, scope: !789)
!1087 = distinct !{!1087, !1065, !1088, !599, !600}
!1088 = !DILocation(line: 547, column: 9, scope: !784)
!1089 = !DILocation(line: 548, column: 5, scope: !785)
!1090 = !DILocation(line: 551, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !786, file: !2, line: 550, column: 5)
!1092 = !DILocation(line: 551, column: 19, scope: !1091)
!1093 = !DILocation(line: 552, column: 21, scope: !1091)
!1094 = !DILocation(line: 552, column: 30, scope: !1091)
!1095 = !DILocation(line: 552, column: 49, scope: !1091)
!1096 = !DILocation(line: 552, column: 12, scope: !1091)
!1097 = !DILocation(line: 552, column: 10, scope: !1091)
!1098 = !DILocation(line: 0, scope: !786)
!1099 = !DILocation(line: 555, column: 3, scope: !642)
!1100 = !DILocation(line: 556, column: 1, scope: !642)
!1101 = !DISubprogram(name: "set_program_name", scope: !1102, file: !1102, line: 37, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1102 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1103 = !DISubprogram(name: "atexit", scope: !626, file: !626, line: 133, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!126, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!1107 = distinct !DISubprogram(name: "cp_option_init", scope: !2, file: !2, line: 120, type: !1108, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1111)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !1110}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1111 = !{!1112, !1113}
!1112 = !DILocalVariable(name: "x", arg: 1, scope: !1107, file: !2, line: 120, type: !1110)
!1113 = !DILocalVariable(name: "selinux_enabled", scope: !1107, file: !2, line: 122, type: !387)
!1114 = !DILocation(line: 0, scope: !1107)
!1115 = !DILocation(line: 124, column: 3, scope: !1107)
!1116 = !DILocation(line: 125, column: 6, scope: !1107)
!1117 = !DILocation(line: 125, column: 22, scope: !1107)
!1118 = !{!821, !823, i64 18}
!1119 = !DILocation(line: 126, column: 6, scope: !1107)
!1120 = !DILocation(line: 126, column: 19, scope: !1107)
!1121 = !{!821, !455, i64 64}
!1122 = !DILocation(line: 127, column: 6, scope: !1107)
!1123 = !DILocation(line: 127, column: 18, scope: !1107)
!1124 = !{!821, !455, i64 4}
!1125 = !DILocation(line: 128, column: 6, scope: !1107)
!1126 = !DILocation(line: 128, column: 33, scope: !1107)
!1127 = !{!821, !823, i64 19}
!1128 = !DILocation(line: 129, column: 6, scope: !1107)
!1129 = !DILocation(line: 129, column: 36, scope: !1107)
!1130 = !{!821, !823, i64 20}
!1131 = !DILocation(line: 130, column: 6, scope: !1107)
!1132 = !DILocation(line: 130, column: 16, scope: !1107)
!1133 = !{!821, !823, i64 21}
!1134 = !DILocation(line: 131, column: 6, scope: !1107)
!1135 = !DILocation(line: 131, column: 18, scope: !1107)
!1136 = !DILocation(line: 132, column: 6, scope: !1107)
!1137 = !DILocation(line: 132, column: 16, scope: !1107)
!1138 = !{!821, !823, i64 22}
!1139 = !DILocation(line: 133, column: 6, scope: !1107)
!1140 = !DILocation(line: 133, column: 19, scope: !1107)
!1141 = !{!821, !823, i64 24}
!1142 = !DILocation(line: 134, column: 6, scope: !1107)
!1143 = !DILocation(line: 134, column: 22, scope: !1107)
!1144 = !{!821, !823, i64 27}
!1145 = !DILocation(line: 135, column: 6, scope: !1107)
!1146 = !DILocation(line: 135, column: 25, scope: !1107)
!1147 = !{!821, !823, i64 28}
!1148 = !DILocation(line: 136, column: 6, scope: !1107)
!1149 = !DILocation(line: 136, column: 21, scope: !1107)
!1150 = !{!821, !823, i64 40}
!1151 = !DILocation(line: 137, column: 6, scope: !1107)
!1152 = !DILocation(line: 137, column: 20, scope: !1107)
!1153 = !{!821, !823, i64 29}
!1154 = !DILocation(line: 138, column: 6, scope: !1107)
!1155 = !DILocation(line: 138, column: 26, scope: !1107)
!1156 = !{!821, !823, i64 30}
!1157 = !DILocation(line: 139, column: 6, scope: !1107)
!1158 = !DILocation(line: 139, column: 31, scope: !1107)
!1159 = !{!821, !823, i64 31}
!1160 = !DILocation(line: 140, column: 34, scope: !1107)
!1161 = !DILocation(line: 140, column: 6, scope: !1107)
!1162 = !DILocation(line: 140, column: 32, scope: !1107)
!1163 = !DILocation(line: 141, column: 6, scope: !1107)
!1164 = !DILocation(line: 141, column: 27, scope: !1107)
!1165 = !DILocation(line: 142, column: 6, scope: !1107)
!1166 = !DILocation(line: 142, column: 25, scope: !1107)
!1167 = !{!821, !823, i64 47}
!1168 = !DILocation(line: 143, column: 6, scope: !1107)
!1169 = !DILocation(line: 143, column: 25, scope: !1107)
!1170 = !{!821, !823, i64 41}
!1171 = !DILocation(line: 144, column: 6, scope: !1107)
!1172 = !DILocation(line: 144, column: 23, scope: !1107)
!1173 = !{!821, !823, i64 42}
!1174 = !DILocation(line: 145, column: 6, scope: !1107)
!1175 = !DILocation(line: 145, column: 31, scope: !1107)
!1176 = !{!821, !823, i64 44}
!1177 = !DILocation(line: 146, column: 6, scope: !1107)
!1178 = !DILocation(line: 146, column: 21, scope: !1107)
!1179 = !{!821, !823, i64 45}
!1180 = !DILocation(line: 147, column: 6, scope: !1107)
!1181 = !DILocation(line: 147, column: 29, scope: !1107)
!1182 = !{!821, !823, i64 46}
!1183 = !DILocation(line: 148, column: 6, scope: !1107)
!1184 = !DILocation(line: 148, column: 16, scope: !1107)
!1185 = !{!821, !823, i64 48}
!1186 = !DILocation(line: 149, column: 6, scope: !1107)
!1187 = !DILocation(line: 149, column: 18, scope: !1107)
!1188 = !{!821, !455, i64 12}
!1189 = !DILocation(line: 150, column: 6, scope: !1107)
!1190 = !DILocation(line: 150, column: 20, scope: !1107)
!1191 = !{!821, !823, i64 50}
!1192 = !DILocation(line: 151, column: 6, scope: !1107)
!1193 = !DILocation(line: 151, column: 15, scope: !1107)
!1194 = !{!821, !823, i64 49}
!1195 = !DILocation(line: 152, column: 6, scope: !1107)
!1196 = !DILocation(line: 152, column: 11, scope: !1107)
!1197 = !{!821, !822, i64 16}
!1198 = !DILocation(line: 153, column: 18, scope: !1107)
!1199 = !DILocation(line: 153, column: 6, scope: !1107)
!1200 = !DILocation(line: 153, column: 16, scope: !1107)
!1201 = !{!821, !823, i64 54}
!1202 = !DILocation(line: 155, column: 6, scope: !1107)
!1203 = !DILocation(line: 155, column: 33, scope: !1107)
!1204 = !{!821, !823, i64 55}
!1205 = !DILocation(line: 156, column: 6, scope: !1107)
!1206 = !DILocation(line: 156, column: 13, scope: !1107)
!1207 = !DILocation(line: 157, column: 6, scope: !1107)
!1208 = !DILocation(line: 157, column: 14, scope: !1107)
!1209 = !DILocation(line: 158, column: 6, scope: !1107)
!1210 = !DILocation(line: 158, column: 16, scope: !1107)
!1211 = !{!821, !454, i64 72}
!1212 = !DILocation(line: 159, column: 6, scope: !1107)
!1213 = !DILocation(line: 159, column: 15, scope: !1107)
!1214 = !{!821, !454, i64 80}
!1215 = !DILocation(line: 160, column: 1, scope: !1107)
!1216 = distinct !DISubprogram(name: "priv_set_remove_linkdir", scope: !1217, file: !1217, line: 51, type: !1218, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !545)
!1217 = !DIFile(filename: "../lib/priv-set.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!126}
!1220 = !DILocation(line: 53, column: 3, scope: !1216)
!1221 = !DISubprogram(name: "rpl_getopt_long", scope: !427, file: !427, line: 66, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!126, !126, !645, !158, !1224, !432}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1225 = !DISubprogram(name: "error", scope: !1226, file: !1226, line: 395, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1226 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !126, !126, !158, null}
!1229 = !DISubprogram(name: "__xargmatch_internal", scope: !1230, file: !1230, line: 94, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1230 = !DIFile(filename: "../lib/argmatch.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!1233, !158, !158, !1235, !161, !638, !1236, !387}
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1234, line: 35, baseType: !748)
!1234 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !1230, line: 66, baseType: !1106)
!1237 = distinct !DISubprogram(name: "selabel_open", scope: !684, file: !684, line: 60, type: !1238, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1243)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!682, !126, !1240, !83}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "selinux_opt", file: !1242, line: 58, flags: DIFlagFwdDecl)
!1242 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1243 = !{!1244, !1245, !1246}
!1244 = !DILocalVariable(name: "backend", arg: 1, scope: !1237, file: !684, line: 60, type: !126)
!1245 = !DILocalVariable(name: "options", arg: 2, scope: !1237, file: !684, line: 61, type: !1240)
!1246 = !DILocalVariable(name: "nopt", arg: 3, scope: !1237, file: !684, line: 62, type: !83)
!1247 = !DILocation(line: 0, scope: !1237)
!1248 = !DILocation(line: 63, column: 3, scope: !1237)
!1249 = !DILocation(line: 63, column: 9, scope: !1237)
!1250 = !DILocation(line: 63, column: 20, scope: !1237)
!1251 = !DISubprogram(name: "__error", scope: !1252, file: !1252, line: 80, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1252 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!432}
!1255 = !DISubprogram(name: "version_etc", scope: !1256, file: !1256, line: 65, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1256 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !492, !158, !158, !158, null}
!1259 = !DISubprogram(name: "quotearg_style", scope: !131, file: !131, line: 383, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!163, !130, !158}
!1262 = !DISubprogram(name: "target_directory_operand", scope: !1263, file: !1263, line: 34, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1263 = !DIFile(filename: "../lib/targetdir.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!126, !158, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!1267 = distinct !DISubprogram(name: "target_dirfd_valid", scope: !1263, file: !1263, line: 38, type: !1268, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!387, !126}
!1270 = !{!1271}
!1271 = !DILocalVariable(name: "fd", arg: 1, scope: !1267, file: !1263, line: 38, type: !126)
!1272 = !DILocation(line: 0, scope: !1267)
!1273 = !DILocation(line: 40, column: 13, scope: !1267)
!1274 = !DILocation(line: 40, column: 3, scope: !1267)
!1275 = !DISubprogram(name: "renameatu", scope: !1276, file: !1276, line: 28, type: !1277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1276 = !DIFile(filename: "../lib/renameatu.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!126, !126, !158, !126, !158, !83}
!1279 = !DISubprogram(name: "rpl_stat", scope: !1280, file: !1280, line: 1355, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1280 = !DIFile(filename: "./lib/sys/stat.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!126, !544, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1266)
!1284 = !DISubprogram(name: "strip_trailing_slashes", scope: !1285, file: !1285, line: 47, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1285 = !DIFile(filename: "../lib/dirname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!387, !163}
!1288 = !DISubprogram(name: "xget_version", scope: !82, file: !82, line: 61, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!81, !158, !158}
!1291 = !DISubprogram(name: "set_simple_backup_suffix", scope: !82, file: !82, line: 54, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1292 = !DISubprogram(name: "hash_init", scope: !1293, file: !1293, line: 1, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1293 = !DIFile(filename: "../src/cp-hash.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1294 = !DISubprogram(name: "dest_info_init", scope: !90, file: !90, line: 322, type: !1108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1295 = !DISubprogram(name: "last_component", scope: !1296, file: !1296, line: 66, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1296 = !DIFile(filename: "../lib/basename-lgpl.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!163, !158}
!1299 = !DISubprogram(name: "file_name_concat", scope: !1300, file: !1300, line: 24, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1300 = !DIFile(filename: "../lib/filenamecat.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!163, !158, !158, !645}
!1303 = distinct !DISubprogram(name: "do_move", scope: !2, file: !2, line: 168, type: !1304, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1308)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!387, !158, !158, !126, !158, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1320, !1323, !1324}
!1309 = !DILocalVariable(name: "source", arg: 1, scope: !1303, file: !2, line: 168, type: !158)
!1310 = !DILocalVariable(name: "dest", arg: 2, scope: !1303, file: !2, line: 168, type: !158)
!1311 = !DILocalVariable(name: "dest_dirfd", arg: 3, scope: !1303, file: !2, line: 169, type: !126)
!1312 = !DILocalVariable(name: "dest_relname", arg: 4, scope: !1303, file: !2, line: 169, type: !158)
!1313 = !DILocalVariable(name: "x", arg: 5, scope: !1303, file: !2, line: 169, type: !1306)
!1314 = !DILocalVariable(name: "copy_into_self", scope: !1303, file: !2, line: 171, type: !387)
!1315 = !DILocalVariable(name: "rename_succeeded", scope: !1303, file: !2, line: 172, type: !387)
!1316 = !DILocalVariable(name: "ok", scope: !1303, file: !2, line: 173, type: !387)
!1317 = !DILocalVariable(name: "dir_to_remove", scope: !1318, file: !2, line: 178, type: !158)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 177, column: 5)
!1319 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 176, column: 7)
!1320 = !DILocalVariable(name: "rm_options", scope: !1321, file: !2, line: 230, type: !384)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 229, column: 9)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 228, column: 11)
!1323 = !DILocalVariable(name: "status", scope: !1321, file: !2, line: 231, type: !150)
!1324 = !DILocalVariable(name: "dir", scope: !1321, file: !2, line: 232, type: !1325)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !254)
!1326 = !DILocation(line: 0, scope: !1303)
!1327 = !DILocation(line: 171, column: 3, scope: !1303)
!1328 = !DILocation(line: 171, column: 8, scope: !1303)
!1329 = !DILocation(line: 172, column: 3, scope: !1303)
!1330 = !DILocation(line: 172, column: 8, scope: !1303)
!1331 = !DILocation(line: 173, column: 13, scope: !1303)
!1332 = !DILocation(line: 173, column: 8, scope: !1303)
!1333 = !DILocation(line: 176, column: 7, scope: !1319)
!1334 = !DILocation(line: 176, column: 7, scope: !1303)
!1335 = !DILocation(line: 179, column: 11, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 179, column: 11)
!1337 = !{!823, !823, i64 0}
!1338 = !{i8 0, i8 2}
!1339 = !DILocation(line: 179, column: 11, scope: !1318)
!1340 = !DILocation(line: 0, scope: !1318)
!1341 = !DILocation(line: 194, column: 9, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 180, column: 9)
!1343 = !DILocation(line: 195, column: 16, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 195, column: 16)
!1345 = !DILocation(line: 195, column: 16, scope: !1336)
!1346 = !DILocation(line: 200, column: 9, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 196, column: 9)
!1348 = !DILocation(line: 0, scope: !1344)
!1349 = !DILocation(line: 0, scope: !1336)
!1350 = !DILocation(line: 228, column: 25, scope: !1322)
!1351 = !DILocation(line: 228, column: 11, scope: !1318)
!1352 = !DILocation(line: 230, column: 11, scope: !1321)
!1353 = !DILocation(line: 230, column: 29, scope: !1321)
!1354 = !DILocation(line: 232, column: 11, scope: !1321)
!1355 = !DILocation(line: 232, column: 23, scope: !1321)
!1356 = !DILocation(line: 234, column: 11, scope: !1321)
!1357 = !DILocation(line: 235, column: 35, scope: !1321)
!1358 = !DILocation(line: 235, column: 22, scope: !1321)
!1359 = !DILocation(line: 235, column: 30, scope: !1321)
!1360 = !{!1361, !823, i64 26}
!1361 = !{!"rm_options", !823, i64 0, !455, i64 4, !823, i64 8, !823, i64 9, !823, i64 10, !454, i64 16, !823, i64 24, !823, i64 25, !823, i64 26, !823, i64 27}
!1362 = !DILocation(line: 236, column: 11, scope: !1321)
!1363 = !DILocation(line: 236, column: 18, scope: !1321)
!1364 = !DILocation(line: 237, column: 11, scope: !1321)
!1365 = !DILocation(line: 237, column: 18, scope: !1321)
!1366 = !DILocation(line: 239, column: 33, scope: !1321)
!1367 = !DILocation(line: 239, column: 20, scope: !1321)
!1368 = !DILocation(line: 0, scope: !1321)
!1369 = !DILocation(line: 240, column: 11, scope: !1321)
!1370 = !DILocation(line: 241, column: 22, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 241, column: 15)
!1372 = !DILocation(line: 241, column: 15, scope: !1321)
!1373 = !DILocation(line: 242, column: 13, scope: !1371)
!1374 = !DILocation(line: 243, column: 9, scope: !1322)
!1375 = !DILocation(line: 243, column: 9, scope: !1321)
!1376 = !DILocation(line: 244, column: 5, scope: !1318)
!1377 = !DILocation(line: 246, column: 10, scope: !1303)
!1378 = !DILocation(line: 247, column: 1, scope: !1303)
!1379 = !DILocation(line: 246, column: 3, scope: !1303)
!1380 = !DISubprogram(name: "rpl_free", scope: !1381, file: !1381, line: 756, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1381 = !DIFile(filename: "./lib/stdlib.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !160}
!1384 = !DISubprogram(name: "copy", scope: !90, file: !90, line: 306, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!387, !158, !158, !126, !158, !126, !1306, !1387, !1387}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!1388 = !DILocation(line: 0, scope: !380)
!1389 = !DILocation(line: 90, column: 6, scope: !380)
!1390 = !DILocation(line: 90, column: 27, scope: !380)
!1391 = !{!1361, !823, i64 0}
!1392 = !DILocation(line: 91, column: 6, scope: !380)
!1393 = !DILocation(line: 91, column: 31, scope: !380)
!1394 = !{!1361, !823, i64 10}
!1395 = !DILocation(line: 92, column: 6, scope: !380)
!1396 = !DILocation(line: 92, column: 16, scope: !380)
!1397 = !{!1361, !823, i64 9}
!1398 = !DILocation(line: 93, column: 6, scope: !380)
!1399 = !DILocation(line: 93, column: 22, scope: !380)
!1400 = !{!1361, !823, i64 8}
!1401 = !DILocation(line: 97, column: 6, scope: !380)
!1402 = !DILocation(line: 97, column: 18, scope: !380)
!1403 = !{!1361, !455, i64 4}
!1404 = !DILocation(line: 98, column: 6, scope: !380)
!1405 = !DILocation(line: 98, column: 16, scope: !380)
!1406 = !{!1361, !823, i64 25}
!1407 = !DILocation(line: 100, column: 6, scope: !380)
!1408 = !DILocation(line: 100, column: 14, scope: !380)
!1409 = !DILocation(line: 106, column: 6, scope: !380)
!1410 = !DILocation(line: 106, column: 26, scope: !380)
!1411 = !{!1361, !823, i64 27}
!1412 = !DILocation(line: 110, column: 23, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !380, file: !2, line: 108, column: 3)
!1414 = !DILocation(line: 110, column: 8, scope: !1413)
!1415 = !DILocation(line: 110, column: 21, scope: !1413)
!1416 = !{!1361, !454, i64 16}
!1417 = !DILocation(line: 111, column: 12, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 111, column: 9)
!1419 = !DILocation(line: 111, column: 25, scope: !1418)
!1420 = !DILocation(line: 111, column: 9, scope: !1413)
!1421 = !DILocation(line: 112, column: 7, scope: !1418)
!1422 = !DILocation(line: 116, column: 6, scope: !380)
!1423 = !DILocation(line: 116, column: 24, scope: !380)
!1424 = !{!1361, !823, i64 24}
!1425 = !DILocation(line: 117, column: 1, scope: !380)
!1426 = !DISubprogram(name: "rm", scope: !145, file: !145, line: 101, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!150, !1429, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!1433 = !DISubprogram(name: "__assert_rtn", scope: !1434, file: !1434, line: 82, type: !1435, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1434 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/assert.h", directory: "")
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !158, !158, !126, !158}
!1437 = !DISubprogram(name: "get_root_dev_ino", scope: !1438, file: !1438, line: 25, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1438 = !DIFile(filename: "../lib/root-dev-ino.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!393, !393}
!1441 = !DISubprogram(name: "cp_options_default", scope: !90, file: !90, line: 327, type: !1108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1442 = !DISubprogram(name: "isatty", scope: !1443, file: !1443, line: 463, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1443 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/unistd.h", directory: "")
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!126, !126}
