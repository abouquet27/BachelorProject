; ModuleID = 'coreutils-9.3/build/src/shred.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct.Options = type { i8, i64, i64, i32, i8, i8, i8 }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... FILE...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [134 x i8] c"Overwrite the specified FILE(s) repeatedly, in order to make it harder\0Afor even very expensive hardware probing to recover the data.\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"\0AIf FILE is -, shred standard output.\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [262 x i8] c"  -f, --force    change permissions to allow writing if necessary\0A  -n, --iterations=N  overwrite N times instead of the default (%d)\0A      --random-source=FILE  get random bytes from FILE\0A  -s, --size=N   shred this many bytes (suffixes like K, M, G accepted)\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [367 x i8] c"  -u             deallocate and remove file after overwriting\0A      --remove[=HOW]  like -u but give control on HOW to delete;  See below\0A  -v, --verbose  show progress\0A  -x, --exact    do not round file sizes up to the next full block;\0A                   this is the default for non-regular files\0A  -z, --zero     add a final overwrite with zeros to hide shredding\0A\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [481 x i8] c"\0ADelete FILE(s) if --remove (-u) is specified.  The default is not to remove\0Athe files because it is common to operate on device files like /dev/hda,\0Aand those files usually should not be removed.\0AThe optional HOW parameter indicates how to remove a directory entry:\0A'unlink' => use a standard unlink call.\0A'wipe' => also first obfuscate bytes in the name.\0A'wipesync' => also sync each obfuscated byte to the device.\0AThe default mode is 'wipesync', but note it can be expensive.\0A\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [288 x i8] c"CAUTION: shred assumes the file system and hardware overwrite data in place.\0AAlthough this is common, many platforms operate otherwise.  Also, backups\0Aand mirrors may contain unremovable copies that will let a shredded file\0Abe recovered later.  See the GNU coreutils manual for details.\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [6 x i8] c"shred\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !54
@.str.12 = private unnamed_addr constant [10 x i8] c"fn:s:uvxz\00", align 1, !dbg !59
@long_opts = internal constant [11 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.42, i32 0, ptr null, i32 120 }, %struct.rpl_option { ptr @.str.43, i32 0, ptr null, i32 102 }, %struct.rpl_option { ptr @.str.44, i32 1, ptr null, i32 110 }, %struct.rpl_option { ptr @.str.45, i32 1, ptr null, i32 115 }, %struct.rpl_option { ptr @.str.46, i32 1, ptr null, i32 128 }, %struct.rpl_option { ptr @.str.47, i32 2, ptr null, i32 117 }, %struct.rpl_option { ptr @.str.48, i32 0, ptr null, i32 118 }, %struct.rpl_option { ptr @.str.49, i32 0, ptr null, i32 122 }, %struct.rpl_option { ptr @.str.50, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.51, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !64
@rpl_optarg = external global ptr, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"invalid number of passes\00", align 1, !dbg !144
@.str.14 = private unnamed_addr constant [34 x i8] c"multiple random sources specified\00", align 1, !dbg !149
@remove_methods = internal constant [3 x i32] [i32 1, i32 2, i32 3], align 4, !dbg !296
@.str.15 = private unnamed_addr constant [9 x i8] c"--remove\00", align 1, !dbg !154
@remove_args = internal constant [4 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr null], align 16, !dbg !306
@argmatch_die = external global ptr, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c"cbBkKMGTPEZYRQ0\00", align 1, !dbg !159
@.str.17 = private unnamed_addr constant [18 x i8] c"invalid file size\00", align 1, !dbg !164
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !169
@Version = external global ptr, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"Colin Plumb\00", align 1, !dbg !174
@rpl_optind = external global i32, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1, !dbg !179
@randint_source = internal global ptr null, align 8, !dbg !196
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !184
@.str.22 = private unnamed_addr constant [10 x i8] c"getrandom\00", align 1, !dbg !189
@.str.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !191
@.str.24 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !201
@.str.25 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !206
@.str.26 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !208
@.str.27 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !210
@.str.28 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !212
@.str.29 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !217
@.str.30 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !219
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !224
@.str.32 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !226
@.str.33 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !228
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.25, ptr @.str.26 }, %struct.infomap { ptr @.str.27, ptr @.str.28 }, %struct.infomap { ptr @.str.29, ptr @.str.30 }, %struct.infomap { ptr @.str.31, ptr @.str.30 }, %struct.infomap { ptr @.str.32, ptr @.str.30 }, %struct.infomap { ptr @.str.33, ptr @.str.30 }, %struct.infomap zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !230
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !235
@.str.36 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !240
@.str.37 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !245
@.str.38 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !250
@.str.39 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !255
@.str.40 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !260
@.str.41 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !265
@.str.42 = private unnamed_addr constant [6 x i8] c"exact\00", align 1, !dbg !267
@.str.43 = private unnamed_addr constant [6 x i8] c"force\00", align 1, !dbg !269
@.str.44 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1, !dbg !271
@.str.45 = private unnamed_addr constant [5 x i8] c"size\00", align 1, !dbg !276
@.str.46 = private unnamed_addr constant [14 x i8] c"random-source\00", align 1, !dbg !278
@.str.47 = private unnamed_addr constant [7 x i8] c"remove\00", align 1, !dbg !280
@.str.48 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !285
@.str.49 = private unnamed_addr constant [5 x i8] c"zero\00", align 1, !dbg !290
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !292
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !294
@.str.52 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1, !dbg !300
@.str.53 = private unnamed_addr constant [5 x i8] c"wipe\00", align 1, !dbg !302
@.str.54 = private unnamed_addr constant [9 x i8] c"wipesync\00", align 1, !dbg !304
@.str.55 = private unnamed_addr constant [17 x i8] c"%s: fcntl failed\00", align 1, !dbg !310
@.str.56 = private unnamed_addr constant [45 x i8] c"%s: cannot shred append-only file descriptor\00", align 1, !dbg !315
@.str.57 = private unnamed_addr constant [17 x i8] c"%s: fstat failed\00", align 1, !dbg !320
@.str.58 = private unnamed_addr constant [22 x i8] c"%s: invalid file type\00", align 1, !dbg !322
@.str.59 = private unnamed_addr constant [27 x i8] c"%s: file has negative size\00", align 1, !dbg !324
@.str.60 = private unnamed_addr constant [21 x i8] c"%s: error truncating\00", align 1, !dbg !326
@patterns = internal constant [55 x i32] [i32 -2, i32 2, i32 0, i32 4095, i32 2, i32 1365, i32 2730, i32 -1, i32 6, i32 585, i32 1170, i32 1755, i32 2340, i32 2925, i32 3510, i32 12, i32 273, i32 546, i32 819, i32 1092, i32 1638, i32 1911, i32 2184, i32 2457, i32 3003, i32 3276, i32 3549, i32 3822, i32 -1, i32 8, i32 4096, i32 4681, i32 5266, i32 5851, i32 6436, i32 7021, i32 7606, i32 8191, i32 14, i32 4369, i32 4642, i32 4915, i32 5188, i32 5461, i32 5734, i32 6007, i32 6280, i32 6553, i32 6826, i32 7099, i32 7372, i32 7645, i32 7918, i32 -1, i32 0], align 16, !dbg !328
@.str.61 = private unnamed_addr constant [18 x i8] c"%s: cannot rewind\00", align 1, !dbg !334
@.str.62 = private unnamed_addr constant [25 x i8] c"%s: pass %lu/%lu (%s)...\00", align 1, !dbg !336
@.str.63 = private unnamed_addr constant [31 x i8] c"%s: error writing at offset %s\00", align 1, !dbg !338
@.str.64 = private unnamed_addr constant [17 x i8] c"%s: lseek failed\00", align 1, !dbg !340
@.str.65 = private unnamed_addr constant [19 x i8] c"%s: file too large\00", align 1, !dbg !342
@.str.66 = private unnamed_addr constant [27 x i8] c"%s: pass %lu/%lu (%s)...%s\00", align 1, !dbg !347
@.str.67 = private unnamed_addr constant [35 x i8] c"%s: pass %lu/%lu (%s)...%s/%s %d%%\00", align 1, !dbg !349
@.str.68 = private unnamed_addr constant [13 x i8] c"%02x%02x%02x\00", align 1, !dbg !354
@.str.69 = private unnamed_addr constant [7 x i8] c"random\00", align 1, !dbg !359
@.str.70 = private unnamed_addr constant [21 x i8] c"%s: fdatasync failed\00", align 1, !dbg !361
@.str.71 = private unnamed_addr constant [17 x i8] c"%s: fsync failed\00", align 1, !dbg !363
@.str.72 = private unnamed_addr constant [31 x i8] c"%s: failed to open for writing\00", align 1, !dbg !365
@.str.73 = private unnamed_addr constant [20 x i8] c"%s: failed to close\00", align 1, !dbg !367
@.str.74 = private unnamed_addr constant [13 x i8] c"%s: removing\00", align 1, !dbg !372
@nameset = internal constant [65 x i8] c"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_.\00", align 16, !dbg !380
@.str.75 = private unnamed_addr constant [18 x i8] c"%s: renamed to %s\00", align 1, !dbg !374
@.str.76 = private unnamed_addr constant [21 x i8] c"%s: failed to remove\00", align 1, !dbg !376
@.str.77 = private unnamed_addr constant [12 x i8] c"%s: removed\00", align 1, !dbg !378
@__func__.incname = private unnamed_addr constant [8 x i8] c"incname\00", align 1, !dbg !385
@.str.78 = private unnamed_addr constant [8 x i8] c"shred.c\00", align 1, !dbg !388
@.str.79 = private unnamed_addr constant [2 x i8] c"p\00", align 1, !dbg !390

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !409 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !413, metadata !DIExpression()), !dbg !414
  %2 = icmp ne i32 %0, 0, !dbg !415
  br i1 %2, label %3, label %9, !dbg !417

3:                                                ; preds = %1
  br label %4, !dbg !418

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !419, !tbaa !421
  %6 = load ptr, ptr @program_name, align 8, !dbg !419, !tbaa !421
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !419
  br label %8, !dbg !419

8:                                                ; preds = %4
  br label %27, !dbg !419

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !425, !tbaa !421
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !427
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !428, !tbaa !421
  %13 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %12), !dbg !429
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !430, !tbaa !421
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %14), !dbg !431
  call void @emit_mandatory_arg_note(), !dbg !432
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef 3), !dbg !433
  %17 = load ptr, ptr @__stdoutp, align 8, !dbg !434, !tbaa !421
  %18 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %17), !dbg !435
  %19 = load ptr, ptr @__stdoutp, align 8, !dbg !436, !tbaa !421
  %20 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %19), !dbg !437
  %21 = load ptr, ptr @__stdoutp, align 8, !dbg !438, !tbaa !421
  %22 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %21), !dbg !439
  %23 = load ptr, ptr @__stdoutp, align 8, !dbg !440, !tbaa !421
  %24 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %23), !dbg !441
  %25 = load ptr, ptr @__stdoutp, align 8, !dbg !442, !tbaa !421
  %26 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %25), !dbg !443
  call void @emit_ancillary_info(ptr noundef @.str.10), !dbg !444
  br label %27

27:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #15, !dbg !445
  unreachable, !dbg !445
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !446 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !502 i32 @printf(ptr noundef, ...) #2

declare !dbg !505 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !508 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !511, !tbaa !421
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.24, ptr noundef %1), !dbg !512
  ret void, !dbg !513
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !514 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !518, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #16, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %2, metadata !519, metadata !DIExpression()), !dbg !533
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !533
  call void @llvm.dbg.value(metadata ptr %0, metadata !526, metadata !DIExpression()), !dbg !531
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !534
  call void @llvm.dbg.value(metadata ptr %3, metadata !527, metadata !DIExpression()), !dbg !531
  br label %4, !dbg !535

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !531
  call void @llvm.dbg.value(metadata ptr %.0, metadata !527, metadata !DIExpression()), !dbg !531
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !536
  %6 = load ptr, ptr %5, align 8, !dbg !536, !tbaa !537
  %7 = icmp ne ptr %6, null, !dbg !539
  br i1 %7, label %8, label %14, !dbg !540

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !541
  %10 = load ptr, ptr %9, align 8, !dbg !541, !tbaa !537
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !541
  %12 = icmp eq i32 %11, 0, !dbg !541
  %13 = xor i1 %12, true, !dbg !542
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !531
  br i1 %15, label %16, label %18, !dbg !535

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !543
  call void @llvm.dbg.value(metadata ptr %17, metadata !527, metadata !DIExpression()), !dbg !531
  br label %4, !dbg !535, !llvm.loop !544

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !547
  %20 = load ptr, ptr %19, align 8, !dbg !547, !tbaa !549
  %21 = icmp ne ptr %20, null, !dbg !550
  br i1 %21, label %22, label %25, !dbg !551

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !552
  %24 = load ptr, ptr %23, align 8, !dbg !552, !tbaa !549
  call void @llvm.dbg.value(metadata ptr %24, metadata !526, metadata !DIExpression()), !dbg !531
  br label %25, !dbg !553

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !531
  call void @llvm.dbg.value(metadata ptr %.01, metadata !526, metadata !DIExpression()), !dbg !531
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, ptr noundef @.str.18, ptr noundef @.str.35), !dbg !554
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !555
  call void @llvm.dbg.value(metadata ptr %27, metadata !529, metadata !DIExpression()), !dbg !531
  %28 = icmp ne ptr %27, null, !dbg !556
  br i1 %28, label %29, label %35, !dbg !558

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.36, i64 noundef 3), !dbg !559
  %31 = icmp ne i32 %30, 0, !dbg !559
  br i1 %31, label %32, label %35, !dbg !560

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !561, !tbaa !421
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.37, ptr noundef %33), !dbg !563
  br label %35, !dbg !564

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.25), !dbg !565
  %37 = icmp eq i32 %36, 0, !dbg !565
  br i1 %37, label %38, label %39, !dbg !565

38:                                               ; preds = %35
  br label %40, !dbg !565

39:                                               ; preds = %35
  br label %40, !dbg !565

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.38, %38 ], [ %0, %39 ], !dbg !565
  call void @llvm.dbg.value(metadata ptr %41, metadata !530, metadata !DIExpression()), !dbg !531
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.39, ptr noundef @.str.35, ptr noundef %41), !dbg !566
  %43 = icmp eq ptr %.01, %0, !dbg !567
  %44 = zext i1 %43 to i64, !dbg !568
  %45 = select i1 %43, ptr @.str.41, ptr @.str.11, !dbg !568
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.40, ptr noundef %.01, ptr noundef %45), !dbg !569
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #16, !dbg !570
  ret void, !dbg !570
}

; Function Attrs: noreturn
declare !dbg !571 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !573 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !577 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !581 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !584 {
  %3 = alloca %struct.Options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !589, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata ptr %1, metadata !590, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()), !dbg !612
  call void @llvm.lifetime.start.p0(i64 32, ptr %3) #16, !dbg !613
  call void @llvm.dbg.declare(metadata ptr %3, metadata !593, metadata !DIExpression()), !dbg !614
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 32, i1 false), !dbg !614
  call void @llvm.dbg.value(metadata ptr null, metadata !607, metadata !DIExpression()), !dbg !612
  %4 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !615
  %5 = load ptr, ptr %4, align 8, !dbg !615, !tbaa !421
  call void @set_program_name(ptr noundef %5), !dbg !616
  %6 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.11), !dbg !617
  %7 = call i32 @atexit(ptr noundef @close_stdout), !dbg !618
  %8 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 1, !dbg !619
  store i64 3, ptr %8, align 8, !dbg !620, !tbaa !621
  %9 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 2, !dbg !626
  store i64 -1, ptr %9, align 8, !dbg !627, !tbaa !628
  br label %10, !dbg !629

10:                                               ; preds = %57, %2
  %.0 = phi ptr [ null, %2 ], [ %.1, %57 ], !dbg !630
  call void @llvm.dbg.value(metadata ptr %.0, metadata !607, metadata !DIExpression()), !dbg !612
  %11 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.12, ptr noundef @long_opts, ptr noundef null), !dbg !631
  call void @llvm.dbg.value(metadata i32 %11, metadata !605, metadata !DIExpression()), !dbg !612
  %12 = icmp ne i32 %11, -1, !dbg !632
  br i1 %12, label %13, label %58, !dbg !629

13:                                               ; preds = %10
  switch i32 %11, label %56 [
    i32 102, label %14
    i32 110, label %16
    i32 128, label %20
    i32 117, label %29
    i32 115, label %42
    i32 118, label %46
    i32 120, label %48
    i32 122, label %50
    i32 -130, label %52
    i32 -131, label %53
  ], !dbg !633

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 0, !dbg !635
  store i8 1, ptr %15, align 8, !dbg !637, !tbaa !638
  br label %57, !dbg !639

16:                                               ; preds = %13
  %17 = load ptr, ptr @rpl_optarg, align 8, !dbg !640, !tbaa !421
  %18 = call i64 @xdectoumax(ptr noundef %17, i64 noundef 0, i64 noundef 4611686018427387903, ptr noundef @.str.11, ptr noundef @.str.13, i32 noundef 0), !dbg !641
  %19 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 1, !dbg !642
  store i64 %18, ptr %19, align 8, !dbg !643, !tbaa !621
  br label %57, !dbg !644

20:                                               ; preds = %13
  %21 = icmp ne ptr %.0, null, !dbg !645
  br i1 %21, label %22, label %27, !dbg !647

22:                                               ; preds = %20
  %23 = load ptr, ptr @rpl_optarg, align 8, !dbg !648, !tbaa !421
  %24 = call i32 @strcmp(ptr noundef %.0, ptr noundef %23), !dbg !648
  %25 = icmp eq i32 %24, 0, !dbg !648
  br i1 %25, label %27, label %26, !dbg !649

26:                                               ; preds = %22
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.14), !dbg !650
  unreachable, !dbg !650

27:                                               ; preds = %22, %20
  %28 = load ptr, ptr @rpl_optarg, align 8, !dbg !651, !tbaa !421
  call void @llvm.dbg.value(metadata ptr %28, metadata !607, metadata !DIExpression()), !dbg !612
  br label %57, !dbg !652

29:                                               ; preds = %13
  %30 = load ptr, ptr @rpl_optarg, align 8, !dbg !653, !tbaa !421
  %31 = icmp eq ptr %30, null, !dbg !655
  br i1 %31, label %32, label %34, !dbg !656

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 3, !dbg !657
  store i32 3, ptr %33, align 8, !dbg !658, !tbaa !659
  br label %41, !dbg !660

34:                                               ; preds = %29
  %35 = load ptr, ptr @rpl_optarg, align 8, !dbg !661, !tbaa !421
  %36 = load ptr, ptr @argmatch_die, align 8, !dbg !661, !tbaa !421
  %37 = call i64 @__xargmatch_internal(ptr noundef @.str.15, ptr noundef %35, ptr noundef @remove_args, ptr noundef @remove_methods, i64 noundef 4, ptr noundef %36, i1 noundef zeroext true), !dbg !661
  %38 = getelementptr inbounds [3 x i32], ptr @remove_methods, i64 0, i64 %37, !dbg !661
  %39 = load i32, ptr %38, align 4, !dbg !661, !tbaa !662
  %40 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 3, !dbg !663
  store i32 %39, ptr %40, align 8, !dbg !664, !tbaa !659
  br label %41

41:                                               ; preds = %34, %32
  br label %57, !dbg !665

42:                                               ; preds = %13
  %43 = load ptr, ptr @rpl_optarg, align 8, !dbg !666, !tbaa !421
  %44 = call i64 @xnumtoumax(ptr noundef %43, i32 noundef 0, i64 noundef 0, i64 noundef 9223372036854775807, ptr noundef @.str.16, ptr noundef @.str.17, i32 noundef 0), !dbg !667
  %45 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 2, !dbg !668
  store i64 %44, ptr %45, align 8, !dbg !669, !tbaa !628
  br label %57, !dbg !670

46:                                               ; preds = %13
  %47 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 4, !dbg !671
  store i8 1, ptr %47, align 4, !dbg !672, !tbaa !673
  br label %57, !dbg !674

48:                                               ; preds = %13
  %49 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 5, !dbg !675
  store i8 1, ptr %49, align 1, !dbg !676, !tbaa !677
  br label %57, !dbg !678

50:                                               ; preds = %13
  %51 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 6, !dbg !679
  store i8 1, ptr %51, align 2, !dbg !680, !tbaa !681
  br label %57, !dbg !682

52:                                               ; preds = %13
  call void @usage(i32 noundef 0) #15, !dbg !683
  unreachable, !dbg !683

53:                                               ; preds = %13
  %54 = load ptr, ptr @__stdoutp, align 8, !dbg !684, !tbaa !421
  %55 = load ptr, ptr @Version, align 8, !dbg !684, !tbaa !421
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %54, ptr noundef @.str.10, ptr noundef @.str.18, ptr noundef %55, ptr noundef @.str.19, ptr noundef null), !dbg !684
  call void @exit(i32 noundef 0) #15, !dbg !684
  unreachable, !dbg !684

56:                                               ; preds = %13
  call void @usage(i32 noundef 1) #15, !dbg !685
  unreachable, !dbg !685

57:                                               ; preds = %50, %48, %46, %42, %41, %27, %16, %14
  %.1 = phi ptr [ %.0, %50 ], [ %.0, %48 ], [ %.0, %46 ], [ %.0, %42 ], [ %.0, %41 ], [ %28, %27 ], [ %.0, %16 ], [ %.0, %14 ], !dbg !612
  call void @llvm.dbg.value(metadata ptr %.1, metadata !607, metadata !DIExpression()), !dbg !612
  br label %10, !dbg !629, !llvm.loop !686

58:                                               ; preds = %10
  %59 = load i32, ptr @rpl_optind, align 4, !dbg !688, !tbaa !689
  %60 = sext i32 %59 to i64, !dbg !691
  %61 = getelementptr inbounds ptr, ptr %1, i64 %60, !dbg !691
  call void @llvm.dbg.value(metadata ptr %61, metadata !603, metadata !DIExpression()), !dbg !612
  %62 = load i32, ptr @rpl_optind, align 4, !dbg !692, !tbaa !689
  %63 = sub nsw i32 %0, %62, !dbg !693
  call void @llvm.dbg.value(metadata i32 %63, metadata !604, metadata !DIExpression()), !dbg !612
  %64 = icmp eq i32 %63, 0, !dbg !694
  br i1 %64, label %65, label %66, !dbg !696

65:                                               ; preds = %58
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.20), !dbg !697
  call void @usage(i32 noundef 1) #15, !dbg !699
  unreachable, !dbg !699

66:                                               ; preds = %58
  %67 = call noalias ptr @randint_all_new(ptr noundef %.0, i64 noundef -1), !dbg !700
  store ptr %67, ptr @randint_source, align 8, !dbg !701, !tbaa !421
  %68 = load ptr, ptr @randint_source, align 8, !dbg !702, !tbaa !421
  %69 = icmp ne ptr %68, null, !dbg !702
  br i1 %69, label %79, label %70, !dbg !704

70:                                               ; preds = %66
  %71 = call ptr @__error(), !dbg !705
  %72 = load i32, ptr %71, align 4, !dbg !705, !tbaa !689
  %73 = icmp ne ptr %.0, null, !dbg !705
  br i1 %73, label %74, label %75, !dbg !705

74:                                               ; preds = %70
  br label %76, !dbg !705

75:                                               ; preds = %70
  br label %76, !dbg !705

76:                                               ; preds = %75, %74
  %77 = phi ptr [ %.0, %74 ], [ @.str.22, %75 ], !dbg !705
  %78 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %77), !dbg !705
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %72, ptr noundef @.str.21, ptr noundef %78), !dbg !705
  unreachable, !dbg !705

79:                                               ; preds = %66
  %80 = call i32 @atexit(ptr noundef @clear_random_data), !dbg !706
  call void @llvm.dbg.value(metadata i32 0, metadata !606, metadata !DIExpression()), !dbg !612
  br label %81, !dbg !707

81:                                               ; preds = %116, %79
  %.02 = phi i8 [ 1, %79 ], [ %.13, %116 ], !dbg !612
  %.01 = phi i32 [ 0, %79 ], [ %117, %116 ], !dbg !708
  call void @llvm.dbg.value(metadata i32 %.01, metadata !606, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i8 %.02, metadata !591, metadata !DIExpression()), !dbg !612
  %82 = icmp slt i32 %.01, %63, !dbg !709
  br i1 %82, label %83, label %118, !dbg !710

83:                                               ; preds = %81
  %84 = sext i32 %.01 to i64, !dbg !711
  %85 = getelementptr inbounds ptr, ptr %61, i64 %84, !dbg !711
  %86 = load ptr, ptr %85, align 8, !dbg !711, !tbaa !421
  %87 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %86), !dbg !711
  %88 = call noalias nonnull ptr @xstrdup(ptr noundef %87), !dbg !712
  call void @llvm.dbg.value(metadata ptr %88, metadata !608, metadata !DIExpression()), !dbg !713
  %89 = sext i32 %.01 to i64, !dbg !714
  %90 = getelementptr inbounds ptr, ptr %61, i64 %89, !dbg !714
  %91 = load ptr, ptr %90, align 8, !dbg !714, !tbaa !421
  %92 = call i32 @strcmp(ptr noundef %91, ptr noundef @.str.23), !dbg !714
  %93 = icmp eq i32 %92, 0, !dbg !714
  br i1 %93, label %94, label %103, !dbg !716

94:                                               ; preds = %83
  %95 = load ptr, ptr @randint_source, align 8, !dbg !717, !tbaa !421
  %96 = call zeroext i1 @wipefd(i32 noundef 1, ptr noundef %88, ptr noundef %95, ptr noundef %3), !dbg !719
  %97 = zext i1 %96 to i32, !dbg !719
  %98 = trunc i8 %.02 to i1, !dbg !720
  %99 = zext i1 %98 to i32, !dbg !720
  %100 = and i32 %99, %97, !dbg !720
  %101 = icmp ne i32 %100, 0, !dbg !720
  %102 = zext i1 %101 to i8, !dbg !720
  call void @llvm.dbg.value(metadata i8 %102, metadata !591, metadata !DIExpression()), !dbg !612
  br label %115, !dbg !721

103:                                              ; preds = %83
  %104 = sext i32 %.01 to i64, !dbg !722
  %105 = getelementptr inbounds ptr, ptr %61, i64 %104, !dbg !722
  %106 = load ptr, ptr %105, align 8, !dbg !722, !tbaa !421
  %107 = load ptr, ptr @randint_source, align 8, !dbg !724, !tbaa !421
  %108 = call zeroext i1 @wipefile(ptr noundef %106, ptr noundef %88, ptr noundef %107, ptr noundef %3), !dbg !725
  %109 = zext i1 %108 to i32, !dbg !725
  %110 = trunc i8 %.02 to i1, !dbg !726
  %111 = zext i1 %110 to i32, !dbg !726
  %112 = and i32 %111, %109, !dbg !726
  %113 = icmp ne i32 %112, 0, !dbg !726
  %114 = zext i1 %113 to i8, !dbg !726
  call void @llvm.dbg.value(metadata i8 %114, metadata !591, metadata !DIExpression()), !dbg !612
  br label %115

115:                                              ; preds = %103, %94
  %.13 = phi i8 [ %102, %94 ], [ %114, %103 ], !dbg !727
  call void @llvm.dbg.value(metadata i8 %.13, metadata !591, metadata !DIExpression()), !dbg !612
  call void @rpl_free(ptr noundef %88), !dbg !728
  br label %116, !dbg !729

116:                                              ; preds = %115
  %117 = add nsw i32 %.01, 1, !dbg !730
  call void @llvm.dbg.value(metadata i32 %117, metadata !606, metadata !DIExpression()), !dbg !612
  br label %81, !dbg !731, !llvm.loop !732

118:                                              ; preds = %81
  %119 = trunc i8 %.02 to i1, !dbg !734
  %120 = zext i1 %119 to i64, !dbg !734
  %121 = select i1 %119, i32 0, i32 1, !dbg !734
  call void @llvm.lifetime.end.p0(i64 32, ptr %3) #16, !dbg !735
  ret i32 %121, !dbg !736
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare !dbg !737 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !739 i32 @atexit(ptr noundef) #2

declare !dbg !743 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !747 i64 @xdectoumax(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !751 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !755 i64 @__xargmatch_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #2

declare !dbg !764 i64 @xnumtoumax(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !767 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !771 noalias ptr @randint_all_new(ptr noundef, i64 noundef) #2

declare !dbg !774 ptr @__error() #2

declare !dbg !778 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @clear_random_data() #7 !dbg !781 {
  %1 = load ptr, ptr @randint_source, align 8, !dbg !782, !tbaa !421
  %2 = call i32 @randint_all_free(ptr noundef %1), !dbg !783
  ret void, !dbg !784
}

declare !dbg !785 noalias nonnull ptr @xstrdup(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @wipefd(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 !dbg !789 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !795, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %1, metadata !796, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %2, metadata !797, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %3, metadata !798, metadata !DIExpression()), !dbg !800
  %5 = call i32 (i32, i32, ...) @"\01_fcntl"(i32 noundef %0, i32 noundef 3), !dbg !801
  call void @llvm.dbg.value(metadata i32 %5, metadata !799, metadata !DIExpression()), !dbg !800
  %6 = icmp slt i32 %5, 0, !dbg !802
  br i1 %6, label %7, label %10, !dbg !804

7:                                                ; preds = %4
  %8 = call ptr @__error(), !dbg !805
  %9 = load i32, ptr %8, align 4, !dbg !805, !tbaa !689
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %9, ptr noundef @.str.55, ptr noundef %1), !dbg !807
  br label %16, !dbg !808

10:                                               ; preds = %4
  %11 = and i32 %5, 8, !dbg !809
  %12 = icmp ne i32 %11, 0, !dbg !809
  br i1 %12, label %13, label %14, !dbg !811

13:                                               ; preds = %10
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.56, ptr noundef %1), !dbg !812
  br label %16, !dbg !814

14:                                               ; preds = %10
  %15 = call zeroext i1 @do_wipefd(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3), !dbg !815
  br label %16, !dbg !816

16:                                               ; preds = %14, %13, %7
  %.0 = phi i1 [ false, %7 ], [ false, %13 ], [ %15, %14 ], !dbg !800
  ret i1 %.0, !dbg !817
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @wipefile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 !dbg !818 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !822, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata ptr %1, metadata !823, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata ptr %2, metadata !824, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata ptr %3, metadata !825, metadata !DIExpression()), !dbg !828
  %5 = call i32 (ptr, i32, ...) @open_safer(ptr noundef %0, i32 noundef 131073), !dbg !829
  call void @llvm.dbg.value(metadata i32 %5, metadata !827, metadata !DIExpression()), !dbg !828
  %6 = icmp slt i32 %5, 0, !dbg !830
  br i1 %6, label %7, label %20, !dbg !832

7:                                                ; preds = %4
  %8 = call ptr @__error(), !dbg !833
  %9 = load i32, ptr %8, align 4, !dbg !833, !tbaa !689
  %10 = icmp eq i32 %9, 13, !dbg !834
  br i1 %10, label %11, label %20, !dbg !835

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 0, !dbg !836
  %13 = load i8, ptr %12, align 8, !dbg !836, !tbaa !638, !range !837, !noundef !501
  %14 = trunc i8 %13 to i1, !dbg !836
  br i1 %14, label %15, label %20, !dbg !838

15:                                               ; preds = %11
  %16 = call i32 @"\01_chmod"(ptr noundef %0, i16 noundef zeroext 128), !dbg !839
  %17 = icmp eq i32 %16, 0, !dbg !840
  br i1 %17, label %18, label %20, !dbg !841

18:                                               ; preds = %15
  %19 = call i32 (ptr, i32, ...) @open_safer(ptr noundef %0, i32 noundef 131073), !dbg !842
  call void @llvm.dbg.value(metadata i32 %19, metadata !827, metadata !DIExpression()), !dbg !828
  br label %20, !dbg !843

20:                                               ; preds = %18, %15, %11, %7, %4
  %.01 = phi i32 [ %19, %18 ], [ %5, %15 ], [ %5, %11 ], [ %5, %7 ], [ %5, %4 ], !dbg !828
  call void @llvm.dbg.value(metadata i32 %.01, metadata !827, metadata !DIExpression()), !dbg !828
  %21 = icmp slt i32 %.01, 0, !dbg !844
  br i1 %21, label %22, label %25, !dbg !846

22:                                               ; preds = %20
  %23 = call ptr @__error(), !dbg !847
  %24 = load i32, ptr %23, align 4, !dbg !847, !tbaa !689
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %24, ptr noundef @.str.72, ptr noundef %1), !dbg !849
  br label %44, !dbg !850

25:                                               ; preds = %20
  %26 = call zeroext i1 @do_wipefd(i32 noundef %.01, ptr noundef %1, ptr noundef %2, ptr noundef %3), !dbg !851
  %27 = zext i1 %26 to i8, !dbg !852
  call void @llvm.dbg.value(metadata i8 %27, metadata !826, metadata !DIExpression()), !dbg !828
  %28 = call i32 @"\01_close"(i32 noundef %.01), !dbg !853
  %29 = icmp ne i32 %28, 0, !dbg !855
  br i1 %29, label %30, label %33, !dbg !856

30:                                               ; preds = %25
  %31 = call ptr @__error(), !dbg !857
  %32 = load i32, ptr %31, align 4, !dbg !857, !tbaa !689
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %32, ptr noundef @.str.73, ptr noundef %1), !dbg !859
  call void @llvm.dbg.value(metadata i8 0, metadata !826, metadata !DIExpression()), !dbg !828
  br label %33, !dbg !860

33:                                               ; preds = %30, %25
  %.02 = phi i8 [ 0, %30 ], [ %27, %25 ], !dbg !828
  call void @llvm.dbg.value(metadata i8 %.02, metadata !826, metadata !DIExpression()), !dbg !828
  %34 = trunc i8 %.02 to i1, !dbg !861
  br i1 %34, label %35, label %42, !dbg !863

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 3, !dbg !864
  %37 = load i32, ptr %36, align 8, !dbg !864, !tbaa !659
  %38 = icmp ne i32 %37, 0, !dbg !865
  br i1 %38, label %39, label %42, !dbg !866

39:                                               ; preds = %35
  %40 = call zeroext i1 @wipename(ptr noundef %0, ptr noundef %1, ptr noundef %3), !dbg !867
  %41 = zext i1 %40 to i8, !dbg !868
  call void @llvm.dbg.value(metadata i8 %41, metadata !826, metadata !DIExpression()), !dbg !828
  br label %42, !dbg !869

42:                                               ; preds = %39, %35, %33
  %.1 = phi i8 [ %41, %39 ], [ %.02, %35 ], [ %.02, %33 ], !dbg !828
  call void @llvm.dbg.value(metadata i8 %.1, metadata !826, metadata !DIExpression()), !dbg !828
  %43 = trunc i8 %.1 to i1, !dbg !870
  br label %44, !dbg !871

44:                                               ; preds = %42, %22
  %.0 = phi i1 [ false, %22 ], [ %43, %42 ], !dbg !828
  ret i1 %.0, !dbg !872
}

declare !dbg !873 void @rpl_free(ptr noundef) #2

declare !dbg !877 i32 @open_safer(ptr noundef, i32 noundef, ...) #2

declare !dbg !881 i32 @"\01_chmod"(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @do_wipefd(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 !dbg !890 {
  %5 = alloca %struct.stat, align 8
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !892, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %1, metadata !893, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %2, metadata !894, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %3, metadata !895, metadata !DIExpression()), !dbg !975
  call void @llvm.lifetime.start.p0(i64 144, ptr %5) #16, !dbg !976
  call void @llvm.dbg.declare(metadata ptr %5, metadata !897, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i64 0, metadata !948, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i8 1, metadata !951, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 0, metadata !949, metadata !DIExpression()), !dbg !975
  %7 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 4, !dbg !978
  %8 = load i8, ptr %7, align 4, !dbg !978, !tbaa !673, !range !837, !noundef !501
  %9 = trunc i8 %8 to i1, !dbg !978
  br i1 %9, label %10, label %18, !dbg !980

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 1, !dbg !981
  %12 = load i64, ptr %11, align 8, !dbg !981, !tbaa !621
  %13 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 6, !dbg !982
  %14 = load i8, ptr %13, align 2, !dbg !982, !tbaa !681, !range !837, !noundef !501
  %15 = trunc i8 %14 to i1, !dbg !982
  %16 = zext i1 %15 to i64, !dbg !983
  %17 = add i64 %12, %16, !dbg !984
  call void @llvm.dbg.value(metadata i64 %17, metadata !949, metadata !DIExpression()), !dbg !975
  br label %18, !dbg !985

18:                                               ; preds = %10, %4
  %.020 = phi i64 [ %17, %10 ], [ 0, %4 ], !dbg !975
  call void @llvm.dbg.value(metadata i64 %.020, metadata !949, metadata !DIExpression()), !dbg !975
  %19 = call i32 @"\01_fstat$INODE64"(i32 noundef %0, ptr noundef %5), !dbg !986
  %20 = icmp ne i32 %19, 0, !dbg !986
  br i1 %20, label %21, label %24, !dbg !988

21:                                               ; preds = %18
  %22 = call ptr @__error(), !dbg !989
  %23 = load i32, ptr %22, align 4, !dbg !989, !tbaa !689
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %23, ptr noundef @.str.57, ptr noundef %1), !dbg !991
  br label %264, !dbg !992

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 1, !dbg !993
  %26 = load i16, ptr %25, align 4, !dbg !993, !tbaa !995
  %27 = zext i16 %26 to i32, !dbg !993
  %28 = and i32 %27, 61440, !dbg !993
  %29 = icmp eq i32 %28, 8192, !dbg !993
  br i1 %29, label %30, label %33, !dbg !999

30:                                               ; preds = %24
  %31 = call i32 @isatty(i32 noundef %0), !dbg !1000
  %32 = icmp ne i32 %31, 0, !dbg !1000
  br i1 %32, label %45, label %33, !dbg !1001

33:                                               ; preds = %30, %24
  %34 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 1, !dbg !1002
  %35 = load i16, ptr %34, align 4, !dbg !1002, !tbaa !995
  %36 = zext i16 %35 to i32, !dbg !1002
  %37 = and i32 %36, 61440, !dbg !1002
  %38 = icmp eq i32 %37, 4096, !dbg !1002
  br i1 %38, label %45, label %39, !dbg !1003

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 1, !dbg !1004
  %41 = load i16, ptr %40, align 4, !dbg !1004, !tbaa !995
  %42 = zext i16 %41 to i32, !dbg !1004
  %43 = and i32 %42, 61440, !dbg !1004
  %44 = icmp eq i32 %43, 49152, !dbg !1004
  br i1 %44, label %45, label %46, !dbg !1005

45:                                               ; preds = %39, %33, %30
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.58, ptr noundef %1), !dbg !1006
  br label %264, !dbg !1008

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 1, !dbg !1009
  %48 = load i16, ptr %47, align 4, !dbg !1009, !tbaa !995
  %49 = zext i16 %48 to i32, !dbg !1009
  %50 = and i32 %49, 61440, !dbg !1009
  %51 = icmp eq i32 %50, 32768, !dbg !1009
  br i1 %51, label %52, label %57, !dbg !1011

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 11, !dbg !1012
  %54 = load i64, ptr %53, align 8, !dbg !1012, !tbaa !1013
  %55 = icmp slt i64 %54, 0, !dbg !1014
  br i1 %55, label %56, label %57, !dbg !1015

56:                                               ; preds = %52
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.59, ptr noundef %1), !dbg !1016
  br label %264, !dbg !1018

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 1, !dbg !1019
  %60 = load i64, ptr %59, align 8, !dbg !1019, !tbaa !621
  %61 = call noalias nonnull ptr @xnmalloc(i64 noundef %60, i64 noundef 4) #17, !dbg !1020
  call void @llvm.dbg.value(metadata ptr %61, metadata !950, metadata !DIExpression()), !dbg !975
  %62 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 2, !dbg !1021
  %63 = load i64, ptr %62, align 8, !dbg !1021, !tbaa !628
  call void @llvm.dbg.value(metadata i64 %63, metadata !947, metadata !DIExpression()), !dbg !975
  %64 = icmp eq i64 %63, -1, !dbg !1022
  br i1 %64, label %65, label %148, !dbg !1023

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 1, !dbg !1024
  %67 = load i16, ptr %66, align 4, !dbg !1024, !tbaa !995
  %68 = zext i16 %67 to i32, !dbg !1024
  %69 = and i32 %68, 61440, !dbg !1024
  %70 = icmp eq i32 %69, 32768, !dbg !1024
  br i1 %70, label %71, label %142, !dbg !1025

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 11, !dbg !1026
  %73 = load i64, ptr %72, align 8, !dbg !1026, !tbaa !1013
  call void @llvm.dbg.value(metadata i64 %73, metadata !947, metadata !DIExpression()), !dbg !975
  %74 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 5, !dbg !1027
  %75 = load i8, ptr %74, align 1, !dbg !1027, !tbaa !677, !range !837, !noundef !501
  %76 = trunc i8 %75 to i1, !dbg !1027
  br i1 %76, label %141, label %77, !dbg !1028

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1029
  %79 = load i32, ptr %78, align 8, !dbg !1029, !tbaa !1030
  %80 = icmp slt i32 0, %79, !dbg !1029
  br i1 %80, label %81, label %89, !dbg !1029

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1029
  %83 = load i32, ptr %82, align 8, !dbg !1029, !tbaa !1030
  %84 = sext i32 %83 to i64, !dbg !1029
  %85 = icmp ule i64 %84, 2305843009213693952, !dbg !1029
  br i1 %85, label %86, label %89, !dbg !1029

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1029
  %88 = load i32, ptr %87, align 8, !dbg !1029, !tbaa !1030
  br label %90, !dbg !1029

89:                                               ; preds = %81, %77
  br label %90, !dbg !1029

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %88, %86 ], [ 512, %89 ], !dbg !1029
  %92 = sext i32 %91 to i64, !dbg !1029
  %93 = srem i64 %73, %92, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %93, metadata !956, metadata !DIExpression()), !dbg !1032
  %94 = icmp ne i64 %73, 0, !dbg !1033
  br i1 %94, label %95, label %113, !dbg !1035

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1036
  %97 = load i32, ptr %96, align 8, !dbg !1036, !tbaa !1030
  %98 = icmp slt i32 0, %97, !dbg !1036
  br i1 %98, label %99, label %107, !dbg !1036

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1036
  %101 = load i32, ptr %100, align 8, !dbg !1036, !tbaa !1030
  %102 = sext i32 %101 to i64, !dbg !1036
  %103 = icmp ule i64 %102, 2305843009213693952, !dbg !1036
  br i1 %103, label %104, label %107, !dbg !1036

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1036
  %106 = load i32, ptr %105, align 8, !dbg !1036, !tbaa !1030
  br label %108, !dbg !1036

107:                                              ; preds = %99, %95
  br label %108, !dbg !1036

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 512, %107 ], !dbg !1036
  %110 = sext i32 %109 to i64, !dbg !1036
  %111 = icmp slt i64 %73, %110, !dbg !1037
  br i1 %111, label %112, label %113, !dbg !1038

112:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 %73, metadata !948, metadata !DIExpression()), !dbg !975
  br label %113, !dbg !1039

113:                                              ; preds = %112, %108, %90
  %.012 = phi i64 [ %73, %112 ], [ 0, %108 ], [ 0, %90 ], !dbg !975
  call void @llvm.dbg.value(metadata i64 %.012, metadata !948, metadata !DIExpression()), !dbg !975
  %114 = icmp ne i64 %93, 0, !dbg !1040
  br i1 %114, label %115, label %140, !dbg !1041

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1042
  %117 = load i32, ptr %116, align 8, !dbg !1042, !tbaa !1030
  %118 = icmp slt i32 0, %117, !dbg !1042
  br i1 %118, label %119, label %127, !dbg !1042

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1042
  %121 = load i32, ptr %120, align 8, !dbg !1042, !tbaa !1030
  %122 = sext i32 %121 to i64, !dbg !1042
  %123 = icmp ule i64 %122, 2305843009213693952, !dbg !1042
  br i1 %123, label %124, label %127, !dbg !1042

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1042
  %126 = load i32, ptr %125, align 8, !dbg !1042, !tbaa !1030
  br label %128, !dbg !1042

127:                                              ; preds = %119, %115
  br label %128, !dbg !1042

128:                                              ; preds = %127, %124
  %129 = phi i32 [ %126, %124 ], [ 512, %127 ], !dbg !1042
  %130 = sext i32 %129 to i64, !dbg !1042
  %131 = sub nsw i64 %130, %93, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %131, metadata !963, metadata !DIExpression()), !dbg !1044
  %132 = sub nsw i64 9223372036854775807, %73, !dbg !1045
  %133 = icmp slt i64 %131, %132, !dbg !1045
  br i1 %133, label %134, label %135, !dbg !1045

134:                                              ; preds = %128
  br label %137, !dbg !1045

135:                                              ; preds = %128
  %136 = sub nsw i64 9223372036854775807, %73, !dbg !1045
  br label %137, !dbg !1045

137:                                              ; preds = %135, %134
  %138 = phi i64 [ %131, %134 ], [ %136, %135 ], !dbg !1045
  %139 = add nsw i64 %73, %138, !dbg !1046
  call void @llvm.dbg.value(metadata i64 %139, metadata !947, metadata !DIExpression()), !dbg !975
  br label %140, !dbg !1047

140:                                              ; preds = %137, %113
  %.06 = phi i64 [ %139, %137 ], [ %73, %113 ], !dbg !1048
  call void @llvm.dbg.value(metadata i64 %.06, metadata !947, metadata !DIExpression()), !dbg !975
  br label %141, !dbg !1049

141:                                              ; preds = %140, %71
  %.113 = phi i64 [ 0, %71 ], [ %.012, %140 ], !dbg !975
  %.17 = phi i64 [ %73, %71 ], [ %.06, %140 ], !dbg !1048
  call void @llvm.dbg.value(metadata i64 %.17, metadata !947, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %.113, metadata !948, metadata !DIExpression()), !dbg !975
  br label %147, !dbg !1050

142:                                              ; preds = %65
  %143 = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 2), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %143, metadata !947, metadata !DIExpression()), !dbg !975
  %144 = icmp sle i64 %143, 0, !dbg !1053
  br i1 %144, label %145, label %146, !dbg !1055

145:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i64 -1, metadata !947, metadata !DIExpression()), !dbg !975
  br label %146, !dbg !1056

146:                                              ; preds = %145, %142
  %.28 = phi i64 [ -1, %145 ], [ %143, %142 ], !dbg !1058
  call void @llvm.dbg.value(metadata i64 %.28, metadata !947, metadata !DIExpression()), !dbg !975
  br label %147

147:                                              ; preds = %146, %141
  %.214 = phi i64 [ %.113, %141 ], [ 0, %146 ], !dbg !1059
  %.39 = phi i64 [ %.17, %141 ], [ %.28, %146 ], !dbg !1060
  call void @llvm.dbg.value(metadata i64 %.39, metadata !947, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %.214, metadata !948, metadata !DIExpression()), !dbg !975
  br label %197, !dbg !1061

148:                                              ; preds = %58
  %149 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 1, !dbg !1062
  %150 = load i16, ptr %149, align 4, !dbg !1062, !tbaa !995
  %151 = zext i16 %150 to i32, !dbg !1062
  %152 = and i32 %151, 61440, !dbg !1062
  %153 = icmp eq i32 %152, 32768, !dbg !1062
  br i1 %153, label %154, label %196, !dbg !1064

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 11, !dbg !1065
  %156 = load i64, ptr %155, align 8, !dbg !1065, !tbaa !1013
  %157 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1066
  %158 = load i32, ptr %157, align 8, !dbg !1066, !tbaa !1030
  %159 = icmp slt i32 0, %158, !dbg !1066
  br i1 %159, label %160, label %168, !dbg !1066

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1066
  %162 = load i32, ptr %161, align 8, !dbg !1066, !tbaa !1030
  %163 = sext i32 %162 to i64, !dbg !1066
  %164 = icmp ule i64 %163, 2305843009213693952, !dbg !1066
  br i1 %164, label %165, label %168, !dbg !1066

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1066
  %167 = load i32, ptr %166, align 8, !dbg !1066, !tbaa !1030
  br label %169, !dbg !1066

168:                                              ; preds = %160, %154
  br label %169, !dbg !1066

169:                                              ; preds = %168, %165
  %170 = phi i32 [ %167, %165 ], [ 512, %168 ], !dbg !1066
  %171 = sext i32 %170 to i64, !dbg !1066
  %172 = icmp slt i64 %171, %63, !dbg !1066
  br i1 %172, label %173, label %189, !dbg !1066

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1066
  %175 = load i32, ptr %174, align 8, !dbg !1066, !tbaa !1030
  %176 = icmp slt i32 0, %175, !dbg !1066
  br i1 %176, label %177, label %185, !dbg !1066

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1066
  %179 = load i32, ptr %178, align 8, !dbg !1066, !tbaa !1030
  %180 = sext i32 %179 to i64, !dbg !1066
  %181 = icmp ule i64 %180, 2305843009213693952, !dbg !1066
  br i1 %181, label %182, label %185, !dbg !1066

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 13, !dbg !1066
  %184 = load i32, ptr %183, align 8, !dbg !1066, !tbaa !1030
  br label %186, !dbg !1066

185:                                              ; preds = %177, %173
  br label %186, !dbg !1066

186:                                              ; preds = %185, %182
  %187 = phi i32 [ %184, %182 ], [ 512, %185 ], !dbg !1066
  %188 = sext i32 %187 to i64, !dbg !1066
  br label %190, !dbg !1066

189:                                              ; preds = %169
  br label %190, !dbg !1066

190:                                              ; preds = %189, %186
  %191 = phi i64 [ %188, %186 ], [ %63, %189 ], !dbg !1066
  %192 = icmp slt i64 %156, %191, !dbg !1067
  br i1 %192, label %193, label %196, !dbg !1068

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 11, !dbg !1069
  %195 = load i64, ptr %194, align 8, !dbg !1069, !tbaa !1013
  call void @llvm.dbg.value(metadata i64 %195, metadata !948, metadata !DIExpression()), !dbg !975
  br label %196, !dbg !1070

196:                                              ; preds = %193, %190, %148
  %.315 = phi i64 [ %195, %193 ], [ 0, %190 ], [ 0, %148 ], !dbg !975
  call void @llvm.dbg.value(metadata i64 %.315, metadata !948, metadata !DIExpression()), !dbg !975
  br label %197

197:                                              ; preds = %196, %147
  %.416 = phi i64 [ %.214, %147 ], [ %.315, %196 ], !dbg !975
  %.410 = phi i64 [ %.39, %147 ], [ %63, %196 ], !dbg !975
  call void @llvm.dbg.value(metadata i64 %.410, metadata !947, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %.416, metadata !948, metadata !DIExpression()), !dbg !975
  %198 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 1, !dbg !1071
  %199 = load i64, ptr %198, align 8, !dbg !1071, !tbaa !621
  call void @genpattern(ptr noundef %61, i64 noundef %199, ptr noundef %2), !dbg !1072
  %200 = call ptr @randint_get_source(ptr noundef %2) #18, !dbg !1073
  call void @llvm.dbg.value(metadata ptr %200, metadata !952, metadata !DIExpression()), !dbg !975
  br label %201, !dbg !1074

201:                                              ; preds = %244, %197
  %.517 = phi i64 [ %.416, %197 ], [ %.719, %244 ], !dbg !975
  %.511 = phi i64 [ %.410, %197 ], [ %.7, %244 ], !dbg !1075
  %.03 = phi i8 [ 1, %197 ], [ %.4, %244 ], !dbg !975
  call void @llvm.dbg.value(metadata i8 %.03, metadata !951, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %.511, metadata !947, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %.517, metadata !948, metadata !DIExpression()), !dbg !975
  br label %202, !dbg !1074

202:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #16, !dbg !1076
  call void @llvm.dbg.declare(metadata ptr %6, metadata !966, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %.020, metadata !968, metadata !DIExpression()), !dbg !1078
  %203 = icmp ne i64 %.517, 0, !dbg !1079
  br i1 %203, label %204, label %205, !dbg !1081

204:                                              ; preds = %202
  store i64 %.517, ptr %6, align 8, !dbg !1082, !tbaa !1084
  call void @llvm.dbg.value(metadata i64 0, metadata !948, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 0, metadata !968, metadata !DIExpression()), !dbg !1078
  br label %210, !dbg !1085

205:                                              ; preds = %202
  %206 = icmp ne i64 %.511, 0, !dbg !1086
  br i1 %206, label %207, label %208, !dbg !1088

207:                                              ; preds = %205
  store i64 %.511, ptr %6, align 8, !dbg !1089, !tbaa !1084
  call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression()), !dbg !975
  br label %209, !dbg !1091

208:                                              ; preds = %205
  br label %243, !dbg !1092

209:                                              ; preds = %207
  br label %210

210:                                              ; preds = %209, %204
  %.618 = phi i64 [ 0, %204 ], [ %.517, %209 ], !dbg !975
  %.6 = phi i64 [ %.511, %204 ], [ 0, %209 ], !dbg !975
  %.01 = phi i64 [ 0, %204 ], [ %.020, %209 ], !dbg !1078
  call void @llvm.dbg.value(metadata i64 %.01, metadata !968, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %.6, metadata !947, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %.618, metadata !948, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 0, metadata !896, metadata !DIExpression()), !dbg !975
  br label %211, !dbg !1093

211:                                              ; preds = %240, %210
  %.05 = phi i64 [ 0, %210 ], [ %241, %240 ], !dbg !1094
  %.14 = phi i8 [ %.03, %210 ], [ %.3, %240 ], !dbg !975
  call void @llvm.dbg.value(metadata i8 %.14, metadata !951, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %.05, metadata !896, metadata !DIExpression()), !dbg !975
  %212 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 1, !dbg !1095
  %213 = load i64, ptr %212, align 8, !dbg !1095, !tbaa !621
  %214 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 6, !dbg !1096
  %215 = load i8, ptr %214, align 2, !dbg !1096, !tbaa !681, !range !837, !noundef !501
  %216 = trunc i8 %215 to i1, !dbg !1096
  %217 = zext i1 %216 to i64, !dbg !1097
  %218 = add i64 %213, %217, !dbg !1098
  %219 = icmp ult i64 %.05, %218, !dbg !1099
  br i1 %219, label %220, label %242, !dbg !1100

220:                                              ; preds = %211
  call void @llvm.dbg.value(metadata i32 0, metadata !969, metadata !DIExpression()), !dbg !1101
  %221 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 1, !dbg !1102
  %222 = load i64, ptr %221, align 8, !dbg !1102, !tbaa !621
  %223 = icmp ult i64 %.05, %222, !dbg !1103
  br i1 %223, label %224, label %227, !dbg !1104

224:                                              ; preds = %220
  %225 = getelementptr inbounds i32, ptr %61, i64 %.05, !dbg !1105
  %226 = load i32, ptr %225, align 4, !dbg !1105, !tbaa !689
  br label %228, !dbg !1104

227:                                              ; preds = %220
  br label %228, !dbg !1104

228:                                              ; preds = %227, %224
  %229 = phi i32 [ %226, %224 ], [ 0, %227 ], !dbg !1104
  call void @llvm.dbg.value(metadata i32 %229, metadata !973, metadata !DIExpression()), !dbg !1101
  %230 = add i64 %.05, 1, !dbg !1106
  %231 = call i32 @dopass(i32 noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef %6, i32 noundef %229, ptr noundef %200, i64 noundef %230, i64 noundef %.01), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %231, metadata !969, metadata !DIExpression()), !dbg !1101
  %232 = icmp ne i32 %231, 0, !dbg !1108
  br i1 %232, label %233, label %237, !dbg !1110

233:                                              ; preds = %228
  call void @llvm.dbg.value(metadata i8 0, metadata !951, metadata !DIExpression()), !dbg !975
  %234 = icmp slt i32 %231, 0, !dbg !1111
  br i1 %234, label %235, label %236, !dbg !1114

235:                                              ; preds = %233
  br label %238, !dbg !1115

236:                                              ; preds = %233
  br label %237, !dbg !1116

237:                                              ; preds = %236, %228
  %.2 = phi i8 [ 0, %236 ], [ %.14, %228 ], !dbg !975
  call void @llvm.dbg.value(metadata i8 %.2, metadata !951, metadata !DIExpression()), !dbg !975
  br label %238, !dbg !1117

238:                                              ; preds = %237, %235
  %.3 = phi i8 [ 0, %235 ], [ %.2, %237 ], !dbg !1118
  %.02 = phi i32 [ 7, %235 ], [ 0, %237 ]
  call void @llvm.dbg.value(metadata i8 %.3, metadata !951, metadata !DIExpression()), !dbg !975
  switch i32 %.02, label %243 [
    i32 0, label %239
  ]

239:                                              ; preds = %238
  br label %240, !dbg !1119

240:                                              ; preds = %239
  %241 = add i64 %.05, 1, !dbg !1120
  call void @llvm.dbg.value(metadata i64 %241, metadata !896, metadata !DIExpression()), !dbg !975
  br label %211, !dbg !1121, !llvm.loop !1122

242:                                              ; preds = %211
  br label %243, !dbg !1124

243:                                              ; preds = %242, %238, %208
  %.719 = phi i64 [ %.618, %238 ], [ %.618, %242 ], [ %.517, %208 ], !dbg !975
  %.7 = phi i64 [ %.6, %238 ], [ %.6, %242 ], [ %.511, %208 ], !dbg !1075
  %.4 = phi i8 [ %.3, %238 ], [ %.14, %242 ], [ %.03, %208 ], !dbg !975
  %.1 = phi i32 [ %.02, %238 ], [ 0, %242 ], [ 3, %208 ]
  call void @llvm.dbg.value(metadata i8 %.4, metadata !951, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %.7, metadata !947, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %.719, metadata !948, metadata !DIExpression()), !dbg !975
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #16, !dbg !1124
  switch i32 %.1, label %264 [
    i32 0, label %244
    i32 3, label %245
    i32 7, label %262
  ]

244:                                              ; preds = %243
  br label %201, !dbg !1074, !llvm.loop !1125

245:                                              ; preds = %243
  %246 = getelementptr inbounds %struct.Options, ptr %3, i32 0, i32 3, !dbg !1126
  %247 = load i32, ptr %246, align 8, !dbg !1126, !tbaa !659
  %248 = icmp ne i32 %247, 0, !dbg !1128
  br i1 %248, label %249, label %261, !dbg !1129

249:                                              ; preds = %245
  %250 = call i32 @ftruncate(i32 noundef %0, i64 noundef 0), !dbg !1130
  %251 = icmp ne i32 %250, 0, !dbg !1131
  br i1 %251, label %252, label %261, !dbg !1132

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 1, !dbg !1133
  %254 = load i16, ptr %253, align 4, !dbg !1133, !tbaa !995
  %255 = zext i16 %254 to i32, !dbg !1133
  %256 = and i32 %255, 61440, !dbg !1133
  %257 = icmp eq i32 %256, 32768, !dbg !1133
  br i1 %257, label %258, label %261, !dbg !1134

258:                                              ; preds = %252
  %259 = call ptr @__error(), !dbg !1135
  %260 = load i32, ptr %259, align 4, !dbg !1135, !tbaa !689
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %260, ptr noundef @.str.60, ptr noundef %1), !dbg !1137
  call void @llvm.dbg.value(metadata i8 0, metadata !951, metadata !DIExpression()), !dbg !975
  br label %262, !dbg !1138

261:                                              ; preds = %252, %249, %245
  br label %262, !dbg !1139

262:                                              ; preds = %261, %258, %243
  %.5 = phi i8 [ %.4, %243 ], [ 0, %258 ], [ %.4, %261 ], !dbg !975
  call void @llvm.dbg.value(metadata i8 %.5, metadata !951, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.label(metadata !974), !dbg !1140
  call void @rpl_free(ptr noundef %61), !dbg !1141
  %263 = trunc i8 %.5 to i1, !dbg !1142
  br label %264, !dbg !1143

264:                                              ; preds = %262, %243, %56, %45, %21
  %.0 = phi i1 [ false, %21 ], [ false, %45 ], [ false, %56 ], [ undef, %243 ], [ %263, %262 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr %5) #16, !dbg !1144
  ret i1 %.0, !dbg !1144
}

declare !dbg !1145 i32 @"\01_close"(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @wipename(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 !dbg !1149 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1153, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata ptr %1, metadata !1154, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata ptr %2, metadata !1155, metadata !DIExpression()), !dbg !1174
  %4 = call noalias nonnull ptr @xstrdup(ptr noundef %0), !dbg !1175
  call void @llvm.dbg.value(metadata ptr %4, metadata !1156, metadata !DIExpression()), !dbg !1174
  %5 = call ptr @last_component(ptr noundef %4) #18, !dbg !1176
  call void @llvm.dbg.value(metadata ptr %5, metadata !1157, metadata !DIExpression()), !dbg !1174
  %6 = call noalias nonnull ptr @dir_name(ptr noundef %4), !dbg !1177
  call void @llvm.dbg.value(metadata ptr %6, metadata !1158, metadata !DIExpression()), !dbg !1174
  %7 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %6), !dbg !1178
  %8 = call noalias nonnull ptr @xstrdup(ptr noundef %7), !dbg !1179
  call void @llvm.dbg.value(metadata ptr %8, metadata !1159, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 1, metadata !1160, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 1, metadata !1161, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 -1, metadata !1162, metadata !DIExpression()), !dbg !1174
  %9 = getelementptr inbounds %struct.Options, ptr %2, i32 0, i32 3, !dbg !1180
  %10 = load i32, ptr %9, align 8, !dbg !1180, !tbaa !659
  %11 = icmp eq i32 %10, 3, !dbg !1182
  br i1 %11, label %12, label %14, !dbg !1183

12:                                               ; preds = %3
  %13 = call i32 (ptr, i32, ...) @open_safer(ptr noundef %6, i32 noundef 1179652), !dbg !1184
  call void @llvm.dbg.value(metadata i32 %13, metadata !1162, metadata !DIExpression()), !dbg !1174
  br label %14, !dbg !1185

14:                                               ; preds = %12, %3
  %.01 = phi i32 [ %13, %12 ], [ -1, %3 ], !dbg !1174
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1162, metadata !DIExpression()), !dbg !1174
  %15 = getelementptr inbounds %struct.Options, ptr %2, i32 0, i32 4, !dbg !1186
  %16 = load i8, ptr %15, align 4, !dbg !1186, !tbaa !673, !range !837, !noundef !501
  %17 = trunc i8 %16 to i1, !dbg !1186
  br i1 %17, label %18, label %19, !dbg !1188

18:                                               ; preds = %14
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.74, ptr noundef %1), !dbg !1189
  br label %19, !dbg !1189

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.Options, ptr %2, i32 0, i32 3, !dbg !1190
  %21 = load i32, ptr %20, align 8, !dbg !1190, !tbaa !659
  %22 = icmp ne i32 %21, 1, !dbg !1191
  br i1 %22, label %23, label %74, !dbg !1192

23:                                               ; preds = %19
  %24 = call i64 @base_len(ptr noundef %5) #18, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %24, metadata !1163, metadata !DIExpression()), !dbg !1194
  br label %25, !dbg !1195

25:                                               ; preds = %71, %23
  %.03 = phi i8 [ 1, %23 ], [ %.25, %71 ], !dbg !1174
  %.02 = phi i8 [ 1, %23 ], [ %.2, %71 ], !dbg !1174
  %.0 = phi i64 [ %24, %23 ], [ %72, %71 ], !dbg !1196
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1163, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %.02, metadata !1161, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %.03, metadata !1160, metadata !DIExpression()), !dbg !1174
  %26 = icmp ne i64 %.0, 0, !dbg !1197
  br i1 %26, label %28, label %27, !dbg !1198

27:                                               ; preds = %25
  br label %73

28:                                               ; preds = %25
  %29 = load i8, ptr @nameset, align 16, !dbg !1199, !tbaa !662
  %30 = sext i8 %29 to i32, !dbg !1199
  %31 = trunc i32 %30 to i8, !dbg !1200
  call void @llvm.memset.p0.i64(ptr align 1 %5, i8 %31, i64 %.0, i1 false), !dbg !1200
  %32 = getelementptr inbounds i8, ptr %5, i64 %.0, !dbg !1201
  store i8 0, ptr %32, align 1, !dbg !1202, !tbaa !662
  br label %33, !dbg !1203

33:                                               ; preds = %45, %28
  %34 = call i32 @renameatu(i32 noundef -2, ptr noundef %0, i32 noundef -2, ptr noundef %4, i32 noundef 1), !dbg !1204
  %35 = icmp eq i32 %34, 0, !dbg !1205
  %36 = zext i1 %35 to i8, !dbg !1206
  call void @llvm.dbg.value(metadata i8 %36, metadata !1166, metadata !DIExpression()), !dbg !1207
  br i1 %35, label %43, label %37, !dbg !1208

37:                                               ; preds = %33
  %38 = call ptr @__error(), !dbg !1209
  %39 = load i32, ptr %38, align 4, !dbg !1209, !tbaa !689
  %40 = icmp eq i32 %39, 17, !dbg !1210
  br i1 %40, label %41, label %43, !dbg !1211

41:                                               ; preds = %37
  %42 = call zeroext i1 @incname(ptr noundef %5, i64 noundef %.0), !dbg !1212
  br label %43

43:                                               ; preds = %41, %37, %33
  %44 = phi i1 [ false, %37 ], [ false, %33 ], [ %42, %41 ], !dbg !1207
  br i1 %44, label %45, label %46, !dbg !1203

45:                                               ; preds = %43
  br label %33, !dbg !1213, !llvm.loop !1214

46:                                               ; preds = %43
  %47 = trunc i8 %36 to i1, !dbg !1215
  br i1 %47, label %48, label %70, !dbg !1216

48:                                               ; preds = %46
  %49 = icmp sle i32 0, %.01, !dbg !1217
  br i1 %49, label %50, label %54, !dbg !1219

50:                                               ; preds = %48
  %51 = call i32 @dosync(i32 noundef %.01, ptr noundef %8), !dbg !1220
  %52 = icmp ne i32 %51, 0, !dbg !1221
  br i1 %52, label %53, label %54, !dbg !1222

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8 0, metadata !1161, metadata !DIExpression()), !dbg !1174
  br label %54, !dbg !1223

54:                                               ; preds = %53, %50, %48
  %.1 = phi i8 [ 0, %53 ], [ %.02, %50 ], [ %.02, %48 ], !dbg !1174
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1161, metadata !DIExpression()), !dbg !1174
  %55 = getelementptr inbounds %struct.Options, ptr %2, i32 0, i32 4, !dbg !1224
  %56 = load i8, ptr %55, align 4, !dbg !1224, !tbaa !673, !range !837, !noundef !501
  %57 = trunc i8 %56 to i1, !dbg !1224
  br i1 %57, label %58, label %64, !dbg !1225

58:                                               ; preds = %54
  %59 = trunc i8 %.03 to i1, !dbg !1226
  br i1 %59, label %60, label %61, !dbg !1226

60:                                               ; preds = %58
  br label %62, !dbg !1226

61:                                               ; preds = %58
  br label %62, !dbg !1226

62:                                               ; preds = %61, %60
  %63 = phi ptr [ %1, %60 ], [ %0, %61 ], !dbg !1226
  call void @llvm.dbg.value(metadata ptr %63, metadata !1169, metadata !DIExpression()), !dbg !1227
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.75, ptr noundef %63, ptr noundef %4), !dbg !1228
  call void @llvm.dbg.value(metadata i8 0, metadata !1160, metadata !DIExpression()), !dbg !1174
  br label %64, !dbg !1229

64:                                               ; preds = %62, %54
  %.14 = phi i8 [ 0, %62 ], [ %.03, %54 ], !dbg !1174
  call void @llvm.dbg.value(metadata i8 %.14, metadata !1160, metadata !DIExpression()), !dbg !1174
  %65 = ptrtoint ptr %5 to i64, !dbg !1230
  %66 = ptrtoint ptr %4 to i64, !dbg !1230
  %67 = sub i64 %65, %66, !dbg !1230
  %68 = getelementptr inbounds i8, ptr %0, i64 %67, !dbg !1231
  %69 = add i64 %.0, 1, !dbg !1232
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %68, ptr align 1 %5, i64 %69, i1 false), !dbg !1233
  br label %70, !dbg !1234

70:                                               ; preds = %64, %46
  %.25 = phi i8 [ %.14, %64 ], [ %.03, %46 ], !dbg !1174
  %.2 = phi i8 [ %.1, %64 ], [ %.02, %46 ], !dbg !1174
  call void @llvm.dbg.value(metadata i8 %.2, metadata !1161, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %.25, metadata !1160, metadata !DIExpression()), !dbg !1174
  br label %71, !dbg !1235

71:                                               ; preds = %70
  %72 = add i64 %.0, -1, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %72, metadata !1163, metadata !DIExpression()), !dbg !1194
  br label %25, !dbg !1237, !llvm.loop !1238

73:                                               ; preds = %27
  br label %74, !dbg !1239

74:                                               ; preds = %73, %19
  %.3 = phi i8 [ %.02, %73 ], [ 1, %19 ], !dbg !1240
  call void @llvm.dbg.value(metadata i8 %.3, metadata !1161, metadata !DIExpression()), !dbg !1174
  %75 = call i32 @rpl_unlink(ptr noundef %0), !dbg !1241
  %76 = icmp ne i32 %75, 0, !dbg !1243
  br i1 %76, label %77, label %80, !dbg !1244

77:                                               ; preds = %74
  %78 = call ptr @__error(), !dbg !1245
  %79 = load i32, ptr %78, align 4, !dbg !1245, !tbaa !689
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %79, ptr noundef @.str.76, ptr noundef %1), !dbg !1247
  call void @llvm.dbg.value(metadata i8 0, metadata !1161, metadata !DIExpression()), !dbg !1174
  br label %86, !dbg !1248

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.Options, ptr %2, i32 0, i32 4, !dbg !1249
  %82 = load i8, ptr %81, align 4, !dbg !1249, !tbaa !673, !range !837, !noundef !501
  %83 = trunc i8 %82 to i1, !dbg !1249
  br i1 %83, label %84, label %85, !dbg !1251

84:                                               ; preds = %80
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.77, ptr noundef %1), !dbg !1252
  br label %85, !dbg !1252

85:                                               ; preds = %84, %80
  br label %86

86:                                               ; preds = %85, %77
  %.4 = phi i8 [ 0, %77 ], [ %.3, %85 ], !dbg !1174
  call void @llvm.dbg.value(metadata i8 %.4, metadata !1161, metadata !DIExpression()), !dbg !1174
  %87 = icmp sle i32 0, %.01, !dbg !1253
  br i1 %87, label %88, label %99, !dbg !1255

88:                                               ; preds = %86
  %89 = call i32 @dosync(i32 noundef %.01, ptr noundef %8), !dbg !1256
  %90 = icmp ne i32 %89, 0, !dbg !1259
  br i1 %90, label %91, label %92, !dbg !1260

91:                                               ; preds = %88
  call void @llvm.dbg.value(metadata i8 0, metadata !1161, metadata !DIExpression()), !dbg !1174
  br label %92, !dbg !1261

92:                                               ; preds = %91, %88
  %.5 = phi i8 [ 0, %91 ], [ %.4, %88 ], !dbg !1174
  call void @llvm.dbg.value(metadata i8 %.5, metadata !1161, metadata !DIExpression()), !dbg !1174
  %93 = call i32 @"\01_close"(i32 noundef %.01), !dbg !1262
  %94 = icmp ne i32 %93, 0, !dbg !1264
  br i1 %94, label %95, label %98, !dbg !1265

95:                                               ; preds = %92
  %96 = call ptr @__error(), !dbg !1266
  %97 = load i32, ptr %96, align 4, !dbg !1266, !tbaa !689
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %97, ptr noundef @.str.73, ptr noundef %8), !dbg !1268
  call void @llvm.dbg.value(metadata i8 0, metadata !1161, metadata !DIExpression()), !dbg !1174
  br label %98, !dbg !1269

98:                                               ; preds = %95, %92
  %.6 = phi i8 [ 0, %95 ], [ %.5, %92 ], !dbg !1270
  call void @llvm.dbg.value(metadata i8 %.6, metadata !1161, metadata !DIExpression()), !dbg !1174
  br label %99, !dbg !1271

99:                                               ; preds = %98, %86
  %.7 = phi i8 [ %.6, %98 ], [ %.4, %86 ], !dbg !1174
  call void @llvm.dbg.value(metadata i8 %.7, metadata !1161, metadata !DIExpression()), !dbg !1174
  call void @rpl_free(ptr noundef %4), !dbg !1272
  call void @rpl_free(ptr noundef %6), !dbg !1273
  call void @rpl_free(ptr noundef %8), !dbg !1274
  %100 = trunc i8 %.7 to i1, !dbg !1275
  ret i1 %100, !dbg !1276
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1277 ptr @last_component(ptr noundef) #9

declare !dbg !1279 noalias nonnull ptr @dir_name(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1281 i64 @base_len(ptr noundef) #9

declare !dbg !1284 i32 @renameatu(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @incname(ptr noundef %0, i64 noundef %1) #7 !dbg !1288 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1292, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.value(metadata i64 %1, metadata !1293, metadata !DIExpression()), !dbg !1296
  br label %3, !dbg !1297

3:                                                ; preds = %32, %2
  %.02 = phi i64 [ %1, %2 ], [ %4, %32 ]
  %.0 = phi i1 [ undef, %2 ], [ %.1, %32 ]
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1293, metadata !DIExpression()), !dbg !1296
  %4 = add i64 %.02, -1, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %4, metadata !1293, metadata !DIExpression()), !dbg !1296
  %5 = icmp ne i64 %.02, 0, !dbg !1297
  br i1 %5, label %6, label %33, !dbg !1297

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 %4, !dbg !1299
  %8 = load i8, ptr %7, align 1, !dbg !1299, !tbaa !662
  %9 = sext i8 %8 to i32, !dbg !1299
  %10 = call ptr @strchr(ptr noundef @nameset, i32 noundef %9), !dbg !1300
  call void @llvm.dbg.value(metadata ptr %10, metadata !1294, metadata !DIExpression()), !dbg !1301
  %11 = icmp ne ptr %10, null, !dbg !1302
  %12 = xor i1 %11, true, !dbg !1302
  %13 = zext i1 %12 to i32, !dbg !1302
  %14 = sext i32 %13 to i64, !dbg !1302
  %15 = call i64 @llvm.expect.i64(i64 %14, i64 0), !dbg !1302
  %16 = icmp ne i64 %15, 0, !dbg !1302
  br i1 %16, label %17, label %19, !dbg !1302

17:                                               ; preds = %6
  call void @__assert_rtn(ptr noundef @__func__.incname, ptr noundef @.str.78, i32 noundef 1000, ptr noundef @.str.79) #19, !dbg !1302
  unreachable, !dbg !1302

18:                                               ; No predecessors!
  br label %20, !dbg !1302

19:                                               ; preds = %6
  br label %20, !dbg !1302

20:                                               ; preds = %19, %18
  %21 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1303
  %22 = load i8, ptr %21, align 1, !dbg !1303, !tbaa !662
  %23 = icmp ne i8 %22, 0, !dbg !1303
  br i1 %23, label %24, label %28, !dbg !1305

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1306
  %26 = load i8, ptr %25, align 1, !dbg !1306, !tbaa !662
  %27 = getelementptr inbounds i8, ptr %0, i64 %4, !dbg !1308
  store i8 %26, ptr %27, align 1, !dbg !1309, !tbaa !662
  br label %31, !dbg !1310

28:                                               ; preds = %20
  %29 = load i8, ptr @nameset, align 16, !dbg !1311, !tbaa !662
  %30 = getelementptr inbounds i8, ptr %0, i64 %4, !dbg !1312
  store i8 %29, ptr %30, align 1, !dbg !1313, !tbaa !662
  br label %31, !dbg !1314

31:                                               ; preds = %28, %24
  %.01 = phi i32 [ 1, %24 ], [ 0, %28 ]
  %.1 = phi i1 [ true, %24 ], [ %.0, %28 ]
  switch i32 %.01, label %35 [
    i32 0, label %32
    i32 1, label %34
  ]

32:                                               ; preds = %31
  br label %3, !dbg !1297, !llvm.loop !1315

33:                                               ; preds = %3
  br label %34, !dbg !1316

34:                                               ; preds = %33, %31
  %.2 = phi i1 [ %.1, %31 ], [ false, %33 ], !dbg !1296
  ret i1 %.2, !dbg !1317

35:                                               ; preds = %31
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @dosync(i32 noundef %0, ptr noundef %1) #7 !dbg !1318 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1322, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr %1, metadata !1323, metadata !DIExpression()), !dbg !1325
  %3 = call i32 @fdatasync(i32 noundef %0), !dbg !1326
  %4 = icmp eq i32 %3, 0, !dbg !1328
  br i1 %4, label %5, label %6, !dbg !1329

5:                                                ; preds = %2
  br label %23, !dbg !1330

6:                                                ; preds = %2
  %7 = call ptr @__error(), !dbg !1331
  %8 = load i32, ptr %7, align 4, !dbg !1331, !tbaa !689
  call void @llvm.dbg.value(metadata i32 %8, metadata !1324, metadata !DIExpression()), !dbg !1325
  %9 = call zeroext i1 @ignorable_sync_errno(i32 noundef %8), !dbg !1332
  br i1 %9, label %12, label %10, !dbg !1334

10:                                               ; preds = %6
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %8, ptr noundef @.str.70, ptr noundef %1), !dbg !1335
  %11 = call ptr @__error(), !dbg !1337
  store i32 %8, ptr %11, align 4, !dbg !1338, !tbaa !689
  br label %23, !dbg !1339

12:                                               ; preds = %6
  %13 = call i32 @"\01_fsync"(i32 noundef %0), !dbg !1340
  %14 = icmp eq i32 %13, 0, !dbg !1342
  br i1 %14, label %15, label %16, !dbg !1343

15:                                               ; preds = %12
  br label %23, !dbg !1344

16:                                               ; preds = %12
  %17 = call ptr @__error(), !dbg !1345
  %18 = load i32, ptr %17, align 4, !dbg !1345, !tbaa !689
  call void @llvm.dbg.value(metadata i32 %18, metadata !1324, metadata !DIExpression()), !dbg !1325
  %19 = call zeroext i1 @ignorable_sync_errno(i32 noundef %18), !dbg !1346
  br i1 %19, label %22, label %20, !dbg !1348

20:                                               ; preds = %16
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef @.str.71, ptr noundef %1), !dbg !1349
  %21 = call ptr @__error(), !dbg !1351
  store i32 %18, ptr %21, align 4, !dbg !1352, !tbaa !689
  br label %23, !dbg !1353

22:                                               ; preds = %16
  call void @sync(), !dbg !1354
  br label %23, !dbg !1355

23:                                               ; preds = %22, %20, %15, %10, %5
  %.0 = phi i32 [ 0, %5 ], [ 0, %15 ], [ 0, %22 ], [ -1, %20 ], [ -1, %10 ], !dbg !1325
  ret i32 %.0, !dbg !1356
}

declare !dbg !1357 i32 @rpl_unlink(ptr noundef) #2

declare !dbg !1361 i32 @fdatasync(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @ignorable_sync_errno(i32 noundef %0) #7 !dbg !1362 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1366, metadata !DIExpression()), !dbg !1367
  %2 = icmp eq i32 %0, 22, !dbg !1368
  br i1 %2, label %7, label %3, !dbg !1369

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 9, !dbg !1370
  br i1 %4, label %7, label %5, !dbg !1371

5:                                                ; preds = %3
  %6 = icmp eq i32 %0, 21, !dbg !1372
  br label %7, !dbg !1371

7:                                                ; preds = %5, %3, %1
  %8 = phi i1 [ true, %3 ], [ true, %1 ], [ %6, %5 ]
  ret i1 %8, !dbg !1373
}

declare !dbg !1374 i32 @"\01_fsync"(i32 noundef) #2

declare !dbg !1375 void @sync() #2

declare !dbg !1376 ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: cold noreturn
declare !dbg !1379 void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #11

declare !dbg !1383 i32 @"\01_fstat$INODE64"(i32 noundef, ptr noundef) #2

declare !dbg !1387 i32 @isatty(i32 noundef) #2

; Function Attrs: allocsize(0,1)
declare !dbg !1388 noalias nonnull ptr @xnmalloc(i64 noundef, i64 noundef) #12

declare !dbg !1391 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @genpattern(ptr noundef %0, i64 noundef %1, ptr noundef %2) #7 !dbg !1394 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1398, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %1, metadata !1399, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %2, metadata !1400, metadata !DIExpression()), !dbg !1410
  %4 = icmp ne i64 %1, 0, !dbg !1411
  br i1 %4, label %6, label %5, !dbg !1413

5:                                                ; preds = %3
  br label %97, !dbg !1414

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr @patterns, metadata !1402, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 0, metadata !1401, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %0, metadata !1404, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %1, metadata !1405, metadata !DIExpression()), !dbg !1410
  br label %7, !dbg !1415

7:                                                ; preds = %66, %6
  %.013 = phi i64 [ %1, %6 ], [ %.417, %66 ], !dbg !1410
  %.09 = phi ptr [ %0, %6 ], [ %.4, %66 ], !dbg !1416
  %.05 = phi ptr [ @patterns, %6 ], [ %.38, %66 ], !dbg !1410
  %.03 = phi i64 [ 0, %6 ], [ %.2, %66 ], !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1401, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %.05, metadata !1402, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %.09, metadata !1404, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.013, metadata !1405, metadata !DIExpression()), !dbg !1410
  br label %8, !dbg !1415

8:                                                ; preds = %7
  %9 = getelementptr inbounds i32, ptr %.05, i32 1, !dbg !1417
  call void @llvm.dbg.value(metadata ptr %9, metadata !1402, metadata !DIExpression()), !dbg !1410
  %10 = load i32, ptr %.05, align 4, !dbg !1419, !tbaa !689
  call void @llvm.dbg.value(metadata i32 %10, metadata !1409, metadata !DIExpression()), !dbg !1410
  %11 = icmp ne i32 %10, 0, !dbg !1420
  br i1 %11, label %13, label %12, !dbg !1422

12:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr @patterns, metadata !1402, metadata !DIExpression()), !dbg !1410
  br label %66, !dbg !1423

13:                                               ; preds = %8
  %14 = icmp slt i32 %10, 0, !dbg !1425
  br i1 %14, label %15, label %26, !dbg !1427

15:                                               ; preds = %13
  %16 = sub nsw i32 0, %10, !dbg !1428
  call void @llvm.dbg.value(metadata i32 %16, metadata !1409, metadata !DIExpression()), !dbg !1410
  %17 = sext i32 %16 to i64, !dbg !1430
  %18 = icmp uge i64 %17, %.013, !dbg !1432
  br i1 %18, label %19, label %21, !dbg !1433

19:                                               ; preds = %15
  %20 = add i64 %.03, %.013, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %20, metadata !1401, metadata !DIExpression()), !dbg !1410
  br label %67, !dbg !1436

21:                                               ; preds = %15
  %22 = sext i32 %16 to i64, !dbg !1437
  %23 = add i64 %.03, %22, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %23, metadata !1401, metadata !DIExpression()), !dbg !1410
  %24 = sext i32 %16 to i64, !dbg !1439
  %25 = sub i64 %.013, %24, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %25, metadata !1405, metadata !DIExpression()), !dbg !1410
  br label %65, !dbg !1441

26:                                               ; preds = %13
  %27 = sext i32 %10 to i64, !dbg !1442
  %28 = icmp ule i64 %27, %.013, !dbg !1444
  br i1 %28, label %29, label %38, !dbg !1445

29:                                               ; preds = %26
  %30 = sext i32 %10 to i64, !dbg !1446
  %31 = mul i64 %30, 4, !dbg !1448
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.09, ptr align 4 %9, i64 %31, i1 false), !dbg !1449
  %32 = sext i32 %10 to i64, !dbg !1450
  %33 = getelementptr inbounds i32, ptr %9, i64 %32, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %33, metadata !1402, metadata !DIExpression()), !dbg !1410
  %34 = sext i32 %10 to i64, !dbg !1451
  %35 = getelementptr inbounds i32, ptr %.09, i64 %34, !dbg !1451
  call void @llvm.dbg.value(metadata ptr %35, metadata !1404, metadata !DIExpression()), !dbg !1410
  %36 = sext i32 %10 to i64, !dbg !1452
  %37 = sub i64 %.013, %36, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %37, metadata !1405, metadata !DIExpression()), !dbg !1410
  br label %64, !dbg !1454

38:                                               ; preds = %26
  %39 = icmp ult i64 %.013, 2, !dbg !1455
  br i1 %39, label %44, label %40, !dbg !1457

40:                                               ; preds = %38
  %41 = mul i64 3, %.013, !dbg !1458
  %42 = sext i32 %10 to i64, !dbg !1459
  %43 = icmp ult i64 %41, %42, !dbg !1460
  br i1 %43, label %44, label %46, !dbg !1461

44:                                               ; preds = %40, %38
  %45 = add i64 %.03, %.013, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %45, metadata !1401, metadata !DIExpression()), !dbg !1410
  br label %67, !dbg !1464

46:                                               ; preds = %40
  br label %47, !dbg !1465

47:                                               ; preds = %61, %46
  %.114 = phi i64 [ %.013, %46 ], [ %.215, %61 ], !dbg !1410
  %.110 = phi ptr [ %.09, %46 ], [ %.211, %61 ], !dbg !1410
  %.16 = phi ptr [ %9, %46 ], [ %59, %61 ], !dbg !1467
  %.01 = phi i32 [ %10, %46 ], [ %60, %61 ], !dbg !1467
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1409, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %.16, metadata !1402, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %.110, metadata !1404, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.114, metadata !1405, metadata !DIExpression()), !dbg !1410
  %48 = sext i32 %.01 to i64, !dbg !1468
  %49 = icmp eq i64 %.114, %48, !dbg !1471
  br i1 %49, label %54, label %50, !dbg !1472

50:                                               ; preds = %47
  %51 = sext i32 %.01 to i64, !dbg !1473
  %52 = call i64 @randint_choose(ptr noundef %2, i64 noundef %51), !dbg !1474
  %53 = icmp ult i64 %52, %.114, !dbg !1475
  br i1 %53, label %54, label %58, !dbg !1476

54:                                               ; preds = %50, %47
  %55 = load i32, ptr %.16, align 4, !dbg !1477, !tbaa !689
  %56 = getelementptr inbounds i32, ptr %.110, i32 1, !dbg !1479
  call void @llvm.dbg.value(metadata ptr %56, metadata !1404, metadata !DIExpression()), !dbg !1410
  store i32 %55, ptr %.110, align 4, !dbg !1480, !tbaa !689
  %57 = add i64 %.114, -1, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %57, metadata !1405, metadata !DIExpression()), !dbg !1410
  br label %58, !dbg !1482

58:                                               ; preds = %54, %50
  %.215 = phi i64 [ %57, %54 ], [ %.114, %50 ], !dbg !1410
  %.211 = phi ptr [ %56, %54 ], [ %.110, %50 ], !dbg !1410
  call void @llvm.dbg.value(metadata ptr %.211, metadata !1404, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.215, metadata !1405, metadata !DIExpression()), !dbg !1410
  %59 = getelementptr inbounds i32, ptr %.16, i32 1, !dbg !1483
  call void @llvm.dbg.value(metadata ptr %59, metadata !1402, metadata !DIExpression()), !dbg !1410
  %60 = add nsw i32 %.01, -1, !dbg !1484
  call void @llvm.dbg.value(metadata i32 %60, metadata !1409, metadata !DIExpression()), !dbg !1410
  br label %61, !dbg !1485

61:                                               ; preds = %58
  %62 = icmp ne i64 %.215, 0, !dbg !1485
  br i1 %62, label %47, label %63, !dbg !1485, !llvm.loop !1486

63:                                               ; preds = %61
  br label %67, !dbg !1488

64:                                               ; preds = %29
  br label %65

65:                                               ; preds = %64, %21
  %.316 = phi i64 [ %25, %21 ], [ %37, %64 ], !dbg !1489
  %.312 = phi ptr [ %.09, %21 ], [ %35, %64 ], !dbg !1410
  %.27 = phi ptr [ %9, %21 ], [ %33, %64 ], !dbg !1467
  %.14 = phi i64 [ %23, %21 ], [ %.03, %64 ], !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.14, metadata !1401, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %.27, metadata !1402, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %.312, metadata !1404, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.316, metadata !1405, metadata !DIExpression()), !dbg !1410
  br label %66

66:                                               ; preds = %65, %12
  %.417 = phi i64 [ %.316, %65 ], [ %.013, %12 ], !dbg !1410
  %.4 = phi ptr [ %.312, %65 ], [ %.09, %12 ], !dbg !1416
  %.38 = phi ptr [ %.27, %65 ], [ @patterns, %12 ], !dbg !1467
  %.2 = phi i64 [ %.14, %65 ], [ %.03, %12 ], !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1401, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %.38, metadata !1402, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %.4, metadata !1404, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.417, metadata !1405, metadata !DIExpression()), !dbg !1410
  br label %7, !dbg !1415, !llvm.loop !1490

67:                                               ; preds = %63, %44, %19
  %.3 = phi i64 [ %20, %19 ], [ %45, %44 ], [ %.03, %63 ], !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.3, metadata !1401, metadata !DIExpression()), !dbg !1410
  %68 = sub i64 %1, %.3, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %68, metadata !1407, metadata !DIExpression()), !dbg !1410
  %69 = add i64 %.3, -1, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %69, metadata !1401, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %69, metadata !1406, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 0, metadata !1405, metadata !DIExpression()), !dbg !1410
  br label %70, !dbg !1494

70:                                               ; preds = %94, %67
  %.018 = phi i64 [ %69, %67 ], [ %93, %94 ], !dbg !1410
  %.5 = phi i64 [ 0, %67 ], [ %95, %94 ], !dbg !1496
  %.02 = phi i64 [ %68, %67 ], [ %.1, %94 ], !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1407, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.5, metadata !1405, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.018, metadata !1406, metadata !DIExpression()), !dbg !1410
  %71 = icmp ult i64 %.5, %1, !dbg !1497
  br i1 %71, label %72, label %96, !dbg !1499

72:                                               ; preds = %70
  %73 = icmp ule i64 %.018, %69, !dbg !1500
  br i1 %73, label %74, label %82, !dbg !1503

74:                                               ; preds = %72
  %75 = sub i64 %1, 1, !dbg !1504
  %76 = add i64 %.018, %75, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %76, metadata !1406, metadata !DIExpression()), !dbg !1410
  %77 = getelementptr inbounds i32, ptr %0, i64 %.5, !dbg !1507
  %78 = load i32, ptr %77, align 4, !dbg !1507, !tbaa !689
  %79 = add i64 %.02, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %79, metadata !1407, metadata !DIExpression()), !dbg !1410
  %80 = getelementptr inbounds i32, ptr %0, i64 %.02, !dbg !1509
  store i32 %78, ptr %80, align 4, !dbg !1510, !tbaa !689
  %81 = getelementptr inbounds i32, ptr %0, i64 %.5, !dbg !1511
  store i32 -1, ptr %81, align 4, !dbg !1512, !tbaa !689
  br label %92, !dbg !1513

82:                                               ; preds = %72
  %83 = sub i64 %.02, %.5, !dbg !1514
  %84 = call i64 @randint_choose(ptr noundef %2, i64 noundef %83), !dbg !1516
  %85 = add i64 %.5, %84, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %85, metadata !1408, metadata !DIExpression()), !dbg !1410
  %86 = getelementptr inbounds i32, ptr %0, i64 %.5, !dbg !1518
  %87 = load i32, ptr %86, align 4, !dbg !1518, !tbaa !689
  call void @llvm.dbg.value(metadata i32 %87, metadata !1409, metadata !DIExpression()), !dbg !1410
  %88 = getelementptr inbounds i32, ptr %0, i64 %85, !dbg !1519
  %89 = load i32, ptr %88, align 4, !dbg !1519, !tbaa !689
  %90 = getelementptr inbounds i32, ptr %0, i64 %.5, !dbg !1520
  store i32 %89, ptr %90, align 4, !dbg !1521, !tbaa !689
  %91 = getelementptr inbounds i32, ptr %0, i64 %85, !dbg !1522
  store i32 %87, ptr %91, align 4, !dbg !1523, !tbaa !689
  br label %92

92:                                               ; preds = %82, %74
  %.119 = phi i64 [ %76, %74 ], [ %.018, %82 ], !dbg !1410
  %.1 = phi i64 [ %79, %74 ], [ %.02, %82 ], !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1407, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %.119, metadata !1406, metadata !DIExpression()), !dbg !1410
  %93 = sub i64 %.119, %69, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %93, metadata !1406, metadata !DIExpression()), !dbg !1410
  br label %94, !dbg !1525

94:                                               ; preds = %92
  %95 = add i64 %.5, 1, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %95, metadata !1405, metadata !DIExpression()), !dbg !1410
  br label %70, !dbg !1527, !llvm.loop !1528

96:                                               ; preds = %70
  br label %97, !dbg !1530

97:                                               ; preds = %96, %5
  %.0 = phi i32 [ 0, %96 ], [ 1, %5 ]
  switch i32 %.0, label %99 [
    i32 0, label %98
    i32 1, label %98
  ]

98:                                               ; preds = %97, %97
  ret void, !dbg !1530

99:                                               ; preds = %97
  unreachable
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1531 ptr @randint_get_source(ptr noundef) #9

; Function Attrs: nounwind ssp uwtable
define internal i32 @dopass(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7) #7 !dbg !1536 {
  %9 = alloca [7 x i8], align 1
  %10 = alloca [272 x i8], align 16
  %11 = alloca [21 x i8], align 16
  %12 = alloca [272 x i8], align 16
  %13 = alloca [272 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1543, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %3, metadata !1546, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %4, metadata !1547, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %5, metadata !1548, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %6, metadata !1549, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %7, metadata !1550, metadata !DIExpression()), !dbg !1603
  %14 = load i64, ptr %3, align 8, !dbg !1604, !tbaa !1084
  call void @llvm.dbg.value(metadata i64 %14, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 0, metadata !1556, metadata !DIExpression()), !dbg !1603
  %15 = call i32 @getpagesize() #20, !dbg !1605
  %16 = sext i32 %15 to i64, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %16, metadata !1563, metadata !DIExpression()), !dbg !1603
  %17 = call zeroext i1 @periodic_pattern(i32 noundef %4), !dbg !1606
  %18 = zext i1 %17 to i64, !dbg !1606
  %19 = select i1 %17, i32 61440, i32 65536, !dbg !1606
  %20 = sext i32 %19 to i64, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %20, metadata !1564, metadata !DIExpression()), !dbg !1603
  %21 = add i64 %20, 2, !dbg !1607
  %22 = udiv i64 %21, 3, !dbg !1607
  %23 = mul i64 %22, 3, !dbg !1607
  %24 = call noalias nonnull ptr @xalignalloc(i64 noundef %16, i64 noundef %23) #21, !dbg !1608
  call void @llvm.dbg.value(metadata ptr %24, metadata !1565, metadata !DIExpression()), !dbg !1603
  call void @llvm.lifetime.start.p0(i64 7, ptr %9) #16, !dbg !1609
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1566, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8 0, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 0, metadata !1568, metadata !DIExpression()), !dbg !1603
  call void @llvm.lifetime.start.p0(i64 272, ptr %10) #16, !dbg !1611
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1569, metadata !DIExpression()), !dbg !1612
  %25 = icmp slt i64 0, %14, !dbg !1613
  br i1 %25, label %26, label %28, !dbg !1614

26:                                               ; preds = %8
  %27 = icmp ult i64 %14, %20, !dbg !1615
  br label %28

28:                                               ; preds = %26, %8
  %29 = phi i1 [ false, %8 ], [ %27, %26 ], !dbg !1603
  %30 = zext i1 %29 to i8, !dbg !1616
  call void @llvm.dbg.value(metadata i8 %30, metadata !1574, metadata !DIExpression()), !dbg !1603
  %31 = trunc i8 %30 to i1, !dbg !1617
  br i1 %31, label %33, label %32, !dbg !1619

32:                                               ; preds = %28
  call void @direct_mode(i32 noundef %0, i1 noundef zeroext true), !dbg !1620
  br label %33, !dbg !1620

33:                                               ; preds = %32, %28
  %34 = call zeroext i1 @dorewind(i32 noundef %0, ptr noundef %1), !dbg !1621
  br i1 %34, label %38, label %35, !dbg !1623

35:                                               ; preds = %33
  %36 = call ptr @__error(), !dbg !1624
  %37 = load i32, ptr %36, align 4, !dbg !1624, !tbaa !689
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %37, ptr noundef @.str.61, ptr noundef %2), !dbg !1626
  call void @llvm.dbg.value(metadata i8 1, metadata !1568, metadata !DIExpression()), !dbg !1603
  br label %230, !dbg !1627

38:                                               ; preds = %33
  %39 = icmp sge i32 %4, 0, !dbg !1628
  br i1 %39, label %40, label %55, !dbg !1630

40:                                               ; preds = %38
  %41 = call zeroext i1 @known(i64 noundef %14), !dbg !1631
  br i1 %41, label %42, label %48, !dbg !1633

42:                                               ; preds = %40
  %43 = add i64 %20, 2, !dbg !1634
  %44 = udiv i64 %43, 3, !dbg !1634
  %45 = mul i64 %44, 3, !dbg !1634
  %46 = icmp ult i64 %14, %45, !dbg !1635
  br i1 %46, label %47, label %48, !dbg !1631

47:                                               ; preds = %42
  br label %52, !dbg !1631

48:                                               ; preds = %42, %40
  %49 = add i64 %20, 2, !dbg !1636
  %50 = udiv i64 %49, 3, !dbg !1636
  %51 = mul i64 %50, 3, !dbg !1636
  br label %52, !dbg !1631

52:                                               ; preds = %48, %47
  %53 = phi i64 [ %14, %47 ], [ %51, %48 ], !dbg !1631
  call void @llvm.dbg.value(metadata i64 %53, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @fillpattern(i32 noundef %4, ptr noundef %24, i64 noundef %53), !dbg !1637
  %54 = getelementptr inbounds [7 x i8], ptr %9, i64 0, i64 0, !dbg !1638
  call void @passname(ptr noundef %24, ptr noundef %54), !dbg !1639
  br label %57, !dbg !1640

55:                                               ; preds = %38
  %56 = getelementptr inbounds [7 x i8], ptr %9, i64 0, i64 0, !dbg !1641
  call void @passname(ptr noundef null, ptr noundef %56), !dbg !1643
  br label %57

57:                                               ; preds = %55, %52
  %58 = icmp ne i64 %7, 0, !dbg !1644
  br i1 %58, label %59, label %63, !dbg !1646

59:                                               ; preds = %57
  %60 = getelementptr inbounds [7 x i8], ptr %9, i64 0, i64 0, !dbg !1647
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.62, ptr noundef %2, i64 noundef %6, i64 noundef %7, ptr noundef %60), !dbg !1649
  %61 = call i64 @time(ptr noundef null), !dbg !1650
  %62 = add nsw i64 %61, 5, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %62, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !1573, metadata !DIExpression()), !dbg !1603
  br label %63, !dbg !1652

63:                                               ; preds = %59, %57
  %.035 = phi i64 [ %62, %59 ], [ undef, %57 ]
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !1573, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.035, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 0, metadata !1552, metadata !DIExpression()), !dbg !1603
  br label %64, !dbg !1653

64:                                               ; preds = %219, %63
  %.041 = phi i64 [ 0, %63 ], [ %.344, %219 ], !dbg !1654
  %.136 = phi i64 [ %.035, %63 ], [ %.540, %219 ], !dbg !1603
  %.034 = phi i64 [ 0, %63 ], [ %152, %219 ], !dbg !1603
  %.031 = phi i64 [ %14, %63 ], [ %.233, %219 ], !dbg !1603
  %.018 = phi i8 [ 0, %63 ], [ %.10, %219 ], !dbg !1655
  %.012 = phi i8 [ 0, %63 ], [ %.6, %219 ], !dbg !1603
  %.19 = phi ptr [ @.str.11, %63 ], [ %.5, %219 ], !dbg !1603
  %.04 = phi i8 [ %30, %63 ], [ %.15, %219 ], !dbg !1616
  call void @llvm.dbg.value(metadata i8 %.04, metadata !1574, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %.19, metadata !1573, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.012, metadata !1568, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.018, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.031, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.034, metadata !1552, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.136, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.041, metadata !1556, metadata !DIExpression()), !dbg !1603
  br label %65, !dbg !1653

65:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 %20, metadata !1557, metadata !DIExpression()), !dbg !1603
  %66 = call zeroext i1 @known(i64 noundef %.031), !dbg !1656
  br i1 %66, label %67, label %78, !dbg !1658

67:                                               ; preds = %65
  %68 = sub nsw i64 %.031, %.034, !dbg !1659
  %69 = icmp ult i64 %68, %20, !dbg !1660
  br i1 %69, label %70, label %78, !dbg !1661

70:                                               ; preds = %67
  %71 = icmp slt i64 %.031, %.034, !dbg !1662
  br i1 %71, label %72, label %73, !dbg !1665

72:                                               ; preds = %70
  br label %220, !dbg !1666

73:                                               ; preds = %70
  %74 = sub nsw i64 %.031, %.034, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %74, metadata !1557, metadata !DIExpression()), !dbg !1603
  %75 = icmp ne i64 %74, 0, !dbg !1668
  br i1 %75, label %77, label %76, !dbg !1670

76:                                               ; preds = %73
  br label %220, !dbg !1671

77:                                               ; preds = %73
  br label %78, !dbg !1672

78:                                               ; preds = %77, %67, %65
  %.045 = phi i64 [ %74, %77 ], [ %20, %67 ], [ %20, %65 ], !dbg !1673
  call void @llvm.dbg.value(metadata i64 %.045, metadata !1557, metadata !DIExpression()), !dbg !1603
  %79 = icmp slt i32 %4, 0, !dbg !1674
  br i1 %79, label %80, label %81, !dbg !1676

80:                                               ; preds = %78
  call void @randread(ptr noundef %5, ptr noundef %24, i64 noundef %.045), !dbg !1677
  br label %81, !dbg !1677

81:                                               ; preds = %80, %78
  call void @llvm.dbg.value(metadata i64 0, metadata !1558, metadata !DIExpression()), !dbg !1603
  br label %82, !dbg !1678

82:                                               ; preds = %145, %81
  %.030 = phi i64 [ 0, %81 ], [ %146, %145 ], !dbg !1679
  %.119 = phi i8 [ %.018, %81 ], [ %.523, %145 ], !dbg !1655
  %.113 = phi i8 [ %.012, %81 ], [ %.315, %145 ], !dbg !1680
  %.15 = phi i8 [ %.04, %81 ], [ %.37, %145 ], !dbg !1616
  call void @llvm.dbg.value(metadata i8 %.15, metadata !1574, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.113, metadata !1568, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.119, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.030, metadata !1558, metadata !DIExpression()), !dbg !1603
  %83 = icmp ult i64 %.030, %.045, !dbg !1681
  br i1 %83, label %84, label %147, !dbg !1682

84:                                               ; preds = %82
  %85 = getelementptr inbounds i8, ptr %24, i64 %.030, !dbg !1683
  %86 = sub i64 %.045, %.030, !dbg !1684
  %87 = call i64 @"\01_write"(i32 noundef %0, ptr noundef %85, i64 noundef %86), !dbg !1685
  call void @llvm.dbg.value(metadata i64 %87, metadata !1559, metadata !DIExpression()), !dbg !1603
  %88 = icmp slt i64 0, %87, !dbg !1686
  br i1 %88, label %89, label %96, !dbg !1687

89:                                               ; preds = %84
  %90 = sub i64 %.045, %.030, !dbg !1688
  %91 = icmp ule i64 %87, %90, !dbg !1688
  br i1 %91, label %92, label %93, !dbg !1688

92:                                               ; preds = %89
  br label %95, !dbg !1688

93:                                               ; preds = %89
  unreachable, !dbg !1688

94:                                               ; No predecessors!
  br label %95, !dbg !1688

95:                                               ; preds = %94, %92
  br label %144, !dbg !1688

96:                                               ; preds = %84
  %97 = call zeroext i1 @known(i64 noundef %.031), !dbg !1689
  br i1 %97, label %110, label %98, !dbg !1690

98:                                               ; preds = %96
  %99 = icmp eq i64 %87, 0, !dbg !1691
  br i1 %99, label %104, label %100, !dbg !1692

100:                                              ; preds = %98
  %101 = call ptr @__error(), !dbg !1693
  %102 = load i32, ptr %101, align 4, !dbg !1693, !tbaa !689
  %103 = icmp eq i32 %102, 28, !dbg !1694
  br i1 %103, label %104, label %110, !dbg !1695

104:                                              ; preds = %100, %98
  %105 = sub nsw i64 9223372036854775807, %.034, !dbg !1696
  %106 = icmp ule i64 %.030, %105, !dbg !1699
  br i1 %106, label %107, label %109, !dbg !1700

107:                                              ; preds = %104
  %108 = add i64 %.034, %.030, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %108, metadata !1551, metadata !DIExpression()), !dbg !1603
  store i64 %108, ptr %3, align 8, !dbg !1702, !tbaa !1084
  br label %109, !dbg !1703

109:                                              ; preds = %107, %104
  %.132 = phi i64 [ %108, %107 ], [ %.031, %104 ], !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.132, metadata !1551, metadata !DIExpression()), !dbg !1603
  br label %147, !dbg !1704

110:                                              ; preds = %100, %96
  %111 = call ptr @__error(), !dbg !1705
  %112 = load i32, ptr %111, align 4, !dbg !1705, !tbaa !689
  call void @llvm.dbg.value(metadata i32 %112, metadata !1575, metadata !DIExpression()), !dbg !1706
  call void @llvm.lifetime.start.p0(i64 21, ptr %11) #16, !dbg !1707
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1584, metadata !DIExpression()), !dbg !1708
  %113 = trunc i8 %.15 to i1, !dbg !1709
  br i1 %113, label %119, label %114, !dbg !1711

114:                                              ; preds = %110
  %115 = call ptr @__error(), !dbg !1712
  %116 = load i32, ptr %115, align 4, !dbg !1712, !tbaa !689
  %117 = icmp eq i32 %116, 22, !dbg !1713
  br i1 %117, label %118, label %119, !dbg !1714

118:                                              ; preds = %114
  call void @direct_mode(i32 noundef %0, i1 noundef zeroext false), !dbg !1715
  call void @llvm.dbg.value(metadata i64 0, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 1, metadata !1574, metadata !DIExpression()), !dbg !1603
  br label %143, !dbg !1717

119:                                              ; preds = %114, %110
  %120 = add i64 %.034, %.030, !dbg !1718
  %121 = getelementptr inbounds [21 x i8], ptr %11, i64 0, i64 0, !dbg !1719
  %122 = call ptr @umaxtostr(i64 noundef %120, ptr noundef %121), !dbg !1720
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %112, ptr noundef @.str.63, ptr noundef %2, ptr noundef %122), !dbg !1721
  %123 = icmp eq i32 %112, 5, !dbg !1722
  br i1 %123, label %124, label %142, !dbg !1723

124:                                              ; preds = %119
  %125 = call zeroext i1 @known(i64 noundef %.031), !dbg !1724
  br i1 %125, label %126, label %142, !dbg !1725

126:                                              ; preds = %124
  %127 = or i64 %.030, 511, !dbg !1726
  %128 = icmp ult i64 %127, %.045, !dbg !1727
  br i1 %128, label %129, label %142, !dbg !1728

129:                                              ; preds = %126
  %130 = or i64 %.030, 511, !dbg !1729
  %131 = add i64 %130, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %131, metadata !1585, metadata !DIExpression()), !dbg !1731
  %132 = add i64 %.034, %131, !dbg !1732
  %133 = call i64 @lseek(i32 noundef %0, i64 noundef %132, i32 noundef 0), !dbg !1734
  %134 = icmp ne i64 %133, -1, !dbg !1735
  br i1 %134, label %135, label %137, !dbg !1736

135:                                              ; preds = %129
  %136 = sub i64 %131, %.030, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %136, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 1, metadata !1567, metadata !DIExpression()), !dbg !1603
  br label %140, !dbg !1739

137:                                              ; preds = %129
  %138 = call ptr @__error(), !dbg !1740
  %139 = load i32, ptr %138, align 4, !dbg !1740, !tbaa !689
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %139, ptr noundef @.str.64, ptr noundef %2), !dbg !1741
  br label %140, !dbg !1742

140:                                              ; preds = %137, %135
  %.026 = phi i64 [ %136, %135 ], [ %87, %137 ], !dbg !1743
  %.220 = phi i8 [ 1, %135 ], [ %.119, %137 ], !dbg !1603
  %.02 = phi i32 [ 7, %135 ], [ 0, %137 ]
  call void @llvm.dbg.value(metadata i8 %.220, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.026, metadata !1559, metadata !DIExpression()), !dbg !1603
  switch i32 %.02, label %143 [
    i32 0, label %141
  ]

141:                                              ; preds = %140
  br label %142, !dbg !1744

142:                                              ; preds = %141, %126, %124, %119
  %.127 = phi i64 [ %.026, %141 ], [ %87, %126 ], [ %87, %124 ], [ %87, %119 ], !dbg !1743
  %.321 = phi i8 [ %.220, %141 ], [ %.119, %126 ], [ %.119, %124 ], [ %.119, %119 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.321, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.127, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 1, metadata !1568, metadata !DIExpression()), !dbg !1603
  br label %143, !dbg !1745

143:                                              ; preds = %142, %140, %118
  %.228 = phi i64 [ %.026, %140 ], [ %.127, %142 ], [ 0, %118 ], !dbg !1706
  %.422 = phi i8 [ %.220, %140 ], [ %.321, %142 ], [ %.119, %118 ], !dbg !1603
  %.214 = phi i8 [ %.113, %140 ], [ 1, %142 ], [ %.113, %118 ], !dbg !1603
  %.26 = phi i8 [ %.15, %140 ], [ %.15, %142 ], [ 1, %118 ], !dbg !1603
  %.13 = phi i32 [ %.02, %140 ], [ 2, %142 ], [ 7, %118 ]
  call void @llvm.dbg.value(metadata i8 %.26, metadata !1574, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.214, metadata !1568, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.422, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.228, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.lifetime.end.p0(i64 21, ptr %11) #16, !dbg !1746
  switch i32 %.13, label %238 [
    i32 7, label %145
    i32 2, label %230
  ]

144:                                              ; preds = %95
  br label %145, !dbg !1747

145:                                              ; preds = %144, %143
  %.329 = phi i64 [ %87, %144 ], [ %.228, %143 ], !dbg !1743
  %.523 = phi i8 [ %.119, %144 ], [ %.422, %143 ], !dbg !1603
  %.315 = phi i8 [ %.113, %144 ], [ %.214, %143 ], !dbg !1680
  %.37 = phi i8 [ %.15, %144 ], [ %.26, %143 ], !dbg !1616
  call void @llvm.dbg.value(metadata i8 %.37, metadata !1574, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.315, metadata !1568, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.523, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.329, metadata !1559, metadata !DIExpression()), !dbg !1603
  %146 = add i64 %.030, %.329, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %146, metadata !1558, metadata !DIExpression()), !dbg !1603
  br label %82, !dbg !1749, !llvm.loop !1750

147:                                              ; preds = %109, %82
  %.233 = phi i64 [ %.132, %109 ], [ %.031, %82 ], !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.233, metadata !1551, metadata !DIExpression()), !dbg !1603
  %148 = sub nsw i64 9223372036854775807, %.034, !dbg !1752
  %149 = icmp ult i64 %148, %.030, !dbg !1754
  br i1 %149, label %150, label %151, !dbg !1755

150:                                              ; preds = %147
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.65, ptr noundef %2), !dbg !1756
  call void @llvm.dbg.value(metadata i8 1, metadata !1568, metadata !DIExpression()), !dbg !1603
  br label %230, !dbg !1758

151:                                              ; preds = %147
  %152 = add i64 %.034, %.030, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %152, metadata !1552, metadata !DIExpression()), !dbg !1603
  %153 = icmp eq i64 %152, %.233, !dbg !1760
  %154 = zext i1 %153 to i8, !dbg !1761
  call void @llvm.dbg.value(metadata i8 %154, metadata !1588, metadata !DIExpression()), !dbg !1673
  %155 = icmp ne i64 %7, 0, !dbg !1762
  br i1 %155, label %156, label %217, !dbg !1763

156:                                              ; preds = %151
  %157 = trunc i8 %154 to i1, !dbg !1764
  br i1 %157, label %158, label %162, !dbg !1765

158:                                              ; preds = %156
  %159 = load i8, ptr %.19, align 1, !dbg !1766, !tbaa !662
  %160 = sext i8 %159 to i32, !dbg !1766
  %161 = icmp ne i32 %160, 0, !dbg !1766
  br i1 %161, label %165, label %162, !dbg !1767

162:                                              ; preds = %158, %156
  %163 = call i64 @time(ptr noundef null), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %163, metadata !1556, metadata !DIExpression()), !dbg !1603
  %164 = icmp sle i64 %.136, %163, !dbg !1769
  br i1 %164, label %165, label %217, !dbg !1770

165:                                              ; preds = %162, %158
  %.142 = phi i64 [ %.041, %158 ], [ %163, %162 ], !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.142, metadata !1556, metadata !DIExpression()), !dbg !1603
  call void @llvm.lifetime.start.p0(i64 272, ptr %12) #16, !dbg !1771
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1589, metadata !DIExpression()), !dbg !1772
  call void @llvm.lifetime.start.p0(i64 272, ptr %13) #16, !dbg !1773
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1592, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 432, metadata !1593, metadata !DIExpression()), !dbg !1775
  %166 = getelementptr inbounds [272 x i8], ptr %12, i64 0, i64 0, !dbg !1776
  %167 = or i32 2, 432, !dbg !1777
  %168 = call ptr @human_readable(i64 noundef %152, ptr noundef %166, i32 noundef %167, i64 noundef 1, i64 noundef 1), !dbg !1778
  call void @llvm.dbg.value(metadata ptr %168, metadata !1594, metadata !DIExpression()), !dbg !1775
  %169 = trunc i8 %154 to i1, !dbg !1779
  br i1 %169, label %173, label %170, !dbg !1780

170:                                              ; preds = %165
  %171 = call i32 @strcmp(ptr noundef %.19, ptr noundef %168), !dbg !1781
  %172 = icmp eq i32 %171, 0, !dbg !1781
  br i1 %172, label %214, label %173, !dbg !1782

173:                                              ; preds = %170, %165
  %174 = call zeroext i1 @known(i64 noundef %.233), !dbg !1783
  br i1 %174, label %177, label %175, !dbg !1784

175:                                              ; preds = %173
  %176 = getelementptr inbounds [7 x i8], ptr %9, i64 0, i64 0, !dbg !1785
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.66, ptr noundef %2, i64 noundef %6, i64 noundef %7, ptr noundef %176, ptr noundef %168), !dbg !1786
  br label %200, !dbg !1786

177:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 %152, metadata !1595, metadata !DIExpression()), !dbg !1787
  %178 = icmp eq i64 %.233, 0, !dbg !1788
  br i1 %178, label %179, label %180, !dbg !1789

179:                                              ; preds = %177
  br label %190, !dbg !1789

180:                                              ; preds = %177
  %181 = icmp ule i64 %152, 184467440737095516, !dbg !1790
  br i1 %181, label %182, label %185, !dbg !1791

182:                                              ; preds = %180
  %183 = mul i64 %152, 100, !dbg !1792
  %184 = udiv i64 %183, %.233, !dbg !1793
  br label %188, !dbg !1791

185:                                              ; preds = %180
  %186 = sdiv i64 %.233, 100, !dbg !1794
  %187 = udiv i64 %152, %186, !dbg !1795
  br label %188, !dbg !1791

188:                                              ; preds = %185, %182
  %189 = phi i64 [ %184, %182 ], [ %187, %185 ], !dbg !1791
  br label %190, !dbg !1789

190:                                              ; preds = %188, %179
  %191 = phi i64 [ 100, %179 ], [ %189, %188 ], !dbg !1789
  %192 = trunc i64 %191 to i32, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %192, metadata !1600, metadata !DIExpression()), !dbg !1787
  %193 = getelementptr inbounds [272 x i8], ptr %13, i64 0, i64 0, !dbg !1797
  %194 = or i32 0, 432, !dbg !1798
  %195 = call ptr @human_readable(i64 noundef %.233, ptr noundef %193, i32 noundef %194, i64 noundef 1, i64 noundef 1), !dbg !1799
  call void @llvm.dbg.value(metadata ptr %195, metadata !1601, metadata !DIExpression()), !dbg !1787
  %196 = trunc i8 %154 to i1, !dbg !1800
  br i1 %196, label %197, label %198, !dbg !1802

197:                                              ; preds = %190
  call void @llvm.dbg.value(metadata ptr %195, metadata !1594, metadata !DIExpression()), !dbg !1775
  br label %198, !dbg !1803

198:                                              ; preds = %197, %190
  %.01 = phi ptr [ %195, %197 ], [ %168, %190 ], !dbg !1775
  call void @llvm.dbg.value(metadata ptr %.01, metadata !1594, metadata !DIExpression()), !dbg !1775
  %199 = getelementptr inbounds [7 x i8], ptr %9, i64 0, i64 0, !dbg !1804
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.67, ptr noundef %2, i64 noundef %6, i64 noundef %7, ptr noundef %199, ptr noundef %.01, ptr noundef %195, i32 noundef %192), !dbg !1805
  br label %200

200:                                              ; preds = %198, %175
  %.1 = phi ptr [ %.01, %198 ], [ %168, %175 ], !dbg !1775
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1594, metadata !DIExpression()), !dbg !1775
  %201 = getelementptr inbounds [272 x i8], ptr %10, i64 0, i64 0, !dbg !1806
  %202 = call ptr @strcpy(ptr noundef %201, ptr noundef %.1), !dbg !1807
  %203 = getelementptr inbounds [272 x i8], ptr %10, i64 0, i64 0, !dbg !1808
  call void @llvm.dbg.value(metadata ptr %203, metadata !1573, metadata !DIExpression()), !dbg !1603
  %204 = add nsw i64 %.142, 5, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %204, metadata !1553, metadata !DIExpression()), !dbg !1603
  %205 = call i32 @dosync(i32 noundef %0, ptr noundef %2), !dbg !1810
  %206 = icmp ne i32 %205, 0, !dbg !1812
  br i1 %206, label %207, label %213, !dbg !1813

207:                                              ; preds = %200
  %208 = call ptr @__error(), !dbg !1814
  %209 = load i32, ptr %208, align 4, !dbg !1814, !tbaa !689
  %210 = icmp ne i32 %209, 5, !dbg !1817
  br i1 %210, label %211, label %212, !dbg !1818

211:                                              ; preds = %207
  call void @llvm.dbg.value(metadata i8 1, metadata !1568, metadata !DIExpression()), !dbg !1603
  br label %215, !dbg !1819

212:                                              ; preds = %207
  call void @llvm.dbg.value(metadata i8 1, metadata !1567, metadata !DIExpression()), !dbg !1603
  br label %213, !dbg !1821

213:                                              ; preds = %212, %200
  %.624 = phi i8 [ 1, %212 ], [ %.119, %200 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.624, metadata !1567, metadata !DIExpression()), !dbg !1603
  br label %214, !dbg !1822

214:                                              ; preds = %213, %170
  %.237 = phi i64 [ %204, %213 ], [ %.136, %170 ], !dbg !1603
  %.725 = phi i8 [ %.624, %213 ], [ %.119, %170 ], !dbg !1603
  %.210 = phi ptr [ %203, %213 ], [ %.19, %170 ], !dbg !1603
  call void @llvm.dbg.value(metadata ptr %.210, metadata !1573, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.725, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.237, metadata !1553, metadata !DIExpression()), !dbg !1603
  br label %215, !dbg !1823

215:                                              ; preds = %214, %211
  %.338 = phi i64 [ %204, %211 ], [ %.237, %214 ], !dbg !1824
  %.8 = phi i8 [ %.119, %211 ], [ %.725, %214 ], !dbg !1603
  %.416 = phi i8 [ 1, %211 ], [ %.113, %214 ], !dbg !1603
  %.311 = phi ptr [ %203, %211 ], [ %.210, %214 ], !dbg !1825
  %.2 = phi i32 [ 2, %211 ], [ 0, %214 ]
  call void @llvm.dbg.value(metadata ptr %.311, metadata !1573, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.416, metadata !1568, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.8, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.338, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.lifetime.end.p0(i64 272, ptr %13) #16, !dbg !1823
  call void @llvm.lifetime.end.p0(i64 272, ptr %12) #16, !dbg !1823
  switch i32 %.2, label %218 [
    i32 0, label %216
  ]

216:                                              ; preds = %215
  br label %217, !dbg !1826

217:                                              ; preds = %216, %162, %151
  %.243 = phi i64 [ %.142, %216 ], [ %163, %162 ], [ %.041, %151 ], !dbg !1603
  %.439 = phi i64 [ %.338, %216 ], [ %.136, %162 ], [ %.136, %151 ], !dbg !1603
  %.9 = phi i8 [ %.8, %216 ], [ %.119, %162 ], [ %.119, %151 ], !dbg !1655
  %.517 = phi i8 [ %.416, %216 ], [ %.113, %162 ], [ %.113, %151 ], !dbg !1603
  %.4 = phi ptr [ %.311, %216 ], [ %.19, %162 ], [ %.19, %151 ], !dbg !1603
  call void @llvm.dbg.value(metadata ptr %.4, metadata !1573, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.517, metadata !1568, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.9, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.439, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.243, metadata !1556, metadata !DIExpression()), !dbg !1603
  br label %218, !dbg !1827

218:                                              ; preds = %217, %215
  %.344 = phi i64 [ %.142, %215 ], [ %.243, %217 ], !dbg !1654
  %.540 = phi i64 [ %.338, %215 ], [ %.439, %217 ], !dbg !1824
  %.10 = phi i8 [ %.8, %215 ], [ %.9, %217 ], !dbg !1655
  %.6 = phi i8 [ %.416, %215 ], [ %.517, %217 ], !dbg !1828
  %.5 = phi ptr [ %.311, %215 ], [ %.4, %217 ], !dbg !1825
  %.3 = phi i32 [ %.2, %215 ], [ 0, %217 ]
  call void @llvm.dbg.value(metadata ptr %.5, metadata !1573, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.6, metadata !1568, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.10, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.540, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %.344, metadata !1556, metadata !DIExpression()), !dbg !1603
  switch i32 %.3, label %238 [
    i32 0, label %219
    i32 2, label %230
  ]

219:                                              ; preds = %218
  br label %64, !dbg !1653, !llvm.loop !1829

220:                                              ; preds = %76, %72
  %221 = call i32 @dosync(i32 noundef %0, ptr noundef %2), !dbg !1830
  %222 = icmp ne i32 %221, 0, !dbg !1832
  br i1 %222, label %223, label %229, !dbg !1833

223:                                              ; preds = %220
  %224 = call ptr @__error(), !dbg !1834
  %225 = load i32, ptr %224, align 4, !dbg !1834, !tbaa !689
  %226 = icmp ne i32 %225, 5, !dbg !1837
  br i1 %226, label %227, label %228, !dbg !1838

227:                                              ; preds = %223
  call void @llvm.dbg.value(metadata i8 1, metadata !1568, metadata !DIExpression()), !dbg !1603
  br label %230, !dbg !1839

228:                                              ; preds = %223
  call void @llvm.dbg.value(metadata i8 1, metadata !1567, metadata !DIExpression()), !dbg !1603
  br label %229, !dbg !1841

229:                                              ; preds = %228, %220
  %.11 = phi i8 [ 1, %228 ], [ %.018, %220 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.11, metadata !1567, metadata !DIExpression()), !dbg !1603
  br label %230, !dbg !1842

230:                                              ; preds = %229, %227, %218, %150, %143, %35
  %.12 = phi i8 [ %.018, %227 ], [ %.11, %229 ], [ %.422, %143 ], [ %.119, %150 ], [ %.10, %218 ], [ 0, %35 ], !dbg !1603
  %.7 = phi i8 [ 1, %227 ], [ %.012, %229 ], [ %.214, %143 ], [ 1, %150 ], [ %.6, %218 ], [ 1, %35 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.7, metadata !1568, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %.12, metadata !1567, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.label(metadata !1602), !dbg !1843
  call void @alignfree(ptr noundef %24), !dbg !1844
  %231 = trunc i8 %.7 to i1, !dbg !1845
  br i1 %231, label %232, label %233, !dbg !1845

232:                                              ; preds = %230
  br label %236, !dbg !1845

233:                                              ; preds = %230
  %234 = trunc i8 %.12 to i1, !dbg !1846
  %235 = zext i1 %234 to i32, !dbg !1846
  br label %236, !dbg !1845

236:                                              ; preds = %233, %232
  %237 = phi i32 [ -1, %232 ], [ %235, %233 ], !dbg !1845
  br label %238, !dbg !1847

238:                                              ; preds = %236, %218, %143
  %.0 = phi i32 [ %237, %236 ], [ undef, %143 ], [ undef, %218 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr %10) #16, !dbg !1848
  call void @llvm.lifetime.end.p0(i64 7, ptr %9) #16, !dbg !1848
  ret i32 %.0, !dbg !1848
}

declare !dbg !1849 i32 @ftruncate(i32 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1852 i32 @getpagesize() #13

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @periodic_pattern(i32 noundef %0) #7 !dbg !1855 {
  %2 = alloca [3 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1857, metadata !DIExpression()), !dbg !1860
  %3 = icmp sle i32 %0, 0, !dbg !1861
  br i1 %3, label %4, label %5, !dbg !1863

4:                                                ; preds = %1
  br label %37, !dbg !1864

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 3, ptr %2) #16, !dbg !1865
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1858, metadata !DIExpression()), !dbg !1866
  %6 = and i32 %0, 4095, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %6, metadata !1859, metadata !DIExpression()), !dbg !1860
  %7 = shl i32 %6, 12, !dbg !1868
  %8 = or i32 %6, %7, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %8, metadata !1859, metadata !DIExpression()), !dbg !1860
  %9 = lshr i32 %8, 4, !dbg !1870
  %10 = and i32 %9, 255, !dbg !1871
  %11 = trunc i32 %10 to i8, !dbg !1872
  %12 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 0, !dbg !1873
  store i8 %11, ptr %12, align 1, !dbg !1874, !tbaa !662
  %13 = lshr i32 %8, 8, !dbg !1875
  %14 = and i32 %13, 255, !dbg !1876
  %15 = trunc i32 %14 to i8, !dbg !1877
  %16 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 1, !dbg !1878
  store i8 %15, ptr %16, align 1, !dbg !1879, !tbaa !662
  %17 = and i32 %8, 255, !dbg !1880
  %18 = trunc i32 %17 to i8, !dbg !1881
  %19 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 2, !dbg !1882
  store i8 %18, ptr %19, align 1, !dbg !1883, !tbaa !662
  %20 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 0, !dbg !1884
  %21 = load i8, ptr %20, align 1, !dbg !1884, !tbaa !662
  %22 = zext i8 %21 to i32, !dbg !1884
  %23 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 1, !dbg !1885
  %24 = load i8, ptr %23, align 1, !dbg !1885, !tbaa !662
  %25 = zext i8 %24 to i32, !dbg !1885
  %26 = icmp ne i32 %22, %25, !dbg !1886
  br i1 %26, label %35, label %27, !dbg !1887

27:                                               ; preds = %5
  %28 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 0, !dbg !1888
  %29 = load i8, ptr %28, align 1, !dbg !1888, !tbaa !662
  %30 = zext i8 %29 to i32, !dbg !1888
  %31 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 2, !dbg !1889
  %32 = load i8, ptr %31, align 1, !dbg !1889, !tbaa !662
  %33 = zext i8 %32 to i32, !dbg !1889
  %34 = icmp ne i32 %30, %33, !dbg !1890
  br label %35, !dbg !1887

35:                                               ; preds = %27, %5
  %36 = phi i1 [ true, %5 ], [ %34, %27 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr %2) #16, !dbg !1891
  br label %37

37:                                               ; preds = %35, %4
  %.0 = phi i1 [ false, %4 ], [ %36, %35 ], !dbg !1860
  ret i1 %.0, !dbg !1891
}

; Function Attrs: allocsize(1)
declare !dbg !1892 noalias nonnull ptr @xalignalloc(i64 noundef, i64 noundef) #14

; Function Attrs: nounwind ssp uwtable
define internal void @direct_mode(i32 noundef %0, i1 noundef zeroext %1) #7 !dbg !1898 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1902, metadata !DIExpression()), !dbg !1904
  %3 = zext i1 %1 to i8
  call void @llvm.dbg.value(metadata i8 %3, metadata !1903, metadata !DIExpression()), !dbg !1904
  ret void, !dbg !1905
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @dorewind(i32 noundef %0, ptr noundef %1) #7 !dbg !1906 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1910, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata ptr %1, metadata !1911, metadata !DIExpression()), !dbg !1913
  %3 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 1, !dbg !1914
  %4 = load i16, ptr %3, align 4, !dbg !1914, !tbaa !995
  %5 = zext i16 %4 to i32, !dbg !1914
  %6 = and i32 %5, 61440, !dbg !1914
  %7 = icmp eq i32 %6, 8192, !dbg !1914
  br i1 %7, label %8, label %9, !dbg !1916

8:                                                ; preds = %2
  br label %9, !dbg !1917

9:                                                ; preds = %8, %2
  %10 = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0), !dbg !1919
  call void @llvm.dbg.value(metadata i64 %10, metadata !1912, metadata !DIExpression()), !dbg !1913
  %11 = icmp slt i64 0, %10, !dbg !1920
  br i1 %11, label %12, label %14, !dbg !1922

12:                                               ; preds = %9
  %13 = call ptr @__error(), !dbg !1923
  store i32 22, ptr %13, align 4, !dbg !1924, !tbaa !689
  br label %14, !dbg !1923

14:                                               ; preds = %12, %9
  %15 = icmp eq i64 %10, 0, !dbg !1925
  ret i1 %15, !dbg !1926
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @known(i64 noundef %0) #7 !dbg !1927 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1931, metadata !DIExpression()), !dbg !1932
  %2 = icmp sle i64 0, %0, !dbg !1933
  ret i1 %2, !dbg !1934
}

; Function Attrs: nounwind ssp uwtable
define internal void @fillpattern(i32 noundef %0, ptr noundef %1, i64 noundef %2) #7 !dbg !1935 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1939, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata ptr %1, metadata !1940, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %2, metadata !1941, metadata !DIExpression()), !dbg !1944
  %4 = and i32 %0, 4095, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %4, metadata !1943, metadata !DIExpression()), !dbg !1944
  %5 = shl i32 %4, 12, !dbg !1946
  %6 = or i32 %4, %5, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %6, metadata !1943, metadata !DIExpression()), !dbg !1944
  %7 = lshr i32 %6, 4, !dbg !1948
  %8 = and i32 %7, 255, !dbg !1949
  %9 = trunc i32 %8 to i8, !dbg !1950
  %10 = getelementptr inbounds i8, ptr %1, i64 0, !dbg !1951
  store i8 %9, ptr %10, align 1, !dbg !1952, !tbaa !662
  %11 = lshr i32 %6, 8, !dbg !1953
  %12 = and i32 %11, 255, !dbg !1954
  %13 = trunc i32 %12 to i8, !dbg !1955
  %14 = getelementptr inbounds i8, ptr %1, i64 1, !dbg !1956
  store i8 %13, ptr %14, align 1, !dbg !1957, !tbaa !662
  %15 = and i32 %6, 255, !dbg !1958
  %16 = trunc i32 %15 to i8, !dbg !1959
  %17 = getelementptr inbounds i8, ptr %1, i64 2, !dbg !1960
  store i8 %16, ptr %17, align 1, !dbg !1961, !tbaa !662
  call void @llvm.dbg.value(metadata i64 3, metadata !1942, metadata !DIExpression()), !dbg !1944
  br label %18, !dbg !1962

18:                                               ; preds = %23, %3
  %.0 = phi i64 [ 3, %3 ], [ %24, %23 ], !dbg !1964
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1942, metadata !DIExpression()), !dbg !1944
  %19 = udiv i64 %2, 2, !dbg !1965
  %20 = icmp ule i64 %.0, %19, !dbg !1967
  br i1 %20, label %21, label %25, !dbg !1968

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %1, i64 %.0, !dbg !1969
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %1, i64 %.0, i1 false), !dbg !1970
  br label %23, !dbg !1970

23:                                               ; preds = %21
  %24 = mul i64 %.0, 2, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %24, metadata !1942, metadata !DIExpression()), !dbg !1944
  br label %18, !dbg !1972, !llvm.loop !1973

25:                                               ; preds = %18
  %26 = icmp ult i64 %.0, %2, !dbg !1975
  br i1 %26, label %27, label %30, !dbg !1977

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, ptr %1, i64 %.0, !dbg !1978
  %29 = sub i64 %2, %.0, !dbg !1979
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %1, i64 %29, i1 false), !dbg !1980
  br label %30, !dbg !1980

30:                                               ; preds = %27, %25
  %31 = and i32 %0, 4096, !dbg !1981
  %32 = icmp ne i32 %31, 0, !dbg !1981
  br i1 %32, label %33, label %45, !dbg !1983

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i64 0, metadata !1942, metadata !DIExpression()), !dbg !1944
  br label %34, !dbg !1984

34:                                               ; preds = %42, %33
  %.1 = phi i64 [ 0, %33 ], [ %43, %42 ], !dbg !1986
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1942, metadata !DIExpression()), !dbg !1944
  %35 = icmp ult i64 %.1, %2, !dbg !1987
  br i1 %35, label %36, label %44, !dbg !1989

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %1, i64 %.1, !dbg !1990
  %38 = load i8, ptr %37, align 1, !dbg !1991, !tbaa !662
  %39 = zext i8 %38 to i32, !dbg !1991
  %40 = xor i32 %39, 128, !dbg !1991
  %41 = trunc i32 %40 to i8, !dbg !1991
  store i8 %41, ptr %37, align 1, !dbg !1991, !tbaa !662
  br label %42, !dbg !1990

42:                                               ; preds = %36
  %43 = add i64 %.1, 512, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %43, metadata !1942, metadata !DIExpression()), !dbg !1944
  br label %34, !dbg !1993, !llvm.loop !1994

44:                                               ; preds = %34
  br label %45, !dbg !1995

45:                                               ; preds = %44, %30
  ret void, !dbg !1996
}

; Function Attrs: nounwind ssp uwtable
define internal void @passname(ptr noundef %0, ptr noundef %1) #7 !dbg !1997 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2003, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata ptr %1, metadata !2004, metadata !DIExpression()), !dbg !2005
  %3 = icmp ne ptr %0, null, !dbg !2006
  br i1 %3, label %4, label %15, !dbg !2008

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, ptr %0, i64 0, !dbg !2009
  %6 = load i8, ptr %5, align 1, !dbg !2009, !tbaa !662
  %7 = zext i8 %6 to i32, !dbg !2009
  %8 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !2010
  %9 = load i8, ptr %8, align 1, !dbg !2010, !tbaa !662
  %10 = zext i8 %9 to i32, !dbg !2010
  %11 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !2011
  %12 = load i8, ptr %11, align 1, !dbg !2011, !tbaa !662
  %13 = zext i8 %12 to i32, !dbg !2011
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.68, i32 noundef %7, i32 noundef %10, i32 noundef %13), !dbg !2012
  br label %16, !dbg !2012

15:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 @.str.69, i64 7, i1 false), !dbg !2013
  br label %16

16:                                               ; preds = %15, %4
  ret void, !dbg !2014
}

declare !dbg !2015 i64 @time(ptr noundef) #2

declare !dbg !2020 void @randread(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2023 i64 @"\01_write"(i32 noundef, ptr noundef, i64 noundef) #2

declare !dbg !2026 ptr @umaxtostr(i64 noundef, ptr noundef) #2

declare !dbg !2030 ptr @human_readable(i64 noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

declare !dbg !2033 ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @alignfree(ptr noundef %0) #3 !dbg !2036 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2038, metadata !DIExpression()), !dbg !2039
  call void @rpl_free(ptr noundef %0), !dbg !2040
  ret void, !dbg !2041
}

declare !dbg !2042 i32 @sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i64 @randint_choose(ptr noundef %0, i64 noundef %1) #3 !dbg !2046 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %1, metadata !2052, metadata !DIExpression()), !dbg !2053
  %3 = sub i64 %1, 1, !dbg !2054
  %4 = call i64 @randint_genmax(ptr noundef %0, i64 noundef %3), !dbg !2055
  ret i64 %4, !dbg !2056
}

declare !dbg !2057 i64 @randint_genmax(ptr noundef, i64 noundef) #2

declare !dbg !2058 i32 @"\01_fcntl"(i32 noundef, i32 noundef, ...) #2

declare !dbg !2062 i32 @randint_all_free(ptr noundef) #2

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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn }
attributes #16 = { nounwind }
attributes #17 = { allocsize(0,1) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold noreturn }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { allocsize(1) }

!llvm.dbg.cu = !{!66}
!llvm.ident = !{!402}
!llvm.module.flags = !{!403, !404, !405, !406, !407, !408}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/shred.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 31)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1072, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 134)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2096, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 262)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2936, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 367)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 48)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 57)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3848, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 481)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2304, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 288)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 6)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1180, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1189, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 10)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "long_opts", scope: !66, file: !2, line: 149, type: !392, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !123, globals: !143, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!67 = !{!68, !72, !78, !81, !87, !101, !104, !107, !120}
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 101, baseType: !69, size: 32, elements: !70)
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !{!71}
!71 = !DIEnumerator(name: "DEFAULT_PASSES", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "remove_method", file: !2, line: 113, baseType: !69, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "remove_none", value: 0)
!75 = !DIEnumerator(name: "remove_unlink", value: 1)
!76 = !DIEnumerator(name: "remove_wipe", value: 2)
!77 = !DIEnumerator(name: "remove_wipesync", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 144, baseType: !69, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIEnumerator(name: "RANDOM_SOURCE_OPTION", value: 128)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 332, baseType: !83, size: 32, elements: !84)
!82 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!86 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !88, line: 32, baseType: !69, size: 32, elements: !89)
!88 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!90 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!91 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!92 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!93 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!94 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!95 = !DIEnumerator(name: "c_quoting_style", value: 5)
!96 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!97 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!98 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!99 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!100 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 105, baseType: !69, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIEnumerator(name: "VERBOSE_UPDATE", value: 5)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 110, baseType: !69, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIEnumerator(name: "SECTOR_MASK", value: 511)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 42, baseType: !69, size: 32, elements: !109)
!108 = !DIFile(filename: "../lib/human.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!110 = !DIEnumerator(name: "human_ceiling", value: 0)
!111 = !DIEnumerator(name: "human_round_to_nearest", value: 1)
!112 = !DIEnumerator(name: "human_floor", value: 2)
!113 = !DIEnumerator(name: "human_group_digits", value: 4)
!114 = !DIEnumerator(name: "human_suppress_point_zero", value: 8)
!115 = !DIEnumerator(name: "human_autoscale", value: 16)
!116 = !DIEnumerator(name: "human_base_1024", value: 32)
!117 = !DIEnumerator(name: "human_space_before_unit", value: 64)
!118 = !DIEnumerator(name: "human_SI", value: 128)
!119 = !DIEnumerator(name: "human_B", value: 256)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 109, baseType: !69, size: 32, elements: !121)
!121 = !{!122}
!122 = !DIEnumerator(name: "SECTOR_SIZE", value: 512)
!123 = !{!124, !126, !127, !129, !136, !137, !141}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !130, line: 31, baseType: !131)
!130 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !132, line: 71, baseType: !133)
!132 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !134, line: 48, baseType: !135)
!134 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!135 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 31, baseType: !139)
!138 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !134, line: 94, baseType: !140)
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !142, line: 32, baseType: !140)
!142 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!143 = !{!0, !7, !12, !17, !19, !24, !29, !34, !39, !44, !49, !54, !59, !144, !149, !154, !159, !164, !169, !174, !179, !184, !189, !191, !196, !201, !206, !208, !210, !212, !217, !219, !224, !226, !228, !230, !235, !240, !245, !250, !255, !260, !265, !267, !269, !271, !276, !278, !280, !285, !290, !292, !294, !64, !296, !300, !302, !304, !306, !310, !315, !320, !322, !324, !326, !328, !334, !336, !338, !340, !342, !347, !349, !354, !359, !361, !363, !365, !367, !372, !374, !376, !378, !380, !385, !388, !390}
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1201, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 25)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1206, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 34)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1214, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 9)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1219, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 16)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1220, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 18)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1237, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 14)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1237, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 12)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1249, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 21)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1255, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 3)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1255, type: !61, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1262, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 2)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "randint_source", scope: !66, file: !2, line: 1155, type: !198, isLocal: true, isDefinition: true)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !200, line: 33, flags: DIFlagFwdDecl)
!200 = !DIFile(filename: "../lib/randint.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !82, line: 586, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 75)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !82, line: 660, type: !193, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !82, line: 660, type: !161, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !82, line: 661, type: !61, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !82, line: 661, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 22)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !82, line: 662, type: !61, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !82, line: 662, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 15)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !82, line: 663, type: !61, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !82, line: 664, type: !61, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !82, line: 665, type: !61, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !82, line: 678, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 23)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !82, line: 678, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 40)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !82, line: 683, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 4)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !82, line: 689, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 71)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !82, line: 695, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 5)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !82, line: 696, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 27)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !82, line: 698, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 51)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !82, line: 699, type: !176, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !51, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !51, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 11)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !252, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !171, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 7)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 8)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !252, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !252, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !287, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "remove_methods", scope: !66, file: !2, line: 126, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 96, elements: !187)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !282, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !252, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !156, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "remove_args", scope: !66, file: !2, line: 121, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, elements: !243)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !2, line: 969, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 17)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 974, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 45)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !2, line: 838, type: !312, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !2, line: 849, type: !214, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 854, type: !257, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 950, type: !181, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "patterns", scope: !66, file: !2, line: 681, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 1760, elements: !332)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!332 = !{!333}
!333 = !DISubrange(count: 55)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 436, type: !166, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !146, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 507, type: !9, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 528, type: !312, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 19)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !257, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 580, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 35)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 13)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 280, type: !282, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !2, line: 311, type: !181, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !2, line: 322, type: !312, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1138, type: !9, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1145, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 20)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1057, type: !356, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1082, type: !166, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1091, type: !181, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1095, type: !176, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "nameset", scope: !66, file: !2, line: 983, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 520, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 65)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1000, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !288)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1000, type: !287, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1000, type: !193, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 2816, elements: !274)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !395, line: 50, size: 256, elements: !396)
!395 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!396 = !{!397, !398, !399, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !394, file: !395, line: 52, baseType: !124, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !394, file: !395, line: 55, baseType: !83, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !394, file: !395, line: 56, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !394, file: !395, line: 57, baseType: !83, size: 32, offset: 192)
!402 = !{!"Homebrew clang version 16.0.4"}
!403 = !{i32 7, !"Dwarf Version", i32 4}
!404 = !{i32 2, !"Debug Info Version", i32 3}
!405 = !{i32 1, !"wchar_size", i32 4}
!406 = !{i32 8, !"PIC Level", i32 2}
!407 = !{i32 7, !"uwtable", i32 2}
!408 = !{i32 7, !"frame-pointer", i32 2}
!409 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 165, type: !410, scopeLine: 166, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !83}
!412 = !{!413}
!413 = !DILocalVariable(name: "status", arg: 1, scope: !409, file: !2, line: 165, type: !83)
!414 = !DILocation(line: 0, scope: !409)
!415 = !DILocation(line: 167, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !2, line: 167, column: 7)
!417 = !DILocation(line: 167, column: 7, scope: !409)
!418 = !DILocation(line: 168, column: 5, scope: !416)
!419 = !DILocation(line: 168, column: 5, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !2, line: 168, column: 5)
!421 = !{!422, !422, i64 0}
!422 = !{!"any pointer", !423, i64 0}
!423 = !{!"omnipotent char", !424, i64 0}
!424 = !{!"Simple C/C++ TBAA"}
!425 = !DILocation(line: 171, column: 53, scope: !426)
!426 = distinct !DILexicalBlock(scope: !416, file: !2, line: 170, column: 5)
!427 = !DILocation(line: 171, column: 7, scope: !426)
!428 = !DILocation(line: 175, column: 5, scope: !426)
!429 = !DILocation(line: 172, column: 7, scope: !426)
!430 = !DILocation(line: 179, column: 5, scope: !426)
!431 = !DILocation(line: 176, column: 7, scope: !426)
!432 = !DILocation(line: 181, column: 7, scope: !426)
!433 = !DILocation(line: 183, column: 7, scope: !426)
!434 = !DILocation(line: 196, column: 5, scope: !426)
!435 = !DILocation(line: 189, column: 7, scope: !426)
!436 = !DILocation(line: 197, column: 39, scope: !426)
!437 = !DILocation(line: 197, column: 7, scope: !426)
!438 = !DILocation(line: 198, column: 42, scope: !426)
!439 = !DILocation(line: 198, column: 7, scope: !426)
!440 = !DILocation(line: 210, column: 5, scope: !426)
!441 = !DILocation(line: 199, column: 7, scope: !426)
!442 = !DILocation(line: 216, column: 5, scope: !426)
!443 = !DILocation(line: 211, column: 7, scope: !426)
!444 = !DILocation(line: 217, column: 7, scope: !426)
!445 = !DILocation(line: 219, column: 3, scope: !409)
!446 = !DISubprogram(name: "fprintf", scope: !447, file: !447, line: 155, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!447 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!448 = !DISubroutineType(types: !449)
!449 = !{!83, !450, !500, null}
!450 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !453, line: 157, baseType: !454)
!453 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !453, line: 126, size: 1216, elements: !455)
!455 = !{!456, !459, !460, !461, !463, !464, !469, !470, !471, !475, !479, !484, !488, !489, !492, !493, !495, !497, !498, !499}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !454, file: !453, line: 127, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !454, file: !453, line: 128, baseType: !83, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !454, file: !453, line: 129, baseType: !83, size: 32, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !454, file: !453, line: 130, baseType: !462, size: 16, offset: 128)
!462 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !454, file: !453, line: 131, baseType: !462, size: 16, offset: 144)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !454, file: !453, line: 132, baseType: !465, size: 128, offset: 192)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !453, line: 92, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !465, file: !453, line: 93, baseType: !457, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !465, file: !453, line: 94, baseType: !83, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !454, file: !453, line: 133, baseType: !83, size: 32, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !454, file: !453, line: 136, baseType: !126, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !454, file: !453, line: 137, baseType: !472, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!83, !126}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !454, file: !453, line: 138, baseType: !476, size: 64, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!83, !126, !136, !83}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !454, file: !453, line: 139, baseType: !480, size: 64, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !126, !483, !83}
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !453, line: 81, baseType: !131)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !454, file: !453, line: 140, baseType: !485, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!83, !126, !124, !83}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !454, file: !453, line: 143, baseType: !465, size: 128, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !454, file: !453, line: 144, baseType: !490, size: 64, offset: 832)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !453, line: 98, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !454, file: !453, line: 145, baseType: !83, size: 32, offset: 896)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !454, file: !453, line: 148, baseType: !494, size: 24, offset: 928)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 24, elements: !187)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !454, file: !453, line: 149, baseType: !496, size: 8, offset: 952)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 8, elements: !57)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !454, file: !453, line: 152, baseType: !465, size: 128, offset: 960)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !454, file: !453, line: 155, baseType: !83, size: 32, offset: 1088)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !454, file: !453, line: 156, baseType: !483, size: 64, offset: 1152)
!500 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!501 = !{}
!502 = !DISubprogram(name: "printf", scope: !447, file: !447, line: 175, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!503 = !DISubroutineType(types: !504)
!504 = !{!83, !500, null}
!505 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !447, file: !447, line: 157, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!506 = !DISubroutineType(types: !507)
!507 = !{!83, !500, !450}
!508 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !82, file: !82, line: 584, type: !509, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !501)
!509 = !DISubroutineType(types: !510)
!510 = !{null}
!511 = !DILocation(line: 588, column: 5, scope: !508)
!512 = !DILocation(line: 586, column: 3, scope: !508)
!513 = !DILocation(line: 589, column: 1, scope: !508)
!514 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 657, type: !515, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !124}
!517 = !{!518, !519, !526, !527, !529, !530}
!518 = !DILocalVariable(name: "program", arg: 1, scope: !514, file: !82, line: 657, type: !124)
!519 = !DILocalVariable(name: "infomap", scope: !514, file: !82, line: 659, type: !520)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 896, elements: !283)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !514, file: !82, line: 659, size: 128, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !522, file: !82, line: 659, baseType: !124, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !522, file: !82, line: 659, baseType: !124, size: 64, offset: 64)
!526 = !DILocalVariable(name: "node", scope: !514, file: !82, line: 669, type: !124)
!527 = !DILocalVariable(name: "map_prog", scope: !514, file: !82, line: 670, type: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!529 = !DILocalVariable(name: "lc_messages", scope: !514, file: !82, line: 682, type: !124)
!530 = !DILocalVariable(name: "url_program", scope: !514, file: !82, line: 695, type: !124)
!531 = !DILocation(line: 0, scope: !514)
!532 = !DILocation(line: 659, column: 3, scope: !514)
!533 = !DILocation(line: 659, column: 67, scope: !514)
!534 = !DILocation(line: 670, column: 36, scope: !514)
!535 = !DILocation(line: 672, column: 3, scope: !514)
!536 = !DILocation(line: 672, column: 20, scope: !514)
!537 = !{!538, !422, i64 0}
!538 = !{!"infomap", !422, i64 0, !422, i64 8}
!539 = !DILocation(line: 672, column: 10, scope: !514)
!540 = !DILocation(line: 672, column: 28, scope: !514)
!541 = !DILocation(line: 672, column: 33, scope: !514)
!542 = !DILocation(line: 672, column: 31, scope: !514)
!543 = !DILocation(line: 673, column: 13, scope: !514)
!544 = distinct !{!544, !535, !543, !545, !546}
!545 = !{!"llvm.loop.mustprogress"}
!546 = !{!"llvm.loop.unroll.disable"}
!547 = !DILocation(line: 675, column: 17, scope: !548)
!548 = distinct !DILexicalBlock(scope: !514, file: !82, line: 675, column: 7)
!549 = !{!538, !422, i64 8}
!550 = !DILocation(line: 675, column: 7, scope: !548)
!551 = !DILocation(line: 675, column: 7, scope: !514)
!552 = !DILocation(line: 676, column: 22, scope: !548)
!553 = !DILocation(line: 676, column: 5, scope: !548)
!554 = !DILocation(line: 678, column: 3, scope: !514)
!555 = !DILocation(line: 682, column: 29, scope: !514)
!556 = !DILocation(line: 683, column: 7, scope: !557)
!557 = distinct !DILexicalBlock(scope: !514, file: !82, line: 683, column: 7)
!558 = !DILocation(line: 683, column: 19, scope: !557)
!559 = !DILocation(line: 683, column: 22, scope: !557)
!560 = !DILocation(line: 683, column: 7, scope: !514)
!561 = !DILocation(line: 690, column: 61, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !82, line: 684, column: 5)
!563 = !DILocation(line: 689, column: 7, scope: !562)
!564 = !DILocation(line: 691, column: 5, scope: !562)
!565 = !DILocation(line: 695, column: 29, scope: !514)
!566 = !DILocation(line: 696, column: 3, scope: !514)
!567 = !DILocation(line: 699, column: 22, scope: !514)
!568 = !DILocation(line: 699, column: 17, scope: !514)
!569 = !DILocation(line: 698, column: 3, scope: !514)
!570 = !DILocation(line: 700, column: 1, scope: !514)
!571 = !DISubprogram(name: "exit", scope: !572, file: !572, line: 145, type: !410, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !501)
!572 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!573 = !DISubprogram(name: "strcmp", scope: !574, file: !574, line: 77, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!574 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!575 = !DISubroutineType(types: !576)
!576 = !{!83, !124, !124}
!577 = !DISubprogram(name: "setlocale", scope: !578, file: !578, line: 53, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!578 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!579 = !DISubroutineType(types: !580)
!580 = !{!136, !83, !124}
!581 = !DISubprogram(name: "strncmp", scope: !574, file: !574, line: 84, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!582 = !DISubroutineType(types: !583)
!583 = !{!83, !124, !124, !137}
!584 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1168, type: !585, scopeLine: 1169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !588)
!585 = !DISubroutineType(types: !586)
!586 = !{!83, !83, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!588 = !{!589, !590, !591, !593, !603, !604, !605, !606, !607, !608}
!589 = !DILocalVariable(name: "argc", arg: 1, scope: !584, file: !2, line: 1168, type: !83)
!590 = !DILocalVariable(name: "argv", arg: 2, scope: !584, file: !2, line: 1168, type: !587)
!591 = !DILocalVariable(name: "ok", scope: !584, file: !2, line: 1170, type: !592)
!592 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!593 = !DILocalVariable(name: "flags", scope: !584, file: !2, line: 1171, type: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Options", file: !2, line: 131, size: 256, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !594, file: !2, line: 133, baseType: !592, size: 8)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "n_iterations", scope: !594, file: !2, line: 134, baseType: !137, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !594, file: !2, line: 135, baseType: !129, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "remove_file", scope: !594, file: !2, line: 136, baseType: !72, size: 32, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !594, file: !2, line: 137, baseType: !592, size: 8, offset: 224)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !594, file: !2, line: 138, baseType: !592, size: 8, offset: 232)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "zero_fill", scope: !594, file: !2, line: 139, baseType: !592, size: 8, offset: 240)
!603 = !DILocalVariable(name: "file", scope: !584, file: !2, line: 1172, type: !587)
!604 = !DILocalVariable(name: "n_files", scope: !584, file: !2, line: 1173, type: !83)
!605 = !DILocalVariable(name: "c", scope: !584, file: !2, line: 1174, type: !83)
!606 = !DILocalVariable(name: "i", scope: !584, file: !2, line: 1175, type: !83)
!607 = !DILocalVariable(name: "random_source", scope: !584, file: !2, line: 1176, type: !124)
!608 = !DILocalVariable(name: "qname", scope: !609, file: !2, line: 1261, type: !136)
!609 = distinct !DILexicalBlock(scope: !610, file: !2, line: 1260, column: 5)
!610 = distinct !DILexicalBlock(scope: !611, file: !2, line: 1259, column: 3)
!611 = distinct !DILexicalBlock(scope: !584, file: !2, line: 1259, column: 3)
!612 = !DILocation(line: 0, scope: !584)
!613 = !DILocation(line: 1171, column: 3, scope: !584)
!614 = !DILocation(line: 1171, column: 18, scope: !584)
!615 = !DILocation(line: 1179, column: 21, scope: !584)
!616 = !DILocation(line: 1179, column: 3, scope: !584)
!617 = !DILocation(line: 1180, column: 3, scope: !584)
!618 = !DILocation(line: 1184, column: 3, scope: !584)
!619 = !DILocation(line: 1186, column: 9, scope: !584)
!620 = !DILocation(line: 1186, column: 22, scope: !584)
!621 = !{!622, !624, i64 8}
!622 = !{!"Options", !623, i64 0, !624, i64 8, !625, i64 16, !423, i64 24, !623, i64 28, !623, i64 29, !623, i64 30}
!623 = !{!"_Bool", !423, i64 0}
!624 = !{!"long", !423, i64 0}
!625 = !{!"long long", !423, i64 0}
!626 = !DILocation(line: 1187, column: 9, scope: !584)
!627 = !DILocation(line: 1187, column: 14, scope: !584)
!628 = !{!622, !625, i64 16}
!629 = !DILocation(line: 1189, column: 3, scope: !584)
!630 = !DILocation(line: 1176, column: 15, scope: !584)
!631 = !DILocation(line: 1189, column: 15, scope: !584)
!632 = !DILocation(line: 1189, column: 71, scope: !584)
!633 = !DILocation(line: 1191, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !584, file: !2, line: 1190, column: 5)
!635 = !DILocation(line: 1194, column: 17, scope: !636)
!636 = distinct !DILexicalBlock(scope: !634, file: !2, line: 1192, column: 9)
!637 = !DILocation(line: 1194, column: 23, scope: !636)
!638 = !{!622, !623, i64 0}
!639 = !DILocation(line: 1195, column: 11, scope: !636)
!640 = !DILocation(line: 1198, column: 44, scope: !636)
!641 = !DILocation(line: 1198, column: 32, scope: !636)
!642 = !DILocation(line: 1198, column: 17, scope: !636)
!643 = !DILocation(line: 1198, column: 30, scope: !636)
!644 = !DILocation(line: 1202, column: 11, scope: !636)
!645 = !DILocation(line: 1205, column: 15, scope: !646)
!646 = distinct !DILexicalBlock(scope: !636, file: !2, line: 1205, column: 15)
!647 = !DILocation(line: 1205, column: 29, scope: !646)
!648 = !DILocation(line: 1205, column: 33, scope: !646)
!649 = !DILocation(line: 1205, column: 15, scope: !636)
!650 = !DILocation(line: 1206, column: 13, scope: !646)
!651 = !DILocation(line: 1207, column: 27, scope: !636)
!652 = !DILocation(line: 1208, column: 11, scope: !636)
!653 = !DILocation(line: 1211, column: 15, scope: !654)
!654 = distinct !DILexicalBlock(scope: !636, file: !2, line: 1211, column: 15)
!655 = !DILocation(line: 1211, column: 22, scope: !654)
!656 = !DILocation(line: 1211, column: 15, scope: !636)
!657 = !DILocation(line: 1212, column: 19, scope: !654)
!658 = !DILocation(line: 1212, column: 31, scope: !654)
!659 = !{!622, !423, i64 24}
!660 = !DILocation(line: 1212, column: 13, scope: !654)
!661 = !DILocation(line: 1214, column: 33, scope: !654)
!662 = !{!423, !423, i64 0}
!663 = !DILocation(line: 1214, column: 19, scope: !654)
!664 = !DILocation(line: 1214, column: 31, scope: !654)
!665 = !DILocation(line: 1216, column: 11, scope: !636)
!666 = !DILocation(line: 1219, column: 36, scope: !636)
!667 = !DILocation(line: 1219, column: 24, scope: !636)
!668 = !DILocation(line: 1219, column: 17, scope: !636)
!669 = !DILocation(line: 1219, column: 22, scope: !636)
!670 = !DILocation(line: 1221, column: 11, scope: !636)
!671 = !DILocation(line: 1224, column: 17, scope: !636)
!672 = !DILocation(line: 1224, column: 25, scope: !636)
!673 = !{!622, !623, i64 28}
!674 = !DILocation(line: 1225, column: 11, scope: !636)
!675 = !DILocation(line: 1228, column: 17, scope: !636)
!676 = !DILocation(line: 1228, column: 23, scope: !636)
!677 = !{!622, !623, i64 29}
!678 = !DILocation(line: 1229, column: 11, scope: !636)
!679 = !DILocation(line: 1232, column: 17, scope: !636)
!680 = !DILocation(line: 1232, column: 27, scope: !636)
!681 = !{!622, !623, i64 30}
!682 = !DILocation(line: 1233, column: 11, scope: !636)
!683 = !DILocation(line: 1235, column: 9, scope: !636)
!684 = !DILocation(line: 1237, column: 9, scope: !636)
!685 = !DILocation(line: 1240, column: 11, scope: !636)
!686 = distinct !{!686, !629, !687, !545, !546}
!687 = !DILocation(line: 1242, column: 5, scope: !584)
!688 = !DILocation(line: 1244, column: 17, scope: !584)
!689 = !{!690, !690, i64 0}
!690 = !{!"int", !423, i64 0}
!691 = !DILocation(line: 1244, column: 15, scope: !584)
!692 = !DILocation(line: 1245, column: 20, scope: !584)
!693 = !DILocation(line: 1245, column: 18, scope: !584)
!694 = !DILocation(line: 1247, column: 15, scope: !695)
!695 = distinct !DILexicalBlock(scope: !584, file: !2, line: 1247, column: 7)
!696 = !DILocation(line: 1247, column: 7, scope: !584)
!697 = !DILocation(line: 1249, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !2, line: 1248, column: 5)
!699 = !DILocation(line: 1250, column: 7, scope: !698)
!700 = !DILocation(line: 1253, column: 20, scope: !584)
!701 = !DILocation(line: 1253, column: 18, scope: !584)
!702 = !DILocation(line: 1254, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !584, file: !2, line: 1254, column: 7)
!704 = !DILocation(line: 1254, column: 7, scope: !584)
!705 = !DILocation(line: 1255, column: 5, scope: !703)
!706 = !DILocation(line: 1257, column: 3, scope: !584)
!707 = !DILocation(line: 1259, column: 8, scope: !611)
!708 = !DILocation(line: 1259, scope: !611)
!709 = !DILocation(line: 1259, column: 17, scope: !610)
!710 = !DILocation(line: 1259, column: 3, scope: !611)
!711 = !DILocation(line: 1261, column: 30, scope: !609)
!712 = !DILocation(line: 1261, column: 21, scope: !609)
!713 = !DILocation(line: 0, scope: !609)
!714 = !DILocation(line: 1262, column: 11, scope: !715)
!715 = distinct !DILexicalBlock(scope: !609, file: !2, line: 1262, column: 11)
!716 = !DILocation(line: 1262, column: 11, scope: !609)
!717 = !DILocation(line: 1264, column: 47, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !2, line: 1263, column: 9)
!719 = !DILocation(line: 1264, column: 17, scope: !718)
!720 = !DILocation(line: 1264, column: 14, scope: !718)
!721 = !DILocation(line: 1265, column: 9, scope: !718)
!722 = !DILocation(line: 1269, column: 27, scope: !723)
!723 = distinct !DILexicalBlock(scope: !715, file: !2, line: 1267, column: 9)
!724 = !DILocation(line: 1269, column: 43, scope: !723)
!725 = !DILocation(line: 1269, column: 17, scope: !723)
!726 = !DILocation(line: 1269, column: 14, scope: !723)
!727 = !DILocation(line: 0, scope: !715)
!728 = !DILocation(line: 1271, column: 7, scope: !609)
!729 = !DILocation(line: 1272, column: 5, scope: !609)
!730 = !DILocation(line: 1259, column: 29, scope: !610)
!731 = !DILocation(line: 1259, column: 3, scope: !610)
!732 = distinct !{!732, !710, !733, !545, !546}
!733 = !DILocation(line: 1272, column: 5, scope: !611)
!734 = !DILocation(line: 1274, column: 10, scope: !584)
!735 = !DILocation(line: 1275, column: 1, scope: !584)
!736 = !DILocation(line: 1274, column: 3, scope: !584)
!737 = !DISubprogram(name: "set_program_name", scope: !738, file: !738, line: 37, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!738 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!739 = !DISubprogram(name: "atexit", scope: !572, file: !572, line: 133, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!740 = !DISubroutineType(types: !741)
!741 = !{!83, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!743 = !DISubprogram(name: "rpl_getopt_long", scope: !395, file: !395, line: 66, type: !744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!744 = !DISubroutineType(types: !745)
!745 = !{!83, !83, !587, !124, !746, !400}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!747 = !DISubprogram(name: "xdectoumax", scope: !748, file: !748, line: 33, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!748 = !DIFile(filename: "../lib/xdectoint.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!749 = !DISubroutineType(types: !750)
!750 = !{!141, !124, !141, !141, !124, !124, !83}
!751 = !DISubprogram(name: "error", scope: !752, file: !752, line: 395, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!752 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!753 = !DISubroutineType(types: !754)
!754 = !{null, !83, !83, !124, null}
!755 = !DISubprogram(name: "__xargmatch_internal", scope: !756, file: !756, line: 94, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!756 = !DIFile(filename: "../lib/argmatch.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!757 = !DISubroutineType(types: !758)
!758 = !{!759, !124, !124, !762, !127, !137, !763, !592}
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !760, line: 35, baseType: !761)
!760 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!761 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !756, line: 66, baseType: !742)
!764 = !DISubprogram(name: "xnumtoumax", scope: !748, file: !748, line: 36, type: !765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!765 = !DISubroutineType(types: !766)
!766 = !{!141, !124, !83, !141, !141, !124, !124, !83}
!767 = !DISubprogram(name: "version_etc", scope: !768, file: !768, line: 65, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!768 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!769 = !DISubroutineType(types: !770)
!770 = !{null, !451, !124, !124, !124, null}
!771 = !DISubprogram(name: "randint_all_new", scope: !200, file: !200, line: 40, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!772 = !DISubroutineType(types: !773)
!773 = !{!198, !124, !137}
!774 = !DISubprogram(name: "__error", scope: !775, file: !775, line: 80, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!775 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!776 = !DISubroutineType(types: !777)
!777 = !{!400}
!778 = !DISubprogram(name: "quotearg_n_style_colon", scope: !88, file: !88, line: 403, type: !779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!779 = !DISubroutineType(types: !780)
!780 = !{!136, !83, !87, !124}
!781 = distinct !DISubprogram(name: "clear_random_data", scope: !2, file: !2, line: 1161, type: !509, scopeLine: 1162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !501)
!782 = !DILocation(line: 1163, column: 21, scope: !781)
!783 = !DILocation(line: 1163, column: 3, scope: !781)
!784 = !DILocation(line: 1164, column: 1, scope: !781)
!785 = !DISubprogram(name: "xstrdup", scope: !786, file: !786, line: 99, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!786 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!787 = !DISubroutineType(types: !788)
!788 = !{!136, !124}
!789 = distinct !DISubprogram(name: "wipefd", scope: !2, file: !2, line: 962, type: !790, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !794)
!790 = !DISubroutineType(types: !791)
!791 = !{!592, !83, !124, !198, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!794 = !{!795, !796, !797, !798, !799}
!795 = !DILocalVariable(name: "fd", arg: 1, scope: !789, file: !2, line: 962, type: !83)
!796 = !DILocalVariable(name: "qname", arg: 2, scope: !789, file: !2, line: 962, type: !124)
!797 = !DILocalVariable(name: "s", arg: 3, scope: !789, file: !2, line: 962, type: !198)
!798 = !DILocalVariable(name: "flags", arg: 4, scope: !789, file: !2, line: 963, type: !792)
!799 = !DILocalVariable(name: "fd_flags", scope: !789, file: !2, line: 965, type: !83)
!800 = !DILocation(line: 0, scope: !789)
!801 = !DILocation(line: 965, column: 18, scope: !789)
!802 = !DILocation(line: 967, column: 16, scope: !803)
!803 = distinct !DILexicalBlock(scope: !789, file: !2, line: 967, column: 7)
!804 = !DILocation(line: 967, column: 7, scope: !789)
!805 = !DILocation(line: 969, column: 17, scope: !806)
!806 = distinct !DILexicalBlock(scope: !803, file: !2, line: 968, column: 5)
!807 = !DILocation(line: 969, column: 7, scope: !806)
!808 = !DILocation(line: 970, column: 7, scope: !806)
!809 = !DILocation(line: 972, column: 16, scope: !810)
!810 = distinct !DILexicalBlock(scope: !789, file: !2, line: 972, column: 7)
!811 = !DILocation(line: 972, column: 7, scope: !789)
!812 = !DILocation(line: 974, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !2, line: 973, column: 5)
!814 = !DILocation(line: 975, column: 7, scope: !813)
!815 = !DILocation(line: 977, column: 10, scope: !789)
!816 = !DILocation(line: 977, column: 3, scope: !789)
!817 = !DILocation(line: 978, column: 1, scope: !789)
!818 = distinct !DISubprogram(name: "wipefile", scope: !2, file: !2, line: 1125, type: !819, scopeLine: 1127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{!592, !136, !124, !198, !792}
!821 = !{!822, !823, !824, !825, !826, !827}
!822 = !DILocalVariable(name: "name", arg: 1, scope: !818, file: !2, line: 1125, type: !136)
!823 = !DILocalVariable(name: "qname", arg: 2, scope: !818, file: !2, line: 1125, type: !124)
!824 = !DILocalVariable(name: "s", arg: 3, scope: !818, file: !2, line: 1126, type: !198)
!825 = !DILocalVariable(name: "flags", arg: 4, scope: !818, file: !2, line: 1126, type: !792)
!826 = !DILocalVariable(name: "ok", scope: !818, file: !2, line: 1128, type: !592)
!827 = !DILocalVariable(name: "fd", scope: !818, file: !2, line: 1129, type: !83)
!828 = !DILocation(line: 0, scope: !818)
!829 = !DILocation(line: 1131, column: 8, scope: !818)
!830 = !DILocation(line: 1132, column: 10, scope: !831)
!831 = distinct !DILexicalBlock(scope: !818, file: !2, line: 1132, column: 7)
!832 = !DILocation(line: 1133, column: 7, scope: !831)
!833 = !DILocation(line: 1133, column: 11, scope: !831)
!834 = !DILocation(line: 1133, column: 17, scope: !831)
!835 = !DILocation(line: 1133, column: 27, scope: !831)
!836 = !DILocation(line: 1133, column: 37, scope: !831)
!837 = !{i8 0, i8 2}
!838 = !DILocation(line: 1134, column: 7, scope: !831)
!839 = !DILocation(line: 1134, column: 10, scope: !831)
!840 = !DILocation(line: 1134, column: 32, scope: !831)
!841 = !DILocation(line: 1132, column: 7, scope: !818)
!842 = !DILocation(line: 1135, column: 10, scope: !831)
!843 = !DILocation(line: 1135, column: 5, scope: !831)
!844 = !DILocation(line: 1136, column: 10, scope: !845)
!845 = distinct !DILexicalBlock(scope: !818, file: !2, line: 1136, column: 7)
!846 = !DILocation(line: 1136, column: 7, scope: !818)
!847 = !DILocation(line: 1138, column: 17, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !2, line: 1137, column: 5)
!849 = !DILocation(line: 1138, column: 7, scope: !848)
!850 = !DILocation(line: 1139, column: 7, scope: !848)
!851 = !DILocation(line: 1142, column: 8, scope: !818)
!852 = !DILocation(line: 1142, column: 6, scope: !818)
!853 = !DILocation(line: 1143, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !818, file: !2, line: 1143, column: 7)
!855 = !DILocation(line: 1143, column: 18, scope: !854)
!856 = !DILocation(line: 1143, column: 7, scope: !818)
!857 = !DILocation(line: 1145, column: 17, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !2, line: 1144, column: 5)
!859 = !DILocation(line: 1145, column: 7, scope: !858)
!860 = !DILocation(line: 1147, column: 5, scope: !858)
!861 = !DILocation(line: 1148, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !818, file: !2, line: 1148, column: 7)
!863 = !DILocation(line: 1148, column: 10, scope: !862)
!864 = !DILocation(line: 1148, column: 20, scope: !862)
!865 = !DILocation(line: 1148, column: 13, scope: !862)
!866 = !DILocation(line: 1148, column: 7, scope: !818)
!867 = !DILocation(line: 1149, column: 10, scope: !862)
!868 = !DILocation(line: 1149, column: 8, scope: !862)
!869 = !DILocation(line: 1149, column: 5, scope: !862)
!870 = !DILocation(line: 1150, column: 10, scope: !818)
!871 = !DILocation(line: 1150, column: 3, scope: !818)
!872 = !DILocation(line: 1151, column: 1, scope: !818)
!873 = !DISubprogram(name: "rpl_free", scope: !874, file: !874, line: 756, type: !875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!874 = !DIFile(filename: "./lib/stdlib.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!875 = !DISubroutineType(types: !876)
!876 = !{null, !126}
!877 = !DISubprogram(name: "open_safer", scope: !878, file: !878, line: 22, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!878 = !DIFile(filename: "../lib/fcntl-safer.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!879 = !DISubroutineType(types: !880)
!880 = !{!83, !124, !83, null}
!881 = !DISubprogram(name: "chmod", linkageName: "\01_chmod", scope: !882, file: !882, line: 380, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!882 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!883 = !DISubroutineType(types: !884)
!884 = !{!83, !124, !885}
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !886, line: 31, baseType: !887)
!886 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !132, line: 70, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !134, line: 45, baseType: !889)
!889 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!890 = distinct !DISubprogram(name: "do_wipefd", scope: !2, file: !2, line: 820, type: !790, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !891)
!891 = !{!892, !893, !894, !895, !896, !897, !947, !948, !949, !950, !951, !952, !956, !963, !966, !968, !969, !973, !974}
!892 = !DILocalVariable(name: "fd", arg: 1, scope: !890, file: !2, line: 820, type: !83)
!893 = !DILocalVariable(name: "qname", arg: 2, scope: !890, file: !2, line: 820, type: !124)
!894 = !DILocalVariable(name: "s", arg: 3, scope: !890, file: !2, line: 820, type: !198)
!895 = !DILocalVariable(name: "flags", arg: 4, scope: !890, file: !2, line: 821, type: !792)
!896 = !DILocalVariable(name: "i", scope: !890, file: !2, line: 823, type: !137)
!897 = !DILocalVariable(name: "st", scope: !890, file: !2, line: 824, type: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !882, line: 182, size: 1152, elements: !899)
!899 = !{!900, !905, !906, !909, !913, !918, !922, !923, !930, !931, !932, !933, !934, !938, !942, !943, !944, !945}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !898, file: !882, line: 182, baseType: !901, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !902, line: 31, baseType: !903)
!902 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !132, line: 57, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !134, line: 46, baseType: !83)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !898, file: !882, line: 182, baseType: !885, size: 16, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !898, file: !882, line: 182, baseType: !907, size: 16, offset: 48)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !908, line: 31, baseType: !888)
!908 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!909 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !898, file: !882, line: 182, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !132, line: 62, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !134, line: 49, baseType: !912)
!912 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !898, file: !882, line: 182, baseType: !914, size: 32, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !915, line: 31, baseType: !916)
!915 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !132, line: 75, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !134, line: 47, baseType: !69)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !898, file: !882, line: 182, baseType: !919, size: 32, offset: 160)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !920, line: 31, baseType: !921)
!920 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !132, line: 60, baseType: !917)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !898, file: !882, line: 182, baseType: !901, size: 32, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !898, file: !882, line: 182, baseType: !924, size: 128, offset: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !925, line: 33, size: 128, elements: !926)
!925 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!926 = !{!927, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !924, file: !925, line: 35, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !134, line: 122, baseType: !761)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !924, file: !925, line: 36, baseType: !761, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !898, file: !882, line: 182, baseType: !924, size: 128, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !898, file: !882, line: 182, baseType: !924, size: 128, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !898, file: !882, line: 182, baseType: !924, size: 128, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !898, file: !882, line: 182, baseType: !129, size: 64, offset: 768)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !898, file: !882, line: 182, baseType: !935, size: 64, offset: 832)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !936, line: 31, baseType: !937)
!936 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !132, line: 55, baseType: !133)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !898, file: !882, line: 182, baseType: !939, size: 32, offset: 896)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !940, line: 31, baseType: !941)
!940 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !132, line: 56, baseType: !904)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !898, file: !882, line: 182, baseType: !917, size: 32, offset: 928)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !898, file: !882, line: 182, baseType: !917, size: 32, offset: 960)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !898, file: !882, line: 182, baseType: !904, size: 32, offset: 992)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !898, file: !882, line: 182, baseType: !946, size: 128, offset: 1024)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, elements: !194)
!947 = !DILocalVariable(name: "size", scope: !890, file: !2, line: 825, type: !129)
!948 = !DILocalVariable(name: "i_size", scope: !890, file: !2, line: 826, type: !129)
!949 = !DILocalVariable(name: "n", scope: !890, file: !2, line: 827, type: !140)
!950 = !DILocalVariable(name: "passarray", scope: !890, file: !2, line: 828, type: !400)
!951 = !DILocalVariable(name: "ok", scope: !890, file: !2, line: 829, type: !592)
!952 = !DILocalVariable(name: "rs", scope: !890, file: !2, line: 830, type: !953)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !955, line: 25, flags: DIFlagFwdDecl)
!955 = !DIFile(filename: "../lib/randread.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!956 = !DILocalVariable(name: "remainder", scope: !957, file: !2, line: 871, type: !129)
!957 = distinct !DILexicalBlock(scope: !958, file: !2, line: 869, column: 13)
!958 = distinct !DILexicalBlock(scope: !959, file: !2, line: 868, column: 15)
!959 = distinct !DILexicalBlock(scope: !960, file: !2, line: 865, column: 9)
!960 = distinct !DILexicalBlock(scope: !961, file: !2, line: 864, column: 11)
!961 = distinct !DILexicalBlock(scope: !962, file: !2, line: 863, column: 5)
!962 = distinct !DILexicalBlock(scope: !890, file: !2, line: 862, column: 7)
!963 = !DILocalVariable(name: "size_incr", scope: !964, file: !2, line: 876, type: !129)
!964 = distinct !DILexicalBlock(scope: !965, file: !2, line: 875, column: 17)
!965 = distinct !DILexicalBlock(scope: !957, file: !2, line: 874, column: 19)
!966 = !DILocalVariable(name: "pass_size", scope: !967, file: !2, line: 906, type: !129)
!967 = distinct !DILexicalBlock(scope: !890, file: !2, line: 905, column: 5)
!968 = !DILocalVariable(name: "pn", scope: !967, file: !2, line: 907, type: !140)
!969 = !DILocalVariable(name: "err", scope: !970, file: !2, line: 928, type: !83)
!970 = distinct !DILexicalBlock(scope: !971, file: !2, line: 927, column: 9)
!971 = distinct !DILexicalBlock(scope: !972, file: !2, line: 926, column: 7)
!972 = distinct !DILexicalBlock(scope: !967, file: !2, line: 926, column: 7)
!973 = !DILocalVariable(name: "type", scope: !970, file: !2, line: 929, type: !83)
!974 = !DILabel(scope: !890, name: "wipefd_out", file: !2, line: 955)
!975 = !DILocation(line: 0, scope: !890)
!976 = !DILocation(line: 824, column: 3, scope: !890)
!977 = !DILocation(line: 824, column: 15, scope: !890)
!978 = !DILocation(line: 833, column: 14, scope: !979)
!979 = distinct !DILexicalBlock(scope: !890, file: !2, line: 833, column: 7)
!980 = !DILocation(line: 833, column: 7, scope: !890)
!981 = !DILocation(line: 834, column: 16, scope: !979)
!982 = !DILocation(line: 834, column: 38, scope: !979)
!983 = !DILocation(line: 834, column: 31, scope: !979)
!984 = !DILocation(line: 834, column: 29, scope: !979)
!985 = !DILocation(line: 834, column: 5, scope: !979)
!986 = !DILocation(line: 836, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !890, file: !2, line: 836, column: 7)
!988 = !DILocation(line: 836, column: 7, scope: !890)
!989 = !DILocation(line: 838, column: 17, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !2, line: 837, column: 5)
!991 = !DILocation(line: 838, column: 7, scope: !990)
!992 = !DILocation(line: 839, column: 7, scope: !990)
!993 = !DILocation(line: 845, column: 8, scope: !994)
!994 = distinct !DILexicalBlock(scope: !890, file: !2, line: 845, column: 7)
!995 = !{!996, !997, i64 4}
!996 = !{!"stat", !690, i64 0, !997, i64 4, !997, i64 6, !625, i64 8, !690, i64 16, !690, i64 20, !690, i64 24, !998, i64 32, !998, i64 48, !998, i64 64, !998, i64 80, !625, i64 96, !625, i64 104, !690, i64 112, !690, i64 116, !690, i64 120, !690, i64 124, !423, i64 128}
!997 = !{!"short", !423, i64 0}
!998 = !{!"timespec", !624, i64 0, !624, i64 8}
!999 = !DILocation(line: 845, column: 29, scope: !994)
!1000 = !DILocation(line: 845, column: 32, scope: !994)
!1001 = !DILocation(line: 846, column: 7, scope: !994)
!1002 = !DILocation(line: 846, column: 10, scope: !994)
!1003 = !DILocation(line: 847, column: 7, scope: !994)
!1004 = !DILocation(line: 847, column: 10, scope: !994)
!1005 = !DILocation(line: 845, column: 7, scope: !890)
!1006 = !DILocation(line: 849, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !994, file: !2, line: 848, column: 5)
!1008 = !DILocation(line: 850, column: 7, scope: !1007)
!1009 = !DILocation(line: 852, column: 12, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !994, file: !2, line: 852, column: 12)
!1011 = !DILocation(line: 852, column: 33, scope: !1010)
!1012 = !DILocation(line: 852, column: 39, scope: !1010)
!1013 = !{!996, !625, i64 96}
!1014 = !DILocation(line: 852, column: 47, scope: !1010)
!1015 = !DILocation(line: 852, column: 12, scope: !994)
!1016 = !DILocation(line: 854, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 853, column: 5)
!1018 = !DILocation(line: 855, column: 7, scope: !1017)
!1019 = !DILocation(line: 859, column: 32, scope: !890)
!1020 = !DILocation(line: 859, column: 15, scope: !890)
!1021 = !DILocation(line: 861, column: 17, scope: !890)
!1022 = !DILocation(line: 862, column: 12, scope: !962)
!1023 = !DILocation(line: 862, column: 7, scope: !890)
!1024 = !DILocation(line: 864, column: 11, scope: !960)
!1025 = !DILocation(line: 864, column: 11, scope: !961)
!1026 = !DILocation(line: 866, column: 21, scope: !959)
!1027 = !DILocation(line: 868, column: 24, scope: !958)
!1028 = !DILocation(line: 868, column: 15, scope: !959)
!1029 = !DILocation(line: 871, column: 40, scope: !957)
!1030 = !{!996, !690, i64 112}
!1031 = !DILocation(line: 871, column: 38, scope: !957)
!1032 = !DILocation(line: 0, scope: !957)
!1033 = !DILocation(line: 872, column: 19, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !957, file: !2, line: 872, column: 19)
!1035 = !DILocation(line: 872, column: 24, scope: !1034)
!1036 = !DILocation(line: 872, column: 34, scope: !1034)
!1037 = !DILocation(line: 872, column: 32, scope: !1034)
!1038 = !DILocation(line: 872, column: 19, scope: !957)
!1039 = !DILocation(line: 873, column: 17, scope: !1034)
!1040 = !DILocation(line: 874, column: 29, scope: !965)
!1041 = !DILocation(line: 874, column: 19, scope: !957)
!1042 = !DILocation(line: 876, column: 37, scope: !964)
!1043 = !DILocation(line: 876, column: 53, scope: !964)
!1044 = !DILocation(line: 0, scope: !964)
!1045 = !DILocation(line: 877, column: 27, scope: !964)
!1046 = !DILocation(line: 877, column: 24, scope: !964)
!1047 = !DILocation(line: 878, column: 17, scope: !964)
!1048 = !DILocation(line: 0, scope: !959)
!1049 = !DILocation(line: 879, column: 13, scope: !957)
!1050 = !DILocation(line: 880, column: 9, scope: !959)
!1051 = !DILocation(line: 886, column: 18, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !960, file: !2, line: 882, column: 9)
!1053 = !DILocation(line: 887, column: 20, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 887, column: 15)
!1055 = !DILocation(line: 887, column: 15, scope: !1052)
!1056 = !DILocation(line: 892, column: 13, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 888, column: 13)
!1058 = !DILocation(line: 0, scope: !1052)
!1059 = !DILocation(line: 826, column: 9, scope: !890)
!1060 = !DILocation(line: 0, scope: !960)
!1061 = !DILocation(line: 894, column: 5, scope: !961)
!1062 = !DILocation(line: 895, column: 12, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !962, file: !2, line: 895, column: 12)
!1064 = !DILocation(line: 896, column: 12, scope: !1063)
!1065 = !DILocation(line: 896, column: 18, scope: !1063)
!1066 = !DILocation(line: 896, column: 28, scope: !1063)
!1067 = !DILocation(line: 896, column: 26, scope: !1063)
!1068 = !DILocation(line: 895, column: 12, scope: !962)
!1069 = !DILocation(line: 897, column: 17, scope: !1063)
!1070 = !DILocation(line: 897, column: 5, scope: !1063)
!1071 = !DILocation(line: 900, column: 33, scope: !890)
!1072 = !DILocation(line: 900, column: 3, scope: !890)
!1073 = !DILocation(line: 902, column: 8, scope: !890)
!1074 = !DILocation(line: 904, column: 3, scope: !890)
!1075 = !DILocation(line: 866, column: 16, scope: !959)
!1076 = !DILocation(line: 906, column: 7, scope: !967)
!1077 = !DILocation(line: 906, column: 13, scope: !967)
!1078 = !DILocation(line: 0, scope: !967)
!1079 = !DILocation(line: 909, column: 11, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !967, file: !2, line: 909, column: 11)
!1081 = !DILocation(line: 909, column: 11, scope: !967)
!1082 = !DILocation(line: 911, column: 21, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 910, column: 9)
!1084 = !{!625, !625, i64 0}
!1085 = !DILocation(line: 914, column: 9, scope: !1083)
!1086 = !DILocation(line: 915, column: 16, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 915, column: 16)
!1088 = !DILocation(line: 915, column: 16, scope: !1080)
!1089 = !DILocation(line: 917, column: 21, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 916, column: 9)
!1091 = !DILocation(line: 919, column: 9, scope: !1090)
!1092 = !DILocation(line: 924, column: 9, scope: !1087)
!1093 = !DILocation(line: 926, column: 12, scope: !972)
!1094 = !DILocation(line: 926, scope: !972)
!1095 = !DILocation(line: 926, column: 30, scope: !971)
!1096 = !DILocation(line: 926, column: 52, scope: !971)
!1097 = !DILocation(line: 926, column: 45, scope: !971)
!1098 = !DILocation(line: 926, column: 43, scope: !971)
!1099 = !DILocation(line: 926, column: 21, scope: !971)
!1100 = !DILocation(line: 926, column: 7, scope: !972)
!1101 = !DILocation(line: 0, scope: !970)
!1102 = !DILocation(line: 929, column: 33, scope: !970)
!1103 = !DILocation(line: 929, column: 24, scope: !970)
!1104 = !DILocation(line: 929, column: 22, scope: !970)
!1105 = !DILocation(line: 929, column: 48, scope: !970)
!1106 = !DILocation(line: 931, column: 65, scope: !970)
!1107 = !DILocation(line: 931, column: 17, scope: !970)
!1108 = !DILocation(line: 933, column: 15, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !970, file: !2, line: 933, column: 15)
!1110 = !DILocation(line: 933, column: 15, scope: !970)
!1111 = !DILocation(line: 936, column: 23, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 936, column: 19)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 934, column: 13)
!1114 = !DILocation(line: 936, column: 19, scope: !1113)
!1115 = !DILocation(line: 937, column: 17, scope: !1112)
!1116 = !DILocation(line: 938, column: 13, scope: !1113)
!1117 = !DILocation(line: 939, column: 9, scope: !971)
!1118 = !DILocation(line: 935, column: 18, scope: !1113)
!1119 = !DILocation(line: 939, column: 9, scope: !970)
!1120 = !DILocation(line: 926, column: 64, scope: !971)
!1121 = !DILocation(line: 926, column: 7, scope: !971)
!1122 = distinct !{!1122, !1100, !1123, !545, !546}
!1123 = !DILocation(line: 939, column: 9, scope: !972)
!1124 = !DILocation(line: 940, column: 5, scope: !890)
!1125 = distinct !{!1125, !1074, !1124, !546}
!1126 = !DILocation(line: 947, column: 14, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !890, file: !2, line: 947, column: 7)
!1128 = !DILocation(line: 947, column: 7, scope: !1127)
!1129 = !DILocation(line: 947, column: 26, scope: !1127)
!1130 = !DILocation(line: 947, column: 29, scope: !1127)
!1131 = !DILocation(line: 947, column: 47, scope: !1127)
!1132 = !DILocation(line: 948, column: 7, scope: !1127)
!1133 = !DILocation(line: 948, column: 11, scope: !1127)
!1134 = !DILocation(line: 947, column: 7, scope: !890)
!1135 = !DILocation(line: 950, column: 17, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 949, column: 5)
!1137 = !DILocation(line: 950, column: 7, scope: !1136)
!1138 = !DILocation(line: 952, column: 7, scope: !1136)
!1139 = !DILocation(line: 948, column: 52, scope: !1127)
!1140 = !DILocation(line: 955, column: 1, scope: !890)
!1141 = !DILocation(line: 956, column: 3, scope: !890)
!1142 = !DILocation(line: 957, column: 10, scope: !890)
!1143 = !DILocation(line: 957, column: 3, scope: !890)
!1144 = !DILocation(line: 958, column: 1, scope: !890)
!1145 = !DISubprogram(name: "close", linkageName: "\01_close", scope: !1146, file: !1146, line: 437, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1146 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/unistd.h", directory: "")
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!83, !83}
!1149 = distinct !DISubprogram(name: "wipename", scope: !2, file: !2, line: 1043, type: !1150, scopeLine: 1044, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1152)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!592, !136, !124, !792}
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1166, !1169}
!1153 = !DILocalVariable(name: "oldname", arg: 1, scope: !1149, file: !2, line: 1043, type: !136)
!1154 = !DILocalVariable(name: "qoldname", arg: 2, scope: !1149, file: !2, line: 1043, type: !124)
!1155 = !DILocalVariable(name: "flags", arg: 3, scope: !1149, file: !2, line: 1043, type: !792)
!1156 = !DILocalVariable(name: "newname", scope: !1149, file: !2, line: 1045, type: !136)
!1157 = !DILocalVariable(name: "base", scope: !1149, file: !2, line: 1046, type: !136)
!1158 = !DILocalVariable(name: "dir", scope: !1149, file: !2, line: 1047, type: !136)
!1159 = !DILocalVariable(name: "qdir", scope: !1149, file: !2, line: 1048, type: !136)
!1160 = !DILocalVariable(name: "first", scope: !1149, file: !2, line: 1049, type: !592)
!1161 = !DILocalVariable(name: "ok", scope: !1149, file: !2, line: 1050, type: !592)
!1162 = !DILocalVariable(name: "dir_fd", scope: !1149, file: !2, line: 1051, type: !83)
!1163 = !DILocalVariable(name: "len", scope: !1164, file: !2, line: 1060, type: !137)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 1060, column: 5)
!1165 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 1059, column: 7)
!1166 = !DILocalVariable(name: "rename_ok", scope: !1167, file: !2, line: 1064, type: !592)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 1061, column: 7)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 1060, column: 5)
!1169 = !DILocalVariable(name: "old", scope: !1170, file: !2, line: 1080, type: !124)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 1075, column: 15)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 1074, column: 17)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 1071, column: 11)
!1173 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 1070, column: 13)
!1174 = !DILocation(line: 0, scope: !1149)
!1175 = !DILocation(line: 1045, column: 19, scope: !1149)
!1176 = !DILocation(line: 1046, column: 16, scope: !1149)
!1177 = !DILocation(line: 1047, column: 15, scope: !1149)
!1178 = !DILocation(line: 1048, column: 25, scope: !1149)
!1179 = !DILocation(line: 1048, column: 16, scope: !1149)
!1180 = !DILocation(line: 1053, column: 14, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 1053, column: 7)
!1182 = !DILocation(line: 1053, column: 26, scope: !1181)
!1183 = !DILocation(line: 1053, column: 7, scope: !1149)
!1184 = !DILocation(line: 1054, column: 14, scope: !1181)
!1185 = !DILocation(line: 1054, column: 5, scope: !1181)
!1186 = !DILocation(line: 1056, column: 14, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 1056, column: 7)
!1188 = !DILocation(line: 1056, column: 7, scope: !1149)
!1189 = !DILocation(line: 1057, column: 5, scope: !1187)
!1190 = !DILocation(line: 1059, column: 14, scope: !1165)
!1191 = !DILocation(line: 1059, column: 26, scope: !1165)
!1192 = !DILocation(line: 1059, column: 7, scope: !1149)
!1193 = !DILocation(line: 1060, column: 23, scope: !1164)
!1194 = !DILocation(line: 0, scope: !1164)
!1195 = !DILocation(line: 1060, column: 10, scope: !1164)
!1196 = !DILocation(line: 1060, scope: !1164)
!1197 = !DILocation(line: 1060, column: 44, scope: !1168)
!1198 = !DILocation(line: 1060, column: 5, scope: !1164)
!1199 = !DILocation(line: 1062, column: 23, scope: !1167)
!1200 = !DILocation(line: 1062, column: 9, scope: !1167)
!1201 = !DILocation(line: 1063, column: 9, scope: !1167)
!1202 = !DILocation(line: 1063, column: 19, scope: !1167)
!1203 = !DILocation(line: 1065, column: 9, scope: !1167)
!1204 = !DILocation(line: 1065, column: 32, scope: !1167)
!1205 = !DILocation(line: 1067, column: 32, scope: !1167)
!1206 = !DILocation(line: 1065, column: 29, scope: !1167)
!1207 = !DILocation(line: 0, scope: !1167)
!1208 = !DILocation(line: 1068, column: 16, scope: !1167)
!1209 = !DILocation(line: 1068, column: 19, scope: !1167)
!1210 = !DILocation(line: 1068, column: 25, scope: !1167)
!1211 = !DILocation(line: 1068, column: 35, scope: !1167)
!1212 = !DILocation(line: 1068, column: 38, scope: !1167)
!1213 = !DILocation(line: 1069, column: 11, scope: !1167)
!1214 = distinct !{!1214, !1203, !1213, !545, !546}
!1215 = !DILocation(line: 1070, column: 13, scope: !1173)
!1216 = !DILocation(line: 1070, column: 13, scope: !1167)
!1217 = !DILocation(line: 1072, column: 19, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 1072, column: 17)
!1219 = !DILocation(line: 1072, column: 29, scope: !1218)
!1220 = !DILocation(line: 1072, column: 32, scope: !1218)
!1221 = !DILocation(line: 1072, column: 54, scope: !1218)
!1222 = !DILocation(line: 1072, column: 17, scope: !1172)
!1223 = !DILocation(line: 1073, column: 15, scope: !1218)
!1224 = !DILocation(line: 1074, column: 24, scope: !1171)
!1225 = !DILocation(line: 1074, column: 17, scope: !1172)
!1226 = !DILocation(line: 1080, column: 35, scope: !1170)
!1227 = !DILocation(line: 0, scope: !1170)
!1228 = !DILocation(line: 1081, column: 17, scope: !1170)
!1229 = !DILocation(line: 1084, column: 15, scope: !1170)
!1230 = !DILocation(line: 1085, column: 37, scope: !1172)
!1231 = !DILocation(line: 1085, column: 29, scope: !1172)
!1232 = !DILocation(line: 1085, column: 59, scope: !1172)
!1233 = !DILocation(line: 1085, column: 13, scope: !1172)
!1234 = !DILocation(line: 1086, column: 11, scope: !1172)
!1235 = !DILocation(line: 1087, column: 7, scope: !1167)
!1236 = !DILocation(line: 1060, column: 53, scope: !1168)
!1237 = !DILocation(line: 1060, column: 5, scope: !1168)
!1238 = distinct !{!1238, !1198, !1239, !545, !546}
!1239 = !DILocation(line: 1087, column: 7, scope: !1164)
!1240 = !DILocation(line: 1050, column: 8, scope: !1149)
!1241 = !DILocation(line: 1089, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 1089, column: 7)
!1243 = !DILocation(line: 1089, column: 24, scope: !1242)
!1244 = !DILocation(line: 1089, column: 7, scope: !1149)
!1245 = !DILocation(line: 1091, column: 17, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 1090, column: 5)
!1247 = !DILocation(line: 1091, column: 7, scope: !1246)
!1248 = !DILocation(line: 1093, column: 5, scope: !1246)
!1249 = !DILocation(line: 1094, column: 19, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 1094, column: 12)
!1251 = !DILocation(line: 1094, column: 12, scope: !1242)
!1252 = !DILocation(line: 1095, column: 5, scope: !1250)
!1253 = !DILocation(line: 1096, column: 9, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 1096, column: 7)
!1255 = !DILocation(line: 1096, column: 7, scope: !1149)
!1256 = !DILocation(line: 1098, column: 11, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 1098, column: 11)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 1097, column: 5)
!1259 = !DILocation(line: 1098, column: 33, scope: !1257)
!1260 = !DILocation(line: 1098, column: 11, scope: !1258)
!1261 = !DILocation(line: 1099, column: 9, scope: !1257)
!1262 = !DILocation(line: 1100, column: 11, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 1100, column: 11)
!1264 = !DILocation(line: 1100, column: 26, scope: !1263)
!1265 = !DILocation(line: 1100, column: 11, scope: !1258)
!1266 = !DILocation(line: 1102, column: 21, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 1101, column: 9)
!1268 = !DILocation(line: 1102, column: 11, scope: !1267)
!1269 = !DILocation(line: 1104, column: 9, scope: !1267)
!1270 = !DILocation(line: 0, scope: !1258)
!1271 = !DILocation(line: 1105, column: 5, scope: !1258)
!1272 = !DILocation(line: 1106, column: 3, scope: !1149)
!1273 = !DILocation(line: 1107, column: 3, scope: !1149)
!1274 = !DILocation(line: 1108, column: 3, scope: !1149)
!1275 = !DILocation(line: 1109, column: 10, scope: !1149)
!1276 = !DILocation(line: 1109, column: 3, scope: !1149)
!1277 = !DISubprogram(name: "last_component", scope: !1278, file: !1278, line: 66, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1278 = !DIFile(filename: "../lib/basename-lgpl.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1279 = !DISubprogram(name: "dir_name", scope: !1280, file: !1280, line: 38, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1280 = !DIFile(filename: "../lib/dirname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1281 = !DISubprogram(name: "base_len", scope: !1278, file: !1278, line: 71, type: !1282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!137, !124}
!1284 = !DISubprogram(name: "renameatu", scope: !1285, file: !1285, line: 28, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1285 = !DIFile(filename: "../lib/renameatu.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!83, !83, !124, !83, !124, !69}
!1288 = distinct !DISubprogram(name: "incname", scope: !2, file: !2, line: 992, type: !1289, scopeLine: 993, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!592, !136, !137}
!1291 = !{!1292, !1293, !1294}
!1292 = !DILocalVariable(name: "name", arg: 1, scope: !1288, file: !2, line: 992, type: !136)
!1293 = !DILocalVariable(name: "len", arg: 2, scope: !1288, file: !2, line: 992, type: !137)
!1294 = !DILocalVariable(name: "p", scope: !1295, file: !2, line: 996, type: !124)
!1295 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 995, column: 5)
!1296 = !DILocation(line: 0, scope: !1288)
!1297 = !DILocation(line: 994, column: 3, scope: !1288)
!1298 = !DILocation(line: 994, column: 13, scope: !1288)
!1299 = !DILocation(line: 996, column: 40, scope: !1295)
!1300 = !DILocation(line: 996, column: 23, scope: !1295)
!1301 = !DILocation(line: 0, scope: !1295)
!1302 = !DILocation(line: 1000, column: 7, scope: !1295)
!1303 = !DILocation(line: 1003, column: 11, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 1003, column: 11)
!1305 = !DILocation(line: 1003, column: 11, scope: !1295)
!1306 = !DILocation(line: 1005, column: 23, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 1004, column: 9)
!1308 = !DILocation(line: 1005, column: 11, scope: !1307)
!1309 = !DILocation(line: 1005, column: 21, scope: !1307)
!1310 = !DILocation(line: 1006, column: 11, scope: !1307)
!1311 = !DILocation(line: 1010, column: 19, scope: !1295)
!1312 = !DILocation(line: 1010, column: 7, scope: !1295)
!1313 = !DILocation(line: 1010, column: 17, scope: !1295)
!1314 = !DILocation(line: 1011, column: 5, scope: !1288)
!1315 = distinct !{!1315, !1297, !1314, !545, !546}
!1316 = !DILocation(line: 1013, column: 3, scope: !1288)
!1317 = !DILocation(line: 1014, column: 1, scope: !1288)
!1318 = distinct !DISubprogram(name: "dosync", scope: !2, file: !2, line: 301, type: !1319, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1321)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!83, !83, !124}
!1321 = !{!1322, !1323, !1324}
!1322 = !DILocalVariable(name: "fd", arg: 1, scope: !1318, file: !2, line: 301, type: !83)
!1323 = !DILocalVariable(name: "qname", arg: 2, scope: !1318, file: !2, line: 301, type: !124)
!1324 = !DILocalVariable(name: "err", scope: !1318, file: !2, line: 303, type: !83)
!1325 = !DILocation(line: 0, scope: !1318)
!1326 = !DILocation(line: 306, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 306, column: 7)
!1328 = !DILocation(line: 306, column: 22, scope: !1327)
!1329 = !DILocation(line: 306, column: 7, scope: !1318)
!1330 = !DILocation(line: 307, column: 5, scope: !1327)
!1331 = !DILocation(line: 308, column: 9, scope: !1318)
!1332 = !DILocation(line: 309, column: 10, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 309, column: 8)
!1334 = !DILocation(line: 309, column: 8, scope: !1318)
!1335 = !DILocation(line: 311, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 310, column: 5)
!1337 = !DILocation(line: 312, column: 7, scope: !1336)
!1338 = !DILocation(line: 312, column: 13, scope: !1336)
!1339 = !DILocation(line: 313, column: 7, scope: !1336)
!1340 = !DILocation(line: 317, column: 7, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 317, column: 7)
!1342 = !DILocation(line: 317, column: 18, scope: !1341)
!1343 = !DILocation(line: 317, column: 7, scope: !1318)
!1344 = !DILocation(line: 318, column: 5, scope: !1341)
!1345 = !DILocation(line: 319, column: 9, scope: !1318)
!1346 = !DILocation(line: 320, column: 10, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 320, column: 8)
!1348 = !DILocation(line: 320, column: 8, scope: !1318)
!1349 = !DILocation(line: 322, column: 7, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 321, column: 5)
!1351 = !DILocation(line: 323, column: 7, scope: !1350)
!1352 = !DILocation(line: 323, column: 13, scope: !1350)
!1353 = !DILocation(line: 324, column: 7, scope: !1350)
!1354 = !DILocation(line: 327, column: 3, scope: !1318)
!1355 = !DILocation(line: 328, column: 3, scope: !1318)
!1356 = !DILocation(line: 329, column: 1, scope: !1318)
!1357 = !DISubprogram(name: "rpl_unlink", scope: !1358, file: !1358, line: 2781, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1358 = !DIFile(filename: "./lib/unistd.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!83, !124}
!1361 = !DISubprogram(name: "fdatasync", scope: !1358, file: !1358, line: 1548, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1362 = distinct !DISubprogram(name: "ignorable_sync_errno", scope: !2, file: !2, line: 286, type: !1363, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!592, !83}
!1365 = !{!1366}
!1366 = !DILocalVariable(name: "errno_val", arg: 1, scope: !1362, file: !2, line: 286, type: !83)
!1367 = !DILocation(line: 0, scope: !1362)
!1368 = !DILocation(line: 288, column: 21, scope: !1362)
!1369 = !DILocation(line: 289, column: 11, scope: !1362)
!1370 = !DILocation(line: 289, column: 24, scope: !1362)
!1371 = !DILocation(line: 291, column: 11, scope: !1362)
!1372 = !DILocation(line: 291, column: 24, scope: !1362)
!1373 = !DILocation(line: 288, column: 3, scope: !1362)
!1374 = !DISubprogram(name: "fsync", linkageName: "\01_fsync", scope: !1146, file: !1146, line: 609, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1375 = !DISubprogram(name: "sync", scope: !1146, file: !1146, line: 598, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1376 = !DISubprogram(name: "strchr", scope: !574, file: !574, line: 76, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!136, !124, !83}
!1379 = !DISubprogram(name: "__assert_rtn", scope: !1380, file: !1380, line: 82, type: !1381, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1380 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/assert.h", directory: "")
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !124, !124, !83, !124}
!1383 = !DISubprogram(name: "fstat", linkageName: "\01_fstat$INODE64", scope: !882, file: !882, line: 382, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!83, !83, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!1387 = !DISubprogram(name: "isatty", scope: !1146, file: !1146, line: 463, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1388 = !DISubprogram(name: "xnmalloc", scope: !786, file: !786, line: 132, type: !1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!126, !137, !137}
!1391 = !DISubprogram(name: "lseek", scope: !1146, file: !1146, line: 465, type: !1392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!129, !83, !129, !83}
!1394 = distinct !DISubprogram(name: "genpattern", scope: !2, file: !2, line: 706, type: !1395, scopeLine: 707, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !400, !137, !198}
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1404, !1405, !1406, !1407, !1408, !1409}
!1398 = !DILocalVariable(name: "dest", arg: 1, scope: !1394, file: !2, line: 706, type: !400)
!1399 = !DILocalVariable(name: "num", arg: 2, scope: !1394, file: !2, line: 706, type: !137)
!1400 = !DILocalVariable(name: "s", arg: 3, scope: !1394, file: !2, line: 706, type: !198)
!1401 = !DILocalVariable(name: "randpasses", scope: !1394, file: !2, line: 708, type: !137)
!1402 = !DILocalVariable(name: "p", scope: !1394, file: !2, line: 709, type: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!1404 = !DILocalVariable(name: "d", scope: !1394, file: !2, line: 710, type: !400)
!1405 = !DILocalVariable(name: "n", scope: !1394, file: !2, line: 711, type: !137)
!1406 = !DILocalVariable(name: "accum", scope: !1394, file: !2, line: 712, type: !137)
!1407 = !DILocalVariable(name: "top", scope: !1394, file: !2, line: 712, type: !137)
!1408 = !DILocalVariable(name: "swap", scope: !1394, file: !2, line: 712, type: !137)
!1409 = !DILocalVariable(name: "k", scope: !1394, file: !2, line: 713, type: !83)
!1410 = !DILocation(line: 0, scope: !1394)
!1411 = !DILocation(line: 715, column: 8, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 715, column: 7)
!1413 = !DILocation(line: 715, column: 7, scope: !1394)
!1414 = !DILocation(line: 716, column: 5, scope: !1412)
!1415 = !DILocation(line: 724, column: 3, scope: !1394)
!1416 = !DILocation(line: 721, column: 5, scope: !1394)
!1417 = !DILocation(line: 726, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 725, column: 5)
!1419 = !DILocation(line: 726, column: 11, scope: !1418)
!1420 = !DILocation(line: 727, column: 12, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 727, column: 11)
!1422 = !DILocation(line: 727, column: 11, scope: !1418)
!1423 = !DILocation(line: 730, column: 9, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 728, column: 9)
!1425 = !DILocation(line: 731, column: 18, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 731, column: 16)
!1427 = !DILocation(line: 731, column: 16, scope: !1421)
!1428 = !DILocation(line: 733, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 732, column: 9)
!1430 = !DILocation(line: 734, column: 15, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 734, column: 15)
!1432 = !DILocation(line: 734, column: 26, scope: !1431)
!1433 = !DILocation(line: 734, column: 15, scope: !1429)
!1434 = !DILocation(line: 736, column: 26, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 735, column: 13)
!1436 = !DILocation(line: 737, column: 15, scope: !1435)
!1437 = !DILocation(line: 739, column: 25, scope: !1429)
!1438 = !DILocation(line: 739, column: 22, scope: !1429)
!1439 = !DILocation(line: 740, column: 16, scope: !1429)
!1440 = !DILocation(line: 740, column: 13, scope: !1429)
!1441 = !DILocation(line: 741, column: 9, scope: !1429)
!1442 = !DILocation(line: 742, column: 16, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 742, column: 16)
!1444 = !DILocation(line: 742, column: 27, scope: !1443)
!1445 = !DILocation(line: 742, column: 16, scope: !1426)
!1446 = !DILocation(line: 744, column: 25, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 743, column: 9)
!1448 = !DILocation(line: 744, column: 27, scope: !1447)
!1449 = !DILocation(line: 744, column: 11, scope: !1447)
!1450 = !DILocation(line: 745, column: 13, scope: !1447)
!1451 = !DILocation(line: 746, column: 13, scope: !1447)
!1452 = !DILocation(line: 747, column: 16, scope: !1447)
!1453 = !DILocation(line: 747, column: 13, scope: !1447)
!1454 = !DILocation(line: 748, column: 9, scope: !1447)
!1455 = !DILocation(line: 749, column: 18, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 749, column: 16)
!1457 = !DILocation(line: 749, column: 22, scope: !1456)
!1458 = !DILocation(line: 749, column: 27, scope: !1456)
!1459 = !DILocation(line: 749, column: 33, scope: !1456)
!1460 = !DILocation(line: 749, column: 31, scope: !1456)
!1461 = !DILocation(line: 749, column: 16, scope: !1443)
!1462 = !DILocation(line: 751, column: 22, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 750, column: 9)
!1464 = !DILocation(line: 752, column: 11, scope: !1463)
!1465 = !DILocation(line: 756, column: 11, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 755, column: 9)
!1467 = !DILocation(line: 0, scope: !1418)
!1468 = !DILocation(line: 758, column: 24, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 758, column: 19)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 757, column: 13)
!1471 = !DILocation(line: 758, column: 21, scope: !1469)
!1472 = !DILocation(line: 758, column: 35, scope: !1469)
!1473 = !DILocation(line: 758, column: 57, scope: !1469)
!1474 = !DILocation(line: 758, column: 38, scope: !1469)
!1475 = !DILocation(line: 758, column: 60, scope: !1469)
!1476 = !DILocation(line: 758, column: 19, scope: !1470)
!1477 = !DILocation(line: 760, column: 26, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 759, column: 17)
!1479 = !DILocation(line: 760, column: 21, scope: !1478)
!1480 = !DILocation(line: 760, column: 24, scope: !1478)
!1481 = !DILocation(line: 761, column: 20, scope: !1478)
!1482 = !DILocation(line: 762, column: 17, scope: !1478)
!1483 = !DILocation(line: 763, column: 16, scope: !1470)
!1484 = !DILocation(line: 764, column: 16, scope: !1470)
!1485 = !DILocation(line: 765, column: 13, scope: !1470)
!1486 = distinct !{!1486, !1465, !1487, !545, !546}
!1487 = !DILocation(line: 766, column: 19, scope: !1466)
!1488 = !DILocation(line: 767, column: 11, scope: !1466)
!1489 = !DILocation(line: 0, scope: !1426)
!1490 = distinct !{!1490, !1415, !1491, !546}
!1491 = !DILocation(line: 769, column: 5, scope: !1394)
!1492 = !DILocation(line: 770, column: 13, scope: !1394)
!1493 = !DILocation(line: 793, column: 13, scope: !1394)
!1494 = !DILocation(line: 795, column: 8, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 795, column: 3)
!1496 = !DILocation(line: 795, scope: !1495)
!1497 = !DILocation(line: 795, column: 17, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 795, column: 3)
!1499 = !DILocation(line: 795, column: 3, scope: !1495)
!1500 = !DILocation(line: 797, column: 17, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 797, column: 11)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 796, column: 5)
!1503 = !DILocation(line: 797, column: 11, scope: !1502)
!1504 = !DILocation(line: 799, column: 24, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 798, column: 9)
!1506 = !DILocation(line: 799, column: 17, scope: !1505)
!1507 = !DILocation(line: 800, column: 25, scope: !1505)
!1508 = !DILocation(line: 800, column: 19, scope: !1505)
!1509 = !DILocation(line: 800, column: 11, scope: !1505)
!1510 = !DILocation(line: 800, column: 23, scope: !1505)
!1511 = !DILocation(line: 801, column: 11, scope: !1505)
!1512 = !DILocation(line: 801, column: 19, scope: !1505)
!1513 = !DILocation(line: 802, column: 9, scope: !1505)
!1514 = !DILocation(line: 805, column: 45, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 804, column: 9)
!1516 = !DILocation(line: 805, column: 22, scope: !1515)
!1517 = !DILocation(line: 805, column: 20, scope: !1515)
!1518 = !DILocation(line: 806, column: 15, scope: !1515)
!1519 = !DILocation(line: 807, column: 21, scope: !1515)
!1520 = !DILocation(line: 807, column: 11, scope: !1515)
!1521 = !DILocation(line: 807, column: 19, scope: !1515)
!1522 = !DILocation(line: 808, column: 11, scope: !1515)
!1523 = !DILocation(line: 808, column: 22, scope: !1515)
!1524 = !DILocation(line: 810, column: 13, scope: !1502)
!1525 = !DILocation(line: 811, column: 5, scope: !1502)
!1526 = !DILocation(line: 795, column: 25, scope: !1498)
!1527 = !DILocation(line: 795, column: 3, scope: !1498)
!1528 = distinct !{!1528, !1499, !1529, !545, !546}
!1529 = !DILocation(line: 811, column: 5, scope: !1495)
!1530 = !DILocation(line: 813, column: 1, scope: !1394)
!1531 = !DISubprogram(name: "randint_get_source", scope: !200, file: !200, line: 42, type: !1532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!953, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!1536 = distinct !DISubprogram(name: "dopass", scope: !2, file: !2, line: 397, type: !1537, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1542)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!83, !83, !1539, !124, !1541, !83, !953, !140, !140}
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1556, !1557, !1558, !1559, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1573, !1574, !1575, !1584, !1585, !1588, !1589, !1592, !1593, !1594, !1595, !1600, !1601, !1602}
!1543 = !DILocalVariable(name: "fd", arg: 1, scope: !1536, file: !2, line: 397, type: !83)
!1544 = !DILocalVariable(name: "st", arg: 2, scope: !1536, file: !2, line: 397, type: !1539)
!1545 = !DILocalVariable(name: "qname", arg: 3, scope: !1536, file: !2, line: 397, type: !124)
!1546 = !DILocalVariable(name: "sizep", arg: 4, scope: !1536, file: !2, line: 397, type: !1541)
!1547 = !DILocalVariable(name: "type", arg: 5, scope: !1536, file: !2, line: 398, type: !83)
!1548 = !DILocalVariable(name: "s", arg: 6, scope: !1536, file: !2, line: 398, type: !953)
!1549 = !DILocalVariable(name: "k", arg: 7, scope: !1536, file: !2, line: 399, type: !140)
!1550 = !DILocalVariable(name: "n", arg: 8, scope: !1536, file: !2, line: 399, type: !140)
!1551 = !DILocalVariable(name: "size", scope: !1536, file: !2, line: 401, type: !129)
!1552 = !DILocalVariable(name: "offset", scope: !1536, file: !2, line: 402, type: !129)
!1553 = !DILocalVariable(name: "thresh", scope: !1536, file: !2, line: 403, type: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1555, line: 31, baseType: !928)
!1555 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_time_t.h", directory: "")
!1556 = !DILocalVariable(name: "now", scope: !1536, file: !2, line: 404, type: !1554)
!1557 = !DILocalVariable(name: "lim", scope: !1536, file: !2, line: 405, type: !137)
!1558 = !DILocalVariable(name: "soff", scope: !1536, file: !2, line: 406, type: !137)
!1559 = !DILocalVariable(name: "ssize", scope: !1536, file: !2, line: 407, type: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1561, line: 31, baseType: !1562)
!1561 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_ssize_t.h", directory: "")
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ssize_t", file: !134, line: 121, baseType: !761)
!1563 = !DILocalVariable(name: "page_size", scope: !1536, file: !2, line: 410, type: !137)
!1564 = !DILocalVariable(name: "output_size", scope: !1536, file: !2, line: 414, type: !137)
!1565 = !DILocalVariable(name: "pbuf", scope: !1536, file: !2, line: 417, type: !457)
!1566 = !DILocalVariable(name: "pass_string", scope: !1536, file: !2, line: 419, type: !282)
!1567 = !DILocalVariable(name: "write_error", scope: !1536, file: !2, line: 420, type: !592)
!1568 = !DILocalVariable(name: "other_error", scope: !1536, file: !2, line: 421, type: !592)
!1569 = !DILocalVariable(name: "previous_offset_buf", scope: !1536, file: !2, line: 424, type: !1570)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2176, elements: !1571)
!1571 = !{!1572}
!1572 = !DISubrange(count: 272)
!1573 = !DILocalVariable(name: "previous_human_offset", scope: !1536, file: !2, line: 425, type: !124)
!1574 = !DILocalVariable(name: "try_without_directio", scope: !1536, file: !2, line: 430, type: !592)
!1575 = !DILocalVariable(name: "errnum", scope: !1576, file: !2, line: 493, type: !83)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 492, column: 17)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 484, column: 19)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 483, column: 13)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 480, column: 15)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 478, column: 9)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 477, column: 7)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 477, column: 7)
!1583 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 463, column: 5)
!1584 = !DILocalVariable(name: "buf", scope: !1576, file: !2, line: 494, type: !181)
!1585 = !DILocalVariable(name: "soff1", scope: !1586, file: !2, line: 520, type: !137)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 519, column: 21)
!1587 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 517, column: 23)
!1588 = !DILocalVariable(name: "done", scope: !1583, file: !2, line: 547, type: !592)
!1589 = !DILocalVariable(name: "offset_buf", scope: !1590, file: !2, line: 553, type: !1570)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 552, column: 9)
!1591 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 550, column: 11)
!1592 = !DILocalVariable(name: "size_buf", scope: !1590, file: !2, line: 554, type: !1570)
!1593 = !DILocalVariable(name: "human_progress_opts", scope: !1590, file: !2, line: 555, type: !83)
!1594 = !DILocalVariable(name: "human_offset", scope: !1590, file: !2, line: 557, type: !124)
!1595 = !DILocalVariable(name: "off", scope: !1596, file: !2, line: 568, type: !141)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 567, column: 17)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 563, column: 19)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 562, column: 13)
!1599 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 561, column: 15)
!1600 = !DILocalVariable(name: "percent", scope: !1596, file: !2, line: 569, type: !83)
!1601 = !DILocalVariable(name: "human_size", scope: !1596, file: !2, line: 574, type: !124)
!1602 = !DILabel(scope: !1536, name: "free_pattern_mem", file: !2, line: 620)
!1603 = !DILocation(line: 0, scope: !1536)
!1604 = !DILocation(line: 401, column: 16, scope: !1536)
!1605 = !DILocation(line: 410, column: 22, scope: !1536)
!1606 = !DILocation(line: 414, column: 24, scope: !1536)
!1607 = !DILocation(line: 417, column: 49, scope: !1536)
!1608 = !DILocation(line: 417, column: 25, scope: !1536)
!1609 = !DILocation(line: 419, column: 3, scope: !1536)
!1610 = !DILocation(line: 419, column: 8, scope: !1536)
!1611 = !DILocation(line: 424, column: 3, scope: !1536)
!1612 = !DILocation(line: 424, column: 8, scope: !1536)
!1613 = !DILocation(line: 430, column: 33, scope: !1536)
!1614 = !DILocation(line: 430, column: 40, scope: !1536)
!1615 = !DILocation(line: 430, column: 48, scope: !1536)
!1616 = !DILocation(line: 430, column: 8, scope: !1536)
!1617 = !DILocation(line: 431, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 431, column: 7)
!1619 = !DILocation(line: 431, column: 7, scope: !1536)
!1620 = !DILocation(line: 432, column: 5, scope: !1618)
!1621 = !DILocation(line: 434, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 434, column: 7)
!1623 = !DILocation(line: 434, column: 7, scope: !1536)
!1624 = !DILocation(line: 436, column: 17, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 435, column: 5)
!1626 = !DILocation(line: 436, column: 7, scope: !1625)
!1627 = !DILocation(line: 438, column: 7, scope: !1625)
!1628 = !DILocation(line: 442, column: 12, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 442, column: 7)
!1630 = !DILocation(line: 442, column: 7, scope: !1536)
!1631 = !DILocation(line: 444, column: 13, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1629, file: !2, line: 443, column: 5)
!1633 = !DILocation(line: 444, column: 26, scope: !1632)
!1634 = !DILocation(line: 444, column: 36, scope: !1632)
!1635 = !DILocation(line: 444, column: 34, scope: !1632)
!1636 = !DILocation(line: 444, column: 62, scope: !1632)
!1637 = !DILocation(line: 445, column: 7, scope: !1632)
!1638 = !DILocation(line: 446, column: 23, scope: !1632)
!1639 = !DILocation(line: 446, column: 7, scope: !1632)
!1640 = !DILocation(line: 447, column: 5, scope: !1632)
!1641 = !DILocation(line: 450, column: 20, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1629, file: !2, line: 449, column: 5)
!1643 = !DILocation(line: 450, column: 7, scope: !1642)
!1644 = !DILocation(line: 454, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 454, column: 7)
!1646 = !DILocation(line: 454, column: 7, scope: !1536)
!1647 = !DILocation(line: 456, column: 64, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 455, column: 5)
!1649 = !DILocation(line: 456, column: 7, scope: !1648)
!1650 = !DILocation(line: 457, column: 16, scope: !1648)
!1651 = !DILocation(line: 457, column: 28, scope: !1648)
!1652 = !DILocation(line: 459, column: 5, scope: !1648)
!1653 = !DILocation(line: 462, column: 3, scope: !1536)
!1654 = !DILocation(line: 404, column: 10, scope: !1536)
!1655 = !DILocation(line: 420, column: 8, scope: !1536)
!1656 = !DILocation(line: 466, column: 11, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 466, column: 11)
!1658 = !DILocation(line: 466, column: 24, scope: !1657)
!1659 = !DILocation(line: 466, column: 32, scope: !1657)
!1660 = !DILocation(line: 466, column: 41, scope: !1657)
!1661 = !DILocation(line: 466, column: 11, scope: !1583)
!1662 = !DILocation(line: 468, column: 20, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 468, column: 15)
!1664 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 467, column: 9)
!1665 = !DILocation(line: 468, column: 15, scope: !1664)
!1666 = !DILocation(line: 469, column: 13, scope: !1663)
!1667 = !DILocation(line: 470, column: 22, scope: !1664)
!1668 = !DILocation(line: 471, column: 16, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 471, column: 15)
!1670 = !DILocation(line: 471, column: 15, scope: !1664)
!1671 = !DILocation(line: 472, column: 13, scope: !1669)
!1672 = !DILocation(line: 473, column: 9, scope: !1664)
!1673 = !DILocation(line: 0, scope: !1583)
!1674 = !DILocation(line: 474, column: 16, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 474, column: 11)
!1676 = !DILocation(line: 474, column: 11, scope: !1583)
!1677 = !DILocation(line: 475, column: 9, scope: !1675)
!1678 = !DILocation(line: 477, column: 12, scope: !1582)
!1679 = !DILocation(line: 477, scope: !1582)
!1680 = !DILocation(line: 421, column: 8, scope: !1536)
!1681 = !DILocation(line: 477, column: 27, scope: !1581)
!1682 = !DILocation(line: 477, column: 7, scope: !1582)
!1683 = !DILocation(line: 479, column: 35, scope: !1580)
!1684 = !DILocation(line: 479, column: 47, scope: !1580)
!1685 = !DILocation(line: 479, column: 19, scope: !1580)
!1686 = !DILocation(line: 480, column: 17, scope: !1579)
!1687 = !DILocation(line: 480, column: 15, scope: !1580)
!1688 = !DILocation(line: 481, column: 13, scope: !1579)
!1689 = !DILocation(line: 484, column: 21, scope: !1577)
!1690 = !DILocation(line: 484, column: 34, scope: !1577)
!1691 = !DILocation(line: 484, column: 44, scope: !1577)
!1692 = !DILocation(line: 484, column: 49, scope: !1577)
!1693 = !DILocation(line: 484, column: 52, scope: !1577)
!1694 = !DILocation(line: 484, column: 58, scope: !1577)
!1695 = !DILocation(line: 484, column: 19, scope: !1578)
!1696 = !DILocation(line: 487, column: 41, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 487, column: 23)
!1698 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 485, column: 17)
!1699 = !DILocation(line: 487, column: 28, scope: !1697)
!1700 = !DILocation(line: 487, column: 23, scope: !1698)
!1701 = !DILocation(line: 488, column: 44, scope: !1697)
!1702 = !DILocation(line: 488, column: 28, scope: !1697)
!1703 = !DILocation(line: 488, column: 21, scope: !1697)
!1704 = !DILocation(line: 489, column: 19, scope: !1698)
!1705 = !DILocation(line: 493, column: 32, scope: !1576)
!1706 = !DILocation(line: 0, scope: !1576)
!1707 = !DILocation(line: 494, column: 19, scope: !1576)
!1708 = !DILocation(line: 494, column: 24, scope: !1576)
!1709 = !DILocation(line: 500, column: 25, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 500, column: 23)
!1711 = !DILocation(line: 500, column: 46, scope: !1710)
!1712 = !DILocation(line: 500, column: 49, scope: !1710)
!1713 = !DILocation(line: 500, column: 55, scope: !1710)
!1714 = !DILocation(line: 500, column: 23, scope: !1576)
!1715 = !DILocation(line: 502, column: 23, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 501, column: 21)
!1717 = !DILocation(line: 505, column: 23, scope: !1716)
!1718 = !DILocation(line: 508, column: 51, scope: !1576)
!1719 = !DILocation(line: 508, column: 59, scope: !1576)
!1720 = !DILocation(line: 508, column: 33, scope: !1576)
!1721 = !DILocation(line: 507, column: 19, scope: !1576)
!1722 = !DILocation(line: 517, column: 30, scope: !1587)
!1723 = !DILocation(line: 517, column: 37, scope: !1587)
!1724 = !DILocation(line: 517, column: 40, scope: !1587)
!1725 = !DILocation(line: 518, column: 23, scope: !1587)
!1726 = !DILocation(line: 518, column: 32, scope: !1587)
!1727 = !DILocation(line: 518, column: 47, scope: !1587)
!1728 = !DILocation(line: 517, column: 23, scope: !1576)
!1729 = !DILocation(line: 520, column: 44, scope: !1586)
!1730 = !DILocation(line: 520, column: 59, scope: !1586)
!1731 = !DILocation(line: 0, scope: !1586)
!1732 = !DILocation(line: 521, column: 45, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 521, column: 27)
!1734 = !DILocation(line: 521, column: 27, scope: !1733)
!1735 = !DILocation(line: 521, column: 64, scope: !1733)
!1736 = !DILocation(line: 521, column: 27, scope: !1586)
!1737 = !DILocation(line: 524, column: 41, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 522, column: 25)
!1739 = !DILocation(line: 526, column: 27, scope: !1738)
!1740 = !DILocation(line: 528, column: 33, scope: !1586)
!1741 = !DILocation(line: 528, column: 23, scope: !1586)
!1742 = !DILocation(line: 529, column: 21, scope: !1587)
!1743 = !DILocation(line: 0, scope: !1580)
!1744 = !DILocation(line: 529, column: 21, scope: !1586)
!1745 = !DILocation(line: 531, column: 19, scope: !1576)
!1746 = !DILocation(line: 532, column: 17, scope: !1577)
!1747 = !DILocation(line: 534, column: 9, scope: !1580)
!1748 = !DILocation(line: 477, column: 39, scope: !1581)
!1749 = !DILocation(line: 477, column: 7, scope: !1581)
!1750 = distinct !{!1750, !1682, !1751, !545, !546}
!1751 = !DILocation(line: 534, column: 9, scope: !1582)
!1752 = !DILocation(line: 538, column: 21, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 538, column: 11)
!1754 = !DILocation(line: 538, column: 30, scope: !1753)
!1755 = !DILocation(line: 538, column: 11, scope: !1583)
!1756 = !DILocation(line: 540, column: 11, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 539, column: 9)
!1758 = !DILocation(line: 542, column: 11, scope: !1757)
!1759 = !DILocation(line: 545, column: 14, scope: !1583)
!1760 = !DILocation(line: 547, column: 26, scope: !1583)
!1761 = !DILocation(line: 547, column: 12, scope: !1583)
!1762 = !DILocation(line: 550, column: 11, scope: !1591)
!1763 = !DILocation(line: 550, column: 13, scope: !1591)
!1764 = !DILocation(line: 550, column: 18, scope: !1591)
!1765 = !DILocation(line: 550, column: 23, scope: !1591)
!1766 = !DILocation(line: 550, column: 26, scope: !1591)
!1767 = !DILocation(line: 551, column: 17, scope: !1591)
!1768 = !DILocation(line: 551, column: 37, scope: !1591)
!1769 = !DILocation(line: 551, column: 27, scope: !1591)
!1770 = !DILocation(line: 550, column: 11, scope: !1583)
!1771 = !DILocation(line: 553, column: 11, scope: !1590)
!1772 = !DILocation(line: 553, column: 16, scope: !1590)
!1773 = !DILocation(line: 554, column: 11, scope: !1590)
!1774 = !DILocation(line: 554, column: 16, scope: !1590)
!1775 = !DILocation(line: 0, scope: !1590)
!1776 = !DILocation(line: 558, column: 39, scope: !1590)
!1777 = !DILocation(line: 559, column: 43, scope: !1590)
!1778 = !DILocation(line: 558, column: 15, scope: !1590)
!1779 = !DILocation(line: 561, column: 15, scope: !1599)
!1780 = !DILocation(line: 561, column: 20, scope: !1599)
!1781 = !DILocation(line: 561, column: 24, scope: !1599)
!1782 = !DILocation(line: 561, column: 15, scope: !1590)
!1783 = !DILocation(line: 563, column: 21, scope: !1597)
!1784 = !DILocation(line: 563, column: 19, scope: !1598)
!1785 = !DILocation(line: 565, column: 37, scope: !1597)
!1786 = !DILocation(line: 564, column: 17, scope: !1597)
!1787 = !DILocation(line: 0, scope: !1596)
!1788 = !DILocation(line: 569, column: 39, scope: !1596)
!1789 = !DILocation(line: 569, column: 34, scope: !1596)
!1790 = !DILocation(line: 571, column: 41, scope: !1596)
!1791 = !DILocation(line: 571, column: 37, scope: !1596)
!1792 = !DILocation(line: 572, column: 43, scope: !1596)
!1793 = !DILocation(line: 572, column: 49, scope: !1596)
!1794 = !DILocation(line: 573, column: 51, scope: !1596)
!1795 = !DILocation(line: 573, column: 43, scope: !1596)
!1796 = !DILocation(line: 569, column: 33, scope: !1596)
!1797 = !DILocation(line: 575, column: 45, scope: !1596)
!1798 = !DILocation(line: 576, column: 53, scope: !1596)
!1799 = !DILocation(line: 575, column: 23, scope: !1596)
!1800 = !DILocation(line: 578, column: 23, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 578, column: 23)
!1802 = !DILocation(line: 578, column: 23, scope: !1596)
!1803 = !DILocation(line: 579, column: 21, scope: !1801)
!1804 = !DILocation(line: 581, column: 39, scope: !1596)
!1805 = !DILocation(line: 580, column: 19, scope: !1596)
!1806 = !DILocation(line: 585, column: 23, scope: !1598)
!1807 = !DILocation(line: 585, column: 15, scope: !1598)
!1808 = !DILocation(line: 586, column: 39, scope: !1598)
!1809 = !DILocation(line: 587, column: 28, scope: !1598)
!1810 = !DILocation(line: 596, column: 19, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 596, column: 19)
!1812 = !DILocation(line: 596, column: 38, scope: !1811)
!1813 = !DILocation(line: 596, column: 19, scope: !1598)
!1814 = !DILocation(line: 598, column: 23, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 598, column: 23)
!1816 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 597, column: 17)
!1817 = !DILocation(line: 598, column: 29, scope: !1815)
!1818 = !DILocation(line: 598, column: 23, scope: !1816)
!1819 = !DILocation(line: 601, column: 23, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 599, column: 21)
!1821 = !DILocation(line: 604, column: 17, scope: !1816)
!1822 = !DILocation(line: 605, column: 13, scope: !1598)
!1823 = !DILocation(line: 606, column: 9, scope: !1591)
!1824 = !DILocation(line: 587, column: 22, scope: !1598)
!1825 = !DILocation(line: 586, column: 37, scope: !1598)
!1826 = !DILocation(line: 606, column: 9, scope: !1590)
!1827 = !DILocation(line: 607, column: 5, scope: !1536)
!1828 = !DILocation(line: 600, column: 35, scope: !1820)
!1829 = distinct !{!1829, !1653, !1827, !546}
!1830 = !DILocation(line: 610, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 610, column: 7)
!1832 = !DILocation(line: 610, column: 26, scope: !1831)
!1833 = !DILocation(line: 610, column: 7, scope: !1536)
!1834 = !DILocation(line: 612, column: 11, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 612, column: 11)
!1836 = distinct !DILexicalBlock(scope: !1831, file: !2, line: 611, column: 5)
!1837 = !DILocation(line: 612, column: 17, scope: !1835)
!1838 = !DILocation(line: 612, column: 11, scope: !1836)
!1839 = !DILocation(line: 615, column: 11, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 613, column: 9)
!1841 = !DILocation(line: 618, column: 5, scope: !1836)
!1842 = !DILocation(line: 610, column: 29, scope: !1831)
!1843 = !DILocation(line: 620, column: 1, scope: !1536)
!1844 = !DILocation(line: 621, column: 3, scope: !1536)
!1845 = !DILocation(line: 623, column: 10, scope: !1536)
!1846 = !DILocation(line: 623, column: 29, scope: !1536)
!1847 = !DILocation(line: 623, column: 3, scope: !1536)
!1848 = !DILocation(line: 624, column: 1, scope: !1536)
!1849 = !DISubprogram(name: "ftruncate", scope: !1146, file: !1146, line: 611, type: !1850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!83, !83, !129}
!1852 = !DISubprogram(name: "getpagesize", scope: !1146, file: !1146, line: 558, type: !1853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!83}
!1855 = distinct !DISubprogram(name: "periodic_pattern", scope: !2, file: !2, line: 226, type: !1363, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1856)
!1856 = !{!1857, !1858, !1859}
!1857 = !DILocalVariable(name: "type", arg: 1, scope: !1855, file: !2, line: 226, type: !83)
!1858 = !DILocalVariable(name: "r", scope: !1855, file: !2, line: 231, type: !494)
!1859 = !DILocalVariable(name: "bits", scope: !1855, file: !2, line: 232, type: !69)
!1860 = !DILocation(line: 0, scope: !1855)
!1861 = !DILocation(line: 228, column: 12, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1855, file: !2, line: 228, column: 7)
!1863 = !DILocation(line: 228, column: 7, scope: !1855)
!1864 = !DILocation(line: 229, column: 5, scope: !1862)
!1865 = !DILocation(line: 231, column: 3, scope: !1855)
!1866 = !DILocation(line: 231, column: 17, scope: !1855)
!1867 = !DILocation(line: 232, column: 28, scope: !1855)
!1868 = !DILocation(line: 234, column: 16, scope: !1855)
!1869 = !DILocation(line: 234, column: 8, scope: !1855)
!1870 = !DILocation(line: 235, column: 16, scope: !1855)
!1871 = !DILocation(line: 235, column: 22, scope: !1855)
!1872 = !DILocation(line: 235, column: 10, scope: !1855)
!1873 = !DILocation(line: 235, column: 3, scope: !1855)
!1874 = !DILocation(line: 235, column: 8, scope: !1855)
!1875 = !DILocation(line: 236, column: 16, scope: !1855)
!1876 = !DILocation(line: 236, column: 22, scope: !1855)
!1877 = !DILocation(line: 236, column: 10, scope: !1855)
!1878 = !DILocation(line: 236, column: 3, scope: !1855)
!1879 = !DILocation(line: 236, column: 8, scope: !1855)
!1880 = !DILocation(line: 237, column: 15, scope: !1855)
!1881 = !DILocation(line: 237, column: 10, scope: !1855)
!1882 = !DILocation(line: 237, column: 3, scope: !1855)
!1883 = !DILocation(line: 237, column: 8, scope: !1855)
!1884 = !DILocation(line: 239, column: 11, scope: !1855)
!1885 = !DILocation(line: 239, column: 19, scope: !1855)
!1886 = !DILocation(line: 239, column: 16, scope: !1855)
!1887 = !DILocation(line: 239, column: 25, scope: !1855)
!1888 = !DILocation(line: 239, column: 29, scope: !1855)
!1889 = !DILocation(line: 239, column: 37, scope: !1855)
!1890 = !DILocation(line: 239, column: 34, scope: !1855)
!1891 = !DILocation(line: 240, column: 1, scope: !1855)
!1892 = !DISubprogram(name: "xalignalloc", scope: !1893, file: !1893, line: 107, type: !1894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!1893 = !DIFile(filename: "../lib/alignalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!126, !1896, !1896}
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1897, line: 125, baseType: !759)
!1897 = !DIFile(filename: "../lib/idx.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1898 = distinct !DISubprogram(name: "direct_mode", scope: !2, file: !2, line: 334, type: !1899, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !83, !592}
!1901 = !{!1902, !1903}
!1902 = !DILocalVariable(name: "fd", arg: 1, scope: !1898, file: !2, line: 334, type: !83)
!1903 = !DILocalVariable(name: "enable", arg: 2, scope: !1898, file: !2, line: 334, type: !592)
!1904 = !DILocation(line: 0, scope: !1898)
!1905 = !DILocation(line: 353, column: 1, scope: !1898)
!1906 = distinct !DISubprogram(name: "dorewind", scope: !2, file: !2, line: 357, type: !1907, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!592, !83, !1539}
!1909 = !{!1910, !1911, !1912}
!1910 = !DILocalVariable(name: "fd", arg: 1, scope: !1906, file: !2, line: 357, type: !83)
!1911 = !DILocalVariable(name: "st", arg: 2, scope: !1906, file: !2, line: 357, type: !1539)
!1912 = !DILocalVariable(name: "offset", scope: !1906, file: !2, line: 372, type: !129)
!1913 = !DILocation(line: 0, scope: !1906)
!1914 = !DILocation(line: 359, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 359, column: 7)
!1916 = !DILocation(line: 359, column: 7, scope: !1906)
!1917 = !DILocation(line: 371, column: 5, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 360, column: 5)
!1919 = !DILocation(line: 372, column: 18, scope: !1906)
!1920 = !DILocation(line: 373, column: 9, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 373, column: 7)
!1922 = !DILocation(line: 373, column: 7, scope: !1906)
!1923 = !DILocation(line: 374, column: 5, scope: !1921)
!1924 = !DILocation(line: 374, column: 11, scope: !1921)
!1925 = !DILocation(line: 375, column: 17, scope: !1906)
!1926 = !DILocation(line: 375, column: 3, scope: !1906)
!1927 = distinct !DISubprogram(name: "known", scope: !2, file: !2, line: 381, type: !1928, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!592, !129}
!1930 = !{!1931}
!1931 = !DILocalVariable(name: "size", arg: 1, scope: !1927, file: !2, line: 381, type: !129)
!1932 = !DILocation(line: 0, scope: !1927)
!1933 = !DILocation(line: 383, column: 12, scope: !1927)
!1934 = !DILocation(line: 383, column: 3, scope: !1927)
!1935 = distinct !DISubprogram(name: "fillpattern", scope: !2, file: !2, line: 249, type: !1936, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !83, !457, !137}
!1938 = !{!1939, !1940, !1941, !1942, !1943}
!1939 = !DILocalVariable(name: "type", arg: 1, scope: !1935, file: !2, line: 249, type: !83)
!1940 = !DILocalVariable(name: "r", arg: 2, scope: !1935, file: !2, line: 249, type: !457)
!1941 = !DILocalVariable(name: "size", arg: 3, scope: !1935, file: !2, line: 249, type: !137)
!1942 = !DILocalVariable(name: "i", scope: !1935, file: !2, line: 251, type: !137)
!1943 = !DILocalVariable(name: "bits", scope: !1935, file: !2, line: 252, type: !69)
!1944 = !DILocation(line: 0, scope: !1935)
!1945 = !DILocation(line: 252, column: 28, scope: !1935)
!1946 = !DILocation(line: 254, column: 16, scope: !1935)
!1947 = !DILocation(line: 254, column: 8, scope: !1935)
!1948 = !DILocation(line: 255, column: 16, scope: !1935)
!1949 = !DILocation(line: 255, column: 22, scope: !1935)
!1950 = !DILocation(line: 255, column: 10, scope: !1935)
!1951 = !DILocation(line: 255, column: 3, scope: !1935)
!1952 = !DILocation(line: 255, column: 8, scope: !1935)
!1953 = !DILocation(line: 256, column: 16, scope: !1935)
!1954 = !DILocation(line: 256, column: 22, scope: !1935)
!1955 = !DILocation(line: 256, column: 10, scope: !1935)
!1956 = !DILocation(line: 256, column: 3, scope: !1935)
!1957 = !DILocation(line: 256, column: 8, scope: !1935)
!1958 = !DILocation(line: 257, column: 15, scope: !1935)
!1959 = !DILocation(line: 257, column: 10, scope: !1935)
!1960 = !DILocation(line: 257, column: 3, scope: !1935)
!1961 = !DILocation(line: 257, column: 8, scope: !1935)
!1962 = !DILocation(line: 258, column: 8, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1935, file: !2, line: 258, column: 3)
!1964 = !DILocation(line: 258, scope: !1963)
!1965 = !DILocation(line: 258, column: 25, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 258, column: 3)
!1967 = !DILocation(line: 258, column: 17, scope: !1966)
!1968 = !DILocation(line: 258, column: 3, scope: !1963)
!1969 = !DILocation(line: 259, column: 15, scope: !1966)
!1970 = !DILocation(line: 259, column: 5, scope: !1966)
!1971 = !DILocation(line: 258, column: 32, scope: !1966)
!1972 = !DILocation(line: 258, column: 3, scope: !1966)
!1973 = distinct !{!1973, !1968, !1974, !545, !546}
!1974 = !DILocation(line: 259, column: 24, scope: !1963)
!1975 = !DILocation(line: 260, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1935, file: !2, line: 260, column: 7)
!1977 = !DILocation(line: 260, column: 7, scope: !1935)
!1978 = !DILocation(line: 261, column: 15, scope: !1976)
!1979 = !DILocation(line: 261, column: 28, scope: !1976)
!1980 = !DILocation(line: 261, column: 5, scope: !1976)
!1981 = !DILocation(line: 264, column: 12, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1935, file: !2, line: 264, column: 7)
!1983 = !DILocation(line: 264, column: 7, scope: !1935)
!1984 = !DILocation(line: 265, column: 10, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !2, line: 265, column: 5)
!1986 = !DILocation(line: 265, scope: !1985)
!1987 = !DILocation(line: 265, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !2, line: 265, column: 5)
!1989 = !DILocation(line: 265, column: 5, scope: !1985)
!1990 = !DILocation(line: 266, column: 7, scope: !1988)
!1991 = !DILocation(line: 266, column: 12, scope: !1988)
!1992 = !DILocation(line: 265, column: 29, scope: !1988)
!1993 = !DILocation(line: 265, column: 5, scope: !1988)
!1994 = distinct !{!1994, !1989, !1995, !545, !546}
!1995 = !DILocation(line: 266, column: 15, scope: !1985)
!1996 = !DILocation(line: 267, column: 1, scope: !1935)
!1997 = distinct !DISubprogram(name: "passname", scope: !2, file: !2, line: 275, type: !1998, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !2002)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !2000, !136}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!2002 = !{!2003, !2004}
!2003 = !DILocalVariable(name: "data", arg: 1, scope: !1997, file: !2, line: 275, type: !2000)
!2004 = !DILocalVariable(name: "name", arg: 2, scope: !1997, file: !2, line: 275, type: !136)
!2005 = !DILocation(line: 0, scope: !1997)
!2006 = !DILocation(line: 277, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 277, column: 7)
!2008 = !DILocation(line: 277, column: 7, scope: !1997)
!2009 = !DILocation(line: 278, column: 36, scope: !2007)
!2010 = !DILocation(line: 278, column: 45, scope: !2007)
!2011 = !DILocation(line: 278, column: 54, scope: !2007)
!2012 = !DILocation(line: 278, column: 5, scope: !2007)
!2013 = !DILocation(line: 280, column: 5, scope: !2007)
!2014 = !DILocation(line: 281, column: 1, scope: !1997)
!2015 = !DISubprogram(name: "time", scope: !2016, file: !2016, line: 118, type: !2017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!2016 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/time.h", directory: "")
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!1554, !2019}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!2020 = !DISubprogram(name: "randread", scope: !955, file: !955, line: 30, type: !2021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !953, !126, !137}
!2023 = !DISubprogram(name: "write", linkageName: "\01_write", scope: !1146, file: !1146, line: 496, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!1560, !83, !127, !137}
!2026 = !DISubprogram(name: "umaxtostr", scope: !2027, file: !2027, line: 29, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!2027 = !DIFile(filename: "../lib/inttostr.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!136, !141, !136}
!2030 = !DISubprogram(name: "human_readable", scope: !108, file: !108, line: 78, type: !2031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!136, !141, !136, !83, !141, !141}
!2033 = !DISubprogram(name: "strcpy", scope: !574, file: !574, line: 79, type: !2034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!136, !136, !124}
!2036 = distinct !DISubprogram(name: "alignfree", scope: !1893, file: !1893, line: 64, type: !875, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !2037)
!2037 = !{!2038}
!2038 = !DILocalVariable(name: "ptr", arg: 1, scope: !2036, file: !1893, line: 64, type: !126)
!2039 = !DILocation(line: 0, scope: !2036)
!2040 = !DILocation(line: 66, column: 3, scope: !2036)
!2041 = !DILocation(line: 67, column: 1, scope: !2036)
!2042 = !DISubprogram(name: "sprintf", scope: !447, file: !447, line: 190, type: !2043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!83, !2045, !500, null}
!2045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!2046 = distinct !DISubprogram(name: "randint_choose", scope: !200, file: !200, line: 50, type: !2047, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !2050)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!2049, !198, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "randint", file: !200, line: 30, baseType: !141)
!2050 = !{!2051, !2052}
!2051 = !DILocalVariable(name: "s", arg: 1, scope: !2046, file: !200, line: 50, type: !198)
!2052 = !DILocalVariable(name: "choices", arg: 2, scope: !2046, file: !200, line: 50, type: !2049)
!2053 = !DILocation(line: 0, scope: !2046)
!2054 = !DILocation(line: 52, column: 37, scope: !2046)
!2055 = !DILocation(line: 52, column: 10, scope: !2046)
!2056 = !DILocation(line: 52, column: 3, scope: !2046)
!2057 = !DISubprogram(name: "randint_genmax", scope: !200, file: !200, line: 44, type: !2047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!2058 = !DISubprogram(name: "fcntl", linkageName: "\01_fcntl", scope: !2059, file: !2059, line: 580, type: !2060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!2059 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/fcntl.h", directory: "")
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!83, !83, !83, null}
!2062 = !DISubprogram(name: "randint_all_free", scope: !200, file: !200, line: 36, type: !2063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !501)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!83, !198}
