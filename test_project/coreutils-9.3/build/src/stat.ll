; ModuleID = 'coreutils-9.3/build/src/stat.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.infomap = type { ptr, ptr }
%struct._RuneLocale = type { [8 x i8], [32 x i8], ptr, ptr, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, ptr, i32, i32, ptr }
%struct._RuneRange = type { i32, ptr }
%struct.lconv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.statfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.fsid, i32, i32, i32, i32, [16 x i8], [1024 x i8], [1024 x i8], i32, [7 x i32] }
%struct.fsid = type { [2 x i32] }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.print_args = type { ptr, %struct.timespec }
%struct.passwd = type { ptr, ptr, i32, i32, i64, ptr, ptr, ptr, ptr, i64 }
%struct.group = type { ptr, ptr, i32, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.mount_entry = type { ptr, ptr, ptr, ptr, i32, i8, ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... FILE...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [37 x i8] c"Display file or file system status.\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [112 x i8] c"  -L, --dereference     follow links\0A  -f, --file-system     display file system status instead of file status\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [135 x i8] c"      --cached=MODE     specify how to use cached attributes;\0A                          useful on remote file systems. See MODE below\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [418 x i8] c"  -c  --format=FORMAT   use the specified FORMAT instead of the default;\0A                          output a newline after each use of FORMAT\0A      --printf=FORMAT   like --format, but interpret backslash escapes,\0A                          and do not output a mandatory trailing newline;\0A                          if you want a newline, include \\n in FORMAT\0A  -t, --terse           print the information in terse form\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [245 x i8] c"\0AThe MODE argument of --cached can be: always, never, or default.\0A'always' will use cached attributes if available, while\0A'never' will try to synchronize with the latest attributes, and\0A'default' will leave it up to the underlying file system.\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [325 x i8] c"\0AThe valid format sequences for files (without --file-system):\0A\0A  %a   permission bits in octal (note '#' and '0' printf flags)\0A  %A   permission bits and file type in human readable form\0A  %b   number of blocks allocated (see %B)\0A  %B   the size in bytes of each block reported by %b\0A  %C   SELinux security context string\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [247 x i8] c"  %d   device number in decimal (st_dev)\0A  %D   device number in hex (st_dev)\0A  %Hd  major device number in decimal\0A  %Ld  minor device number in decimal\0A  %f   raw mode in hex\0A  %F   file type\0A  %g   group ID of owner\0A  %G   group name of owner\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [589 x i8] c"  %h   number of hard links\0A  %i   inode number\0A  %m   mount point\0A  %n   file name\0A  %N   quoted file name with dereference if symbolic link\0A  %o   optimal I/O transfer size hint\0A  %s   total size, in bytes\0A  %r   device type in decimal (st_rdev)\0A  %R   device type in hex (st_rdev)\0A  %Hr  major device type in decimal, for character/block device special files\0A  %Lr  minor device type in decimal, for character/block device special files\0A  %t   major device type in hex, for character/block device special files\0A  %T   minor device type in hex, for character/block device special files\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [478 x i8] c"  %u   user ID of owner\0A  %U   user name of owner\0A  %w   time of file birth, human-readable; - if unknown\0A  %W   time of file birth, seconds since Epoch; 0 if unknown\0A  %x   time of last access, human-readable\0A  %X   time of last access, seconds since Epoch\0A  %y   time of last data modification, human-readable\0A  %Y   time of last data modification, seconds since Epoch\0A  %z   time of last status change, human-readable\0A  %Z   time of last status change, seconds since Epoch\0A\0A\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [240 x i8] c"Valid format sequences for file systems:\0A\0A  %a   free blocks available to non-superuser\0A  %b   total data blocks in file system\0A  %c   total file nodes in file system\0A  %d   free file nodes in file system\0A  %f   free blocks in file system\0A\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [250 x i8] c"  %i   file system ID in hex\0A  %l   maximum length of filenames\0A  %n   file name\0A  %s   block size (for faster transfers)\0A  %S   fundamental block size (for block counts)\0A  %t   file system type in hex\0A  %T   file system type in human readable form\0A\00", align 1, !dbg !72
@.str.15 = private unnamed_addr constant [55 x i8] c"\0A--terse is equivalent to the following FORMAT:\0A    %s\00", align 1, !dbg !77
@fmt_terse_regular = internal constant [49 x i8] c"%n %s %b %f %u %g %D %i %h %t %T %X %Y %Z %W %o\0A\00", align 16, !dbg !82
@.str.16 = private unnamed_addr constant [68 x i8] c"--terse --file-system is equivalent to the following FORMAT:\0A    %s\00", align 1, !dbg !306
@fmt_terse_fs = internal constant [34 x i8] c"%n %i %l %t %s %S %b %f %a %c %d\0A\00", align 16, !dbg !375
@.str.17 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !311
@.str.18 = private unnamed_addr constant [5 x i8] c"stat\00", align 1, !dbg !316
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !321
@.str.20 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !326
@decimal_point = internal global ptr null, align 8, !dbg !362
@decimal_point_len = internal global i64 0, align 8, !dbg !364
@.str.21 = private unnamed_addr constant [6 x i8] c"c:fLt\00", align 1, !dbg !329
@long_options = internal constant [9 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.46, i32 0, ptr null, i32 76 }, %struct.rpl_option { ptr @.str.47, i32 0, ptr null, i32 102 }, %struct.rpl_option { ptr @.str.48, i32 1, ptr null, i32 99 }, %struct.rpl_option { ptr @.str.49, i32 1, ptr null, i32 128 }, %struct.rpl_option { ptr @.str.50, i32 0, ptr null, i32 116 }, %struct.rpl_option { ptr @.str.51, i32 1, ptr null, i32 0 }, %struct.rpl_option { ptr @.str.52, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.53, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !461
@rpl_optarg = external global ptr, align 8
@interpret_backslash_escapes = internal global i8 0, align 1, !dbg !360
@trailing_delim = internal global ptr @.str.19, align 8, !dbg !473
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !334
@follow_links = internal global i8 0, align 1, !dbg !358
@cached_modes = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !475
@.str.23 = private unnamed_addr constant [9 x i8] c"--cached\00", align 1, !dbg !336
@cached_args = internal constant [4 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr null], align 16, !dbg !485
@argmatch_die = external global ptr, align 8
@force_sync = internal global i8 0, align 1, !dbg !368
@dont_sync = internal global i8 0, align 1, !dbg !366
@.str.24 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !341
@Version = external global ptr, align 8
@.str.25 = private unnamed_addr constant [15 x i8] c"Michael Meskes\00", align 1, !dbg !346
@rpl_optind = external global i32, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !351
@.str.27 = private unnamed_addr constant [3 x i8] c"%N\00", align 1, !dbg !353
@.str.28 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !370
@.str.29 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !380
@.str.30 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !382
@.str.31 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !384
@.str.32 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !389
@.str.33 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !394
@.str.34 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !396
@.str.35 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !398
@.str.36 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !400
@.str.37 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !402
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.29, ptr @.str.30 }, %struct.infomap { ptr @.str.31, ptr @.str.32 }, %struct.infomap { ptr @.str.33, ptr @.str.34 }, %struct.infomap { ptr @.str.35, ptr @.str.34 }, %struct.infomap { ptr @.str.36, ptr @.str.34 }, %struct.infomap { ptr @.str.37, ptr @.str.34 }, %struct.infomap zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !404
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !409
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !414
@.str.41 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !419
@.str.42 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !424
@.str.43 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !426
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !431
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !436
@.str.46 = private unnamed_addr constant [12 x i8] c"dereference\00", align 1, !dbg !441
@.str.47 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1, !dbg !443
@.str.48 = private unnamed_addr constant [7 x i8] c"format\00", align 1, !dbg !445
@.str.49 = private unnamed_addr constant [7 x i8] c"printf\00", align 1, !dbg !448
@.str.50 = private unnamed_addr constant [6 x i8] c"terse\00", align 1, !dbg !450
@.str.51 = private unnamed_addr constant [7 x i8] c"cached\00", align 1, !dbg !452
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !454
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !456
@.str.54 = private unnamed_addr constant [8 x i8] c"default\00", align 1, !dbg !479
@.str.55 = private unnamed_addr constant [6 x i8] c"never\00", align 1, !dbg !481
@.str.56 = private unnamed_addr constant [7 x i8] c"always\00", align 1, !dbg !483
@.str.57 = private unnamed_addr constant [14 x i8] c"QUOTING_STYLE\00", align 1, !dbg !489
@quoting_style_args = external constant [0 x ptr], align 8
@quoting_style_vals = external constant [0 x i32], align 4
@.str.58 = private unnamed_addr constant [65 x i8] c"ignoring invalid value of environment variable QUOTING_STYLE: %s\00", align 1, !dbg !491
@.str.59 = private unnamed_addr constant [172 x i8] c"  File: \22%n\22\0A    ID: %-8i Namelen: %-7l Type: %T\0ABlock size: %-10s Fundamental block size: %S\0ABlocks: Total: %-10b Free: %-10f Available: %a\0AInodes: Total: %-10c Free: %d\0A\00", align 1, !dbg !496
@.str.60 = private unnamed_addr constant [58 x i8] c"  File: %N\0A  Size: %-10s\09Blocks: %-10b IO Block: %-6o %F\0A\00", align 1, !dbg !501
@.str.61 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !dbg !506
@.str.62 = private unnamed_addr constant [64 x i8] c"Device: %Hd,%Ld\09Inode: %-10i  Links: %-5h Device type: %Hr,%Lr\0A\00", align 1, !dbg !508
@.str.63 = private unnamed_addr constant [41 x i8] c"Device: %Hd,%Ld\09Inode: %-10i  Links: %h\0A\00", align 1, !dbg !513
@.str.64 = private unnamed_addr constant [57 x i8] c"Access: (%04a/%10.10A)  Uid: (%5u/%8U)   Gid: (%5g/%8G)\0A\00", align 1, !dbg !518
@.str.65 = private unnamed_addr constant [45 x i8] c"Access: %x\0AModify: %y\0AChange: %z\0A Birth: %w\0A\00", align 1, !dbg !520
@.str.66 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !525
@.str.67 = private unnamed_addr constant [68 x i8] c"using %s to denote standard input does not work in file system mode\00", align 1, !dbg !527
@.str.68 = private unnamed_addr constant [43 x i8] c"cannot read file system information for %s\00", align 1, !dbg !529
@.str.69 = private unnamed_addr constant [22 x i8] c"%s: invalid directive\00", align 1, !dbg !534
@.str.70 = private unnamed_addr constant [36 x i8] c"warning: backslash at end of format\00", align 1, !dbg !536
@printf_flags = internal constant [8 x i8] c"'-+ #0I\00", align 1, !dbg !541
@digits = internal constant [11 x i8] c"0123456789\00", align 1, !dbg !544
@.str.71 = private unnamed_addr constant [29 x i8] c"cannot read symbolic link %s\00", align 1, !dbg !549
@.str.72 = private unnamed_addr constant [5 x i8] c" -> \00", align 1, !dbg !554
@.str.73 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1, !dbg !556
@.str.74 = private unnamed_addr constant [2 x i8] c"s\00", align 1, !dbg !558
@.str.75 = private unnamed_addr constant [4 x i8] c"'-0\00", align 1, !dbg !560
@.str.76 = private unnamed_addr constant [3 x i8] c"ju\00", align 1, !dbg !562
@.str.77 = private unnamed_addr constant [4 x i8] c"-#0\00", align 1, !dbg !564
@.str.78 = private unnamed_addr constant [3 x i8] c"jx\00", align 1, !dbg !566
@.str.79 = private unnamed_addr constant [3 x i8] c"jo\00", align 1, !dbg !568
@human_access.modebuf = internal global [12 x i8] zeroinitializer, align 1, !dbg !570
@.str.80 = private unnamed_addr constant [2 x i8] c"?\00", align 1, !dbg !579
@.str.81 = private unnamed_addr constant [26 x i8] c"failed to canonicalize %s\00", align 1, !dbg !581
@find_bind_mount.mount_list = internal global ptr null, align 8, !dbg !586
@find_bind_mount.tried_mount_list = internal global i8 0, align 1, !dbg !615
@.str.82 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !617
@.str.83 = private unnamed_addr constant [42 x i8] c"cannot read table of mounted file systems\00", align 1, !dbg !619
@human_time.str = internal global [61 x i8] zeroinitializer, align 16, !dbg !624
@human_time.tz = internal global ptr null, align 8, !dbg !656
@.str.84 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1, !dbg !662
@.str.85 = private unnamed_addr constant [24 x i8] c"%Y-%m-%d %H:%M:%S.%N %z\00", align 1, !dbg !664
@.str.86 = private unnamed_addr constant [8 x i8] c"%s.%09d\00", align 1, !dbg !669
@.str.87 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !671
@.str.88 = private unnamed_addr constant [13 x i8] c"%s%.*d%-*.*d\00", align 1, !dbg !673
@.str.89 = private unnamed_addr constant [6 x i8] c"'-+ 0\00", align 1, !dbg !678
@.str.90 = private unnamed_addr constant [4 x i8] c".0f\00", align 1, !dbg !680
@.str.91 = private unnamed_addr constant [3 x i8] c"jd\00", align 1, !dbg !682
@.str.92 = private unnamed_addr constant [37 x i8] c"failed to get security context of %s\00", align 1, !dbg !684
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8
@.str.93 = private unnamed_addr constant [35 x i8] c"warning: unrecognized escape '\\%c'\00", align 1, !dbg !686
@.str.94 = private unnamed_addr constant [27 x i8] c"cannot stat standard input\00", align 1, !dbg !691
@.str.95 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1, !dbg !693

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !705 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !709, metadata !DIExpression()), !dbg !710
  %2 = icmp ne i32 %0, 0, !dbg !711
  br i1 %2, label %3, label %9, !dbg !713

3:                                                ; preds = %1
  br label %4, !dbg !714

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !715, !tbaa !717
  %6 = load ptr, ptr @program_name, align 8, !dbg !715, !tbaa !717
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !715
  br label %8, !dbg !715

8:                                                ; preds = %4
  br label %41, !dbg !715

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !721, !tbaa !717
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10), !dbg !723
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !724, !tbaa !717
  %13 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %12), !dbg !725
  call void @emit_mandatory_arg_note(), !dbg !726
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !727, !tbaa !717
  %15 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %14), !dbg !728
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !729, !tbaa !717
  %17 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %16), !dbg !730
  %18 = load ptr, ptr @__stdoutp, align 8, !dbg !731, !tbaa !717
  %19 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %18), !dbg !732
  %20 = load ptr, ptr @__stdoutp, align 8, !dbg !733, !tbaa !717
  %21 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %20), !dbg !734
  %22 = load ptr, ptr @__stdoutp, align 8, !dbg !735, !tbaa !717
  %23 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %22), !dbg !736
  %24 = load ptr, ptr @__stdoutp, align 8, !dbg !737, !tbaa !717
  %25 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %24), !dbg !738
  %26 = load ptr, ptr @__stdoutp, align 8, !dbg !739, !tbaa !717
  %27 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %26), !dbg !740
  %28 = load ptr, ptr @__stdoutp, align 8, !dbg !741, !tbaa !717
  %29 = call i32 @"\01_fputs"(ptr noundef @.str.10, ptr noundef %28), !dbg !742
  %30 = load ptr, ptr @__stdoutp, align 8, !dbg !743, !tbaa !717
  %31 = call i32 @"\01_fputs"(ptr noundef @.str.11, ptr noundef %30), !dbg !744
  %32 = load ptr, ptr @__stdoutp, align 8, !dbg !745, !tbaa !717
  %33 = call i32 @"\01_fputs"(ptr noundef @.str.12, ptr noundef %32), !dbg !746
  %34 = load ptr, ptr @__stdoutp, align 8, !dbg !747, !tbaa !717
  %35 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %34), !dbg !748
  %36 = load ptr, ptr @__stdoutp, align 8, !dbg !749, !tbaa !717
  %37 = call i32 @"\01_fputs"(ptr noundef @.str.14, ptr noundef %36), !dbg !750
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, ptr noundef @fmt_terse_regular), !dbg !751
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef @fmt_terse_fs), !dbg !752
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, ptr noundef @.str.18), !dbg !753
  call void @emit_ancillary_info(ptr noundef @.str.18), !dbg !754
  br label %41

41:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #13, !dbg !755
  unreachable, !dbg !755
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !756 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !812 i32 @printf(ptr noundef, ...) #2

declare !dbg !815 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !818 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !821, !tbaa !717
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.28, ptr noundef %1), !dbg !822
  ret void, !dbg !823
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !824 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !828, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #14, !dbg !842
  call void @llvm.dbg.declare(metadata ptr %2, metadata !829, metadata !DIExpression()), !dbg !843
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !843
  call void @llvm.dbg.value(metadata ptr %0, metadata !836, metadata !DIExpression()), !dbg !841
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !844
  call void @llvm.dbg.value(metadata ptr %3, metadata !837, metadata !DIExpression()), !dbg !841
  br label %4, !dbg !845

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !841
  call void @llvm.dbg.value(metadata ptr %.0, metadata !837, metadata !DIExpression()), !dbg !841
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !846
  %6 = load ptr, ptr %5, align 8, !dbg !846, !tbaa !847
  %7 = icmp ne ptr %6, null, !dbg !849
  br i1 %7, label %8, label %14, !dbg !850

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !851
  %10 = load ptr, ptr %9, align 8, !dbg !851, !tbaa !847
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !851
  %12 = icmp eq i32 %11, 0, !dbg !851
  %13 = xor i1 %12, true, !dbg !852
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !841
  br i1 %15, label %16, label %18, !dbg !845

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !853
  call void @llvm.dbg.value(metadata ptr %17, metadata !837, metadata !DIExpression()), !dbg !841
  br label %4, !dbg !845, !llvm.loop !854

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !857
  %20 = load ptr, ptr %19, align 8, !dbg !857, !tbaa !859
  %21 = icmp ne ptr %20, null, !dbg !860
  br i1 %21, label %22, label %25, !dbg !861

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !862
  %24 = load ptr, ptr %23, align 8, !dbg !862, !tbaa !859
  call void @llvm.dbg.value(metadata ptr %24, metadata !836, metadata !DIExpression()), !dbg !841
  br label %25, !dbg !863

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !841
  call void @llvm.dbg.value(metadata ptr %.01, metadata !836, metadata !DIExpression()), !dbg !841
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.38, ptr noundef @.str.24, ptr noundef @.str.39), !dbg !864
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !865
  call void @llvm.dbg.value(metadata ptr %27, metadata !839, metadata !DIExpression()), !dbg !841
  %28 = icmp ne ptr %27, null, !dbg !866
  br i1 %28, label %29, label %35, !dbg !868

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.40, i64 noundef 3), !dbg !869
  %31 = icmp ne i32 %30, 0, !dbg !869
  br i1 %31, label %32, label %35, !dbg !870

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !871, !tbaa !717
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.41, ptr noundef %33), !dbg !873
  br label %35, !dbg !874

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.29), !dbg !875
  %37 = icmp eq i32 %36, 0, !dbg !875
  br i1 %37, label %38, label %39, !dbg !875

38:                                               ; preds = %35
  br label %40, !dbg !875

39:                                               ; preds = %35
  br label %40, !dbg !875

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.42, %38 ], [ %0, %39 ], !dbg !875
  call void @llvm.dbg.value(metadata ptr %41, metadata !840, metadata !DIExpression()), !dbg !841
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.43, ptr noundef @.str.39, ptr noundef %41), !dbg !876
  %43 = icmp eq ptr %.01, %0, !dbg !877
  %44 = zext i1 %43 to i64, !dbg !878
  %45 = select i1 %43, ptr @.str.45, ptr @.str.19, !dbg !878
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.44, ptr noundef %.01, ptr noundef %45), !dbg !879
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #14, !dbg !880
  ret void, !dbg !880
}

; Function Attrs: noreturn
declare !dbg !881 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !883 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !887 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !891 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !899, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr %1, metadata !900, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8 0, metadata !902, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8 0, metadata !903, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr null, metadata !904, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8 1, metadata !906, metadata !DIExpression()), !dbg !939
  %3 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !940
  %4 = load ptr, ptr %3, align 8, !dbg !940, !tbaa !717
  call void @set_program_name(ptr noundef %4), !dbg !941
  %5 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.19), !dbg !942
  %6 = call ptr @localeconv(), !dbg !943
  call void @llvm.dbg.value(metadata ptr %6, metadata !907, metadata !DIExpression()), !dbg !939
  %7 = getelementptr inbounds %struct.lconv, ptr %6, i32 0, i32 0, !dbg !944
  %8 = load ptr, ptr %7, align 8, !dbg !944, !tbaa !945
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !947
  %10 = load i8, ptr %9, align 1, !dbg !947, !tbaa !948
  %11 = sext i8 %10 to i32, !dbg !947
  %12 = icmp ne i32 %11, 0, !dbg !947
  br i1 %12, label %13, label %16, !dbg !947

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.lconv, ptr %6, i32 0, i32 0, !dbg !949
  %15 = load ptr, ptr %14, align 8, !dbg !949, !tbaa !945
  br label %17, !dbg !947

16:                                               ; preds = %2
  br label %17, !dbg !947

17:                                               ; preds = %16, %13
  %18 = phi ptr [ %15, %13 ], [ @.str.20, %16 ], !dbg !947
  store ptr %18, ptr @decimal_point, align 8, !dbg !950, !tbaa !717
  %19 = load ptr, ptr @decimal_point, align 8, !dbg !951, !tbaa !717
  %20 = call i64 @strlen(ptr noundef %19), !dbg !952
  store i64 %20, ptr @decimal_point_len, align 8, !dbg !953, !tbaa !954
  %21 = call i32 @atexit(ptr noundef @close_stdout), !dbg !956
  br label %22, !dbg !957

22:                                               ; preds = %48, %17
  %.06 = phi i8 [ 0, %17 ], [ %.17, %48 ], !dbg !958
  %.04 = phi i8 [ 0, %17 ], [ %.15, %48 ], !dbg !959
  %.03 = phi ptr [ null, %17 ], [ %.1, %48 ], !dbg !960
  call void @llvm.dbg.value(metadata ptr %.03, metadata !904, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8 %.04, metadata !902, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8 %.06, metadata !903, metadata !DIExpression()), !dbg !939
  %23 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.21, ptr noundef @long_options, ptr noundef null), !dbg !961
  call void @llvm.dbg.value(metadata i32 %23, metadata !901, metadata !DIExpression()), !dbg !939
  %24 = icmp ne i32 %23, -1, !dbg !962
  br i1 %24, label %25, label %49, !dbg !957

25:                                               ; preds = %22
  switch i32 %23, label %47 [
    i32 128, label %26
    i32 99, label %28
    i32 76, label %30
    i32 102, label %31
    i32 116, label %32
    i32 0, label %33
    i32 -130, label %43
    i32 -131, label %44
  ], !dbg !963

26:                                               ; preds = %25
  %27 = load ptr, ptr @rpl_optarg, align 8, !dbg !965, !tbaa !717
  call void @llvm.dbg.value(metadata ptr %27, metadata !904, metadata !DIExpression()), !dbg !939
  store i8 1, ptr @interpret_backslash_escapes, align 1, !dbg !967, !tbaa !968
  store ptr @.str.19, ptr @trailing_delim, align 8, !dbg !970, !tbaa !717
  br label %48, !dbg !971

28:                                               ; preds = %25
  %29 = load ptr, ptr @rpl_optarg, align 8, !dbg !972, !tbaa !717
  call void @llvm.dbg.value(metadata ptr %29, metadata !904, metadata !DIExpression()), !dbg !939
  store i8 0, ptr @interpret_backslash_escapes, align 1, !dbg !973, !tbaa !968
  store ptr @.str.22, ptr @trailing_delim, align 8, !dbg !974, !tbaa !717
  br label %48, !dbg !975

30:                                               ; preds = %25
  store i8 1, ptr @follow_links, align 1, !dbg !976, !tbaa !968
  br label %48, !dbg !977

31:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8 1, metadata !902, metadata !DIExpression()), !dbg !939
  br label %48, !dbg !978

32:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8 1, metadata !903, metadata !DIExpression()), !dbg !939
  br label %48, !dbg !979

33:                                               ; preds = %25
  %34 = load ptr, ptr @rpl_optarg, align 8, !dbg !980, !tbaa !717
  %35 = load ptr, ptr @argmatch_die, align 8, !dbg !980, !tbaa !717
  %36 = call i64 @__xargmatch_internal(ptr noundef @.str.23, ptr noundef %34, ptr noundef @cached_args, ptr noundef @cached_modes, i64 noundef 4, ptr noundef %35, i1 noundef zeroext true), !dbg !980
  %37 = getelementptr inbounds [3 x i32], ptr @cached_modes, i64 0, i64 %36, !dbg !980
  %38 = load i32, ptr %37, align 4, !dbg !980, !tbaa !948
  switch i32 %38, label %42 [
    i32 1, label %39
    i32 2, label %40
    i32 0, label %41
  ], !dbg !981

39:                                               ; preds = %33
  store i8 1, ptr @force_sync, align 1, !dbg !982, !tbaa !968
  store i8 0, ptr @dont_sync, align 1, !dbg !984, !tbaa !968
  br label %42, !dbg !985

40:                                               ; preds = %33
  store i8 0, ptr @force_sync, align 1, !dbg !986, !tbaa !968
  store i8 1, ptr @dont_sync, align 1, !dbg !987, !tbaa !968
  br label %42, !dbg !988

41:                                               ; preds = %33
  store i8 0, ptr @force_sync, align 1, !dbg !989, !tbaa !968
  store i8 0, ptr @dont_sync, align 1, !dbg !990, !tbaa !968
  br label %42, !dbg !991

42:                                               ; preds = %41, %40, %39, %33
  br label %48, !dbg !992

43:                                               ; preds = %25
  call void @usage(i32 noundef 0) #13, !dbg !993
  unreachable, !dbg !993

44:                                               ; preds = %25
  %45 = load ptr, ptr @__stdoutp, align 8, !dbg !994, !tbaa !717
  %46 = load ptr, ptr @Version, align 8, !dbg !994, !tbaa !717
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %45, ptr noundef @.str.18, ptr noundef @.str.24, ptr noundef %46, ptr noundef @.str.25, ptr noundef null), !dbg !994
  call void @exit(i32 noundef 0) #13, !dbg !994
  unreachable, !dbg !994

47:                                               ; preds = %25
  call void @usage(i32 noundef 1) #13, !dbg !995
  unreachable, !dbg !995

48:                                               ; preds = %42, %32, %31, %30, %28, %26
  %.17 = phi i8 [ %.06, %42 ], [ 1, %32 ], [ %.06, %31 ], [ %.06, %30 ], [ %.06, %28 ], [ %.06, %26 ], !dbg !939
  %.15 = phi i8 [ %.04, %42 ], [ %.04, %32 ], [ 1, %31 ], [ %.04, %30 ], [ %.04, %28 ], [ %.04, %26 ], !dbg !939
  %.1 = phi ptr [ %.03, %42 ], [ %.03, %32 ], [ %.03, %31 ], [ %.03, %30 ], [ %29, %28 ], [ %27, %26 ], !dbg !939
  call void @llvm.dbg.value(metadata ptr %.1, metadata !904, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8 %.15, metadata !902, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8 %.17, metadata !903, metadata !DIExpression()), !dbg !939
  br label %22, !dbg !957, !llvm.loop !996

49:                                               ; preds = %22
  %50 = load i32, ptr @rpl_optind, align 4, !dbg !998, !tbaa !1000
  %51 = icmp eq i32 %0, %50, !dbg !1002
  br i1 %51, label %52, label %53, !dbg !1003

52:                                               ; preds = %49
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.26), !dbg !1004
  call void @usage(i32 noundef 1) #13, !dbg !1006
  unreachable, !dbg !1006

53:                                               ; preds = %49
  %54 = icmp ne ptr %.03, null, !dbg !1007
  br i1 %54, label %55, label %60, !dbg !1009

55:                                               ; preds = %53
  %56 = call ptr @strstr(ptr noundef %.03, ptr noundef @.str.27), !dbg !1010
  %57 = icmp ne ptr %56, null, !dbg !1010
  br i1 %57, label %58, label %59, !dbg !1013

58:                                               ; preds = %55
  call void @getenv_quoting_style(), !dbg !1014
  br label %59, !dbg !1014

59:                                               ; preds = %58, %55
  call void @llvm.dbg.value(metadata ptr %.03, metadata !905, metadata !DIExpression()), !dbg !939
  br label %67, !dbg !1015

60:                                               ; preds = %53
  %61 = trunc i8 %.04 to i1, !dbg !1016
  %62 = trunc i8 %.06 to i1, !dbg !1018
  %63 = call ptr @default_format(i1 noundef zeroext %61, i1 noundef zeroext %62, i1 noundef zeroext false), !dbg !1019
  call void @llvm.dbg.value(metadata ptr %63, metadata !904, metadata !DIExpression()), !dbg !939
  %64 = trunc i8 %.04 to i1, !dbg !1020
  %65 = trunc i8 %.06 to i1, !dbg !1021
  %66 = call ptr @default_format(i1 noundef zeroext %64, i1 noundef zeroext %65, i1 noundef zeroext true), !dbg !1022
  call void @llvm.dbg.value(metadata ptr %66, metadata !905, metadata !DIExpression()), !dbg !939
  br label %67

67:                                               ; preds = %60, %59
  %.2 = phi ptr [ %.03, %59 ], [ %63, %60 ], !dbg !939
  %.02 = phi ptr [ %.03, %59 ], [ %66, %60 ], !dbg !1023
  call void @llvm.dbg.value(metadata ptr %.02, metadata !905, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr %.2, metadata !904, metadata !DIExpression()), !dbg !939
  %68 = load i32, ptr @rpl_optind, align 4, !dbg !1024, !tbaa !1000
  call void @llvm.dbg.value(metadata i32 %68, metadata !937, metadata !DIExpression()), !dbg !1025
  br label %69, !dbg !1026

69:                                               ; preds = %93, %67
  %.01 = phi i8 [ 1, %67 ], [ %92, %93 ], !dbg !939
  %.0 = phi i32 [ %68, %67 ], [ %94, %93 ], !dbg !1027
  call void @llvm.dbg.value(metadata i32 %.0, metadata !937, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata i8 %.01, metadata !906, metadata !DIExpression()), !dbg !939
  %70 = icmp slt i32 %.0, %0, !dbg !1028
  br i1 %70, label %72, label %71, !dbg !1030

71:                                               ; preds = %69
  br label %95

72:                                               ; preds = %69
  %73 = trunc i8 %.04 to i1, !dbg !1031
  br i1 %73, label %74, label %80, !dbg !1031

74:                                               ; preds = %72
  %75 = sext i32 %.0 to i64, !dbg !1032
  %76 = getelementptr inbounds ptr, ptr %1, i64 %75, !dbg !1032
  %77 = load ptr, ptr %76, align 8, !dbg !1032, !tbaa !717
  %78 = call zeroext i1 @do_statfs(ptr noundef %77, ptr noundef %.2), !dbg !1033
  %79 = zext i1 %78 to i32, !dbg !1033
  br label %86, !dbg !1031

80:                                               ; preds = %72
  %81 = sext i32 %.0 to i64, !dbg !1034
  %82 = getelementptr inbounds ptr, ptr %1, i64 %81, !dbg !1034
  %83 = load ptr, ptr %82, align 8, !dbg !1034, !tbaa !717
  %84 = call zeroext i1 @do_stat(ptr noundef %83, ptr noundef %.2, ptr noundef %.02), !dbg !1035
  %85 = zext i1 %84 to i32, !dbg !1035
  br label %86, !dbg !1031

86:                                               ; preds = %80, %74
  %87 = phi i32 [ %79, %74 ], [ %85, %80 ], !dbg !1031
  %88 = trunc i8 %.01 to i1, !dbg !1036
  %89 = zext i1 %88 to i32, !dbg !1036
  %90 = and i32 %89, %87, !dbg !1036
  %91 = icmp ne i32 %90, 0, !dbg !1036
  %92 = zext i1 %91 to i8, !dbg !1036
  call void @llvm.dbg.value(metadata i8 %92, metadata !906, metadata !DIExpression()), !dbg !939
  br label %93, !dbg !1037

93:                                               ; preds = %86
  %94 = add nsw i32 %.0, 1, !dbg !1038
  call void @llvm.dbg.value(metadata i32 %94, metadata !937, metadata !DIExpression()), !dbg !1025
  br label %69, !dbg !1039, !llvm.loop !1040

95:                                               ; preds = %71
  %96 = trunc i8 %.01 to i1, !dbg !1042
  %97 = zext i1 %96 to i64, !dbg !1042
  %98 = select i1 %96, i32 0, i32 1, !dbg !1042
  ret i32 %98, !dbg !1042
}

declare !dbg !1043 void @set_program_name(ptr noundef) #2

declare !dbg !1045 ptr @localeconv() #2

declare !dbg !1049 i64 @strlen(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !1052 i32 @atexit(ptr noundef) #2

declare !dbg !1056 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1060 i64 @__xargmatch_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #2

declare !dbg !1067 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !1071 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !1075 ptr @strstr(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @getenv_quoting_style() #7 !dbg !1078 {
  %1 = call ptr @getenv(ptr noundef @.str.57), !dbg !1084
  call void @llvm.dbg.value(metadata ptr %1, metadata !1080, metadata !DIExpression()), !dbg !1085
  %2 = icmp ne ptr %1, null, !dbg !1086
  br i1 %2, label %3, label %14, !dbg !1087

3:                                                ; preds = %0
  %4 = call i64 @argmatch(ptr noundef %1, ptr noundef @quoting_style_args, ptr noundef @quoting_style_vals, i64 noundef 4) #15, !dbg !1088
  %5 = trunc i64 %4 to i32, !dbg !1088
  call void @llvm.dbg.value(metadata i32 %5, metadata !1081, metadata !DIExpression()), !dbg !1089
  %6 = icmp sle i32 0, %5, !dbg !1090
  br i1 %6, label %7, label %11, !dbg !1092

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64, !dbg !1093
  %9 = getelementptr inbounds [0 x i32], ptr @quoting_style_vals, i64 0, i64 %8, !dbg !1093
  %10 = load i32, ptr %9, align 4, !dbg !1093, !tbaa !948
  call void @set_quoting_style(ptr noundef null, i32 noundef %10), !dbg !1094
  br label %13, !dbg !1094

11:                                               ; preds = %3
  call void @set_quoting_style(ptr noundef null, i32 noundef 4), !dbg !1095
  %12 = call ptr @quote(ptr noundef %1), !dbg !1097
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.58, ptr noundef %12), !dbg !1098
  br label %13

13:                                               ; preds = %11, %7
  br label %15, !dbg !1099

14:                                               ; preds = %0
  call void @set_quoting_style(ptr noundef null, i32 noundef 4), !dbg !1100
  br label %15

15:                                               ; preds = %14, %13
  ret void, !dbg !1101
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @default_format(i1 noundef zeroext %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #7 !dbg !1102 {
  %4 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %4, metadata !1106, metadata !DIExpression()), !dbg !1115
  %5 = zext i1 %1 to i8
  call void @llvm.dbg.value(metadata i8 %5, metadata !1107, metadata !DIExpression()), !dbg !1115
  %6 = zext i1 %2 to i8
  call void @llvm.dbg.value(metadata i8 %6, metadata !1108, metadata !DIExpression()), !dbg !1115
  %7 = trunc i8 %4 to i1, !dbg !1116
  br i1 %7, label %8, label %15, !dbg !1117

8:                                                ; preds = %3
  %9 = trunc i8 %5 to i1, !dbg !1118
  br i1 %9, label %10, label %12, !dbg !1121

10:                                               ; preds = %8
  %11 = call noalias nonnull ptr @xstrdup(ptr noundef @fmt_terse_fs), !dbg !1122
  call void @llvm.dbg.value(metadata ptr %11, metadata !1109, metadata !DIExpression()), !dbg !1115
  br label %14, !dbg !1123

12:                                               ; preds = %8
  %13 = call noalias nonnull ptr @xstrdup(ptr noundef @.str.59), !dbg !1124
  call void @llvm.dbg.value(metadata ptr %13, metadata !1109, metadata !DIExpression()), !dbg !1115
  br label %14

14:                                               ; preds = %12, %10
  %.0 = phi ptr [ %11, %10 ], [ %13, %12 ], !dbg !1126
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1109, metadata !DIExpression()), !dbg !1115
  br label %30, !dbg !1127

15:                                               ; preds = %3
  %16 = trunc i8 %5 to i1, !dbg !1128
  br i1 %16, label %17, label %19, !dbg !1129

17:                                               ; preds = %15
  %18 = call noalias nonnull ptr @xstrdup(ptr noundef @fmt_terse_regular), !dbg !1130
  call void @llvm.dbg.value(metadata ptr %18, metadata !1109, metadata !DIExpression()), !dbg !1115
  br label %29, !dbg !1133

19:                                               ; preds = %15
  %20 = call noalias nonnull ptr @xstrdup(ptr noundef @.str.60), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %20, metadata !1109, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %20, metadata !1110, metadata !DIExpression()), !dbg !1135
  %21 = trunc i8 %6 to i1, !dbg !1136
  br i1 %21, label %22, label %24, !dbg !1138

22:                                               ; preds = %19
  %23 = call noalias ptr (ptr, ...) @xasprintf(ptr noundef @.str.61, ptr noundef %20, ptr noundef @.str.62), !dbg !1139
  call void @llvm.dbg.value(metadata ptr %23, metadata !1109, metadata !DIExpression()), !dbg !1115
  br label %26, !dbg !1141

24:                                               ; preds = %19
  %25 = call noalias ptr (ptr, ...) @xasprintf(ptr noundef @.str.61, ptr noundef %20, ptr noundef @.str.63), !dbg !1142
  call void @llvm.dbg.value(metadata ptr %25, metadata !1109, metadata !DIExpression()), !dbg !1115
  br label %26

26:                                               ; preds = %24, %22
  %.1 = phi ptr [ %23, %22 ], [ %25, %24 ], !dbg !1144
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1109, metadata !DIExpression()), !dbg !1115
  call void @rpl_free(ptr noundef %20), !dbg !1145
  call void @llvm.dbg.value(metadata ptr %.1, metadata !1110, metadata !DIExpression()), !dbg !1135
  %27 = call noalias ptr (ptr, ...) @xasprintf(ptr noundef @.str.61, ptr noundef %.1, ptr noundef @.str.64), !dbg !1146
  call void @llvm.dbg.value(metadata ptr %27, metadata !1109, metadata !DIExpression()), !dbg !1115
  call void @rpl_free(ptr noundef %.1), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %27, metadata !1110, metadata !DIExpression()), !dbg !1135
  %28 = call noalias ptr (ptr, ...) @xasprintf(ptr noundef @.str.61, ptr noundef %27, ptr noundef @.str.65), !dbg !1148
  call void @llvm.dbg.value(metadata ptr %28, metadata !1109, metadata !DIExpression()), !dbg !1115
  call void @rpl_free(ptr noundef %27), !dbg !1149
  br label %29

29:                                               ; preds = %26, %17
  %.2 = phi ptr [ %18, %17 ], [ %28, %26 ], !dbg !1150
  call void @llvm.dbg.value(metadata ptr %.2, metadata !1109, metadata !DIExpression()), !dbg !1115
  br label %30

30:                                               ; preds = %29, %14
  %.3 = phi ptr [ %.0, %14 ], [ %.2, %29 ], !dbg !1151
  call void @llvm.dbg.value(metadata ptr %.3, metadata !1109, metadata !DIExpression()), !dbg !1115
  ret ptr %.3, !dbg !1152
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @do_statfs(ptr noundef %0, ptr noundef %1) #7 !dbg !1153 {
  %3 = alloca %struct.statfs, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1157, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata ptr %1, metadata !1158, metadata !DIExpression()), !dbg !1161
  call void @llvm.lifetime.start.p0(i64 2168, ptr %3) #14, !dbg !1162
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1159, metadata !DIExpression()), !dbg !1163
  %4 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.66), !dbg !1164
  %5 = icmp eq i32 %4, 0, !dbg !1164
  br i1 %5, label %6, label %8, !dbg !1166

6:                                                ; preds = %2
  %7 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1167
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.67, ptr noundef %7), !dbg !1169
  br label %20, !dbg !1170

8:                                                ; preds = %2
  %9 = call i32 @"\01_statfs$INODE64"(ptr noundef %0, ptr noundef %3), !dbg !1171
  %10 = icmp ne i32 %9, 0, !dbg !1173
  br i1 %10, label %11, label %15, !dbg !1174

11:                                               ; preds = %8
  %12 = call ptr @__error(), !dbg !1175
  %13 = load i32, ptr %12, align 4, !dbg !1175, !tbaa !1000
  %14 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1177
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %13, ptr noundef @.str.68, ptr noundef %14), !dbg !1178
  br label %20, !dbg !1179

15:                                               ; preds = %8
  %16 = call zeroext i1 @print_it(ptr noundef %1, i32 noundef -1, ptr noundef %0, ptr noundef @print_statfs, ptr noundef %3), !dbg !1180
  %17 = zext i1 %16 to i8, !dbg !1181
  call void @llvm.dbg.value(metadata i8 %17, metadata !1160, metadata !DIExpression()), !dbg !1161
  %18 = trunc i8 %17 to i1, !dbg !1182
  %19 = xor i1 %18, true, !dbg !1183
  br label %20

20:                                               ; preds = %15, %11, %6
  %.0 = phi i1 [ false, %6 ], [ false, %11 ], [ %19, %15 ], !dbg !1161
  call void @llvm.lifetime.end.p0(i64 2168, ptr %3) #14, !dbg !1184
  ret i1 %.0, !dbg !1184
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @do_stat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 !dbg !1185 {
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.print_args, align 8
  %6 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1189, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr %1, metadata !1190, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr %2, metadata !1191, metadata !DIExpression()), !dbg !1196
  %7 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.66), !dbg !1197
  %8 = icmp eq i32 %7, 0, !dbg !1197
  %9 = zext i1 %8 to i64, !dbg !1197
  %10 = select i1 %8, i32 0, i32 -1, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %10, metadata !1192, metadata !DIExpression()), !dbg !1196
  call void @llvm.lifetime.start.p0(i64 144, ptr %4) #14, !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1193, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.start.p0(i64 24, ptr %5) #14, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1194, metadata !DIExpression()), !dbg !1201
  %11 = getelementptr inbounds %struct.print_args, ptr %5, i32 0, i32 0, !dbg !1202
  store ptr %4, ptr %11, align 8, !dbg !1203, !tbaa !1204
  %12 = getelementptr inbounds %struct.print_args, ptr %5, i32 0, i32 1, !dbg !1207
  %13 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 0, !dbg !1208
  store i64 -1, ptr %13, align 8, !dbg !1208, !tbaa !1209
  %14 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !1208
  store i64 -1, ptr %14, align 8, !dbg !1208, !tbaa !1210
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %6, i64 16, i1 false), !dbg !1211, !tbaa.struct !1212
  %15 = icmp sle i32 0, %10, !dbg !1213
  br i1 %15, label %16, label %23, !dbg !1215

16:                                               ; preds = %3
  %17 = call i32 @"\01_fstat$INODE64"(i32 noundef %10, ptr noundef %4), !dbg !1216
  %18 = icmp ne i32 %17, 0, !dbg !1219
  br i1 %18, label %19, label %22, !dbg !1220

19:                                               ; preds = %16
  %20 = call ptr @__error(), !dbg !1221
  %21 = load i32, ptr %20, align 4, !dbg !1221, !tbaa !1000
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %21, ptr noundef @.str.94), !dbg !1223
  br label %56, !dbg !1224

22:                                               ; preds = %16
  br label %38, !dbg !1225

23:                                               ; preds = %3
  %24 = load i8, ptr @follow_links, align 1, !dbg !1226, !tbaa !968, !range !1228, !noundef !811
  %25 = trunc i8 %24 to i1, !dbg !1226
  br i1 %25, label %26, label %28, !dbg !1226

26:                                               ; preds = %23
  %27 = call i32 @rpl_stat(ptr noundef %0, ptr noundef %4), !dbg !1229
  br label %30, !dbg !1226

28:                                               ; preds = %23
  %29 = call i32 @rpl_lstat(ptr noundef %0, ptr noundef %4), !dbg !1230
  br label %30, !dbg !1226

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !1226
  %32 = icmp ne i32 %31, 0, !dbg !1231
  br i1 %32, label %33, label %37, !dbg !1232

33:                                               ; preds = %30
  %34 = call ptr @__error(), !dbg !1233
  %35 = load i32, ptr %34, align 4, !dbg !1233, !tbaa !1000
  %36 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1235
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %35, ptr noundef @.str.95, ptr noundef %36), !dbg !1236
  br label %56, !dbg !1237

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %22
  %39 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 1, !dbg !1238
  %40 = load i16, ptr %39, align 4, !dbg !1238, !tbaa !1240
  %41 = zext i16 %40 to i32, !dbg !1238
  %42 = and i32 %41, 61440, !dbg !1238
  %43 = icmp eq i32 %42, 24576, !dbg !1238
  br i1 %43, label %50, label %44, !dbg !1244

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 1, !dbg !1245
  %46 = load i16, ptr %45, align 4, !dbg !1245, !tbaa !1240
  %47 = zext i16 %46 to i32, !dbg !1245
  %48 = and i32 %47, 61440, !dbg !1245
  %49 = icmp eq i32 %48, 8192, !dbg !1245
  br i1 %49, label %50, label %51, !dbg !1246

50:                                               ; preds = %44, %38
  call void @llvm.dbg.value(metadata ptr %2, metadata !1190, metadata !DIExpression()), !dbg !1196
  br label %51, !dbg !1247

51:                                               ; preds = %50, %44
  %.01 = phi ptr [ %2, %50 ], [ %1, %44 ]
  call void @llvm.dbg.value(metadata ptr %.01, metadata !1190, metadata !DIExpression()), !dbg !1196
  %52 = call zeroext i1 @print_it(ptr noundef %.01, i32 noundef %10, ptr noundef %0, ptr noundef @print_stat, ptr noundef %5), !dbg !1248
  %53 = zext i1 %52 to i8, !dbg !1249
  call void @llvm.dbg.value(metadata i8 %53, metadata !1195, metadata !DIExpression()), !dbg !1196
  %54 = trunc i8 %53 to i1, !dbg !1250
  %55 = xor i1 %54, true, !dbg !1251
  br label %56

56:                                               ; preds = %51, %33, %19
  %.0 = phi i1 [ false, %19 ], [ %55, %51 ], [ false, %33 ], !dbg !1196
  call void @llvm.lifetime.end.p0(i64 24, ptr %5) #14, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 144, ptr %4) #14, !dbg !1252
  ret i1 %.0, !dbg !1252
}

declare !dbg !1253 i32 @"\01_fstat$INODE64"(i32 noundef, ptr noundef) #2

declare !dbg !1256 ptr @__error() #2

declare !dbg !1260 i32 @rpl_stat(ptr noundef, ptr noundef) #2

declare !dbg !1265 i32 @rpl_lstat(ptr noundef, ptr noundef) #2

declare !dbg !1266 ptr @quotearg_style(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @print_stat(ptr noundef %0, i64 noundef %1, i8 noundef signext %2, i8 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #7 !dbg !1269 {
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca %struct.timespec, align 8
  %12 = alloca %struct.timespec, align 8
  %13 = alloca %struct.timespec, align 8
  %14 = alloca %struct.timespec, align 8
  %15 = alloca %struct.timespec, align 8
  %16 = alloca %struct.timespec, align 8
  %17 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1271, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %1, metadata !1272, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i8 %2, metadata !1273, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i8 %3, metadata !1274, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %4, metadata !1275, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %5, metadata !1276, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %6, metadata !1277, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %6, metadata !1278, metadata !DIExpression()), !dbg !1310
  %18 = getelementptr inbounds %struct.print_args, ptr %6, i32 0, i32 0, !dbg !1311
  %19 = load ptr, ptr %18, align 8, !dbg !1311, !tbaa !1204
  call void @llvm.dbg.value(metadata ptr %19, metadata !1279, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.start.p0(i64 16, ptr %8) #14, !dbg !1312
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1280, metadata !DIExpression()), !dbg !1313
  %20 = getelementptr inbounds %struct.print_args, ptr %6, i32 0, i32 1, !dbg !1314
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %20, i64 16, i1 false), !dbg !1314, !tbaa.struct !1212
  call void @llvm.dbg.value(metadata i8 0, metadata !1305, metadata !DIExpression()), !dbg !1310
  %21 = sext i8 %3 to i32, !dbg !1315
  switch i32 %21, label %316 [
    i32 110, label %22
    i32 78, label %23
    i32 100, label %47
    i32 68, label %73
    i32 105, label %77
    i32 97, label %81
    i32 65, label %87
    i32 102, label %89
    i32 70, label %93
    i32 104, label %95
    i32 117, label %100
    i32 85, label %105
    i32 103, label %116
    i32 71, label %121
    i32 109, label %132
    i32 115, label %140
    i32 114, label %145
    i32 82, label %171
    i32 116, label %175
    i32 84, label %181
    i32 66, label %186
    i32 98, label %188
    i32 111, label %192
    i32 119, label %209
    i32 87, label %226
    i32 120, label %245
    i32 88, label %256
    i32 121, label %266
    i32 89, label %277
    i32 122, label %287
    i32 90, label %298
    i32 67, label %308
  ], !dbg !1316

22:                                               ; preds = %7
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %5), !dbg !1317
  br label %319, !dbg !1318

23:                                               ; preds = %7
  %24 = call i32 @get_quoting_style(ptr noundef null), !dbg !1319
  %25 = call ptr @quotearg_style(i32 noundef %24, ptr noundef %5), !dbg !1319
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %25), !dbg !1320
  %26 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 1, !dbg !1321
  %27 = load i16, ptr %26, align 4, !dbg !1321, !tbaa !1240
  %28 = zext i16 %27 to i32, !dbg !1321
  %29 = and i32 %28, 61440, !dbg !1321
  %30 = icmp eq i32 %29, 40960, !dbg !1321
  br i1 %30, label %31, label %46, !dbg !1322

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 11, !dbg !1323
  %33 = load i64, ptr %32, align 8, !dbg !1323, !tbaa !1324
  %34 = call ptr @areadlink_with_size(ptr noundef %5, i64 noundef %33), !dbg !1325
  call void @llvm.dbg.value(metadata ptr %34, metadata !1306, metadata !DIExpression()), !dbg !1326
  %35 = icmp eq ptr %34, null, !dbg !1327
  br i1 %35, label %36, label %40, !dbg !1329

36:                                               ; preds = %31
  %37 = call ptr @__error(), !dbg !1330
  %38 = load i32, ptr %37, align 4, !dbg !1330, !tbaa !1000
  %39 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %5), !dbg !1332
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %38, ptr noundef @.str.71, ptr noundef %39), !dbg !1333
  br label %44, !dbg !1334

40:                                               ; preds = %31
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.72), !dbg !1335
  %42 = call i32 @get_quoting_style(ptr noundef null), !dbg !1336
  %43 = call ptr @quotearg_style(i32 noundef %42, ptr noundef %34), !dbg !1336
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %43), !dbg !1337
  call void @rpl_free(ptr noundef %34), !dbg !1338
  br label %44, !dbg !1339

44:                                               ; preds = %40, %36
  %.01 = phi i32 [ 1, %36 ], [ 0, %40 ]
  switch i32 %.01, label %321 [
    i32 0, label %45
  ]

45:                                               ; preds = %44
  br label %46, !dbg !1340

46:                                               ; preds = %45, %23
  br label %319, !dbg !1341

47:                                               ; preds = %7
  %48 = sext i8 %2 to i32, !dbg !1342
  %49 = icmp eq i32 %48, 72, !dbg !1344
  br i1 %49, label %50, label %57, !dbg !1345

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 0, !dbg !1346
  %52 = load i32, ptr %51, align 8, !dbg !1346, !tbaa !1347
  %53 = lshr i32 %52, 24, !dbg !1346
  %54 = and i32 %53, 255, !dbg !1346
  %55 = sext i32 %54 to i64, !dbg !1346
  %56 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %55), !dbg !1348
  br label %72, !dbg !1348

57:                                               ; preds = %47
  %58 = sext i8 %2 to i32, !dbg !1349
  %59 = icmp eq i32 %58, 76, !dbg !1351
  br i1 %59, label %60, label %66, !dbg !1352

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 0, !dbg !1353
  %62 = load i32, ptr %61, align 8, !dbg !1353, !tbaa !1347
  %63 = and i32 %62, 16777215, !dbg !1353
  %64 = sext i32 %63 to i64, !dbg !1353
  %65 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %64), !dbg !1354
  br label %71, !dbg !1354

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 0, !dbg !1355
  %68 = load i32, ptr %67, align 8, !dbg !1355, !tbaa !1347
  %69 = sext i32 %68 to i64, !dbg !1356
  %70 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %69), !dbg !1357
  br label %71

71:                                               ; preds = %66, %60
  br label %72

72:                                               ; preds = %71, %50
  br label %319, !dbg !1358

73:                                               ; preds = %7
  %74 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 0, !dbg !1359
  %75 = load i32, ptr %74, align 8, !dbg !1359, !tbaa !1347
  %76 = sext i32 %75 to i64, !dbg !1360
  call void @out_uint_x(ptr noundef %0, i64 noundef %1, i64 noundef %76), !dbg !1361
  br label %319, !dbg !1362

77:                                               ; preds = %7
  %78 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 3, !dbg !1363
  %79 = load i64, ptr %78, align 8, !dbg !1363, !tbaa !1364
  %80 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %79), !dbg !1365
  br label %319, !dbg !1366

81:                                               ; preds = %7
  %82 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 1, !dbg !1367
  %83 = load i16, ptr %82, align 4, !dbg !1367, !tbaa !1240
  %84 = zext i16 %83 to i32, !dbg !1368
  %85 = and i32 %84, 4095, !dbg !1369
  %86 = sext i32 %85 to i64, !dbg !1368
  call void @out_uint_o(ptr noundef %0, i64 noundef %1, i64 noundef %86), !dbg !1370
  br label %319, !dbg !1371

87:                                               ; preds = %7
  %88 = call ptr @human_access(ptr noundef %19), !dbg !1372
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %88), !dbg !1373
  br label %319, !dbg !1374

89:                                               ; preds = %7
  %90 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 1, !dbg !1375
  %91 = load i16, ptr %90, align 4, !dbg !1375, !tbaa !1240
  %92 = zext i16 %91 to i64, !dbg !1376
  call void @out_uint_x(ptr noundef %0, i64 noundef %1, i64 noundef %92), !dbg !1377
  br label %319, !dbg !1378

93:                                               ; preds = %7
  %94 = call ptr @file_type(ptr noundef %19) #15, !dbg !1379
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %94), !dbg !1380
  br label %319, !dbg !1381

95:                                               ; preds = %7
  %96 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 2, !dbg !1382
  %97 = load i16, ptr %96, align 2, !dbg !1382, !tbaa !1383
  %98 = zext i16 %97 to i64, !dbg !1384
  %99 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %98), !dbg !1385
  br label %319, !dbg !1386

100:                                              ; preds = %7
  %101 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 4, !dbg !1387
  %102 = load i32, ptr %101, align 8, !dbg !1387, !tbaa !1388
  %103 = zext i32 %102 to i64, !dbg !1389
  %104 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %103), !dbg !1390
  br label %319, !dbg !1391

105:                                              ; preds = %7
  %106 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 4, !dbg !1392
  %107 = load i32, ptr %106, align 8, !dbg !1392, !tbaa !1388
  %108 = call ptr @getpwuid(i32 noundef %107), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %108, metadata !1281, metadata !DIExpression()), !dbg !1310
  %109 = icmp ne ptr %108, null, !dbg !1394
  br i1 %109, label %110, label %113, !dbg !1394

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.passwd, ptr %108, i32 0, i32 0, !dbg !1395
  %112 = load ptr, ptr %111, align 8, !dbg !1395, !tbaa !1396
  br label %114, !dbg !1394

113:                                              ; preds = %105
  br label %114, !dbg !1394

114:                                              ; preds = %113, %110
  %115 = phi ptr [ %112, %110 ], [ @.str.73, %113 ], !dbg !1394
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %115), !dbg !1398
  br label %319, !dbg !1399

116:                                              ; preds = %7
  %117 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 5, !dbg !1400
  %118 = load i32, ptr %117, align 4, !dbg !1400, !tbaa !1401
  %119 = zext i32 %118 to i64, !dbg !1402
  %120 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %119), !dbg !1403
  br label %319, !dbg !1404

121:                                              ; preds = %7
  %122 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 5, !dbg !1405
  %123 = load i32, ptr %122, align 4, !dbg !1405, !tbaa !1401
  %124 = call ptr @getgrgid(i32 noundef %123), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %124, metadata !1296, metadata !DIExpression()), !dbg !1310
  %125 = icmp ne ptr %124, null, !dbg !1407
  br i1 %125, label %126, label %129, !dbg !1407

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.group, ptr %124, i32 0, i32 0, !dbg !1408
  %128 = load ptr, ptr %127, align 8, !dbg !1408, !tbaa !1409
  br label %130, !dbg !1407

129:                                              ; preds = %121
  br label %130, !dbg !1407

130:                                              ; preds = %129, %126
  %131 = phi ptr [ %128, %126 ], [ @.str.73, %129 ], !dbg !1407
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %131), !dbg !1411
  br label %319, !dbg !1412

132:                                              ; preds = %7
  %133 = call zeroext i1 @out_mount_point(ptr noundef %5, ptr noundef %0, i64 noundef %1, ptr noundef %19), !dbg !1413
  %134 = zext i1 %133 to i32, !dbg !1413
  %135 = trunc i8 0 to i1, !dbg !1414
  %136 = zext i1 %135 to i32, !dbg !1414
  %137 = or i32 %136, %134, !dbg !1414
  %138 = icmp ne i32 %137, 0, !dbg !1414
  %139 = zext i1 %138 to i8, !dbg !1414
  call void @llvm.dbg.value(metadata i8 %139, metadata !1305, metadata !DIExpression()), !dbg !1310
  br label %319, !dbg !1415

140:                                              ; preds = %7
  %141 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 11, !dbg !1416
  %142 = load i64, ptr %141, align 8, !dbg !1416, !tbaa !1324
  %143 = call i64 @unsigned_file_size(i64 noundef %142), !dbg !1417
  %144 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %143), !dbg !1418
  br label %319, !dbg !1419

145:                                              ; preds = %7
  %146 = sext i8 %2 to i32, !dbg !1420
  %147 = icmp eq i32 %146, 72, !dbg !1422
  br i1 %147, label %148, label %155, !dbg !1423

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 6, !dbg !1424
  %150 = load i32, ptr %149, align 8, !dbg !1424, !tbaa !1425
  %151 = lshr i32 %150, 24, !dbg !1424
  %152 = and i32 %151, 255, !dbg !1424
  %153 = sext i32 %152 to i64, !dbg !1424
  %154 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %153), !dbg !1426
  br label %170, !dbg !1426

155:                                              ; preds = %145
  %156 = sext i8 %2 to i32, !dbg !1427
  %157 = icmp eq i32 %156, 76, !dbg !1429
  br i1 %157, label %158, label %164, !dbg !1430

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 6, !dbg !1431
  %160 = load i32, ptr %159, align 8, !dbg !1431, !tbaa !1425
  %161 = and i32 %160, 16777215, !dbg !1431
  %162 = sext i32 %161 to i64, !dbg !1431
  %163 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %162), !dbg !1432
  br label %169, !dbg !1432

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 6, !dbg !1433
  %166 = load i32, ptr %165, align 8, !dbg !1433, !tbaa !1425
  %167 = sext i32 %166 to i64, !dbg !1434
  %168 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %167), !dbg !1435
  br label %169

169:                                              ; preds = %164, %158
  br label %170

170:                                              ; preds = %169, %148
  br label %319, !dbg !1436

171:                                              ; preds = %7
  %172 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 6, !dbg !1437
  %173 = load i32, ptr %172, align 8, !dbg !1437, !tbaa !1425
  %174 = sext i32 %173 to i64, !dbg !1438
  call void @out_uint_x(ptr noundef %0, i64 noundef %1, i64 noundef %174), !dbg !1439
  br label %319, !dbg !1440

175:                                              ; preds = %7
  %176 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 6, !dbg !1441
  %177 = load i32, ptr %176, align 8, !dbg !1441, !tbaa !1425
  %178 = lshr i32 %177, 24, !dbg !1441
  %179 = and i32 %178, 255, !dbg !1441
  %180 = sext i32 %179 to i64, !dbg !1441
  call void @out_uint_x(ptr noundef %0, i64 noundef %1, i64 noundef %180), !dbg !1442
  br label %319, !dbg !1443

181:                                              ; preds = %7
  %182 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 6, !dbg !1444
  %183 = load i32, ptr %182, align 8, !dbg !1444, !tbaa !1425
  %184 = and i32 %183, 16777215, !dbg !1444
  %185 = sext i32 %184 to i64, !dbg !1444
  call void @out_uint_x(ptr noundef %0, i64 noundef %1, i64 noundef %185), !dbg !1445
  br label %319, !dbg !1446

186:                                              ; preds = %7
  %187 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef 512), !dbg !1447
  br label %319, !dbg !1448

188:                                              ; preds = %7
  %189 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 12, !dbg !1449
  %190 = load i64, ptr %189, align 8, !dbg !1449, !tbaa !1450
  %191 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %190), !dbg !1451
  br label %319, !dbg !1452

192:                                              ; preds = %7
  %193 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 13, !dbg !1453
  %194 = load i32, ptr %193, align 8, !dbg !1453, !tbaa !1454
  %195 = icmp slt i32 0, %194, !dbg !1453
  br i1 %195, label %196, label %204, !dbg !1453

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 13, !dbg !1453
  %198 = load i32, ptr %197, align 8, !dbg !1453, !tbaa !1454
  %199 = sext i32 %198 to i64, !dbg !1453
  %200 = icmp ule i64 %199, 2305843009213693952, !dbg !1453
  br i1 %200, label %201, label %204, !dbg !1453

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.stat, ptr %19, i32 0, i32 13, !dbg !1453
  %203 = load i32, ptr %202, align 8, !dbg !1453, !tbaa !1454
  br label %205, !dbg !1453

204:                                              ; preds = %196, %192
  br label %205, !dbg !1453

205:                                              ; preds = %204, %201
  %206 = phi i32 [ %203, %201 ], [ 512, %204 ], !dbg !1453
  %207 = sext i32 %206 to i64, !dbg !1453
  %208 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %207), !dbg !1455
  br label %319, !dbg !1456

209:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr %9) #14, !dbg !1457
  %210 = call { i64, i64 } @get_birthtime(i32 noundef %4, ptr noundef %5, ptr noundef %19), !dbg !1457
  %211 = getelementptr inbounds { i64, i64 }, ptr %9, i32 0, i32 0, !dbg !1457
  %212 = extractvalue { i64, i64 } %210, 0, !dbg !1457
  store i64 %212, ptr %211, align 8, !dbg !1457
  %213 = getelementptr inbounds { i64, i64 }, ptr %9, i32 0, i32 1, !dbg !1457
  %214 = extractvalue { i64, i64 } %210, 1, !dbg !1457
  store i64 %214, ptr %213, align 8, !dbg !1457
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 16, i1 false), !dbg !1457, !tbaa.struct !1212
  call void @llvm.lifetime.end.p0(i64 16, ptr %9) #14, !dbg !1457
  %215 = getelementptr inbounds %struct.timespec, ptr %8, i32 0, i32 1, !dbg !1459
  %216 = load i64, ptr %215, align 8, !dbg !1459, !tbaa !1210
  %217 = icmp slt i64 %216, 0, !dbg !1461
  br i1 %217, label %218, label %219, !dbg !1462

218:                                              ; preds = %209
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef @.str.66), !dbg !1463
  br label %225, !dbg !1463

219:                                              ; preds = %209
  %220 = getelementptr inbounds { i64, i64 }, ptr %8, i32 0, i32 0, !dbg !1464
  %221 = load i64, ptr %220, align 8, !dbg !1464
  %222 = getelementptr inbounds { i64, i64 }, ptr %8, i32 0, i32 1, !dbg !1464
  %223 = load i64, ptr %222, align 8, !dbg !1464
  %224 = call ptr @human_time(i64 %221, i64 %223), !dbg !1464
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %224), !dbg !1465
  br label %225

225:                                              ; preds = %219, %218
  br label %319, !dbg !1466

226:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr %10) #14, !dbg !1467
  %227 = call { i64, i64 } @get_birthtime(i32 noundef %4, ptr noundef %5, ptr noundef %19), !dbg !1467
  %228 = getelementptr inbounds { i64, i64 }, ptr %10, i32 0, i32 0, !dbg !1467
  %229 = extractvalue { i64, i64 } %227, 0, !dbg !1467
  store i64 %229, ptr %228, align 8, !dbg !1467
  %230 = getelementptr inbounds { i64, i64 }, ptr %10, i32 0, i32 1, !dbg !1467
  %231 = extractvalue { i64, i64 } %227, 1, !dbg !1467
  store i64 %231, ptr %230, align 8, !dbg !1467
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %10, i64 16, i1 false), !dbg !1467, !tbaa.struct !1212
  call void @llvm.lifetime.end.p0(i64 16, ptr %10) #14, !dbg !1467
  %232 = getelementptr inbounds { i64, i64 }, ptr %8, i32 0, i32 0, !dbg !1469
  %233 = load i64, ptr %232, align 8, !dbg !1469
  %234 = getelementptr inbounds { i64, i64 }, ptr %8, i32 0, i32 1, !dbg !1469
  %235 = load i64, ptr %234, align 8, !dbg !1469
  %236 = call { i64, i64 } @neg_to_zero(i64 %233, i64 %235), !dbg !1469
  %237 = getelementptr inbounds { i64, i64 }, ptr %11, i32 0, i32 0, !dbg !1469
  %238 = extractvalue { i64, i64 } %236, 0, !dbg !1469
  store i64 %238, ptr %237, align 8, !dbg !1469
  %239 = getelementptr inbounds { i64, i64 }, ptr %11, i32 0, i32 1, !dbg !1469
  %240 = extractvalue { i64, i64 } %236, 1, !dbg !1469
  store i64 %240, ptr %239, align 8, !dbg !1469
  %241 = getelementptr inbounds { i64, i64 }, ptr %11, i32 0, i32 0, !dbg !1470
  %242 = load i64, ptr %241, align 8, !dbg !1470
  %243 = getelementptr inbounds { i64, i64 }, ptr %11, i32 0, i32 1, !dbg !1470
  %244 = load i64, ptr %243, align 8, !dbg !1470
  call void @out_epoch_sec(ptr noundef %0, i64 noundef %1, i64 %242, i64 %244), !dbg !1470
  br label %319, !dbg !1471

245:                                              ; preds = %7
  %246 = call { i64, i64 } @get_stat_atime(ptr noundef %19) #15, !dbg !1472
  %247 = getelementptr inbounds { i64, i64 }, ptr %12, i32 0, i32 0, !dbg !1472
  %248 = extractvalue { i64, i64 } %246, 0, !dbg !1472
  store i64 %248, ptr %247, align 8, !dbg !1472
  %249 = getelementptr inbounds { i64, i64 }, ptr %12, i32 0, i32 1, !dbg !1472
  %250 = extractvalue { i64, i64 } %246, 1, !dbg !1472
  store i64 %250, ptr %249, align 8, !dbg !1472
  %251 = getelementptr inbounds { i64, i64 }, ptr %12, i32 0, i32 0, !dbg !1473
  %252 = load i64, ptr %251, align 8, !dbg !1473
  %253 = getelementptr inbounds { i64, i64 }, ptr %12, i32 0, i32 1, !dbg !1473
  %254 = load i64, ptr %253, align 8, !dbg !1473
  %255 = call ptr @human_time(i64 %252, i64 %254), !dbg !1473
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %255), !dbg !1474
  br label %319, !dbg !1475

256:                                              ; preds = %7
  %257 = call { i64, i64 } @get_stat_atime(ptr noundef %19) #15, !dbg !1476
  %258 = getelementptr inbounds { i64, i64 }, ptr %13, i32 0, i32 0, !dbg !1476
  %259 = extractvalue { i64, i64 } %257, 0, !dbg !1476
  store i64 %259, ptr %258, align 8, !dbg !1476
  %260 = getelementptr inbounds { i64, i64 }, ptr %13, i32 0, i32 1, !dbg !1476
  %261 = extractvalue { i64, i64 } %257, 1, !dbg !1476
  store i64 %261, ptr %260, align 8, !dbg !1476
  %262 = getelementptr inbounds { i64, i64 }, ptr %13, i32 0, i32 0, !dbg !1477
  %263 = load i64, ptr %262, align 8, !dbg !1477
  %264 = getelementptr inbounds { i64, i64 }, ptr %13, i32 0, i32 1, !dbg !1477
  %265 = load i64, ptr %264, align 8, !dbg !1477
  call void @out_epoch_sec(ptr noundef %0, i64 noundef %1, i64 %263, i64 %265), !dbg !1477
  br label %319, !dbg !1478

266:                                              ; preds = %7
  %267 = call { i64, i64 } @get_stat_mtime(ptr noundef %19) #15, !dbg !1479
  %268 = getelementptr inbounds { i64, i64 }, ptr %14, i32 0, i32 0, !dbg !1479
  %269 = extractvalue { i64, i64 } %267, 0, !dbg !1479
  store i64 %269, ptr %268, align 8, !dbg !1479
  %270 = getelementptr inbounds { i64, i64 }, ptr %14, i32 0, i32 1, !dbg !1479
  %271 = extractvalue { i64, i64 } %267, 1, !dbg !1479
  store i64 %271, ptr %270, align 8, !dbg !1479
  %272 = getelementptr inbounds { i64, i64 }, ptr %14, i32 0, i32 0, !dbg !1480
  %273 = load i64, ptr %272, align 8, !dbg !1480
  %274 = getelementptr inbounds { i64, i64 }, ptr %14, i32 0, i32 1, !dbg !1480
  %275 = load i64, ptr %274, align 8, !dbg !1480
  %276 = call ptr @human_time(i64 %273, i64 %275), !dbg !1480
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %276), !dbg !1481
  br label %319, !dbg !1482

277:                                              ; preds = %7
  %278 = call { i64, i64 } @get_stat_mtime(ptr noundef %19) #15, !dbg !1483
  %279 = getelementptr inbounds { i64, i64 }, ptr %15, i32 0, i32 0, !dbg !1483
  %280 = extractvalue { i64, i64 } %278, 0, !dbg !1483
  store i64 %280, ptr %279, align 8, !dbg !1483
  %281 = getelementptr inbounds { i64, i64 }, ptr %15, i32 0, i32 1, !dbg !1483
  %282 = extractvalue { i64, i64 } %278, 1, !dbg !1483
  store i64 %282, ptr %281, align 8, !dbg !1483
  %283 = getelementptr inbounds { i64, i64 }, ptr %15, i32 0, i32 0, !dbg !1484
  %284 = load i64, ptr %283, align 8, !dbg !1484
  %285 = getelementptr inbounds { i64, i64 }, ptr %15, i32 0, i32 1, !dbg !1484
  %286 = load i64, ptr %285, align 8, !dbg !1484
  call void @out_epoch_sec(ptr noundef %0, i64 noundef %1, i64 %284, i64 %286), !dbg !1484
  br label %319, !dbg !1485

287:                                              ; preds = %7
  %288 = call { i64, i64 } @get_stat_ctime(ptr noundef %19) #15, !dbg !1486
  %289 = getelementptr inbounds { i64, i64 }, ptr %16, i32 0, i32 0, !dbg !1486
  %290 = extractvalue { i64, i64 } %288, 0, !dbg !1486
  store i64 %290, ptr %289, align 8, !dbg !1486
  %291 = getelementptr inbounds { i64, i64 }, ptr %16, i32 0, i32 1, !dbg !1486
  %292 = extractvalue { i64, i64 } %288, 1, !dbg !1486
  store i64 %292, ptr %291, align 8, !dbg !1486
  %293 = getelementptr inbounds { i64, i64 }, ptr %16, i32 0, i32 0, !dbg !1487
  %294 = load i64, ptr %293, align 8, !dbg !1487
  %295 = getelementptr inbounds { i64, i64 }, ptr %16, i32 0, i32 1, !dbg !1487
  %296 = load i64, ptr %295, align 8, !dbg !1487
  %297 = call ptr @human_time(i64 %294, i64 %296), !dbg !1487
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %297), !dbg !1488
  br label %319, !dbg !1489

298:                                              ; preds = %7
  %299 = call { i64, i64 } @get_stat_ctime(ptr noundef %19) #15, !dbg !1490
  %300 = getelementptr inbounds { i64, i64 }, ptr %17, i32 0, i32 0, !dbg !1490
  %301 = extractvalue { i64, i64 } %299, 0, !dbg !1490
  store i64 %301, ptr %300, align 8, !dbg !1490
  %302 = getelementptr inbounds { i64, i64 }, ptr %17, i32 0, i32 1, !dbg !1490
  %303 = extractvalue { i64, i64 } %299, 1, !dbg !1490
  store i64 %303, ptr %302, align 8, !dbg !1490
  %304 = getelementptr inbounds { i64, i64 }, ptr %17, i32 0, i32 0, !dbg !1491
  %305 = load i64, ptr %304, align 8, !dbg !1491
  %306 = getelementptr inbounds { i64, i64 }, ptr %17, i32 0, i32 1, !dbg !1491
  %307 = load i64, ptr %306, align 8, !dbg !1491
  call void @out_epoch_sec(ptr noundef %0, i64 noundef %1, i64 %305, i64 %307), !dbg !1491
  br label %319, !dbg !1492

308:                                              ; preds = %7
  %309 = call zeroext i1 @out_file_context(ptr noundef %0, i64 noundef %1, ptr noundef %5), !dbg !1493
  %310 = zext i1 %309 to i32, !dbg !1493
  %311 = trunc i8 0 to i1, !dbg !1494
  %312 = zext i1 %311 to i32, !dbg !1494
  %313 = or i32 %312, %310, !dbg !1494
  %314 = icmp ne i32 %313, 0, !dbg !1494
  %315 = zext i1 %314 to i8, !dbg !1494
  call void @llvm.dbg.value(metadata i8 %315, metadata !1305, metadata !DIExpression()), !dbg !1310
  br label %319, !dbg !1495

316:                                              ; preds = %7
  %317 = load ptr, ptr @__stdoutp, align 8, !dbg !1496, !tbaa !717
  %318 = call i32 @fputc(i32 noundef 63, ptr noundef %317), !dbg !1497
  br label %319, !dbg !1498

319:                                              ; preds = %316, %308, %298, %287, %277, %266, %256, %245, %226, %225, %205, %188, %186, %181, %175, %171, %170, %140, %132, %130, %116, %114, %100, %95, %93, %89, %87, %81, %77, %73, %72, %46, %22
  %.02 = phi i8 [ 0, %316 ], [ %315, %308 ], [ 0, %298 ], [ 0, %287 ], [ 0, %277 ], [ 0, %266 ], [ 0, %256 ], [ 0, %245 ], [ 0, %226 ], [ 0, %225 ], [ 0, %205 ], [ 0, %188 ], [ 0, %186 ], [ 0, %181 ], [ 0, %175 ], [ 0, %171 ], [ 0, %170 ], [ 0, %140 ], [ %139, %132 ], [ 0, %130 ], [ 0, %116 ], [ 0, %114 ], [ 0, %100 ], [ 0, %95 ], [ 0, %93 ], [ 0, %89 ], [ 0, %87 ], [ 0, %81 ], [ 0, %77 ], [ 0, %73 ], [ 0, %72 ], [ 0, %46 ], [ 0, %22 ], !dbg !1310
  call void @llvm.dbg.value(metadata i8 %.02, metadata !1305, metadata !DIExpression()), !dbg !1310
  %320 = trunc i8 %.02 to i1, !dbg !1499
  br label %321, !dbg !1500

321:                                              ; preds = %319, %44
  %.1 = phi i1 [ %320, %319 ], [ true, %44 ], !dbg !1310
  call void @llvm.lifetime.end.p0(i64 16, ptr %8) #14, !dbg !1501
  ret i1 %.1, !dbg !1501
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @print_it(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7 !dbg !116 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !132, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %1, metadata !133, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr %2, metadata !134, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr %3, metadata !135, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr %4, metadata !136, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8 0, metadata !137, metadata !DIExpression()), !dbg !1502
  %6 = call i64 @strlen(ptr noundef %0), !dbg !1503
  %7 = add i64 %6, 2, !dbg !1504
  %8 = add i64 %7, 1, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %8, metadata !138, metadata !DIExpression()), !dbg !1502
  %9 = call noalias nonnull ptr @xmalloc(i64 noundef %8) #16, !dbg !1506
  call void @llvm.dbg.value(metadata ptr %9, metadata !139, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr %0, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %10, !dbg !1507

10:                                               ; preds = %222, %5
  %.08 = phi ptr [ %0, %5 ], [ %223, %222 ], !dbg !1508
  %.06 = phi i8 [ 0, %5 ], [ %.2, %222 ], !dbg !1509
  call void @llvm.dbg.value(metadata i8 %.06, metadata !137, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr %.08, metadata !140, metadata !DIExpression()), !dbg !1502
  %11 = load i8, ptr %.08, align 1, !dbg !1510, !tbaa !948
  %12 = icmp ne i8 %11, 0, !dbg !1511
  br i1 %12, label %13, label %224, !dbg !1511

13:                                               ; preds = %10
  %14 = load i8, ptr %.08, align 1, !dbg !1512, !tbaa !948
  %15 = sext i8 %14 to i32, !dbg !1512
  switch i32 %15, label %216 [
    i32 37, label %16
    i32 92, label %57
  ], !dbg !1513

16:                                               ; preds = %13
  %17 = call i64 @format_code_offset(ptr noundef %.08) #15, !dbg !1514
  call void @llvm.dbg.value(metadata i64 %17, metadata !141, metadata !DIExpression()), !dbg !1515
  %18 = getelementptr inbounds i8, ptr %.08, i64 %17, !dbg !1516
  %19 = load i8, ptr %18, align 1, !dbg !1517, !tbaa !948
  call void @llvm.dbg.value(metadata i8 %19, metadata !147, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 0, metadata !148, metadata !DIExpression()), !dbg !1515
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %.08, i64 %17, i1 false), !dbg !1518
  %20 = getelementptr inbounds i8, ptr %.08, i64 %17, !dbg !1519
  call void @llvm.dbg.value(metadata ptr %20, metadata !140, metadata !DIExpression()), !dbg !1502
  %21 = sext i8 %19 to i32, !dbg !1520
  switch i32 %21, label %48 [
    i32 0, label %22
    i32 37, label %24
    i32 72, label %34
    i32 76, label %34
  ], !dbg !1521

22:                                               ; preds = %16
  %23 = getelementptr inbounds i8, ptr %20, i32 -1, !dbg !1522
  call void @llvm.dbg.value(metadata ptr %23, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %24, !dbg !1522

24:                                               ; preds = %22, %16
  %.19 = phi ptr [ %20, %16 ], [ %23, %22 ], !dbg !1515
  call void @llvm.dbg.value(metadata ptr %.19, metadata !140, metadata !DIExpression()), !dbg !1502
  %25 = icmp ult i64 1, %17, !dbg !1524
  br i1 %25, label %26, label %31, !dbg !1526

26:                                               ; preds = %24
  %27 = getelementptr inbounds i8, ptr %9, i64 %17, !dbg !1527
  store i8 %19, ptr %27, align 1, !dbg !1529, !tbaa !948
  %28 = add i64 %17, 1, !dbg !1530
  %29 = getelementptr inbounds i8, ptr %9, i64 %28, !dbg !1531
  store i8 0, ptr %29, align 1, !dbg !1532, !tbaa !948
  %30 = call ptr @quote(ptr noundef %9), !dbg !1533
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.69, ptr noundef %30), !dbg !1533
  unreachable, !dbg !1533

31:                                               ; preds = %24
  %32 = load ptr, ptr @__stdoutp, align 8, !dbg !1534, !tbaa !717
  %33 = call i32 @putc_unlocked(i32 noundef 37, ptr noundef %32), !dbg !1534
  br label %56, !dbg !1535

34:                                               ; preds = %16, %16
  call void @llvm.dbg.value(metadata i8 %19, metadata !148, metadata !DIExpression()), !dbg !1515
  %35 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1536
  %36 = load i8, ptr %35, align 1, !dbg !1537, !tbaa !948
  call void @llvm.dbg.value(metadata i8 %36, metadata !147, metadata !DIExpression()), !dbg !1515
  %37 = icmp eq ptr %3, @print_stat, !dbg !1538
  br i1 %37, label %38, label %46, !dbg !1540

38:                                               ; preds = %34
  %39 = sext i8 %36 to i32, !dbg !1541
  %40 = icmp eq i32 %39, 100, !dbg !1542
  br i1 %40, label %44, label %41, !dbg !1543

41:                                               ; preds = %38
  %42 = sext i8 %36 to i32, !dbg !1544
  %43 = icmp eq i32 %42, 114, !dbg !1545
  br i1 %43, label %44, label %46, !dbg !1546

44:                                               ; preds = %41, %38
  %45 = getelementptr inbounds i8, ptr %20, i32 1, !dbg !1547
  call void @llvm.dbg.value(metadata ptr %45, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %47, !dbg !1549

46:                                               ; preds = %41, %34
  call void @llvm.dbg.value(metadata i8 %19, metadata !147, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 0, metadata !148, metadata !DIExpression()), !dbg !1515
  br label %47

47:                                               ; preds = %46, %44
  %.210 = phi ptr [ %45, %44 ], [ %20, %46 ], !dbg !1515
  %.04 = phi i8 [ %36, %44 ], [ %19, %46 ], !dbg !1550
  %.03 = phi i8 [ %19, %44 ], [ 0, %46 ], !dbg !1550
  call void @llvm.dbg.value(metadata i8 %.03, metadata !148, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %.04, metadata !147, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %.210, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %48, !dbg !1551

48:                                               ; preds = %47, %16
  %.3 = phi ptr [ %20, %16 ], [ %.210, %47 ], !dbg !1515
  %.15 = phi i8 [ %19, %16 ], [ %.04, %47 ], !dbg !1515
  %.1 = phi i8 [ 0, %16 ], [ %.03, %47 ], !dbg !1515
  call void @llvm.dbg.value(metadata i8 %.1, metadata !148, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %.15, metadata !147, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %.3, metadata !140, metadata !DIExpression()), !dbg !1502
  %49 = call zeroext i1 %3(ptr noundef %9, i64 noundef %17, i8 noundef signext %.1, i8 noundef signext %.15, i32 noundef %1, ptr noundef %2, ptr noundef %4), !dbg !1552
  %50 = zext i1 %49 to i32, !dbg !1552
  %51 = trunc i8 %.06 to i1, !dbg !1553
  %52 = zext i1 %51 to i32, !dbg !1553
  %53 = or i32 %52, %50, !dbg !1553
  %54 = icmp ne i32 %53, 0, !dbg !1553
  %55 = zext i1 %54 to i8, !dbg !1553
  call void @llvm.dbg.value(metadata i8 %55, metadata !137, metadata !DIExpression()), !dbg !1502
  br label %56, !dbg !1554

56:                                               ; preds = %48, %31
  %.4 = phi ptr [ %.3, %48 ], [ %.19, %31 ], !dbg !1519
  %.17 = phi i8 [ %55, %48 ], [ %.06, %31 ], !dbg !1502
  call void @llvm.dbg.value(metadata i8 %.17, metadata !137, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr %.4, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %221

57:                                               ; preds = %13
  %58 = load i8, ptr @interpret_backslash_escapes, align 1, !dbg !1555, !tbaa !968, !range !1228, !noundef !811
  %59 = trunc i8 %58 to i1, !dbg !1555
  br i1 %59, label %63, label %60, !dbg !1557

60:                                               ; preds = %57
  %61 = load ptr, ptr @__stdoutp, align 8, !dbg !1558, !tbaa !717
  %62 = call i32 @putc_unlocked(i32 noundef 92, ptr noundef %61), !dbg !1558
  br label %221, !dbg !1560

63:                                               ; preds = %57
  %64 = getelementptr inbounds i8, ptr %.08, i32 1, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %64, metadata !140, metadata !DIExpression()), !dbg !1502
  %65 = load i8, ptr %64, align 1, !dbg !1562, !tbaa !948
  %66 = sext i8 %65 to i32, !dbg !1562
  %67 = icmp sle i32 48, %66, !dbg !1562
  br i1 %67, label %68, label %104, !dbg !1562

68:                                               ; preds = %63
  %69 = load i8, ptr %64, align 1, !dbg !1562, !tbaa !948
  %70 = sext i8 %69 to i32, !dbg !1562
  %71 = icmp sle i32 %70, 55, !dbg !1562
  br i1 %71, label %72, label %104, !dbg !1563

72:                                               ; preds = %68
  %73 = load i8, ptr %64, align 1, !dbg !1564, !tbaa !948
  %74 = sext i8 %73 to i32, !dbg !1564
  %75 = sub nsw i32 %74, 48, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %75, metadata !149, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 1, metadata !152, metadata !DIExpression()), !dbg !1565
  %76 = getelementptr inbounds i8, ptr %64, i32 1, !dbg !1566
  call void @llvm.dbg.value(metadata ptr %76, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %77, !dbg !1566

77:                                               ; preds = %97, %72
  %.5 = phi ptr [ %76, %72 ], [ %99, %97 ], !dbg !1568
  %.02 = phi i32 [ %75, %72 ], [ %96, %97 ], !dbg !1565
  %.01 = phi i32 [ 1, %72 ], [ %98, %97 ], !dbg !1565
  call void @llvm.dbg.value(metadata i32 %.01, metadata !152, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 %.02, metadata !149, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata ptr %.5, metadata !140, metadata !DIExpression()), !dbg !1502
  %78 = icmp slt i32 %.01, 3, !dbg !1569
  br i1 %78, label %79, label %89, !dbg !1571

79:                                               ; preds = %77
  %80 = load i8, ptr %.5, align 1, !dbg !1572, !tbaa !948
  %81 = sext i8 %80 to i32, !dbg !1572
  %82 = icmp sle i32 48, %81, !dbg !1572
  br i1 %82, label %83, label %87, !dbg !1572

83:                                               ; preds = %79
  %84 = load i8, ptr %.5, align 1, !dbg !1572, !tbaa !948
  %85 = sext i8 %84 to i32, !dbg !1572
  %86 = icmp sle i32 %85, 55, !dbg !1572
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i1 [ false, %79 ], [ %86, %83 ], !dbg !1573
  br label %89

89:                                               ; preds = %87, %77
  %90 = phi i1 [ false, %77 ], [ %88, %87 ], !dbg !1573
  br i1 %90, label %91, label %100, !dbg !1574

91:                                               ; preds = %89
  %92 = mul nsw i32 %.02, 8, !dbg !1575
  %93 = load i8, ptr %.5, align 1, !dbg !1577, !tbaa !948
  %94 = sext i8 %93 to i32, !dbg !1577
  %95 = sub nsw i32 %94, 48, !dbg !1577
  %96 = add nsw i32 %92, %95, !dbg !1578
  call void @llvm.dbg.value(metadata i32 %96, metadata !149, metadata !DIExpression()), !dbg !1565
  br label %97, !dbg !1579

97:                                               ; preds = %91
  %98 = add nsw i32 %.01, 1, !dbg !1580
  call void @llvm.dbg.value(metadata i32 %98, metadata !152, metadata !DIExpression()), !dbg !1565
  %99 = getelementptr inbounds i8, ptr %.5, i32 1, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %99, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %77, !dbg !1582, !llvm.loop !1583

100:                                              ; preds = %89
  %101 = load ptr, ptr @__stdoutp, align 8, !dbg !1585, !tbaa !717
  %102 = call i32 @putc_unlocked(i32 noundef %.02, ptr noundef %101), !dbg !1585
  %103 = getelementptr inbounds i8, ptr %.5, i32 -1, !dbg !1586
  call void @llvm.dbg.value(metadata ptr %103, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %215, !dbg !1587

104:                                              ; preds = %68, %63
  %105 = load i8, ptr %64, align 1, !dbg !1588, !tbaa !948
  %106 = sext i8 %105 to i32, !dbg !1588
  %107 = icmp eq i32 %106, 120, !dbg !1589
  br i1 %107, label %108, label %203, !dbg !1590

108:                                              ; preds = %104
  %109 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1591
  %110 = load i8, ptr %109, align 1, !dbg !1591, !tbaa !948
  %111 = call zeroext i8 @to_uchar(i8 noundef signext %110), !dbg !1592
  %112 = zext i8 %111 to i32, !dbg !1592
  %113 = call i32 @isxdigit(i32 noundef %112) #15, !dbg !1593
  %114 = icmp ne i32 %113, 0, !dbg !1593
  br i1 %114, label %115, label %203, !dbg !1594

115:                                              ; preds = %108
  %116 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1595
  %117 = load i8, ptr %116, align 1, !dbg !1595, !tbaa !948
  %118 = sext i8 %117 to i32, !dbg !1595
  %119 = icmp sge i32 %118, 97, !dbg !1595
  br i1 %119, label %120, label %131, !dbg !1595

120:                                              ; preds = %115
  %121 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1595
  %122 = load i8, ptr %121, align 1, !dbg !1595, !tbaa !948
  %123 = sext i8 %122 to i32, !dbg !1595
  %124 = icmp sle i32 %123, 102, !dbg !1595
  br i1 %124, label %125, label %131, !dbg !1595

125:                                              ; preds = %120
  %126 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1595
  %127 = load i8, ptr %126, align 1, !dbg !1595, !tbaa !948
  %128 = sext i8 %127 to i32, !dbg !1595
  %129 = sub nsw i32 %128, 97, !dbg !1595
  %130 = add nsw i32 %129, 10, !dbg !1595
  br label %154, !dbg !1595

131:                                              ; preds = %120, %115
  %132 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1595
  %133 = load i8, ptr %132, align 1, !dbg !1595, !tbaa !948
  %134 = sext i8 %133 to i32, !dbg !1595
  %135 = icmp sge i32 %134, 65, !dbg !1595
  br i1 %135, label %136, label %147, !dbg !1595

136:                                              ; preds = %131
  %137 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1595
  %138 = load i8, ptr %137, align 1, !dbg !1595, !tbaa !948
  %139 = sext i8 %138 to i32, !dbg !1595
  %140 = icmp sle i32 %139, 70, !dbg !1595
  br i1 %140, label %141, label %147, !dbg !1595

141:                                              ; preds = %136
  %142 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1595
  %143 = load i8, ptr %142, align 1, !dbg !1595, !tbaa !948
  %144 = sext i8 %143 to i32, !dbg !1595
  %145 = sub nsw i32 %144, 65, !dbg !1595
  %146 = add nsw i32 %145, 10, !dbg !1595
  br label %152, !dbg !1595

147:                                              ; preds = %136, %131
  %148 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1595
  %149 = load i8, ptr %148, align 1, !dbg !1595, !tbaa !948
  %150 = sext i8 %149 to i32, !dbg !1595
  %151 = sub nsw i32 %150, 48, !dbg !1595
  br label %152, !dbg !1595

152:                                              ; preds = %147, %141
  %153 = phi i32 [ %146, %141 ], [ %151, %147 ], !dbg !1595
  br label %154, !dbg !1595

154:                                              ; preds = %152, %125
  %155 = phi i32 [ %130, %125 ], [ %153, %152 ], !dbg !1595
  call void @llvm.dbg.value(metadata i32 %155, metadata !153, metadata !DIExpression()), !dbg !1596
  %156 = getelementptr inbounds i8, ptr %64, i32 1, !dbg !1597
  call void @llvm.dbg.value(metadata ptr %156, metadata !140, metadata !DIExpression()), !dbg !1502
  %157 = getelementptr inbounds i8, ptr %156, i64 1, !dbg !1598
  %158 = load i8, ptr %157, align 1, !dbg !1598, !tbaa !948
  %159 = call zeroext i8 @to_uchar(i8 noundef signext %158), !dbg !1600
  %160 = zext i8 %159 to i32, !dbg !1600
  %161 = call i32 @isxdigit(i32 noundef %160) #15, !dbg !1601
  %162 = icmp ne i32 %161, 0, !dbg !1601
  br i1 %162, label %163, label %200, !dbg !1602

163:                                              ; preds = %154
  %164 = getelementptr inbounds i8, ptr %156, i32 1, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %164, metadata !140, metadata !DIExpression()), !dbg !1502
  %165 = mul nsw i32 %155, 16, !dbg !1605
  %166 = load i8, ptr %164, align 1, !dbg !1606, !tbaa !948
  %167 = sext i8 %166 to i32, !dbg !1606
  %168 = icmp sge i32 %167, 97, !dbg !1606
  br i1 %168, label %169, label %178, !dbg !1606

169:                                              ; preds = %163
  %170 = load i8, ptr %164, align 1, !dbg !1606, !tbaa !948
  %171 = sext i8 %170 to i32, !dbg !1606
  %172 = icmp sle i32 %171, 102, !dbg !1606
  br i1 %172, label %173, label %178, !dbg !1606

173:                                              ; preds = %169
  %174 = load i8, ptr %164, align 1, !dbg !1606, !tbaa !948
  %175 = sext i8 %174 to i32, !dbg !1606
  %176 = sub nsw i32 %175, 97, !dbg !1606
  %177 = add nsw i32 %176, 10, !dbg !1606
  br label %197, !dbg !1606

178:                                              ; preds = %169, %163
  %179 = load i8, ptr %164, align 1, !dbg !1606, !tbaa !948
  %180 = sext i8 %179 to i32, !dbg !1606
  %181 = icmp sge i32 %180, 65, !dbg !1606
  br i1 %181, label %182, label %191, !dbg !1606

182:                                              ; preds = %178
  %183 = load i8, ptr %164, align 1, !dbg !1606, !tbaa !948
  %184 = sext i8 %183 to i32, !dbg !1606
  %185 = icmp sle i32 %184, 70, !dbg !1606
  br i1 %185, label %186, label %191, !dbg !1606

186:                                              ; preds = %182
  %187 = load i8, ptr %164, align 1, !dbg !1606, !tbaa !948
  %188 = sext i8 %187 to i32, !dbg !1606
  %189 = sub nsw i32 %188, 65, !dbg !1606
  %190 = add nsw i32 %189, 10, !dbg !1606
  br label %195, !dbg !1606

191:                                              ; preds = %182, %178
  %192 = load i8, ptr %164, align 1, !dbg !1606, !tbaa !948
  %193 = sext i8 %192 to i32, !dbg !1606
  %194 = sub nsw i32 %193, 48, !dbg !1606
  br label %195, !dbg !1606

195:                                              ; preds = %191, %186
  %196 = phi i32 [ %190, %186 ], [ %194, %191 ], !dbg !1606
  br label %197, !dbg !1606

197:                                              ; preds = %195, %173
  %198 = phi i32 [ %177, %173 ], [ %196, %195 ], !dbg !1606
  %199 = add nsw i32 %165, %198, !dbg !1607
  call void @llvm.dbg.value(metadata i32 %199, metadata !153, metadata !DIExpression()), !dbg !1596
  br label %200, !dbg !1608

200:                                              ; preds = %197, %154
  %.6 = phi ptr [ %164, %197 ], [ %156, %154 ], !dbg !1596
  %.0 = phi i32 [ %199, %197 ], [ %155, %154 ], !dbg !1596
  call void @llvm.dbg.value(metadata i32 %.0, metadata !153, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata ptr %.6, metadata !140, metadata !DIExpression()), !dbg !1502
  %201 = load ptr, ptr @__stdoutp, align 8, !dbg !1609, !tbaa !717
  %202 = call i32 @putc_unlocked(i32 noundef %.0, ptr noundef %201), !dbg !1609
  br label %214, !dbg !1610

203:                                              ; preds = %108, %104
  %204 = load i8, ptr %64, align 1, !dbg !1611, !tbaa !948
  %205 = sext i8 %204 to i32, !dbg !1611
  %206 = icmp eq i32 %205, 0, !dbg !1613
  br i1 %206, label %207, label %211, !dbg !1614

207:                                              ; preds = %203
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.70), !dbg !1615
  %208 = load ptr, ptr @__stdoutp, align 8, !dbg !1617, !tbaa !717
  %209 = call i32 @putc_unlocked(i32 noundef 92, ptr noundef %208), !dbg !1617
  %210 = getelementptr inbounds i8, ptr %64, i32 -1, !dbg !1618
  call void @llvm.dbg.value(metadata ptr %210, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %213, !dbg !1619

211:                                              ; preds = %203
  %212 = load i8, ptr %64, align 1, !dbg !1620, !tbaa !948
  call void @print_esc_char(i8 noundef signext %212), !dbg !1622
  br label %213

213:                                              ; preds = %211, %207
  %.7 = phi ptr [ %210, %207 ], [ %64, %211 ], !dbg !1623
  call void @llvm.dbg.value(metadata ptr %.7, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %214

214:                                              ; preds = %213, %200
  %.8 = phi ptr [ %.6, %200 ], [ %.7, %213 ], !dbg !1624
  call void @llvm.dbg.value(metadata ptr %.8, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %215

215:                                              ; preds = %214, %100
  %.9 = phi ptr [ %103, %100 ], [ %.8, %214 ], !dbg !1625
  call void @llvm.dbg.value(metadata ptr %.9, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %221, !dbg !1626

216:                                              ; preds = %13
  %217 = load i8, ptr %.08, align 1, !dbg !1627, !tbaa !948
  %218 = sext i8 %217 to i32, !dbg !1627
  %219 = load ptr, ptr @__stdoutp, align 8, !dbg !1627, !tbaa !717
  %220 = call i32 @putc_unlocked(i32 noundef %218, ptr noundef %219), !dbg !1627
  br label %221, !dbg !1628

221:                                              ; preds = %216, %215, %60, %56
  %.10 = phi ptr [ %.08, %216 ], [ %.9, %215 ], [ %.08, %60 ], [ %.4, %56 ], !dbg !1629
  %.2 = phi i8 [ %.06, %216 ], [ %.06, %215 ], [ %.06, %60 ], [ %.17, %56 ], !dbg !1502
  call void @llvm.dbg.value(metadata i8 %.2, metadata !137, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr %.10, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %222, !dbg !1630

222:                                              ; preds = %221
  %223 = getelementptr inbounds i8, ptr %.10, i32 1, !dbg !1631
  call void @llvm.dbg.value(metadata ptr %223, metadata !140, metadata !DIExpression()), !dbg !1502
  br label %10, !dbg !1632, !llvm.loop !1633

224:                                              ; preds = %10
  call void @rpl_free(ptr noundef %9), !dbg !1635
  %225 = load ptr, ptr @trailing_delim, align 8, !dbg !1636, !tbaa !717
  %226 = load ptr, ptr @__stdoutp, align 8, !dbg !1637, !tbaa !717
  %227 = call i32 @"\01_fputs"(ptr noundef %225, ptr noundef %226), !dbg !1638
  %228 = trunc i8 %.06 to i1, !dbg !1639
  ret i1 %228, !dbg !1640
}

; Function Attrs: allocsize(0)
declare !dbg !1641 noalias nonnull ptr @xmalloc(i64 noundef) #8

; Function Attrs: nounwind ssp willreturn memory(read) uwtable
define internal i64 @format_code_offset(ptr noundef %0) #9 !dbg !1645 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1649, metadata !DIExpression()), !dbg !1652
  %2 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1653
  %3 = call i64 @strspn(ptr noundef %2, ptr noundef @printf_flags), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %3, metadata !1650, metadata !DIExpression()), !dbg !1652
  %4 = getelementptr inbounds i8, ptr %0, i64 %3, !dbg !1655
  %5 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1656
  call void @llvm.dbg.value(metadata ptr %5, metadata !1651, metadata !DIExpression()), !dbg !1652
  %6 = call i64 @strspn(ptr noundef %5, ptr noundef @digits), !dbg !1657
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1658
  call void @llvm.dbg.value(metadata ptr %7, metadata !1651, metadata !DIExpression()), !dbg !1652
  %8 = load i8, ptr %7, align 1, !dbg !1659, !tbaa !948
  %9 = sext i8 %8 to i32, !dbg !1659
  %10 = icmp eq i32 %9, 46, !dbg !1661
  br i1 %10, label %11, label %16, !dbg !1662

11:                                               ; preds = %1
  %12 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !1663
  %13 = call i64 @strspn(ptr noundef %12, ptr noundef @digits), !dbg !1664
  %14 = add i64 1, %13, !dbg !1665
  %15 = getelementptr inbounds i8, ptr %7, i64 %14, !dbg !1666
  call void @llvm.dbg.value(metadata ptr %15, metadata !1651, metadata !DIExpression()), !dbg !1652
  br label %16, !dbg !1667

16:                                               ; preds = %11, %1
  %.0 = phi ptr [ %15, %11 ], [ %7, %1 ], !dbg !1652
  call void @llvm.dbg.value(metadata ptr %.0, metadata !1651, metadata !DIExpression()), !dbg !1652
  %17 = ptrtoint ptr %.0 to i64, !dbg !1668
  %18 = ptrtoint ptr %0 to i64, !dbg !1668
  %19 = sub i64 %17, %18, !dbg !1668
  ret i64 %19, !dbg !1669
}

declare !dbg !1670 ptr @quote(ptr noundef) #2

declare !dbg !1672 i32 @putc_unlocked(i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i8 @to_uchar(i8 noundef signext %0) #3 !dbg !1675 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1679, metadata !DIExpression()), !dbg !1680
  ret i8 %0, !dbg !1681
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally i32 @isxdigit(i32 noundef %0) #10 !dbg !1682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1687, metadata !DIExpression()), !dbg !1688
  %2 = call i32 @__isctype(i32 noundef %0, i64 noundef 65536), !dbg !1689
  ret i32 %2, !dbg !1690
}

; Function Attrs: nounwind ssp uwtable
define internal void @print_esc_char(i8 noundef signext %0) #7 !dbg !1691 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1695, metadata !DIExpression()), !dbg !1696
  %2 = sext i8 %0 to i32, !dbg !1697
  switch i32 %2, label %12 [
    i32 97, label %3
    i32 98, label %4
    i32 101, label %5
    i32 102, label %6
    i32 110, label %7
    i32 114, label %8
    i32 116, label %9
    i32 118, label %10
    i32 34, label %11
    i32 92, label %11
  ], !dbg !1698

3:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8 7, metadata !1695, metadata !DIExpression()), !dbg !1696
  br label %14, !dbg !1699

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8 8, metadata !1695, metadata !DIExpression()), !dbg !1696
  br label %14, !dbg !1701

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8 27, metadata !1695, metadata !DIExpression()), !dbg !1696
  br label %14, !dbg !1702

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8 12, metadata !1695, metadata !DIExpression()), !dbg !1696
  br label %14, !dbg !1703

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8 10, metadata !1695, metadata !DIExpression()), !dbg !1696
  br label %14, !dbg !1704

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8 13, metadata !1695, metadata !DIExpression()), !dbg !1696
  br label %14, !dbg !1705

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8 9, metadata !1695, metadata !DIExpression()), !dbg !1696
  br label %14, !dbg !1706

10:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8 11, metadata !1695, metadata !DIExpression()), !dbg !1696
  br label %14, !dbg !1707

11:                                               ; preds = %1, %1
  br label %14, !dbg !1708

12:                                               ; preds = %1
  %13 = sext i8 %0 to i32, !dbg !1709
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.93, i32 noundef %13), !dbg !1710
  br label %14, !dbg !1711

14:                                               ; preds = %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %.0 = phi i8 [ %0, %12 ], [ %0, %11 ], [ 11, %10 ], [ 9, %9 ], [ 13, %8 ], [ 10, %7 ], [ 12, %6 ], [ 27, %5 ], [ 8, %4 ], [ 7, %3 ]
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1695, metadata !DIExpression()), !dbg !1696
  %15 = sext i8 %.0 to i32, !dbg !1712
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !1712, !tbaa !717
  %17 = call i32 @putc_unlocked(i32 noundef %15, ptr noundef %16), !dbg !1712
  ret void, !dbg !1713
}

declare !dbg !1714 void @rpl_free(ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__isctype(i32 noundef %0, i64 noundef %1) #3 !dbg !1718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1723, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %1, metadata !1724, metadata !DIExpression()), !dbg !1725
  %3 = icmp slt i32 %0, 0, !dbg !1726
  br i1 %3, label %6, label %4, !dbg !1727

4:                                                ; preds = %2
  %5 = icmp sge i32 %0, 256, !dbg !1728
  br i1 %5, label %6, label %7, !dbg !1729

6:                                                ; preds = %4, %2
  br label %17, !dbg !1729

7:                                                ; preds = %4
  %8 = sext i32 %0 to i64, !dbg !1730
  %9 = getelementptr inbounds [256 x i32], ptr getelementptr inbounds (%struct._RuneLocale, ptr @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %8, !dbg !1730
  %10 = load i32, ptr %9, align 4, !dbg !1730, !tbaa !1000
  %11 = zext i32 %10 to i64, !dbg !1730
  %12 = and i64 %11, %1, !dbg !1731
  %13 = icmp ne i64 %12, 0, !dbg !1732
  %14 = xor i1 %13, true, !dbg !1732
  %15 = xor i1 %14, true, !dbg !1733
  %16 = zext i1 %15 to i32, !dbg !1733
  br label %17, !dbg !1729

17:                                               ; preds = %7, %6
  %18 = phi i32 [ 0, %6 ], [ %16, %7 ], !dbg !1729
  ret i32 %18, !dbg !1734
}

declare !dbg !1735 i64 @strspn(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %2) #7 !dbg !1738 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1742, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %1, metadata !1743, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata ptr %2, metadata !1744, metadata !DIExpression()), !dbg !1745
  call void @make_format(ptr noundef %0, i64 noundef %1, ptr noundef @.str.66, ptr noundef @.str.74), !dbg !1746
  %4 = call i32 (ptr, ...) @printf(ptr noundef %0, ptr noundef %2), !dbg !1747
  ret void, !dbg !1748
}

declare !dbg !1749 i32 @get_quoting_style(ptr noundef) #2

declare !dbg !1755 ptr @areadlink_with_size(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %2) #7 !dbg !1759 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1763, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %1, metadata !1764, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %2, metadata !1765, metadata !DIExpression()), !dbg !1766
  call void @make_format(ptr noundef %0, i64 noundef %1, ptr noundef @.str.75, ptr noundef @.str.76), !dbg !1767
  %4 = call i32 (ptr, ...) @printf(ptr noundef %0, i64 noundef %2), !dbg !1768
  ret i32 %4, !dbg !1769
}

; Function Attrs: nounwind ssp uwtable
define internal void @out_uint_x(ptr noundef %0, i64 noundef %1, i64 noundef %2) #7 !dbg !1770 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1774, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %1, metadata !1775, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %2, metadata !1776, metadata !DIExpression()), !dbg !1777
  call void @make_format(ptr noundef %0, i64 noundef %1, ptr noundef @.str.77, ptr noundef @.str.78), !dbg !1778
  %4 = call i32 (ptr, ...) @printf(ptr noundef %0, i64 noundef %2), !dbg !1779
  ret void, !dbg !1780
}

; Function Attrs: nounwind ssp uwtable
define internal void @out_uint_o(ptr noundef %0, i64 noundef %1, i64 noundef %2) #7 !dbg !1781 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1783, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %1, metadata !1784, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %2, metadata !1785, metadata !DIExpression()), !dbg !1786
  call void @make_format(ptr noundef %0, i64 noundef %1, ptr noundef @.str.77, ptr noundef @.str.79), !dbg !1787
  %4 = call i32 (ptr, ...) @printf(ptr noundef %0, i64 noundef %2), !dbg !1788
  ret void, !dbg !1789
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @human_access(ptr noundef %0) #7 !dbg !572 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !578, metadata !DIExpression()), !dbg !1790
  call void @filemodestring(ptr noundef %0, ptr noundef @human_access.modebuf), !dbg !1791
  store i8 0, ptr getelementptr inbounds ([12 x i8], ptr @human_access.modebuf, i64 0, i64 10), align 1, !dbg !1792, !tbaa !948
  ret ptr @human_access.modebuf, !dbg !1793
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1794 ptr @file_type(ptr noundef) #11

declare !dbg !1798 ptr @getpwuid(i32 noundef) #2

declare !dbg !1801 ptr @getgrgid(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @out_mount_point(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #7 !dbg !1804 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1808, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %1, metadata !1809, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %2, metadata !1810, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %3, metadata !1811, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !1812, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr null, metadata !1813, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr null, metadata !1814, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 1, metadata !1815, metadata !DIExpression()), !dbg !1820
  %5 = load i8, ptr @follow_links, align 1, !dbg !1821, !tbaa !968, !range !1228, !noundef !811
  %6 = trunc i8 %5 to i1, !dbg !1821
  br i1 %6, label %13, label %7, !dbg !1822

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 1, !dbg !1823
  %9 = load i16, ptr %8, align 4, !dbg !1823, !tbaa !1240
  %10 = zext i16 %9 to i32, !dbg !1823
  %11 = and i32 %10, 61440, !dbg !1823
  %12 = icmp eq i32 %11, 40960, !dbg !1823
  br i1 %12, label %27, label %13, !dbg !1824

13:                                               ; preds = %7, %4
  %14 = call noalias ptr @canonicalize_file_name(ptr noundef %0), !dbg !1825
  call void @llvm.dbg.value(metadata ptr %14, metadata !1816, metadata !DIExpression()), !dbg !1826
  %15 = icmp ne ptr %14, null, !dbg !1827
  br i1 %15, label %20, label %16, !dbg !1829

16:                                               ; preds = %13
  %17 = call ptr @__error(), !dbg !1830
  %18 = load i32, ptr %17, align 4, !dbg !1830, !tbaa !1000
  %19 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %0), !dbg !1832
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef @.str.81, ptr noundef %19), !dbg !1833
  br label %25, !dbg !1834

20:                                               ; preds = %13
  %21 = call ptr @find_bind_mount(ptr noundef %14), !dbg !1835
  call void @llvm.dbg.value(metadata ptr %21, metadata !1813, metadata !DIExpression()), !dbg !1820
  call void @rpl_free(ptr noundef %14), !dbg !1836
  %22 = icmp ne ptr %21, null, !dbg !1837
  br i1 %22, label %23, label %24, !dbg !1839

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1820
  br label %25, !dbg !1840

24:                                               ; preds = %20
  br label %25, !dbg !1842

25:                                               ; preds = %24, %23, %16
  %.04 = phi ptr [ %21, %23 ], [ %21, %24 ], [ null, %16 ], !dbg !1820
  %.02 = phi i8 [ 0, %23 ], [ 1, %24 ], [ 1, %16 ], !dbg !1820
  %.01 = phi i32 [ 2, %23 ], [ 0, %24 ], [ 2, %16 ]
  call void @llvm.dbg.value(metadata i8 %.02, metadata !1815, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %.04, metadata !1813, metadata !DIExpression()), !dbg !1820
  switch i32 %.01, label %45 [
    i32 0, label %26
    i32 2, label %33
  ]

26:                                               ; preds = %25
  br label %27, !dbg !1843

27:                                               ; preds = %26, %7
  %.15 = phi ptr [ %.04, %26 ], [ null, %7 ], !dbg !1820
  %.1 = phi i8 [ %.02, %26 ], [ 1, %7 ], !dbg !1820
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1815, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %.15, metadata !1813, metadata !DIExpression()), !dbg !1820
  %28 = call noalias ptr @find_mount_point(ptr noundef %0, ptr noundef %3), !dbg !1844
  call void @llvm.dbg.value(metadata ptr %28, metadata !1814, metadata !DIExpression()), !dbg !1820
  %29 = icmp ne ptr %28, null, !dbg !1846
  br i1 %29, label %30, label %32, !dbg !1847

30:                                               ; preds = %27
  %31 = call ptr @find_bind_mount(ptr noundef %28), !dbg !1848
  call void @llvm.dbg.value(metadata ptr %31, metadata !1813, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1820
  br label %32, !dbg !1850

32:                                               ; preds = %30, %27
  %.26 = phi ptr [ %31, %30 ], [ %.15, %27 ], !dbg !1820
  %.2 = phi i8 [ 0, %30 ], [ %.1, %27 ], !dbg !1820
  call void @llvm.dbg.value(metadata i8 %.2, metadata !1815, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %.26, metadata !1813, metadata !DIExpression()), !dbg !1820
  br label %33, !dbg !1851

33:                                               ; preds = %32, %25
  %.37 = phi ptr [ %.04, %25 ], [ %.26, %32 ], !dbg !1820
  %.03 = phi ptr [ null, %25 ], [ %28, %32 ], !dbg !1820
  %.3 = phi i8 [ %.02, %25 ], [ %.2, %32 ], !dbg !1820
  call void @llvm.dbg.value(metadata i8 %.3, metadata !1815, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %.03, metadata !1814, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %.37, metadata !1813, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.label(metadata !1819), !dbg !1852
  %34 = icmp ne ptr %.37, null, !dbg !1853
  br i1 %34, label %35, label %36, !dbg !1853

35:                                               ; preds = %33
  br label %42, !dbg !1853

36:                                               ; preds = %33
  %37 = icmp ne ptr %.03, null, !dbg !1854
  br i1 %37, label %38, label %39, !dbg !1854

38:                                               ; preds = %36
  br label %40, !dbg !1854

39:                                               ; preds = %36
  br label %40, !dbg !1854

40:                                               ; preds = %39, %38
  %41 = phi ptr [ %.03, %38 ], [ @.str.80, %39 ], !dbg !1854
  br label %42, !dbg !1853

42:                                               ; preds = %40, %35
  %43 = phi ptr [ %.37, %35 ], [ %41, %40 ], !dbg !1853
  call void @out_string(ptr noundef %1, i64 noundef %2, ptr noundef %43), !dbg !1855
  call void @rpl_free(ptr noundef %.03), !dbg !1856
  %44 = trunc i8 %.3 to i1, !dbg !1857
  br label %45, !dbg !1858

45:                                               ; preds = %42, %25
  %.0 = phi i1 [ undef, %25 ], [ %44, %42 ]
  ret i1 %.0, !dbg !1859
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @unsigned_file_size(i64 noundef %0) #7 !dbg !1860 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1864, metadata !DIExpression()), !dbg !1865
  %2 = icmp slt i64 %0, 0, !dbg !1866
  %3 = zext i1 %2 to i32, !dbg !1866
  %4 = sext i32 %3 to i64, !dbg !1867
  %5 = mul i64 %4, 0, !dbg !1868
  %6 = add i64 %0, %5, !dbg !1869
  ret i64 %6, !dbg !1870
}

; Function Attrs: nounwind ssp uwtable
define internal { i64, i64 } @get_birthtime(i32 noundef %0, ptr noundef %1, ptr noundef %2) #7 !dbg !1871 {
  %4 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1875, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata ptr %1, metadata !1876, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata ptr %2, metadata !1877, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1878, metadata !DIExpression()), !dbg !1880
  %5 = call { i64, i64 } @get_stat_birthtime(ptr noundef %2) #15, !dbg !1881
  %6 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 0, !dbg !1881
  %7 = extractvalue { i64, i64 } %5, 0, !dbg !1881
  store i64 %7, ptr %6, align 8, !dbg !1881
  %8 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 1, !dbg !1881
  %9 = extractvalue { i64, i64 } %5, 1, !dbg !1881
  store i64 %9, ptr %8, align 8, !dbg !1881
  %10 = load { i64, i64 }, ptr %4, align 8, !dbg !1882
  ret { i64, i64 } %10, !dbg !1882
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @human_time(i64 %0, i64 %1) #7 !dbg !626 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.tm, align 8
  %5 = alloca [21 x i8], align 16
  %6 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 0
  store i64 %0, ptr %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 1
  store i64 %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !630, metadata !DIExpression()), !dbg !1883
  %8 = load ptr, ptr @human_time.tz, align 8, !dbg !1884, !tbaa !717
  %9 = icmp ne ptr %8, null, !dbg !1884
  br i1 %9, label %13, label %10, !dbg !1886

10:                                               ; preds = %2
  %11 = call ptr @getenv(ptr noundef @.str.84), !dbg !1887
  %12 = call ptr @tzalloc(ptr noundef %11), !dbg !1888
  store ptr %12, ptr @human_time.tz, align 8, !dbg !1889, !tbaa !717
  br label %13, !dbg !1890

13:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 56, ptr %4) #14, !dbg !1891
  call void @llvm.dbg.declare(metadata ptr %4, metadata !631, metadata !DIExpression()), !dbg !1892
  %14 = getelementptr inbounds %struct.timespec, ptr %3, i32 0, i32 1, !dbg !1893
  %15 = load i64, ptr %14, align 8, !dbg !1893, !tbaa !1210
  %16 = trunc i64 %15 to i32, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %16, metadata !646, metadata !DIExpression()), !dbg !1895
  %17 = load ptr, ptr @human_time.tz, align 8, !dbg !1896, !tbaa !717
  %18 = getelementptr inbounds %struct.timespec, ptr %3, i32 0, i32 0, !dbg !1897
  %19 = call ptr @localtime_rz(ptr noundef %17, ptr noundef %18, ptr noundef %4), !dbg !1898
  %20 = icmp ne ptr %19, null, !dbg !1898
  br i1 %20, label %21, label %24, !dbg !1899

21:                                               ; preds = %13
  %22 = load ptr, ptr @human_time.tz, align 8, !dbg !1900, !tbaa !717
  %23 = call i64 @nstrftime(ptr noundef @human_time.str, i64 noundef 61, ptr noundef @.str.85, ptr noundef %4, ptr noundef %22, i32 noundef %16), !dbg !1901
  br label %30, !dbg !1901

24:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 21, ptr %5) #14, !dbg !1902
  call void @llvm.dbg.declare(metadata ptr %5, metadata !647, metadata !DIExpression()), !dbg !1903
  %25 = getelementptr inbounds %struct.timespec, ptr %3, i32 0, i32 0, !dbg !1904
  %26 = load i64, ptr %25, align 8, !dbg !1904, !tbaa !1209
  %27 = getelementptr inbounds [21 x i8], ptr %5, i64 0, i64 0, !dbg !1905
  %28 = call ptr @timetostr(i64 noundef %26, ptr noundef %27), !dbg !1906
  %29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @human_time.str, ptr noundef @.str.86, ptr noundef %28, i32 noundef %16), !dbg !1907
  call void @llvm.lifetime.end.p0(i64 21, ptr %5) #14, !dbg !1908
  br label %30

30:                                               ; preds = %24, %21
  call void @llvm.lifetime.end.p0(i64 56, ptr %4) #14, !dbg !1909
  ret ptr @human_time.str, !dbg !1910
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal { i64, i64 } @neg_to_zero(i64 %0, i64 %1) #3 !dbg !1911 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 1
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1915, metadata !DIExpression()), !dbg !1917
  %7 = getelementptr inbounds %struct.timespec, ptr %4, i32 0, i32 1, !dbg !1918
  %8 = load i64, ptr %7, align 8, !dbg !1918, !tbaa !1210
  %9 = icmp sle i64 0, %8, !dbg !1920
  br i1 %9, label %10, label %11, !dbg !1921

10:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %4, i64 16, i1 false), !dbg !1922, !tbaa.struct !1212
  br label %12, !dbg !1923

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1916, metadata !DIExpression()), !dbg !1924
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 16, i1 false), !dbg !1924
  br label %12, !dbg !1925

12:                                               ; preds = %11, %10
  %13 = load { i64, i64 }, ptr %3, align 8, !dbg !1926
  ret { i64, i64 } %13, !dbg !1926
}

; Function Attrs: nounwind ssp uwtable
define internal void @out_epoch_sec(ptr noundef %0, i64 noundef %1, i64 %2, i64 %3) #7 !dbg !1927 {
  %5 = alloca %struct.timespec, align 8
  %6 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0
  store i64 %2, ptr %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1
  store i64 %3, ptr %7, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1931, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %1, metadata !1932, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1933, metadata !DIExpression()), !dbg !1977
  %8 = call ptr @memchr(ptr noundef %0, i32 noundef 46, i64 noundef %1), !dbg !1978
  call void @llvm.dbg.value(metadata ptr %8, metadata !1934, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %1, metadata !1935, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 0, metadata !1936, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 0, metadata !1937, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 0, metadata !1938, metadata !DIExpression()), !dbg !1976
  %9 = icmp ne ptr %8, null, !dbg !1979
  br i1 %9, label %10, label %112, !dbg !1980

10:                                               ; preds = %4
  %11 = ptrtoint ptr %8 to i64, !dbg !1981
  %12 = ptrtoint ptr %0 to i64, !dbg !1981
  %13 = sub i64 %11, %12, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %13, metadata !1935, metadata !DIExpression()), !dbg !1976
  %14 = getelementptr inbounds i8, ptr %0, i64 %1, !dbg !1982
  store i8 0, ptr %14, align 1, !dbg !1983, !tbaa !948
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1984
  %16 = load i8, ptr %15, align 1, !dbg !1984, !tbaa !948
  %17 = sext i8 %16 to i32, !dbg !1984
  %18 = sub i32 %17, 48, !dbg !1984
  %19 = icmp ule i32 %18, 9, !dbg !1984
  br i1 %19, label %20, label %29, !dbg !1985

20:                                               ; preds = %10
  %21 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1986
  %22 = call i64 @strtol(ptr noundef %21, ptr noundef null, i32 noundef 10), !dbg !1987
  call void @llvm.dbg.value(metadata i64 %22, metadata !1939, metadata !DIExpression()), !dbg !1988
  %23 = icmp sle i64 %22, 2147483647, !dbg !1989
  br i1 %23, label %24, label %25, !dbg !1990

24:                                               ; preds = %20
  br label %26, !dbg !1990

25:                                               ; preds = %20
  br label %26, !dbg !1990

26:                                               ; preds = %25, %24
  %27 = phi i64 [ %22, %24 ], [ 2147483647, %25 ], !dbg !1990
  %28 = trunc i64 %27 to i32, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %28, metadata !1937, metadata !DIExpression()), !dbg !1976
  br label %30, !dbg !1992

29:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i32 9, metadata !1937, metadata !DIExpression()), !dbg !1976
  br label %30

30:                                               ; preds = %29, %26
  %.06 = phi i32 [ %28, %26 ], [ 9, %29 ], !dbg !1993
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1937, metadata !DIExpression()), !dbg !1976
  %31 = icmp ne i32 %.06, 0, !dbg !1994
  br i1 %31, label %32, label %111, !dbg !1995

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, ptr %8, i64 -1, !dbg !1996
  %34 = load i8, ptr %33, align 1, !dbg !1996, !tbaa !948
  %35 = sext i8 %34 to i32, !dbg !1996
  %36 = sub i32 %35, 48, !dbg !1996
  %37 = icmp ule i32 %36, 9, !dbg !1996
  br i1 %37, label %38, label %111, !dbg !1997

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata ptr %8, metadata !1944, metadata !DIExpression()), !dbg !1998
  store i8 0, ptr %8, align 1, !dbg !1999, !tbaa !948
  br label %39, !dbg !2000

39:                                               ; preds = %41, %38
  %.011 = phi ptr [ %8, %38 ], [ %40, %41 ], !dbg !1998
  call void @llvm.dbg.value(metadata ptr %.011, metadata !1944, metadata !DIExpression()), !dbg !1998
  %40 = getelementptr inbounds i8, ptr %.011, i32 -1, !dbg !2001
  call void @llvm.dbg.value(metadata ptr %40, metadata !1944, metadata !DIExpression()), !dbg !1998
  br label %41, !dbg !2001

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, ptr %40, i64 -1, !dbg !2002
  %43 = load i8, ptr %42, align 1, !dbg !2002, !tbaa !948
  %44 = sext i8 %43 to i32, !dbg !2002
  %45 = sub i32 %44, 48, !dbg !2002
  %46 = icmp ule i32 %45, 9, !dbg !2002
  br i1 %46, label %39, label %47, !dbg !2001, !llvm.loop !2003

47:                                               ; preds = %41
  %48 = call i64 @strtol(ptr noundef %40, ptr noundef null, i32 noundef 10), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %48, metadata !1947, metadata !DIExpression()), !dbg !1998
  %49 = icmp sle i64 %48, 2147483647, !dbg !2006
  br i1 %49, label %50, label %51, !dbg !2007

50:                                               ; preds = %47
  br label %52, !dbg !2007

51:                                               ; preds = %47
  br label %52, !dbg !2007

52:                                               ; preds = %51, %50
  %53 = phi i64 [ %48, %50 ], [ 2147483647, %51 ], !dbg !2007
  %54 = trunc i64 %53 to i32, !dbg !2008
  call void @llvm.dbg.value(metadata i32 %54, metadata !1936, metadata !DIExpression()), !dbg !1976
  %55 = icmp slt i32 1, %54, !dbg !2009
  br i1 %55, label %56, label %110, !dbg !2010

56:                                               ; preds = %52
  %57 = load i8, ptr %40, align 1, !dbg !2011, !tbaa !948
  %58 = sext i8 %57 to i32, !dbg !2011
  %59 = icmp eq i32 %58, 48, !dbg !2012
  %60 = zext i1 %59 to i32, !dbg !2012
  %61 = sext i32 %60 to i64, !dbg !2013
  %62 = getelementptr inbounds i8, ptr %40, i64 %61, !dbg !2013
  call void @llvm.dbg.value(metadata ptr %62, metadata !1944, metadata !DIExpression()), !dbg !1998
  %63 = ptrtoint ptr %62 to i64, !dbg !2014
  %64 = ptrtoint ptr %0 to i64, !dbg !2014
  %65 = sub i64 %63, %64, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %65, metadata !1935, metadata !DIExpression()), !dbg !1976
  %66 = load i64, ptr @decimal_point_len, align 8, !dbg !2015, !tbaa !954
  %67 = sext i32 %54 to i64, !dbg !2016
  %68 = icmp ult i64 %66, %67, !dbg !2017
  br i1 %68, label %69, label %73, !dbg !2015

69:                                               ; preds = %56
  %70 = sext i32 %54 to i64, !dbg !2018
  %71 = load i64, ptr @decimal_point_len, align 8, !dbg !2019, !tbaa !954
  %72 = sub i64 %70, %71, !dbg !2020
  br label %74, !dbg !2015

73:                                               ; preds = %56
  br label %74, !dbg !2015

74:                                               ; preds = %73, %69
  %75 = phi i64 [ %72, %69 ], [ 0, %73 ], !dbg !2015
  %76 = trunc i64 %75 to i32, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %76, metadata !1948, metadata !DIExpression()), !dbg !2022
  %77 = icmp slt i32 1, %76, !dbg !2023
  br i1 %77, label %78, label %109, !dbg !2024

78:                                               ; preds = %74
  %79 = sub nsw i32 %76, %.06, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %79, metadata !1951, metadata !DIExpression()), !dbg !2026
  %80 = icmp slt i32 1, %79, !dbg !2027
  br i1 %80, label %81, label %108, !dbg !2028

81:                                               ; preds = %78
  call void @llvm.dbg.value(metadata ptr %0, metadata !1954, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata ptr %0, metadata !1957, metadata !DIExpression()), !dbg !2030
  br label %82, !dbg !2031

82:                                               ; preds = %94, %81
  %.013 = phi ptr [ %0, %81 ], [ %.114, %94 ], !dbg !2032
  %.012 = phi ptr [ %0, %81 ], [ %95, %94 ], !dbg !2033
  %.08 = phi i8 [ 0, %81 ], [ %.19, %94 ], !dbg !1976
  call void @llvm.dbg.value(metadata i8 %.08, metadata !1938, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata ptr %.012, metadata !1957, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata ptr %.013, metadata !1954, metadata !DIExpression()), !dbg !2029
  %83 = icmp ult ptr %.012, %62, !dbg !2034
  br i1 %83, label %85, label %84, !dbg !2036

84:                                               ; preds = %82
  br label %96

85:                                               ; preds = %82
  %86 = load i8, ptr %.012, align 1, !dbg !2037, !tbaa !948
  %87 = sext i8 %86 to i32, !dbg !2037
  %88 = icmp eq i32 %87, 45, !dbg !2040
  br i1 %88, label %89, label %90, !dbg !2041

89:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i8 1, metadata !1938, metadata !DIExpression()), !dbg !1976
  br label %93, !dbg !2042

90:                                               ; preds = %85
  %91 = load i8, ptr %.012, align 1, !dbg !2043, !tbaa !948
  %92 = getelementptr inbounds i8, ptr %.013, i32 1, !dbg !2044
  call void @llvm.dbg.value(metadata ptr %92, metadata !1954, metadata !DIExpression()), !dbg !2029
  store i8 %91, ptr %.013, align 1, !dbg !2045, !tbaa !948
  br label %93

93:                                               ; preds = %90, %89
  %.114 = phi ptr [ %.013, %89 ], [ %92, %90 ], !dbg !2029
  %.19 = phi i8 [ 1, %89 ], [ %.08, %90 ], !dbg !1976
  call void @llvm.dbg.value(metadata i8 %.19, metadata !1938, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata ptr %.114, metadata !1954, metadata !DIExpression()), !dbg !2029
  br label %94, !dbg !2046

94:                                               ; preds = %93
  %95 = getelementptr inbounds i8, ptr %.012, i32 1, !dbg !2047
  call void @llvm.dbg.value(metadata ptr %95, metadata !1957, metadata !DIExpression()), !dbg !2030
  br label %82, !dbg !2048, !llvm.loop !2049

96:                                               ; preds = %84
  %97 = ptrtoint ptr %.013 to i64, !dbg !2051
  %98 = ptrtoint ptr %0 to i64, !dbg !2051
  %99 = sub i64 %97, %98, !dbg !2051
  %100 = trunc i8 %.08 to i1, !dbg !2052
  br i1 %100, label %101, label %102, !dbg !2052

101:                                              ; preds = %96
  br label %104, !dbg !2052

102:                                              ; preds = %96
  %103 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %.013, ptr noundef @.str.87, i32 noundef %79), !dbg !2053
  br label %104, !dbg !2052

104:                                              ; preds = %102, %101
  %105 = phi i32 [ 0, %101 ], [ %103, %102 ], !dbg !2052
  %106 = sext i32 %105 to i64, !dbg !2054
  %107 = add nsw i64 %99, %106, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %107, metadata !1935, metadata !DIExpression()), !dbg !1976
  br label %108, !dbg !2056

108:                                              ; preds = %104, %78
  %.03 = phi i64 [ %107, %104 ], [ %65, %78 ], !dbg !2022
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1935, metadata !DIExpression()), !dbg !1976
  br label %109, !dbg !2057

109:                                              ; preds = %108, %74
  %.1 = phi i64 [ %.03, %108 ], [ %65, %74 ], !dbg !2022
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1935, metadata !DIExpression()), !dbg !1976
  br label %110, !dbg !2058

110:                                              ; preds = %109, %52
  %.2 = phi i64 [ %.1, %109 ], [ %13, %52 ], !dbg !2059
  call void @llvm.dbg.value(metadata i64 %.2, metadata !1935, metadata !DIExpression()), !dbg !1976
  br label %111, !dbg !2060

111:                                              ; preds = %110, %32, %30
  %.04 = phi i32 [ %54, %110 ], [ 0, %32 ], [ 0, %30 ], !dbg !1976
  %.3 = phi i64 [ %.2, %110 ], [ %13, %32 ], [ %13, %30 ], !dbg !2059
  call void @llvm.dbg.value(metadata i64 %.3, metadata !1935, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1936, metadata !DIExpression()), !dbg !1976
  br label %112, !dbg !2061

112:                                              ; preds = %111, %4
  %.17 = phi i32 [ %.06, %111 ], [ 0, %4 ], !dbg !1976
  %.15 = phi i32 [ %.04, %111 ], [ 0, %4 ], !dbg !1976
  %.4 = phi i64 [ %.3, %111 ], [ %1, %4 ], !dbg !1976
  call void @llvm.dbg.value(metadata i64 %.4, metadata !1935, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %.15, metadata !1936, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %.17, metadata !1937, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 1, metadata !1959, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %.17, metadata !1960, metadata !DIExpression()), !dbg !2062
  br label %113, !dbg !2063

113:                                              ; preds = %118, %112
  %.010 = phi i32 [ 1, %112 ], [ %117, %118 ], !dbg !1976
  %.02 = phi i32 [ %.17, %112 ], [ %119, %118 ], !dbg !2064
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1960, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i32 %.010, metadata !1959, metadata !DIExpression()), !dbg !1976
  %114 = icmp slt i32 %.02, 9, !dbg !2065
  br i1 %114, label %116, label %115, !dbg !2067

115:                                              ; preds = %113
  br label %120

116:                                              ; preds = %113
  %117 = mul nsw i32 %.010, 10, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %117, metadata !1959, metadata !DIExpression()), !dbg !1976
  br label %118, !dbg !2069

118:                                              ; preds = %116
  %119 = add nsw i32 %.02, 1, !dbg !2070
  call void @llvm.dbg.value(metadata i32 %119, metadata !1960, metadata !DIExpression()), !dbg !2062
  br label %113, !dbg !2071, !llvm.loop !2072

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 1, !dbg !2074
  %122 = load i64, ptr %121, align 8, !dbg !2074, !tbaa !1210
  %123 = sext i32 %.010 to i64, !dbg !2075
  %124 = sdiv i64 %122, %123, !dbg !2076
  %125 = trunc i64 %124 to i32, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %125, metadata !1962, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 0, metadata !1964, metadata !DIExpression()), !dbg !2078
  %126 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0, !dbg !2079
  %127 = load i64, ptr %126, align 8, !dbg !2079, !tbaa !1209
  %128 = icmp slt i64 %127, 0, !dbg !2080
  br i1 %128, label %129, label %153, !dbg !2081

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 1, !dbg !2082
  %131 = load i64, ptr %130, align 8, !dbg !2082, !tbaa !1210
  %132 = icmp ne i64 %131, 0, !dbg !2083
  br i1 %132, label %133, label %153, !dbg !2084

133:                                              ; preds = %129
  %134 = sdiv i32 1000000000, %.010, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %134, metadata !1967, metadata !DIExpression()), !dbg !2086
  %135 = sub nsw i32 %134, %125, !dbg !2087
  %136 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 1, !dbg !2088
  %137 = load i64, ptr %136, align 8, !dbg !2088, !tbaa !1210
  %138 = sext i32 %.010 to i64, !dbg !2089
  %139 = srem i64 %137, %138, !dbg !2090
  %140 = icmp ne i64 %139, 0, !dbg !2091
  %141 = zext i1 %140 to i32, !dbg !2091
  %142 = sub nsw i32 %135, %141, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %142, metadata !1962, metadata !DIExpression()), !dbg !1976
  %143 = icmp ne i32 %142, 0, !dbg !2093
  %144 = zext i1 %143 to i32, !dbg !2093
  %145 = sext i32 %144 to i64, !dbg !2094
  %146 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0, !dbg !2095
  %147 = load i64, ptr %146, align 8, !dbg !2096, !tbaa !1209
  %148 = add nsw i64 %147, %145, !dbg !2096
  store i64 %148, ptr %146, align 8, !dbg !2096, !tbaa !1209
  %149 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0, !dbg !2097
  %150 = load i64, ptr %149, align 8, !dbg !2097, !tbaa !1209
  %151 = icmp eq i64 %150, 0, !dbg !2098
  %152 = zext i1 %151 to i8, !dbg !2099
  call void @llvm.dbg.value(metadata i8 %152, metadata !1964, metadata !DIExpression()), !dbg !2078
  br label %153, !dbg !2100

153:                                              ; preds = %133, %129, %120
  %.01 = phi i32 [ %142, %133 ], [ %125, %129 ], [ %125, %120 ], !dbg !1976
  %.0 = phi i8 [ %152, %133 ], [ 0, %129 ], [ 0, %120 ], !dbg !2078
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1964, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1962, metadata !DIExpression()), !dbg !1976
  %154 = trunc i8 %.0 to i1, !dbg !2101
  br i1 %154, label %155, label %157, !dbg !2101

155:                                              ; preds = %153
  %156 = call i32 @out_minus_zero(ptr noundef %0, i64 noundef %.4), !dbg !2102
  br label %161, !dbg !2101

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0, !dbg !2103
  %159 = load i64, ptr %158, align 8, !dbg !2103, !tbaa !1209
  %160 = call i32 @out_int(ptr noundef %0, i64 noundef %.4, i64 noundef %159), !dbg !2104
  br label %161, !dbg !2101

161:                                              ; preds = %157, %155
  %162 = phi i32 [ %156, %155 ], [ %160, %157 ], !dbg !2101
  call void @llvm.dbg.value(metadata i32 %162, metadata !1963, metadata !DIExpression()), !dbg !1976
  %163 = icmp ne i32 %.17, 0, !dbg !2105
  br i1 %163, label %164, label %195, !dbg !2106

164:                                              ; preds = %161
  %165 = icmp slt i32 %.17, 9, !dbg !2107
  br i1 %165, label %166, label %167, !dbg !2108

166:                                              ; preds = %164
  br label %168, !dbg !2108

167:                                              ; preds = %164
  br label %168, !dbg !2108

168:                                              ; preds = %167, %166
  %169 = phi i32 [ %.17, %166 ], [ 9, %167 ], !dbg !2108
  call void @llvm.dbg.value(metadata i32 %169, metadata !1970, metadata !DIExpression()), !dbg !2109
  %170 = sub nsw i32 %.17, %169, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %170, metadata !1973, metadata !DIExpression()), !dbg !2109
  %171 = icmp slt i32 %162, 0, !dbg !2111
  br i1 %171, label %172, label %173, !dbg !2112

172:                                              ; preds = %168
  br label %174, !dbg !2112

173:                                              ; preds = %168
  br label %174, !dbg !2112

174:                                              ; preds = %173, %172
  %175 = phi i32 [ 0, %172 ], [ %162, %173 ], !dbg !2112
  call void @llvm.dbg.value(metadata i32 %175, metadata !1974, metadata !DIExpression()), !dbg !2109
  %176 = icmp slt i32 %175, %.15, !dbg !2113
  br i1 %176, label %177, label %189, !dbg !2114

177:                                              ; preds = %174
  %178 = load i64, ptr @decimal_point_len, align 8, !dbg !2115, !tbaa !954
  %179 = sub nsw i32 %.15, %175, !dbg !2116
  %180 = sext i32 %179 to i64, !dbg !2117
  %181 = icmp ult i64 %178, %180, !dbg !2118
  br i1 %181, label %182, label %189, !dbg !2119

182:                                              ; preds = %177
  %183 = sub nsw i32 %.15, %175, !dbg !2120
  %184 = sext i32 %183 to i64, !dbg !2121
  %185 = load i64, ptr @decimal_point_len, align 8, !dbg !2122, !tbaa !954
  %186 = sub i64 %184, %185, !dbg !2123
  %187 = sext i32 %169 to i64, !dbg !2124
  %188 = sub i64 %186, %187, !dbg !2125
  br label %190, !dbg !2119

189:                                              ; preds = %177, %174
  br label %190, !dbg !2119

190:                                              ; preds = %189, %182
  %191 = phi i64 [ %188, %182 ], [ 0, %189 ], !dbg !2119
  %192 = trunc i64 %191 to i32, !dbg !2126
  call void @llvm.dbg.value(metadata i32 %192, metadata !1975, metadata !DIExpression()), !dbg !2109
  %193 = load ptr, ptr @decimal_point, align 8, !dbg !2127, !tbaa !717
  %194 = call i32 (ptr, ...) @printf(ptr noundef @.str.88, ptr noundef %193, i32 noundef %169, i32 noundef %.01, i32 noundef %192, i32 noundef %170, i32 noundef 0), !dbg !2128
  br label %195, !dbg !2129

195:                                              ; preds = %190, %161
  ret void, !dbg !2130
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally { i64, i64 } @get_stat_atime(ptr noundef %0) #10 !dbg !2131 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2136, metadata !DIExpression()), !dbg !2137
  %3 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 7, !dbg !2138
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false), !dbg !2138, !tbaa.struct !1212
  %4 = load { i64, i64 }, ptr %2, align 8, !dbg !2139
  ret { i64, i64 } %4, !dbg !2139
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally { i64, i64 } @get_stat_mtime(ptr noundef %0) #10 !dbg !2140 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2142, metadata !DIExpression()), !dbg !2143
  %3 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 8, !dbg !2144
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false), !dbg !2144, !tbaa.struct !1212
  %4 = load { i64, i64 }, ptr %2, align 8, !dbg !2145
  ret { i64, i64 } %4, !dbg !2145
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally { i64, i64 } @get_stat_ctime(ptr noundef %0) #10 !dbg !2146 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2148, metadata !DIExpression()), !dbg !2149
  %3 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 9, !dbg !2150
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false), !dbg !2150, !tbaa.struct !1212
  %4 = load { i64, i64 }, ptr %2, align 8, !dbg !2151
  ret { i64, i64 } %4, !dbg !2151
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @out_file_context(ptr noundef %0, i64 noundef %1, ptr noundef %2) #7 !dbg !2152 {
  %4 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2156, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %1, metadata !2157, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata ptr %2, metadata !2158, metadata !DIExpression()), !dbg !2161
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #14, !dbg !2162
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2159, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2161
  %5 = load i8, ptr @follow_links, align 1, !dbg !2164, !tbaa !968, !range !1228, !noundef !811
  %6 = trunc i8 %5 to i1, !dbg !2164
  br i1 %6, label %7, label %9, !dbg !2164

7:                                                ; preds = %3
  %8 = call i32 @getfilecon(ptr noundef %2, ptr noundef %4), !dbg !2166
  br label %11, !dbg !2164

9:                                                ; preds = %3
  %10 = call i32 @lgetfilecon(ptr noundef %2, ptr noundef %4), !dbg !2167
  br label %11, !dbg !2164

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ], !dbg !2164
  %13 = icmp slt i32 %12, 0, !dbg !2168
  br i1 %13, label %14, label %18, !dbg !2169

14:                                               ; preds = %11
  %15 = call ptr @__error(), !dbg !2170
  %16 = load i32, ptr %15, align 4, !dbg !2170, !tbaa !1000
  %17 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %2), !dbg !2172
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef @.str.92, ptr noundef %17), !dbg !2173
  store ptr null, ptr %4, align 8, !dbg !2174, !tbaa !717
  call void @llvm.dbg.value(metadata i8 1, metadata !2160, metadata !DIExpression()), !dbg !2161
  br label %18, !dbg !2175

18:                                               ; preds = %14, %11
  %.0 = phi i8 [ 1, %14 ], [ 0, %11 ], !dbg !2161
  call void @llvm.dbg.value(metadata i8 %.0, metadata !2160, metadata !DIExpression()), !dbg !2161
  %19 = getelementptr inbounds i8, ptr %0, i64 %1, !dbg !2176
  %20 = call ptr @strcpy(ptr noundef %19, ptr noundef @.str.74), !dbg !2177
  %21 = load ptr, ptr %4, align 8, !dbg !2178, !tbaa !717
  %22 = icmp ne ptr %21, null, !dbg !2178
  br i1 %22, label %23, label %25, !dbg !2178

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8, !dbg !2179, !tbaa !717
  br label %26, !dbg !2178

25:                                               ; preds = %18
  br label %26, !dbg !2178

26:                                               ; preds = %25, %23
  %27 = phi ptr [ %24, %23 ], [ @.str.80, %25 ], !dbg !2178
  %28 = call i32 (ptr, ...) @printf(ptr noundef %0, ptr noundef %27), !dbg !2180
  %29 = load ptr, ptr %4, align 8, !dbg !2181, !tbaa !717
  %30 = icmp ne ptr %29, null, !dbg !2181
  br i1 %30, label %31, label %33, !dbg !2183

31:                                               ; preds = %26
  %32 = load ptr, ptr %4, align 8, !dbg !2184, !tbaa !717
  call void @freecon(ptr noundef %32), !dbg !2185
  br label %33, !dbg !2185

33:                                               ; preds = %31, %26
  %34 = trunc i8 %.0 to i1, !dbg !2186
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #14, !dbg !2187
  ret i1 %34, !dbg !2188
}

declare !dbg !2189 i32 @fputc(i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @getfilecon(ptr noundef %0, ptr noundef %1) #3 !dbg !2190 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2195, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata ptr %1, metadata !2196, metadata !DIExpression()), !dbg !2197
  %3 = call ptr @__error(), !dbg !2198
  store i32 45, ptr %3, align 4, !dbg !2199, !tbaa !1000
  ret i32 -1, !dbg !2200
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @lgetfilecon(ptr noundef %0, ptr noundef %1) #3 !dbg !2201 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2203, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %1, metadata !2204, metadata !DIExpression()), !dbg !2205
  %3 = call ptr @__error(), !dbg !2206
  store i32 45, ptr %3, align 4, !dbg !2207, !tbaa !1000
  ret i32 -1, !dbg !2208
}

declare !dbg !2209 ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @freecon(ptr noundef %0) #3 !dbg !2212 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2216, metadata !DIExpression()), !dbg !2217
  ret void, !dbg !2218
}

declare !dbg !2219 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #2

declare !dbg !2222 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !2225 i32 @sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @out_minus_zero(ptr noundef %0, i64 noundef %1) #7 !dbg !2229 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2233, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 %1, metadata !2234, metadata !DIExpression()), !dbg !2235
  call void @make_format(ptr noundef %0, i64 noundef %1, ptr noundef @.str.89, ptr noundef @.str.90), !dbg !2236
  %3 = call i32 (ptr, ...) @printf(ptr noundef %0, double noundef -2.500000e-01), !dbg !2237
  ret i32 %3, !dbg !2238
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @out_int(ptr noundef %0, i64 noundef %1, i64 noundef %2) #7 !dbg !2239 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %1, metadata !2246, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %2, metadata !2247, metadata !DIExpression()), !dbg !2248
  call void @make_format(ptr noundef %0, i64 noundef %1, ptr noundef @.str.89, ptr noundef @.str.91), !dbg !2249
  %4 = call i32 (ptr, ...) @printf(ptr noundef %0, i64 noundef %2), !dbg !2250
  ret i32 %4, !dbg !2251
}

; Function Attrs: nounwind ssp uwtable
define internal void @make_format(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #7 !dbg !2252 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2256, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %1, metadata !2257, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %2, metadata !2258, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %3, metadata !2259, metadata !DIExpression()), !dbg !2263
  %5 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !2264
  call void @llvm.dbg.value(metadata ptr %5, metadata !2260, metadata !DIExpression()), !dbg !2263
  %6 = getelementptr inbounds i8, ptr %0, i64 %1, !dbg !2265
  call void @llvm.dbg.value(metadata ptr %6, metadata !2262, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %5, metadata !2261, metadata !DIExpression()), !dbg !2263
  br label %7, !dbg !2266

7:                                                ; preds = %25, %4
  %.01 = phi ptr [ %5, %4 ], [ %.12, %25 ], !dbg !2263
  %.0 = phi ptr [ %5, %4 ], [ %26, %25 ], !dbg !2268
  call void @llvm.dbg.value(metadata ptr %.0, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %.01, metadata !2260, metadata !DIExpression()), !dbg !2263
  %8 = icmp ult ptr %.0, %6, !dbg !2269
  br i1 %8, label %9, label %14, !dbg !2271

9:                                                ; preds = %7
  %10 = load i8, ptr %.0, align 1, !dbg !2272, !tbaa !948
  %11 = sext i8 %10 to i32, !dbg !2272
  %12 = call ptr @strchr(ptr noundef @printf_flags, i32 noundef %11), !dbg !2273
  %13 = icmp ne ptr %12, null, !dbg !2271
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i1 [ false, %7 ], [ %13, %9 ], !dbg !2274
  br i1 %15, label %16, label %27, !dbg !2275

16:                                               ; preds = %14
  %17 = load i8, ptr %.0, align 1, !dbg !2276, !tbaa !948
  %18 = sext i8 %17 to i32, !dbg !2276
  %19 = call ptr @strchr(ptr noundef %2, i32 noundef %18), !dbg !2278
  %20 = icmp ne ptr %19, null, !dbg !2278
  br i1 %20, label %21, label %24, !dbg !2279

21:                                               ; preds = %16
  %22 = load i8, ptr %.0, align 1, !dbg !2280, !tbaa !948
  %23 = getelementptr inbounds i8, ptr %.01, i32 1, !dbg !2281
  call void @llvm.dbg.value(metadata ptr %23, metadata !2260, metadata !DIExpression()), !dbg !2263
  store i8 %22, ptr %.01, align 1, !dbg !2282, !tbaa !948
  br label %24, !dbg !2283

24:                                               ; preds = %21, %16
  %.12 = phi ptr [ %23, %21 ], [ %.01, %16 ], !dbg !2263
  call void @llvm.dbg.value(metadata ptr %.12, metadata !2260, metadata !DIExpression()), !dbg !2263
  br label %25, !dbg !2284

25:                                               ; preds = %24
  %26 = getelementptr inbounds i8, ptr %.0, i32 1, !dbg !2285
  call void @llvm.dbg.value(metadata ptr %26, metadata !2261, metadata !DIExpression()), !dbg !2263
  br label %7, !dbg !2286, !llvm.loop !2287

27:                                               ; preds = %14
  br label %28, !dbg !2289

28:                                               ; preds = %30, %27
  %.2 = phi ptr [ %.01, %27 ], [ %33, %30 ], !dbg !2263
  %.1 = phi ptr [ %.0, %27 ], [ %31, %30 ], !dbg !2263
  call void @llvm.dbg.value(metadata ptr %.1, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %.2, metadata !2260, metadata !DIExpression()), !dbg !2263
  %29 = icmp ult ptr %.1, %6, !dbg !2290
  br i1 %29, label %30, label %34, !dbg !2289

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, ptr %.1, i32 1, !dbg !2291
  call void @llvm.dbg.value(metadata ptr %31, metadata !2261, metadata !DIExpression()), !dbg !2263
  %32 = load i8, ptr %.1, align 1, !dbg !2292, !tbaa !948
  %33 = getelementptr inbounds i8, ptr %.2, i32 1, !dbg !2293
  call void @llvm.dbg.value(metadata ptr %33, metadata !2260, metadata !DIExpression()), !dbg !2263
  store i8 %32, ptr %.2, align 1, !dbg !2294, !tbaa !948
  br label %28, !dbg !2289, !llvm.loop !2295

34:                                               ; preds = %28
  %35 = call ptr @strcpy(ptr noundef %.2, ptr noundef %3), !dbg !2296
  ret void, !dbg !2297
}

declare !dbg !2298 ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare !dbg !2301 ptr @getenv(ptr noundef) #2

declare !dbg !2304 ptr @tzalloc(ptr noundef) #2

declare !dbg !2307 ptr @localtime_rz(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2317 i64 @nstrftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal ptr @timetostr(i64 noundef %0, ptr noundef %1) #3 !dbg !2323 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2327, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata ptr %1, metadata !2328, metadata !DIExpression()), !dbg !2329
  %3 = call ptr @imaxtostr(i64 noundef %0, ptr noundef %1), !dbg !2330
  ret ptr %3, !dbg !2331
}

declare !dbg !2332 ptr @imaxtostr(i64 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally { i64, i64 } @get_stat_birthtime(ptr noundef %0) #10 !dbg !2336 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2338, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2339, metadata !DIExpression()), !dbg !2341
  %3 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 10, !dbg !2342
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false), !dbg !2342, !tbaa.struct !1212
  %4 = getelementptr inbounds %struct.timespec, ptr %2, i32 0, i32 0, !dbg !2343
  %5 = load i64, ptr %4, align 8, !dbg !2343, !tbaa !1209
  %6 = icmp ne i64 %5, 0, !dbg !2345
  br i1 %6, label %7, label %15, !dbg !2346

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.timespec, ptr %2, i32 0, i32 1, !dbg !2347
  %9 = load i64, ptr %8, align 8, !dbg !2347, !tbaa !1210
  %10 = icmp sle i64 0, %9, !dbg !2348
  br i1 %10, label %11, label %15, !dbg !2349

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.timespec, ptr %2, i32 0, i32 1, !dbg !2350
  %13 = load i64, ptr %12, align 8, !dbg !2350, !tbaa !1210
  %14 = icmp slt i64 %13, 1000000000, !dbg !2351
  br i1 %14, label %18, label %15, !dbg !2352

15:                                               ; preds = %11, %7, %1
  %16 = getelementptr inbounds %struct.timespec, ptr %2, i32 0, i32 0, !dbg !2353
  store i64 -1, ptr %16, align 8, !dbg !2355, !tbaa !1209
  %17 = getelementptr inbounds %struct.timespec, ptr %2, i32 0, i32 1, !dbg !2356
  store i64 -1, ptr %17, align 8, !dbg !2357, !tbaa !1210
  br label %18, !dbg !2358

18:                                               ; preds = %15, %11
  %19 = load { i64, i64 }, ptr %2, align 8, !dbg !2359
  ret { i64, i64 } %19, !dbg !2359
}

declare !dbg !2360 noalias ptr @canonicalize_file_name(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @find_bind_mount(ptr noundef %0) #7 !dbg !588 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !592, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata ptr null, metadata !593, metadata !DIExpression()), !dbg !2361
  %4 = load i8, ptr @find_bind_mount.tried_mount_list, align 1, !dbg !2362, !tbaa !968, !range !1228, !noundef !811
  %5 = trunc i8 %4 to i1, !dbg !2362
  br i1 %5, label %13, label %6, !dbg !2364

6:                                                ; preds = %1
  %7 = call noalias ptr @read_file_system_list(i1 noundef zeroext false), !dbg !2365
  store ptr %7, ptr @find_bind_mount.mount_list, align 8, !dbg !2368, !tbaa !717
  %8 = icmp ne ptr %7, null, !dbg !2368
  br i1 %8, label %12, label %9, !dbg !2369

9:                                                ; preds = %6
  %10 = call ptr @__error(), !dbg !2370
  %11 = load i32, ptr %10, align 4, !dbg !2370, !tbaa !1000
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %11, ptr noundef @.str.82, ptr noundef @.str.83), !dbg !2371
  br label %12, !dbg !2371

12:                                               ; preds = %9, %6
  store i8 1, ptr @find_bind_mount.tried_mount_list, align 1, !dbg !2372, !tbaa !968
  br label %13, !dbg !2373

13:                                               ; preds = %12, %1
  call void @llvm.lifetime.start.p0(i64 144, ptr %2) #14, !dbg !2374
  call void @llvm.dbg.declare(metadata ptr %2, metadata !594, metadata !DIExpression()), !dbg !2375
  %14 = call i32 @rpl_stat(ptr noundef %0, ptr noundef %2), !dbg !2376
  %15 = icmp ne i32 %14, 0, !dbg !2378
  br i1 %15, label %16, label %17, !dbg !2379

16:                                               ; preds = %13
  br label %67, !dbg !2380

17:                                               ; preds = %13
  %18 = load ptr, ptr @find_bind_mount.mount_list, align 8, !dbg !2381, !tbaa !717
  call void @llvm.dbg.value(metadata ptr %18, metadata !595, metadata !DIExpression()), !dbg !2361
  br label %19, !dbg !2382

19:                                               ; preds = %63, %17
  %.02 = phi ptr [ null, %17 ], [ %.2, %63 ], !dbg !2361
  %.01 = phi ptr [ %18, %17 ], [ %65, %63 ], !dbg !2383
  call void @llvm.dbg.value(metadata ptr %.01, metadata !595, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata ptr %.02, metadata !593, metadata !DIExpression()), !dbg !2361
  %20 = icmp ne ptr %.01, null, !dbg !2384
  br i1 %20, label %21, label %66, !dbg !2384

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.mount_entry, ptr %.01, i32 0, i32 5, !dbg !2385
  %23 = load i8, ptr %22, align 4, !dbg !2385
  %24 = and i8 %23, 1, !dbg !2385
  %25 = zext i8 %24 to i32, !dbg !2385
  %26 = icmp ne i32 %25, 0, !dbg !2386
  br i1 %26, label %27, label %62, !dbg !2387

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.mount_entry, ptr %.01, i32 0, i32 0, !dbg !2388
  %29 = load ptr, ptr %28, align 8, !dbg !2388, !tbaa !2389
  %30 = getelementptr inbounds i8, ptr %29, i64 0, !dbg !2391
  %31 = load i8, ptr %30, align 1, !dbg !2391, !tbaa !948
  %32 = sext i8 %31 to i32, !dbg !2391
  %33 = icmp eq i32 %32, 47, !dbg !2392
  br i1 %33, label %34, label %62, !dbg !2393

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.mount_entry, ptr %.01, i32 0, i32 1, !dbg !2394
  %36 = load ptr, ptr %35, align 8, !dbg !2394, !tbaa !2395
  %37 = call i32 @strcmp(ptr noundef %36, ptr noundef %0), !dbg !2394
  %38 = icmp eq i32 %37, 0, !dbg !2394
  br i1 %38, label %39, label %62, !dbg !2396

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 144, ptr %3) #14, !dbg !2397
  call void @llvm.dbg.declare(metadata ptr %3, metadata !609, metadata !DIExpression()), !dbg !2398
  %40 = getelementptr inbounds %struct.mount_entry, ptr %.01, i32 0, i32 0, !dbg !2399
  %41 = load ptr, ptr %40, align 8, !dbg !2399, !tbaa !2389
  %42 = call i32 @rpl_stat(ptr noundef %41, ptr noundef %3), !dbg !2399
  %43 = icmp eq i32 %42, 0, !dbg !2401
  br i1 %43, label %44, label %59, !dbg !2402

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.stat, ptr %2, i32 0, i32 3, !dbg !2403
  %46 = load i64, ptr %45, align 8, !dbg !2403, !tbaa !1364
  %47 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 3, !dbg !2403
  %48 = load i64, ptr %47, align 8, !dbg !2403, !tbaa !1364
  %49 = icmp eq i64 %46, %48, !dbg !2403
  br i1 %49, label %50, label %59, !dbg !2403

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.stat, ptr %2, i32 0, i32 0, !dbg !2403
  %52 = load i32, ptr %51, align 8, !dbg !2403, !tbaa !1347
  %53 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 0, !dbg !2403
  %54 = load i32, ptr %53, align 8, !dbg !2403, !tbaa !1347
  %55 = icmp eq i32 %52, %54, !dbg !2403
  br i1 %55, label %56, label %59, !dbg !2404

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.mount_entry, ptr %.01, i32 0, i32 0, !dbg !2405
  %58 = load ptr, ptr %57, align 8, !dbg !2405, !tbaa !2389
  call void @llvm.dbg.value(metadata ptr %58, metadata !593, metadata !DIExpression()), !dbg !2361
  br label %60, !dbg !2407

59:                                               ; preds = %50, %44, %39
  br label %60, !dbg !2408

60:                                               ; preds = %59, %56
  %.03 = phi i32 [ 2, %56 ], [ 0, %59 ]
  %.1 = phi ptr [ %58, %56 ], [ %.02, %59 ], !dbg !2361
  call void @llvm.dbg.value(metadata ptr %.1, metadata !593, metadata !DIExpression()), !dbg !2361
  call void @llvm.lifetime.end.p0(i64 144, ptr %3) #14, !dbg !2408
  switch i32 %.03, label %68 [
    i32 0, label %61
    i32 2, label %66
  ]

61:                                               ; preds = %60
  br label %62, !dbg !2409

62:                                               ; preds = %61, %34, %27, %21
  %.2 = phi ptr [ %.1, %61 ], [ %.02, %34 ], [ %.02, %27 ], [ %.02, %21 ], !dbg !2361
  call void @llvm.dbg.value(metadata ptr %.2, metadata !593, metadata !DIExpression()), !dbg !2361
  br label %63, !dbg !2410

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.mount_entry, ptr %.01, i32 0, i32 6, !dbg !2411
  %65 = load ptr, ptr %64, align 8, !dbg !2411, !tbaa !2412
  call void @llvm.dbg.value(metadata ptr %65, metadata !595, metadata !DIExpression()), !dbg !2361
  br label %19, !dbg !2413, !llvm.loop !2414

66:                                               ; preds = %60, %19
  %.3 = phi ptr [ %.1, %60 ], [ %.02, %19 ], !dbg !2361
  call void @llvm.dbg.value(metadata ptr %.3, metadata !593, metadata !DIExpression()), !dbg !2361
  br label %67

67:                                               ; preds = %66, %16
  %.0 = phi ptr [ null, %16 ], [ %.3, %66 ], !dbg !2361
  call void @llvm.lifetime.end.p0(i64 144, ptr %2) #14, !dbg !2416
  ret ptr %.0, !dbg !2416

68:                                               ; preds = %60
  unreachable
}

declare !dbg !2417 noalias ptr @find_mount_point(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !2421 noalias ptr @read_file_system_list(i1 noundef zeroext) #2

declare !dbg !2424 void @filemodestring(ptr noundef, ptr noundef) #2

declare !dbg !2428 i32 @"\01_statfs$INODE64"(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @print_statfs(ptr noundef %0, i64 noundef %1, i8 noundef signext %2, i8 noundef signext %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #7 !dbg !239 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !241, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i64 %1, metadata !242, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %2, metadata !243, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %3, metadata !244, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %4, metadata !245, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata ptr %5, metadata !246, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata ptr %6, metadata !247, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata ptr %6, metadata !248, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 0, metadata !290, metadata !DIExpression()), !dbg !2432
  %8 = sext i8 %3 to i32, !dbg !2433
  switch i32 %8, label %76 [
    i32 110, label %9
    i32 105, label %10
    i32 108, label %36
    i32 116, label %37
    i32 84, label %41
    i32 98, label %43
    i32 102, label %47
    i32 97, label %51
    i32 115, label %55
    i32 83, label %60
    i32 99, label %68
    i32 100, label %72
  ], !dbg !2434

9:                                                ; preds = %7
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %5), !dbg !2435
  br label %79, !dbg !2436

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.statfs, ptr %6, i32 0, i32 7, !dbg !2437
  call void @llvm.dbg.value(metadata ptr %11, metadata !291, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 0, metadata !296, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 2, metadata !297, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 0, metadata !298, metadata !DIExpression()), !dbg !2439
  br label %12, !dbg !2440

12:                                               ; preds = %33, %10
  %.02 = phi i64 [ 0, %10 ], [ %32, %33 ], !dbg !2438
  %.01 = phi i32 [ 0, %10 ], [ %34, %33 ], !dbg !2441
  call void @llvm.dbg.value(metadata i32 %.01, metadata !298, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %.02, metadata !296, metadata !DIExpression()), !dbg !2438
  %13 = icmp slt i32 %.01, 2, !dbg !2442
  br i1 %13, label %14, label %18, !dbg !2443

14:                                               ; preds = %12
  %15 = sext i32 %.01 to i64, !dbg !2444
  %16 = mul i64 %15, 4, !dbg !2445
  %17 = icmp ult i64 %16, 8, !dbg !2446
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi i1 [ false, %12 ], [ %17, %14 ], !dbg !2447
  br i1 %19, label %21, label %20, !dbg !2448

20:                                               ; preds = %18
  br label %35

21:                                               ; preds = %18
  %22 = sub nsw i32 2, 1, !dbg !2449
  %23 = sub nsw i32 %22, %.01, !dbg !2450
  %24 = sext i32 %23 to i64, !dbg !2451
  %25 = getelementptr inbounds i32, ptr %11, i64 %24, !dbg !2451
  %26 = load i32, ptr %25, align 4, !dbg !2451, !tbaa !1000
  %27 = zext i32 %26 to i64, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %27, metadata !300, metadata !DIExpression()), !dbg !2452
  %28 = mul nsw i32 %.01, 8, !dbg !2453
  %29 = sext i32 %28 to i64, !dbg !2454
  %30 = mul i64 %29, 4, !dbg !2455
  %31 = shl i64 %27, %30, !dbg !2456
  %32 = or i64 %.02, %31, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %32, metadata !296, metadata !DIExpression()), !dbg !2438
  br label %33, !dbg !2458

33:                                               ; preds = %21
  %34 = add nsw i32 %.01, 1, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %34, metadata !298, metadata !DIExpression()), !dbg !2439
  br label %12, !dbg !2460, !llvm.loop !2461

35:                                               ; preds = %20
  call void @out_uint_x(ptr noundef %0, i64 noundef %1, i64 noundef %.02), !dbg !2463
  br label %79, !dbg !2464

36:                                               ; preds = %7
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef @.str.80), !dbg !2465
  br label %79, !dbg !2466

37:                                               ; preds = %7
  %38 = getelementptr inbounds %struct.statfs, ptr %6, i32 0, i32 9, !dbg !2467
  %39 = load i32, ptr %38, align 4, !dbg !2467, !tbaa !2468
  %40 = zext i32 %39 to i64, !dbg !2471
  call void @out_uint_x(ptr noundef %0, i64 noundef %1, i64 noundef %40), !dbg !2472
  br label %79, !dbg !2473

41:                                               ; preds = %7
  %42 = call ptr @human_fstype(ptr noundef %6), !dbg !2474
  call void @out_string(ptr noundef %0, i64 noundef %1, ptr noundef %42), !dbg !2475
  br label %79, !dbg !2476

43:                                               ; preds = %7
  %44 = getelementptr inbounds %struct.statfs, ptr %6, i32 0, i32 2, !dbg !2477
  %45 = load i64, ptr %44, align 8, !dbg !2477, !tbaa !2478
  %46 = call i32 @out_int(ptr noundef %0, i64 noundef %1, i64 noundef %45), !dbg !2479
  br label %79, !dbg !2480

47:                                               ; preds = %7
  %48 = getelementptr inbounds %struct.statfs, ptr %6, i32 0, i32 3, !dbg !2481
  %49 = load i64, ptr %48, align 8, !dbg !2481, !tbaa !2482
  %50 = call i32 @out_int(ptr noundef %0, i64 noundef %1, i64 noundef %49), !dbg !2483
  br label %79, !dbg !2484

51:                                               ; preds = %7
  %52 = getelementptr inbounds %struct.statfs, ptr %6, i32 0, i32 4, !dbg !2485
  %53 = load i64, ptr %52, align 8, !dbg !2485, !tbaa !2486
  %54 = call i32 @out_int(ptr noundef %0, i64 noundef %1, i64 noundef %53), !dbg !2487
  br label %79, !dbg !2488

55:                                               ; preds = %7
  %56 = getelementptr inbounds %struct.statfs, ptr %6, i32 0, i32 0, !dbg !2489
  %57 = load i32, ptr %56, align 8, !dbg !2489, !tbaa !2490
  %58 = zext i32 %57 to i64, !dbg !2491
  %59 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %58), !dbg !2492
  br label %79, !dbg !2493

60:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64 0, metadata !303, metadata !DIExpression()), !dbg !2494
  %61 = icmp ne i64 0, 0, !dbg !2495
  br i1 %61, label %66, label %62, !dbg !2497

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.statfs, ptr %6, i32 0, i32 0, !dbg !2498
  %64 = load i32, ptr %63, align 8, !dbg !2498, !tbaa !2490
  %65 = zext i32 %64 to i64, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %65, metadata !303, metadata !DIExpression()), !dbg !2494
  br label %66, !dbg !2500

66:                                               ; preds = %62, %60
  %.0 = phi i64 [ 0, %60 ], [ %65, %62 ], !dbg !2494
  call void @llvm.dbg.value(metadata i64 %.0, metadata !303, metadata !DIExpression()), !dbg !2494
  %67 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %.0), !dbg !2501
  br label %79, !dbg !2502

68:                                               ; preds = %7
  %69 = getelementptr inbounds %struct.statfs, ptr %6, i32 0, i32 5, !dbg !2503
  %70 = load i64, ptr %69, align 8, !dbg !2503, !tbaa !2504
  %71 = call i32 @out_uint(ptr noundef %0, i64 noundef %1, i64 noundef %70), !dbg !2505
  br label %79, !dbg !2506

72:                                               ; preds = %7
  %73 = getelementptr inbounds %struct.statfs, ptr %6, i32 0, i32 6, !dbg !2507
  %74 = load i64, ptr %73, align 8, !dbg !2507, !tbaa !2508
  %75 = call i32 @out_int(ptr noundef %0, i64 noundef %1, i64 noundef %74), !dbg !2509
  br label %79, !dbg !2510

76:                                               ; preds = %7
  %77 = load ptr, ptr @__stdoutp, align 8, !dbg !2511, !tbaa !717
  %78 = call i32 @fputc(i32 noundef 63, ptr noundef %77), !dbg !2512
  br label %79, !dbg !2513

79:                                               ; preds = %76, %72, %68, %66, %55, %51, %47, %43, %41, %37, %36, %35, %9
  %80 = trunc i8 0 to i1, !dbg !2514
  ret i1 %80, !dbg !2515
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @human_fstype(ptr noundef %0) #7 !dbg !2516 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !2521
  %2 = getelementptr inbounds %struct.statfs, ptr %0, i32 0, i32 12, !dbg !2522
  %3 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 0, !dbg !2523
  ret ptr %3, !dbg !2524
}

declare !dbg !2525 noalias nonnull ptr @xstrdup(ptr noundef) #2

declare !dbg !2526 noalias ptr @xasprintf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2530 i64 @argmatch(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare !dbg !2533 void @set_quoting_style(ptr noundef, i32 noundef) #2

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
attributes #8 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { allocsize(0) }

!llvm.dbg.cu = !{!84}
!llvm.ident = !{!698}
!llvm.module.flags = !{!699, !700, !701, !702, !703, !704}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1755, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/stat.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1758, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 31)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1759, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 37)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1765, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 896, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 112)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1769, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1080, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 135)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1773, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3344, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 418)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1781, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 48)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1782, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 57)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1784, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1960, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 245)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1791, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2600, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 325)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1800, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1976, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 247)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1810, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4712, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 589)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1825, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3824, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 478)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1839, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 240)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1848, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2000, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 250)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1858, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 55)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "fmt_terse_regular", scope: !84, file: !2, line: 190, type: !695, isLocal: true, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !85, retainedTypes: !158, globals: !305, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!85 = !{!86, !90, !95, !101, !115}
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 199, baseType: !87, size: 32, elements: !88)
!87 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!88 = !{!89}
!89 = !DIEnumerator(name: "PRINTF_OPTION", value: 128)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cached_mode", file: !2, line: 204, baseType: !87, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "cached_default", value: 0)
!93 = !DIEnumerator(name: "cached_never", value: 1)
!94 = !DIEnumerator(name: "cached_always", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 332, baseType: !97, size: 32, elements: !98)
!96 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !{!99, !100}
!99 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!100 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !102, line: 32, baseType: !87, size: 32, elements: !103)
!102 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!104 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!105 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!106 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!107 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!108 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!109 = !DIEnumerator(name: "c_quoting_style", value: 5)
!110 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!111 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!112 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!113 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!114 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !116, file: !2, line: 1142, baseType: !87, size: 32, elements: !156)
!116 = distinct !DISubprogram(name: "print_it", scope: !2, file: !2, line: 1133, type: !117, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !131)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !120, !97, !120, !122, !129}
!119 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!119, !125, !126, !4, !4, !97, !120, !129}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 46, baseType: !128)
!127 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!128 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !147, !148, !149, !152, !153}
!132 = !DILocalVariable(name: "format", arg: 1, scope: !116, file: !2, line: 1133, type: !120)
!133 = !DILocalVariable(name: "fd", arg: 2, scope: !116, file: !2, line: 1133, type: !97)
!134 = !DILocalVariable(name: "filename", arg: 3, scope: !116, file: !2, line: 1133, type: !120)
!135 = !DILocalVariable(name: "print_func", arg: 4, scope: !116, file: !2, line: 1134, type: !122)
!136 = !DILocalVariable(name: "data", arg: 5, scope: !116, file: !2, line: 1136, type: !129)
!137 = !DILocalVariable(name: "fail", scope: !116, file: !2, line: 1138, type: !119)
!138 = !DILocalVariable(name: "n_alloc", scope: !116, file: !2, line: 1149, type: !126)
!139 = !DILocalVariable(name: "dest", scope: !116, file: !2, line: 1150, type: !125)
!140 = !DILocalVariable(name: "b", scope: !116, file: !2, line: 1151, type: !120)
!141 = !DILocalVariable(name: "len", scope: !142, file: !2, line: 1158, type: !126)
!142 = distinct !DILexicalBlock(scope: !143, file: !2, line: 1157, column: 11)
!143 = distinct !DILexicalBlock(scope: !144, file: !2, line: 1155, column: 9)
!144 = distinct !DILexicalBlock(scope: !145, file: !2, line: 1153, column: 5)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 1152, column: 3)
!146 = distinct !DILexicalBlock(scope: !116, file: !2, line: 1152, column: 3)
!147 = !DILocalVariable(name: "fmt_char", scope: !142, file: !2, line: 1159, type: !4)
!148 = !DILocalVariable(name: "mod_char", scope: !142, file: !2, line: 1160, type: !4)
!149 = !DILocalVariable(name: "esc_value", scope: !150, file: !2, line: 1211, type: !97)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 1210, column: 13)
!151 = distinct !DILexicalBlock(scope: !143, file: !2, line: 1209, column: 15)
!152 = !DILocalVariable(name: "esc_length", scope: !150, file: !2, line: 1212, type: !97)
!153 = !DILocalVariable(name: "esc_value", scope: !154, file: !2, line: 1223, type: !97)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 1222, column: 13)
!155 = distinct !DILexicalBlock(scope: !151, file: !2, line: 1221, column: 20)
!156 = !{!157}
!157 = !DIEnumerator(name: "MAX_ADDITIONAL_BYTES", value: 2)
!158 = !{!120, !129, !125, !159, !160, !231, !233, !126, !235, !210, !87, !237}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "print_args", file: !2, line: 1284, size: 192, elements: !162)
!162 = !{!163, !230}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !161, file: !2, line: 1285, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !166, line: 182, size: 1152, elements: !167)
!166 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!167 = !{!168, !175, !181, !184, !188, !193, !197, !198, !206, !207, !208, !209, !215, !219, !223, !224, !225, !226}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !165, file: !166, line: 182, baseType: !169, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !170, line: 31, baseType: !171)
!170 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !172, line: 57, baseType: !173)
!172 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !174, line: 46, baseType: !97)
!174 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !165, file: !166, line: 182, baseType: !176, size: 16, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !177, line: 31, baseType: !178)
!177 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !172, line: 70, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !174, line: 45, baseType: !180)
!180 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !165, file: !166, line: 182, baseType: !182, size: 16, offset: 48)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !183, line: 31, baseType: !179)
!183 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !165, file: !166, line: 182, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !172, line: 62, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !174, line: 49, baseType: !187)
!187 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !165, file: !166, line: 182, baseType: !189, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !190, line: 31, baseType: !191)
!190 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !172, line: 75, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !174, line: 47, baseType: !87)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !165, file: !166, line: 182, baseType: !194, size: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !195, line: 31, baseType: !196)
!195 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !172, line: 60, baseType: !192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !165, file: !166, line: 182, baseType: !169, size: 32, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !165, file: !166, line: 182, baseType: !199, size: 128, offset: 256)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !200, line: 33, size: 128, elements: !201)
!200 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!201 = !{!202, !205}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !199, file: !200, line: 35, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !174, line: 122, baseType: !204)
!204 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !199, file: !200, line: 36, baseType: !204, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !165, file: !166, line: 182, baseType: !199, size: 128, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !165, file: !166, line: 182, baseType: !199, size: 128, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !165, file: !166, line: 182, baseType: !199, size: 128, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !165, file: !166, line: 182, baseType: !210, size: 64, offset: 768)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !211, line: 31, baseType: !212)
!211 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !172, line: 71, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !174, line: 48, baseType: !214)
!214 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !165, file: !166, line: 182, baseType: !216, size: 64, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !217, line: 31, baseType: !218)
!217 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !172, line: 55, baseType: !213)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !165, file: !166, line: 182, baseType: !220, size: 32, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !221, line: 31, baseType: !222)
!221 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !172, line: 56, baseType: !173)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !165, file: !166, line: 182, baseType: !192, size: 32, offset: 928)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !165, file: !166, line: 182, baseType: !192, size: 32, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !165, file: !166, line: 182, baseType: !173, size: 32, offset: 992)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !165, file: !166, line: 182, baseType: !227, size: 128, offset: 1024)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 128, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 2)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !161, file: !2, line: 1286, baseType: !199, size: 128, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !232, line: 30, baseType: !97)
!232 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_int32_t.h", directory: "")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int32_t", file: !234, line: 30, baseType: !87)
!234 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_u_int32_t.h", directory: "")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !236, line: 32, baseType: !128)
!236 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsid_word", scope: !239, file: !2, line: 880, baseType: !87)
!239 = distinct !DISubprogram(name: "print_statfs", scope: !2, file: !2, line: 862, type: !123, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !290, !291, !296, !297, !298, !300, !303}
!241 = !DILocalVariable(name: "pformat", arg: 1, scope: !239, file: !2, line: 862, type: !125)
!242 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !239, file: !2, line: 862, type: !126)
!243 = !DILocalVariable(name: "mod", arg: 3, scope: !239, file: !2, line: 862, type: !4)
!244 = !DILocalVariable(name: "m", arg: 4, scope: !239, file: !2, line: 862, type: !4)
!245 = !DILocalVariable(name: "fd", arg: 5, scope: !239, file: !2, line: 863, type: !97)
!246 = !DILocalVariable(name: "filename", arg: 6, scope: !239, file: !2, line: 863, type: !120)
!247 = !DILocalVariable(name: "data", arg: 7, scope: !239, file: !2, line: 864, type: !129)
!248 = !DILocalVariable(name: "statfsbuf", scope: !239, file: !2, line: 866, type: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !252, line: 130, size: 17344, elements: !253)
!252 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/mount.h", directory: "")
!253 = !{!254, !257, !258, !261, !262, !263, !264, !265, !272, !273, !274, !275, !276, !280, !284, !285, !286}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !251, file: !252, line: 130, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !256, line: 31, baseType: !87)
!256 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uint32_t.h", directory: "")
!257 = !DIDerivedType(tag: DW_TAG_member, name: "f_iosize", scope: !251, file: !252, line: 130, baseType: !231, size: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !251, file: !252, line: 130, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !260, line: 31, baseType: !187)
!260 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uint64_t.h", directory: "")
!261 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !251, file: !252, line: 130, baseType: !259, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !251, file: !252, line: 130, baseType: !259, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !251, file: !252, line: 130, baseType: !259, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !251, file: !252, line: 130, baseType: !259, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !251, file: !252, line: 130, baseType: !266, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsid_t", file: !267, line: 31, baseType: !268)
!267 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_fsid_t.h", directory: "")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsid", file: !267, line: 31, size: 64, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !268, file: !267, line: 31, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 64, elements: !228)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !251, file: !252, line: 130, baseType: !189, size: 32, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !251, file: !252, line: 130, baseType: !255, size: 32, offset: 480)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !251, file: !252, line: 130, baseType: !255, size: 32, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "f_fssubtype", scope: !251, file: !252, line: 130, baseType: !255, size: 32, offset: 544)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "f_fstypename", scope: !251, file: !252, line: 130, baseType: !277, size: 128, offset: 576)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 16)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_mntonname", scope: !251, file: !252, line: 130, baseType: !281, size: 8192, offset: 704)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 1024)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "f_mntfromname", scope: !251, file: !252, line: 130, baseType: !281, size: 8192, offset: 8896)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags_ext", scope: !251, file: !252, line: 130, baseType: !255, size: 32, offset: 17088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "f_reserved", scope: !251, file: !252, line: 130, baseType: !287, size: 224, offset: 17120)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 224, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 7)
!290 = !DILocalVariable(name: "fail", scope: !239, file: !2, line: 867, type: !119)
!291 = !DILocalVariable(name: "p", scope: !292, file: !2, line: 885, type: !294)
!292 = distinct !DILexicalBlock(scope: !293, file: !2, line: 876, column: 7)
!293 = distinct !DILexicalBlock(scope: !239, file: !2, line: 870, column: 5)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!296 = !DILocalVariable(name: "fsid", scope: !292, file: !2, line: 889, type: !235)
!297 = !DILocalVariable(name: "words", scope: !292, file: !2, line: 890, type: !97)
!298 = !DILocalVariable(name: "i", scope: !299, file: !2, line: 891, type: !97)
!299 = distinct !DILexicalBlock(scope: !292, file: !2, line: 891, column: 9)
!300 = !DILocalVariable(name: "u", scope: !301, file: !2, line: 893, type: !235)
!301 = distinct !DILexicalBlock(scope: !302, file: !2, line: 892, column: 11)
!302 = distinct !DILexicalBlock(scope: !299, file: !2, line: 891, column: 9)
!303 = !DILocalVariable(name: "frsize", scope: !304, file: !2, line: 928, type: !235)
!304 = distinct !DILexicalBlock(scope: !293, file: !2, line: 927, column: 7)
!305 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !77, !306, !311, !316, !321, !326, !329, !334, !336, !341, !346, !351, !353, !358, !360, !362, !364, !366, !368, !370, !82, !375, !380, !382, !384, !389, !394, !396, !398, !400, !402, !404, !409, !414, !419, !424, !426, !431, !436, !441, !443, !445, !448, !450, !452, !454, !456, !461, !473, !475, !479, !481, !483, !485, !489, !491, !496, !501, !506, !508, !513, !518, !520, !525, !527, !529, !534, !536, !541, !544, !549, !554, !556, !558, !560, !562, !564, !566, !568, !570, !579, !581, !586, !615, !617, !619, !624, !656, !662, !664, !669, !671, !673, !678, !680, !682, !684, !686, !691, !693}
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1869, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 68)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1874, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1528, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 191)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1874, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 5)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1892, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 1)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1897, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !228)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1902, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 6)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1915, type: !328, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1931, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 9)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1949, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 14)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1949, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 15)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1958, type: !277, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1964, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 3)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "follow_links", scope: !84, file: !2, line: 235, type: !119, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "interpret_backslash_escapes", scope: !84, file: !2, line: 239, type: !119, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "decimal_point", scope: !84, file: !2, line: 246, type: !120, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "decimal_point_len", scope: !84, file: !2, line: 247, type: !126, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "dont_sync", scope: !84, file: !2, line: 1290, type: !119, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "force_sync", scope: !84, file: !2, line: 1293, type: !119, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !96, line: 586, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 75)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "fmt_terse_fs", scope: !84, file: !2, line: 189, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 272, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 34)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !96, line: 660, type: !328, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !96, line: 660, type: !277, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !96, line: 661, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 10)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !96, line: 661, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 22)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !96, line: 662, type: !386, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !96, line: 662, type: !348, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !96, line: 663, type: !386, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !96, line: 664, type: !386, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !96, line: 665, type: !386, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !96, line: 678, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 23)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !96, line: 678, type: !411, isLocal: true, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 40)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !96, line: 683, type: !416, isLocal: true, isDefinition: true)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 4)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !96, line: 689, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 71)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !96, line: 695, type: !318, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !96, line: 696, type: !428, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 27)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !96, line: 698, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 51)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !96, line: 699, type: !438, isLocal: true, isDefinition: true)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 12)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !438, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !438, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !288)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !447, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !331, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !447, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !318, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 8)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "long_options", scope: !84, file: !2, line: 221, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 2304, elements: !339)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !466, line: 50, size: 256, elements: !467)
!466 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!467 = !{!468, !469, !470, !472}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !465, file: !466, line: 52, baseType: !120, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !465, file: !466, line: 55, baseType: !97, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !465, file: !466, line: 56, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !465, file: !466, line: 57, baseType: !97, size: 32, offset: 192)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "trailing_delim", scope: !84, file: !2, line: 243, type: !120, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "cached_modes", scope: !84, file: !2, line: 216, type: !477, isLocal: true, isDefinition: true)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 96, elements: !356)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !458, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !331, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !447, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "cached_args", scope: !84, file: !2, line: 211, type: !487, isLocal: true, isDefinition: true)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 256, elements: !417)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1055, type: !343, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1064, type: !493, isLocal: true, isDefinition: true)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 65)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1675, type: !498, isLocal: true, isDefinition: true)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1376, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 172)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1696, type: !503, isLocal: true, isDefinition: true)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 58)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1706, type: !318, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1706, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 64)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1714, type: !515, isLocal: true, isDefinition: true)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 41)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1723, type: !39, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1741, type: !522, isLocal: true, isDefinition: true)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 45)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1266, type: !328, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1268, type: !308, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1275, type: !531, isLocal: true, isDefinition: true)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 43)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1174, type: !391, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1236, type: !538, isLocal: true, isDefinition: true)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 36)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "printf_flags", scope: !84, file: !2, line: 186, type: !543, isLocal: true, isDefinition: true)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !459)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "digits", scope: !84, file: !2, line: 178, type: !546, isLocal: true, isDefinition: true)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 88, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 11)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1528, type: !551, isLocal: true, isDefinition: true)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 29)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1532, type: !318, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1572, type: !458, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !2, line: 693, type: !328, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !2, line: 705, type: !416, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !2, line: 705, type: !355, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !2, line: 717, type: !416, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !2, line: 717, type: !355, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !2, line: 711, type: !355, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "modebuf", scope: !572, file: !2, line: 639, type: !438, isLocal: true, isDefinition: true)
!572 = distinct !DISubprogram(name: "human_access", scope: !2, file: !2, line: 637, type: !573, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !577)
!573 = !DISubroutineType(types: !574)
!574 = !{!125, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!577 = !{!578}
!578 = !DILocalVariable(name: "statbuf", arg: 1, scope: !572, file: !2, line: 637, type: !575)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !2, line: 996, type: !328, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1007, type: !583, isLocal: true, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 26)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "mount_list", scope: !588, file: !2, line: 956, type: !596, isLocal: true, isDefinition: true)
!588 = distinct !DISubprogram(name: "find_bind_mount", scope: !2, file: !2, line: 952, type: !589, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{!120, !120}
!591 = !{!592, !593, !594, !595, !609}
!592 = !DILocalVariable(name: "name", arg: 1, scope: !588, file: !2, line: 952, type: !120)
!593 = !DILocalVariable(name: "bind_mount", scope: !588, file: !2, line: 954, type: !120)
!594 = !DILocalVariable(name: "name_stats", scope: !588, file: !2, line: 965, type: !165)
!595 = !DILocalVariable(name: "me", scope: !588, file: !2, line: 969, type: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount_entry", file: !598, line: 25, size: 384, elements: !599)
!598 = !DIFile(filename: "../lib/mountlist.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "me_devname", scope: !597, file: !598, line: 27, baseType: !125, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "me_mountdir", scope: !597, file: !598, line: 28, baseType: !125, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "me_mntroot", scope: !597, file: !598, line: 29, baseType: !125, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "me_type", scope: !597, file: !598, line: 31, baseType: !125, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "me_dev", scope: !597, file: !598, line: 32, baseType: !169, size: 32, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "me_dummy", scope: !597, file: !598, line: 33, baseType: !87, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "me_remote", scope: !597, file: !598, line: 34, baseType: !87, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "me_type_malloced", scope: !597, file: !598, line: 35, baseType: !87, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "me_next", scope: !597, file: !598, line: 36, baseType: !596, size: 64, offset: 320)
!609 = !DILocalVariable(name: "dev_stats", scope: !610, file: !2, line: 975, type: !165)
!610 = distinct !DILexicalBlock(scope: !611, file: !2, line: 974, column: 9)
!611 = distinct !DILexicalBlock(scope: !612, file: !2, line: 972, column: 11)
!612 = distinct !DILexicalBlock(scope: !613, file: !2, line: 971, column: 5)
!613 = distinct !DILexicalBlock(scope: !614, file: !2, line: 970, column: 3)
!614 = distinct !DILexicalBlock(scope: !588, file: !2, line: 970, column: 3)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(name: "tried_mount_list", scope: !588, file: !2, line: 957, type: !119, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !2, line: 961, type: !355, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !2, line: 961, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 42)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "str", scope: !626, file: !2, line: 652, type: !653, isLocal: true, isDefinition: true)
!626 = distinct !DISubprogram(name: "human_time", scope: !2, file: !2, line: 647, type: !627, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!125, !199}
!629 = !{!630, !631, !646, !647}
!630 = !DILocalVariable(name: "t", arg: 1, scope: !626, file: !2, line: 647, type: !199)
!631 = !DILocalVariable(name: "tm", scope: !626, file: !2, line: 659, type: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !633, line: 75, size: 448, elements: !634)
!633 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/time.h", directory: "")
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !632, file: !633, line: 76, baseType: !97, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !632, file: !633, line: 77, baseType: !97, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !632, file: !633, line: 78, baseType: !97, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !632, file: !633, line: 79, baseType: !97, size: 32, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !632, file: !633, line: 80, baseType: !97, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !632, file: !633, line: 81, baseType: !97, size: 32, offset: 160)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !632, file: !633, line: 82, baseType: !97, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !632, file: !633, line: 83, baseType: !97, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !632, file: !633, line: 84, baseType: !97, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !632, file: !633, line: 85, baseType: !204, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !632, file: !633, line: 86, baseType: !125, size: 64, offset: 384)
!646 = !DILocalVariable(name: "ns", scope: !626, file: !2, line: 660, type: !97)
!647 = !DILocalVariable(name: "secbuf", scope: !648, file: !2, line: 665, type: !650)
!648 = distinct !DILexicalBlock(scope: !649, file: !2, line: 664, column: 5)
!649 = distinct !DILexicalBlock(scope: !626, file: !2, line: 661, column: 7)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 21)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 61)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "tz", scope: !626, file: !2, line: 656, type: !658, isLocal: true, isDefinition: true)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "timezone_t", file: !659, line: 896, baseType: !660)
!659 = !DIFile(filename: "./lib/time.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zone", file: !659, line: 896, flags: DIFlagFwdDecl)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !2, line: 658, type: !355, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !2, line: 662, type: !666, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 24)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !2, line: 666, type: !458, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !2, line: 790, type: !355, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !2, line: 829, type: !675, isLocal: true, isDefinition: true)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 13)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !2, line: 723, type: !331, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !2, line: 723, type: !416, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !2, line: 699, type: !355, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !2, line: 847, type: !14, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1110, type: !688, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 35)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1472, type: !428, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1483, type: !348, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 392, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 49)
!698 = !{!"Homebrew clang version 16.0.4"}
!699 = !{i32 7, !"Dwarf Version", i32 4}
!700 = !{i32 2, !"Debug Info Version", i32 3}
!701 = !{i32 1, !"wchar_size", i32 4}
!702 = !{i32 8, !"PIC Level", i32 2}
!703 = !{i32 7, !"uwtable", i32 2}
!704 = !{i32 7, !"frame-pointer", i32 2}
!705 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 1752, type: !706, scopeLine: 1753, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !97}
!708 = !{!709}
!709 = !DILocalVariable(name: "status", arg: 1, scope: !705, file: !2, line: 1752, type: !97)
!710 = !DILocation(line: 0, scope: !705)
!711 = !DILocation(line: 1754, column: 14, scope: !712)
!712 = distinct !DILexicalBlock(scope: !705, file: !2, line: 1754, column: 7)
!713 = !DILocation(line: 1754, column: 7, scope: !705)
!714 = !DILocation(line: 1755, column: 5, scope: !712)
!715 = !DILocation(line: 1755, column: 5, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !2, line: 1755, column: 5)
!717 = !{!718, !718, i64 0}
!718 = !{!"any pointer", !719, i64 0}
!719 = !{!"omnipotent char", !720, i64 0}
!720 = !{!"Simple C/C++ TBAA"}
!721 = !DILocation(line: 1758, column: 53, scope: !722)
!722 = distinct !DILexicalBlock(scope: !712, file: !2, line: 1757, column: 5)
!723 = !DILocation(line: 1758, column: 7, scope: !722)
!724 = !DILocation(line: 1761, column: 5, scope: !722)
!725 = !DILocation(line: 1759, column: 7, scope: !722)
!726 = !DILocation(line: 1763, column: 7, scope: !722)
!727 = !DILocation(line: 1768, column: 5, scope: !722)
!728 = !DILocation(line: 1765, column: 7, scope: !722)
!729 = !DILocation(line: 1772, column: 5, scope: !722)
!730 = !DILocation(line: 1769, column: 7, scope: !722)
!731 = !DILocation(line: 1780, column: 5, scope: !722)
!732 = !DILocation(line: 1773, column: 7, scope: !722)
!733 = !DILocation(line: 1781, column: 39, scope: !722)
!734 = !DILocation(line: 1781, column: 7, scope: !722)
!735 = !DILocation(line: 1782, column: 42, scope: !722)
!736 = !DILocation(line: 1782, column: 7, scope: !722)
!737 = !DILocation(line: 1789, column: 5, scope: !722)
!738 = !DILocation(line: 1784, column: 7, scope: !722)
!739 = !DILocation(line: 1799, column: 5, scope: !722)
!740 = !DILocation(line: 1791, column: 7, scope: !722)
!741 = !DILocation(line: 1809, column: 5, scope: !722)
!742 = !DILocation(line: 1800, column: 7, scope: !722)
!743 = !DILocation(line: 1824, column: 5, scope: !722)
!744 = !DILocation(line: 1810, column: 7, scope: !722)
!745 = !DILocation(line: 1837, column: 5, scope: !722)
!746 = !DILocation(line: 1825, column: 7, scope: !722)
!747 = !DILocation(line: 1847, column: 5, scope: !722)
!748 = !DILocation(line: 1839, column: 7, scope: !722)
!749 = !DILocation(line: 1856, column: 5, scope: !722)
!750 = !DILocation(line: 1848, column: 7, scope: !722)
!751 = !DILocation(line: 1858, column: 7, scope: !722)
!752 = !DILocation(line: 1869, column: 9, scope: !722)
!753 = !DILocation(line: 1874, column: 7, scope: !722)
!754 = !DILocation(line: 1875, column: 7, scope: !722)
!755 = !DILocation(line: 1877, column: 3, scope: !705)
!756 = !DISubprogram(name: "fprintf", scope: !757, file: !757, line: 155, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!757 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!758 = !DISubroutineType(types: !759)
!759 = !{!97, !760, !810, null}
!760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !763, line: 157, baseType: !764)
!763 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !763, line: 126, size: 1216, elements: !765)
!765 = !{!766, !769, !770, !771, !773, !774, !779, !780, !781, !785, !789, !794, !798, !799, !802, !803, !805, !807, !808, !809}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !764, file: !763, line: 127, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !764, file: !763, line: 128, baseType: !97, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !764, file: !763, line: 129, baseType: !97, size: 32, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !764, file: !763, line: 130, baseType: !772, size: 16, offset: 128)
!772 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !764, file: !763, line: 131, baseType: !772, size: 16, offset: 144)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !764, file: !763, line: 132, baseType: !775, size: 128, offset: 192)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !763, line: 92, size: 128, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !775, file: !763, line: 93, baseType: !767, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !775, file: !763, line: 94, baseType: !97, size: 32, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !764, file: !763, line: 133, baseType: !97, size: 32, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !764, file: !763, line: 136, baseType: !159, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !764, file: !763, line: 137, baseType: !782, size: 64, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!97, !159}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !764, file: !763, line: 138, baseType: !786, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!97, !159, !125, !97}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !764, file: !763, line: 139, baseType: !790, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!793, !159, !793, !97}
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !763, line: 81, baseType: !212)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !764, file: !763, line: 140, baseType: !795, size: 64, offset: 640)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!97, !159, !120, !97}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !764, file: !763, line: 143, baseType: !775, size: 128, offset: 704)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !764, file: !763, line: 144, baseType: !800, size: 64, offset: 832)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !763, line: 98, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !764, file: !763, line: 145, baseType: !97, size: 32, offset: 896)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !764, file: !763, line: 148, baseType: !804, size: 24, offset: 928)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 24, elements: !356)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !764, file: !763, line: 149, baseType: !806, size: 8, offset: 952)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 8, elements: !324)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !764, file: !763, line: 152, baseType: !775, size: 128, offset: 960)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !764, file: !763, line: 155, baseType: !97, size: 32, offset: 1088)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !764, file: !763, line: 156, baseType: !793, size: 64, offset: 1152)
!810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!811 = !{}
!812 = !DISubprogram(name: "printf", scope: !757, file: !757, line: 175, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!813 = !DISubroutineType(types: !814)
!814 = !{!97, !810, null}
!815 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !757, file: !757, line: 157, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!816 = !DISubroutineType(types: !817)
!817 = !{!97, !810, !760}
!818 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !96, file: !96, line: 584, type: !819, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !811)
!819 = !DISubroutineType(types: !820)
!820 = !{null}
!821 = !DILocation(line: 588, column: 5, scope: !818)
!822 = !DILocation(line: 586, column: 3, scope: !818)
!823 = !DILocation(line: 589, column: 1, scope: !818)
!824 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !96, file: !96, line: 657, type: !825, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !120}
!827 = !{!828, !829, !836, !837, !839, !840}
!828 = !DILocalVariable(name: "program", arg: 1, scope: !824, file: !96, line: 657, type: !120)
!829 = !DILocalVariable(name: "infomap", scope: !824, file: !96, line: 659, type: !830)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 896, elements: !288)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !824, file: !96, line: 659, size: 128, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !832, file: !96, line: 659, baseType: !120, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !832, file: !96, line: 659, baseType: !120, size: 64, offset: 64)
!836 = !DILocalVariable(name: "node", scope: !824, file: !96, line: 669, type: !120)
!837 = !DILocalVariable(name: "map_prog", scope: !824, file: !96, line: 670, type: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!839 = !DILocalVariable(name: "lc_messages", scope: !824, file: !96, line: 682, type: !120)
!840 = !DILocalVariable(name: "url_program", scope: !824, file: !96, line: 695, type: !120)
!841 = !DILocation(line: 0, scope: !824)
!842 = !DILocation(line: 659, column: 3, scope: !824)
!843 = !DILocation(line: 659, column: 67, scope: !824)
!844 = !DILocation(line: 670, column: 36, scope: !824)
!845 = !DILocation(line: 672, column: 3, scope: !824)
!846 = !DILocation(line: 672, column: 20, scope: !824)
!847 = !{!848, !718, i64 0}
!848 = !{!"infomap", !718, i64 0, !718, i64 8}
!849 = !DILocation(line: 672, column: 10, scope: !824)
!850 = !DILocation(line: 672, column: 28, scope: !824)
!851 = !DILocation(line: 672, column: 33, scope: !824)
!852 = !DILocation(line: 672, column: 31, scope: !824)
!853 = !DILocation(line: 673, column: 13, scope: !824)
!854 = distinct !{!854, !845, !853, !855, !856}
!855 = !{!"llvm.loop.mustprogress"}
!856 = !{!"llvm.loop.unroll.disable"}
!857 = !DILocation(line: 675, column: 17, scope: !858)
!858 = distinct !DILexicalBlock(scope: !824, file: !96, line: 675, column: 7)
!859 = !{!848, !718, i64 8}
!860 = !DILocation(line: 675, column: 7, scope: !858)
!861 = !DILocation(line: 675, column: 7, scope: !824)
!862 = !DILocation(line: 676, column: 22, scope: !858)
!863 = !DILocation(line: 676, column: 5, scope: !858)
!864 = !DILocation(line: 678, column: 3, scope: !824)
!865 = !DILocation(line: 682, column: 29, scope: !824)
!866 = !DILocation(line: 683, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !824, file: !96, line: 683, column: 7)
!868 = !DILocation(line: 683, column: 19, scope: !867)
!869 = !DILocation(line: 683, column: 22, scope: !867)
!870 = !DILocation(line: 683, column: 7, scope: !824)
!871 = !DILocation(line: 690, column: 61, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !96, line: 684, column: 5)
!873 = !DILocation(line: 689, column: 7, scope: !872)
!874 = !DILocation(line: 691, column: 5, scope: !872)
!875 = !DILocation(line: 695, column: 29, scope: !824)
!876 = !DILocation(line: 696, column: 3, scope: !824)
!877 = !DILocation(line: 699, column: 22, scope: !824)
!878 = !DILocation(line: 699, column: 17, scope: !824)
!879 = !DILocation(line: 698, column: 3, scope: !824)
!880 = !DILocation(line: 700, column: 1, scope: !824)
!881 = !DISubprogram(name: "exit", scope: !882, file: !882, line: 145, type: !706, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !811)
!882 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!883 = !DISubprogram(name: "strcmp", scope: !884, file: !884, line: 77, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!884 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!885 = !DISubroutineType(types: !886)
!886 = !{!97, !120, !120}
!887 = !DISubprogram(name: "setlocale", scope: !888, file: !888, line: 53, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!888 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!889 = !DISubroutineType(types: !890)
!890 = !{!125, !97, !120}
!891 = !DISubprogram(name: "strncmp", scope: !884, file: !884, line: 84, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!892 = !DISubroutineType(types: !893)
!893 = !{!97, !120, !120, !126}
!894 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1881, type: !895, scopeLine: 1882, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !898)
!895 = !DISubroutineType(types: !896)
!896 = !{!97, !97, !897}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!898 = !{!899, !900, !901, !902, !903, !904, !905, !906, !907, !937}
!899 = !DILocalVariable(name: "argc", arg: 1, scope: !894, file: !2, line: 1881, type: !97)
!900 = !DILocalVariable(name: "argv", arg: 2, scope: !894, file: !2, line: 1881, type: !897)
!901 = !DILocalVariable(name: "c", scope: !894, file: !2, line: 1883, type: !97)
!902 = !DILocalVariable(name: "fs", scope: !894, file: !2, line: 1884, type: !119)
!903 = !DILocalVariable(name: "terse", scope: !894, file: !2, line: 1885, type: !119)
!904 = !DILocalVariable(name: "format", scope: !894, file: !2, line: 1886, type: !125)
!905 = !DILocalVariable(name: "format2", scope: !894, file: !2, line: 1887, type: !125)
!906 = !DILocalVariable(name: "ok", scope: !894, file: !2, line: 1888, type: !119)
!907 = !DILocalVariable(name: "locale", scope: !894, file: !2, line: 1896, type: !908)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !911, line: 43, size: 768, elements: !912)
!911 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_locale.h", directory: "")
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !910, file: !911, line: 44, baseType: !125, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !910, file: !911, line: 45, baseType: !125, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !910, file: !911, line: 46, baseType: !125, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !910, file: !911, line: 47, baseType: !125, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !910, file: !911, line: 48, baseType: !125, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !910, file: !911, line: 49, baseType: !125, size: 64, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !910, file: !911, line: 50, baseType: !125, size: 64, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !910, file: !911, line: 51, baseType: !125, size: 64, offset: 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !910, file: !911, line: 52, baseType: !125, size: 64, offset: 512)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !910, file: !911, line: 53, baseType: !125, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !910, file: !911, line: 54, baseType: !4, size: 8, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !910, file: !911, line: 55, baseType: !4, size: 8, offset: 648)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !910, file: !911, line: 56, baseType: !4, size: 8, offset: 656)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !910, file: !911, line: 57, baseType: !4, size: 8, offset: 664)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !910, file: !911, line: 58, baseType: !4, size: 8, offset: 672)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !910, file: !911, line: 59, baseType: !4, size: 8, offset: 680)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !910, file: !911, line: 60, baseType: !4, size: 8, offset: 688)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !910, file: !911, line: 61, baseType: !4, size: 8, offset: 696)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !910, file: !911, line: 62, baseType: !4, size: 8, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !910, file: !911, line: 63, baseType: !4, size: 8, offset: 712)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !910, file: !911, line: 64, baseType: !4, size: 8, offset: 720)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !910, file: !911, line: 65, baseType: !4, size: 8, offset: 728)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !910, file: !911, line: 66, baseType: !4, size: 8, offset: 736)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !910, file: !911, line: 67, baseType: !4, size: 8, offset: 744)
!937 = !DILocalVariable(name: "i", scope: !938, file: !2, line: 1974, type: !97)
!938 = distinct !DILexicalBlock(scope: !894, file: !2, line: 1974, column: 3)
!939 = !DILocation(line: 0, scope: !894)
!940 = !DILocation(line: 1891, column: 21, scope: !894)
!941 = !DILocation(line: 1891, column: 3, scope: !894)
!942 = !DILocation(line: 1892, column: 3, scope: !894)
!943 = !DILocation(line: 1896, column: 32, scope: !894)
!944 = !DILocation(line: 1897, column: 28, scope: !894)
!945 = !{!946, !718, i64 0}
!946 = !{!"lconv", !718, i64 0, !718, i64 8, !718, i64 16, !718, i64 24, !718, i64 32, !718, i64 40, !718, i64 48, !718, i64 56, !718, i64 64, !718, i64 72, !719, i64 80, !719, i64 81, !719, i64 82, !719, i64 83, !719, i64 84, !719, i64 85, !719, i64 86, !719, i64 87, !719, i64 88, !719, i64 89, !719, i64 90, !719, i64 91, !719, i64 92, !719, i64 93}
!947 = !DILocation(line: 1897, column: 20, scope: !894)
!948 = !{!719, !719, i64 0}
!949 = !DILocation(line: 1897, column: 55, scope: !894)
!950 = !DILocation(line: 1897, column: 17, scope: !894)
!951 = !DILocation(line: 1898, column: 31, scope: !894)
!952 = !DILocation(line: 1898, column: 23, scope: !894)
!953 = !DILocation(line: 1898, column: 21, scope: !894)
!954 = !{!955, !955, i64 0}
!955 = !{!"long", !719, i64 0}
!956 = !DILocation(line: 1900, column: 3, scope: !894)
!957 = !DILocation(line: 1902, column: 3, scope: !894)
!958 = !DILocation(line: 1885, column: 8, scope: !894)
!959 = !DILocation(line: 1884, column: 8, scope: !894)
!960 = !DILocation(line: 1886, column: 9, scope: !894)
!961 = !DILocation(line: 1902, column: 15, scope: !894)
!962 = !DILocation(line: 1902, column: 70, scope: !894)
!963 = !DILocation(line: 1904, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !894, file: !2, line: 1903, column: 5)
!965 = !DILocation(line: 1907, column: 20, scope: !966)
!966 = distinct !DILexicalBlock(scope: !964, file: !2, line: 1905, column: 9)
!967 = !DILocation(line: 1908, column: 39, scope: !966)
!968 = !{!969, !969, i64 0}
!969 = !{!"_Bool", !719, i64 0}
!970 = !DILocation(line: 1909, column: 26, scope: !966)
!971 = !DILocation(line: 1910, column: 11, scope: !966)
!972 = !DILocation(line: 1913, column: 20, scope: !966)
!973 = !DILocation(line: 1914, column: 39, scope: !966)
!974 = !DILocation(line: 1915, column: 26, scope: !966)
!975 = !DILocation(line: 1916, column: 11, scope: !966)
!976 = !DILocation(line: 1919, column: 24, scope: !966)
!977 = !DILocation(line: 1920, column: 11, scope: !966)
!978 = !DILocation(line: 1924, column: 11, scope: !966)
!979 = !DILocation(line: 1928, column: 11, scope: !966)
!980 = !DILocation(line: 1931, column: 19, scope: !966)
!981 = !DILocation(line: 1931, column: 11, scope: !966)
!982 = !DILocation(line: 1934, column: 28, scope: !983)
!983 = distinct !DILexicalBlock(scope: !966, file: !2, line: 1932, column: 13)
!984 = !DILocation(line: 1935, column: 27, scope: !983)
!985 = !DILocation(line: 1936, column: 17, scope: !983)
!986 = !DILocation(line: 1938, column: 28, scope: !983)
!987 = !DILocation(line: 1939, column: 27, scope: !983)
!988 = !DILocation(line: 1940, column: 17, scope: !983)
!989 = !DILocation(line: 1942, column: 28, scope: !983)
!990 = !DILocation(line: 1943, column: 27, scope: !983)
!991 = !DILocation(line: 1944, column: 13, scope: !983)
!992 = !DILocation(line: 1945, column: 11, scope: !966)
!993 = !DILocation(line: 1947, column: 9, scope: !966)
!994 = !DILocation(line: 1949, column: 9, scope: !966)
!995 = !DILocation(line: 1952, column: 11, scope: !966)
!996 = distinct !{!996, !957, !997, !855, !856}
!997 = !DILocation(line: 1954, column: 5, scope: !894)
!998 = !DILocation(line: 1956, column: 15, scope: !999)
!999 = distinct !DILexicalBlock(scope: !894, file: !2, line: 1956, column: 7)
!1000 = !{!1001, !1001, i64 0}
!1001 = !{!"int", !719, i64 0}
!1002 = !DILocation(line: 1956, column: 12, scope: !999)
!1003 = !DILocation(line: 1956, column: 7, scope: !894)
!1004 = !DILocation(line: 1958, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !999, file: !2, line: 1957, column: 5)
!1006 = !DILocation(line: 1959, column: 7, scope: !1005)
!1007 = !DILocation(line: 1962, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !894, file: !2, line: 1962, column: 7)
!1009 = !DILocation(line: 1962, column: 7, scope: !894)
!1010 = !DILocation(line: 1964, column: 11, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 1964, column: 11)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 1963, column: 5)
!1013 = !DILocation(line: 1964, column: 11, scope: !1012)
!1014 = !DILocation(line: 1965, column: 9, scope: !1011)
!1015 = !DILocation(line: 1967, column: 5, scope: !1012)
!1016 = !DILocation(line: 1970, column: 32, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 1969, column: 5)
!1018 = !DILocation(line: 1970, column: 36, scope: !1017)
!1019 = !DILocation(line: 1970, column: 16, scope: !1017)
!1020 = !DILocation(line: 1971, column: 33, scope: !1017)
!1021 = !DILocation(line: 1971, column: 37, scope: !1017)
!1022 = !DILocation(line: 1971, column: 17, scope: !1017)
!1023 = !DILocation(line: 0, scope: !1008)
!1024 = !DILocation(line: 1974, column: 16, scope: !938)
!1025 = !DILocation(line: 0, scope: !938)
!1026 = !DILocation(line: 1974, column: 8, scope: !938)
!1027 = !DILocation(line: 1974, scope: !938)
!1028 = !DILocation(line: 1974, column: 26, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !938, file: !2, line: 1974, column: 3)
!1030 = !DILocation(line: 1974, column: 3, scope: !938)
!1031 = !DILocation(line: 1975, column: 12, scope: !1029)
!1032 = !DILocation(line: 1976, column: 25, scope: !1029)
!1033 = !DILocation(line: 1976, column: 14, scope: !1029)
!1034 = !DILocation(line: 1977, column: 23, scope: !1029)
!1035 = !DILocation(line: 1977, column: 14, scope: !1029)
!1036 = !DILocation(line: 1975, column: 8, scope: !1029)
!1037 = !DILocation(line: 1975, column: 5, scope: !1029)
!1038 = !DILocation(line: 1974, column: 35, scope: !1029)
!1039 = !DILocation(line: 1974, column: 3, scope: !1029)
!1040 = distinct !{!1040, !1030, !1041, !855, !856}
!1041 = !DILocation(line: 1977, column: 48, scope: !938)
!1042 = !DILocation(line: 1979, column: 3, scope: !894)
!1043 = !DISubprogram(name: "set_program_name", scope: !1044, file: !1044, line: 37, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1044 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1045 = !DISubprogram(name: "localeconv", scope: !911, file: !911, line: 73, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!1049 = !DISubprogram(name: "strlen", scope: !884, file: !884, line: 82, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!128, !120}
!1052 = !DISubprogram(name: "atexit", scope: !882, file: !882, line: 133, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!97, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!1056 = !DISubprogram(name: "rpl_getopt_long", scope: !466, file: !466, line: 66, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!97, !97, !897, !120, !1059, !471}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!1060 = !DISubprogram(name: "__xargmatch_internal", scope: !1061, file: !1061, line: 94, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1061 = !DIFile(filename: "../lib/argmatch.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!1064, !120, !120, !1065, !129, !126, !1066, !119}
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !127, line: 35, baseType: !204)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !1061, line: 66, baseType: !1055)
!1067 = !DISubprogram(name: "version_etc", scope: !1068, file: !1068, line: 65, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1068 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !761, !120, !120, !120, null}
!1071 = !DISubprogram(name: "error", scope: !1072, file: !1072, line: 395, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1072 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !97, !97, !120, null}
!1075 = !DISubprogram(name: "strstr", scope: !884, file: !884, line: 89, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!125, !120, !120}
!1078 = distinct !DISubprogram(name: "getenv_quoting_style", scope: !2, file: !2, line: 1053, type: !819, scopeLine: 1054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1079)
!1079 = !{!1080, !1081}
!1080 = !DILocalVariable(name: "q_style", scope: !1078, file: !2, line: 1055, type: !120)
!1081 = !DILocalVariable(name: "i", scope: !1082, file: !2, line: 1058, type: !97)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 1057, column: 5)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 1056, column: 7)
!1084 = !DILocation(line: 1055, column: 25, scope: !1078)
!1085 = !DILocation(line: 0, scope: !1078)
!1086 = !DILocation(line: 1056, column: 7, scope: !1083)
!1087 = !DILocation(line: 1056, column: 7, scope: !1078)
!1088 = !DILocation(line: 1058, column: 15, scope: !1082)
!1089 = !DILocation(line: 0, scope: !1082)
!1090 = !DILocation(line: 1059, column: 13, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 1059, column: 11)
!1092 = !DILocation(line: 1059, column: 11, scope: !1082)
!1093 = !DILocation(line: 1060, column: 34, scope: !1091)
!1094 = !DILocation(line: 1060, column: 9, scope: !1091)
!1095 = !DILocation(line: 1063, column: 11, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 1062, column: 9)
!1097 = !DILocation(line: 1065, column: 57, scope: !1096)
!1098 = !DILocation(line: 1064, column: 11, scope: !1096)
!1099 = !DILocation(line: 1067, column: 5, scope: !1082)
!1100 = !DILocation(line: 1069, column: 5, scope: !1083)
!1101 = !DILocation(line: 1070, column: 1, scope: !1078)
!1102 = distinct !DISubprogram(name: "default_format", scope: !2, file: !2, line: 1664, type: !1103, scopeLine: 1665, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!125, !119, !119, !119}
!1105 = !{!1106, !1107, !1108, !1109, !1110}
!1106 = !DILocalVariable(name: "fs", arg: 1, scope: !1102, file: !2, line: 1664, type: !119)
!1107 = !DILocalVariable(name: "terse", arg: 2, scope: !1102, file: !2, line: 1664, type: !119)
!1108 = !DILocalVariable(name: "device", arg: 3, scope: !1102, file: !2, line: 1664, type: !119)
!1109 = !DILocalVariable(name: "format", scope: !1102, file: !2, line: 1666, type: !125)
!1110 = !DILocalVariable(name: "temp", scope: !1111, file: !2, line: 1693, type: !125)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 1692, column: 9)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 1684, column: 11)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 1683, column: 5)
!1114 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 1667, column: 7)
!1115 = !DILocation(line: 0, scope: !1102)
!1116 = !DILocation(line: 1667, column: 7, scope: !1114)
!1117 = !DILocation(line: 1667, column: 7, scope: !1102)
!1118 = !DILocation(line: 1669, column: 11, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 1669, column: 11)
!1120 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 1668, column: 5)
!1121 = !DILocation(line: 1669, column: 11, scope: !1120)
!1122 = !DILocation(line: 1670, column: 18, scope: !1119)
!1123 = !DILocation(line: 1670, column: 9, scope: !1119)
!1124 = !DILocation(line: 1675, column: 20, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 1672, column: 9)
!1126 = !DILocation(line: 0, scope: !1119)
!1127 = !DILocation(line: 1681, column: 5, scope: !1120)
!1128 = !DILocation(line: 1684, column: 11, scope: !1112)
!1129 = !DILocation(line: 1684, column: 11, scope: !1113)
!1130 = !DILocation(line: 1689, column: 22, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 1686, column: 15)
!1132 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 1685, column: 9)
!1133 = !DILocation(line: 1690, column: 9, scope: !1132)
!1134 = !DILocation(line: 1696, column: 20, scope: !1111)
!1135 = !DILocation(line: 0, scope: !1111)
!1136 = !DILocation(line: 1702, column: 15, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 1702, column: 15)
!1138 = !DILocation(line: 1702, column: 15, scope: !1111)
!1139 = !DILocation(line: 1706, column: 24, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 1703, column: 13)
!1141 = !DILocation(line: 1709, column: 13, scope: !1140)
!1142 = !DILocation(line: 1714, column: 24, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 1711, column: 13)
!1144 = !DILocation(line: 0, scope: !1137)
!1145 = !DILocation(line: 1718, column: 11, scope: !1111)
!1146 = !DILocation(line: 1723, column: 20, scope: !1111)
!1147 = !DILocation(line: 1726, column: 11, scope: !1111)
!1148 = !DILocation(line: 1740, column: 20, scope: !1111)
!1149 = !DILocation(line: 1745, column: 11, scope: !1111)
!1150 = !DILocation(line: 0, scope: !1112)
!1151 = !DILocation(line: 0, scope: !1114)
!1152 = !DILocation(line: 1748, column: 3, scope: !1102)
!1153 = distinct !DISubprogram(name: "do_statfs", scope: !2, file: !2, line: 1262, type: !1154, scopeLine: 1263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1156)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!119, !120, !120}
!1156 = !{!1157, !1158, !1159, !1160}
!1157 = !DILocalVariable(name: "filename", arg: 1, scope: !1153, file: !2, line: 1262, type: !120)
!1158 = !DILocalVariable(name: "format", arg: 2, scope: !1153, file: !2, line: 1262, type: !120)
!1159 = !DILocalVariable(name: "statfsbuf", scope: !1153, file: !2, line: 1264, type: !251)
!1160 = !DILocalVariable(name: "fail", scope: !1153, file: !2, line: 1280, type: !119)
!1161 = !DILocation(line: 0, scope: !1153)
!1162 = !DILocation(line: 1264, column: 3, scope: !1153)
!1163 = !DILocation(line: 1264, column: 18, scope: !1153)
!1164 = !DILocation(line: 1266, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 1266, column: 7)
!1166 = !DILocation(line: 1266, column: 7, scope: !1153)
!1167 = !DILocation(line: 1269, column: 47, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 1267, column: 5)
!1169 = !DILocation(line: 1268, column: 7, scope: !1168)
!1170 = !DILocation(line: 1270, column: 7, scope: !1168)
!1171 = !DILocation(line: 1273, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 1273, column: 7)
!1173 = !DILocation(line: 1273, column: 37, scope: !1172)
!1174 = !DILocation(line: 1273, column: 7, scope: !1153)
!1175 = !DILocation(line: 1275, column: 17, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 1274, column: 5)
!1177 = !DILocation(line: 1276, column: 14, scope: !1176)
!1178 = !DILocation(line: 1275, column: 7, scope: !1176)
!1179 = !DILocation(line: 1277, column: 7, scope: !1176)
!1180 = !DILocation(line: 1280, column: 15, scope: !1153)
!1181 = !DILocation(line: 1280, column: 8, scope: !1153)
!1182 = !DILocation(line: 1281, column: 12, scope: !1153)
!1183 = !DILocation(line: 1281, column: 10, scope: !1153)
!1184 = !DILocation(line: 1282, column: 1, scope: !1153)
!1185 = distinct !DISubprogram(name: "do_stat", scope: !2, file: !2, line: 1459, type: !1186, scopeLine: 1461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1188)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!119, !120, !120, !120}
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195}
!1189 = !DILocalVariable(name: "filename", arg: 1, scope: !1185, file: !2, line: 1459, type: !120)
!1190 = !DILocalVariable(name: "format", arg: 2, scope: !1185, file: !2, line: 1459, type: !120)
!1191 = !DILocalVariable(name: "format2", arg: 3, scope: !1185, file: !2, line: 1460, type: !120)
!1192 = !DILocalVariable(name: "fd", scope: !1185, file: !2, line: 1462, type: !97)
!1193 = !DILocalVariable(name: "statbuf", scope: !1185, file: !2, line: 1463, type: !165)
!1194 = !DILocalVariable(name: "pa", scope: !1185, file: !2, line: 1464, type: !161)
!1195 = !DILocalVariable(name: "fail", scope: !1185, file: !2, line: 1490, type: !119)
!1196 = !DILocation(line: 0, scope: !1185)
!1197 = !DILocation(line: 1462, column: 12, scope: !1185)
!1198 = !DILocation(line: 1463, column: 3, scope: !1185)
!1199 = !DILocation(line: 1463, column: 15, scope: !1185)
!1200 = !DILocation(line: 1464, column: 3, scope: !1185)
!1201 = !DILocation(line: 1464, column: 21, scope: !1185)
!1202 = !DILocation(line: 1465, column: 6, scope: !1185)
!1203 = !DILocation(line: 1465, column: 9, scope: !1185)
!1204 = !{!1205, !718, i64 0}
!1205 = !{!"print_args", !718, i64 0, !1206, i64 8}
!1206 = !{!"timespec", !955, i64 0, !955, i64 8}
!1207 = !DILocation(line: 1466, column: 6, scope: !1185)
!1208 = !DILocation(line: 1466, column: 32, scope: !1185)
!1209 = !{!1206, !955, i64 0}
!1210 = !{!1206, !955, i64 8}
!1211 = !DILocation(line: 1466, column: 14, scope: !1185)
!1212 = !{i64 0, i64 8, !954, i64 8, i64 8, !954}
!1213 = !DILocation(line: 1468, column: 9, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 1468, column: 7)
!1215 = !DILocation(line: 1468, column: 7, scope: !1185)
!1216 = !DILocation(line: 1470, column: 11, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 1470, column: 11)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 1469, column: 5)
!1219 = !DILocation(line: 1470, column: 32, scope: !1217)
!1220 = !DILocation(line: 1470, column: 11, scope: !1218)
!1221 = !DILocation(line: 1472, column: 21, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 1471, column: 9)
!1223 = !DILocation(line: 1472, column: 11, scope: !1222)
!1224 = !DILocation(line: 1473, column: 11, scope: !1222)
!1225 = !DILocation(line: 1475, column: 5, scope: !1218)
!1226 = !DILocation(line: 1479, column: 13, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 1479, column: 12)
!1228 = !{i8 0, i8 2}
!1229 = !DILocation(line: 1480, column: 15, scope: !1227)
!1230 = !DILocation(line: 1481, column: 15, scope: !1227)
!1231 = !DILocation(line: 1481, column: 43, scope: !1227)
!1232 = !DILocation(line: 1479, column: 12, scope: !1214)
!1233 = !DILocation(line: 1483, column: 17, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 1482, column: 5)
!1235 = !DILocation(line: 1483, column: 45, scope: !1234)
!1236 = !DILocation(line: 1483, column: 7, scope: !1234)
!1237 = !DILocation(line: 1484, column: 7, scope: !1234)
!1238 = !DILocation(line: 1487, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 1487, column: 7)
!1240 = !{!1241, !1242, i64 4}
!1241 = !{!"stat", !1001, i64 0, !1242, i64 4, !1242, i64 6, !1243, i64 8, !1001, i64 16, !1001, i64 20, !1001, i64 24, !1206, i64 32, !1206, i64 48, !1206, i64 64, !1206, i64 80, !1243, i64 96, !1243, i64 104, !1001, i64 112, !1001, i64 116, !1001, i64 120, !1001, i64 124, !719, i64 128}
!1242 = !{!"short", !719, i64 0}
!1243 = !{!"long long", !719, i64 0}
!1244 = !DILocation(line: 1487, column: 33, scope: !1239)
!1245 = !DILocation(line: 1487, column: 36, scope: !1239)
!1246 = !DILocation(line: 1487, column: 7, scope: !1185)
!1247 = !DILocation(line: 1488, column: 5, scope: !1239)
!1248 = !DILocation(line: 1490, column: 15, scope: !1185)
!1249 = !DILocation(line: 1490, column: 8, scope: !1185)
!1250 = !DILocation(line: 1491, column: 12, scope: !1185)
!1251 = !DILocation(line: 1491, column: 10, scope: !1185)
!1252 = !DILocation(line: 1492, column: 1, scope: !1185)
!1253 = !DISubprogram(name: "fstat", linkageName: "\01_fstat$INODE64", scope: !166, file: !166, line: 382, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!97, !97, !164}
!1256 = !DISubprogram(name: "__error", scope: !1257, file: !1257, line: 80, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1257 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!471}
!1260 = !DISubprogram(name: "rpl_stat", scope: !1261, file: !1261, line: 1355, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1261 = !DIFile(filename: "./lib/sys/stat.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!97, !810, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !164)
!1265 = !DISubprogram(name: "rpl_lstat", scope: !1261, file: !1261, line: 1385, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1266 = !DISubprogram(name: "quotearg_style", scope: !102, file: !102, line: 383, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!125, !101, !120}
!1269 = distinct !DISubprogram(name: "print_stat", scope: !2, file: !2, line: 1506, type: !123, scopeLine: 1508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1296, !1305, !1306}
!1271 = !DILocalVariable(name: "pformat", arg: 1, scope: !1269, file: !2, line: 1506, type: !125)
!1272 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !1269, file: !2, line: 1506, type: !126)
!1273 = !DILocalVariable(name: "mod", arg: 3, scope: !1269, file: !2, line: 1506, type: !4)
!1274 = !DILocalVariable(name: "m", arg: 4, scope: !1269, file: !2, line: 1506, type: !4)
!1275 = !DILocalVariable(name: "fd", arg: 5, scope: !1269, file: !2, line: 1507, type: !97)
!1276 = !DILocalVariable(name: "filename", arg: 6, scope: !1269, file: !2, line: 1507, type: !120)
!1277 = !DILocalVariable(name: "data", arg: 7, scope: !1269, file: !2, line: 1507, type: !129)
!1278 = !DILocalVariable(name: "parg", scope: !1269, file: !2, line: 1509, type: !160)
!1279 = !DILocalVariable(name: "statbuf", scope: !1269, file: !2, line: 1510, type: !164)
!1280 = !DILocalVariable(name: "btime", scope: !1269, file: !2, line: 1511, type: !199)
!1281 = !DILocalVariable(name: "pw_ent", scope: !1269, file: !2, line: 1512, type: !1282)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1284, line: 84, size: 576, elements: !1285)
!1284 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/pwd.h", directory: "")
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1283, file: !1284, line: 85, baseType: !125, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1283, file: !1284, line: 86, baseType: !125, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1283, file: !1284, line: 87, baseType: !189, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1283, file: !1284, line: 88, baseType: !194, size: 32, offset: 160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "pw_change", scope: !1283, file: !1284, line: 89, baseType: !203, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pw_class", scope: !1283, file: !1284, line: 90, baseType: !125, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1283, file: !1284, line: 91, baseType: !125, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1283, file: !1284, line: 92, baseType: !125, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1283, file: !1284, line: 93, baseType: !125, size: 64, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pw_expire", scope: !1283, file: !1284, line: 94, baseType: !203, size: 64, offset: 512)
!1296 = !DILocalVariable(name: "gw_ent", scope: !1269, file: !2, line: 1513, type: !1297)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1299, line: 53, size: 256, elements: !1300)
!1299 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/grp.h", directory: "")
!1300 = !{!1301, !1302, !1303, !1304}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1298, file: !1299, line: 54, baseType: !125, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1298, file: !1299, line: 55, baseType: !125, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1298, file: !1299, line: 56, baseType: !194, size: 32, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1298, file: !1299, line: 57, baseType: !897, size: 64, offset: 192)
!1305 = !DILocalVariable(name: "fail", scope: !1269, file: !2, line: 1514, type: !119)
!1306 = !DILocalVariable(name: "linkname", scope: !1307, file: !2, line: 1525, type: !125)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 1524, column: 9)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 1523, column: 11)
!1309 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 1517, column: 5)
!1310 = !DILocation(line: 0, scope: !1269)
!1311 = !DILocation(line: 1510, column: 32, scope: !1269)
!1312 = !DILocation(line: 1511, column: 3, scope: !1269)
!1313 = !DILocation(line: 1511, column: 19, scope: !1269)
!1314 = !DILocation(line: 1511, column: 33, scope: !1269)
!1315 = !DILocation(line: 1516, column: 11, scope: !1269)
!1316 = !DILocation(line: 1516, column: 3, scope: !1269)
!1317 = !DILocation(line: 1519, column: 7, scope: !1309)
!1318 = !DILocation(line: 1520, column: 7, scope: !1309)
!1319 = !DILocation(line: 1522, column: 40, scope: !1309)
!1320 = !DILocation(line: 1522, column: 7, scope: !1309)
!1321 = !DILocation(line: 1523, column: 11, scope: !1308)
!1322 = !DILocation(line: 1523, column: 11, scope: !1309)
!1323 = !DILocation(line: 1525, column: 68, scope: !1307)
!1324 = !{!1241, !1243, i64 96}
!1325 = !DILocation(line: 1525, column: 28, scope: !1307)
!1326 = !DILocation(line: 0, scope: !1307)
!1327 = !DILocation(line: 1526, column: 24, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 1526, column: 15)
!1329 = !DILocation(line: 1526, column: 15, scope: !1307)
!1330 = !DILocation(line: 1528, column: 25, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 1527, column: 13)
!1332 = !DILocation(line: 1529, column: 22, scope: !1331)
!1333 = !DILocation(line: 1528, column: 15, scope: !1331)
!1334 = !DILocation(line: 1530, column: 15, scope: !1331)
!1335 = !DILocation(line: 1532, column: 11, scope: !1307)
!1336 = !DILocation(line: 1533, column: 44, scope: !1307)
!1337 = !DILocation(line: 1533, column: 11, scope: !1307)
!1338 = !DILocation(line: 1534, column: 11, scope: !1307)
!1339 = !DILocation(line: 1535, column: 9, scope: !1308)
!1340 = !DILocation(line: 1535, column: 9, scope: !1307)
!1341 = !DILocation(line: 1536, column: 7, scope: !1309)
!1342 = !DILocation(line: 1538, column: 11, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 1538, column: 11)
!1344 = !DILocation(line: 1538, column: 15, scope: !1343)
!1345 = !DILocation(line: 1538, column: 11, scope: !1309)
!1346 = !DILocation(line: 1539, column: 40, scope: !1343)
!1347 = !{!1241, !1001, i64 0}
!1348 = !DILocation(line: 1539, column: 9, scope: !1343)
!1349 = !DILocation(line: 1540, column: 16, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 1540, column: 16)
!1351 = !DILocation(line: 1540, column: 20, scope: !1350)
!1352 = !DILocation(line: 1540, column: 16, scope: !1343)
!1353 = !DILocation(line: 1541, column: 40, scope: !1350)
!1354 = !DILocation(line: 1541, column: 9, scope: !1350)
!1355 = !DILocation(line: 1543, column: 49, scope: !1350)
!1356 = !DILocation(line: 1543, column: 40, scope: !1350)
!1357 = !DILocation(line: 1543, column: 9, scope: !1350)
!1358 = !DILocation(line: 1544, column: 7, scope: !1309)
!1359 = !DILocation(line: 1546, column: 49, scope: !1309)
!1360 = !DILocation(line: 1546, column: 40, scope: !1309)
!1361 = !DILocation(line: 1546, column: 7, scope: !1309)
!1362 = !DILocation(line: 1547, column: 7, scope: !1309)
!1363 = !DILocation(line: 1549, column: 47, scope: !1309)
!1364 = !{!1241, !1243, i64 8}
!1365 = !DILocation(line: 1549, column: 7, scope: !1309)
!1366 = !DILocation(line: 1550, column: 7, scope: !1309)
!1367 = !DILocation(line: 1552, column: 49, scope: !1309)
!1368 = !DILocation(line: 1552, column: 40, scope: !1309)
!1369 = !DILocation(line: 1552, column: 57, scope: !1309)
!1370 = !DILocation(line: 1552, column: 7, scope: !1309)
!1371 = !DILocation(line: 1553, column: 7, scope: !1309)
!1372 = !DILocation(line: 1555, column: 40, scope: !1309)
!1373 = !DILocation(line: 1555, column: 7, scope: !1309)
!1374 = !DILocation(line: 1556, column: 7, scope: !1309)
!1375 = !DILocation(line: 1558, column: 49, scope: !1309)
!1376 = !DILocation(line: 1558, column: 40, scope: !1309)
!1377 = !DILocation(line: 1558, column: 7, scope: !1309)
!1378 = !DILocation(line: 1559, column: 7, scope: !1309)
!1379 = !DILocation(line: 1561, column: 40, scope: !1309)
!1380 = !DILocation(line: 1561, column: 7, scope: !1309)
!1381 = !DILocation(line: 1562, column: 7, scope: !1309)
!1382 = !DILocation(line: 1564, column: 47, scope: !1309)
!1383 = !{!1241, !1242, i64 6}
!1384 = !DILocation(line: 1564, column: 38, scope: !1309)
!1385 = !DILocation(line: 1564, column: 7, scope: !1309)
!1386 = !DILocation(line: 1565, column: 7, scope: !1309)
!1387 = !DILocation(line: 1567, column: 47, scope: !1309)
!1388 = !{!1241, !1001, i64 16}
!1389 = !DILocation(line: 1567, column: 38, scope: !1309)
!1390 = !DILocation(line: 1567, column: 7, scope: !1309)
!1391 = !DILocation(line: 1568, column: 7, scope: !1309)
!1392 = !DILocation(line: 1570, column: 35, scope: !1309)
!1393 = !DILocation(line: 1570, column: 16, scope: !1309)
!1394 = !DILocation(line: 1572, column: 19, scope: !1309)
!1395 = !DILocation(line: 1572, column: 36, scope: !1309)
!1396 = !{!1397, !718, i64 0}
!1397 = !{!"passwd", !718, i64 0, !718, i64 8, !1001, i64 16, !1001, i64 20, !955, i64 24, !718, i64 32, !718, i64 40, !718, i64 48, !718, i64 56, !955, i64 64}
!1398 = !DILocation(line: 1571, column: 7, scope: !1309)
!1399 = !DILocation(line: 1573, column: 7, scope: !1309)
!1400 = !DILocation(line: 1575, column: 47, scope: !1309)
!1401 = !{!1241, !1001, i64 20}
!1402 = !DILocation(line: 1575, column: 38, scope: !1309)
!1403 = !DILocation(line: 1575, column: 7, scope: !1309)
!1404 = !DILocation(line: 1576, column: 7, scope: !1309)
!1405 = !DILocation(line: 1578, column: 35, scope: !1309)
!1406 = !DILocation(line: 1578, column: 16, scope: !1309)
!1407 = !DILocation(line: 1580, column: 19, scope: !1309)
!1408 = !DILocation(line: 1580, column: 36, scope: !1309)
!1409 = !{!1410, !718, i64 0}
!1410 = !{!"group", !718, i64 0, !718, i64 8, !1001, i64 16, !718, i64 24}
!1411 = !DILocation(line: 1579, column: 7, scope: !1309)
!1412 = !DILocation(line: 1581, column: 7, scope: !1309)
!1413 = !DILocation(line: 1583, column: 15, scope: !1309)
!1414 = !DILocation(line: 1583, column: 12, scope: !1309)
!1415 = !DILocation(line: 1584, column: 7, scope: !1309)
!1416 = !DILocation(line: 1586, column: 67, scope: !1309)
!1417 = !DILocation(line: 1586, column: 38, scope: !1309)
!1418 = !DILocation(line: 1586, column: 7, scope: !1309)
!1419 = !DILocation(line: 1587, column: 7, scope: !1309)
!1420 = !DILocation(line: 1589, column: 11, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 1589, column: 11)
!1422 = !DILocation(line: 1589, column: 15, scope: !1421)
!1423 = !DILocation(line: 1589, column: 11, scope: !1309)
!1424 = !DILocation(line: 1590, column: 40, scope: !1421)
!1425 = !{!1241, !1001, i64 24}
!1426 = !DILocation(line: 1590, column: 9, scope: !1421)
!1427 = !DILocation(line: 1591, column: 16, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 1591, column: 16)
!1429 = !DILocation(line: 1591, column: 20, scope: !1428)
!1430 = !DILocation(line: 1591, column: 16, scope: !1421)
!1431 = !DILocation(line: 1592, column: 40, scope: !1428)
!1432 = !DILocation(line: 1592, column: 9, scope: !1428)
!1433 = !DILocation(line: 1594, column: 49, scope: !1428)
!1434 = !DILocation(line: 1594, column: 40, scope: !1428)
!1435 = !DILocation(line: 1594, column: 9, scope: !1428)
!1436 = !DILocation(line: 1595, column: 7, scope: !1309)
!1437 = !DILocation(line: 1597, column: 49, scope: !1309)
!1438 = !DILocation(line: 1597, column: 40, scope: !1309)
!1439 = !DILocation(line: 1597, column: 7, scope: !1309)
!1440 = !DILocation(line: 1598, column: 7, scope: !1309)
!1441 = !DILocation(line: 1600, column: 40, scope: !1309)
!1442 = !DILocation(line: 1600, column: 7, scope: !1309)
!1443 = !DILocation(line: 1601, column: 7, scope: !1309)
!1444 = !DILocation(line: 1603, column: 40, scope: !1309)
!1445 = !DILocation(line: 1603, column: 7, scope: !1309)
!1446 = !DILocation(line: 1604, column: 7, scope: !1309)
!1447 = !DILocation(line: 1606, column: 7, scope: !1309)
!1448 = !DILocation(line: 1607, column: 7, scope: !1309)
!1449 = !DILocation(line: 1609, column: 38, scope: !1309)
!1450 = !{!1241, !1243, i64 104}
!1451 = !DILocation(line: 1609, column: 7, scope: !1309)
!1452 = !DILocation(line: 1610, column: 7, scope: !1309)
!1453 = !DILocation(line: 1612, column: 38, scope: !1309)
!1454 = !{!1241, !1001, i64 112}
!1455 = !DILocation(line: 1612, column: 7, scope: !1309)
!1456 = !DILocation(line: 1613, column: 7, scope: !1309)
!1457 = !DILocation(line: 1617, column: 17, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 1615, column: 7)
!1459 = !DILocation(line: 1619, column: 19, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 1619, column: 13)
!1461 = !DILocation(line: 1619, column: 27, scope: !1460)
!1462 = !DILocation(line: 1619, column: 13, scope: !1458)
!1463 = !DILocation(line: 1620, column: 11, scope: !1460)
!1464 = !DILocation(line: 1622, column: 44, scope: !1460)
!1465 = !DILocation(line: 1622, column: 11, scope: !1460)
!1466 = !DILocation(line: 1624, column: 7, scope: !1309)
!1467 = !DILocation(line: 1628, column: 17, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 1626, column: 7)
!1469 = !DILocation(line: 1630, column: 45, scope: !1468)
!1470 = !DILocation(line: 1630, column: 9, scope: !1468)
!1471 = !DILocation(line: 1632, column: 7, scope: !1309)
!1472 = !DILocation(line: 1634, column: 52, scope: !1309)
!1473 = !DILocation(line: 1634, column: 40, scope: !1309)
!1474 = !DILocation(line: 1634, column: 7, scope: !1309)
!1475 = !DILocation(line: 1635, column: 7, scope: !1309)
!1476 = !DILocation(line: 1637, column: 43, scope: !1309)
!1477 = !DILocation(line: 1637, column: 7, scope: !1309)
!1478 = !DILocation(line: 1638, column: 7, scope: !1309)
!1479 = !DILocation(line: 1640, column: 52, scope: !1309)
!1480 = !DILocation(line: 1640, column: 40, scope: !1309)
!1481 = !DILocation(line: 1640, column: 7, scope: !1309)
!1482 = !DILocation(line: 1641, column: 7, scope: !1309)
!1483 = !DILocation(line: 1643, column: 43, scope: !1309)
!1484 = !DILocation(line: 1643, column: 7, scope: !1309)
!1485 = !DILocation(line: 1644, column: 7, scope: !1309)
!1486 = !DILocation(line: 1646, column: 52, scope: !1309)
!1487 = !DILocation(line: 1646, column: 40, scope: !1309)
!1488 = !DILocation(line: 1646, column: 7, scope: !1309)
!1489 = !DILocation(line: 1647, column: 7, scope: !1309)
!1490 = !DILocation(line: 1649, column: 43, scope: !1309)
!1491 = !DILocation(line: 1649, column: 7, scope: !1309)
!1492 = !DILocation(line: 1650, column: 7, scope: !1309)
!1493 = !DILocation(line: 1652, column: 15, scope: !1309)
!1494 = !DILocation(line: 1652, column: 12, scope: !1309)
!1495 = !DILocation(line: 1653, column: 7, scope: !1309)
!1496 = !DILocation(line: 1655, column: 19, scope: !1309)
!1497 = !DILocation(line: 1655, column: 7, scope: !1309)
!1498 = !DILocation(line: 1656, column: 7, scope: !1309)
!1499 = !DILocation(line: 1658, column: 10, scope: !1269)
!1500 = !DILocation(line: 1658, column: 3, scope: !1269)
!1501 = !DILocation(line: 1659, column: 1, scope: !1269)
!1502 = !DILocation(line: 0, scope: !116)
!1503 = !DILocation(line: 1149, column: 20, scope: !116)
!1504 = !DILocation(line: 1149, column: 36, scope: !116)
!1505 = !DILocation(line: 1149, column: 59, scope: !116)
!1506 = !DILocation(line: 1150, column: 16, scope: !116)
!1507 = !DILocation(line: 1152, column: 8, scope: !146)
!1508 = !DILocation(line: 1152, scope: !146)
!1509 = !DILocation(line: 1138, column: 8, scope: !116)
!1510 = !DILocation(line: 1152, column: 20, scope: !145)
!1511 = !DILocation(line: 1152, column: 3, scope: !146)
!1512 = !DILocation(line: 1154, column: 15, scope: !144)
!1513 = !DILocation(line: 1154, column: 7, scope: !144)
!1514 = !DILocation(line: 1158, column: 26, scope: !142)
!1515 = !DILocation(line: 0, scope: !142)
!1516 = !DILocation(line: 1159, column: 33, scope: !142)
!1517 = !DILocation(line: 1159, column: 29, scope: !142)
!1518 = !DILocation(line: 1161, column: 13, scope: !142)
!1519 = !DILocation(line: 1162, column: 15, scope: !142)
!1520 = !DILocation(line: 1164, column: 21, scope: !142)
!1521 = !DILocation(line: 1164, column: 13, scope: !142)
!1522 = !DILocation(line: 1167, column: 17, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !142, file: !2, line: 1165, column: 15)
!1524 = !DILocation(line: 1170, column: 23, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 1170, column: 21)
!1526 = !DILocation(line: 1170, column: 21, scope: !1523)
!1527 = !DILocation(line: 1172, column: 21, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 1171, column: 19)
!1529 = !DILocation(line: 1172, column: 31, scope: !1528)
!1530 = !DILocation(line: 1173, column: 30, scope: !1528)
!1531 = !DILocation(line: 1173, column: 21, scope: !1528)
!1532 = !DILocation(line: 1173, column: 35, scope: !1528)
!1533 = !DILocation(line: 1174, column: 21, scope: !1528)
!1534 = !DILocation(line: 1177, column: 17, scope: !1523)
!1535 = !DILocation(line: 1178, column: 17, scope: !1523)
!1536 = !DILocation(line: 1182, column: 32, scope: !1523)
!1537 = !DILocation(line: 1182, column: 28, scope: !1523)
!1538 = !DILocation(line: 1183, column: 32, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 1183, column: 21)
!1540 = !DILocation(line: 1184, column: 21, scope: !1539)
!1541 = !DILocation(line: 1184, column: 25, scope: !1539)
!1542 = !DILocation(line: 1184, column: 34, scope: !1539)
!1543 = !DILocation(line: 1184, column: 41, scope: !1539)
!1544 = !DILocation(line: 1184, column: 44, scope: !1539)
!1545 = !DILocation(line: 1184, column: 53, scope: !1539)
!1546 = !DILocation(line: 1183, column: 21, scope: !1523)
!1547 = !DILocation(line: 1186, column: 22, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 1185, column: 19)
!1549 = !DILocation(line: 1187, column: 19, scope: !1548)
!1550 = !DILocation(line: 0, scope: !1523)
!1551 = !DILocation(line: 1184, column: 59, scope: !1539)
!1552 = !DILocation(line: 1195, column: 25, scope: !1523)
!1553 = !DILocation(line: 1195, column: 22, scope: !1523)
!1554 = !DILocation(line: 1197, column: 17, scope: !1523)
!1555 = !DILocation(line: 1203, column: 18, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !143, file: !2, line: 1203, column: 16)
!1557 = !DILocation(line: 1203, column: 16, scope: !143)
!1558 = !DILocation(line: 1205, column: 15, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 1204, column: 13)
!1560 = !DILocation(line: 1206, column: 15, scope: !1559)
!1561 = !DILocation(line: 1208, column: 11, scope: !143)
!1562 = !DILocation(line: 1209, column: 15, scope: !151)
!1563 = !DILocation(line: 1209, column: 15, scope: !143)
!1564 = !DILocation(line: 1211, column: 31, scope: !150)
!1565 = !DILocation(line: 0, scope: !150)
!1566 = !DILocation(line: 1213, column: 20, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !150, file: !2, line: 1213, column: 15)
!1568 = !DILocation(line: 0, scope: !1567)
!1569 = !DILocation(line: 1213, column: 36, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 1213, column: 15)
!1571 = !DILocation(line: 1213, column: 40, scope: !1570)
!1572 = !DILocation(line: 1213, column: 43, scope: !1570)
!1573 = !DILocation(line: 0, scope: !1570)
!1574 = !DILocation(line: 1213, column: 15, scope: !1567)
!1575 = !DILocation(line: 1216, column: 41, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 1215, column: 17)
!1577 = !DILocation(line: 1216, column: 47, scope: !1576)
!1578 = !DILocation(line: 1216, column: 45, scope: !1576)
!1579 = !DILocation(line: 1217, column: 17, scope: !1576)
!1580 = !DILocation(line: 1214, column: 20, scope: !1570)
!1581 = !DILocation(line: 1214, column: 34, scope: !1570)
!1582 = !DILocation(line: 1213, column: 15, scope: !1570)
!1583 = distinct !{!1583, !1574, !1584, !855, !856}
!1584 = !DILocation(line: 1217, column: 17, scope: !1567)
!1585 = !DILocation(line: 1218, column: 15, scope: !150)
!1586 = !DILocation(line: 1219, column: 15, scope: !150)
!1587 = !DILocation(line: 1220, column: 13, scope: !150)
!1588 = !DILocation(line: 1221, column: 20, scope: !155)
!1589 = !DILocation(line: 1221, column: 23, scope: !155)
!1590 = !DILocation(line: 1221, column: 30, scope: !155)
!1591 = !DILocation(line: 1221, column: 53, scope: !155)
!1592 = !DILocation(line: 1221, column: 43, scope: !155)
!1593 = !DILocation(line: 1221, column: 33, scope: !155)
!1594 = !DILocation(line: 1221, column: 20, scope: !151)
!1595 = !DILocation(line: 1223, column: 31, scope: !154)
!1596 = !DILocation(line: 0, scope: !154)
!1597 = !DILocation(line: 1226, column: 15, scope: !154)
!1598 = !DILocation(line: 1227, column: 39, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !154, file: !2, line: 1227, column: 19)
!1600 = !DILocation(line: 1227, column: 29, scope: !1599)
!1601 = !DILocation(line: 1227, column: 19, scope: !1599)
!1602 = !DILocation(line: 1227, column: 19, scope: !154)
!1603 = !DILocation(line: 1229, column: 19, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 1228, column: 17)
!1605 = !DILocation(line: 1230, column: 41, scope: !1604)
!1606 = !DILocation(line: 1230, column: 48, scope: !1604)
!1607 = !DILocation(line: 1230, column: 46, scope: !1604)
!1608 = !DILocation(line: 1231, column: 17, scope: !1604)
!1609 = !DILocation(line: 1232, column: 15, scope: !154)
!1610 = !DILocation(line: 1233, column: 13, scope: !154)
!1611 = !DILocation(line: 1234, column: 20, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !155, file: !2, line: 1234, column: 20)
!1613 = !DILocation(line: 1234, column: 23, scope: !1612)
!1614 = !DILocation(line: 1234, column: 20, scope: !155)
!1615 = !DILocation(line: 1236, column: 15, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 1235, column: 13)
!1617 = !DILocation(line: 1237, column: 15, scope: !1616)
!1618 = !DILocation(line: 1239, column: 15, scope: !1616)
!1619 = !DILocation(line: 1240, column: 13, scope: !1616)
!1620 = !DILocation(line: 1243, column: 31, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 1242, column: 13)
!1622 = !DILocation(line: 1243, column: 15, scope: !1621)
!1623 = !DILocation(line: 0, scope: !143)
!1624 = !DILocation(line: 0, scope: !155)
!1625 = !DILocation(line: 0, scope: !151)
!1626 = !DILocation(line: 1245, column: 11, scope: !143)
!1627 = !DILocation(line: 1248, column: 11, scope: !143)
!1628 = !DILocation(line: 1249, column: 11, scope: !143)
!1629 = !DILocation(line: 0, scope: !146)
!1630 = !DILocation(line: 1251, column: 5, scope: !144)
!1631 = !DILocation(line: 1152, column: 25, scope: !145)
!1632 = !DILocation(line: 1152, column: 3, scope: !145)
!1633 = distinct !{!1633, !1511, !1634, !855, !856}
!1634 = !DILocation(line: 1251, column: 5, scope: !146)
!1635 = !DILocation(line: 1252, column: 3, scope: !116)
!1636 = !DILocation(line: 1254, column: 10, scope: !116)
!1637 = !DILocation(line: 1254, column: 26, scope: !116)
!1638 = !DILocation(line: 1254, column: 3, scope: !116)
!1639 = !DILocation(line: 1256, column: 10, scope: !116)
!1640 = !DILocation(line: 1256, column: 3, scope: !116)
!1641 = !DISubprogram(name: "xmalloc", scope: !1642, file: !1642, line: 55, type: !1643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1642 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!159, !126}
!1645 = distinct !DISubprogram(name: "format_code_offset", scope: !2, file: !2, line: 1118, type: !1646, scopeLine: 1119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1648)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!126, !120}
!1648 = !{!1649, !1650, !1651}
!1649 = !DILocalVariable(name: "directive", arg: 1, scope: !1645, file: !2, line: 1118, type: !120)
!1650 = !DILocalVariable(name: "len", scope: !1645, file: !2, line: 1120, type: !126)
!1651 = !DILocalVariable(name: "fmt_char", scope: !1645, file: !2, line: 1121, type: !120)
!1652 = !DILocation(line: 0, scope: !1645)
!1653 = !DILocation(line: 1120, column: 34, scope: !1645)
!1654 = !DILocation(line: 1120, column: 16, scope: !1645)
!1655 = !DILocation(line: 1121, column: 36, scope: !1645)
!1656 = !DILocation(line: 1121, column: 42, scope: !1645)
!1657 = !DILocation(line: 1122, column: 15, scope: !1645)
!1658 = !DILocation(line: 1122, column: 12, scope: !1645)
!1659 = !DILocation(line: 1123, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 1123, column: 7)
!1661 = !DILocation(line: 1123, column: 17, scope: !1660)
!1662 = !DILocation(line: 1123, column: 7, scope: !1645)
!1663 = !DILocation(line: 1124, column: 38, scope: !1660)
!1664 = !DILocation(line: 1124, column: 21, scope: !1660)
!1665 = !DILocation(line: 1124, column: 19, scope: !1660)
!1666 = !DILocation(line: 1124, column: 14, scope: !1660)
!1667 = !DILocation(line: 1124, column: 5, scope: !1660)
!1668 = !DILocation(line: 1125, column: 19, scope: !1645)
!1669 = !DILocation(line: 1125, column: 3, scope: !1645)
!1670 = !DISubprogram(name: "quote", scope: !1671, file: !1671, line: 44, type: !589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1671 = !DIFile(filename: "../lib/quote.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1672 = !DISubprogram(name: "putc_unlocked", scope: !757, file: !757, line: 301, type: !1673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!97, !97, !761}
!1675 = distinct !DISubprogram(name: "to_uchar", scope: !96, file: !96, line: 158, type: !1676, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!768, !4}
!1678 = !{!1679}
!1679 = !DILocalVariable(name: "ch", arg: 1, scope: !1675, file: !96, line: 158, type: !4)
!1680 = !DILocation(line: 0, scope: !1675)
!1681 = !DILocation(line: 158, column: 50, scope: !1675)
!1682 = distinct !DISubprogram(name: "isxdigit", scope: !1683, file: !1683, line: 280, type: !1684, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1686)
!1683 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_ctype.h", directory: "")
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!97, !97}
!1686 = !{!1687}
!1687 = !DILocalVariable(name: "_c", arg: 1, scope: !1682, file: !1683, line: 280, type: !97)
!1688 = !DILocation(line: 0, scope: !1682)
!1689 = !DILocation(line: 282, column: 10, scope: !1682)
!1690 = !DILocation(line: 282, column: 2, scope: !1682)
!1691 = distinct !DISubprogram(name: "print_esc_char", scope: !2, file: !2, line: 1078, type: !1692, scopeLine: 1079, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !4}
!1694 = !{!1695}
!1695 = !DILocalVariable(name: "c", arg: 1, scope: !1691, file: !2, line: 1078, type: !4)
!1696 = !DILocation(line: 0, scope: !1691)
!1697 = !DILocation(line: 1080, column: 11, scope: !1691)
!1698 = !DILocation(line: 1080, column: 3, scope: !1691)
!1699 = !DILocation(line: 1084, column: 7, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 1081, column: 5)
!1701 = !DILocation(line: 1087, column: 7, scope: !1700)
!1702 = !DILocation(line: 1090, column: 7, scope: !1700)
!1703 = !DILocation(line: 1093, column: 7, scope: !1700)
!1704 = !DILocation(line: 1096, column: 7, scope: !1700)
!1705 = !DILocation(line: 1099, column: 7, scope: !1700)
!1706 = !DILocation(line: 1102, column: 7, scope: !1700)
!1707 = !DILocation(line: 1105, column: 7, scope: !1700)
!1708 = !DILocation(line: 1108, column: 7, scope: !1700)
!1709 = !DILocation(line: 1110, column: 62, scope: !1700)
!1710 = !DILocation(line: 1110, column: 7, scope: !1700)
!1711 = !DILocation(line: 1111, column: 7, scope: !1700)
!1712 = !DILocation(line: 1113, column: 3, scope: !1691)
!1713 = !DILocation(line: 1114, column: 1, scope: !1691)
!1714 = !DISubprogram(name: "rpl_free", scope: !1715, file: !1715, line: 756, type: !1716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1715 = !DIFile(filename: "./lib/stdlib.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !159}
!1718 = distinct !DISubprogram(name: "__isctype", scope: !1683, file: !1683, line: 164, type: !1719, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1722)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1721, !1721, !128}
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !174, line: 72, baseType: !97)
!1722 = !{!1723, !1724}
!1723 = !DILocalVariable(name: "_c", arg: 1, scope: !1718, file: !1683, line: 164, type: !1721)
!1724 = !DILocalVariable(name: "_f", arg: 2, scope: !1718, file: !1683, line: 164, type: !128)
!1725 = !DILocation(line: 0, scope: !1718)
!1726 = !DILocation(line: 169, column: 13, scope: !1718)
!1727 = !DILocation(line: 169, column: 17, scope: !1718)
!1728 = !DILocation(line: 169, column: 23, scope: !1718)
!1729 = !DILocation(line: 169, column: 9, scope: !1718)
!1730 = !DILocation(line: 170, column: 6, scope: !1718)
!1731 = !DILocation(line: 170, column: 40, scope: !1718)
!1732 = !DILocation(line: 170, column: 4, scope: !1718)
!1733 = !DILocation(line: 170, column: 3, scope: !1718)
!1734 = !DILocation(line: 169, column: 2, scope: !1718)
!1735 = !DISubprogram(name: "strspn", scope: !884, file: !884, line: 88, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!128, !120, !120}
!1738 = distinct !DISubprogram(name: "out_string", scope: !2, file: !2, line: 691, type: !1739, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1741)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null, !125, !126, !120}
!1741 = !{!1742, !1743, !1744}
!1742 = !DILocalVariable(name: "pformat", arg: 1, scope: !1738, file: !2, line: 691, type: !125)
!1743 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !1738, file: !2, line: 691, type: !126)
!1744 = !DILocalVariable(name: "arg", arg: 3, scope: !1738, file: !2, line: 691, type: !120)
!1745 = !DILocation(line: 0, scope: !1738)
!1746 = !DILocation(line: 693, column: 3, scope: !1738)
!1747 = !DILocation(line: 694, column: 3, scope: !1738)
!1748 = !DILocation(line: 695, column: 1, scope: !1738)
!1749 = !DISubprogram(name: "get_quoting_style", scope: !102, file: !102, line: 283, type: !1750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!101, !1752}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1754)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !102, line: 270, flags: DIFlagFwdDecl)
!1755 = !DISubprogram(name: "areadlink_with_size", scope: !1756, file: !1756, line: 25, type: !1757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1756 = !DIFile(filename: "../lib/areadlink.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!125, !120, !126}
!1759 = distinct !DISubprogram(name: "out_uint", scope: !2, file: !2, line: 703, type: !1760, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1762)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!97, !125, !126, !235}
!1762 = !{!1763, !1764, !1765}
!1763 = !DILocalVariable(name: "pformat", arg: 1, scope: !1759, file: !2, line: 703, type: !125)
!1764 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !1759, file: !2, line: 703, type: !126)
!1765 = !DILocalVariable(name: "arg", arg: 3, scope: !1759, file: !2, line: 703, type: !235)
!1766 = !DILocation(line: 0, scope: !1759)
!1767 = !DILocation(line: 705, column: 3, scope: !1759)
!1768 = !DILocation(line: 706, column: 10, scope: !1759)
!1769 = !DILocation(line: 706, column: 3, scope: !1759)
!1770 = distinct !DISubprogram(name: "out_uint_x", scope: !2, file: !2, line: 715, type: !1771, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !125, !126, !235}
!1773 = !{!1774, !1775, !1776}
!1774 = !DILocalVariable(name: "pformat", arg: 1, scope: !1770, file: !2, line: 715, type: !125)
!1775 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !1770, file: !2, line: 715, type: !126)
!1776 = !DILocalVariable(name: "arg", arg: 3, scope: !1770, file: !2, line: 715, type: !235)
!1777 = !DILocation(line: 0, scope: !1770)
!1778 = !DILocation(line: 717, column: 3, scope: !1770)
!1779 = !DILocation(line: 718, column: 3, scope: !1770)
!1780 = !DILocation(line: 719, column: 1, scope: !1770)
!1781 = distinct !DISubprogram(name: "out_uint_o", scope: !2, file: !2, line: 709, type: !1771, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1782)
!1782 = !{!1783, !1784, !1785}
!1783 = !DILocalVariable(name: "pformat", arg: 1, scope: !1781, file: !2, line: 709, type: !125)
!1784 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !1781, file: !2, line: 709, type: !126)
!1785 = !DILocalVariable(name: "arg", arg: 3, scope: !1781, file: !2, line: 709, type: !235)
!1786 = !DILocation(line: 0, scope: !1781)
!1787 = !DILocation(line: 711, column: 3, scope: !1781)
!1788 = !DILocation(line: 712, column: 3, scope: !1781)
!1789 = !DILocation(line: 713, column: 1, scope: !1781)
!1790 = !DILocation(line: 0, scope: !572)
!1791 = !DILocation(line: 640, column: 3, scope: !572)
!1792 = !DILocation(line: 641, column: 15, scope: !572)
!1793 = !DILocation(line: 642, column: 3, scope: !572)
!1794 = !DISubprogram(name: "file_type", scope: !1795, file: !1795, line: 27, type: !1796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1795 = !DIFile(filename: "../lib/file-type.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!120, !575}
!1798 = !DISubprogram(name: "getpwuid", scope: !1284, file: !1284, line: 100, type: !1799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1282, !189}
!1801 = !DISubprogram(name: "getgrgid", scope: !1299, file: !1299, line: 64, type: !1802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!1297, !194}
!1804 = distinct !DISubprogram(name: "out_mount_point", scope: !2, file: !2, line: 992, type: !1805, scopeLine: 994, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!119, !120, !125, !126, !575}
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1819}
!1808 = !DILocalVariable(name: "filename", arg: 1, scope: !1804, file: !2, line: 992, type: !120)
!1809 = !DILocalVariable(name: "pformat", arg: 2, scope: !1804, file: !2, line: 992, type: !125)
!1810 = !DILocalVariable(name: "prefix_len", arg: 3, scope: !1804, file: !2, line: 992, type: !126)
!1811 = !DILocalVariable(name: "statp", arg: 4, scope: !1804, file: !2, line: 993, type: !575)
!1812 = !DILocalVariable(name: "np", scope: !1804, file: !2, line: 996, type: !120)
!1813 = !DILocalVariable(name: "bp", scope: !1804, file: !2, line: 996, type: !120)
!1814 = !DILocalVariable(name: "mp", scope: !1804, file: !2, line: 997, type: !125)
!1815 = !DILocalVariable(name: "fail", scope: !1804, file: !2, line: 998, type: !119)
!1816 = !DILocalVariable(name: "resolved", scope: !1817, file: !2, line: 1004, type: !125)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 1003, column: 5)
!1818 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 1002, column: 7)
!1819 = !DILabel(scope: !1804, name: "print_mount_point", file: !2, line: 1032)
!1820 = !DILocation(line: 0, scope: !1804)
!1821 = !DILocation(line: 1002, column: 7, scope: !1818)
!1822 = !DILocation(line: 1002, column: 20, scope: !1818)
!1823 = !DILocation(line: 1002, column: 24, scope: !1818)
!1824 = !DILocation(line: 1002, column: 7, scope: !1804)
!1825 = !DILocation(line: 1004, column: 24, scope: !1817)
!1826 = !DILocation(line: 0, scope: !1817)
!1827 = !DILocation(line: 1005, column: 12, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 1005, column: 11)
!1829 = !DILocation(line: 1005, column: 11, scope: !1817)
!1830 = !DILocation(line: 1007, column: 21, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 1006, column: 9)
!1832 = !DILocation(line: 1007, column: 60, scope: !1831)
!1833 = !DILocation(line: 1007, column: 11, scope: !1831)
!1834 = !DILocation(line: 1008, column: 11, scope: !1831)
!1835 = !DILocation(line: 1010, column: 12, scope: !1817)
!1836 = !DILocation(line: 1011, column: 7, scope: !1817)
!1837 = !DILocation(line: 1012, column: 11, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 1012, column: 11)
!1839 = !DILocation(line: 1012, column: 11, scope: !1817)
!1840 = !DILocation(line: 1015, column: 11, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1838, file: !2, line: 1013, column: 9)
!1842 = !DILocation(line: 1017, column: 5, scope: !1818)
!1843 = !DILocation(line: 1017, column: 5, scope: !1817)
!1844 = !DILocation(line: 1024, column: 13, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 1024, column: 7)
!1846 = !DILocation(line: 1024, column: 11, scope: !1845)
!1847 = !DILocation(line: 1024, column: 7, scope: !1804)
!1848 = !DILocation(line: 1028, column: 12, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 1025, column: 5)
!1850 = !DILocation(line: 1030, column: 5, scope: !1849)
!1851 = !DILocation(line: 1024, column: 47, scope: !1845)
!1852 = !DILocation(line: 1032, column: 1, scope: !1804)
!1853 = !DILocation(line: 1034, column: 36, scope: !1804)
!1854 = !DILocation(line: 1034, column: 46, scope: !1804)
!1855 = !DILocation(line: 1034, column: 3, scope: !1804)
!1856 = !DILocation(line: 1035, column: 3, scope: !1804)
!1857 = !DILocation(line: 1036, column: 10, scope: !1804)
!1858 = !DILocation(line: 1036, column: 3, scope: !1804)
!1859 = !DILocation(line: 1037, column: 1, scope: !1804)
!1860 = distinct !DISubprogram(name: "unsigned_file_size", scope: !2, file: !2, line: 1499, type: !1861, scopeLine: 1500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!235, !210}
!1863 = !{!1864}
!1864 = !DILocalVariable(name: "size", arg: 1, scope: !1860, file: !2, line: 1499, type: !210)
!1865 = !DILocation(line: 0, scope: !1860)
!1866 = !DILocation(line: 1501, column: 23, scope: !1860)
!1867 = !DILocation(line: 1501, column: 17, scope: !1860)
!1868 = !DILocation(line: 1501, column: 28, scope: !1860)
!1869 = !DILocation(line: 1501, column: 15, scope: !1860)
!1870 = !DILocation(line: 1501, column: 3, scope: !1860)
!1871 = distinct !DISubprogram(name: "get_birthtime", scope: !2, file: !2, line: 1424, type: !1872, scopeLine: 1425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1874)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!199, !97, !120, !575}
!1874 = !{!1875, !1876, !1877, !1878}
!1875 = !DILocalVariable(name: "fd", arg: 1, scope: !1871, file: !2, line: 1424, type: !97)
!1876 = !DILocalVariable(name: "filename", arg: 2, scope: !1871, file: !2, line: 1424, type: !120)
!1877 = !DILocalVariable(name: "st", arg: 3, scope: !1871, file: !2, line: 1424, type: !575)
!1878 = !DILocalVariable(name: "ts", scope: !1871, file: !2, line: 1426, type: !199)
!1879 = !DILocation(line: 0, scope: !1871)
!1880 = !DILocation(line: 1426, column: 19, scope: !1871)
!1881 = !DILocation(line: 1426, column: 24, scope: !1871)
!1882 = !DILocation(line: 1452, column: 3, scope: !1871)
!1883 = !DILocation(line: 647, column: 29, scope: !626)
!1884 = !DILocation(line: 657, column: 8, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !626, file: !2, line: 657, column: 7)
!1886 = !DILocation(line: 657, column: 7, scope: !626)
!1887 = !DILocation(line: 658, column: 19, scope: !1885)
!1888 = !DILocation(line: 658, column: 10, scope: !1885)
!1889 = !DILocation(line: 658, column: 8, scope: !1885)
!1890 = !DILocation(line: 658, column: 5, scope: !1885)
!1891 = !DILocation(line: 659, column: 3, scope: !626)
!1892 = !DILocation(line: 659, column: 13, scope: !626)
!1893 = !DILocation(line: 660, column: 14, scope: !626)
!1894 = !DILocation(line: 660, column: 12, scope: !626)
!1895 = !DILocation(line: 0, scope: !626)
!1896 = !DILocation(line: 661, column: 21, scope: !649)
!1897 = !DILocation(line: 661, column: 28, scope: !649)
!1898 = !DILocation(line: 661, column: 7, scope: !649)
!1899 = !DILocation(line: 661, column: 7, scope: !626)
!1900 = !DILocation(line: 662, column: 65, scope: !649)
!1901 = !DILocation(line: 662, column: 5, scope: !649)
!1902 = !DILocation(line: 665, column: 7, scope: !648)
!1903 = !DILocation(line: 665, column: 12, scope: !648)
!1904 = !DILocation(line: 666, column: 45, scope: !648)
!1905 = !DILocation(line: 666, column: 53, scope: !648)
!1906 = !DILocation(line: 666, column: 32, scope: !648)
!1907 = !DILocation(line: 666, column: 7, scope: !648)
!1908 = !DILocation(line: 667, column: 5, scope: !649)
!1909 = !DILocation(line: 669, column: 1, scope: !626)
!1910 = !DILocation(line: 668, column: 3, scope: !626)
!1911 = distinct !DISubprogram(name: "neg_to_zero", scope: !2, file: !2, line: 1041, type: !1912, scopeLine: 1042, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!199, !199}
!1914 = !{!1915, !1916}
!1915 = !DILocalVariable(name: "ts", arg: 1, scope: !1911, file: !2, line: 1041, type: !199)
!1916 = !DILocalVariable(name: "z", scope: !1911, file: !2, line: 1045, type: !199)
!1917 = !DILocation(line: 1041, column: 30, scope: !1911)
!1918 = !DILocation(line: 1043, column: 15, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1911, file: !2, line: 1043, column: 7)
!1920 = !DILocation(line: 1043, column: 9, scope: !1919)
!1921 = !DILocation(line: 1043, column: 7, scope: !1911)
!1922 = !DILocation(line: 1044, column: 12, scope: !1919)
!1923 = !DILocation(line: 1044, column: 5, scope: !1919)
!1924 = !DILocation(line: 1045, column: 19, scope: !1911)
!1925 = !DILocation(line: 1046, column: 3, scope: !1911)
!1926 = !DILocation(line: 1047, column: 1, scope: !1911)
!1927 = distinct !DISubprogram(name: "out_epoch_sec", scope: !2, file: !2, line: 730, type: !1928, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !125, !126, !199}
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1944, !1947, !1948, !1951, !1954, !1957, !1959, !1960, !1962, !1963, !1964, !1967, !1970, !1973, !1974, !1975}
!1931 = !DILocalVariable(name: "pformat", arg: 1, scope: !1927, file: !2, line: 730, type: !125)
!1932 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !1927, file: !2, line: 730, type: !126)
!1933 = !DILocalVariable(name: "arg", arg: 3, scope: !1927, file: !2, line: 731, type: !199)
!1934 = !DILocalVariable(name: "dot", scope: !1927, file: !2, line: 733, type: !125)
!1935 = !DILocalVariable(name: "sec_prefix_len", scope: !1927, file: !2, line: 734, type: !126)
!1936 = !DILocalVariable(name: "width", scope: !1927, file: !2, line: 735, type: !97)
!1937 = !DILocalVariable(name: "precision", scope: !1927, file: !2, line: 736, type: !97)
!1938 = !DILocalVariable(name: "frac_left_adjust", scope: !1927, file: !2, line: 737, type: !119)
!1939 = !DILocalVariable(name: "lprec", scope: !1940, file: !2, line: 746, type: !204)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 745, column: 9)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 744, column: 11)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 740, column: 5)
!1943 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 739, column: 7)
!1944 = !DILocalVariable(name: "p", scope: !1945, file: !2, line: 759, type: !125)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 755, column: 9)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 754, column: 11)
!1947 = !DILocalVariable(name: "lwidth", scope: !1945, file: !2, line: 766, type: !204)
!1948 = !DILocalVariable(name: "w_d", scope: !1949, file: !2, line: 772, type: !97)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 769, column: 13)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 768, column: 15)
!1951 = !DILocalVariable(name: "w", scope: !1952, file: !2, line: 777, type: !97)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !2, line: 776, column: 17)
!1953 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 775, column: 19)
!1954 = !DILocalVariable(name: "dst", scope: !1955, file: !2, line: 780, type: !125)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !2, line: 779, column: 21)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 778, column: 23)
!1957 = !DILocalVariable(name: "src", scope: !1958, file: !2, line: 781, type: !120)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 781, column: 23)
!1959 = !DILocalVariable(name: "divisor", scope: !1927, file: !2, line: 797, type: !97)
!1960 = !DILocalVariable(name: "i", scope: !1961, file: !2, line: 798, type: !97)
!1961 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 798, column: 3)
!1962 = !DILocalVariable(name: "frac_sec", scope: !1927, file: !2, line: 800, type: !97)
!1963 = !DILocalVariable(name: "int_len", scope: !1927, file: !2, line: 801, type: !97)
!1964 = !DILocalVariable(name: "minus_zero", scope: !1965, file: !2, line: 805, type: !119)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !2, line: 804, column: 5)
!1966 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 803, column: 7)
!1967 = !DILocalVariable(name: "frac_sec_modulus", scope: !1968, file: !2, line: 808, type: !97)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 807, column: 9)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !2, line: 806, column: 11)
!1970 = !DILocalVariable(name: "prec", scope: !1971, file: !2, line: 823, type: !97)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 822, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 821, column: 7)
!1973 = !DILocalVariable(name: "trailing_prec", scope: !1971, file: !2, line: 824, type: !97)
!1974 = !DILocalVariable(name: "ilen", scope: !1971, file: !2, line: 825, type: !97)
!1975 = !DILocalVariable(name: "trailing_width", scope: !1971, file: !2, line: 826, type: !97)
!1976 = !DILocation(line: 0, scope: !1927)
!1977 = !DILocation(line: 731, column: 32, scope: !1927)
!1978 = !DILocation(line: 733, column: 15, scope: !1927)
!1979 = !DILocation(line: 739, column: 7, scope: !1943)
!1980 = !DILocation(line: 739, column: 7, scope: !1927)
!1981 = !DILocation(line: 741, column: 28, scope: !1942)
!1982 = !DILocation(line: 742, column: 7, scope: !1942)
!1983 = !DILocation(line: 742, column: 27, scope: !1942)
!1984 = !DILocation(line: 744, column: 11, scope: !1941)
!1985 = !DILocation(line: 744, column: 11, scope: !1942)
!1986 = !DILocation(line: 746, column: 40, scope: !1940)
!1987 = !DILocation(line: 746, column: 28, scope: !1940)
!1988 = !DILocation(line: 0, scope: !1940)
!1989 = !DILocation(line: 747, column: 30, scope: !1940)
!1990 = !DILocation(line: 747, column: 24, scope: !1940)
!1991 = !DILocation(line: 747, column: 23, scope: !1940)
!1992 = !DILocation(line: 748, column: 9, scope: !1940)
!1993 = !DILocation(line: 0, scope: !1941)
!1994 = !DILocation(line: 754, column: 11, scope: !1946)
!1995 = !DILocation(line: 754, column: 21, scope: !1946)
!1996 = !DILocation(line: 754, column: 24, scope: !1946)
!1997 = !DILocation(line: 754, column: 11, scope: !1942)
!1998 = !DILocation(line: 0, scope: !1945)
!1999 = !DILocation(line: 760, column: 16, scope: !1945)
!2000 = !DILocation(line: 762, column: 11, scope: !1945)
!2001 = !DILocation(line: 763, column: 13, scope: !1945)
!2002 = !DILocation(line: 764, column: 18, scope: !1945)
!2003 = distinct !{!2003, !2000, !2004, !855, !856}
!2004 = !DILocation(line: 764, column: 33, scope: !1945)
!2005 = !DILocation(line: 766, column: 29, scope: !1945)
!2006 = !DILocation(line: 767, column: 27, scope: !1945)
!2007 = !DILocation(line: 767, column: 20, scope: !1945)
!2008 = !DILocation(line: 767, column: 19, scope: !1945)
!2009 = !DILocation(line: 768, column: 17, scope: !1950)
!2010 = !DILocation(line: 768, column: 15, scope: !1945)
!2011 = !DILocation(line: 770, column: 21, scope: !1949)
!2012 = !DILocation(line: 770, column: 24, scope: !1949)
!2013 = !DILocation(line: 770, column: 17, scope: !1949)
!2014 = !DILocation(line: 771, column: 34, scope: !1949)
!2015 = !DILocation(line: 772, column: 26, scope: !1949)
!2016 = !DILocation(line: 772, column: 46, scope: !1949)
!2017 = !DILocation(line: 772, column: 44, scope: !1949)
!2018 = !DILocation(line: 773, column: 28, scope: !1949)
!2019 = !DILocation(line: 773, column: 36, scope: !1949)
!2020 = !DILocation(line: 773, column: 34, scope: !1949)
!2021 = !DILocation(line: 772, column: 25, scope: !1949)
!2022 = !DILocation(line: 0, scope: !1949)
!2023 = !DILocation(line: 775, column: 21, scope: !1953)
!2024 = !DILocation(line: 775, column: 19, scope: !1949)
!2025 = !DILocation(line: 777, column: 31, scope: !1952)
!2026 = !DILocation(line: 0, scope: !1952)
!2027 = !DILocation(line: 778, column: 25, scope: !1956)
!2028 = !DILocation(line: 778, column: 23, scope: !1952)
!2029 = !DILocation(line: 0, scope: !1955)
!2030 = !DILocation(line: 0, scope: !1958)
!2031 = !DILocation(line: 781, column: 28, scope: !1958)
!2032 = !DILocation(line: 780, column: 29, scope: !1955)
!2033 = !DILocation(line: 781, scope: !1958)
!2034 = !DILocation(line: 781, column: 55, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1958, file: !2, line: 781, column: 23)
!2036 = !DILocation(line: 781, column: 23, scope: !1958)
!2037 = !DILocation(line: 783, column: 31, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 783, column: 31)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 782, column: 25)
!2040 = !DILocation(line: 783, column: 36, scope: !2038)
!2041 = !DILocation(line: 783, column: 31, scope: !2039)
!2042 = !DILocation(line: 784, column: 29, scope: !2038)
!2043 = !DILocation(line: 786, column: 38, scope: !2038)
!2044 = !DILocation(line: 786, column: 33, scope: !2038)
!2045 = !DILocation(line: 786, column: 36, scope: !2038)
!2046 = !DILocation(line: 787, column: 25, scope: !2039)
!2047 = !DILocation(line: 781, column: 63, scope: !2035)
!2048 = !DILocation(line: 781, column: 23, scope: !2035)
!2049 = distinct !{!2049, !2036, !2050, !855, !856}
!2050 = !DILocation(line: 787, column: 25, scope: !1958)
!2051 = !DILocation(line: 789, column: 30, scope: !1955)
!2052 = !DILocation(line: 790, column: 29, scope: !1955)
!2053 = !DILocation(line: 790, column: 52, scope: !1955)
!2054 = !DILocation(line: 790, column: 28, scope: !1955)
!2055 = !DILocation(line: 790, column: 26, scope: !1955)
!2056 = !DILocation(line: 791, column: 21, scope: !1955)
!2057 = !DILocation(line: 792, column: 17, scope: !1952)
!2058 = !DILocation(line: 793, column: 13, scope: !1949)
!2059 = !DILocation(line: 0, scope: !1942)
!2060 = !DILocation(line: 794, column: 9, scope: !1945)
!2061 = !DILocation(line: 795, column: 5, scope: !1942)
!2062 = !DILocation(line: 0, scope: !1961)
!2063 = !DILocation(line: 798, column: 8, scope: !1961)
!2064 = !DILocation(line: 798, scope: !1961)
!2065 = !DILocation(line: 798, column: 29, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 798, column: 3)
!2067 = !DILocation(line: 798, column: 3, scope: !1961)
!2068 = !DILocation(line: 799, column: 13, scope: !2066)
!2069 = !DILocation(line: 799, column: 5, scope: !2066)
!2070 = !DILocation(line: 798, column: 35, scope: !2066)
!2071 = !DILocation(line: 798, column: 3, scope: !2066)
!2072 = distinct !{!2072, !2067, !2073, !855, !856}
!2073 = !DILocation(line: 799, column: 16, scope: !1961)
!2074 = !DILocation(line: 800, column: 22, scope: !1927)
!2075 = !DILocation(line: 800, column: 32, scope: !1927)
!2076 = !DILocation(line: 800, column: 30, scope: !1927)
!2077 = !DILocation(line: 800, column: 18, scope: !1927)
!2078 = !DILocation(line: 0, scope: !1965)
!2079 = !DILocation(line: 806, column: 15, scope: !1969)
!2080 = !DILocation(line: 806, column: 22, scope: !1969)
!2081 = !DILocation(line: 806, column: 26, scope: !1969)
!2082 = !DILocation(line: 806, column: 33, scope: !1969)
!2083 = !DILocation(line: 806, column: 41, scope: !1969)
!2084 = !DILocation(line: 806, column: 11, scope: !1965)
!2085 = !DILocation(line: 808, column: 45, scope: !1968)
!2086 = !DILocation(line: 0, scope: !1968)
!2087 = !DILocation(line: 809, column: 40, scope: !1968)
!2088 = !DILocation(line: 810, column: 30, scope: !1968)
!2089 = !DILocation(line: 810, column: 40, scope: !1968)
!2090 = !DILocation(line: 810, column: 38, scope: !1968)
!2091 = !DILocation(line: 810, column: 48, scope: !1968)
!2092 = !DILocation(line: 810, column: 23, scope: !1968)
!2093 = !DILocation(line: 811, column: 35, scope: !1968)
!2094 = !DILocation(line: 811, column: 25, scope: !1968)
!2095 = !DILocation(line: 811, column: 15, scope: !1968)
!2096 = !DILocation(line: 811, column: 22, scope: !1968)
!2097 = !DILocation(line: 812, column: 29, scope: !1968)
!2098 = !DILocation(line: 812, column: 36, scope: !1968)
!2099 = !DILocation(line: 812, column: 22, scope: !1968)
!2100 = !DILocation(line: 813, column: 9, scope: !1968)
!2101 = !DILocation(line: 814, column: 18, scope: !1965)
!2102 = !DILocation(line: 815, column: 20, scope: !1965)
!2103 = !DILocation(line: 816, column: 58, scope: !1965)
!2104 = !DILocation(line: 816, column: 20, scope: !1965)
!2105 = !DILocation(line: 821, column: 7, scope: !1972)
!2106 = !DILocation(line: 821, column: 7, scope: !1927)
!2107 = !DILocation(line: 823, column: 29, scope: !1971)
!2108 = !DILocation(line: 823, column: 19, scope: !1971)
!2109 = !DILocation(line: 0, scope: !1971)
!2110 = !DILocation(line: 824, column: 37, scope: !1971)
!2111 = !DILocation(line: 825, column: 27, scope: !1971)
!2112 = !DILocation(line: 825, column: 19, scope: !1971)
!2113 = !DILocation(line: 826, column: 34, scope: !1971)
!2114 = !DILocation(line: 826, column: 42, scope: !1971)
!2115 = !DILocation(line: 826, column: 45, scope: !1971)
!2116 = !DILocation(line: 826, column: 71, scope: !1971)
!2117 = !DILocation(line: 826, column: 65, scope: !1971)
!2118 = !DILocation(line: 826, column: 63, scope: !1971)
!2119 = !DILocation(line: 826, column: 29, scope: !1971)
!2120 = !DILocation(line: 827, column: 37, scope: !1971)
!2121 = !DILocation(line: 827, column: 31, scope: !1971)
!2122 = !DILocation(line: 827, column: 46, scope: !1971)
!2123 = !DILocation(line: 827, column: 44, scope: !1971)
!2124 = !DILocation(line: 827, column: 66, scope: !1971)
!2125 = !DILocation(line: 827, column: 64, scope: !1971)
!2126 = !DILocation(line: 826, column: 28, scope: !1971)
!2127 = !DILocation(line: 829, column: 31, scope: !1971)
!2128 = !DILocation(line: 829, column: 7, scope: !1971)
!2129 = !DILocation(line: 831, column: 5, scope: !1971)
!2130 = !DILocation(line: 832, column: 1, scope: !1927)
!2131 = distinct !DISubprogram(name: "get_stat_atime", scope: !2132, file: !2132, line: 117, type: !2133, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2135)
!2132 = !DIFile(filename: "../lib/stat-time.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!199, !575}
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "st", arg: 1, scope: !2131, file: !2132, line: 117, type: !575)
!2137 = !DILocation(line: 0, scope: !2131)
!2138 = !DILocation(line: 120, column: 10, scope: !2131)
!2139 = !DILocation(line: 120, column: 3, scope: !2131)
!2140 = distinct !DISubprogram(name: "get_stat_mtime", scope: !2132, file: !2132, line: 145, type: !2133, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2141)
!2141 = !{!2142}
!2142 = !DILocalVariable(name: "st", arg: 1, scope: !2140, file: !2132, line: 145, type: !575)
!2143 = !DILocation(line: 0, scope: !2140)
!2144 = !DILocation(line: 148, column: 10, scope: !2140)
!2145 = !DILocation(line: 148, column: 3, scope: !2140)
!2146 = distinct !DISubprogram(name: "get_stat_ctime", scope: !2132, file: !2132, line: 131, type: !2133, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2147)
!2147 = !{!2148}
!2148 = !DILocalVariable(name: "st", arg: 1, scope: !2146, file: !2132, line: 131, type: !575)
!2149 = !DILocation(line: 0, scope: !2146)
!2150 = !DILocation(line: 134, column: 10, scope: !2146)
!2151 = !DILocation(line: 134, column: 3, scope: !2146)
!2152 = distinct !DISubprogram(name: "out_file_context", scope: !2, file: !2, line: 838, type: !2153, scopeLine: 839, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!119, !125, !126, !120}
!2155 = !{!2156, !2157, !2158, !2159, !2160}
!2156 = !DILocalVariable(name: "pformat", arg: 1, scope: !2152, file: !2, line: 838, type: !125)
!2157 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !2152, file: !2, line: 838, type: !126)
!2158 = !DILocalVariable(name: "filename", arg: 3, scope: !2152, file: !2, line: 838, type: !120)
!2159 = !DILocalVariable(name: "scontext", scope: !2152, file: !2, line: 840, type: !125)
!2160 = !DILocalVariable(name: "fail", scope: !2152, file: !2, line: 841, type: !119)
!2161 = !DILocation(line: 0, scope: !2152)
!2162 = !DILocation(line: 840, column: 3, scope: !2152)
!2163 = !DILocation(line: 840, column: 9, scope: !2152)
!2164 = !DILocation(line: 843, column: 8, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 843, column: 7)
!2166 = !DILocation(line: 844, column: 10, scope: !2165)
!2167 = !DILocation(line: 845, column: 10, scope: !2165)
!2168 = !DILocation(line: 845, column: 45, scope: !2165)
!2169 = !DILocation(line: 843, column: 7, scope: !2152)
!2170 = !DILocation(line: 847, column: 17, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 846, column: 5)
!2172 = !DILocation(line: 848, column: 14, scope: !2171)
!2173 = !DILocation(line: 847, column: 7, scope: !2171)
!2174 = !DILocation(line: 849, column: 16, scope: !2171)
!2175 = !DILocation(line: 851, column: 5, scope: !2171)
!2176 = !DILocation(line: 852, column: 19, scope: !2152)
!2177 = !DILocation(line: 852, column: 3, scope: !2152)
!2178 = !DILocation(line: 853, column: 21, scope: !2152)
!2179 = !DILocation(line: 853, column: 32, scope: !2152)
!2180 = !DILocation(line: 853, column: 3, scope: !2152)
!2181 = !DILocation(line: 854, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 854, column: 7)
!2183 = !DILocation(line: 854, column: 7, scope: !2152)
!2184 = !DILocation(line: 855, column: 14, scope: !2182)
!2185 = !DILocation(line: 855, column: 5, scope: !2182)
!2186 = !DILocation(line: 856, column: 10, scope: !2152)
!2187 = !DILocation(line: 857, column: 1, scope: !2152)
!2188 = !DILocation(line: 856, column: 3, scope: !2152)
!2189 = !DISubprogram(name: "fputc", scope: !757, file: !757, line: 156, type: !1673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2190 = distinct !DISubprogram(name: "getfilecon", scope: !2191, file: !2191, line: 79, type: !2192, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2194)
!2191 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!97, !120, !897}
!2194 = !{!2195, !2196}
!2195 = !DILocalVariable(name: "file", arg: 1, scope: !2190, file: !2191, line: 79, type: !120)
!2196 = !DILocalVariable(name: "con", arg: 2, scope: !2190, file: !2191, line: 80, type: !897)
!2197 = !DILocation(line: 0, scope: !2190)
!2198 = !DILocation(line: 81, column: 5, scope: !2190)
!2199 = !DILocation(line: 81, column: 11, scope: !2190)
!2200 = !DILocation(line: 81, column: 22, scope: !2190)
!2201 = distinct !DISubprogram(name: "lgetfilecon", scope: !2191, file: !2191, line: 83, type: !2192, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2202)
!2202 = !{!2203, !2204}
!2203 = !DILocalVariable(name: "file", arg: 1, scope: !2201, file: !2191, line: 83, type: !120)
!2204 = !DILocalVariable(name: "con", arg: 2, scope: !2201, file: !2191, line: 84, type: !897)
!2205 = !DILocation(line: 0, scope: !2201)
!2206 = !DILocation(line: 85, column: 5, scope: !2201)
!2207 = !DILocation(line: 85, column: 11, scope: !2201)
!2208 = !DILocation(line: 85, column: 22, scope: !2201)
!2209 = !DISubprogram(name: "strcpy", scope: !884, file: !884, line: 79, type: !2210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!125, !125, !120}
!2212 = distinct !DISubprogram(name: "freecon", scope: !2191, file: !2191, line: 65, type: !2213, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !125}
!2215 = !{!2216}
!2216 = !DILocalVariable(name: "con", arg: 1, scope: !2212, file: !2191, line: 65, type: !125)
!2217 = !DILocation(line: 0, scope: !2212)
!2218 = !DILocation(line: 65, column: 49, scope: !2212)
!2219 = !DISubprogram(name: "memchr", scope: !884, file: !884, line: 70, type: !2220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!159, !129, !97, !126}
!2222 = !DISubprogram(name: "strtol", scope: !882, file: !882, line: 167, type: !2223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!204, !120, !897, !97}
!2225 = !DISubprogram(name: "sprintf", scope: !757, file: !757, line: 190, type: !2226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!97, !2228, !810, null}
!2228 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!2229 = distinct !DISubprogram(name: "out_minus_zero", scope: !2, file: !2, line: 721, type: !2230, scopeLine: 722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!97, !125, !126}
!2232 = !{!2233, !2234}
!2233 = !DILocalVariable(name: "pformat", arg: 1, scope: !2229, file: !2, line: 721, type: !125)
!2234 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !2229, file: !2, line: 721, type: !126)
!2235 = !DILocation(line: 0, scope: !2229)
!2236 = !DILocation(line: 723, column: 3, scope: !2229)
!2237 = !DILocation(line: 724, column: 10, scope: !2229)
!2238 = !DILocation(line: 724, column: 3, scope: !2229)
!2239 = distinct !DISubprogram(name: "out_int", scope: !2, file: !2, line: 697, type: !2240, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2244)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!97, !125, !126, !2242}
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2243, line: 32, baseType: !204)
!2243 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_intmax_t.h", directory: "")
!2244 = !{!2245, !2246, !2247}
!2245 = !DILocalVariable(name: "pformat", arg: 1, scope: !2239, file: !2, line: 697, type: !125)
!2246 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !2239, file: !2, line: 697, type: !126)
!2247 = !DILocalVariable(name: "arg", arg: 3, scope: !2239, file: !2, line: 697, type: !2242)
!2248 = !DILocation(line: 0, scope: !2239)
!2249 = !DILocation(line: 699, column: 3, scope: !2239)
!2250 = !DILocation(line: 700, column: 10, scope: !2239)
!2251 = !DILocation(line: 700, column: 3, scope: !2239)
!2252 = distinct !DISubprogram(name: "make_format", scope: !2, file: !2, line: 676, type: !2253, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null, !125, !126, !120, !120}
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2256 = !DILocalVariable(name: "pformat", arg: 1, scope: !2252, file: !2, line: 676, type: !125)
!2257 = !DILocalVariable(name: "prefix_len", arg: 2, scope: !2252, file: !2, line: 676, type: !126)
!2258 = !DILocalVariable(name: "allowed_flags", arg: 3, scope: !2252, file: !2, line: 676, type: !120)
!2259 = !DILocalVariable(name: "suffix", arg: 4, scope: !2252, file: !2, line: 677, type: !120)
!2260 = !DILocalVariable(name: "dst", scope: !2252, file: !2, line: 679, type: !125)
!2261 = !DILocalVariable(name: "src", scope: !2252, file: !2, line: 680, type: !120)
!2262 = !DILocalVariable(name: "srclim", scope: !2252, file: !2, line: 681, type: !120)
!2263 = !DILocation(line: 0, scope: !2252)
!2264 = !DILocation(line: 679, column: 23, scope: !2252)
!2265 = !DILocation(line: 681, column: 32, scope: !2252)
!2266 = !DILocation(line: 682, column: 8, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 682, column: 3)
!2268 = !DILocation(line: 682, scope: !2267)
!2269 = !DILocation(line: 682, column: 23, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2267, file: !2, line: 682, column: 3)
!2271 = !DILocation(line: 682, column: 32, scope: !2270)
!2272 = !DILocation(line: 682, column: 57, scope: !2270)
!2273 = !DILocation(line: 682, column: 35, scope: !2270)
!2274 = !DILocation(line: 0, scope: !2270)
!2275 = !DILocation(line: 682, column: 3, scope: !2267)
!2276 = !DILocation(line: 683, column: 32, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 683, column: 9)
!2278 = !DILocation(line: 683, column: 9, scope: !2277)
!2279 = !DILocation(line: 683, column: 9, scope: !2270)
!2280 = !DILocation(line: 684, column: 16, scope: !2277)
!2281 = !DILocation(line: 684, column: 11, scope: !2277)
!2282 = !DILocation(line: 684, column: 14, scope: !2277)
!2283 = !DILocation(line: 684, column: 7, scope: !2277)
!2284 = !DILocation(line: 683, column: 36, scope: !2277)
!2285 = !DILocation(line: 682, column: 67, scope: !2270)
!2286 = !DILocation(line: 682, column: 3, scope: !2270)
!2287 = distinct !{!2287, !2275, !2288, !855, !856}
!2288 = !DILocation(line: 684, column: 17, scope: !2267)
!2289 = !DILocation(line: 685, column: 3, scope: !2252)
!2290 = !DILocation(line: 685, column: 14, scope: !2252)
!2291 = !DILocation(line: 686, column: 18, scope: !2252)
!2292 = !DILocation(line: 686, column: 14, scope: !2252)
!2293 = !DILocation(line: 686, column: 9, scope: !2252)
!2294 = !DILocation(line: 686, column: 12, scope: !2252)
!2295 = distinct !{!2295, !2289, !2291, !855, !856}
!2296 = !DILocation(line: 687, column: 3, scope: !2252)
!2297 = !DILocation(line: 688, column: 1, scope: !2252)
!2298 = !DISubprogram(name: "strchr", scope: !884, file: !884, line: 76, type: !2299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!125, !120, !97}
!2301 = !DISubprogram(name: "getenv", scope: !882, file: !882, line: 147, type: !2302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!125, !120}
!2304 = !DISubprogram(name: "tzalloc", scope: !659, file: !659, line: 906, type: !2305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!658, !120}
!2307 = !DISubprogram(name: "localtime_rz", scope: !659, file: !659, line: 920, type: !2308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!2310, !658, !2311, !2316}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2312)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2314)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2315, line: 31, baseType: !203)
!2315 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_time_t.h", directory: "")
!2316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2310)
!2317 = !DISubprogram(name: "nstrftime", scope: !2318, file: !2318, line: 33, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2318 = !DIFile(filename: "../lib/strftime.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!126, !2228, !126, !120, !2321, !658, !97}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!2323 = distinct !DISubprogram(name: "timetostr", scope: !96, file: !96, line: 717, type: !2324, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!125, !2314, !125}
!2326 = !{!2327, !2328}
!2327 = !DILocalVariable(name: "t", arg: 1, scope: !2323, file: !96, line: 717, type: !2314)
!2328 = !DILocalVariable(name: "buf", arg: 2, scope: !2323, file: !96, line: 717, type: !125)
!2329 = !DILocation(line: 0, scope: !2323)
!2330 = !DILocation(line: 720, column: 13, scope: !2323)
!2331 = !DILocation(line: 719, column: 3, scope: !2323)
!2332 = !DISubprogram(name: "imaxtostr", scope: !2333, file: !2333, line: 25, type: !2334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2333 = !DIFile(filename: "../lib/inttostr.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!125, !2242, !125}
!2336 = distinct !DISubprogram(name: "get_stat_birthtime", scope: !2132, file: !2132, line: 160, type: !2133, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2337)
!2337 = !{!2338, !2339}
!2338 = !DILocalVariable(name: "st", arg: 1, scope: !2336, file: !2132, line: 160, type: !575)
!2339 = !DILocalVariable(name: "t", scope: !2336, file: !2132, line: 162, type: !199)
!2340 = !DILocation(line: 0, scope: !2336)
!2341 = !DILocation(line: 162, column: 19, scope: !2336)
!2342 = !DILocation(line: 166, column: 7, scope: !2336)
!2343 = !DILocation(line: 194, column: 12, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2336, file: !2132, line: 194, column: 7)
!2345 = !DILocation(line: 194, column: 10, scope: !2344)
!2346 = !DILocation(line: 194, column: 19, scope: !2344)
!2347 = !DILocation(line: 194, column: 29, scope: !2344)
!2348 = !DILocation(line: 194, column: 24, scope: !2344)
!2349 = !DILocation(line: 194, column: 37, scope: !2344)
!2350 = !DILocation(line: 194, column: 42, scope: !2344)
!2351 = !DILocation(line: 194, column: 50, scope: !2344)
!2352 = !DILocation(line: 194, column: 7, scope: !2336)
!2353 = !DILocation(line: 196, column: 9, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2344, file: !2132, line: 195, column: 5)
!2355 = !DILocation(line: 196, column: 16, scope: !2354)
!2356 = !DILocation(line: 197, column: 9, scope: !2354)
!2357 = !DILocation(line: 197, column: 17, scope: !2354)
!2358 = !DILocation(line: 198, column: 5, scope: !2354)
!2359 = !DILocation(line: 201, column: 3, scope: !2336)
!2360 = !DISubprogram(name: "canonicalize_file_name", scope: !1715, file: !1715, line: 882, type: !2302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2361 = !DILocation(line: 0, scope: !588)
!2362 = !DILocation(line: 958, column: 8, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !588, file: !2, line: 958, column: 7)
!2364 = !DILocation(line: 958, column: 7, scope: !588)
!2365 = !DILocation(line: 960, column: 26, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 960, column: 11)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !2, line: 959, column: 5)
!2368 = !DILocation(line: 960, column: 24, scope: !2366)
!2369 = !DILocation(line: 960, column: 11, scope: !2367)
!2370 = !DILocation(line: 961, column: 19, scope: !2366)
!2371 = !DILocation(line: 961, column: 9, scope: !2366)
!2372 = !DILocation(line: 962, column: 24, scope: !2367)
!2373 = !DILocation(line: 963, column: 5, scope: !2367)
!2374 = !DILocation(line: 965, column: 3, scope: !588)
!2375 = !DILocation(line: 965, column: 15, scope: !588)
!2376 = !DILocation(line: 966, column: 7, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !588, file: !2, line: 966, column: 7)
!2378 = !DILocation(line: 966, column: 32, scope: !2377)
!2379 = !DILocation(line: 966, column: 7, scope: !588)
!2380 = !DILocation(line: 967, column: 5, scope: !2377)
!2381 = !DILocation(line: 970, column: 13, scope: !614)
!2382 = !DILocation(line: 970, column: 8, scope: !614)
!2383 = !DILocation(line: 970, scope: !614)
!2384 = !DILocation(line: 970, column: 3, scope: !614)
!2385 = !DILocation(line: 972, column: 15, scope: !611)
!2386 = !DILocation(line: 972, column: 11, scope: !611)
!2387 = !DILocation(line: 972, column: 24, scope: !611)
!2388 = !DILocation(line: 972, column: 31, scope: !611)
!2389 = !{!2390, !718, i64 0}
!2390 = !{!"mount_entry", !718, i64 0, !718, i64 8, !718, i64 16, !718, i64 24, !1001, i64 32, !1001, i64 36, !1001, i64 36, !1001, i64 36, !718, i64 40}
!2391 = !DILocation(line: 972, column: 27, scope: !611)
!2392 = !DILocation(line: 972, column: 45, scope: !611)
!2393 = !DILocation(line: 973, column: 11, scope: !611)
!2394 = !DILocation(line: 973, column: 14, scope: !611)
!2395 = !{!2390, !718, i64 8}
!2396 = !DILocation(line: 972, column: 11, scope: !612)
!2397 = !DILocation(line: 975, column: 11, scope: !610)
!2398 = !DILocation(line: 975, column: 23, scope: !610)
!2399 = !DILocation(line: 977, column: 15, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !610, file: !2, line: 977, column: 15)
!2401 = !DILocation(line: 977, column: 49, scope: !2400)
!2402 = !DILocation(line: 978, column: 15, scope: !2400)
!2403 = !DILocation(line: 978, column: 18, scope: !2400)
!2404 = !DILocation(line: 977, column: 15, scope: !610)
!2405 = !DILocation(line: 980, column: 32, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 979, column: 13)
!2407 = !DILocation(line: 981, column: 15, scope: !2406)
!2408 = !DILocation(line: 983, column: 9, scope: !611)
!2409 = !DILocation(line: 983, column: 9, scope: !610)
!2410 = !DILocation(line: 984, column: 5, scope: !612)
!2411 = !DILocation(line: 970, column: 38, scope: !613)
!2412 = !{!2390, !718, i64 40}
!2413 = !DILocation(line: 970, column: 3, scope: !613)
!2414 = distinct !{!2414, !2384, !2415, !855, !856}
!2415 = !DILocation(line: 984, column: 5, scope: !614)
!2416 = !DILocation(line: 987, column: 1, scope: !588)
!2417 = !DISubprogram(name: "find_mount_point", scope: !2418, file: !2418, line: 19, type: !2419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2418 = !DIFile(filename: "../src/find-mount-point.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!125, !120, !575}
!2421 = !DISubprogram(name: "read_file_system_list", scope: !598, file: !598, line: 39, type: !2422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!596, !119}
!2424 = !DISubprogram(name: "filemodestring", scope: !2425, file: !2425, line: 38, type: !2426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2425 = !DIFile(filename: "../lib/filemode.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !575, !125}
!2428 = !DISubprogram(name: "statfs", linkageName: "\01_statfs$INODE64", scope: !252, file: !252, line: 450, type: !2429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!97, !120, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!2432 = !DILocation(line: 0, scope: !239)
!2433 = !DILocation(line: 869, column: 11, scope: !239)
!2434 = !DILocation(line: 869, column: 3, scope: !239)
!2435 = !DILocation(line: 872, column: 7, scope: !293)
!2436 = !DILocation(line: 873, column: 7, scope: !293)
!2437 = !DILocation(line: 885, column: 56, scope: !292)
!2438 = !DILocation(line: 0, scope: !292)
!2439 = !DILocation(line: 0, scope: !299)
!2440 = !DILocation(line: 891, column: 14, scope: !299)
!2441 = !DILocation(line: 891, scope: !299)
!2442 = !DILocation(line: 891, column: 27, scope: !302)
!2443 = !DILocation(line: 891, column: 35, scope: !302)
!2444 = !DILocation(line: 891, column: 38, scope: !302)
!2445 = !DILocation(line: 891, column: 40, scope: !302)
!2446 = !DILocation(line: 891, column: 52, scope: !302)
!2447 = !DILocation(line: 0, scope: !302)
!2448 = !DILocation(line: 891, column: 9, scope: !299)
!2449 = !DILocation(line: 893, column: 35, scope: !301)
!2450 = !DILocation(line: 893, column: 39, scope: !301)
!2451 = !DILocation(line: 893, column: 27, scope: !301)
!2452 = !DILocation(line: 0, scope: !301)
!2453 = !DILocation(line: 894, column: 29, scope: !301)
!2454 = !DILocation(line: 894, column: 27, scope: !301)
!2455 = !DILocation(line: 894, column: 40, scope: !301)
!2456 = !DILocation(line: 894, column: 23, scope: !301)
!2457 = !DILocation(line: 894, column: 18, scope: !301)
!2458 = !DILocation(line: 895, column: 11, scope: !301)
!2459 = !DILocation(line: 891, column: 68, scope: !302)
!2460 = !DILocation(line: 891, column: 9, scope: !302)
!2461 = distinct !{!2461, !2448, !2462, !855, !856}
!2462 = !DILocation(line: 895, column: 11, scope: !299)
!2463 = !DILocation(line: 897, column: 9, scope: !292)
!2464 = !DILocation(line: 899, column: 7, scope: !293)
!2465 = !DILocation(line: 902, column: 7, scope: !293)
!2466 = !DILocation(line: 903, column: 7, scope: !293)
!2467 = !DILocation(line: 906, column: 51, scope: !293)
!2468 = !{!2469, !1001, i64 60}
!2469 = !{!"statfs", !1001, i64 0, !1001, i64 4, !1243, i64 8, !1243, i64 16, !1243, i64 24, !1243, i64 32, !1243, i64 40, !2470, i64 48, !1001, i64 56, !1001, i64 60, !1001, i64 64, !1001, i64 68, !719, i64 72, !719, i64 88, !719, i64 1112, !1001, i64 2136, !719, i64 2140}
!2470 = !{!"fsid", !719, i64 0}
!2471 = !DILocation(line: 906, column: 40, scope: !293)
!2472 = !DILocation(line: 906, column: 7, scope: !293)
!2473 = !DILocation(line: 910, column: 7, scope: !293)
!2474 = !DILocation(line: 912, column: 40, scope: !293)
!2475 = !DILocation(line: 912, column: 7, scope: !293)
!2476 = !DILocation(line: 913, column: 7, scope: !293)
!2477 = !DILocation(line: 915, column: 48, scope: !293)
!2478 = !{!2469, !1243, i64 8}
!2479 = !DILocation(line: 915, column: 7, scope: !293)
!2480 = !DILocation(line: 916, column: 7, scope: !293)
!2481 = !DILocation(line: 918, column: 48, scope: !293)
!2482 = !{!2469, !1243, i64 16}
!2483 = !DILocation(line: 918, column: 7, scope: !293)
!2484 = !DILocation(line: 919, column: 7, scope: !293)
!2485 = !DILocation(line: 921, column: 48, scope: !293)
!2486 = !{!2469, !1243, i64 24}
!2487 = !DILocation(line: 921, column: 7, scope: !293)
!2488 = !DILocation(line: 922, column: 7, scope: !293)
!2489 = !DILocation(line: 924, column: 49, scope: !293)
!2490 = !{!2469, !1001, i64 0}
!2491 = !DILocation(line: 924, column: 38, scope: !293)
!2492 = !DILocation(line: 924, column: 7, scope: !293)
!2493 = !DILocation(line: 925, column: 7, scope: !293)
!2494 = !DILocation(line: 0, scope: !304)
!2495 = !DILocation(line: 929, column: 15, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !304, file: !2, line: 929, column: 13)
!2497 = !DILocation(line: 929, column: 13, scope: !304)
!2498 = !DILocation(line: 930, column: 31, scope: !2496)
!2499 = !DILocation(line: 930, column: 20, scope: !2496)
!2500 = !DILocation(line: 930, column: 11, scope: !2496)
!2501 = !DILocation(line: 931, column: 9, scope: !304)
!2502 = !DILocation(line: 933, column: 7, scope: !293)
!2503 = !DILocation(line: 935, column: 49, scope: !293)
!2504 = !{!2469, !1243, i64 32}
!2505 = !DILocation(line: 935, column: 7, scope: !293)
!2506 = !DILocation(line: 936, column: 7, scope: !293)
!2507 = !DILocation(line: 938, column: 48, scope: !293)
!2508 = !{!2469, !1243, i64 40}
!2509 = !DILocation(line: 938, column: 7, scope: !293)
!2510 = !DILocation(line: 939, column: 7, scope: !293)
!2511 = !DILocation(line: 941, column: 19, scope: !293)
!2512 = !DILocation(line: 941, column: 7, scope: !293)
!2513 = !DILocation(line: 942, column: 7, scope: !293)
!2514 = !DILocation(line: 944, column: 10, scope: !239)
!2515 = !DILocation(line: 944, column: 3, scope: !239)
!2516 = distinct !DISubprogram(name: "human_fstype", scope: !2, file: !2, line: 261, type: !2517, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!120, !249}
!2519 = !{!2520}
!2520 = !DILocalVariable(name: "statfsbuf", arg: 1, scope: !2516, file: !2, line: 261, type: !249)
!2521 = !DILocation(line: 0, scope: !2516)
!2522 = !DILocation(line: 264, column: 21, scope: !2516)
!2523 = !DILocation(line: 264, column: 10, scope: !2516)
!2524 = !DILocation(line: 264, column: 3, scope: !2516)
!2525 = !DISubprogram(name: "xstrdup", scope: !1642, file: !1642, line: 99, type: !2302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2526 = !DISubprogram(name: "xasprintf", scope: !2527, file: !2527, line: 40, type: !2528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2527 = !DIFile(filename: "../lib/xvasprintf.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!125, !120, null}
!2530 = !DISubprogram(name: "argmatch", scope: !1061, file: !1061, line: 51, type: !2531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!1064, !120, !1065, !129, !126}
!2533 = !DISubprogram(name: "set_quoting_style", scope: !102, file: !102, line: 287, type: !2534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !811)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !2536, !101}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
