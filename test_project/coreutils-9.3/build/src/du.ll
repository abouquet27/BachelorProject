; ModuleID = 'coreutils-9.3/build/src/du.ll'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.rpl_option = type { ptr, i32, ptr, i32 }
%struct.duinfo = type { i64, i64, %struct.timespec }
%struct.timespec = type { i64, i64 }
%struct.infomap = type { ptr, ptr }
%struct.__sFILE = type { ptr, i32, i32, i16, i16, %struct.__sbuf, i32, ptr, ptr, ptr, ptr, ptr, %struct.__sbuf, ptr, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sbuf = type { ptr, i32 }
%struct.FTS = type { ptr, ptr, ptr, i32, ptr, i32, i32, i64, i64, ptr, i32, ptr, %union.anon, %struct.I_ring }
%union.anon = type { ptr }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct._ftsent = type { ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, i64, i64, i16, i16, i16, [1 x %struct.stat], [0 x i8] }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.dulevel = type { %struct.duinfo, %struct.duinfo }
%struct.mount_entry = type { ptr, ptr, ptr, ptr, i32, i8, ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@program_name = external global ptr, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [74 x i8] c"Summarize device usage of the set of FILEs, recursively for directories.\0A\00", align 1, !dbg !12
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [442 x i8] c"  -0, --null            end each output line with NUL, not newline\0A  -a, --all             write counts for all files, not just directories\0A      --apparent-size   print apparent sizes rather than device usage; although\0A                          the apparent size is usually smaller, it may be\0A                          larger due to holes in ('sparse') files, internal\0A                          fragmentation, indirect blocks, and the like\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [692 x i8] c"  -B, --block-size=SIZE  scale sizes by SIZE before printing them; e.g.,\0A                           '-BM' prints sizes in units of 1,048,576 bytes;\0A                           see SIZE format below\0A  -b, --bytes           equivalent to '--apparent-size --block-size=1'\0A  -c, --total           produce a grand total\0A  -D, --dereference-args  dereference only symlinks that are listed on the\0A                          command line\0A  -d, --max-depth=N     print the total for a directory (or file, with --all)\0A                          only if it is N or fewer levels below the command\0A                          line argument;  --max-depth=0 is the same as\0A                          --summarize\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [419 x i8] c"      --files0-from=F   summarize device usage of the\0A                          NUL-terminated file names specified in file F;\0A                          if F is -, then read names from standard input\0A  -H                    equivalent to --dereference-args (-D)\0A  -h, --human-readable  print sizes in human readable format (e.g., 1K 234M 2G)\0A      --inodes          list inode usage information instead of block usage\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [208 x i8] c"  -k                    like --block-size=1K\0A  -L, --dereference     dereference all symbolic links\0A  -l, --count-links     count sizes many times if hard linked\0A  -m                    like --block-size=1M\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [285 x i8] c"  -P, --no-dereference  don't follow any symbolic links (this is the default)\0A  -S, --separate-dirs   for directories do not include size of subdirectories\0A      --si              like -h, but use powers of 1000 not 1024\0A  -s, --summarize       display only a total for each argument\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [611 x i8] c"  -t, --threshold=SIZE  exclude entries smaller than SIZE if positive,\0A                          or entries greater than SIZE if negative\0A      --time            show time of the last modification of any file in the\0A                          directory, or any of its subdirectories\0A      --time=WORD       show time as WORD instead of modification time:\0A                          atime, access, use, ctime or status\0A      --time-style=STYLE  show times using STYLE, which can be:\0A                            full-iso, long-iso, iso, or +FORMAT;\0A                            FORMAT is interpreted like in 'date'\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [203 x i8] c"  -X, --exclude-from=FILE  exclude files that match any pattern in FILE\0A      --exclude=PATTERN    exclude files that match PATTERN\0A  -x, --one-file-system    skip directories on different file systems\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [48 x i8] c"      --help        display this help and exit\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [57 x i8] c"      --version     output version information and exit\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [3 x i8] c"DU\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [3 x i8] c"du\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !74
@exclude = internal global ptr null, align 8, !dbg !79
@.str.16 = private unnamed_addr constant [14 x i8] c"DU_BLOCK_SIZE\00", align 1, !dbg !168
@human_output_opts = internal global i32 0, align 4, !dbg !392
@output_block_size = internal global i64 0, align 8, !dbg !400
@.str.17 = private unnamed_addr constant [24 x i8] c"0abd:chHklmst:xB:DLPSX:\00", align 1, !dbg !173
@long_options = internal constant [26 x %struct.rpl_option] [%struct.rpl_option { ptr @.str.74, i32 0, ptr null, i32 97 }, %struct.rpl_option { ptr @.str.75, i32 0, ptr null, i32 128 }, %struct.rpl_option { ptr @.str.76, i32 1, ptr null, i32 66 }, %struct.rpl_option { ptr @.str.77, i32 0, ptr null, i32 98 }, %struct.rpl_option { ptr @.str.78, i32 0, ptr null, i32 108 }, %struct.rpl_option { ptr @.str.79, i32 0, ptr null, i32 76 }, %struct.rpl_option { ptr @.str.80, i32 0, ptr null, i32 68 }, %struct.rpl_option { ptr @.str.81, i32 1, ptr null, i32 129 }, %struct.rpl_option { ptr @.str.82, i32 1, ptr null, i32 88 }, %struct.rpl_option { ptr @.str.83, i32 1, ptr null, i32 130 }, %struct.rpl_option { ptr @.str.84, i32 0, ptr null, i32 104 }, %struct.rpl_option { ptr @.str.85, i32 0, ptr null, i32 135 }, %struct.rpl_option { ptr @.str.86, i32 0, ptr null, i32 131 }, %struct.rpl_option { ptr @.str.87, i32 1, ptr null, i32 100 }, %struct.rpl_option { ptr @.str.88, i32 0, ptr null, i32 48 }, %struct.rpl_option { ptr @.str.89, i32 0, ptr null, i32 80 }, %struct.rpl_option { ptr @.str.90, i32 0, ptr null, i32 120 }, %struct.rpl_option { ptr @.str.91, i32 0, ptr null, i32 83 }, %struct.rpl_option { ptr @.str.92, i32 0, ptr null, i32 115 }, %struct.rpl_option { ptr @.str.53, i32 0, ptr null, i32 99 }, %struct.rpl_option { ptr @.str.93, i32 1, ptr null, i32 116 }, %struct.rpl_option { ptr @.str.94, i32 2, ptr null, i32 133 }, %struct.rpl_option { ptr @.str.95, i32 1, ptr null, i32 134 }, %struct.rpl_option { ptr @.str.96, i32 0, ptr null, i32 -130 }, %struct.rpl_option { ptr @.str.97, i32 0, ptr null, i32 -131 }, %struct.rpl_option zeroinitializer], align 16, !dbg !526
@opt_nul_terminate_output = internal global i8 0, align 1, !dbg !540
@opt_all = internal global i8 0, align 1, !dbg !542
@apparent_size = internal global i8 0, align 1, !dbg !544
@print_grand_total = internal global i8 0, align 1, !dbg !546
@rpl_optarg = external global ptr, align 8
@max_depth = internal global i64 -1, align 8, !dbg !548
@.str.18 = private unnamed_addr constant [25 x i8] c"invalid maximum depth %s\00", align 1, !dbg !178
@opt_count_all = internal global i8 0, align 1, !dbg !550
@opt_threshold = internal global i64 0, align 8, !dbg !552
@.str.19 = private unnamed_addr constant [14 x i8] c"kKmMGTPEZYRQ0\00", align 1, !dbg !183
@.str.20 = private unnamed_addr constant [34 x i8] c"invalid --threshold argument '-0'\00", align 1, !dbg !185
@opt_separate_dirs = internal global i8 0, align 1, !dbg !556
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !190
@opt_inodes = internal global i8 0, align 1, !dbg !558
@opt_time = internal global i8 0, align 1, !dbg !560
@time_types = internal constant [5 x i32] [i32 2, i32 2, i32 2, i32 1, i32 1], align 16, !dbg !562
@.str.22 = private unnamed_addr constant [7 x i8] c"--time\00", align 1, !dbg !192
@time_args = internal constant [6 x ptr] [ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr null], align 16, !dbg !576
@argmatch_die = external global ptr, align 8
@time_type = internal global i32 0, align 4, !dbg !580
@.str.23 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1, !dbg !197
@localtz = internal global ptr null, align 8, !dbg !394
@time_style = internal global ptr null, align 8, !dbg !582
@.str.24 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !199
@Version = external global ptr, align 8
@.str.25 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1, !dbg !201
@.str.26 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !206
@.str.27 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1, !dbg !211
@.str.28 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !216
@.str.29 = private unnamed_addr constant [43 x i8] c"cannot both summarize and show all entries\00", align 1, !dbg !221
@.str.30 = private unnamed_addr constant [56 x i8] c"warning: summarizing is the same as using --max-depth=0\00", align 1, !dbg !226
@.str.31 = private unnamed_addr constant [52 x i8] c"warning: summarizing conflicts with --max-depth=%lu\00", align 1, !dbg !231
@.str.32 = private unnamed_addr constant [70 x i8] c"warning: options --apparent-size and -b are ineffective with --inodes\00", align 1, !dbg !236
@.str.33 = private unnamed_addr constant [11 x i8] c"TIME_STYLE\00", align 1, !dbg !241
@.str.34 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !246
@.str.35 = private unnamed_addr constant [9 x i8] c"long-iso\00", align 1, !dbg !248
@main.posix_prefix = internal constant [7 x i8] c"posix-\00", align 1, !dbg !253
@time_format = internal global ptr null, align 8, !dbg !584
@time_style_types = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !586
@.str.36 = private unnamed_addr constant [11 x i8] c"time style\00", align 1, !dbg !315
@time_style_args = internal constant [4 x ptr] [ptr @.str.103, ptr @.str.35, ptr @.str.104, ptr null], align 16, !dbg !594
@.str.37 = private unnamed_addr constant [24 x i8] c"%Y-%m-%d %H:%M:%S.%N %z\00", align 1, !dbg !317
@.str.38 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1, !dbg !319
@.str.39 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1, !dbg !324
@rpl_optind = external global i32, align 4
@.str.40 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !326
@.str.41 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !331
@.str.42 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1, !dbg !336
@.str.43 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !338
@.str.44 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !340
@__stdinp = external global ptr, align 8
@.str.45 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1, !dbg !342
@hash_all = internal global i8 0, align 1, !dbg !390
@di_files = internal global ptr null, align 8, !dbg !383
@main.temp_argv = internal global [2 x ptr] zeroinitializer, align 16, !dbg !347
@.str.46 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1, !dbg !349
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !351
@.str.47 = private unnamed_addr constant [5 x i8] c"du.c\00", align 1, !dbg !356
@.str.48 = private unnamed_addr constant [40 x i8] c"!\22unexpected error code from argv_iter\22\00", align 1, !dbg !359
@.str.49 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1, !dbg !364
@.str.50 = private unnamed_addr constant [30 x i8] c"invalid zero-length file name\00", align 1, !dbg !369
@.str.51 = private unnamed_addr constant [11 x i8] c"%s:%lu: %s\00", align 1, !dbg !374
@di_mnt = internal global ptr null, align 8, !dbg !388
@.str.52 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1, !dbg !376
@tot_dui = internal global %struct.duinfo zeroinitializer, align 8, !dbg !402
@.str.53 = private unnamed_addr constant [6 x i8] c"total\00", align 1, !dbg !378
@.str.54 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !414
@.str.55 = private unnamed_addr constant [223 x i8] c"\0ADisplay values are in units of the first available SIZE from --block-size,\0Aand the %s_BLOCK_SIZE, BLOCK_SIZE and BLOCKSIZE environment variables.\0AOtherwise, units default to 1024 bytes (or 512 if POSIXLY_CORRECT is set).\0A\00", align 1, !dbg !419
@.str.56 = private unnamed_addr constant [216 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y,R,Q (powers of 1024) or KB,MB,... (powers of 1000).\0ABinary prefixes can be used, too: KiB=K, MiB=M, and so on.\0A\00", align 1, !dbg !424
@.str.57 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !429
@.str.58 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !431
@.str.59 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !433
@.str.60 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !438
@.str.61 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !443
@.str.62 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !445
@.str.63 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !447
@.str.64 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !449
@.str.65 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !451
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.57, ptr @.str.58 }, %struct.infomap { ptr @.str.59, ptr @.str.60 }, %struct.infomap { ptr @.str.61, ptr @.str.62 }, %struct.infomap { ptr @.str.63, ptr @.str.62 }, %struct.infomap { ptr @.str.64, ptr @.str.62 }, %struct.infomap { ptr @.str.65, ptr @.str.62 }, %struct.infomap zeroinitializer], align 16
@.str.66 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1, !dbg !453
@.str.67 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !458
@.str.68 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !460
@.str.69 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !462
@.str.70 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !464
@.str.71 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !466
@.str.72 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !468
@.str.73 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !473
@.str.74 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !475
@.str.75 = private unnamed_addr constant [14 x i8] c"apparent-size\00", align 1, !dbg !477
@.str.76 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1, !dbg !479
@.str.77 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1, !dbg !481
@.str.78 = private unnamed_addr constant [12 x i8] c"count-links\00", align 1, !dbg !483
@.str.79 = private unnamed_addr constant [12 x i8] c"dereference\00", align 1, !dbg !485
@.str.80 = private unnamed_addr constant [17 x i8] c"dereference-args\00", align 1, !dbg !487
@.str.81 = private unnamed_addr constant [8 x i8] c"exclude\00", align 1, !dbg !489
@.str.82 = private unnamed_addr constant [13 x i8] c"exclude-from\00", align 1, !dbg !494
@.str.83 = private unnamed_addr constant [12 x i8] c"files0-from\00", align 1, !dbg !496
@.str.84 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1, !dbg !498
@.str.85 = private unnamed_addr constant [7 x i8] c"inodes\00", align 1, !dbg !500
@.str.86 = private unnamed_addr constant [3 x i8] c"si\00", align 1, !dbg !502
@.str.87 = private unnamed_addr constant [10 x i8] c"max-depth\00", align 1, !dbg !504
@.str.88 = private unnamed_addr constant [5 x i8] c"null\00", align 1, !dbg !506
@.str.89 = private unnamed_addr constant [15 x i8] c"no-dereference\00", align 1, !dbg !508
@.str.90 = private unnamed_addr constant [16 x i8] c"one-file-system\00", align 1, !dbg !510
@.str.91 = private unnamed_addr constant [14 x i8] c"separate-dirs\00", align 1, !dbg !512
@.str.92 = private unnamed_addr constant [10 x i8] c"summarize\00", align 1, !dbg !514
@.str.93 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1, !dbg !516
@.str.94 = private unnamed_addr constant [5 x i8] c"time\00", align 1, !dbg !518
@.str.95 = private unnamed_addr constant [11 x i8] c"time-style\00", align 1, !dbg !520
@.str.96 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !522
@.str.97 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !524
@.str.98 = private unnamed_addr constant [6 x i8] c"atime\00", align 1, !dbg !566
@.str.99 = private unnamed_addr constant [7 x i8] c"access\00", align 1, !dbg !568
@.str.100 = private unnamed_addr constant [4 x i8] c"use\00", align 1, !dbg !570
@.str.101 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1, !dbg !572
@.str.102 = private unnamed_addr constant [7 x i8] c"status\00", align 1, !dbg !574
@.str.103 = private unnamed_addr constant [9 x i8] c"full-iso\00", align 1, !dbg !590
@.str.104 = private unnamed_addr constant [4 x i8] c"iso\00", align 1, !dbg !592
@.str.105 = private unnamed_addr constant [20 x i8] c"fts_read failed: %s\00", align 1, !dbg !597
@prev_level = internal global i64 0, align 8, !dbg !604
@.str.106 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1, !dbg !602
@process_file.n_alloc = internal global i64 0, align 8, !dbg !606
@process_file.dulvl = internal global ptr null, align 8, !dbg !801
@.str.107 = private unnamed_addr constant [25 x i8] c"cannot read directory %s\00", align 1, !dbg !808
@__func__.process_file = private unnamed_addr constant [13 x i8] c"process_file\00", align 1, !dbg !810
@.str.108 = private unnamed_addr constant [9 x i8] c"e == ent\00", align 1, !dbg !813
@.str.109 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1, !dbg !815
@.str.110 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1, !dbg !817
@.str.111 = private unnamed_addr constant [24 x i8] c"level == prev_level - 1\00", align 1, !dbg !822
@.str.112 = private unnamed_addr constant [6 x i8] c"\09%s%c\00", align 1, !dbg !824
@.str.113 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1, !dbg !826
@.str.114 = private unnamed_addr constant [24 x i8] c"time %s is out of range\00", align 1, !dbg !828

; Function Attrs: noreturn nounwind ssp uwtable
define void @usage(i32 noundef %0) #0 !dbg !840 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !844, metadata !DIExpression()), !dbg !845
  %2 = icmp ne i32 %0, 0, !dbg !846
  br i1 %2, label %3, label %9, !dbg !848

3:                                                ; preds = %1
  br label %4, !dbg !849

4:                                                ; preds = %3
  %5 = load ptr, ptr @__stderrp, align 8, !dbg !850, !tbaa !852
  %6 = load ptr, ptr @program_name, align 8, !dbg !850, !tbaa !852
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %6), !dbg !850
  br label %8, !dbg !850

8:                                                ; preds = %4
  br label %33, !dbg !850

9:                                                ; preds = %1
  %10 = load ptr, ptr @program_name, align 8, !dbg !856, !tbaa !852
  %11 = load ptr, ptr @program_name, align 8, !dbg !858, !tbaa !852
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %10, ptr noundef %11), !dbg !859
  %13 = load ptr, ptr @__stdoutp, align 8, !dbg !860, !tbaa !852
  %14 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %13), !dbg !861
  call void @emit_mandatory_arg_note(), !dbg !862
  %15 = load ptr, ptr @__stdoutp, align 8, !dbg !863, !tbaa !852
  %16 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %15), !dbg !864
  %17 = load ptr, ptr @__stdoutp, align 8, !dbg !865, !tbaa !852
  %18 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %17), !dbg !866
  %19 = load ptr, ptr @__stdoutp, align 8, !dbg !867, !tbaa !852
  %20 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %19), !dbg !868
  %21 = load ptr, ptr @__stdoutp, align 8, !dbg !869, !tbaa !852
  %22 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %21), !dbg !870
  %23 = load ptr, ptr @__stdoutp, align 8, !dbg !871, !tbaa !852
  %24 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %23), !dbg !872
  %25 = load ptr, ptr @__stdoutp, align 8, !dbg !873, !tbaa !852
  %26 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %25), !dbg !874
  %27 = load ptr, ptr @__stdoutp, align 8, !dbg !875, !tbaa !852
  %28 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %27), !dbg !876
  %29 = load ptr, ptr @__stdoutp, align 8, !dbg !877, !tbaa !852
  %30 = call i32 @"\01_fputs"(ptr noundef @.str.10, ptr noundef %29), !dbg !878
  %31 = load ptr, ptr @__stdoutp, align 8, !dbg !879, !tbaa !852
  %32 = call i32 @"\01_fputs"(ptr noundef @.str.11, ptr noundef %31), !dbg !880
  call void @emit_blocksize_note(ptr noundef @.str.12), !dbg !881
  call void @emit_size_note(), !dbg !882
  call void @emit_ancillary_info(ptr noundef @.str.13), !dbg !883
  br label %33

33:                                               ; preds = %9, %8
  call void @exit(i32 noundef %0) #15, !dbg !884
  unreachable, !dbg !884
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !885 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !941 i32 @printf(ptr noundef, ...) #2

declare !dbg !944 i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !947 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !950, !tbaa !852
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.54, ptr noundef %1), !dbg !951
  ret void, !dbg !952
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_blocksize_note(ptr noundef %0) #3 !dbg !953 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !957, metadata !DIExpression()), !dbg !958
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.55, ptr noundef %0), !dbg !959
  ret void, !dbg !960
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_size_note() #3 !dbg !961 {
  %1 = load ptr, ptr @__stdoutp, align 8, !dbg !962, !tbaa !852
  %2 = call i32 @"\01_fputs"(ptr noundef @.str.56, ptr noundef %1), !dbg !963
  ret void, !dbg !964
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @emit_ancillary_info(ptr noundef %0) #3 !dbg !965 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !967, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 112, ptr %2) #16, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %2, metadata !968, metadata !DIExpression()), !dbg !982
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.emit_ancillary_info.infomap, i64 112, i1 false), !dbg !982
  call void @llvm.dbg.value(metadata ptr %0, metadata !975, metadata !DIExpression()), !dbg !980
  %3 = getelementptr inbounds [7 x %struct.infomap], ptr %2, i64 0, i64 0, !dbg !983
  call void @llvm.dbg.value(metadata ptr %3, metadata !976, metadata !DIExpression()), !dbg !980
  br label %4, !dbg !984

4:                                                ; preds = %16, %1
  %.0 = phi ptr [ %3, %1 ], [ %17, %16 ], !dbg !980
  call void @llvm.dbg.value(metadata ptr %.0, metadata !976, metadata !DIExpression()), !dbg !980
  %5 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !985
  %6 = load ptr, ptr %5, align 8, !dbg !985, !tbaa !986
  %7 = icmp ne ptr %6, null, !dbg !988
  br i1 %7, label %8, label %14, !dbg !989

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 0, !dbg !990
  %10 = load ptr, ptr %9, align 8, !dbg !990, !tbaa !986
  %11 = call i32 @strcmp(ptr noundef %0, ptr noundef %10), !dbg !990
  %12 = icmp eq i32 %11, 0, !dbg !990
  %13 = xor i1 %12, true, !dbg !991
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i1 [ false, %4 ], [ %13, %8 ], !dbg !980
  br i1 %15, label %16, label %18, !dbg !984

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.infomap, ptr %.0, i32 1, !dbg !992
  call void @llvm.dbg.value(metadata ptr %17, metadata !976, metadata !DIExpression()), !dbg !980
  br label %4, !dbg !984, !llvm.loop !993

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !996
  %20 = load ptr, ptr %19, align 8, !dbg !996, !tbaa !998
  %21 = icmp ne ptr %20, null, !dbg !999
  br i1 %21, label %22, label %25, !dbg !1000

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.infomap, ptr %.0, i32 0, i32 1, !dbg !1001
  %24 = load ptr, ptr %23, align 8, !dbg !1001, !tbaa !998
  call void @llvm.dbg.value(metadata ptr %24, metadata !975, metadata !DIExpression()), !dbg !980
  br label %25, !dbg !1002

25:                                               ; preds = %22, %18
  %.01 = phi ptr [ %24, %22 ], [ %0, %18 ], !dbg !980
  call void @llvm.dbg.value(metadata ptr %.01, metadata !975, metadata !DIExpression()), !dbg !980
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.66, ptr noundef @.str.24, ptr noundef @.str.67), !dbg !1003
  %27 = call ptr @setlocale(i32 noundef 6, ptr noundef null), !dbg !1004
  call void @llvm.dbg.value(metadata ptr %27, metadata !978, metadata !DIExpression()), !dbg !980
  %28 = icmp ne ptr %27, null, !dbg !1005
  br i1 %28, label %29, label %35, !dbg !1007

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef %27, ptr noundef @.str.68, i64 noundef 3), !dbg !1008
  %31 = icmp ne i32 %30, 0, !dbg !1008
  br i1 %31, label %32, label %35, !dbg !1009

32:                                               ; preds = %29
  %33 = load ptr, ptr @__stdoutp, align 8, !dbg !1010, !tbaa !852
  %34 = call i32 @"\01_fputs"(ptr noundef @.str.69, ptr noundef %33), !dbg !1012
  br label %35, !dbg !1013

35:                                               ; preds = %32, %29, %25
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.57), !dbg !1014
  %37 = icmp eq i32 %36, 0, !dbg !1014
  br i1 %37, label %38, label %39, !dbg !1014

38:                                               ; preds = %35
  br label %40, !dbg !1014

39:                                               ; preds = %35
  br label %40, !dbg !1014

40:                                               ; preds = %39, %38
  %41 = phi ptr [ @.str.70, %38 ], [ %0, %39 ], !dbg !1014
  call void @llvm.dbg.value(metadata ptr %41, metadata !979, metadata !DIExpression()), !dbg !980
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.71, ptr noundef @.str.67, ptr noundef %41), !dbg !1015
  %43 = icmp eq ptr %.01, %0, !dbg !1016
  %44 = zext i1 %43 to i64, !dbg !1017
  %45 = select i1 %43, ptr @.str.73, ptr @.str.15, !dbg !1017
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.72, ptr noundef %.01, ptr noundef %45), !dbg !1018
  call void @llvm.lifetime.end.p0(i64 112, ptr %2) #16, !dbg !1019
  ret void, !dbg !1019
}

; Function Attrs: noreturn
declare !dbg !1020 void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !1022 i32 @strcmp(ptr noundef, ptr noundef) #2

declare !dbg !1026 ptr @setlocale(i32 noundef, ptr noundef) #2

declare !dbg !1030 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #7 !dbg !255 {
  %3 = alloca [2 x ptr], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !260, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr %1, metadata !261, metadata !DIExpression()), !dbg !1033
  call void @llvm.lifetime.start.p0(i64 16, ptr %3) #16, !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %3, metadata !262, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8 0, metadata !264, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 1, metadata !266, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr null, metadata !267, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 8, metadata !268, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 16, metadata !269, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, metadata !270, metadata !DIExpression()), !dbg !1033
  %7 = call ptr @bad_cast(ptr noundef @.str.14), !dbg !1036
  %8 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 0, !dbg !1037
  store ptr %7, ptr %8, align 16, !dbg !1038, !tbaa !852
  %9 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1, !dbg !1039
  store ptr null, ptr %9, align 8, !dbg !1040, !tbaa !852
  %10 = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !1041
  %11 = load ptr, ptr %10, align 8, !dbg !1041, !tbaa !852
  call void @set_program_name(ptr noundef %11), !dbg !1042
  %12 = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.15), !dbg !1043
  %13 = call i32 @atexit(ptr noundef @close_stdout), !dbg !1044
  %14 = call noalias nonnull ptr @new_exclude(), !dbg !1045
  store ptr %14, ptr @exclude, align 8, !dbg !1046, !tbaa !852
  %15 = call ptr @getenv(ptr noundef @.str.16), !dbg !1047
  %16 = call i32 @human_options(ptr noundef %15, ptr noundef @human_output_opts, ptr noundef @output_block_size), !dbg !1048
  br label %17, !dbg !1049

17:                                               ; preds = %120, %2
  %.019 = phi i8 [ 0, %2 ], [ %.221, %120 ], !dbg !1050
  %.016 = phi i32 [ 16, %2 ], [ %.218, %120 ], !dbg !1051
  %.012 = phi i32 [ 8, %2 ], [ %.214, %120 ], !dbg !1052
  %.09 = phi ptr [ null, %2 ], [ %.211, %120 ], !dbg !1053
  %.05 = phi i8 [ 1, %2 ], [ %.4, %120 ], !dbg !1054
  %.03 = phi i8 [ 0, %2 ], [ %.3, %120 ], !dbg !1055
  call void @llvm.dbg.value(metadata i8 %.03, metadata !264, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.05, metadata !266, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr %.09, metadata !267, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 %.012, metadata !268, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 %.016, metadata !269, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.019, metadata !270, metadata !DIExpression()), !dbg !1033
  br label %18, !dbg !1049

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #16, !dbg !1056
  call void @llvm.dbg.declare(metadata ptr %4, metadata !271, metadata !DIExpression()), !dbg !1057
  store i32 -1, ptr %4, align 4, !dbg !1057, !tbaa !1058
  %19 = call i32 @rpl_getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.17, ptr noundef @long_options, ptr noundef %4), !dbg !1060
  call void @llvm.dbg.value(metadata i32 %19, metadata !273, metadata !DIExpression()), !dbg !1061
  %20 = icmp eq i32 %19, -1, !dbg !1062
  br i1 %20, label %21, label %22, !dbg !1064

21:                                               ; preds = %18
  br label %119, !dbg !1065

22:                                               ; preds = %18
  switch i32 %19, label %117 [
    i32 48, label %23
    i32 97, label %24
    i32 128, label %25
    i32 98, label %26
    i32 99, label %27
    i32 104, label %28
    i32 131, label %29
    i32 107, label %30
    i32 100, label %31
    i32 109, label %44
    i32 108, label %45
    i32 115, label %46
    i32 116, label %47
    i32 120, label %65
    i32 66, label %67
    i32 72, label %76
    i32 68, label %76
    i32 76, label %77
    i32 80, label %78
    i32 83, label %79
    i32 88, label %80
    i32 130, label %91
    i32 129, label %93
    i32 135, label %96
    i32 133, label %97
    i32 134, label %111
    i32 -130, label %113
    i32 -131, label %114
  ], !dbg !1066

23:                                               ; preds = %22
  store i8 1, ptr @opt_nul_terminate_output, align 1, !dbg !1067, !tbaa !1068
  br label %118, !dbg !1070

24:                                               ; preds = %22
  store i8 1, ptr @opt_all, align 1, !dbg !1071, !tbaa !1068
  br label %118, !dbg !1072

25:                                               ; preds = %22
  store i8 1, ptr @apparent_size, align 1, !dbg !1073, !tbaa !1068
  br label %118, !dbg !1074

26:                                               ; preds = %22
  store i8 1, ptr @apparent_size, align 1, !dbg !1075, !tbaa !1068
  store i32 0, ptr @human_output_opts, align 4, !dbg !1076, !tbaa !1058
  store i64 1, ptr @output_block_size, align 8, !dbg !1077, !tbaa !1078
  br label %118, !dbg !1080

27:                                               ; preds = %22
  store i8 1, ptr @print_grand_total, align 1, !dbg !1081, !tbaa !1068
  br label %118, !dbg !1082

28:                                               ; preds = %22
  store i32 176, ptr @human_output_opts, align 4, !dbg !1083, !tbaa !1058
  store i64 1, ptr @output_block_size, align 8, !dbg !1084, !tbaa !1078
  br label %118, !dbg !1085

29:                                               ; preds = %22
  store i32 144, ptr @human_output_opts, align 4, !dbg !1086, !tbaa !1058
  store i64 1, ptr @output_block_size, align 8, !dbg !1087, !tbaa !1078
  br label %118, !dbg !1088

30:                                               ; preds = %22
  store i32 0, ptr @human_output_opts, align 4, !dbg !1089, !tbaa !1058
  store i64 1024, ptr @output_block_size, align 8, !dbg !1090, !tbaa !1078
  br label %118, !dbg !1091

31:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #16, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %5, metadata !274, metadata !DIExpression()), !dbg !1093
  %32 = load ptr, ptr @rpl_optarg, align 8, !dbg !1094, !tbaa !852
  %33 = call i32 @xstrtoumax(ptr noundef %32, ptr noundef null, i32 noundef 0, ptr noundef %5, ptr noundef @.str.15), !dbg !1096
  %34 = icmp eq i32 %33, 0, !dbg !1097
  br i1 %34, label %35, label %40, !dbg !1098

35:                                               ; preds = %31
  %36 = load i64, ptr %5, align 8, !dbg !1099, !tbaa !1078
  %37 = icmp ule i64 %36, -1, !dbg !1100
  br i1 %37, label %38, label %40, !dbg !1101

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8 1, metadata !264, metadata !DIExpression()), !dbg !1033
  %39 = load i64, ptr %5, align 8, !dbg !1102, !tbaa !1078
  store i64 %39, ptr @max_depth, align 8, !dbg !1104, !tbaa !1078
  br label %43, !dbg !1105

40:                                               ; preds = %35, %31
  %41 = load ptr, ptr @rpl_optarg, align 8, !dbg !1106, !tbaa !852
  %42 = call ptr @quote(ptr noundef %41), !dbg !1108
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.18, ptr noundef %42), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, metadata !266, metadata !DIExpression()), !dbg !1033
  br label %43

43:                                               ; preds = %40, %38
  %.16 = phi i8 [ %.05, %38 ], [ 0, %40 ], !dbg !1033
  %.14 = phi i8 [ 1, %38 ], [ %.03, %40 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.14, metadata !264, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.16, metadata !266, metadata !DIExpression()), !dbg !1033
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #16, !dbg !1110
  br label %118, !dbg !1111

44:                                               ; preds = %22
  store i32 0, ptr @human_output_opts, align 4, !dbg !1112, !tbaa !1058
  store i64 1048576, ptr @output_block_size, align 8, !dbg !1113, !tbaa !1078
  br label %118, !dbg !1114

45:                                               ; preds = %22
  store i8 1, ptr @opt_count_all, align 1, !dbg !1115, !tbaa !1068
  br label %118, !dbg !1116

46:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !270, metadata !DIExpression()), !dbg !1033
  br label %118, !dbg !1117

47:                                               ; preds = %22
  %48 = load ptr, ptr @rpl_optarg, align 8, !dbg !1118, !tbaa !852
  %49 = call i32 @xstrtoimax(ptr noundef %48, ptr noundef null, i32 noundef 0, ptr noundef @opt_threshold, ptr noundef @.str.19), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %49, metadata !277, metadata !DIExpression()), !dbg !1120
  %50 = icmp ne i32 %49, 0, !dbg !1121
  br i1 %50, label %51, label %55, !dbg !1123

51:                                               ; preds = %47
  %52 = load i32, ptr %4, align 4, !dbg !1124, !tbaa !1058
  %53 = trunc i32 %19 to i8, !dbg !1125
  %54 = load ptr, ptr @rpl_optarg, align 8, !dbg !1126, !tbaa !852
  call void @xstrtol_fatal(i32 noundef %49, i32 noundef %52, i8 noundef signext %53, ptr noundef @long_options, ptr noundef %54) #15, !dbg !1127
  unreachable, !dbg !1127

55:                                               ; preds = %47
  %56 = load i64, ptr @opt_threshold, align 8, !dbg !1128, !tbaa !1078
  %57 = icmp eq i64 %56, 0, !dbg !1130
  br i1 %57, label %58, label %64, !dbg !1131

58:                                               ; preds = %55
  %59 = load ptr, ptr @rpl_optarg, align 8, !dbg !1132, !tbaa !852
  %60 = load i8, ptr %59, align 1, !dbg !1133, !tbaa !1134
  %61 = sext i8 %60 to i32, !dbg !1133
  %62 = icmp eq i32 %61, 45, !dbg !1135
  br i1 %62, label %63, label %64, !dbg !1136

63:                                               ; preds = %58
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.20), !dbg !1137
  unreachable, !dbg !1137

64:                                               ; preds = %58, %55
  br label %118, !dbg !1139

65:                                               ; preds = %22
  %66 = or i32 %.012, 64, !dbg !1140
  call void @llvm.dbg.value(metadata i32 %66, metadata !268, metadata !DIExpression()), !dbg !1033
  br label %118, !dbg !1141

67:                                               ; preds = %22
  %68 = load ptr, ptr @rpl_optarg, align 8, !dbg !1142, !tbaa !852
  %69 = call i32 @human_options(ptr noundef %68, ptr noundef @human_output_opts, ptr noundef @output_block_size), !dbg !1143
  call void @llvm.dbg.value(metadata i32 %69, metadata !279, metadata !DIExpression()), !dbg !1144
  %70 = icmp ne i32 %69, 0, !dbg !1145
  br i1 %70, label %71, label %75, !dbg !1147

71:                                               ; preds = %67
  %72 = load i32, ptr %4, align 4, !dbg !1148, !tbaa !1058
  %73 = trunc i32 %19 to i8, !dbg !1149
  %74 = load ptr, ptr @rpl_optarg, align 8, !dbg !1150, !tbaa !852
  call void @xstrtol_fatal(i32 noundef %69, i32 noundef %72, i8 noundef signext %73, ptr noundef @long_options, ptr noundef %74) #15, !dbg !1151
  unreachable, !dbg !1151

75:                                               ; preds = %67
  br label %118, !dbg !1152

76:                                               ; preds = %22, %22
  call void @llvm.dbg.value(metadata i32 17, metadata !269, metadata !DIExpression()), !dbg !1033
  br label %118, !dbg !1153

77:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 2, metadata !269, metadata !DIExpression()), !dbg !1033
  br label %118, !dbg !1154

78:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 16, metadata !269, metadata !DIExpression()), !dbg !1033
  br label %118, !dbg !1155

79:                                               ; preds = %22
  store i8 1, ptr @opt_separate_dirs, align 1, !dbg !1156, !tbaa !1068
  br label %118, !dbg !1157

80:                                               ; preds = %22
  %81 = load ptr, ptr @exclude, align 8, !dbg !1158, !tbaa !852
  %82 = load ptr, ptr @rpl_optarg, align 8, !dbg !1160, !tbaa !852
  %83 = call i32 @add_exclude_file(ptr noundef @add_exclude, ptr noundef %81, ptr noundef %82, i32 noundef 268435456, i8 noundef signext 10), !dbg !1161
  %84 = icmp ne i32 %83, 0, !dbg !1161
  br i1 %84, label %85, label %90, !dbg !1162

85:                                               ; preds = %80
  %86 = call ptr @__error(), !dbg !1163
  %87 = load i32, ptr %86, align 4, !dbg !1163, !tbaa !1058
  %88 = load ptr, ptr @rpl_optarg, align 8, !dbg !1165, !tbaa !852
  %89 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %88), !dbg !1165
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %87, ptr noundef @.str.21, ptr noundef %89), !dbg !1166
  call void @llvm.dbg.value(metadata i8 0, metadata !266, metadata !DIExpression()), !dbg !1033
  br label %90, !dbg !1167

90:                                               ; preds = %85, %80
  %.27 = phi i8 [ 0, %85 ], [ %.05, %80 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.27, metadata !266, metadata !DIExpression()), !dbg !1033
  br label %118, !dbg !1168

91:                                               ; preds = %22
  %92 = load ptr, ptr @rpl_optarg, align 8, !dbg !1169, !tbaa !852
  call void @llvm.dbg.value(metadata ptr %92, metadata !267, metadata !DIExpression()), !dbg !1033
  br label %118, !dbg !1170

93:                                               ; preds = %22
  %94 = load ptr, ptr @exclude, align 8, !dbg !1171, !tbaa !852
  %95 = load ptr, ptr @rpl_optarg, align 8, !dbg !1172, !tbaa !852
  call void @add_exclude(ptr noundef %94, ptr noundef %95, i32 noundef 268435456), !dbg !1173
  br label %118, !dbg !1174

96:                                               ; preds = %22
  store i8 1, ptr @opt_inodes, align 1, !dbg !1175, !tbaa !1068
  br label %118, !dbg !1176

97:                                               ; preds = %22
  store i8 1, ptr @opt_time, align 1, !dbg !1177, !tbaa !1068
  %98 = load ptr, ptr @rpl_optarg, align 8, !dbg !1178, !tbaa !852
  %99 = icmp ne ptr %98, null, !dbg !1178
  br i1 %99, label %100, label %106, !dbg !1178

100:                                              ; preds = %97
  %101 = load ptr, ptr @rpl_optarg, align 8, !dbg !1179, !tbaa !852
  %102 = load ptr, ptr @argmatch_die, align 8, !dbg !1179, !tbaa !852
  %103 = call i64 @__xargmatch_internal(ptr noundef @.str.22, ptr noundef %101, ptr noundef @time_args, ptr noundef @time_types, i64 noundef 4, ptr noundef %102, i1 noundef zeroext true), !dbg !1179
  %104 = getelementptr inbounds [5 x i32], ptr @time_types, i64 0, i64 %103, !dbg !1179
  %105 = load i32, ptr %104, align 4, !dbg !1179, !tbaa !1134
  br label %107, !dbg !1178

106:                                              ; preds = %97
  br label %107, !dbg !1178

107:                                              ; preds = %106, %100
  %108 = phi i32 [ %105, %100 ], [ 0, %106 ], !dbg !1178
  store i32 %108, ptr @time_type, align 4, !dbg !1180, !tbaa !1134
  %109 = call ptr @getenv(ptr noundef @.str.23), !dbg !1181
  %110 = call ptr @tzalloc(ptr noundef %109), !dbg !1182
  store ptr %110, ptr @localtz, align 8, !dbg !1183, !tbaa !852
  br label %118, !dbg !1184

111:                                              ; preds = %22
  %112 = load ptr, ptr @rpl_optarg, align 8, !dbg !1185, !tbaa !852
  store ptr %112, ptr @time_style, align 8, !dbg !1186, !tbaa !852
  br label %118, !dbg !1187

113:                                              ; preds = %22
  call void @usage(i32 noundef 0) #15, !dbg !1188
  unreachable, !dbg !1188

114:                                              ; preds = %22
  %115 = load ptr, ptr @__stdoutp, align 8, !dbg !1189, !tbaa !852
  %116 = load ptr, ptr @Version, align 8, !dbg !1189, !tbaa !852
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %115, ptr noundef @.str.13, ptr noundef @.str.24, ptr noundef %116, ptr noundef @.str.25, ptr noundef @.str.26, ptr noundef @.str.27, ptr noundef @.str.28, ptr noundef null), !dbg !1189
  call void @exit(i32 noundef 0) #15, !dbg !1189
  unreachable, !dbg !1189

117:                                              ; preds = %22
  call void @llvm.dbg.value(metadata i8 0, metadata !266, metadata !DIExpression()), !dbg !1033
  br label %118, !dbg !1190

118:                                              ; preds = %117, %111, %107, %96, %93, %91, %90, %79, %78, %77, %76, %75, %65, %64, %46, %45, %44, %43, %30, %29, %28, %27, %26, %25, %24, %23
  %.120 = phi i8 [ %.019, %117 ], [ %.019, %111 ], [ %.019, %107 ], [ %.019, %96 ], [ %.019, %93 ], [ %.019, %91 ], [ %.019, %90 ], [ %.019, %79 ], [ %.019, %78 ], [ %.019, %77 ], [ %.019, %76 ], [ %.019, %75 ], [ %.019, %65 ], [ %.019, %64 ], [ 1, %46 ], [ %.019, %45 ], [ %.019, %44 ], [ %.019, %43 ], [ %.019, %30 ], [ %.019, %29 ], [ %.019, %28 ], [ %.019, %27 ], [ %.019, %26 ], [ %.019, %25 ], [ %.019, %24 ], [ %.019, %23 ], !dbg !1033
  %.117 = phi i32 [ %.016, %117 ], [ %.016, %111 ], [ %.016, %107 ], [ %.016, %96 ], [ %.016, %93 ], [ %.016, %91 ], [ %.016, %90 ], [ %.016, %79 ], [ 16, %78 ], [ 2, %77 ], [ 17, %76 ], [ %.016, %75 ], [ %.016, %65 ], [ %.016, %64 ], [ %.016, %46 ], [ %.016, %45 ], [ %.016, %44 ], [ %.016, %43 ], [ %.016, %30 ], [ %.016, %29 ], [ %.016, %28 ], [ %.016, %27 ], [ %.016, %26 ], [ %.016, %25 ], [ %.016, %24 ], [ %.016, %23 ], !dbg !1033
  %.113 = phi i32 [ %.012, %117 ], [ %.012, %111 ], [ %.012, %107 ], [ %.012, %96 ], [ %.012, %93 ], [ %.012, %91 ], [ %.012, %90 ], [ %.012, %79 ], [ %.012, %78 ], [ %.012, %77 ], [ %.012, %76 ], [ %.012, %75 ], [ %66, %65 ], [ %.012, %64 ], [ %.012, %46 ], [ %.012, %45 ], [ %.012, %44 ], [ %.012, %43 ], [ %.012, %30 ], [ %.012, %29 ], [ %.012, %28 ], [ %.012, %27 ], [ %.012, %26 ], [ %.012, %25 ], [ %.012, %24 ], [ %.012, %23 ], !dbg !1033
  %.110 = phi ptr [ %.09, %117 ], [ %.09, %111 ], [ %.09, %107 ], [ %.09, %96 ], [ %.09, %93 ], [ %92, %91 ], [ %.09, %90 ], [ %.09, %79 ], [ %.09, %78 ], [ %.09, %77 ], [ %.09, %76 ], [ %.09, %75 ], [ %.09, %65 ], [ %.09, %64 ], [ %.09, %46 ], [ %.09, %45 ], [ %.09, %44 ], [ %.09, %43 ], [ %.09, %30 ], [ %.09, %29 ], [ %.09, %28 ], [ %.09, %27 ], [ %.09, %26 ], [ %.09, %25 ], [ %.09, %24 ], [ %.09, %23 ], !dbg !1033
  %.38 = phi i8 [ 0, %117 ], [ %.05, %111 ], [ %.05, %107 ], [ %.05, %96 ], [ %.05, %93 ], [ %.05, %91 ], [ %.27, %90 ], [ %.05, %79 ], [ %.05, %78 ], [ %.05, %77 ], [ %.05, %76 ], [ %.05, %75 ], [ %.05, %65 ], [ %.05, %64 ], [ %.05, %46 ], [ %.05, %45 ], [ %.05, %44 ], [ %.16, %43 ], [ %.05, %30 ], [ %.05, %29 ], [ %.05, %28 ], [ %.05, %27 ], [ %.05, %26 ], [ %.05, %25 ], [ %.05, %24 ], [ %.05, %23 ], !dbg !1033
  %.2 = phi i8 [ %.03, %117 ], [ %.03, %111 ], [ %.03, %107 ], [ %.03, %96 ], [ %.03, %93 ], [ %.03, %91 ], [ %.03, %90 ], [ %.03, %79 ], [ %.03, %78 ], [ %.03, %77 ], [ %.03, %76 ], [ %.03, %75 ], [ %.03, %65 ], [ %.03, %64 ], [ %.03, %46 ], [ %.03, %45 ], [ %.03, %44 ], [ %.14, %43 ], [ %.03, %30 ], [ %.03, %29 ], [ %.03, %28 ], [ %.03, %27 ], [ %.03, %26 ], [ %.03, %25 ], [ %.03, %24 ], [ %.03, %23 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.2, metadata !264, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.38, metadata !266, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr %.110, metadata !267, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 %.113, metadata !268, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 %.117, metadata !269, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.120, metadata !270, metadata !DIExpression()), !dbg !1033
  br label %119, !dbg !1191

119:                                              ; preds = %118, %21
  %.022 = phi i32 [ 3, %21 ], [ 0, %118 ]
  %.221 = phi i8 [ %.019, %21 ], [ %.120, %118 ], !dbg !1050
  %.218 = phi i32 [ %.016, %21 ], [ %.117, %118 ], !dbg !1051
  %.214 = phi i32 [ %.012, %21 ], [ %.113, %118 ], !dbg !1052
  %.211 = phi ptr [ %.09, %21 ], [ %.110, %118 ], !dbg !1053
  %.4 = phi i8 [ %.05, %21 ], [ %.38, %118 ], !dbg !1033
  %.3 = phi i8 [ %.03, %21 ], [ %.2, %118 ], !dbg !1055
  call void @llvm.dbg.value(metadata i8 %.3, metadata !264, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.4, metadata !266, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr %.211, metadata !267, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 %.214, metadata !268, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 %.218, metadata !269, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.221, metadata !270, metadata !DIExpression()), !dbg !1033
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #16, !dbg !1191
  switch i32 %.022, label %359 [
    i32 0, label %120
    i32 3, label %121
  ]

120:                                              ; preds = %119
  br label %17, !dbg !1049, !llvm.loop !1192

121:                                              ; preds = %119
  %122 = trunc i8 %.4 to i1, !dbg !1193
  br i1 %122, label %124, label %123, !dbg !1195

123:                                              ; preds = %121
  call void @usage(i32 noundef 1) #15, !dbg !1196
  unreachable, !dbg !1196

124:                                              ; preds = %121
  %125 = load i8, ptr @opt_all, align 1, !dbg !1197, !tbaa !1068, !range !1199, !noundef !940
  %126 = trunc i8 %125 to i1, !dbg !1197
  br i1 %126, label %127, label %130, !dbg !1200

127:                                              ; preds = %124
  %128 = trunc i8 %.221 to i1, !dbg !1201
  br i1 %128, label %129, label %130, !dbg !1202

129:                                              ; preds = %127
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.29), !dbg !1203
  call void @usage(i32 noundef 1) #15, !dbg !1205
  unreachable, !dbg !1205

130:                                              ; preds = %127, %124
  %131 = trunc i8 %.221 to i1, !dbg !1206
  br i1 %131, label %132, label %138, !dbg !1208

132:                                              ; preds = %130
  %133 = trunc i8 %.3 to i1, !dbg !1209
  br i1 %133, label %134, label %138, !dbg !1210

134:                                              ; preds = %132
  %135 = load i64, ptr @max_depth, align 8, !dbg !1211, !tbaa !1078
  %136 = icmp eq i64 %135, 0, !dbg !1212
  br i1 %136, label %137, label %138, !dbg !1213

137:                                              ; preds = %134
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.30), !dbg !1214
  br label %138, !dbg !1216

138:                                              ; preds = %137, %134, %132, %130
  %139 = trunc i8 %.221 to i1, !dbg !1217
  br i1 %139, label %140, label %147, !dbg !1218

140:                                              ; preds = %138
  %141 = trunc i8 %.3 to i1, !dbg !1219
  br i1 %141, label %142, label %147, !dbg !1220

142:                                              ; preds = %140
  %143 = load i64, ptr @max_depth, align 8, !dbg !1221, !tbaa !1078
  %144 = icmp ne i64 %143, 0, !dbg !1222
  br i1 %144, label %145, label %147, !dbg !1223

145:                                              ; preds = %142
  %146 = load i64, ptr @max_depth, align 8, !dbg !1224, !tbaa !1078
  call void @llvm.dbg.value(metadata i64 %146, metadata !281, metadata !DIExpression()), !dbg !1225
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.31, i64 noundef %146), !dbg !1226
  call void @usage(i32 noundef 1) #15, !dbg !1227
  unreachable, !dbg !1227

147:                                              ; preds = %142, %140, %138
  %148 = trunc i8 %.221 to i1, !dbg !1228
  br i1 %148, label %149, label %150, !dbg !1230

149:                                              ; preds = %147
  store i64 0, ptr @max_depth, align 8, !dbg !1231, !tbaa !1078
  br label %150, !dbg !1232

150:                                              ; preds = %149, %147
  %151 = load i8, ptr @opt_inodes, align 1, !dbg !1233, !tbaa !1068, !range !1199, !noundef !940
  %152 = trunc i8 %151 to i1, !dbg !1233
  br i1 %152, label %153, label %158, !dbg !1235

153:                                              ; preds = %150
  %154 = load i8, ptr @apparent_size, align 1, !dbg !1236, !tbaa !1068, !range !1199, !noundef !940
  %155 = trunc i8 %154 to i1, !dbg !1236
  br i1 %155, label %156, label %157, !dbg !1239

156:                                              ; preds = %153
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.32), !dbg !1240
  br label %157, !dbg !1242

157:                                              ; preds = %156, %153
  store i64 1, ptr @output_block_size, align 8, !dbg !1243, !tbaa !1078
  br label %158, !dbg !1244

158:                                              ; preds = %157, %150
  %159 = load i8, ptr @opt_time, align 1, !dbg !1245, !tbaa !1068, !range !1199, !noundef !940
  %160 = trunc i8 %159 to i1, !dbg !1245
  br i1 %160, label %161, label %214, !dbg !1246

161:                                              ; preds = %158
  %162 = load ptr, ptr @time_style, align 8, !dbg !1247, !tbaa !852
  %163 = icmp ne ptr %162, null, !dbg !1247
  br i1 %163, label %195, label %164, !dbg !1248

164:                                              ; preds = %161
  %165 = call ptr @getenv(ptr noundef @.str.33), !dbg !1249
  store ptr %165, ptr @time_style, align 8, !dbg !1250, !tbaa !852
  %166 = load ptr, ptr @time_style, align 8, !dbg !1251, !tbaa !852
  %167 = icmp ne ptr %166, null, !dbg !1251
  br i1 %167, label %168, label %172, !dbg !1252

168:                                              ; preds = %164
  %169 = load ptr, ptr @time_style, align 8, !dbg !1253, !tbaa !852
  %170 = call i32 @strcmp(ptr noundef %169, ptr noundef @.str.34), !dbg !1253
  %171 = icmp eq i32 %170, 0, !dbg !1253
  br i1 %171, label %172, label %173, !dbg !1254

172:                                              ; preds = %168, %164
  store ptr @.str.35, ptr @time_style, align 8, !dbg !1255, !tbaa !852
  br label %194, !dbg !1256

173:                                              ; preds = %168
  %174 = load ptr, ptr @time_style, align 8, !dbg !1257, !tbaa !852
  %175 = load i8, ptr %174, align 1, !dbg !1258, !tbaa !1134
  %176 = sext i8 %175 to i32, !dbg !1258
  %177 = icmp eq i32 %176, 43, !dbg !1259
  br i1 %177, label %178, label %184, !dbg !1260

178:                                              ; preds = %173
  %179 = load ptr, ptr @time_style, align 8, !dbg !1261, !tbaa !852
  %180 = call ptr @strchr(ptr noundef %179, i32 noundef 10), !dbg !1262
  call void @llvm.dbg.value(metadata ptr %180, metadata !284, metadata !DIExpression()), !dbg !1263
  %181 = icmp ne ptr %180, null, !dbg !1264
  br i1 %181, label %182, label %183, !dbg !1266

182:                                              ; preds = %178
  store i8 0, ptr %180, align 1, !dbg !1267, !tbaa !1134
  br label %183, !dbg !1268

183:                                              ; preds = %182, %178
  br label %193, !dbg !1269

184:                                              ; preds = %173
  br label %185, !dbg !1270

185:                                              ; preds = %189, %184
  %186 = load ptr, ptr @time_style, align 8, !dbg !1272, !tbaa !852
  %187 = call i32 @strncmp(ptr noundef %186, ptr noundef @main.posix_prefix, i64 noundef 6), !dbg !1272
  %188 = icmp eq i32 %187, 0, !dbg !1272
  br i1 %188, label %189, label %192, !dbg !1270

189:                                              ; preds = %185
  %190 = load ptr, ptr @time_style, align 8, !dbg !1273, !tbaa !852
  %191 = getelementptr inbounds i8, ptr %190, i64 6, !dbg !1273
  store ptr %191, ptr @time_style, align 8, !dbg !1273, !tbaa !852
  br label %185, !dbg !1270, !llvm.loop !1274

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192, %183
  br label %194

194:                                              ; preds = %193, %172
  br label %195, !dbg !1276

195:                                              ; preds = %194, %161
  %196 = load ptr, ptr @time_style, align 8, !dbg !1277, !tbaa !852
  %197 = load i8, ptr %196, align 1, !dbg !1279, !tbaa !1134
  %198 = sext i8 %197 to i32, !dbg !1279
  %199 = icmp eq i32 %198, 43, !dbg !1280
  br i1 %199, label %200, label %203, !dbg !1281

200:                                              ; preds = %195
  %201 = load ptr, ptr @time_style, align 8, !dbg !1282, !tbaa !852
  %202 = getelementptr inbounds i8, ptr %201, i64 1, !dbg !1283
  store ptr %202, ptr @time_format, align 8, !dbg !1284, !tbaa !852
  br label %213, !dbg !1285

203:                                              ; preds = %195
  %204 = load ptr, ptr @time_style, align 8, !dbg !1286, !tbaa !852
  %205 = load ptr, ptr @argmatch_die, align 8, !dbg !1286, !tbaa !852
  %206 = call i64 @__xargmatch_internal(ptr noundef @.str.36, ptr noundef %204, ptr noundef @time_style_args, ptr noundef @time_style_types, i64 noundef 4, ptr noundef %205, i1 noundef zeroext true), !dbg !1286
  %207 = getelementptr inbounds [3 x i32], ptr @time_style_types, i64 0, i64 %206, !dbg !1286
  %208 = load i32, ptr %207, align 4, !dbg !1286, !tbaa !1134
  switch i32 %208, label %212 [
    i32 0, label %209
    i32 1, label %210
    i32 2, label %211
  ], !dbg !1288

209:                                              ; preds = %203
  store ptr @.str.37, ptr @time_format, align 8, !dbg !1289, !tbaa !852
  br label %212, !dbg !1291

210:                                              ; preds = %203
  store ptr @.str.38, ptr @time_format, align 8, !dbg !1292, !tbaa !852
  br label %212, !dbg !1293

211:                                              ; preds = %203
  store ptr @.str.39, ptr @time_format, align 8, !dbg !1294, !tbaa !852
  br label %212, !dbg !1295

212:                                              ; preds = %211, %210, %209, %203
  br label %213

213:                                              ; preds = %212, %200
  br label %214, !dbg !1296

214:                                              ; preds = %213, %158
  %215 = icmp ne ptr %.211, null, !dbg !1297
  br i1 %215, label %216, label %241, !dbg !1298

216:                                              ; preds = %214
  %217 = load i32, ptr @rpl_optind, align 4, !dbg !1299, !tbaa !1058
  %218 = icmp slt i32 %217, %0, !dbg !1302
  br i1 %218, label %219, label %227, !dbg !1303

219:                                              ; preds = %216
  %220 = load i32, ptr @rpl_optind, align 4, !dbg !1304, !tbaa !1058
  %221 = sext i32 %220 to i64, !dbg !1306
  %222 = getelementptr inbounds ptr, ptr %1, i64 %221, !dbg !1306
  %223 = load ptr, ptr %222, align 8, !dbg !1306, !tbaa !852
  %224 = call ptr @quote(ptr noundef %223), !dbg !1307
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.40, ptr noundef %224), !dbg !1308
  %225 = load ptr, ptr @__stderrp, align 8, !dbg !1309, !tbaa !852
  %226 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef @.str.41, ptr noundef @.str.42), !dbg !1310
  call void @usage(i32 noundef 1) #15, !dbg !1311
  unreachable, !dbg !1311

227:                                              ; preds = %216
  %228 = call i32 @strcmp(ptr noundef %.211, ptr noundef @.str.43), !dbg !1312
  %229 = icmp eq i32 %228, 0, !dbg !1312
  br i1 %229, label %238, label %230, !dbg !1314

230:                                              ; preds = %227
  %231 = load ptr, ptr @__stdinp, align 8, !dbg !1315, !tbaa !852
  %232 = call ptr @freopen_safer(ptr noundef %.211, ptr noundef @.str.44, ptr noundef %231), !dbg !1316
  %233 = icmp ne ptr %232, null, !dbg !1316
  br i1 %233, label %238, label %234, !dbg !1317

234:                                              ; preds = %230
  %235 = call ptr @__error(), !dbg !1318
  %236 = load i32, ptr %235, align 4, !dbg !1318, !tbaa !1058
  %237 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %.211), !dbg !1318
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %236, ptr noundef @.str.45, ptr noundef %237), !dbg !1318
  unreachable, !dbg !1318

238:                                              ; preds = %230, %227
  %239 = load ptr, ptr @__stdinp, align 8, !dbg !1319, !tbaa !852
  %240 = call ptr @argv_iter_init_stream(ptr noundef %239), !dbg !1320
  call void @llvm.dbg.value(metadata ptr %240, metadata !292, metadata !DIExpression()), !dbg !1033
  store i8 1, ptr @hash_all, align 1, !dbg !1321, !tbaa !1068
  br label %261, !dbg !1322

241:                                              ; preds = %214
  %242 = load i32, ptr @rpl_optind, align 4, !dbg !1323, !tbaa !1058
  %243 = icmp slt i32 %242, %0, !dbg !1324
  br i1 %243, label %244, label %248, !dbg !1323

244:                                              ; preds = %241
  %245 = load i32, ptr @rpl_optind, align 4, !dbg !1325, !tbaa !1058
  %246 = sext i32 %245 to i64, !dbg !1326
  %247 = getelementptr inbounds ptr, ptr %1, i64 %246, !dbg !1326
  br label %250, !dbg !1323

248:                                              ; preds = %241
  %249 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 0, !dbg !1327
  br label %250, !dbg !1323

250:                                              ; preds = %248, %244
  %251 = phi ptr [ %247, %244 ], [ %249, %248 ], !dbg !1323
  call void @llvm.dbg.value(metadata ptr %251, metadata !295, metadata !DIExpression()), !dbg !1328
  %252 = call ptr @argv_iter_init_argv(ptr noundef %251), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %252, metadata !292, metadata !DIExpression()), !dbg !1033
  %253 = load i32, ptr @rpl_optind, align 4, !dbg !1330, !tbaa !1058
  %254 = add nsw i32 %253, 1, !dbg !1331
  %255 = icmp slt i32 %254, %0, !dbg !1332
  br i1 %255, label %258, label %256, !dbg !1333

256:                                              ; preds = %250
  %257 = icmp eq i32 %.218, 2, !dbg !1334
  br label %258, !dbg !1333

258:                                              ; preds = %256, %250
  %259 = phi i1 [ true, %250 ], [ %257, %256 ]
  %260 = zext i1 %259 to i8, !dbg !1335
  store i8 %260, ptr @hash_all, align 1, !dbg !1335, !tbaa !1068
  br label %261

261:                                              ; preds = %258, %238
  %.02 = phi ptr [ %240, %238 ], [ %252, %258 ], !dbg !1336
  call void @llvm.dbg.value(metadata ptr %.02, metadata !292, metadata !DIExpression()), !dbg !1033
  %262 = icmp ne ptr %.02, null, !dbg !1337
  br i1 %262, label %264, label %263, !dbg !1339

263:                                              ; preds = %261
  call void @xalloc_die() #15, !dbg !1340
  unreachable, !dbg !1340

264:                                              ; preds = %261
  %265 = call noalias ptr @di_set_alloc(), !dbg !1341
  store ptr %265, ptr @di_files, align 8, !dbg !1342, !tbaa !852
  %266 = load ptr, ptr @di_files, align 8, !dbg !1343, !tbaa !852
  %267 = icmp ne ptr %266, null, !dbg !1343
  br i1 %267, label %269, label %268, !dbg !1345

268:                                              ; preds = %264
  call void @xalloc_die() #15, !dbg !1346
  unreachable, !dbg !1346

269:                                              ; preds = %264
  %270 = load i8, ptr @opt_count_all, align 1, !dbg !1347, !tbaa !1068, !range !1199, !noundef !940
  %271 = trunc i8 %270 to i1, !dbg !1347
  br i1 %271, label %275, label %272, !dbg !1349

272:                                              ; preds = %269
  %273 = load i8, ptr @hash_all, align 1, !dbg !1350, !tbaa !1068, !range !1199, !noundef !940
  %274 = trunc i8 %273 to i1, !dbg !1350
  br i1 %274, label %277, label %275, !dbg !1351

275:                                              ; preds = %272, %269
  %276 = or i32 %.214, 256, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %276, metadata !268, metadata !DIExpression()), !dbg !1033
  br label %277, !dbg !1353

277:                                              ; preds = %275, %272
  %.315 = phi i32 [ %276, %275 ], [ %.214, %272 ], !dbg !1033
  call void @llvm.dbg.value(metadata i32 %.315, metadata !268, metadata !DIExpression()), !dbg !1033
  %278 = or i32 %.315, %.218, !dbg !1354
  call void @llvm.dbg.value(metadata i32 %278, metadata !268, metadata !DIExpression()), !dbg !1033
  br label %279, !dbg !1355

279:                                              ; preds = %326, %277
  %.5 = phi i8 [ %.4, %277 ], [ %.7, %326 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.5, metadata !266, metadata !DIExpression()), !dbg !1033
  br label %280, !dbg !1355

280:                                              ; preds = %279
  call void @llvm.dbg.value(metadata i8 0, metadata !298, metadata !DIExpression()), !dbg !1356
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #16, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %6, metadata !300, metadata !DIExpression()), !dbg !1358
  %281 = call ptr @argv_iter(ptr noundef %.02, ptr noundef %6), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %281, metadata !301, metadata !DIExpression()), !dbg !1356
  %282 = icmp ne ptr %281, null, !dbg !1360
  br i1 %282, label %292, label %283, !dbg !1362

283:                                              ; preds = %280
  %284 = load i32, ptr %6, align 4, !dbg !1363, !tbaa !1134
  switch i32 %284, label %291 [
    i32 2, label %285
    i32 4, label %286
    i32 3, label %290
  ], !dbg !1365

285:                                              ; preds = %283
  br label %325, !dbg !1366

286:                                              ; preds = %283
  %287 = call ptr @__error(), !dbg !1368
  %288 = load i32, ptr %287, align 4, !dbg !1368, !tbaa !1058
  %289 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %.211), !dbg !1369
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %288, ptr noundef @.str.46, ptr noundef %289), !dbg !1370
  call void @llvm.dbg.value(metadata i8 0, metadata !266, metadata !DIExpression()), !dbg !1033
  br label %325, !dbg !1371

290:                                              ; preds = %283
  call void @xalloc_die() #15, !dbg !1372
  unreachable, !dbg !1372

291:                                              ; preds = %283
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.47, i32 noundef 1081, ptr noundef @.str.48) #17, !dbg !1373
  unreachable, !dbg !1373

292:                                              ; preds = %280
  %293 = icmp ne ptr %.211, null, !dbg !1374
  br i1 %293, label %294, label %302, !dbg !1376

294:                                              ; preds = %292
  %295 = call i32 @strcmp(ptr noundef %.211, ptr noundef @.str.43), !dbg !1377
  %296 = icmp eq i32 %295, 0, !dbg !1377
  br i1 %296, label %297, label %302, !dbg !1378

297:                                              ; preds = %294
  %298 = call i32 @strcmp(ptr noundef %281, ptr noundef @.str.43), !dbg !1379
  %299 = icmp eq i32 %298, 0, !dbg !1379
  br i1 %299, label %300, label %302, !dbg !1380

300:                                              ; preds = %297
  %301 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %281), !dbg !1381
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.49, ptr noundef %301), !dbg !1383
  call void @llvm.dbg.value(metadata i8 1, metadata !298, metadata !DIExpression()), !dbg !1356
  br label %302, !dbg !1384

302:                                              ; preds = %300, %297, %294, %292
  %.01 = phi i8 [ 1, %300 ], [ 0, %297 ], [ 0, %294 ], [ 0, %292 ], !dbg !1356
  call void @llvm.dbg.value(metadata i8 %.01, metadata !298, metadata !DIExpression()), !dbg !1356
  %303 = getelementptr inbounds i8, ptr %281, i64 0, !dbg !1385
  %304 = load i8, ptr %303, align 1, !dbg !1385, !tbaa !1134
  %305 = icmp ne i8 %304, 0, !dbg !1385
  br i1 %305, label %313, label %306, !dbg !1386

306:                                              ; preds = %302
  %307 = icmp eq ptr %.211, null, !dbg !1387
  br i1 %307, label %308, label %309, !dbg !1388

308:                                              ; preds = %306
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.21, ptr noundef @.str.50), !dbg !1389
  br label %312, !dbg !1389

309:                                              ; preds = %306
  %310 = call i64 @argv_iter_n_args(ptr noundef %.02) #18, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %310, metadata !302, metadata !DIExpression()), !dbg !1391
  %311 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %.211), !dbg !1392
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.51, ptr noundef %311, i64 noundef %310, ptr noundef @.str.50), !dbg !1393
  br label %312

312:                                              ; preds = %309, %308
  call void @llvm.dbg.value(metadata i8 1, metadata !298, metadata !DIExpression()), !dbg !1356
  br label %313, !dbg !1394

313:                                              ; preds = %312, %302
  %.1 = phi i8 [ %.01, %302 ], [ 1, %312 ], !dbg !1356
  call void @llvm.dbg.value(metadata i8 %.1, metadata !298, metadata !DIExpression()), !dbg !1356
  %314 = trunc i8 %.1 to i1, !dbg !1395
  br i1 %314, label %315, label %316, !dbg !1397

315:                                              ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, metadata !266, metadata !DIExpression()), !dbg !1033
  br label %324, !dbg !1398

316:                                              ; preds = %313
  store ptr %281, ptr @main.temp_argv, align 16, !dbg !1399, !tbaa !852
  %317 = call zeroext i1 @du_files(ptr noundef @main.temp_argv, i32 noundef %278), !dbg !1401
  %318 = zext i1 %317 to i32, !dbg !1401
  %319 = trunc i8 %.5 to i1, !dbg !1402
  %320 = zext i1 %319 to i32, !dbg !1402
  %321 = and i32 %320, %318, !dbg !1402
  %322 = icmp ne i32 %321, 0, !dbg !1402
  %323 = zext i1 %322 to i8, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %323, metadata !266, metadata !DIExpression()), !dbg !1033
  br label %324

324:                                              ; preds = %316, %315
  %.6 = phi i8 [ 0, %315 ], [ %323, %316 ], !dbg !1403
  call void @llvm.dbg.value(metadata i8 %.6, metadata !266, metadata !DIExpression()), !dbg !1033
  br label %325, !dbg !1404

325:                                              ; preds = %324, %286, %285
  %.123 = phi i32 [ 0, %324 ], [ 11, %286 ], [ 11, %285 ]
  %.7 = phi i8 [ %.6, %324 ], [ 0, %286 ], [ %.5, %285 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8 %.7, metadata !266, metadata !DIExpression()), !dbg !1033
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #16, !dbg !1404
  switch i32 %.123, label %358 [
    i32 0, label %326
    i32 11, label %327
  ]

326:                                              ; preds = %325
  br label %279, !dbg !1355, !llvm.loop !1405

327:                                              ; preds = %325
  call void @llvm.dbg.label(metadata !307), !dbg !1406
  call void @argv_iter_free(ptr noundef %.02), !dbg !1407
  %328 = load ptr, ptr @di_files, align 8, !dbg !1408, !tbaa !852
  call void @di_set_free(ptr noundef %328), !dbg !1409
  %329 = load ptr, ptr @di_mnt, align 8, !dbg !1410, !tbaa !852
  %330 = icmp ne ptr %329, null, !dbg !1410
  br i1 %330, label %331, label %333, !dbg !1412

331:                                              ; preds = %327
  %332 = load ptr, ptr @di_mnt, align 8, !dbg !1413, !tbaa !852
  call void @di_set_free(ptr noundef %332), !dbg !1414
  br label %333, !dbg !1414

333:                                              ; preds = %331, %327
  %334 = icmp ne ptr %.211, null, !dbg !1415
  br i1 %334, label %335, label %350, !dbg !1417

335:                                              ; preds = %333
  %336 = load ptr, ptr @__stdinp, align 8, !dbg !1418, !tbaa !852
  %337 = getelementptr inbounds %struct.__sFILE, ptr %336, i32 0, i32 3, !dbg !1418
  %338 = load i16, ptr %337, align 8, !dbg !1418, !tbaa !1419
  %339 = sext i16 %338 to i32, !dbg !1418
  %340 = and i32 %339, 64, !dbg !1418
  %341 = icmp ne i32 %340, 0, !dbg !1418
  br i1 %341, label %346, label %342, !dbg !1424

342:                                              ; preds = %335
  %343 = load ptr, ptr @__stdinp, align 8, !dbg !1425, !tbaa !852
  %344 = call i32 @rpl_fclose(ptr noundef %343), !dbg !1426
  %345 = icmp ne i32 %344, 0, !dbg !1427
  br i1 %345, label %346, label %350, !dbg !1428

346:                                              ; preds = %342, %335
  %347 = trunc i8 %.7 to i1, !dbg !1429
  br i1 %347, label %348, label %350, !dbg !1430

348:                                              ; preds = %346
  %349 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %.211), !dbg !1431
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef @.str.52, ptr noundef %349), !dbg !1431
  unreachable, !dbg !1431

350:                                              ; preds = %346, %342, %333
  %351 = load i8, ptr @print_grand_total, align 1, !dbg !1432, !tbaa !1068, !range !1199, !noundef !940
  %352 = trunc i8 %351 to i1, !dbg !1432
  br i1 %352, label %353, label %354, !dbg !1434

353:                                              ; preds = %350
  call void @print_size(ptr noundef @tot_dui, ptr noundef @.str.53), !dbg !1435
  br label %354, !dbg !1435

354:                                              ; preds = %353, %350
  %355 = trunc i8 %.7 to i1, !dbg !1436
  %356 = zext i1 %355 to i64, !dbg !1436
  %357 = select i1 %355, i32 0, i32 1, !dbg !1436
  br label %358, !dbg !1437

358:                                              ; preds = %354, %325
  %.0 = phi i32 [ 0, %325 ], [ %357, %354 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %3) #16, !dbg !1438
  ret i32 %.0, !dbg !1438

359:                                              ; preds = %119
  unreachable
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal ptr @bad_cast(ptr noundef %0) #3 !dbg !1439 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1443, metadata !DIExpression()), !dbg !1444
  ret ptr %0, !dbg !1445
}

declare !dbg !1446 void @set_program_name(ptr noundef) #2

declare void @close_stdout() #2

declare !dbg !1448 i32 @atexit(ptr noundef) #2

declare !dbg !1452 noalias nonnull ptr @new_exclude() #2

declare !dbg !1455 ptr @getenv(ptr noundef) #2

declare !dbg !1456 i32 @human_options(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1460 i32 @rpl_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1464 i32 @xstrtoumax(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare !dbg !1468 ptr @quote(ptr noundef) #2

declare !dbg !1472 void @error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !1476 i32 @xstrtoimax(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noreturn
declare !dbg !1480 void @xstrtol_fatal(i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, ptr noundef) #4

declare !dbg !1484 void @add_exclude(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !1487 i32 @add_exclude_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef signext) #2

declare !dbg !1491 ptr @__error() #2

declare !dbg !1495 ptr @quotearg_n_style_colon(i32 noundef, i32 noundef, ptr noundef) #2

declare !dbg !1498 i64 @__xargmatch_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #2

declare !dbg !1504 ptr @tzalloc(ptr noundef) #2

declare !dbg !1507 void @version_etc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !1511 ptr @strchr(ptr noundef, i32 noundef) #2

declare !dbg !1514 ptr @freopen_safer(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1518 ptr @quotearg_style(i32 noundef, ptr noundef) #2

declare !dbg !1521 ptr @argv_iter_init_stream(ptr noundef) #2

declare !dbg !1524 ptr @argv_iter_init_argv(ptr noundef) #2

; Function Attrs: noreturn
declare !dbg !1527 void @xalloc_die() #4

declare !dbg !1529 noalias ptr @di_set_alloc() #2

declare !dbg !1532 ptr @argv_iter(ptr noundef, ptr noundef) #2

; Function Attrs: cold noreturn
declare !dbg !1536 void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #8

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1540 i64 @argv_iter_n_args(ptr noundef) #9

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @du_files(ptr noundef %0, i32 noundef %1) #7 !dbg !1545 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1549, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i32 %1, metadata !1550, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i8 1, metadata !1551, metadata !DIExpression()), !dbg !1557
  %3 = load ptr, ptr %0, align 8, !dbg !1558, !tbaa !852
  %4 = icmp ne ptr %3, null, !dbg !1558
  br i1 %4, label %5, label %39, !dbg !1559

5:                                                ; preds = %2
  %6 = call noalias nonnull ptr @xfts_open(ptr noundef %0, i32 noundef %1, ptr noundef null), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %6, metadata !1552, metadata !DIExpression()), !dbg !1561
  br label %7, !dbg !1562

7:                                                ; preds = %31, %5
  %.01 = phi i8 [ 1, %5 ], [ %.2, %31 ], !dbg !1557
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1551, metadata !DIExpression()), !dbg !1557
  br label %8, !dbg !1562

8:                                                ; preds = %7
  %9 = call ptr @rpl_fts_read(ptr noundef %6), !dbg !1563
  call void @llvm.dbg.value(metadata ptr %9, metadata !1555, metadata !DIExpression()), !dbg !1564
  %10 = icmp eq ptr %9, null, !dbg !1565
  br i1 %10, label %11, label %22, !dbg !1567

11:                                               ; preds = %8
  %12 = call ptr @__error(), !dbg !1568
  %13 = load i32, ptr %12, align 4, !dbg !1568, !tbaa !1058
  %14 = icmp ne i32 %13, 0, !dbg !1571
  br i1 %14, label %15, label %21, !dbg !1572

15:                                               ; preds = %11
  %16 = call ptr @__error(), !dbg !1573
  %17 = load i32, ptr %16, align 4, !dbg !1573, !tbaa !1058
  %18 = getelementptr inbounds %struct.FTS, ptr %6, i32 0, i32 4, !dbg !1575
  %19 = load ptr, ptr %18, align 8, !dbg !1575, !tbaa !1576
  %20 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %19), !dbg !1575
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %17, ptr noundef @.str.105, ptr noundef %20), !dbg !1579
  call void @llvm.dbg.value(metadata i8 0, metadata !1551, metadata !DIExpression()), !dbg !1557
  br label %21, !dbg !1580

21:                                               ; preds = %15, %11
  %.1 = phi i8 [ 0, %15 ], [ %.01, %11 ], !dbg !1557
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1551, metadata !DIExpression()), !dbg !1557
  store i64 0, ptr @prev_level, align 8, !dbg !1581, !tbaa !1078
  br label %30, !dbg !1582

22:                                               ; preds = %8
  %23 = call zeroext i1 @process_file(ptr noundef %6, ptr noundef %9), !dbg !1583
  %24 = zext i1 %23 to i32, !dbg !1583
  %25 = trunc i8 %.01 to i1, !dbg !1584
  %26 = zext i1 %25 to i32, !dbg !1584
  %27 = and i32 %26, %24, !dbg !1584
  %28 = icmp ne i32 %27, 0, !dbg !1584
  %29 = zext i1 %28 to i8, !dbg !1584
  call void @llvm.dbg.value(metadata i8 %29, metadata !1551, metadata !DIExpression()), !dbg !1557
  br label %30, !dbg !1585

30:                                               ; preds = %22, %21
  %.2 = phi i8 [ %.1, %21 ], [ %29, %22 ], !dbg !1564
  %.0 = phi i32 [ 3, %21 ], [ 0, %22 ]
  call void @llvm.dbg.value(metadata i8 %.2, metadata !1551, metadata !DIExpression()), !dbg !1557
  switch i32 %.0, label %41 [
    i32 0, label %31
    i32 3, label %32
  ]

31:                                               ; preds = %30
  br label %7, !dbg !1562, !llvm.loop !1586

32:                                               ; preds = %30
  %33 = call i32 @rpl_fts_close(ptr noundef %6), !dbg !1587
  %34 = icmp ne i32 %33, 0, !dbg !1589
  br i1 %34, label %35, label %38, !dbg !1590

35:                                               ; preds = %32
  %36 = call ptr @__error(), !dbg !1591
  %37 = load i32, ptr %36, align 4, !dbg !1591, !tbaa !1058
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %37, ptr noundef @.str.106), !dbg !1593
  call void @llvm.dbg.value(metadata i8 0, metadata !1551, metadata !DIExpression()), !dbg !1557
  br label %38, !dbg !1594

38:                                               ; preds = %35, %32
  %.3 = phi i8 [ 0, %35 ], [ %.2, %32 ], !dbg !1561
  call void @llvm.dbg.value(metadata i8 %.3, metadata !1551, metadata !DIExpression()), !dbg !1557
  br label %39, !dbg !1595

39:                                               ; preds = %38, %2
  %.4 = phi i8 [ %.3, %38 ], [ 1, %2 ], !dbg !1557
  call void @llvm.dbg.value(metadata i8 %.4, metadata !1551, metadata !DIExpression()), !dbg !1557
  %40 = trunc i8 %.4 to i1, !dbg !1596
  ret i1 %40, !dbg !1597

41:                                               ; preds = %30
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1598 void @argv_iter_free(ptr noundef) #2

declare !dbg !1601 void @di_set_free(ptr noundef) #2

declare !dbg !1604 i32 @rpl_fclose(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @print_size(ptr noundef %0, ptr noundef %1) #7 !dbg !1608 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1614, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata ptr %1, metadata !1615, metadata !DIExpression()), !dbg !1616
  %3 = load i8, ptr @opt_inodes, align 1, !dbg !1617, !tbaa !1068, !range !1199, !noundef !940
  %4 = trunc i8 %3 to i1, !dbg !1617
  br i1 %4, label %5, label %8, !dbg !1617

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 1, !dbg !1618
  %7 = load i64, ptr %6, align 8, !dbg !1618, !tbaa !1619
  br label %11, !dbg !1617

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 0, !dbg !1622
  %10 = load i64, ptr %9, align 8, !dbg !1622, !tbaa !1623
  br label %11, !dbg !1617

11:                                               ; preds = %8, %5
  %12 = phi i64 [ %7, %5 ], [ %10, %8 ], !dbg !1617
  call void @print_only_size(i64 noundef %12), !dbg !1624
  %13 = load i8, ptr @opt_time, align 1, !dbg !1625, !tbaa !1068, !range !1199, !noundef !940
  %14 = trunc i8 %13 to i1, !dbg !1625
  br i1 %14, label %15, label %25, !dbg !1627

15:                                               ; preds = %11
  %16 = load ptr, ptr @__stdoutp, align 8, !dbg !1628, !tbaa !852
  %17 = call i32 @putc_unlocked(i32 noundef 9, ptr noundef %16), !dbg !1628
  %18 = load ptr, ptr @time_format, align 8, !dbg !1630, !tbaa !852
  %19 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 2, !dbg !1631
  %20 = load ptr, ptr @localtz, align 8, !dbg !1632, !tbaa !852
  %21 = getelementptr inbounds { i64, i64 }, ptr %19, i32 0, i32 0, !dbg !1633
  %22 = load i64, ptr %21, align 8, !dbg !1633
  %23 = getelementptr inbounds { i64, i64 }, ptr %19, i32 0, i32 1, !dbg !1633
  %24 = load i64, ptr %23, align 8, !dbg !1633
  call void @show_date(ptr noundef %18, i64 %22, i64 %24, ptr noundef %20), !dbg !1633
  br label %25, !dbg !1634

25:                                               ; preds = %15, %11
  %26 = load i8, ptr @opt_nul_terminate_output, align 1, !dbg !1635, !tbaa !1068, !range !1199, !noundef !940
  %27 = trunc i8 %26 to i1, !dbg !1635
  %28 = zext i1 %27 to i64, !dbg !1635
  %29 = select i1 %27, i32 0, i32 10, !dbg !1635
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.112, ptr noundef %1, i32 noundef %29), !dbg !1636
  %31 = load ptr, ptr @__stdoutp, align 8, !dbg !1637, !tbaa !852
  %32 = call i32 @rpl_fflush(ptr noundef %31), !dbg !1638
  ret void, !dbg !1639
}

; Function Attrs: nounwind ssp uwtable
define internal void @print_only_size(i64 noundef %0) #7 !dbg !1640 {
  %2 = alloca [272 x i8], align 16
  call void @llvm.dbg.value(metadata i64 %0, metadata !1644, metadata !DIExpression()), !dbg !1649
  call void @llvm.lifetime.start.p0(i64 272, ptr %2) #16, !dbg !1650
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1645, metadata !DIExpression()), !dbg !1651
  %3 = icmp eq i64 %0, -1, !dbg !1652
  br i1 %3, label %4, label %5, !dbg !1653

4:                                                ; preds = %1
  br label %10, !dbg !1653

5:                                                ; preds = %1
  %6 = getelementptr inbounds [272 x i8], ptr %2, i64 0, i64 0, !dbg !1654
  %7 = load i32, ptr @human_output_opts, align 4, !dbg !1655, !tbaa !1058
  %8 = load i64, ptr @output_block_size, align 8, !dbg !1656, !tbaa !1078
  %9 = call ptr @human_readable(i64 noundef %0, ptr noundef %6, i32 noundef %7, i64 noundef 1, i64 noundef %8), !dbg !1657
  br label %10, !dbg !1653

10:                                               ; preds = %5, %4
  %11 = phi ptr [ @.str.113, %4 ], [ %9, %5 ], !dbg !1653
  %12 = load ptr, ptr @__stdoutp, align 8, !dbg !1658, !tbaa !852
  %13 = call i32 @"\01_fputs"(ptr noundef %11, ptr noundef %12), !dbg !1659
  call void @llvm.lifetime.end.p0(i64 272, ptr %2) #16, !dbg !1660
  ret void, !dbg !1660
}

declare !dbg !1661 i32 @putc_unlocked(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @show_date(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) #7 !dbg !1664 {
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.tm, align 8
  %7 = alloca [21 x i8], align 16
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1
  store i64 %2, ptr %9, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1668, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1669, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata ptr %3, metadata !1670, metadata !DIExpression()), !dbg !1693
  call void @llvm.lifetime.start.p0(i64 56, ptr %6) #16, !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1671, metadata !DIExpression()), !dbg !1696
  %10 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0, !dbg !1697
  %11 = call ptr @localtime_rz(ptr noundef %3, ptr noundef %10, ptr noundef %6), !dbg !1698
  %12 = icmp ne ptr %11, null, !dbg !1698
  br i1 %12, label %13, label %19, !dbg !1699

13:                                               ; preds = %4
  %14 = load ptr, ptr @__stdoutp, align 8, !dbg !1700, !tbaa !852
  %15 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 1, !dbg !1701
  %16 = load i64, ptr %15, align 8, !dbg !1701, !tbaa !1702
  %17 = trunc i64 %16 to i32, !dbg !1703
  %18 = call i64 @fprintftime(ptr noundef %14, ptr noundef %0, ptr noundef %6, ptr noundef %3, i32 noundef %17), !dbg !1704
  br label %27, !dbg !1704

19:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 21, ptr %7) #16, !dbg !1705
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1686, metadata !DIExpression()), !dbg !1706
  %20 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0, !dbg !1707
  %21 = load i64, ptr %20, align 8, !dbg !1707, !tbaa !1708
  %22 = getelementptr inbounds [21 x i8], ptr %7, i64 0, i64 0, !dbg !1709
  %23 = call ptr @timetostr(i64 noundef %21, ptr noundef %22), !dbg !1710
  call void @llvm.dbg.value(metadata ptr %23, metadata !1692, metadata !DIExpression()), !dbg !1711
  %24 = call ptr @quote(ptr noundef %23), !dbg !1712
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.114, ptr noundef %24), !dbg !1713
  %25 = load ptr, ptr @__stdoutp, align 8, !dbg !1714, !tbaa !852
  %26 = call i32 @"\01_fputs"(ptr noundef %23, ptr noundef %25), !dbg !1715
  call void @llvm.lifetime.end.p0(i64 21, ptr %7) #16, !dbg !1716
  br label %27

27:                                               ; preds = %19, %13
  call void @llvm.lifetime.end.p0(i64 56, ptr %6) #16, !dbg !1717
  ret void, !dbg !1717
}

declare !dbg !1718 i32 @rpl_fflush(ptr noundef) #2

declare !dbg !1719 ptr @localtime_rz(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1727 i64 @fprintftime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal ptr @timetostr(i64 noundef %0, ptr noundef %1) #3 !dbg !1733 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1737, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata ptr %1, metadata !1738, metadata !DIExpression()), !dbg !1739
  %3 = call ptr @imaxtostr(i64 noundef %0, ptr noundef %1), !dbg !1740
  ret ptr %3, !dbg !1741
}

declare !dbg !1742 ptr @imaxtostr(i64 noundef, ptr noundef) #2

declare !dbg !1746 ptr @human_readable(i64 noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

declare !dbg !1749 noalias nonnull ptr @xfts_open(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !1759 ptr @rpl_fts_read(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @process_file(ptr noundef %0, ptr noundef %1) #7 !dbg !608 {
  %3 = alloca %struct.duinfo, align 8
  %4 = alloca %struct.duinfo, align 8
  %5 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !764, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %1, metadata !765, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 1, metadata !766, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 32, ptr %3) #16, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %3, metadata !767, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 32, ptr %4) #16, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %4, metadata !768, metadata !DIExpression()), !dbg !1766
  %6 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 7, !dbg !1767
  %7 = load ptr, ptr %6, align 8, !dbg !1767, !tbaa !852
  call void @llvm.dbg.value(metadata ptr %7, metadata !770, metadata !DIExpression()), !dbg !1762
  %8 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 17, !dbg !1768
  %9 = getelementptr inbounds [1 x %struct.stat], ptr %8, i64 0, i64 0, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %9, metadata !771, metadata !DIExpression()), !dbg !1762
  %10 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 14, !dbg !1770
  %11 = load i16, ptr %10, align 8, !dbg !1770, !tbaa !1771
  %12 = zext i16 %11 to i32, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %12, metadata !774, metadata !DIExpression()), !dbg !1762
  %13 = icmp eq i32 %12, 4, !dbg !1773
  br i1 %13, label %14, label %18, !dbg !1774

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 8, !dbg !1775
  %16 = load i32, ptr %15, align 8, !dbg !1775, !tbaa !1058
  %17 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %7), !dbg !1777
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef @.str.107, ptr noundef %17), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !766, metadata !DIExpression()), !dbg !1762
  br label %130, !dbg !1779

18:                                               ; preds = %2
  %19 = icmp ne i32 %12, 6, !dbg !1780
  br i1 %19, label %20, label %129, !dbg !1781

20:                                               ; preds = %18
  %21 = load ptr, ptr @exclude, align 8, !dbg !1782, !tbaa !852
  %22 = call zeroext i1 @excluded_file_name(ptr noundef %21, ptr noundef %7), !dbg !1783
  %23 = zext i1 %22 to i8, !dbg !1784
  call void @llvm.dbg.value(metadata i8 %23, metadata !775, metadata !DIExpression()), !dbg !1785
  %24 = trunc i8 %23 to i1, !dbg !1786
  br i1 %24, label %68, label %25, !dbg !1787

25:                                               ; preds = %20
  %26 = icmp eq i32 %12, 11, !dbg !1788
  br i1 %26, label %27, label %43, !dbg !1789

27:                                               ; preds = %25
  %28 = call i32 @rpl_fts_set(ptr noundef %0, ptr noundef %1, i32 noundef 1), !dbg !1790
  %29 = call ptr @rpl_fts_read(ptr noundef %0), !dbg !1791
  call void @llvm.dbg.value(metadata ptr %29, metadata !779, metadata !DIExpression()), !dbg !1792
  %30 = icmp eq ptr %29, %1, !dbg !1793
  %31 = xor i1 %30, true, !dbg !1793
  %32 = zext i1 %31 to i32, !dbg !1793
  %33 = sext i32 %32 to i64, !dbg !1793
  %34 = call i64 @llvm.expect.i64(i64 %33, i64 0), !dbg !1793
  %35 = icmp ne i64 %34, 0, !dbg !1793
  br i1 %35, label %36, label %38, !dbg !1793

36:                                               ; preds = %27
  call void @__assert_rtn(ptr noundef @__func__.process_file, ptr noundef @.str.47, i32 noundef 527, ptr noundef @.str.108) #17, !dbg !1793
  unreachable, !dbg !1793

37:                                               ; No predecessors!
  br label %39, !dbg !1793

38:                                               ; preds = %27
  br label %39, !dbg !1793

39:                                               ; preds = %38, %37
  %40 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 14, !dbg !1794
  %41 = load i16, ptr %40, align 8, !dbg !1794, !tbaa !1771
  %42 = zext i16 %41 to i32, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %42, metadata !774, metadata !DIExpression()), !dbg !1762
  br label %43, !dbg !1796

43:                                               ; preds = %39, %25
  %.07 = phi i32 [ %42, %39 ], [ %12, %25 ], !dbg !1762
  call void @llvm.dbg.value(metadata i32 %.07, metadata !774, metadata !DIExpression()), !dbg !1762
  %44 = icmp eq i32 %.07, 10, !dbg !1797
  br i1 %44, label %47, label %45, !dbg !1799

45:                                               ; preds = %43
  %46 = icmp eq i32 %.07, 13, !dbg !1800
  br i1 %46, label %47, label %51, !dbg !1801

47:                                               ; preds = %45, %43
  %48 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 8, !dbg !1802
  %49 = load i32, ptr %48, align 8, !dbg !1802, !tbaa !1058
  %50 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %7), !dbg !1804
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %49, ptr noundef @.str.109, ptr noundef %50), !dbg !1805
  br label %127, !dbg !1806

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.FTS, ptr %0, i32 0, i32 10, !dbg !1807
  %53 = load i32, ptr %52, align 8, !dbg !1807, !tbaa !1809
  %54 = and i32 %53, 64, !dbg !1810
  %55 = icmp ne i32 %54, 0, !dbg !1810
  br i1 %55, label %56, label %67, !dbg !1811

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 12, !dbg !1812
  %58 = load i64, ptr %57, align 8, !dbg !1812, !tbaa !1078
  %59 = icmp slt i64 0, %58, !dbg !1813
  br i1 %59, label %60, label %67, !dbg !1814

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.FTS, ptr %0, i32 0, i32 3, !dbg !1815
  %62 = load i32, ptr %61, align 8, !dbg !1815, !tbaa !1816
  %63 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 0, !dbg !1817
  %64 = load i32, ptr %63, align 8, !dbg !1817, !tbaa !1818
  %65 = icmp ne i32 %62, %64, !dbg !1820
  br i1 %65, label %66, label %67, !dbg !1821

66:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i8 1, metadata !775, metadata !DIExpression()), !dbg !1785
  br label %67, !dbg !1822

67:                                               ; preds = %66, %60, %56, %51
  %.05 = phi i8 [ 1, %66 ], [ %23, %60 ], [ %23, %56 ], [ %23, %51 ], !dbg !1785
  call void @llvm.dbg.value(metadata i8 %.05, metadata !775, metadata !DIExpression()), !dbg !1785
  br label %68, !dbg !1823

68:                                               ; preds = %67, %20
  %.18 = phi i32 [ %12, %20 ], [ %.07, %67 ], !dbg !1762
  %.16 = phi i8 [ %23, %20 ], [ %.05, %67 ], !dbg !1785
  call void @llvm.dbg.value(metadata i8 %.16, metadata !775, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 %.18, metadata !774, metadata !DIExpression()), !dbg !1762
  %69 = trunc i8 %.16 to i1, !dbg !1824
  br i1 %69, label %94, label %70, !dbg !1825

70:                                               ; preds = %68
  %71 = load i8, ptr @opt_count_all, align 1, !dbg !1826, !tbaa !1068, !range !1199, !noundef !940
  %72 = trunc i8 %71 to i1, !dbg !1826
  br i1 %72, label %110, label %73, !dbg !1827

73:                                               ; preds = %70
  %74 = load i8, ptr @hash_all, align 1, !dbg !1828, !tbaa !1068, !range !1199, !noundef !940
  %75 = trunc i8 %74 to i1, !dbg !1828
  br i1 %75, label %87, label %76, !dbg !1829

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 1, !dbg !1830
  %78 = load i16, ptr %77, align 4, !dbg !1830, !tbaa !1831
  %79 = zext i16 %78 to i32, !dbg !1830
  %80 = and i32 %79, 61440, !dbg !1830
  %81 = icmp eq i32 %80, 16384, !dbg !1830
  br i1 %81, label %110, label %82, !dbg !1832

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 2, !dbg !1833
  %84 = load i16, ptr %83, align 2, !dbg !1833, !tbaa !1834
  %85 = zext i16 %84 to i32, !dbg !1835
  %86 = icmp slt i32 1, %85, !dbg !1836
  br i1 %86, label %87, label %110, !dbg !1837

87:                                               ; preds = %82, %73
  %88 = load ptr, ptr @di_files, align 8, !dbg !1838, !tbaa !852
  %89 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 3, !dbg !1839
  %90 = load i64, ptr %89, align 8, !dbg !1839, !tbaa !1840
  %91 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 0, !dbg !1841
  %92 = load i32, ptr %91, align 8, !dbg !1841, !tbaa !1818
  %93 = call zeroext i1 @hash_ins(ptr noundef %88, i64 noundef %90, i32 noundef %92), !dbg !1842
  br i1 %93, label %110, label %94, !dbg !1843

94:                                               ; preds = %87, %68
  %95 = icmp eq i32 %.18, 1, !dbg !1844
  br i1 %95, label %96, label %109, !dbg !1845

96:                                               ; preds = %94
  %97 = call i32 @rpl_fts_set(ptr noundef %0, ptr noundef %1, i32 noundef 4), !dbg !1846
  %98 = call ptr @rpl_fts_read(ptr noundef %0), !dbg !1847
  call void @llvm.dbg.value(metadata ptr %98, metadata !786, metadata !DIExpression()), !dbg !1848
  %99 = icmp eq ptr %98, %1, !dbg !1849
  %100 = xor i1 %99, true, !dbg !1849
  %101 = zext i1 %100 to i32, !dbg !1849
  %102 = sext i32 %101 to i64, !dbg !1849
  %103 = call i64 @llvm.expect.i64(i64 %102, i64 0), !dbg !1849
  %104 = icmp ne i64 %103, 0, !dbg !1849
  br i1 %104, label %105, label %107, !dbg !1849

105:                                              ; preds = %96
  call void @__assert_rtn(ptr noundef @__func__.process_file, ptr noundef @.str.47, i32 noundef 560, ptr noundef @.str.108) #17, !dbg !1849
  unreachable, !dbg !1849

106:                                              ; No predecessors!
  br label %108, !dbg !1849

107:                                              ; preds = %96
  br label %108, !dbg !1849

108:                                              ; preds = %107, %106
  br label %109, !dbg !1850

109:                                              ; preds = %108, %94
  br label %127, !dbg !1851

110:                                              ; preds = %87, %82, %76, %70
  switch i32 %.18, label %126 [
    i32 1, label %111
    i32 7, label %112
    i32 2, label %116
  ], !dbg !1852

111:                                              ; preds = %110
  br label %127, !dbg !1853

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 8, !dbg !1855
  %114 = load i32, ptr %113, align 8, !dbg !1855, !tbaa !1058
  %115 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %7), !dbg !1856
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %114, ptr noundef @.str.21, ptr noundef %115), !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, metadata !766, metadata !DIExpression()), !dbg !1762
  br label %126, !dbg !1858

116:                                              ; preds = %110
  %117 = call zeroext i1 @cycle_warning_required(ptr noundef %0, ptr noundef %1) #18, !dbg !1859
  br i1 %117, label %118, label %125, !dbg !1861

118:                                              ; preds = %116
  %119 = call zeroext i1 @mount_point_in_fts_cycle(ptr noundef %1), !dbg !1862
  br i1 %119, label %125, label %120, !dbg !1863

120:                                              ; preds = %118
  br label %121, !dbg !1864

121:                                              ; preds = %120
  %122 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %7), !dbg !1866
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef @.str.110, ptr noundef %122), !dbg !1866
  br label %123, !dbg !1866

123:                                              ; preds = %121
  br label %124, !dbg !1866

124:                                              ; preds = %123
  br label %127, !dbg !1868

125:                                              ; preds = %118, %116
  br label %127, !dbg !1869

126:                                              ; preds = %112, %110
  %.03 = phi i8 [ 1, %110 ], [ 0, %112 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %.03, metadata !766, metadata !DIExpression()), !dbg !1762
  br label %127, !dbg !1870

127:                                              ; preds = %126, %125, %124, %111, %109, %47
  %.29 = phi i32 [ %.18, %109 ], [ %.18, %126 ], [ %.18, %125 ], [ %.18, %124 ], [ %.18, %111 ], [ %.07, %47 ], !dbg !1762
  %.14 = phi i8 [ 1, %109 ], [ %.03, %126 ], [ 1, %125 ], [ 1, %124 ], [ 1, %111 ], [ 1, %47 ], !dbg !1871
  %.02 = phi i32 [ 1, %109 ], [ 0, %126 ], [ 1, %125 ], [ 1, %124 ], [ 1, %111 ], [ 1, %47 ]
  %.0 = phi i1 [ true, %109 ], [ undef, %126 ], [ true, %125 ], [ false, %124 ], [ true, %111 ], [ false, %47 ]
  call void @llvm.dbg.value(metadata i8 %.14, metadata !766, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %.29, metadata !774, metadata !DIExpression()), !dbg !1762
  switch i32 %.02, label %312 [
    i32 0, label %128
  ]

128:                                              ; preds = %127
  br label %129, !dbg !1872

129:                                              ; preds = %128, %18
  %.310 = phi i32 [ %.29, %128 ], [ %12, %18 ], !dbg !1873
  %.2 = phi i8 [ %.14, %128 ], [ 1, %18 ], !dbg !1871
  call void @llvm.dbg.value(metadata i8 %.2, metadata !766, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %.310, metadata !774, metadata !DIExpression()), !dbg !1762
  br label %130

130:                                              ; preds = %129, %14
  %.4 = phi i32 [ %12, %14 ], [ %.310, %129 ], !dbg !1873
  %.3 = phi i8 [ 0, %14 ], [ %.2, %129 ], !dbg !1762
  call void @llvm.dbg.value(metadata i8 %.3, metadata !766, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %.4, metadata !774, metadata !DIExpression()), !dbg !1762
  %131 = load i8, ptr @apparent_size, align 1, !dbg !1874, !tbaa !1068, !range !1199, !noundef !940
  %132 = trunc i8 %131 to i1, !dbg !1874
  br i1 %132, label %133, label %148, !dbg !1874

133:                                              ; preds = %130
  %134 = call zeroext i1 @usable_st_size(ptr noundef %9), !dbg !1875
  br i1 %134, label %135, label %145, !dbg !1875

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 11, !dbg !1876
  %137 = load i64, ptr %136, align 8, !dbg !1876, !tbaa !1877
  %138 = icmp sgt i64 0, %137, !dbg !1876
  br i1 %138, label %139, label %140, !dbg !1876

139:                                              ; preds = %135
  br label %143, !dbg !1876

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 11, !dbg !1876
  %142 = load i64, ptr %141, align 8, !dbg !1876, !tbaa !1877
  br label %143, !dbg !1876

143:                                              ; preds = %140, %139
  %144 = phi i64 [ 0, %139 ], [ %142, %140 ], !dbg !1876
  br label %146, !dbg !1875

145:                                              ; preds = %133
  br label %146, !dbg !1875

146:                                              ; preds = %145, %143
  %147 = phi i64 [ %144, %143 ], [ 0, %145 ], !dbg !1875
  br label %152, !dbg !1874

148:                                              ; preds = %130
  %149 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 12, !dbg !1878
  %150 = load i64, ptr %149, align 8, !dbg !1878, !tbaa !1879
  %151 = mul i64 %150, 512, !dbg !1880
  br label %152, !dbg !1874

152:                                              ; preds = %148, %146
  %153 = phi i64 [ %147, %146 ], [ %151, %148 ], !dbg !1874
  %154 = load i32, ptr @time_type, align 4, !dbg !1881, !tbaa !1134
  %155 = icmp eq i32 %154, 0, !dbg !1882
  br i1 %155, label %156, label %162, !dbg !1881

156:                                              ; preds = %152
  %157 = call { i64, i64 } @get_stat_mtime(ptr noundef %9) #18, !dbg !1883
  %158 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0, !dbg !1883
  %159 = extractvalue { i64, i64 } %157, 0, !dbg !1883
  store i64 %159, ptr %158, align 8, !dbg !1883
  %160 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1, !dbg !1883
  %161 = extractvalue { i64, i64 } %157, 1, !dbg !1883
  store i64 %161, ptr %160, align 8, !dbg !1883
  br label %178, !dbg !1881

162:                                              ; preds = %152
  %163 = load i32, ptr @time_type, align 4, !dbg !1884, !tbaa !1134
  %164 = icmp eq i32 %163, 2, !dbg !1885
  br i1 %164, label %165, label %171, !dbg !1884

165:                                              ; preds = %162
  %166 = call { i64, i64 } @get_stat_atime(ptr noundef %9) #18, !dbg !1886
  %167 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0, !dbg !1886
  %168 = extractvalue { i64, i64 } %166, 0, !dbg !1886
  store i64 %168, ptr %167, align 8, !dbg !1886
  %169 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1, !dbg !1886
  %170 = extractvalue { i64, i64 } %166, 1, !dbg !1886
  store i64 %170, ptr %169, align 8, !dbg !1886
  br label %177, !dbg !1884

171:                                              ; preds = %162
  %172 = call { i64, i64 } @get_stat_ctime(ptr noundef %9) #18, !dbg !1887
  %173 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0, !dbg !1887
  %174 = extractvalue { i64, i64 } %172, 0, !dbg !1887
  store i64 %174, ptr %173, align 8, !dbg !1887
  %175 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1, !dbg !1887
  %176 = extractvalue { i64, i64 } %172, 1, !dbg !1887
  store i64 %176, ptr %175, align 8, !dbg !1887
  br label %177, !dbg !1884

177:                                              ; preds = %171, %165
  br label %178, !dbg !1881

178:                                              ; preds = %177, %156
  %179 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0, !dbg !1888
  %180 = load i64, ptr %179, align 8, !dbg !1888
  %181 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1, !dbg !1888
  %182 = load i64, ptr %181, align 8, !dbg !1888
  call void @duinfo_set(ptr noundef %3, i64 noundef %153, i64 %180, i64 %182), !dbg !1888
  %183 = getelementptr inbounds %struct._ftsent, ptr %1, i32 0, i32 12, !dbg !1889
  %184 = load i64, ptr %183, align 8, !dbg !1889, !tbaa !1078
  call void @llvm.dbg.value(metadata i64 %184, metadata !769, metadata !DIExpression()), !dbg !1762
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %3, i64 32, i1 false), !dbg !1890, !tbaa.struct !1891
  %185 = load i64, ptr @process_file.n_alloc, align 8, !dbg !1892, !tbaa !1078
  %186 = icmp eq i64 %185, 0, !dbg !1893
  br i1 %186, label %187, label %191, !dbg !1894

187:                                              ; preds = %178
  %188 = add i64 %184, 10, !dbg !1895
  store i64 %188, ptr @process_file.n_alloc, align 8, !dbg !1897, !tbaa !1078
  %189 = load i64, ptr @process_file.n_alloc, align 8, !dbg !1898, !tbaa !1078
  %190 = call noalias nonnull ptr @xcalloc(i64 noundef %189, i64 noundef 64) #19, !dbg !1899
  store ptr %190, ptr @process_file.dulvl, align 8, !dbg !1900, !tbaa !852
  br label %262, !dbg !1901

191:                                              ; preds = %178
  %192 = load i64, ptr @prev_level, align 8, !dbg !1902, !tbaa !1078
  %193 = icmp eq i64 %184, %192, !dbg !1903
  br i1 %193, label %194, label %195, !dbg !1904

194:                                              ; preds = %191
  br label %261, !dbg !1905

195:                                              ; preds = %191
  %196 = load i64, ptr @prev_level, align 8, !dbg !1907, !tbaa !1078
  %197 = icmp ugt i64 %184, %196, !dbg !1908
  br i1 %197, label %198, label %221, !dbg !1909

198:                                              ; preds = %195
  %199 = load i64, ptr @process_file.n_alloc, align 8, !dbg !1910, !tbaa !1078
  %200 = icmp ule i64 %199, %184, !dbg !1912
  br i1 %200, label %201, label %205, !dbg !1913

201:                                              ; preds = %198
  %202 = load ptr, ptr @process_file.dulvl, align 8, !dbg !1914, !tbaa !852
  %203 = call ptr @xnrealloc(ptr noundef %202, i64 noundef %184, i64 noundef 128) #20, !dbg !1916
  store ptr %203, ptr @process_file.dulvl, align 8, !dbg !1917, !tbaa !852
  %204 = mul i64 %184, 2, !dbg !1918
  store i64 %204, ptr @process_file.n_alloc, align 8, !dbg !1919, !tbaa !1078
  br label %205, !dbg !1920

205:                                              ; preds = %201, %198
  %206 = load i64, ptr @prev_level, align 8, !dbg !1921, !tbaa !1078
  %207 = add i64 %206, 1, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %207, metadata !791, metadata !DIExpression()), !dbg !1923
  br label %208, !dbg !1924

208:                                              ; preds = %218, %205
  %.01 = phi i64 [ %207, %205 ], [ %219, %218 ], !dbg !1925
  call void @llvm.dbg.value(metadata i64 %.01, metadata !791, metadata !DIExpression()), !dbg !1923
  %209 = icmp ule i64 %.01, %184, !dbg !1926
  br i1 %209, label %211, label %210, !dbg !1928

210:                                              ; preds = %208
  br label %220

211:                                              ; preds = %208
  %212 = load ptr, ptr @process_file.dulvl, align 8, !dbg !1929, !tbaa !852
  %213 = getelementptr inbounds %struct.dulevel, ptr %212, i64 %.01, !dbg !1929
  %214 = getelementptr inbounds %struct.dulevel, ptr %213, i32 0, i32 0, !dbg !1931
  call void @duinfo_init(ptr noundef %214), !dbg !1932
  %215 = load ptr, ptr @process_file.dulvl, align 8, !dbg !1933, !tbaa !852
  %216 = getelementptr inbounds %struct.dulevel, ptr %215, i64 %.01, !dbg !1933
  %217 = getelementptr inbounds %struct.dulevel, ptr %216, i32 0, i32 1, !dbg !1934
  call void @duinfo_init(ptr noundef %217), !dbg !1935
  br label %218, !dbg !1936

218:                                              ; preds = %211
  %219 = add i64 %.01, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %219, metadata !791, metadata !DIExpression()), !dbg !1923
  br label %208, !dbg !1938, !llvm.loop !1939

220:                                              ; preds = %210
  br label %260, !dbg !1941

221:                                              ; preds = %195
  %222 = load i64, ptr @prev_level, align 8, !dbg !1942, !tbaa !1078
  %223 = sub i64 %222, 1, !dbg !1942
  %224 = icmp eq i64 %184, %223, !dbg !1942
  %225 = xor i1 %224, true, !dbg !1942
  %226 = zext i1 %225 to i32, !dbg !1942
  %227 = sext i32 %226 to i64, !dbg !1942
  %228 = call i64 @llvm.expect.i64(i64 %227, i64 0), !dbg !1942
  %229 = icmp ne i64 %228, 0, !dbg !1942
  br i1 %229, label %230, label %232, !dbg !1942

230:                                              ; preds = %221
  call void @__assert_rtn(ptr noundef @__func__.process_file, ptr noundef @.str.47, i32 noundef 638, ptr noundef @.str.111) #17, !dbg !1942
  unreachable, !dbg !1942

231:                                              ; No predecessors!
  br label %233, !dbg !1942

232:                                              ; preds = %221
  br label %233, !dbg !1942

233:                                              ; preds = %232, %231
  %234 = load ptr, ptr @process_file.dulvl, align 8, !dbg !1944, !tbaa !852
  %235 = load i64, ptr @prev_level, align 8, !dbg !1945, !tbaa !1078
  %236 = getelementptr inbounds %struct.dulevel, ptr %234, i64 %235, !dbg !1944
  %237 = getelementptr inbounds %struct.dulevel, ptr %236, i32 0, i32 0, !dbg !1946
  call void @duinfo_add(ptr noundef %4, ptr noundef %237), !dbg !1947
  %238 = load i8, ptr @opt_separate_dirs, align 1, !dbg !1948, !tbaa !1068, !range !1199, !noundef !940
  %239 = trunc i8 %238 to i1, !dbg !1948
  br i1 %239, label %245, label %240, !dbg !1950

240:                                              ; preds = %233
  %241 = load ptr, ptr @process_file.dulvl, align 8, !dbg !1951, !tbaa !852
  %242 = load i64, ptr @prev_level, align 8, !dbg !1952, !tbaa !1078
  %243 = getelementptr inbounds %struct.dulevel, ptr %241, i64 %242, !dbg !1951
  %244 = getelementptr inbounds %struct.dulevel, ptr %243, i32 0, i32 1, !dbg !1953
  call void @duinfo_add(ptr noundef %4, ptr noundef %244), !dbg !1954
  br label %245, !dbg !1954

245:                                              ; preds = %240, %233
  %246 = load ptr, ptr @process_file.dulvl, align 8, !dbg !1955, !tbaa !852
  %247 = getelementptr inbounds %struct.dulevel, ptr %246, i64 %184, !dbg !1955
  %248 = getelementptr inbounds %struct.dulevel, ptr %247, i32 0, i32 1, !dbg !1956
  %249 = load ptr, ptr @process_file.dulvl, align 8, !dbg !1957, !tbaa !852
  %250 = load i64, ptr @prev_level, align 8, !dbg !1958, !tbaa !1078
  %251 = getelementptr inbounds %struct.dulevel, ptr %249, i64 %250, !dbg !1957
  %252 = getelementptr inbounds %struct.dulevel, ptr %251, i32 0, i32 0, !dbg !1959
  call void @duinfo_add(ptr noundef %248, ptr noundef %252), !dbg !1960
  %253 = load ptr, ptr @process_file.dulvl, align 8, !dbg !1961, !tbaa !852
  %254 = getelementptr inbounds %struct.dulevel, ptr %253, i64 %184, !dbg !1961
  %255 = getelementptr inbounds %struct.dulevel, ptr %254, i32 0, i32 1, !dbg !1962
  %256 = load ptr, ptr @process_file.dulvl, align 8, !dbg !1963, !tbaa !852
  %257 = load i64, ptr @prev_level, align 8, !dbg !1964, !tbaa !1078
  %258 = getelementptr inbounds %struct.dulevel, ptr %256, i64 %257, !dbg !1963
  %259 = getelementptr inbounds %struct.dulevel, ptr %258, i32 0, i32 1, !dbg !1965
  call void @duinfo_add(ptr noundef %255, ptr noundef %259), !dbg !1966
  br label %260

260:                                              ; preds = %245, %220
  br label %261

261:                                              ; preds = %260, %194
  br label %262

262:                                              ; preds = %261, %187
  store i64 %184, ptr @prev_level, align 8, !dbg !1967, !tbaa !1078
  %263 = load i8, ptr @opt_separate_dirs, align 1, !dbg !1968, !tbaa !1068, !range !1199, !noundef !940
  %264 = trunc i8 %263 to i1, !dbg !1968
  br i1 %264, label %265, label %269, !dbg !1970

265:                                              ; preds = %262
  %266 = icmp eq i32 %.4, 6, !dbg !1971
  br i1 %266, label %273, label %267, !dbg !1971

267:                                              ; preds = %265
  %268 = icmp eq i32 %.4, 4, !dbg !1971
  br i1 %268, label %273, label %269, !dbg !1972

269:                                              ; preds = %267, %262
  %270 = load ptr, ptr @process_file.dulvl, align 8, !dbg !1973, !tbaa !852
  %271 = getelementptr inbounds %struct.dulevel, ptr %270, i64 %184, !dbg !1973
  %272 = getelementptr inbounds %struct.dulevel, ptr %271, i32 0, i32 0, !dbg !1974
  call void @duinfo_add(ptr noundef %272, ptr noundef %3), !dbg !1975
  br label %273, !dbg !1975

273:                                              ; preds = %269, %267, %265
  call void @duinfo_add(ptr noundef @tot_dui, ptr noundef %3), !dbg !1976
  %274 = icmp eq i32 %.4, 6, !dbg !1977
  br i1 %274, label %277, label %275, !dbg !1977

275:                                              ; preds = %273
  %276 = icmp eq i32 %.4, 4, !dbg !1977
  br i1 %276, label %277, label %280, !dbg !1978

277:                                              ; preds = %275, %273
  %278 = load i64, ptr @max_depth, align 8, !dbg !1979, !tbaa !1078
  %279 = icmp ule i64 %184, %278, !dbg !1980
  br i1 %279, label %288, label %280, !dbg !1981

280:                                              ; preds = %277, %275
  %281 = load i8, ptr @opt_all, align 1, !dbg !1982, !tbaa !1068, !range !1199, !noundef !940
  %282 = trunc i8 %281 to i1, !dbg !1982
  br i1 %282, label %283, label %286, !dbg !1983

283:                                              ; preds = %280
  %284 = load i64, ptr @max_depth, align 8, !dbg !1984, !tbaa !1078
  %285 = icmp ule i64 %184, %284, !dbg !1985
  br i1 %285, label %288, label %286, !dbg !1986

286:                                              ; preds = %283, %280
  %287 = icmp eq i64 %184, 0, !dbg !1987
  br i1 %287, label %288, label %310, !dbg !1988

288:                                              ; preds = %286, %283, %277
  %289 = load i8, ptr @opt_inodes, align 1, !dbg !1989, !tbaa !1068, !range !1199, !noundef !940
  %290 = trunc i8 %289 to i1, !dbg !1989
  br i1 %290, label %291, label %294, !dbg !1989

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.duinfo, ptr %4, i32 0, i32 1, !dbg !1990
  %293 = load i64, ptr %292, align 8, !dbg !1990, !tbaa !1619
  br label %297, !dbg !1989

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.duinfo, ptr %4, i32 0, i32 0, !dbg !1991
  %296 = load i64, ptr %295, align 8, !dbg !1991, !tbaa !1623
  br label %297, !dbg !1989

297:                                              ; preds = %294, %291
  %298 = phi i64 [ %293, %291 ], [ %296, %294 ], !dbg !1989
  call void @llvm.dbg.value(metadata i64 %298, metadata !798, metadata !DIExpression()), !dbg !1992
  %299 = load i64, ptr @opt_threshold, align 8, !dbg !1993, !tbaa !1078
  %300 = icmp slt i64 %299, 0, !dbg !1995
  br i1 %300, label %301, label %305, !dbg !1996

301:                                              ; preds = %297
  %302 = load i64, ptr @opt_threshold, align 8, !dbg !1997, !tbaa !1078
  %303 = sub nsw i64 0, %302, !dbg !1998
  %304 = icmp ule i64 %298, %303, !dbg !1999
  br i1 %304, label %308, label %309, !dbg !1993

305:                                              ; preds = %297
  %306 = load i64, ptr @opt_threshold, align 8, !dbg !2000, !tbaa !1078
  %307 = icmp uge i64 %298, %306, !dbg !2001
  br i1 %307, label %308, label %309, !dbg !1996

308:                                              ; preds = %305, %301
  call void @print_size(ptr noundef %4, ptr noundef %7), !dbg !2002
  br label %309, !dbg !2002

309:                                              ; preds = %308, %305, %301
  br label %310, !dbg !2003

310:                                              ; preds = %309, %286
  %311 = trunc i8 %.3 to i1, !dbg !2004
  br label %312, !dbg !2005

312:                                              ; preds = %310, %127
  %.1 = phi i1 [ %311, %310 ], [ %.0, %127 ], !dbg !1762
  call void @llvm.lifetime.end.p0(i64 32, ptr %4) #16, !dbg !2006
  call void @llvm.lifetime.end.p0(i64 32, ptr %3) #16, !dbg !2006
  ret i1 %.1, !dbg !2006
}

declare !dbg !2007 i32 @rpl_fts_close(ptr noundef) #2

declare !dbg !2010 zeroext i1 @excluded_file_name(ptr noundef, ptr noundef) #2

declare !dbg !2015 i32 @rpl_fts_set(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @hash_ins(ptr noundef %0, i64 noundef %1, i32 noundef %2) #7 !dbg !2018 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2025, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %1, metadata !2026, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %2, metadata !2027, metadata !DIExpression()), !dbg !2029
  %4 = call i32 @di_set_insert(ptr noundef %0, i32 noundef %2, i64 noundef %1), !dbg !2030
  call void @llvm.dbg.value(metadata i32 %4, metadata !2028, metadata !DIExpression()), !dbg !2029
  %5 = icmp slt i32 %4, 0, !dbg !2031
  br i1 %5, label %6, label %7, !dbg !2033

6:                                                ; preds = %3
  call void @xalloc_die() #15, !dbg !2034
  unreachable, !dbg !2034

7:                                                ; preds = %3
  %8 = icmp ne i32 %4, 0, !dbg !2035
  ret i1 %8, !dbg !2036
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2037 zeroext i1 @cycle_warning_required(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @mount_point_in_fts_cycle(ptr noundef %0) #7 !dbg !2042 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2046, metadata !DIExpression()), !dbg !2048
  %2 = getelementptr inbounds %struct._ftsent, ptr %0, i32 0, i32 0, !dbg !2049
  %3 = load ptr, ptr %2, align 8, !dbg !2049, !tbaa !852
  call void @llvm.dbg.value(metadata ptr %3, metadata !2047, metadata !DIExpression()), !dbg !2048
  %4 = load ptr, ptr @di_mnt, align 8, !dbg !2050, !tbaa !852
  %5 = icmp ne ptr %4, null, !dbg !2050
  br i1 %5, label %12, label %6, !dbg !2052

6:                                                ; preds = %1
  %7 = call noalias ptr @di_set_alloc(), !dbg !2053
  store ptr %7, ptr @di_mnt, align 8, !dbg !2055, !tbaa !852
  %8 = load ptr, ptr @di_mnt, align 8, !dbg !2056, !tbaa !852
  %9 = icmp ne ptr %8, null, !dbg !2056
  br i1 %9, label %11, label %10, !dbg !2058

10:                                               ; preds = %6
  call void @xalloc_die() #15, !dbg !2059
  unreachable, !dbg !2059

11:                                               ; preds = %6
  call void @fill_mount_table(), !dbg !2060
  br label %12, !dbg !2061

12:                                               ; preds = %11, %1
  br label %13, !dbg !2062

13:                                               ; preds = %32, %12
  %.01 = phi ptr [ %0, %12 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata ptr %.01, metadata !2046, metadata !DIExpression()), !dbg !2048
  %14 = icmp ne ptr %.01, null, !dbg !2063
  br i1 %14, label %15, label %17, !dbg !2064

15:                                               ; preds = %13
  %16 = icmp ne ptr %.01, %3, !dbg !2065
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i1 [ false, %13 ], [ %16, %15 ], !dbg !2048
  br i1 %18, label %19, label %35, !dbg !2062

19:                                               ; preds = %17
  %20 = load ptr, ptr @di_mnt, align 8, !dbg !2066, !tbaa !852
  %21 = getelementptr inbounds %struct._ftsent, ptr %.01, i32 0, i32 17, !dbg !2069
  %22 = getelementptr inbounds [1 x %struct.stat], ptr %21, i64 0, i64 0, !dbg !2070
  %23 = getelementptr inbounds %struct.stat, ptr %22, i32 0, i32 0, !dbg !2070
  %24 = load i32, ptr %23, align 8, !dbg !2070, !tbaa !1818
  %25 = getelementptr inbounds %struct._ftsent, ptr %.01, i32 0, i32 17, !dbg !2071
  %26 = getelementptr inbounds [1 x %struct.stat], ptr %25, i64 0, i64 0, !dbg !2072
  %27 = getelementptr inbounds %struct.stat, ptr %26, i32 0, i32 3, !dbg !2072
  %28 = load i64, ptr %27, align 8, !dbg !2072, !tbaa !1840
  %29 = call i32 @di_set_lookup(ptr noundef %20, i32 noundef %24, i64 noundef %28), !dbg !2073
  %30 = icmp sgt i32 %29, 0, !dbg !2074
  br i1 %30, label %31, label %32, !dbg !2075

31:                                               ; preds = %19
  br label %36, !dbg !2076

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct._ftsent, ptr %.01, i32 0, i32 1, !dbg !2078
  %34 = load ptr, ptr %33, align 8, !dbg !2078, !tbaa !852
  call void @llvm.dbg.value(metadata ptr %34, metadata !2046, metadata !DIExpression()), !dbg !2048
  br label %13, !dbg !2062, !llvm.loop !2079

35:                                               ; preds = %17
  br label %36, !dbg !2081

36:                                               ; preds = %35, %31
  %.0 = phi i1 [ true, %31 ], [ false, %35 ], !dbg !2048
  ret i1 %.0, !dbg !2082
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @usable_st_size(ptr noundef %0) #3 !dbg !2083 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2087, metadata !DIExpression()), !dbg !2088
  %2 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 1, !dbg !2089
  %3 = load i16, ptr %2, align 4, !dbg !2089, !tbaa !1831
  %4 = zext i16 %3 to i32, !dbg !2089
  %5 = and i32 %4, 61440, !dbg !2089
  %6 = icmp eq i32 %5, 32768, !dbg !2089
  br i1 %6, label %14, label %7, !dbg !2090

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 1, !dbg !2091
  %9 = load i16, ptr %8, align 4, !dbg !2091, !tbaa !1831
  %10 = zext i16 %9 to i32, !dbg !2091
  %11 = and i32 %10, 61440, !dbg !2091
  %12 = icmp eq i32 %11, 40960, !dbg !2091
  br i1 %12, label %14, label %13, !dbg !2092

13:                                               ; preds = %7
  br label %14, !dbg !2092

14:                                               ; preds = %13, %7, %1
  %15 = phi i1 [ true, %7 ], [ true, %1 ], [ false, %13 ]
  ret i1 %15, !dbg !2093
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally { i64, i64 } @get_stat_mtime(ptr noundef %0) #11 !dbg !2094 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2099, metadata !DIExpression()), !dbg !2100
  %3 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 8, !dbg !2101
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false), !dbg !2101, !tbaa.struct !2102
  %4 = load { i64, i64 }, ptr %2, align 8, !dbg !2103
  ret { i64, i64 } %4, !dbg !2103
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally { i64, i64 } @get_stat_atime(ptr noundef %0) #11 !dbg !2104 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2106, metadata !DIExpression()), !dbg !2107
  %3 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 7, !dbg !2108
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false), !dbg !2108, !tbaa.struct !2102
  %4 = load { i64, i64 }, ptr %2, align 8, !dbg !2109
  ret { i64, i64 } %4, !dbg !2109
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally { i64, i64 } @get_stat_ctime(ptr noundef %0) #11 !dbg !2110 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2112, metadata !DIExpression()), !dbg !2113
  %3 = getelementptr inbounds %struct.stat, ptr %0, i32 0, i32 9, !dbg !2114
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false), !dbg !2114, !tbaa.struct !2102
  %4 = load { i64, i64 }, ptr %2, align 8, !dbg !2115
  ret { i64, i64 } %4, !dbg !2115
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @duinfo_set(ptr noundef %0, i64 noundef %1, i64 %2, i64 %3) #3 !dbg !2116 {
  %5 = alloca %struct.timespec, align 8
  %6 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0
  store i64 %2, ptr %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1
  store i64 %3, ptr %7, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2121, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %1, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2123, metadata !DIExpression()), !dbg !2125
  %8 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 0, !dbg !2126
  store i64 %1, ptr %8, align 8, !dbg !2127, !tbaa !1623
  %9 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 1, !dbg !2128
  store i64 1, ptr %9, align 8, !dbg !2129, !tbaa !1619
  %10 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 2, !dbg !2130
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %5, i64 16, i1 false), !dbg !2131, !tbaa.struct !2102
  ret void, !dbg !2132
}

; Function Attrs: allocsize(0,1)
declare !dbg !2133 noalias nonnull ptr @xcalloc(i64 noundef, i64 noundef) #12

; Function Attrs: inlinehint nounwind ssp allocsize(1,2) uwtable
define available_externally ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) #13 !dbg !2136 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2140, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %1, metadata !2141, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %2, metadata !2142, metadata !DIExpression()), !dbg !2143
  %4 = call ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #20, !dbg !2144
  ret ptr %4, !dbg !2145
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @duinfo_init(ptr noundef %0) #3 !dbg !2146 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2150, metadata !DIExpression()), !dbg !2151
  %2 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 0, !dbg !2152
  store i64 0, ptr %2, align 8, !dbg !2153, !tbaa !1623
  %3 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 1, !dbg !2154
  store i64 0, ptr %3, align 8, !dbg !2155, !tbaa !1619
  %4 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 2, !dbg !2156
  %5 = getelementptr inbounds %struct.timespec, ptr %4, i32 0, i32 0, !dbg !2157
  store i64 -9223372036854775808, ptr %5, align 8, !dbg !2158, !tbaa !2159
  %6 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 2, !dbg !2160
  %7 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !2161
  store i64 -1, ptr %7, align 8, !dbg !2162, !tbaa !2163
  ret void, !dbg !2164
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @duinfo_add(ptr noundef %0, ptr noundef %1) #3 !dbg !2165 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2169, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata ptr %1, metadata !2170, metadata !DIExpression()), !dbg !2172
  %3 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 0, !dbg !2173
  %4 = load i64, ptr %3, align 8, !dbg !2173, !tbaa !1623
  %5 = getelementptr inbounds %struct.duinfo, ptr %1, i32 0, i32 0, !dbg !2174
  %6 = load i64, ptr %5, align 8, !dbg !2174, !tbaa !1623
  %7 = add i64 %4, %6, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %7, metadata !2171, metadata !DIExpression()), !dbg !2172
  %8 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 0, !dbg !2176
  %9 = load i64, ptr %8, align 8, !dbg !2176, !tbaa !1623
  %10 = icmp ule i64 %9, %7, !dbg !2177
  br i1 %10, label %11, label %12, !dbg !2178

11:                                               ; preds = %2
  br label %13, !dbg !2178

12:                                               ; preds = %2
  br label %13, !dbg !2178

13:                                               ; preds = %12, %11
  %14 = phi i64 [ %7, %11 ], [ -1, %12 ], !dbg !2178
  %15 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 0, !dbg !2179
  store i64 %14, ptr %15, align 8, !dbg !2180, !tbaa !1623
  %16 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 1, !dbg !2181
  %17 = load i64, ptr %16, align 8, !dbg !2181, !tbaa !1619
  %18 = getelementptr inbounds %struct.duinfo, ptr %1, i32 0, i32 1, !dbg !2182
  %19 = load i64, ptr %18, align 8, !dbg !2182, !tbaa !1619
  %20 = add i64 %17, %19, !dbg !2183
  %21 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 1, !dbg !2184
  store i64 %20, ptr %21, align 8, !dbg !2185, !tbaa !1619
  %22 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 2, !dbg !2186
  %23 = getelementptr inbounds %struct.duinfo, ptr %1, i32 0, i32 2, !dbg !2188
  %24 = getelementptr inbounds { i64, i64 }, ptr %22, i32 0, i32 0, !dbg !2189
  %25 = load i64, ptr %24, align 8, !dbg !2189
  %26 = getelementptr inbounds { i64, i64 }, ptr %22, i32 0, i32 1, !dbg !2189
  %27 = load i64, ptr %26, align 8, !dbg !2189
  %28 = getelementptr inbounds { i64, i64 }, ptr %23, i32 0, i32 0, !dbg !2189
  %29 = load i64, ptr %28, align 8, !dbg !2189
  %30 = getelementptr inbounds { i64, i64 }, ptr %23, i32 0, i32 1, !dbg !2189
  %31 = load i64, ptr %30, align 8, !dbg !2189
  %32 = call i32 @timespec_cmp(i64 %25, i64 %27, i64 %29, i64 %31) #18, !dbg !2189
  %33 = icmp slt i32 %32, 0, !dbg !2190
  br i1 %33, label %34, label %37, !dbg !2191

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.duinfo, ptr %0, i32 0, i32 2, !dbg !2192
  %36 = getelementptr inbounds %struct.duinfo, ptr %1, i32 0, i32 2, !dbg !2193
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 8 %36, i64 16, i1 false), !dbg !2193, !tbaa.struct !2102
  br label %37, !dbg !2194

37:                                               ; preds = %34, %13
  ret void, !dbg !2195
}

; Function Attrs: inlinehint nounwind ssp willreturn memory(read) uwtable
define available_externally i32 @timespec_cmp(i64 %0, i64 %1, i64 %2, i64 %3) #11 !dbg !2196 {
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
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2201, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2202, metadata !DIExpression()), !dbg !2204
  %11 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0, !dbg !2205
  %12 = load i64, ptr %11, align 8, !dbg !2205, !tbaa !1708
  %13 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 0, !dbg !2205
  %14 = load i64, ptr %13, align 8, !dbg !2205, !tbaa !1708
  %15 = icmp sgt i64 %12, %14, !dbg !2205
  %16 = zext i1 %15 to i32, !dbg !2205
  %17 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0, !dbg !2205
  %18 = load i64, ptr %17, align 8, !dbg !2205, !tbaa !1708
  %19 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 0, !dbg !2205
  %20 = load i64, ptr %19, align 8, !dbg !2205, !tbaa !1708
  %21 = icmp slt i64 %18, %20, !dbg !2205
  %22 = zext i1 %21 to i32, !dbg !2205
  %23 = sub nsw i32 %16, %22, !dbg !2205
  %24 = mul nsw i32 2, %23, !dbg !2206
  %25 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 1, !dbg !2207
  %26 = load i64, ptr %25, align 8, !dbg !2207, !tbaa !1702
  %27 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !2207
  %28 = load i64, ptr %27, align 8, !dbg !2207, !tbaa !1702
  %29 = icmp sgt i64 %26, %28, !dbg !2207
  %30 = zext i1 %29 to i32, !dbg !2207
  %31 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 1, !dbg !2207
  %32 = load i64, ptr %31, align 8, !dbg !2207, !tbaa !1702
  %33 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !2207
  %34 = load i64, ptr %33, align 8, !dbg !2207, !tbaa !1702
  %35 = icmp slt i64 %32, %34, !dbg !2207
  %36 = zext i1 %35 to i32, !dbg !2207
  %37 = sub nsw i32 %30, %36, !dbg !2207
  %38 = add nsw i32 %24, %37, !dbg !2208
  ret i32 %38, !dbg !2209
}

; Function Attrs: allocsize(1,2)
declare !dbg !2210 ptr @xreallocarray(ptr noundef, i64 noundef, i64 noundef) #14

; Function Attrs: nounwind ssp uwtable
define internal void @fill_mount_table() #7 !dbg !2211 {
  %1 = alloca %struct.stat, align 8
  %2 = call noalias ptr @read_file_system_list(i1 noundef zeroext false), !dbg !2232
  call void @llvm.dbg.value(metadata ptr %2, metadata !2213, metadata !DIExpression()), !dbg !2233
  br label %3, !dbg !2234

3:                                                ; preds = %32, %0
  %.0 = phi ptr [ %2, %0 ], [ %34, %32 ], !dbg !2233
  call void @llvm.dbg.value(metadata ptr %.0, metadata !2213, metadata !DIExpression()), !dbg !2233
  %4 = icmp ne ptr %.0, null, !dbg !2234
  br i1 %4, label %5, label %35, !dbg !2234

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mount_entry, ptr %.0, i32 0, i32 5, !dbg !2235
  %7 = load i8, ptr %6, align 4, !dbg !2235
  %8 = lshr i8 %7, 1, !dbg !2235
  %9 = and i8 %8, 1, !dbg !2235
  %10 = zext i8 %9 to i32, !dbg !2235
  %11 = icmp ne i32 %10, 0, !dbg !2236
  br i1 %11, label %32, label %12, !dbg !2237

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.mount_entry, ptr %.0, i32 0, i32 5, !dbg !2238
  %14 = load i8, ptr %13, align 4, !dbg !2238
  %15 = and i8 %14, 1, !dbg !2238
  %16 = zext i8 %15 to i32, !dbg !2238
  %17 = icmp ne i32 %16, 0, !dbg !2239
  br i1 %17, label %32, label %18, !dbg !2240

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 144, ptr %1) #16, !dbg !2241
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2229, metadata !DIExpression()), !dbg !2242
  %19 = getelementptr inbounds %struct.mount_entry, ptr %.0, i32 0, i32 1, !dbg !2243
  %20 = load ptr, ptr %19, align 8, !dbg !2243, !tbaa !2245
  %21 = call i32 @rpl_stat(ptr noundef %20, ptr noundef %1), !dbg !2243
  %22 = icmp ne i32 %21, 0, !dbg !2243
  br i1 %22, label %30, label %23, !dbg !2247

23:                                               ; preds = %18
  %24 = load ptr, ptr @di_mnt, align 8, !dbg !2248, !tbaa !852
  %25 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 3, !dbg !2249
  %26 = load i64, ptr %25, align 8, !dbg !2249, !tbaa !1840
  %27 = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 0, !dbg !2250
  %28 = load i32, ptr %27, align 8, !dbg !2250, !tbaa !1818
  %29 = call zeroext i1 @hash_ins(ptr noundef %24, i64 noundef %26, i32 noundef %28), !dbg !2251
  br label %31, !dbg !2251

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %23
  call void @llvm.lifetime.end.p0(i64 144, ptr %1) #16, !dbg !2252
  br label %32, !dbg !2253

32:                                               ; preds = %31, %12, %5
  call void @llvm.dbg.value(metadata ptr %.0, metadata !2227, metadata !DIExpression()), !dbg !2254
  %33 = getelementptr inbounds %struct.mount_entry, ptr %.0, i32 0, i32 6, !dbg !2255
  %34 = load ptr, ptr %33, align 8, !dbg !2255, !tbaa !2256
  call void @llvm.dbg.value(metadata ptr %34, metadata !2213, metadata !DIExpression()), !dbg !2233
  call void @free_mount_entry(ptr noundef %.0), !dbg !2257
  br label %3, !dbg !2234, !llvm.loop !2258

35:                                               ; preds = %3
  ret void, !dbg !2260
}

declare !dbg !2261 i32 @di_set_lookup(ptr noundef, i32 noundef, i64 noundef) #2

declare !dbg !2264 noalias ptr @read_file_system_list(i1 noundef zeroext) #2

declare !dbg !2267 i32 @rpl_stat(ptr noundef, ptr noundef) #2

declare !dbg !2273 void @free_mount_entry(ptr noundef) #2

declare !dbg !2276 i32 @di_set_insert(ptr noundef, i32 noundef, i64 noundef) #2

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
attributes #8 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { inlinehint nounwind ssp willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind ssp allocsize(1,2) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(1,2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn }
attributes #16 = { nounwind }
attributes #17 = { cold noreturn }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { allocsize(0,1) }
attributes #20 = { allocsize(1,2) }

!llvm.dbg.cu = !{!81}
!llvm.ident = !{!833}
!llvm.module.flags = !{!834, !835, !836, !837, !838, !839}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../src/du.c", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 71)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 74)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3536, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 442)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 5536, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 692)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 317, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3352, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 419)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1664, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 208)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 332, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2280, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 285)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 338, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4888, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 611)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 349, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1624, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 203)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 354, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 48)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 355, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 57)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 356, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !64, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 740, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 2)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 745, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "exclude", scope: !81, file: !2, line: 194, type: !830, isLocal: true, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 16.0.4", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !152, globals: !167, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!82 = !{!83, !92, !102, !115, !129, !134, !140, !145}
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !84, line: 26, baseType: !85, size: 32, elements: !86)
!84 = !DIFile(filename: "../lib/xstrtol.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!85 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!88 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!89 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!90 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!91 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 205, baseType: !85, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101}
!94 = !DIEnumerator(name: "APPARENT_SIZE_OPTION", value: 128)
!95 = !DIEnumerator(name: "EXCLUDE_OPTION", value: 129)
!96 = !DIEnumerator(name: "FILES0_FROM_OPTION", value: 130)
!97 = !DIEnumerator(name: "HUMAN_SI_OPTION", value: 131)
!98 = !DIEnumerator(name: "FTS_DEBUG", value: 132)
!99 = !DIEnumerator(name: "TIME_OPTION", value: 133)
!100 = !DIEnumerator(name: "TIME_STYLE_OPTION", value: 134)
!101 = !DIEnumerator(name: "INODES_OPTION", value: 135)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 42, baseType: !85, size: 32, elements: !104)
!103 = !DIFile(filename: "../lib/human.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!105 = !DIEnumerator(name: "human_ceiling", value: 0)
!106 = !DIEnumerator(name: "human_round_to_nearest", value: 1)
!107 = !DIEnumerator(name: "human_floor", value: 2)
!108 = !DIEnumerator(name: "human_group_digits", value: 4)
!109 = !DIEnumerator(name: "human_suppress_point_zero", value: 8)
!110 = !DIEnumerator(name: "human_autoscale", value: 16)
!111 = !DIEnumerator(name: "human_base_1024", value: 32)
!112 = !DIEnumerator(name: "human_space_before_unit", value: 64)
!113 = !DIEnumerator(name: "human_SI", value: 128)
!114 = !DIEnumerator(name: "human_B", value: 256)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !116, line: 32, baseType: !85, size: 32, elements: !117)
!116 = !DIFile(filename: "../lib/quotearg.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!118 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!119 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!120 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!121 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!122 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!123 = !DIEnumerator(name: "c_quoting_style", value: 5)
!124 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!125 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!126 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!127 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!128 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "time_type", file: !2, line: 172, baseType: !85, size: 32, elements: !130)
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "time_mtime", value: 0)
!132 = !DIEnumerator(name: "time_ctime", value: 1)
!133 = !DIEnumerator(name: "time_atime", value: 2)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 332, baseType: !136, size: 32, elements: !137)
!135 = !DIFile(filename: "../src/system.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!136 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!137 = !{!138, !139}
!138 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!139 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "time_style", file: !2, line: 261, baseType: !85, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "full_iso_time_style", value: 0)
!143 = !DIEnumerator(name: "long_iso_time_style", value: 1)
!144 = !DIEnumerator(name: "iso_time_style", value: 2)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "argv_iter_err", file: !146, line: 24, baseType: !85, size: 32, elements: !147)
!146 = !DIFile(filename: "../lib/argv-iter.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "AI_ERR_OK", value: 1)
!149 = !DIEnumerator(name: "AI_ERR_EOF", value: 2)
!150 = !DIEnumerator(name: "AI_ERR_MEM", value: 3)
!151 = !DIEnumerator(name: "AI_ERR_READ", value: 4)
!152 = !{!153, !155, !157, !158, !159, !162}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !160, line: 32, baseType: !161)
!160 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !163, line: 31, baseType: !164)
!163 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_time_t.h", directory: "")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !165, line: 122, baseType: !166)
!165 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/i386/_types.h", directory: "")
!166 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!167 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !69, !74, !168, !173, !178, !183, !185, !190, !192, !197, !199, !201, !206, !211, !216, !221, !226, !231, !236, !241, !246, !248, !253, !309, !315, !317, !319, !324, !326, !331, !336, !338, !340, !342, !347, !349, !351, !356, !359, !364, !369, !374, !376, !378, !383, !388, !390, !392, !394, !400, !79, !402, !414, !419, !424, !429, !431, !433, !438, !443, !445, !447, !449, !451, !453, !458, !460, !462, !464, !466, !468, !473, !475, !477, !479, !481, !483, !485, !487, !489, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !540, !542, !544, !546, !548, !550, !552, !556, !558, !560, !562, !566, !568, !570, !572, !574, !576, !580, !582, !584, !586, !590, !592, !594, !597, !602, !604, !606, !801, !808, !810, !813, !815, !817, !822, !824, !826, !828}
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 753, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 14)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 759, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 24)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 820, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 25)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 843, type: !170, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 849, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 34)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 888, type: !64, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 909, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 7)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 911, type: !64, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !2, line: 920, type: !170, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 920, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 18)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 920, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 16)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 920, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 12)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 920, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 13)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 932, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 43)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 939, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 56)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !2, line: 945, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 52)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 956, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 70)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 967, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 11)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 970, type: !194, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 971, type: !250, isLocal: true, isDefinition: true)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 9)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "posix_prefix", scope: !255, file: !2, line: 983, type: !308, isLocal: true, isDefinition: true)
!255 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 723, type: !256, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !259)
!256 = !DISubroutineType(types: !257)
!257 = !{!136, !136, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!259 = !{!260, !261, !262, !264, !266, !267, !268, !269, !270, !271, !273, !274, !277, !279, !281, !284, !292, !295, !298, !300, !301, !302, !307}
!260 = !DILocalVariable(name: "argc", arg: 1, scope: !255, file: !2, line: 723, type: !136)
!261 = !DILocalVariable(name: "argv", arg: 2, scope: !255, file: !2, line: 723, type: !258)
!262 = !DILocalVariable(name: "cwd_only", scope: !255, file: !2, line: 725, type: !263)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 128, elements: !72)
!264 = !DILocalVariable(name: "max_depth_specified", scope: !255, file: !2, line: 726, type: !265)
!265 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!266 = !DILocalVariable(name: "ok", scope: !255, file: !2, line: 727, type: !265)
!267 = !DILocalVariable(name: "files_from", scope: !255, file: !2, line: 728, type: !157)
!268 = !DILocalVariable(name: "bit_flags", scope: !255, file: !2, line: 731, type: !136)
!269 = !DILocalVariable(name: "symlink_deref_bits", scope: !255, file: !2, line: 735, type: !136)
!270 = !DILocalVariable(name: "opt_summarize_only", scope: !255, file: !2, line: 738, type: !265)
!271 = !DILocalVariable(name: "oi", scope: !272, file: !2, line: 758, type: !136)
!272 = distinct !DILexicalBlock(scope: !255, file: !2, line: 757, column: 5)
!273 = !DILocalVariable(name: "c", scope: !272, file: !2, line: 759, type: !136)
!274 = !DILocalVariable(name: "tmp", scope: !275, file: !2, line: 811, type: !159)
!275 = distinct !DILexicalBlock(scope: !276, file: !2, line: 810, column: 11)
!276 = distinct !DILexicalBlock(scope: !272, file: !2, line: 765, column: 9)
!277 = !DILocalVariable(name: "e", scope: !278, file: !2, line: 842, type: !83)
!278 = distinct !DILexicalBlock(scope: !276, file: !2, line: 841, column: 11)
!279 = !DILocalVariable(name: "e", scope: !280, file: !2, line: 860, type: !83)
!280 = distinct !DILexicalBlock(scope: !276, file: !2, line: 859, column: 11)
!281 = !DILocalVariable(name: "d", scope: !282, file: !2, line: 944, type: !161)
!282 = distinct !DILexicalBlock(scope: !283, file: !2, line: 943, column: 5)
!283 = distinct !DILexicalBlock(scope: !255, file: !2, line: 942, column: 7)
!284 = !DILocalVariable(name: "p", scope: !285, file: !2, line: 976, type: !157)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 973, column: 13)
!286 = distinct !DILexicalBlock(scope: !287, file: !2, line: 972, column: 20)
!287 = distinct !DILexicalBlock(scope: !288, file: !2, line: 970, column: 15)
!288 = distinct !DILexicalBlock(scope: !289, file: !2, line: 966, column: 9)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 965, column: 11)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 964, column: 5)
!291 = distinct !DILexicalBlock(scope: !255, file: !2, line: 963, column: 7)
!292 = !DILocalVariable(name: "ai", scope: !255, file: !2, line: 1012, type: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "argv_iterator", file: !146, line: 22, flags: DIFlagFwdDecl)
!295 = !DILocalVariable(name: "files", scope: !296, file: !2, line: 1037, type: !258)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 1036, column: 5)
!297 = distinct !DILexicalBlock(scope: !255, file: !2, line: 1013, column: 7)
!298 = !DILocalVariable(name: "skip_file", scope: !299, file: !2, line: 1064, type: !265)
!299 = distinct !DILexicalBlock(scope: !255, file: !2, line: 1063, column: 5)
!300 = !DILocalVariable(name: "ai_err", scope: !299, file: !2, line: 1065, type: !145)
!301 = !DILocalVariable(name: "file_name", scope: !299, file: !2, line: 1066, type: !157)
!302 = !DILocalVariable(name: "file_number", scope: !303, file: !2, line: 1111, type: !161)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 1107, column: 13)
!304 = distinct !DILexicalBlock(scope: !305, file: !2, line: 1104, column: 15)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 1099, column: 9)
!306 = distinct !DILexicalBlock(scope: !299, file: !2, line: 1098, column: 11)
!307 = !DILabel(scope: !255, name: "argv_iter_done", file: !2, line: 1126)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 56, elements: !195)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "prefix_len", scope: !255, file: !2, line: 984, type: !311, isLocal: true, isDefinition: true)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !313, line: 31, baseType: !314)
!313 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !165, line: 94, baseType: !161)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 994, type: !243, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 998, type: !175, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1002, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 15)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1006, type: !250, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1019, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 17)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1020, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 4)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1021, type: !233, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1025, type: !71, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1025, type: !71, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1026, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 27)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "temp_argv", scope: !255, file: !2, line: 1060, type: !263, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1074, type: !321, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1081, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 40, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 5)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1081, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !354)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1081, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 40)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1088, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 63)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1105, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 30)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1112, type: !243, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1134, type: !328, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1137, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 6)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "di_files", scope: !81, file: !2, line: 67, type: !385, isLocal: true, isDefinition: true)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "di_set", file: !387, line: 24, flags: DIFlagFwdDecl)
!387 = !DIFile(filename: "../lib/di-set.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "di_mnt", scope: !81, file: !2, line: 70, type: !385, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "hash_all", scope: !81, file: !2, line: 141, type: !265, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "human_output_opts", scope: !81, file: !2, line: 162, type: !136, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "localtz", scope: !81, file: !2, line: 188, type: !396, isLocal: true, isDefinition: true)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "timezone_t", file: !397, line: 896, baseType: !398)
!397 = !DIFile(filename: "./lib/time.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zone", file: !397, line: 896, flags: DIFlagFwdDecl)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "output_block_size", scope: !81, file: !2, line: 191, type: !159, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "tot_dui", scope: !81, file: !2, line: 197, type: !404, isLocal: true, isDefinition: true)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "duinfo", file: !2, line: 77, size: 256, elements: !405)
!405 = !{!406, !407, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !404, file: !2, line: 80, baseType: !159, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !404, file: !2, line: 83, baseType: !159, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tmax", scope: !404, file: !2, line: 87, baseType: !409, size: 128, offset: 128)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !410, line: 33, size: 128, elements: !411)
!410 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !409, file: !410, line: 35, baseType: !164, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !409, file: !410, line: 36, baseType: !166, size: 64, offset: 64)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !135, line: 586, type: !416, isLocal: true, isDefinition: true)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 75)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !135, line: 604, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1784, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 223)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !135, line: 594, type: !426, isLocal: true, isDefinition: true)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1728, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 216)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !135, line: 660, type: !71, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !135, line: 660, type: !208, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !135, line: 661, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 10)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !135, line: 661, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 22)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !135, line: 662, type: !435, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !135, line: 662, type: !321, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !135, line: 663, type: !435, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !135, line: 664, type: !435, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !135, line: 665, type: !435, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !135, line: 678, type: !455, isLocal: true, isDefinition: true)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 23)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !135, line: 678, type: !361, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !135, line: 683, type: !333, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !135, line: 689, type: !9, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !135, line: 695, type: !358, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !135, line: 696, type: !344, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !135, line: 698, type: !470, isLocal: true, isDefinition: true)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 51)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !135, line: 699, type: !213, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !333, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !170, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !2, line: 221, type: !243, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !380, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !213, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !213, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !328, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !491, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 8)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !218, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !213, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !321, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !194, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !64, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !435, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !358, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !321, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !208, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !170, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !435, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !435, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !358, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !243, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !2, line: 243, type: !358, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !491, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "long_options", scope: !81, file: !2, line: 217, type: !528, isLocal: true, isDefinition: true)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 6656, elements: !538)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpl_option", file: !531, line: 50, size: 256, elements: !532)
!531 = !DIFile(filename: "../lib/getopt-ext.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!532 = !{!533, !534, !535, !537}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !531, line: 52, baseType: !153, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !530, file: !531, line: 55, baseType: !136, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !530, file: !531, line: 56, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !530, file: !531, line: 57, baseType: !136, size: 32, offset: 192)
!538 = !{!539}
!539 = !DISubrange(count: 26)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "opt_nul_terminate_output", scope: !81, file: !2, line: 144, type: !265, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "opt_all", scope: !81, file: !2, line: 131, type: !265, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "apparent_size", scope: !81, file: !2, line: 135, type: !265, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "print_grand_total", scope: !81, file: !2, line: 147, type: !265, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "max_depth", scope: !81, file: !2, line: 155, type: !312, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "opt_count_all", scope: !81, file: !2, line: 138, type: !265, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "opt_threshold", scope: !81, file: !2, line: 159, type: !554, isLocal: true, isDefinition: true)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !555, line: 32, baseType: !166)
!555 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_types/_intmax_t.h", directory: "")
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "opt_separate_dirs", scope: !81, file: !2, line: 150, type: !265, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "opt_inodes", scope: !81, file: !2, line: 165, type: !265, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "opt_time", scope: !81, file: !2, line: 168, type: !265, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "time_types", scope: !81, file: !2, line: 252, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 160, elements: !354)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !380, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !194, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !333, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !380, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !194, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "time_args", scope: !81, file: !2, line: 248, type: !578, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 384, elements: !381)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "time_type", scope: !81, file: !2, line: 179, type: !129, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "time_style", scope: !81, file: !2, line: 182, type: !153, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "time_format", scope: !81, file: !2, line: 185, type: !153, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "time_style_types", scope: !81, file: !2, line: 272, type: !588, isLocal: true, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 96, elements: !65)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !250, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !333, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "time_style_args", scope: !81, file: !2, line: 268, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 256, elements: !334)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !2, line: 696, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 20)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !2, line: 714, type: !328, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "prev_level", scope: !81, file: !2, line: 74, type: !312, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "n_alloc", scope: !608, file: !2, line: 495, type: !312, isLocal: true, isDefinition: true)
!608 = distinct !DISubprogram(name: "process_file", scope: !2, file: !2, line: 489, type: !609, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !763)
!609 = !DISubroutineType(types: !610)
!610 = !{!265, !611, !761}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "FTS", file: !613, line: 197, baseType: !614)
!613 = !DIFile(filename: "../lib/fts_.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !613, line: 80, size: 1024, elements: !615)
!615 = !{!616, !723, !724, !726, !727, !728, !729, !730, !731, !732, !739, !740, !743, !750}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cur", scope: !614, file: !613, line: 81, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ftsent", file: !613, line: 199, size: 2048, elements: !619)
!619 = !{!620, !621, !622, !623, !647, !648, !649, !650, !651, !652, !653, !654, !655, !658, !659, !661, !662, !663, !719}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cycle", scope: !618, file: !613, line: 200, baseType: !617, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "fts_parent", scope: !618, file: !613, line: 201, baseType: !617, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fts_link", scope: !618, file: !613, line: 202, baseType: !617, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fts_dirp", scope: !618, file: !613, line: 203, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !626, line: 84, baseType: !627)
!626 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/dirent.h", directory: "")
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !626, line: 73, size: 1088, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !644}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_fd", scope: !627, file: !626, line: 74, baseType: !136, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_loc", scope: !627, file: !626, line: 75, baseType: !166, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_size", scope: !627, file: !626, line: 76, baseType: !166, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_buf", scope: !627, file: !626, line: 77, baseType: !157, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_len", scope: !627, file: !626, line: 78, baseType: !136, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_seek", scope: !627, file: !626, line: 79, baseType: !166, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !627, file: !626, line: 80, baseType: !166, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_flags", scope: !627, file: !626, line: 81, baseType: !136, size: 32, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_lock", scope: !627, file: !626, line: 82, baseType: !638, size: 512, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pthread_mutex_t", file: !639, line: 113, baseType: !640)
!639 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_pthread/_pthread_types.h", directory: "")
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque_pthread_mutex_t", file: !639, line: 78, size: 512, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__sig", scope: !640, file: !639, line: 79, baseType: !166, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "__opaque", scope: !640, file: !639, line: 80, baseType: !228, size: 448, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "__dd_td", scope: !627, file: !626, line: 83, baseType: !645, size: 64, offset: 1024)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "_telldir", file: !626, line: 70, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fts_number", scope: !618, file: !613, line: 206, baseType: !166, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pointer", scope: !618, file: !613, line: 207, baseType: !158, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "fts_accpath", scope: !618, file: !613, line: 208, baseType: !157, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fts_path", scope: !618, file: !613, line: 209, baseType: !157, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "fts_errno", scope: !618, file: !613, line: 210, baseType: !136, size: 32, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fts_symfd", scope: !618, file: !613, line: 211, baseType: !136, size: 32, offset: 544)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pathlen", scope: !618, file: !613, line: 212, baseType: !312, size: 64, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "fts_fts", scope: !618, file: !613, line: 214, baseType: !611, size: 64, offset: 640)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "fts_level", scope: !618, file: !613, line: 218, baseType: !656, size: 64, offset: 704)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !657, line: 35, baseType: !166)
!657 = !DIFile(filename: "/usr/local/Cellar/llvm/16.0.4/lib/clang/16/include/stddef.h", directory: "")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "fts_namelen", scope: !618, file: !613, line: 220, baseType: !312, size: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fts_info", scope: !618, file: !613, line: 236, baseType: !660, size: 16, offset: 832)
!660 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "fts_flags", scope: !618, file: !613, line: 240, baseType: !660, size: 16, offset: 848)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "fts_instr", scope: !618, file: !613, line: 246, baseType: !660, size: 16, offset: 864)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "fts_statp", scope: !618, file: !613, line: 248, baseType: !664, size: 1152, offset: 896)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 1152, elements: !77)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !666, line: 182, size: 1152, elements: !667)
!666 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/stat.h", directory: "")
!667 = !{!668, !674, !679, !682, !686, !691, !695, !696, !697, !698, !699, !700, !706, !710, !714, !715, !716, !717}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !665, file: !666, line: 182, baseType: !669, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !670, line: 31, baseType: !671)
!670 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !672, line: 57, baseType: !673)
!672 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !165, line: 46, baseType: !136)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !665, file: !666, line: 182, baseType: !675, size: 16, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !676, line: 31, baseType: !677)
!676 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !672, line: 70, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !165, line: 45, baseType: !660)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !665, file: !666, line: 182, baseType: !680, size: 16, offset: 48)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !681, line: 31, baseType: !678)
!681 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !665, file: !666, line: 182, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !672, line: 62, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !165, line: 49, baseType: !685)
!685 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !665, file: !666, line: 182, baseType: !687, size: 32, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !688, line: 31, baseType: !689)
!688 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !672, line: 75, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !165, line: 47, baseType: !85)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !665, file: !666, line: 182, baseType: !692, size: 32, offset: 160)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !693, line: 31, baseType: !694)
!693 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !672, line: 60, baseType: !690)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !665, file: !666, line: 182, baseType: !669, size: 32, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !665, file: !666, line: 182, baseType: !409, size: 128, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !665, file: !666, line: 182, baseType: !409, size: 128, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !665, file: !666, line: 182, baseType: !409, size: 128, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !665, file: !666, line: 182, baseType: !409, size: 128, offset: 640)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !665, file: !666, line: 182, baseType: !701, size: 64, offset: 768)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !702, line: 31, baseType: !703)
!702 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !672, line: 71, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !165, line: 48, baseType: !705)
!705 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !665, file: !666, line: 182, baseType: !707, size: 64, offset: 832)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !708, line: 31, baseType: !709)
!708 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !672, line: 55, baseType: !704)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !665, file: !666, line: 182, baseType: !711, size: 32, offset: 896)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !712, line: 31, baseType: !713)
!712 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !672, line: 56, baseType: !673)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !665, file: !666, line: 182, baseType: !690, size: 32, offset: 928)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !665, file: !666, line: 182, baseType: !690, size: 32, offset: 960)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !665, file: !666, line: 182, baseType: !673, size: 32, offset: 992)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !665, file: !666, line: 182, baseType: !718, size: 128, offset: 1024)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 128, elements: !72)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "fts_name", scope: !618, file: !613, line: 249, baseType: !720, offset: 2048)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: -1)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "fts_child", scope: !614, file: !613, line: 82, baseType: !617, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "fts_array", scope: !614, file: !613, line: 83, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "fts_dev", scope: !614, file: !613, line: 84, baseType: !669, size: 32, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "fts_path", scope: !614, file: !613, line: 85, baseType: !157, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fts_rfd", scope: !614, file: !613, line: 86, baseType: !136, size: 32, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cwd_fd", scope: !614, file: !613, line: 87, baseType: !136, size: 32, offset: 352)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pathlen", scope: !614, file: !613, line: 89, baseType: !312, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "fts_nitems", scope: !614, file: !613, line: 90, baseType: !312, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "fts_compar", scope: !614, file: !613, line: 91, baseType: !733, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!136, !736, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "fts_options", scope: !614, file: !613, line: 160, baseType: !136, size: 32, offset: 576)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "fts_leaf_optimization_works_ht", scope: !614, file: !613, line: 169, baseType: !741, size: 64, offset: 640)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", file: !613, line: 169, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cycle", scope: !614, file: !613, line: 191, baseType: !744, size: 64, offset: 704)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !613, line: 171, size: 64, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !744, file: !613, line: 184, baseType: !741, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !744, file: !613, line: 190, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "cycle_check_state", file: !613, line: 190, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "fts_fd_ring", scope: !614, file: !613, line: 196, baseType: !751, size: 256, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "I_ring", file: !752, line: 37, baseType: !753)
!752 = !DIFile(filename: "../lib/i-ring.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "I_ring", file: !752, line: 29, size: 256, elements: !754)
!754 = !{!755, !757, !758, !759, !760}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ir_data", scope: !753, file: !752, line: 31, baseType: !756, size: 128)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !334)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ir_default_val", scope: !753, file: !752, line: 32, baseType: !136, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ir_front", scope: !753, file: !752, line: 33, baseType: !85, size: 32, offset: 160)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ir_back", scope: !753, file: !752, line: 34, baseType: !85, size: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ir_empty", scope: !753, file: !752, line: 35, baseType: !265, size: 8, offset: 224)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "FTSENT", file: !613, line: 250, baseType: !618)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !774, !775, !779, !786, !791, !798}
!764 = !DILocalVariable(name: "fts", arg: 1, scope: !608, file: !2, line: 489, type: !611)
!765 = !DILocalVariable(name: "ent", arg: 2, scope: !608, file: !2, line: 489, type: !761)
!766 = !DILocalVariable(name: "ok", scope: !608, file: !2, line: 491, type: !265)
!767 = !DILocalVariable(name: "dui", scope: !608, file: !2, line: 492, type: !404)
!768 = !DILocalVariable(name: "dui_to_print", scope: !608, file: !2, line: 493, type: !404)
!769 = !DILocalVariable(name: "level", scope: !608, file: !2, line: 494, type: !312)
!770 = !DILocalVariable(name: "file", scope: !608, file: !2, line: 506, type: !153)
!771 = !DILocalVariable(name: "sb", scope: !608, file: !2, line: 507, type: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!774 = !DILocalVariable(name: "info", scope: !608, file: !2, line: 508, type: !136)
!775 = !DILocalVariable(name: "excluded", scope: !776, file: !2, line: 518, type: !265)
!776 = distinct !DILexicalBlock(scope: !777, file: !2, line: 517, column: 5)
!777 = distinct !DILexicalBlock(scope: !778, file: !2, line: 516, column: 12)
!778 = distinct !DILexicalBlock(scope: !608, file: !2, line: 510, column: 7)
!779 = !DILocalVariable(name: "e", scope: !780, file: !2, line: 526, type: !784)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 524, column: 13)
!781 = distinct !DILexicalBlock(scope: !782, file: !2, line: 523, column: 15)
!782 = distinct !DILexicalBlock(scope: !783, file: !2, line: 520, column: 9)
!783 = distinct !DILexicalBlock(scope: !776, file: !2, line: 519, column: 11)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!786 = !DILocalVariable(name: "e", scope: !787, file: !2, line: 559, type: !784)
!787 = distinct !DILexicalBlock(scope: !788, file: !2, line: 557, column: 13)
!788 = distinct !DILexicalBlock(scope: !789, file: !2, line: 556, column: 15)
!789 = distinct !DILexicalBlock(scope: !790, file: !2, line: 552, column: 9)
!790 = distinct !DILexicalBlock(scope: !776, file: !2, line: 548, column: 11)
!791 = !DILocalVariable(name: "i", scope: !792, file: !2, line: 624, type: !312)
!792 = distinct !DILexicalBlock(scope: !793, file: !2, line: 624, column: 11)
!793 = distinct !DILexicalBlock(scope: !794, file: !2, line: 612, column: 9)
!794 = distinct !DILexicalBlock(scope: !795, file: !2, line: 611, column: 16)
!795 = distinct !DILexicalBlock(scope: !796, file: !2, line: 607, column: 11)
!796 = distinct !DILexicalBlock(scope: !797, file: !2, line: 606, column: 5)
!797 = distinct !DILexicalBlock(scope: !608, file: !2, line: 600, column: 7)
!798 = !DILocalVariable(name: "v", scope: !799, file: !2, line: 663, type: !159)
!799 = distinct !DILexicalBlock(scope: !800, file: !2, line: 661, column: 5)
!800 = distinct !DILexicalBlock(scope: !608, file: !2, line: 658, column: 7)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(name: "dulvl", scope: !608, file: !2, line: 504, type: !803, isLocal: true, isDefinition: true)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dulevel", file: !2, line: 121, size: 512, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !804, file: !2, line: 124, baseType: !404, size: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "subdir", scope: !804, file: !2, line: 127, baseType: !404, size: 256, offset: 256)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !180, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !2, line: 527, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 104, elements: !219)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !2, line: 527, type: !250, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !328, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !2, line: 582, type: !819, isLocal: true, isDefinition: true)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1488, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 186)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !2, line: 638, type: !175, isLocal: true, isDefinition: true)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !2, line: 421, type: !380, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !250, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !2, line: 389, type: !175, isLocal: true, isDefinition: true)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "exclude", file: !832, line: 46, flags: DIFlagFwdDecl)
!832 = !DIFile(filename: "../lib/exclude.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!833 = !{!"Homebrew clang version 16.0.4"}
!834 = !{i32 7, !"Dwarf Version", i32 4}
!835 = !{i32 2, !"Debug Info Version", i32 3}
!836 = !{i32 1, !"wchar_size", i32 4}
!837 = !{i32 8, !"PIC Level", i32 2}
!838 = !{i32 7, !"uwtable", i32 2}
!839 = !{i32 7, !"frame-pointer", i32 2}
!840 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 279, type: !841, scopeLine: 280, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !136}
!843 = !{!844}
!844 = !DILocalVariable(name: "status", arg: 1, scope: !840, file: !2, line: 279, type: !136)
!845 = !DILocation(line: 0, scope: !840)
!846 = !DILocation(line: 281, column: 14, scope: !847)
!847 = distinct !DILexicalBlock(scope: !840, file: !2, line: 281, column: 7)
!848 = !DILocation(line: 281, column: 7, scope: !840)
!849 = !DILocation(line: 282, column: 5, scope: !847)
!850 = !DILocation(line: 282, column: 5, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !2, line: 282, column: 5)
!852 = !{!853, !853, i64 0}
!853 = !{!"any pointer", !854, i64 0}
!854 = !{!"omnipotent char", !855, i64 0}
!855 = !{!"Simple C/C++ TBAA"}
!856 = !DILocation(line: 288, column: 5, scope: !857)
!857 = distinct !DILexicalBlock(scope: !847, file: !2, line: 284, column: 5)
!858 = !DILocation(line: 288, column: 19, scope: !857)
!859 = !DILocation(line: 285, column: 7, scope: !857)
!860 = !DILocation(line: 291, column: 5, scope: !857)
!861 = !DILocation(line: 289, column: 7, scope: !857)
!862 = !DILocation(line: 293, column: 7, scope: !857)
!863 = !DILocation(line: 303, column: 5, scope: !857)
!864 = !DILocation(line: 295, column: 7, scope: !857)
!865 = !DILocation(line: 316, column: 5, scope: !857)
!866 = !DILocation(line: 304, column: 7, scope: !857)
!867 = !DILocation(line: 325, column: 5, scope: !857)
!868 = !DILocation(line: 317, column: 7, scope: !857)
!869 = !DILocation(line: 331, column: 5, scope: !857)
!870 = !DILocation(line: 326, column: 7, scope: !857)
!871 = !DILocation(line: 337, column: 5, scope: !857)
!872 = !DILocation(line: 332, column: 7, scope: !857)
!873 = !DILocation(line: 348, column: 5, scope: !857)
!874 = !DILocation(line: 338, column: 7, scope: !857)
!875 = !DILocation(line: 353, column: 5, scope: !857)
!876 = !DILocation(line: 349, column: 7, scope: !857)
!877 = !DILocation(line: 354, column: 39, scope: !857)
!878 = !DILocation(line: 354, column: 7, scope: !857)
!879 = !DILocation(line: 355, column: 42, scope: !857)
!880 = !DILocation(line: 355, column: 7, scope: !857)
!881 = !DILocation(line: 356, column: 7, scope: !857)
!882 = !DILocation(line: 357, column: 7, scope: !857)
!883 = !DILocation(line: 358, column: 7, scope: !857)
!884 = !DILocation(line: 360, column: 3, scope: !840)
!885 = !DISubprogram(name: "fprintf", scope: !886, file: !886, line: 155, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!886 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!887 = !DISubroutineType(types: !888)
!888 = !{!136, !889, !939, null}
!889 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !892, line: 157, baseType: !893)
!892 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !892, line: 126, size: 1216, elements: !894)
!894 = !{!895, !898, !899, !900, !902, !903, !908, !909, !910, !914, !918, !923, !927, !928, !931, !932, !934, !936, !937, !938}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !893, file: !892, line: 127, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !893, file: !892, line: 128, baseType: !136, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !893, file: !892, line: 129, baseType: !136, size: 32, offset: 96)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !893, file: !892, line: 130, baseType: !901, size: 16, offset: 128)
!901 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !893, file: !892, line: 131, baseType: !901, size: 16, offset: 144)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !893, file: !892, line: 132, baseType: !904, size: 128, offset: 192)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !892, line: 92, size: 128, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !904, file: !892, line: 93, baseType: !896, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !904, file: !892, line: 94, baseType: !136, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !893, file: !892, line: 133, baseType: !136, size: 32, offset: 320)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !893, file: !892, line: 136, baseType: !158, size: 64, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !893, file: !892, line: 137, baseType: !911, size: 64, offset: 448)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!136, !158}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !893, file: !892, line: 138, baseType: !915, size: 64, offset: 512)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!136, !158, !157, !136}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !893, file: !892, line: 139, baseType: !919, size: 64, offset: 576)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!922, !158, !922, !136}
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !892, line: 81, baseType: !703)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !893, file: !892, line: 140, baseType: !924, size: 64, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!136, !158, !153, !136}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !893, file: !892, line: 143, baseType: !904, size: 128, offset: 704)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !893, file: !892, line: 144, baseType: !929, size: 64, offset: 832)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !892, line: 98, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !893, file: !892, line: 145, baseType: !136, size: 32, offset: 896)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !893, file: !892, line: 148, baseType: !933, size: 24, offset: 928)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 24, elements: !65)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !893, file: !892, line: 149, baseType: !935, size: 8, offset: 952)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 8, elements: !77)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !893, file: !892, line: 152, baseType: !904, size: 128, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !893, file: !892, line: 155, baseType: !136, size: 32, offset: 1088)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !893, file: !892, line: 156, baseType: !922, size: 64, offset: 1152)
!939 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !153)
!940 = !{}
!941 = !DISubprogram(name: "printf", scope: !886, file: !886, line: 175, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!942 = !DISubroutineType(types: !943)
!943 = !{!136, !939, null}
!944 = !DISubprogram(name: "fputs", linkageName: "\01_fputs", scope: !886, file: !886, line: 157, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!945 = !DISubroutineType(types: !946)
!946 = !{!136, !939, !889}
!947 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !135, file: !135, line: 584, type: !948, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !940)
!948 = !DISubroutineType(types: !949)
!949 = !{null}
!950 = !DILocation(line: 588, column: 5, scope: !947)
!951 = !DILocation(line: 586, column: 3, scope: !947)
!952 = !DILocation(line: 589, column: 1, scope: !947)
!953 = distinct !DISubprogram(name: "emit_blocksize_note", scope: !135, file: !135, line: 602, type: !954, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !956)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !153}
!956 = !{!957}
!957 = !DILocalVariable(name: "program", arg: 1, scope: !953, file: !135, line: 602, type: !153)
!958 = !DILocation(line: 0, scope: !953)
!959 = !DILocation(line: 604, column: 3, scope: !953)
!960 = !DILocation(line: 609, column: 1, scope: !953)
!961 = distinct !DISubprogram(name: "emit_size_note", scope: !135, file: !135, line: 592, type: !948, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !940)
!962 = !DILocation(line: 598, column: 5, scope: !961)
!963 = !DILocation(line: 594, column: 3, scope: !961)
!964 = !DILocation(line: 599, column: 1, scope: !961)
!965 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !135, file: !135, line: 657, type: !954, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !966)
!966 = !{!967, !968, !975, !976, !978, !979}
!967 = !DILocalVariable(name: "program", arg: 1, scope: !965, file: !135, line: 657, type: !153)
!968 = !DILocalVariable(name: "infomap", scope: !965, file: !135, line: 659, type: !969)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 896, elements: !195)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !965, file: !135, line: 659, size: 128, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !971, file: !135, line: 659, baseType: !153, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !971, file: !135, line: 659, baseType: !153, size: 64, offset: 64)
!975 = !DILocalVariable(name: "node", scope: !965, file: !135, line: 669, type: !153)
!976 = !DILocalVariable(name: "map_prog", scope: !965, file: !135, line: 670, type: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!978 = !DILocalVariable(name: "lc_messages", scope: !965, file: !135, line: 682, type: !153)
!979 = !DILocalVariable(name: "url_program", scope: !965, file: !135, line: 695, type: !153)
!980 = !DILocation(line: 0, scope: !965)
!981 = !DILocation(line: 659, column: 3, scope: !965)
!982 = !DILocation(line: 659, column: 67, scope: !965)
!983 = !DILocation(line: 670, column: 36, scope: !965)
!984 = !DILocation(line: 672, column: 3, scope: !965)
!985 = !DILocation(line: 672, column: 20, scope: !965)
!986 = !{!987, !853, i64 0}
!987 = !{!"infomap", !853, i64 0, !853, i64 8}
!988 = !DILocation(line: 672, column: 10, scope: !965)
!989 = !DILocation(line: 672, column: 28, scope: !965)
!990 = !DILocation(line: 672, column: 33, scope: !965)
!991 = !DILocation(line: 672, column: 31, scope: !965)
!992 = !DILocation(line: 673, column: 13, scope: !965)
!993 = distinct !{!993, !984, !992, !994, !995}
!994 = !{!"llvm.loop.mustprogress"}
!995 = !{!"llvm.loop.unroll.disable"}
!996 = !DILocation(line: 675, column: 17, scope: !997)
!997 = distinct !DILexicalBlock(scope: !965, file: !135, line: 675, column: 7)
!998 = !{!987, !853, i64 8}
!999 = !DILocation(line: 675, column: 7, scope: !997)
!1000 = !DILocation(line: 675, column: 7, scope: !965)
!1001 = !DILocation(line: 676, column: 22, scope: !997)
!1002 = !DILocation(line: 676, column: 5, scope: !997)
!1003 = !DILocation(line: 678, column: 3, scope: !965)
!1004 = !DILocation(line: 682, column: 29, scope: !965)
!1005 = !DILocation(line: 683, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !965, file: !135, line: 683, column: 7)
!1007 = !DILocation(line: 683, column: 19, scope: !1006)
!1008 = !DILocation(line: 683, column: 22, scope: !1006)
!1009 = !DILocation(line: 683, column: 7, scope: !965)
!1010 = !DILocation(line: 690, column: 61, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !135, line: 684, column: 5)
!1012 = !DILocation(line: 689, column: 7, scope: !1011)
!1013 = !DILocation(line: 691, column: 5, scope: !1011)
!1014 = !DILocation(line: 695, column: 29, scope: !965)
!1015 = !DILocation(line: 696, column: 3, scope: !965)
!1016 = !DILocation(line: 699, column: 22, scope: !965)
!1017 = !DILocation(line: 699, column: 17, scope: !965)
!1018 = !DILocation(line: 698, column: 3, scope: !965)
!1019 = !DILocation(line: 700, column: 1, scope: !965)
!1020 = !DISubprogram(name: "exit", scope: !1021, file: !1021, line: 145, type: !841, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1021 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdlib.h", directory: "")
!1022 = !DISubprogram(name: "strcmp", scope: !1023, file: !1023, line: 77, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1023 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/string.h", directory: "")
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!136, !153, !153}
!1026 = !DISubprogram(name: "setlocale", scope: !1027, file: !1027, line: 53, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1027 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/locale.h", directory: "")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!157, !136, !153}
!1030 = !DISubprogram(name: "strncmp", scope: !1023, file: !1023, line: 84, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!136, !153, !153, !312}
!1033 = !DILocation(line: 0, scope: !255)
!1034 = !DILocation(line: 725, column: 3, scope: !255)
!1035 = !DILocation(line: 725, column: 9, scope: !255)
!1036 = !DILocation(line: 740, column: 17, scope: !255)
!1037 = !DILocation(line: 740, column: 3, scope: !255)
!1038 = !DILocation(line: 740, column: 15, scope: !255)
!1039 = !DILocation(line: 741, column: 3, scope: !255)
!1040 = !DILocation(line: 741, column: 15, scope: !255)
!1041 = !DILocation(line: 744, column: 21, scope: !255)
!1042 = !DILocation(line: 744, column: 3, scope: !255)
!1043 = !DILocation(line: 745, column: 3, scope: !255)
!1044 = !DILocation(line: 749, column: 3, scope: !255)
!1045 = !DILocation(line: 751, column: 13, scope: !255)
!1046 = !DILocation(line: 751, column: 11, scope: !255)
!1047 = !DILocation(line: 753, column: 18, scope: !255)
!1048 = !DILocation(line: 753, column: 3, scope: !255)
!1049 = !DILocation(line: 756, column: 3, scope: !255)
!1050 = !DILocation(line: 738, column: 8, scope: !255)
!1051 = !DILocation(line: 735, column: 7, scope: !255)
!1052 = !DILocation(line: 731, column: 7, scope: !255)
!1053 = !DILocation(line: 728, column: 9, scope: !255)
!1054 = !DILocation(line: 727, column: 8, scope: !255)
!1055 = !DILocation(line: 726, column: 8, scope: !255)
!1056 = !DILocation(line: 758, column: 7, scope: !272)
!1057 = !DILocation(line: 758, column: 11, scope: !272)
!1058 = !{!1059, !1059, i64 0}
!1059 = !{!"int", !854, i64 0}
!1060 = !DILocation(line: 759, column: 15, scope: !272)
!1061 = !DILocation(line: 0, scope: !272)
!1062 = !DILocation(line: 761, column: 13, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !272, file: !2, line: 761, column: 11)
!1064 = !DILocation(line: 761, column: 11, scope: !272)
!1065 = !DILocation(line: 762, column: 9, scope: !1063)
!1066 = !DILocation(line: 764, column: 7, scope: !272)
!1067 = !DILocation(line: 773, column: 36, scope: !276)
!1068 = !{!1069, !1069, i64 0}
!1069 = !{!"_Bool", !854, i64 0}
!1070 = !DILocation(line: 774, column: 11, scope: !276)
!1071 = !DILocation(line: 777, column: 19, scope: !276)
!1072 = !DILocation(line: 778, column: 11, scope: !276)
!1073 = !DILocation(line: 781, column: 25, scope: !276)
!1074 = !DILocation(line: 782, column: 11, scope: !276)
!1075 = !DILocation(line: 785, column: 25, scope: !276)
!1076 = !DILocation(line: 786, column: 29, scope: !276)
!1077 = !DILocation(line: 787, column: 29, scope: !276)
!1078 = !{!1079, !1079, i64 0}
!1079 = !{!"long", !854, i64 0}
!1080 = !DILocation(line: 788, column: 11, scope: !276)
!1081 = !DILocation(line: 791, column: 29, scope: !276)
!1082 = !DILocation(line: 792, column: 11, scope: !276)
!1083 = !DILocation(line: 795, column: 29, scope: !276)
!1084 = !DILocation(line: 796, column: 29, scope: !276)
!1085 = !DILocation(line: 797, column: 11, scope: !276)
!1086 = !DILocation(line: 800, column: 29, scope: !276)
!1087 = !DILocation(line: 801, column: 29, scope: !276)
!1088 = !DILocation(line: 802, column: 11, scope: !276)
!1089 = !DILocation(line: 805, column: 29, scope: !276)
!1090 = !DILocation(line: 806, column: 29, scope: !276)
!1091 = !DILocation(line: 807, column: 11, scope: !276)
!1092 = !DILocation(line: 811, column: 13, scope: !275)
!1093 = !DILocation(line: 811, column: 23, scope: !275)
!1094 = !DILocation(line: 812, column: 29, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !275, file: !2, line: 812, column: 17)
!1096 = !DILocation(line: 812, column: 17, scope: !1095)
!1097 = !DILocation(line: 812, column: 56, scope: !1095)
!1098 = !DILocation(line: 813, column: 17, scope: !1095)
!1099 = !DILocation(line: 813, column: 20, scope: !1095)
!1100 = !DILocation(line: 813, column: 24, scope: !1095)
!1101 = !DILocation(line: 812, column: 17, scope: !275)
!1102 = !DILocation(line: 816, column: 29, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 814, column: 15)
!1104 = !DILocation(line: 816, column: 27, scope: !1103)
!1105 = !DILocation(line: 817, column: 15, scope: !1103)
!1106 = !DILocation(line: 821, column: 31, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 819, column: 15)
!1108 = !DILocation(line: 821, column: 24, scope: !1107)
!1109 = !DILocation(line: 820, column: 17, scope: !1107)
!1110 = !DILocation(line: 824, column: 11, scope: !276)
!1111 = !DILocation(line: 825, column: 11, scope: !276)
!1112 = !DILocation(line: 828, column: 29, scope: !276)
!1113 = !DILocation(line: 829, column: 29, scope: !276)
!1114 = !DILocation(line: 830, column: 11, scope: !276)
!1115 = !DILocation(line: 833, column: 25, scope: !276)
!1116 = !DILocation(line: 834, column: 11, scope: !276)
!1117 = !DILocation(line: 838, column: 11, scope: !276)
!1118 = !DILocation(line: 843, column: 29, scope: !278)
!1119 = !DILocation(line: 843, column: 17, scope: !278)
!1120 = !DILocation(line: 0, scope: !278)
!1121 = !DILocation(line: 844, column: 19, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !278, file: !2, line: 844, column: 17)
!1123 = !DILocation(line: 844, column: 17, scope: !278)
!1124 = !DILocation(line: 845, column: 33, scope: !1122)
!1125 = !DILocation(line: 845, column: 37, scope: !1122)
!1126 = !DILocation(line: 845, column: 54, scope: !1122)
!1127 = !DILocation(line: 845, column: 15, scope: !1122)
!1128 = !DILocation(line: 846, column: 17, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !278, file: !2, line: 846, column: 17)
!1130 = !DILocation(line: 846, column: 31, scope: !1129)
!1131 = !DILocation(line: 846, column: 36, scope: !1129)
!1132 = !DILocation(line: 846, column: 40, scope: !1129)
!1133 = !DILocation(line: 846, column: 39, scope: !1129)
!1134 = !{!854, !854, i64 0}
!1135 = !DILocation(line: 846, column: 47, scope: !1129)
!1136 = !DILocation(line: 846, column: 17, scope: !278)
!1137 = !DILocation(line: 849, column: 17, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 847, column: 15)
!1139 = !DILocation(line: 852, column: 11, scope: !276)
!1140 = !DILocation(line: 855, column: 21, scope: !276)
!1141 = !DILocation(line: 856, column: 11, scope: !276)
!1142 = !DILocation(line: 860, column: 50, scope: !280)
!1143 = !DILocation(line: 860, column: 35, scope: !280)
!1144 = !DILocation(line: 0, scope: !280)
!1145 = !DILocation(line: 862, column: 19, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !280, file: !2, line: 862, column: 17)
!1147 = !DILocation(line: 862, column: 17, scope: !280)
!1148 = !DILocation(line: 863, column: 33, scope: !1146)
!1149 = !DILocation(line: 863, column: 37, scope: !1146)
!1150 = !DILocation(line: 863, column: 54, scope: !1146)
!1151 = !DILocation(line: 863, column: 15, scope: !1146)
!1152 = !DILocation(line: 865, column: 11, scope: !276)
!1153 = !DILocation(line: 870, column: 11, scope: !276)
!1154 = !DILocation(line: 874, column: 11, scope: !276)
!1155 = !DILocation(line: 878, column: 11, scope: !276)
!1156 = !DILocation(line: 881, column: 29, scope: !276)
!1157 = !DILocation(line: 882, column: 11, scope: !276)
!1158 = !DILocation(line: 885, column: 46, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !276, file: !2, line: 885, column: 15)
!1160 = !DILocation(line: 885, column: 55, scope: !1159)
!1161 = !DILocation(line: 885, column: 15, scope: !1159)
!1162 = !DILocation(line: 885, column: 15, scope: !276)
!1163 = !DILocation(line: 888, column: 25, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 887, column: 13)
!1165 = !DILocation(line: 888, column: 38, scope: !1164)
!1166 = !DILocation(line: 888, column: 15, scope: !1164)
!1167 = !DILocation(line: 890, column: 13, scope: !1164)
!1168 = !DILocation(line: 891, column: 11, scope: !276)
!1169 = !DILocation(line: 894, column: 24, scope: !276)
!1170 = !DILocation(line: 895, column: 11, scope: !276)
!1171 = !DILocation(line: 898, column: 24, scope: !276)
!1172 = !DILocation(line: 898, column: 33, scope: !276)
!1173 = !DILocation(line: 898, column: 11, scope: !276)
!1174 = !DILocation(line: 899, column: 11, scope: !276)
!1175 = !DILocation(line: 902, column: 22, scope: !276)
!1176 = !DILocation(line: 903, column: 11, scope: !276)
!1177 = !DILocation(line: 906, column: 20, scope: !276)
!1178 = !DILocation(line: 908, column: 14, scope: !276)
!1179 = !DILocation(line: 909, column: 16, scope: !276)
!1180 = !DILocation(line: 907, column: 21, scope: !276)
!1181 = !DILocation(line: 911, column: 30, scope: !276)
!1182 = !DILocation(line: 911, column: 21, scope: !276)
!1183 = !DILocation(line: 911, column: 19, scope: !276)
!1184 = !DILocation(line: 912, column: 11, scope: !276)
!1185 = !DILocation(line: 915, column: 24, scope: !276)
!1186 = !DILocation(line: 915, column: 22, scope: !276)
!1187 = !DILocation(line: 916, column: 11, scope: !276)
!1188 = !DILocation(line: 918, column: 9, scope: !276)
!1189 = !DILocation(line: 920, column: 9, scope: !276)
!1190 = !DILocation(line: 924, column: 9, scope: !276)
!1191 = !DILocation(line: 925, column: 5, scope: !255)
!1192 = distinct !{!1192, !1049, !1191, !995}
!1193 = !DILocation(line: 927, column: 8, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !255, file: !2, line: 927, column: 7)
!1195 = !DILocation(line: 927, column: 7, scope: !255)
!1196 = !DILocation(line: 928, column: 5, scope: !1194)
!1197 = !DILocation(line: 930, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !255, file: !2, line: 930, column: 7)
!1199 = !{i8 0, i8 2}
!1200 = !DILocation(line: 930, column: 15, scope: !1198)
!1201 = !DILocation(line: 930, column: 18, scope: !1198)
!1202 = !DILocation(line: 930, column: 7, scope: !255)
!1203 = !DILocation(line: 932, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 931, column: 5)
!1205 = !DILocation(line: 933, column: 7, scope: !1204)
!1206 = !DILocation(line: 936, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !255, file: !2, line: 936, column: 7)
!1208 = !DILocation(line: 936, column: 26, scope: !1207)
!1209 = !DILocation(line: 936, column: 29, scope: !1207)
!1210 = !DILocation(line: 936, column: 49, scope: !1207)
!1211 = !DILocation(line: 936, column: 52, scope: !1207)
!1212 = !DILocation(line: 936, column: 62, scope: !1207)
!1213 = !DILocation(line: 936, column: 7, scope: !255)
!1214 = !DILocation(line: 938, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 937, column: 5)
!1216 = !DILocation(line: 940, column: 5, scope: !1215)
!1217 = !DILocation(line: 942, column: 7, scope: !283)
!1218 = !DILocation(line: 942, column: 26, scope: !283)
!1219 = !DILocation(line: 942, column: 29, scope: !283)
!1220 = !DILocation(line: 942, column: 49, scope: !283)
!1221 = !DILocation(line: 942, column: 52, scope: !283)
!1222 = !DILocation(line: 942, column: 62, scope: !283)
!1223 = !DILocation(line: 942, column: 7, scope: !255)
!1224 = !DILocation(line: 944, column: 29, scope: !282)
!1225 = !DILocation(line: 0, scope: !282)
!1226 = !DILocation(line: 945, column: 7, scope: !282)
!1227 = !DILocation(line: 946, column: 7, scope: !282)
!1228 = !DILocation(line: 949, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !255, file: !2, line: 949, column: 7)
!1230 = !DILocation(line: 949, column: 7, scope: !255)
!1231 = !DILocation(line: 950, column: 15, scope: !1229)
!1232 = !DILocation(line: 950, column: 5, scope: !1229)
!1233 = !DILocation(line: 952, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !255, file: !2, line: 952, column: 7)
!1235 = !DILocation(line: 952, column: 7, scope: !255)
!1236 = !DILocation(line: 954, column: 11, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 954, column: 11)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 953, column: 5)
!1239 = !DILocation(line: 954, column: 11, scope: !1238)
!1240 = !DILocation(line: 956, column: 11, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 955, column: 9)
!1242 = !DILocation(line: 958, column: 9, scope: !1241)
!1243 = !DILocation(line: 959, column: 25, scope: !1238)
!1244 = !DILocation(line: 960, column: 5, scope: !1238)
!1245 = !DILocation(line: 963, column: 7, scope: !291)
!1246 = !DILocation(line: 963, column: 7, scope: !255)
!1247 = !DILocation(line: 965, column: 13, scope: !289)
!1248 = !DILocation(line: 965, column: 11, scope: !290)
!1249 = !DILocation(line: 967, column: 24, scope: !288)
!1250 = !DILocation(line: 967, column: 22, scope: !288)
!1251 = !DILocation(line: 970, column: 17, scope: !287)
!1252 = !DILocation(line: 970, column: 28, scope: !287)
!1253 = !DILocation(line: 970, column: 31, scope: !287)
!1254 = !DILocation(line: 970, column: 15, scope: !288)
!1255 = !DILocation(line: 971, column: 24, scope: !287)
!1256 = !DILocation(line: 971, column: 13, scope: !287)
!1257 = !DILocation(line: 972, column: 21, scope: !286)
!1258 = !DILocation(line: 972, column: 20, scope: !286)
!1259 = !DILocation(line: 972, column: 32, scope: !286)
!1260 = !DILocation(line: 972, column: 20, scope: !287)
!1261 = !DILocation(line: 976, column: 33, scope: !285)
!1262 = !DILocation(line: 976, column: 25, scope: !285)
!1263 = !DILocation(line: 0, scope: !285)
!1264 = !DILocation(line: 977, column: 19, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !285, file: !2, line: 977, column: 19)
!1266 = !DILocation(line: 977, column: 19, scope: !285)
!1267 = !DILocation(line: 978, column: 20, scope: !1265)
!1268 = !DILocation(line: 978, column: 17, scope: !1265)
!1269 = !DILocation(line: 979, column: 13, scope: !285)
!1270 = !DILocation(line: 985, column: 15, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !286, file: !2, line: 981, column: 13)
!1272 = !DILocation(line: 985, column: 22, scope: !1271)
!1273 = !DILocation(line: 986, column: 28, scope: !1271)
!1274 = distinct !{!1274, !1270, !1275, !994, !995}
!1275 = !DILocation(line: 986, column: 31, scope: !1271)
!1276 = !DILocation(line: 988, column: 9, scope: !288)
!1277 = !DILocation(line: 990, column: 12, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !290, file: !2, line: 990, column: 11)
!1279 = !DILocation(line: 990, column: 11, scope: !1278)
!1280 = !DILocation(line: 990, column: 23, scope: !1278)
!1281 = !DILocation(line: 990, column: 11, scope: !290)
!1282 = !DILocation(line: 991, column: 23, scope: !1278)
!1283 = !DILocation(line: 991, column: 34, scope: !1278)
!1284 = !DILocation(line: 991, column: 21, scope: !1278)
!1285 = !DILocation(line: 991, column: 9, scope: !1278)
!1286 = !DILocation(line: 994, column: 19, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 993, column: 9)
!1288 = !DILocation(line: 994, column: 11, scope: !1287)
!1289 = !DILocation(line: 998, column: 27, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 996, column: 13)
!1291 = !DILocation(line: 999, column: 15, scope: !1290)
!1292 = !DILocation(line: 1002, column: 27, scope: !1290)
!1293 = !DILocation(line: 1003, column: 15, scope: !1290)
!1294 = !DILocation(line: 1006, column: 27, scope: !1290)
!1295 = !DILocation(line: 1007, column: 15, scope: !1290)
!1296 = !DILocation(line: 1010, column: 5, scope: !290)
!1297 = !DILocation(line: 1013, column: 7, scope: !297)
!1298 = !DILocation(line: 1013, column: 7, scope: !255)
!1299 = !DILocation(line: 1017, column: 11, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 1017, column: 11)
!1301 = distinct !DILexicalBlock(scope: !297, file: !2, line: 1014, column: 5)
!1302 = !DILocation(line: 1017, column: 18, scope: !1300)
!1303 = !DILocation(line: 1017, column: 11, scope: !1301)
!1304 = !DILocation(line: 1019, column: 59, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 1018, column: 9)
!1306 = !DILocation(line: 1019, column: 54, scope: !1305)
!1307 = !DILocation(line: 1019, column: 47, scope: !1305)
!1308 = !DILocation(line: 1019, column: 11, scope: !1305)
!1309 = !DILocation(line: 1020, column: 20, scope: !1305)
!1310 = !DILocation(line: 1020, column: 11, scope: !1305)
!1311 = !DILocation(line: 1022, column: 11, scope: !1305)
!1312 = !DILocation(line: 1025, column: 14, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 1025, column: 11)
!1314 = !DILocation(line: 1025, column: 38, scope: !1313)
!1315 = !DILocation(line: 1025, column: 67, scope: !1313)
!1316 = !DILocation(line: 1025, column: 41, scope: !1313)
!1317 = !DILocation(line: 1025, column: 11, scope: !1301)
!1318 = !DILocation(line: 1026, column: 9, scope: !1313)
!1319 = !DILocation(line: 1029, column: 35, scope: !1301)
!1320 = !DILocation(line: 1029, column: 12, scope: !1301)
!1321 = !DILocation(line: 1033, column: 16, scope: !1301)
!1322 = !DILocation(line: 1034, column: 5, scope: !1301)
!1323 = !DILocation(line: 1037, column: 23, scope: !296)
!1324 = !DILocation(line: 1037, column: 30, scope: !296)
!1325 = !DILocation(line: 1037, column: 46, scope: !296)
!1326 = !DILocation(line: 1037, column: 44, scope: !296)
!1327 = !DILocation(line: 1037, column: 55, scope: !296)
!1328 = !DILocation(line: 0, scope: !296)
!1329 = !DILocation(line: 1038, column: 12, scope: !296)
!1330 = !DILocation(line: 1043, column: 19, scope: !296)
!1331 = !DILocation(line: 1043, column: 26, scope: !296)
!1332 = !DILocation(line: 1043, column: 30, scope: !296)
!1333 = !DILocation(line: 1043, column: 37, scope: !296)
!1334 = !DILocation(line: 1043, column: 59, scope: !296)
!1335 = !DILocation(line: 1043, column: 16, scope: !296)
!1336 = !DILocation(line: 0, scope: !297)
!1337 = !DILocation(line: 1046, column: 8, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !255, file: !2, line: 1046, column: 7)
!1339 = !DILocation(line: 1046, column: 7, scope: !255)
!1340 = !DILocation(line: 1047, column: 5, scope: !1338)
!1341 = !DILocation(line: 1050, column: 14, scope: !255)
!1342 = !DILocation(line: 1050, column: 12, scope: !255)
!1343 = !DILocation(line: 1051, column: 8, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !255, file: !2, line: 1051, column: 7)
!1345 = !DILocation(line: 1051, column: 7, scope: !255)
!1346 = !DILocation(line: 1052, column: 5, scope: !1344)
!1347 = !DILocation(line: 1056, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !255, file: !2, line: 1056, column: 7)
!1349 = !DILocation(line: 1056, column: 21, scope: !1348)
!1350 = !DILocation(line: 1056, column: 26, scope: !1348)
!1351 = !DILocation(line: 1056, column: 7, scope: !255)
!1352 = !DILocation(line: 1057, column: 15, scope: !1348)
!1353 = !DILocation(line: 1057, column: 5, scope: !1348)
!1354 = !DILocation(line: 1059, column: 13, scope: !255)
!1355 = !DILocation(line: 1062, column: 3, scope: !255)
!1356 = !DILocation(line: 0, scope: !299)
!1357 = !DILocation(line: 1065, column: 7, scope: !299)
!1358 = !DILocation(line: 1065, column: 26, scope: !299)
!1359 = !DILocation(line: 1066, column: 25, scope: !299)
!1360 = !DILocation(line: 1067, column: 12, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !299, file: !2, line: 1067, column: 11)
!1362 = !DILocation(line: 1067, column: 11, scope: !299)
!1363 = !DILocation(line: 1069, column: 19, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 1068, column: 9)
!1365 = !DILocation(line: 1069, column: 11, scope: !1364)
!1366 = !DILocation(line: 1072, column: 15, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 1070, column: 13)
!1368 = !DILocation(line: 1074, column: 25, scope: !1367)
!1369 = !DILocation(line: 1075, column: 22, scope: !1367)
!1370 = !DILocation(line: 1074, column: 15, scope: !1367)
!1371 = !DILocation(line: 1077, column: 15, scope: !1367)
!1372 = !DILocation(line: 1079, column: 15, scope: !1367)
!1373 = !DILocation(line: 1081, column: 15, scope: !1367)
!1374 = !DILocation(line: 1084, column: 11, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !299, file: !2, line: 1084, column: 11)
!1376 = !DILocation(line: 1084, column: 22, scope: !1375)
!1377 = !DILocation(line: 1084, column: 25, scope: !1375)
!1378 = !DILocation(line: 1084, column: 49, scope: !1375)
!1379 = !DILocation(line: 1084, column: 52, scope: !1375)
!1380 = !DILocation(line: 1084, column: 11, scope: !299)
!1381 = !DILocation(line: 1090, column: 18, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 1085, column: 9)
!1383 = !DILocation(line: 1088, column: 11, scope: !1382)
!1384 = !DILocation(line: 1092, column: 9, scope: !1382)
!1385 = !DILocation(line: 1098, column: 12, scope: !306)
!1386 = !DILocation(line: 1098, column: 11, scope: !299)
!1387 = !DILocation(line: 1104, column: 26, scope: !304)
!1388 = !DILocation(line: 1104, column: 15, scope: !305)
!1389 = !DILocation(line: 1105, column: 13, scope: !304)
!1390 = !DILocation(line: 1111, column: 47, scope: !303)
!1391 = !DILocation(line: 0, scope: !303)
!1392 = !DILocation(line: 1112, column: 42, scope: !303)
!1393 = !DILocation(line: 1112, column: 15, scope: !303)
!1394 = !DILocation(line: 1116, column: 9, scope: !305)
!1395 = !DILocation(line: 1118, column: 11, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !299, file: !2, line: 1118, column: 11)
!1397 = !DILocation(line: 1118, column: 11, scope: !299)
!1398 = !DILocation(line: 1119, column: 9, scope: !1396)
!1399 = !DILocation(line: 1122, column: 24, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 1121, column: 9)
!1401 = !DILocation(line: 1123, column: 17, scope: !1400)
!1402 = !DILocation(line: 1123, column: 14, scope: !1400)
!1403 = !DILocation(line: 0, scope: !1396)
!1404 = !DILocation(line: 1125, column: 5, scope: !255)
!1405 = distinct !{!1405, !1355, !1404, !995}
!1406 = !DILocation(line: 1126, column: 2, scope: !255)
!1407 = !DILocation(line: 1128, column: 3, scope: !255)
!1408 = !DILocation(line: 1129, column: 16, scope: !255)
!1409 = !DILocation(line: 1129, column: 3, scope: !255)
!1410 = !DILocation(line: 1130, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !255, file: !2, line: 1130, column: 7)
!1412 = !DILocation(line: 1130, column: 7, scope: !255)
!1413 = !DILocation(line: 1131, column: 18, scope: !1411)
!1414 = !DILocation(line: 1131, column: 5, scope: !1411)
!1415 = !DILocation(line: 1133, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !255, file: !2, line: 1133, column: 7)
!1417 = !DILocation(line: 1133, column: 18, scope: !1416)
!1418 = !DILocation(line: 1133, column: 22, scope: !1416)
!1419 = !{!1420, !1421, i64 16}
!1420 = !{!"__sFILE", !853, i64 0, !1059, i64 8, !1059, i64 12, !1421, i64 16, !1421, i64 18, !1422, i64 24, !1059, i64 40, !853, i64 48, !853, i64 56, !853, i64 64, !853, i64 72, !853, i64 80, !1422, i64 88, !853, i64 104, !1059, i64 112, !854, i64 116, !854, i64 119, !1422, i64 120, !1059, i64 136, !1423, i64 144}
!1421 = !{!"short", !854, i64 0}
!1422 = !{!"__sbuf", !853, i64 0, !1059, i64 8}
!1423 = !{!"long long", !854, i64 0}
!1424 = !DILocation(line: 1133, column: 37, scope: !1416)
!1425 = !DILocation(line: 1133, column: 48, scope: !1416)
!1426 = !DILocation(line: 1133, column: 40, scope: !1416)
!1427 = !DILocation(line: 1133, column: 55, scope: !1416)
!1428 = !DILocation(line: 1133, column: 61, scope: !1416)
!1429 = !DILocation(line: 1133, column: 64, scope: !1416)
!1430 = !DILocation(line: 1133, column: 7, scope: !255)
!1431 = !DILocation(line: 1134, column: 5, scope: !1416)
!1432 = !DILocation(line: 1136, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !255, file: !2, line: 1136, column: 7)
!1434 = !DILocation(line: 1136, column: 7, scope: !255)
!1435 = !DILocation(line: 1137, column: 5, scope: !1433)
!1436 = !DILocation(line: 1139, column: 10, scope: !255)
!1437 = !DILocation(line: 1139, column: 3, scope: !255)
!1438 = !DILocation(line: 1140, column: 1, scope: !255)
!1439 = distinct !DISubprogram(name: "bad_cast", scope: !135, file: !135, line: 725, type: !1440, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1442)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!157, !153}
!1442 = !{!1443}
!1443 = !DILocalVariable(name: "s", arg: 1, scope: !1439, file: !135, line: 725, type: !153)
!1444 = !DILocation(line: 0, scope: !1439)
!1445 = !DILocation(line: 727, column: 3, scope: !1439)
!1446 = !DISubprogram(name: "set_program_name", scope: !1447, file: !1447, line: 37, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1447 = !DIFile(filename: "../lib/progname.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1448 = !DISubprogram(name: "atexit", scope: !1021, file: !1021, line: 133, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!136, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!1452 = !DISubprogram(name: "new_exclude", scope: !832, file: !832, line: 52, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!830}
!1455 = !DISubprogram(name: "getenv", scope: !1021, file: !1021, line: 147, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1456 = !DISubprogram(name: "human_options", scope: !103, file: !103, line: 80, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!83, !153, !536, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1460 = !DISubprogram(name: "rpl_getopt_long", scope: !531, file: !531, line: 66, type: !1461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!136, !136, !258, !153, !1463, !536}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!1464 = !DISubprogram(name: "xstrtoumax", scope: !84, file: !84, line: 49, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!1467, !153, !258, !136, !1459, !153}
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !84, line: 39, baseType: !83)
!1468 = !DISubprogram(name: "quote", scope: !1469, file: !1469, line: 44, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1469 = !DIFile(filename: "../lib/quote.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!153, !153}
!1472 = !DISubprogram(name: "error", scope: !1473, file: !1473, line: 395, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1473 = !DIFile(filename: "./lib/error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !136, !136, !153, null}
!1476 = !DISubprogram(name: "xstrtoimax", scope: !84, file: !84, line: 48, type: !1477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!1467, !153, !258, !136, !1479, !153}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!1480 = !DISubprogram(name: "xstrtol_fatal", scope: !1481, file: !1481, line: 41, type: !1482, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1481 = !DIFile(filename: "../lib/xstrtol-error.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null, !83, !136, !4, !1463, !153}
!1484 = !DISubprogram(name: "add_exclude", scope: !832, file: !832, line: 55, type: !1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !830, !153, !136}
!1487 = !DISubprogram(name: "add_exclude_file", scope: !832, file: !832, line: 56, type: !1488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!136, !1490, !830, !153, !136, !4}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1491 = !DISubprogram(name: "__error", scope: !1492, file: !1492, line: 80, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1492 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/errno.h", directory: "")
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!536}
!1495 = !DISubprogram(name: "quotearg_n_style_colon", scope: !116, file: !116, line: 403, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!157, !136, !115, !153}
!1498 = !DISubprogram(name: "__xargmatch_internal", scope: !1499, file: !1499, line: 94, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1499 = !DIFile(filename: "../lib/argmatch.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!656, !153, !153, !1502, !155, !312, !1503, !265}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !1499, line: 66, baseType: !1451)
!1504 = !DISubprogram(name: "tzalloc", scope: !397, file: !397, line: 906, type: !1505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!396, !153}
!1507 = !DISubprogram(name: "version_etc", scope: !1508, file: !1508, line: 65, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1508 = !DIFile(filename: "../lib/version-etc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !890, !153, !153, !153, null}
!1511 = !DISubprogram(name: "strchr", scope: !1023, file: !1023, line: 76, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!157, !153, !136}
!1514 = !DISubprogram(name: "freopen_safer", scope: !1515, file: !1515, line: 28, type: !1516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1515 = !DIFile(filename: "../lib/stdio-safer.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!890, !153, !153, !890}
!1518 = !DISubprogram(name: "quotearg_style", scope: !116, file: !116, line: 383, type: !1519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!157, !115, !153}
!1521 = !DISubprogram(name: "argv_iter_init_stream", scope: !146, file: !146, line: 37, type: !1522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!293, !890}
!1524 = !DISubprogram(name: "argv_iter_init_argv", scope: !146, file: !146, line: 35, type: !1525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!293, !258}
!1527 = !DISubprogram(name: "xalloc_die", scope: !1528, file: !1528, line: 49, type: !948, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1528 = !DIFile(filename: "../lib/xalloc.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1529 = !DISubprogram(name: "di_set_alloc", scope: !387, file: !387, line: 28, type: !1530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!385}
!1532 = !DISubprogram(name: "argv_iter", scope: !146, file: !146, line: 39, type: !1533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!157, !293, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!1536 = !DISubprogram(name: "__assert_rtn", scope: !1537, file: !1537, line: 82, type: !1538, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1537 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/assert.h", directory: "")
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !153, !153, !136, !153}
!1540 = !DISubprogram(name: "argv_iter_n_args", scope: !146, file: !146, line: 41, type: !1541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!312, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!1545 = distinct !DISubprogram(name: "du_files", scope: !2, file: !2, line: 679, type: !1546, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!265, !258, !136}
!1548 = !{!1549, !1550, !1551, !1552, !1555}
!1549 = !DILocalVariable(name: "files", arg: 1, scope: !1545, file: !2, line: 679, type: !258)
!1550 = !DILocalVariable(name: "bit_flags", arg: 2, scope: !1545, file: !2, line: 679, type: !136)
!1551 = !DILocalVariable(name: "ok", scope: !1545, file: !2, line: 681, type: !265)
!1552 = !DILocalVariable(name: "fts", scope: !1553, file: !2, line: 685, type: !611)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 684, column: 5)
!1554 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 683, column: 7)
!1555 = !DILocalVariable(name: "ent", scope: !1556, file: !2, line: 689, type: !761)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 688, column: 9)
!1557 = !DILocation(line: 0, scope: !1545)
!1558 = !DILocation(line: 683, column: 7, scope: !1554)
!1559 = !DILocation(line: 683, column: 7, scope: !1545)
!1560 = !DILocation(line: 685, column: 18, scope: !1553)
!1561 = !DILocation(line: 0, scope: !1553)
!1562 = !DILocation(line: 687, column: 7, scope: !1553)
!1563 = !DILocation(line: 691, column: 17, scope: !1556)
!1564 = !DILocation(line: 0, scope: !1556)
!1565 = !DILocation(line: 692, column: 19, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 692, column: 15)
!1567 = !DILocation(line: 692, column: 15, scope: !1556)
!1568 = !DILocation(line: 694, column: 19, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 694, column: 19)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 693, column: 13)
!1571 = !DILocation(line: 694, column: 25, scope: !1569)
!1572 = !DILocation(line: 694, column: 19, scope: !1570)
!1573 = !DILocation(line: 696, column: 29, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !2, line: 695, column: 17)
!1575 = !DILocation(line: 697, column: 26, scope: !1574)
!1576 = !{!1577, !853, i64 32}
!1577 = !{!"", !853, i64 0, !853, i64 8, !853, i64 16, !1059, i64 24, !853, i64 32, !1059, i64 40, !1059, i64 44, !1079, i64 48, !1079, i64 56, !853, i64 64, !1059, i64 72, !853, i64 80, !854, i64 88, !1578, i64 96}
!1578 = !{!"I_ring", !854, i64 0, !1059, i64 16, !1059, i64 20, !1059, i64 24, !1069, i64 28}
!1579 = !DILocation(line: 696, column: 19, scope: !1574)
!1580 = !DILocation(line: 699, column: 17, scope: !1574)
!1581 = !DILocation(line: 704, column: 26, scope: !1570)
!1582 = !DILocation(line: 705, column: 15, scope: !1570)
!1583 = !DILocation(line: 709, column: 17, scope: !1556)
!1584 = !DILocation(line: 709, column: 14, scope: !1556)
!1585 = !DILocation(line: 710, column: 9, scope: !1553)
!1586 = distinct !{!1586, !1562, !1585, !995}
!1587 = !DILocation(line: 712, column: 11, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 712, column: 11)
!1589 = !DILocation(line: 712, column: 27, scope: !1588)
!1590 = !DILocation(line: 712, column: 11, scope: !1553)
!1591 = !DILocation(line: 714, column: 21, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 713, column: 9)
!1593 = !DILocation(line: 714, column: 11, scope: !1592)
!1594 = !DILocation(line: 716, column: 9, scope: !1592)
!1595 = !DILocation(line: 717, column: 5, scope: !1553)
!1596 = !DILocation(line: 719, column: 10, scope: !1545)
!1597 = !DILocation(line: 719, column: 3, scope: !1545)
!1598 = !DISubprogram(name: "argv_iter_free", scope: !146, file: !146, line: 32, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !293}
!1601 = !DISubprogram(name: "di_set_free", scope: !387, file: !387, line: 26, type: !1602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !385}
!1604 = !DISubprogram(name: "rpl_fclose", scope: !1605, file: !1605, line: 778, type: !1606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1605 = !DIFile(filename: "./lib/stdio.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!136, !890}
!1608 = distinct !DISubprogram(name: "print_size", scope: !2, file: !2, line: 410, type: !1609, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1613)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !1611, !153}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!1613 = !{!1614, !1615}
!1614 = !DILocalVariable(name: "pdui", arg: 1, scope: !1608, file: !2, line: 410, type: !1611)
!1615 = !DILocalVariable(name: "string", arg: 2, scope: !1608, file: !2, line: 410, type: !153)
!1616 = !DILocation(line: 0, scope: !1608)
!1617 = !DILocation(line: 412, column: 20, scope: !1608)
!1618 = !DILocation(line: 413, column: 28, scope: !1608)
!1619 = !{!1620, !1079, i64 8}
!1620 = !{!"duinfo", !1079, i64 0, !1079, i64 8, !1621, i64 16}
!1621 = !{!"timespec", !1079, i64 0, !1079, i64 8}
!1622 = !DILocation(line: 414, column: 28, scope: !1608)
!1623 = !{!1620, !1079, i64 0}
!1624 = !DILocation(line: 412, column: 3, scope: !1608)
!1625 = !DILocation(line: 416, column: 7, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 416, column: 7)
!1627 = !DILocation(line: 416, column: 7, scope: !1608)
!1628 = !DILocation(line: 418, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 417, column: 5)
!1630 = !DILocation(line: 419, column: 18, scope: !1629)
!1631 = !DILocation(line: 419, column: 37, scope: !1629)
!1632 = !DILocation(line: 419, column: 43, scope: !1629)
!1633 = !DILocation(line: 419, column: 7, scope: !1629)
!1634 = !DILocation(line: 420, column: 5, scope: !1629)
!1635 = !DILocation(line: 421, column: 29, scope: !1608)
!1636 = !DILocation(line: 421, column: 3, scope: !1608)
!1637 = !DILocation(line: 422, column: 11, scope: !1608)
!1638 = !DILocation(line: 422, column: 3, scope: !1608)
!1639 = !DILocation(line: 423, column: 1, scope: !1608)
!1640 = distinct !DISubprogram(name: "print_only_size", scope: !2, file: !2, line: 397, type: !1641, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !159}
!1643 = !{!1644, !1645}
!1644 = !DILocalVariable(name: "n_bytes", arg: 1, scope: !1640, file: !2, line: 397, type: !159)
!1645 = !DILocalVariable(name: "buf", scope: !1640, file: !2, line: 399, type: !1646)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2176, elements: !1647)
!1647 = !{!1648}
!1648 = !DISubrange(count: 272)
!1649 = !DILocation(line: 0, scope: !1640)
!1650 = !DILocation(line: 399, column: 3, scope: !1640)
!1651 = !DILocation(line: 399, column: 8, scope: !1640)
!1652 = !DILocation(line: 400, column: 19, scope: !1640)
!1653 = !DILocation(line: 400, column: 11, scope: !1640)
!1654 = !DILocation(line: 402, column: 38, scope: !1640)
!1655 = !DILocation(line: 402, column: 43, scope: !1640)
!1656 = !DILocation(line: 403, column: 32, scope: !1640)
!1657 = !DILocation(line: 402, column: 13, scope: !1640)
!1658 = !DILocation(line: 404, column: 10, scope: !1640)
!1659 = !DILocation(line: 400, column: 3, scope: !1640)
!1660 = !DILocation(line: 405, column: 1, scope: !1640)
!1661 = !DISubprogram(name: "putc_unlocked", scope: !886, file: !886, line: 301, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!136, !136, !890}
!1664 = distinct !DISubprogram(name: "show_date", scope: !2, file: !2, line: 380, type: !1665, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{null, !153, !409, !396}
!1667 = !{!1668, !1669, !1670, !1671, !1686, !1692}
!1668 = !DILocalVariable(name: "format", arg: 1, scope: !1664, file: !2, line: 380, type: !153)
!1669 = !DILocalVariable(name: "when", arg: 2, scope: !1664, file: !2, line: 380, type: !409)
!1670 = !DILocalVariable(name: "tz", arg: 3, scope: !1664, file: !2, line: 380, type: !396)
!1671 = !DILocalVariable(name: "tm", scope: !1664, file: !2, line: 382, type: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1673, line: 75, size: 448, elements: !1674)
!1673 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/time.h", directory: "")
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1672, file: !1673, line: 76, baseType: !136, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1672, file: !1673, line: 77, baseType: !136, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1672, file: !1673, line: 78, baseType: !136, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1672, file: !1673, line: 79, baseType: !136, size: 32, offset: 96)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1672, file: !1673, line: 80, baseType: !136, size: 32, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1672, file: !1673, line: 81, baseType: !136, size: 32, offset: 160)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1672, file: !1673, line: 82, baseType: !136, size: 32, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1672, file: !1673, line: 83, baseType: !136, size: 32, offset: 224)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1672, file: !1673, line: 84, baseType: !136, size: 32, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1672, file: !1673, line: 85, baseType: !166, size: 64, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1672, file: !1673, line: 86, baseType: !157, size: 64, offset: 384)
!1686 = !DILocalVariable(name: "buf", scope: !1687, file: !2, line: 387, type: !1689)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 386, column: 5)
!1688 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 383, column: 7)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !1690)
!1690 = !{!1691}
!1691 = !DISubrange(count: 21)
!1692 = !DILocalVariable(name: "when_str", scope: !1687, file: !2, line: 388, type: !157)
!1693 = !DILocation(line: 0, scope: !1664)
!1694 = !DILocation(line: 380, column: 48, scope: !1664)
!1695 = !DILocation(line: 382, column: 3, scope: !1664)
!1696 = !DILocation(line: 382, column: 13, scope: !1664)
!1697 = !DILocation(line: 383, column: 31, scope: !1688)
!1698 = !DILocation(line: 383, column: 7, scope: !1688)
!1699 = !DILocation(line: 383, column: 7, scope: !1664)
!1700 = !DILocation(line: 384, column: 18, scope: !1688)
!1701 = !DILocation(line: 384, column: 48, scope: !1688)
!1702 = !{!1621, !1079, i64 8}
!1703 = !DILocation(line: 384, column: 43, scope: !1688)
!1704 = !DILocation(line: 384, column: 5, scope: !1688)
!1705 = !DILocation(line: 387, column: 7, scope: !1687)
!1706 = !DILocation(line: 387, column: 12, scope: !1687)
!1707 = !DILocation(line: 388, column: 40, scope: !1687)
!1708 = !{!1621, !1079, i64 0}
!1709 = !DILocation(line: 388, column: 48, scope: !1687)
!1710 = !DILocation(line: 388, column: 24, scope: !1687)
!1711 = !DILocation(line: 0, scope: !1687)
!1712 = !DILocation(line: 389, column: 50, scope: !1687)
!1713 = !DILocation(line: 389, column: 7, scope: !1687)
!1714 = !DILocation(line: 390, column: 24, scope: !1687)
!1715 = !DILocation(line: 390, column: 7, scope: !1687)
!1716 = !DILocation(line: 391, column: 5, scope: !1688)
!1717 = !DILocation(line: 392, column: 1, scope: !1664)
!1718 = !DISubprogram(name: "rpl_fflush", scope: !1605, file: !1605, line: 884, type: !1606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1719 = !DISubprogram(name: "localtime_rz", scope: !397, file: !397, line: 920, type: !1720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!1722, !396, !1723, !1726}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1724)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!1726 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1722)
!1727 = !DISubprogram(name: "fprintftime", scope: !1728, file: !1728, line: 28, type: !1729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1728 = !DIFile(filename: "../lib/fprintftime.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!312, !890, !153, !1731, !396, !136}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1733 = distinct !DISubprogram(name: "timetostr", scope: !135, file: !135, line: 717, type: !1734, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!157, !162, !157}
!1736 = !{!1737, !1738}
!1737 = !DILocalVariable(name: "t", arg: 1, scope: !1733, file: !135, line: 717, type: !162)
!1738 = !DILocalVariable(name: "buf", arg: 2, scope: !1733, file: !135, line: 717, type: !157)
!1739 = !DILocation(line: 0, scope: !1733)
!1740 = !DILocation(line: 720, column: 13, scope: !1733)
!1741 = !DILocation(line: 719, column: 3, scope: !1733)
!1742 = !DISubprogram(name: "imaxtostr", scope: !1743, file: !1743, line: 25, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1743 = !DIFile(filename: "../lib/inttostr.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!157, !554, !157}
!1746 = !DISubprogram(name: "human_readable", scope: !103, file: !103, line: 78, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!157, !159, !157, !136, !159, !159}
!1749 = !DISubprogram(name: "xfts_open", scope: !1750, file: !1750, line: 4, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1750 = !DIFile(filename: "../lib/xfts.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!611, !1753, !136, !1755}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!136, !1758, !1758}
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!1759 = !DISubprogram(name: "rpl_fts_read", scope: !613, file: !613, line: 266, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!761, !611}
!1762 = !DILocation(line: 0, scope: !608)
!1763 = !DILocation(line: 492, column: 3, scope: !608)
!1764 = !DILocation(line: 492, column: 17, scope: !608)
!1765 = !DILocation(line: 493, column: 3, scope: !608)
!1766 = !DILocation(line: 493, column: 17, scope: !608)
!1767 = !DILocation(line: 506, column: 27, scope: !608)
!1768 = !DILocation(line: 507, column: 32, scope: !608)
!1769 = !DILocation(line: 507, column: 27, scope: !608)
!1770 = !DILocation(line: 508, column: 19, scope: !608)
!1771 = !{!1421, !1421, i64 0}
!1772 = !DILocation(line: 508, column: 14, scope: !608)
!1773 = !DILocation(line: 510, column: 12, scope: !778)
!1774 = !DILocation(line: 510, column: 7, scope: !608)
!1775 = !DILocation(line: 513, column: 22, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !778, file: !2, line: 511, column: 5)
!1777 = !DILocation(line: 513, column: 64, scope: !1776)
!1778 = !DILocation(line: 513, column: 7, scope: !1776)
!1779 = !DILocation(line: 515, column: 5, scope: !1776)
!1780 = !DILocation(line: 516, column: 17, scope: !777)
!1781 = !DILocation(line: 516, column: 12, scope: !778)
!1782 = !DILocation(line: 518, column: 43, scope: !776)
!1783 = !DILocation(line: 518, column: 23, scope: !776)
!1784 = !DILocation(line: 518, column: 12, scope: !776)
!1785 = !DILocation(line: 0, scope: !776)
!1786 = !DILocation(line: 519, column: 13, scope: !783)
!1787 = !DILocation(line: 519, column: 11, scope: !776)
!1788 = !DILocation(line: 523, column: 20, scope: !781)
!1789 = !DILocation(line: 523, column: 15, scope: !782)
!1790 = !DILocation(line: 525, column: 15, scope: !780)
!1791 = !DILocation(line: 526, column: 33, scope: !780)
!1792 = !DILocation(line: 0, scope: !780)
!1793 = !DILocation(line: 527, column: 15, scope: !780)
!1794 = !DILocation(line: 528, column: 27, scope: !780)
!1795 = !DILocation(line: 528, column: 22, scope: !780)
!1796 = !DILocation(line: 529, column: 13, scope: !780)
!1797 = !DILocation(line: 531, column: 20, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !782, file: !2, line: 531, column: 15)
!1799 = !DILocation(line: 531, column: 30, scope: !1798)
!1800 = !DILocation(line: 531, column: 38, scope: !1798)
!1801 = !DILocation(line: 531, column: 15, scope: !782)
!1802 = !DILocation(line: 533, column: 30, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !2, line: 532, column: 13)
!1804 = !DILocation(line: 533, column: 64, scope: !1803)
!1805 = !DILocation(line: 533, column: 15, scope: !1803)
!1806 = !DILocation(line: 534, column: 15, scope: !1803)
!1807 = !DILocation(line: 542, column: 20, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !782, file: !2, line: 542, column: 15)
!1809 = !{!1577, !1059, i64 72}
!1810 = !DILocation(line: 542, column: 32, scope: !1808)
!1811 = !DILocation(line: 543, column: 15, scope: !1808)
!1812 = !DILocation(line: 543, column: 39, scope: !1808)
!1813 = !DILocation(line: 543, column: 32, scope: !1808)
!1814 = !DILocation(line: 544, column: 15, scope: !1808)
!1815 = !DILocation(line: 544, column: 23, scope: !1808)
!1816 = !{!1577, !1059, i64 24}
!1817 = !DILocation(line: 544, column: 38, scope: !1808)
!1818 = !{!1819, !1059, i64 0}
!1819 = !{!"stat", !1059, i64 0, !1421, i64 4, !1421, i64 6, !1423, i64 8, !1059, i64 16, !1059, i64 20, !1059, i64 24, !1621, i64 32, !1621, i64 48, !1621, i64 64, !1621, i64 80, !1423, i64 96, !1423, i64 104, !1059, i64 112, !1059, i64 116, !1059, i64 120, !1059, i64 124, !854, i64 128}
!1820 = !DILocation(line: 544, column: 31, scope: !1808)
!1821 = !DILocation(line: 542, column: 15, scope: !782)
!1822 = !DILocation(line: 545, column: 13, scope: !1808)
!1823 = !DILocation(line: 546, column: 9, scope: !782)
!1824 = !DILocation(line: 548, column: 11, scope: !790)
!1825 = !DILocation(line: 549, column: 11, scope: !790)
!1826 = !DILocation(line: 549, column: 17, scope: !790)
!1827 = !DILocation(line: 550, column: 15, scope: !790)
!1828 = !DILocation(line: 550, column: 19, scope: !790)
!1829 = !DILocation(line: 550, column: 28, scope: !790)
!1830 = !DILocation(line: 550, column: 34, scope: !790)
!1831 = !{!1819, !1421, i64 4}
!1832 = !DILocation(line: 550, column: 56, scope: !790)
!1833 = !DILocation(line: 550, column: 67, scope: !790)
!1834 = !{!1819, !1421, i64 6}
!1835 = !DILocation(line: 550, column: 63, scope: !790)
!1836 = !DILocation(line: 550, column: 61, scope: !790)
!1837 = !DILocation(line: 551, column: 15, scope: !790)
!1838 = !DILocation(line: 551, column: 30, scope: !790)
!1839 = !DILocation(line: 551, column: 44, scope: !790)
!1840 = !{!1819, !1423, i64 8}
!1841 = !DILocation(line: 551, column: 56, scope: !790)
!1842 = !DILocation(line: 551, column: 20, scope: !790)
!1843 = !DILocation(line: 548, column: 11, scope: !776)
!1844 = !DILocation(line: 556, column: 20, scope: !788)
!1845 = !DILocation(line: 556, column: 15, scope: !789)
!1846 = !DILocation(line: 558, column: 15, scope: !787)
!1847 = !DILocation(line: 559, column: 33, scope: !787)
!1848 = !DILocation(line: 0, scope: !787)
!1849 = !DILocation(line: 560, column: 15, scope: !787)
!1850 = !DILocation(line: 561, column: 13, scope: !787)
!1851 = !DILocation(line: 563, column: 11, scope: !789)
!1852 = !DILocation(line: 566, column: 7, scope: !776)
!1853 = !DILocation(line: 569, column: 11, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !776, file: !2, line: 567, column: 9)
!1855 = !DILocation(line: 573, column: 26, scope: !1854)
!1856 = !DILocation(line: 573, column: 43, scope: !1854)
!1857 = !DILocation(line: 573, column: 11, scope: !1854)
!1858 = !DILocation(line: 575, column: 11, scope: !1854)
!1859 = !DILocation(line: 579, column: 15, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 579, column: 15)
!1861 = !DILocation(line: 580, column: 15, scope: !1860)
!1862 = !DILocation(line: 580, column: 20, scope: !1860)
!1863 = !DILocation(line: 579, column: 15, scope: !1854)
!1864 = !DILocation(line: 582, column: 15, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 581, column: 13)
!1866 = !DILocation(line: 582, column: 15, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 582, column: 15)
!1868 = !DILocation(line: 583, column: 15, scope: !1865)
!1869 = !DILocation(line: 585, column: 11, scope: !1854)
!1870 = !DILocation(line: 587, column: 5, scope: !777)
!1871 = !DILocation(line: 491, column: 8, scope: !608)
!1872 = !DILocation(line: 587, column: 5, scope: !776)
!1873 = !DILocation(line: 508, column: 7, scope: !608)
!1874 = !DILocation(line: 590, column: 16, scope: !608)
!1875 = !DILocation(line: 591, column: 19, scope: !608)
!1876 = !DILocation(line: 591, column: 41, scope: !608)
!1877 = !{!1819, !1423, i64 96}
!1878 = !DILocation(line: 592, column: 30, scope: !608)
!1879 = !{!1819, !1423, i64 104}
!1880 = !DILocation(line: 592, column: 47, scope: !608)
!1881 = !DILocation(line: 593, column: 16, scope: !608)
!1882 = !DILocation(line: 593, column: 26, scope: !608)
!1883 = !DILocation(line: 593, column: 42, scope: !608)
!1884 = !DILocation(line: 594, column: 18, scope: !608)
!1885 = !DILocation(line: 594, column: 28, scope: !608)
!1886 = !DILocation(line: 594, column: 44, scope: !608)
!1887 = !DILocation(line: 595, column: 18, scope: !608)
!1888 = !DILocation(line: 589, column: 3, scope: !608)
!1889 = !DILocation(line: 597, column: 16, scope: !608)
!1890 = !DILocation(line: 598, column: 18, scope: !608)
!1891 = !{i64 0, i64 8, !1078, i64 8, i64 8, !1078, i64 16, i64 8, !1078, i64 24, i64 8, !1078}
!1892 = !DILocation(line: 600, column: 7, scope: !797)
!1893 = !DILocation(line: 600, column: 15, scope: !797)
!1894 = !DILocation(line: 600, column: 7, scope: !608)
!1895 = !DILocation(line: 602, column: 23, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !797, file: !2, line: 601, column: 5)
!1897 = !DILocation(line: 602, column: 15, scope: !1896)
!1898 = !DILocation(line: 603, column: 24, scope: !1896)
!1899 = !DILocation(line: 603, column: 15, scope: !1896)
!1900 = !DILocation(line: 603, column: 13, scope: !1896)
!1901 = !DILocation(line: 604, column: 5, scope: !1896)
!1902 = !DILocation(line: 607, column: 20, scope: !795)
!1903 = !DILocation(line: 607, column: 17, scope: !795)
!1904 = !DILocation(line: 607, column: 11, scope: !796)
!1905 = !DILocation(line: 610, column: 9, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !795, file: !2, line: 608, column: 9)
!1907 = !DILocation(line: 611, column: 24, scope: !794)
!1908 = !DILocation(line: 611, column: 22, scope: !794)
!1909 = !DILocation(line: 611, column: 16, scope: !795)
!1910 = !DILocation(line: 618, column: 15, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !793, file: !2, line: 618, column: 15)
!1912 = !DILocation(line: 618, column: 23, scope: !1911)
!1913 = !DILocation(line: 618, column: 15, scope: !793)
!1914 = !DILocation(line: 620, column: 34, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !2, line: 619, column: 13)
!1916 = !DILocation(line: 620, column: 23, scope: !1915)
!1917 = !DILocation(line: 620, column: 21, scope: !1915)
!1918 = !DILocation(line: 621, column: 31, scope: !1915)
!1919 = !DILocation(line: 621, column: 23, scope: !1915)
!1920 = !DILocation(line: 622, column: 13, scope: !1915)
!1921 = !DILocation(line: 624, column: 27, scope: !792)
!1922 = !DILocation(line: 624, column: 38, scope: !792)
!1923 = !DILocation(line: 0, scope: !792)
!1924 = !DILocation(line: 624, column: 16, scope: !792)
!1925 = !DILocation(line: 624, scope: !792)
!1926 = !DILocation(line: 624, column: 45, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !792, file: !2, line: 624, column: 11)
!1928 = !DILocation(line: 624, column: 11, scope: !792)
!1929 = !DILocation(line: 626, column: 29, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 625, column: 13)
!1931 = !DILocation(line: 626, column: 38, scope: !1930)
!1932 = !DILocation(line: 626, column: 15, scope: !1930)
!1933 = !DILocation(line: 627, column: 29, scope: !1930)
!1934 = !DILocation(line: 627, column: 38, scope: !1930)
!1935 = !DILocation(line: 627, column: 15, scope: !1930)
!1936 = !DILocation(line: 628, column: 13, scope: !1930)
!1937 = !DILocation(line: 624, column: 56, scope: !1927)
!1938 = !DILocation(line: 624, column: 11, scope: !1927)
!1939 = distinct !{!1939, !1928, !1940, !994, !995}
!1940 = !DILocation(line: 628, column: 13, scope: !792)
!1941 = !DILocation(line: 629, column: 9, scope: !793)
!1942 = !DILocation(line: 638, column: 11, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !794, file: !2, line: 631, column: 9)
!1944 = !DILocation(line: 639, column: 39, scope: !1943)
!1945 = !DILocation(line: 639, column: 45, scope: !1943)
!1946 = !DILocation(line: 639, column: 57, scope: !1943)
!1947 = !DILocation(line: 639, column: 11, scope: !1943)
!1948 = !DILocation(line: 640, column: 16, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 640, column: 15)
!1950 = !DILocation(line: 640, column: 15, scope: !1943)
!1951 = !DILocation(line: 641, column: 41, scope: !1949)
!1952 = !DILocation(line: 641, column: 47, scope: !1949)
!1953 = !DILocation(line: 641, column: 59, scope: !1949)
!1954 = !DILocation(line: 641, column: 13, scope: !1949)
!1955 = !DILocation(line: 642, column: 24, scope: !1943)
!1956 = !DILocation(line: 642, column: 37, scope: !1943)
!1957 = !DILocation(line: 642, column: 46, scope: !1943)
!1958 = !DILocation(line: 642, column: 52, scope: !1943)
!1959 = !DILocation(line: 642, column: 64, scope: !1943)
!1960 = !DILocation(line: 642, column: 11, scope: !1943)
!1961 = !DILocation(line: 643, column: 24, scope: !1943)
!1962 = !DILocation(line: 643, column: 37, scope: !1943)
!1963 = !DILocation(line: 643, column: 46, scope: !1943)
!1964 = !DILocation(line: 643, column: 52, scope: !1943)
!1965 = !DILocation(line: 643, column: 64, scope: !1943)
!1966 = !DILocation(line: 643, column: 11, scope: !1943)
!1967 = !DILocation(line: 647, column: 14, scope: !608)
!1968 = !DILocation(line: 651, column: 10, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !608, file: !2, line: 651, column: 7)
!1970 = !DILocation(line: 651, column: 28, scope: !1969)
!1971 = !DILocation(line: 651, column: 31, scope: !1969)
!1972 = !DILocation(line: 651, column: 7, scope: !608)
!1973 = !DILocation(line: 652, column: 18, scope: !1969)
!1974 = !DILocation(line: 652, column: 31, scope: !1969)
!1975 = !DILocation(line: 652, column: 5, scope: !1969)
!1976 = !DILocation(line: 656, column: 3, scope: !608)
!1977 = !DILocation(line: 658, column: 8, scope: !800)
!1978 = !DILocation(line: 658, column: 27, scope: !800)
!1979 = !DILocation(line: 658, column: 39, scope: !800)
!1980 = !DILocation(line: 658, column: 36, scope: !800)
!1981 = !DILocation(line: 659, column: 7, scope: !800)
!1982 = !DILocation(line: 659, column: 11, scope: !800)
!1983 = !DILocation(line: 659, column: 19, scope: !800)
!1984 = !DILocation(line: 659, column: 31, scope: !800)
!1985 = !DILocation(line: 659, column: 28, scope: !800)
!1986 = !DILocation(line: 660, column: 7, scope: !800)
!1987 = !DILocation(line: 660, column: 16, scope: !800)
!1988 = !DILocation(line: 658, column: 7, scope: !608)
!1989 = !DILocation(line: 663, column: 21, scope: !799)
!1990 = !DILocation(line: 663, column: 47, scope: !799)
!1991 = !DILocation(line: 663, column: 69, scope: !799)
!1992 = !DILocation(line: 0, scope: !799)
!1993 = !DILocation(line: 664, column: 11, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !799, file: !2, line: 664, column: 11)
!1995 = !DILocation(line: 664, column: 25, scope: !1994)
!1996 = !DILocation(line: 664, column: 11, scope: !799)
!1997 = !DILocation(line: 665, column: 19, scope: !1994)
!1998 = !DILocation(line: 665, column: 18, scope: !1994)
!1999 = !DILocation(line: 665, column: 15, scope: !1994)
!2000 = !DILocation(line: 666, column: 18, scope: !1994)
!2001 = !DILocation(line: 666, column: 15, scope: !1994)
!2002 = !DILocation(line: 667, column: 9, scope: !1994)
!2003 = !DILocation(line: 668, column: 5, scope: !799)
!2004 = !DILocation(line: 670, column: 10, scope: !608)
!2005 = !DILocation(line: 670, column: 3, scope: !608)
!2006 = !DILocation(line: 671, column: 1, scope: !608)
!2007 = !DISubprogram(name: "rpl_fts_close", scope: !613, file: !613, line: 258, type: !2008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!136, !611}
!2010 = !DISubprogram(name: "excluded_file_name", scope: !832, file: !832, line: 60, type: !2011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!265, !2013, !153}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!2015 = !DISubprogram(name: "rpl_fts_set", scope: !613, file: !613, line: 268, type: !2016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!136, !611, !761, !136}
!2018 = distinct !DISubprogram(name: "hash_ins", scope: !2, file: !2, line: 367, type: !2019, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2024)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!265, !385, !2021, !669}
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !2022, line: 31, baseType: !2023)
!2022 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_ino_t.h", directory: "")
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino_t", file: !672, line: 64, baseType: !683)
!2024 = !{!2025, !2026, !2027, !2028}
!2025 = !DILocalVariable(name: "di_set", arg: 1, scope: !2018, file: !2, line: 367, type: !385)
!2026 = !DILocalVariable(name: "ino", arg: 2, scope: !2018, file: !2, line: 367, type: !2021)
!2027 = !DILocalVariable(name: "dev", arg: 3, scope: !2018, file: !2, line: 367, type: !669)
!2028 = !DILocalVariable(name: "inserted", scope: !2018, file: !2, line: 369, type: !136)
!2029 = !DILocation(line: 0, scope: !2018)
!2030 = !DILocation(line: 369, column: 18, scope: !2018)
!2031 = !DILocation(line: 370, column: 16, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 370, column: 7)
!2033 = !DILocation(line: 370, column: 7, scope: !2018)
!2034 = !DILocation(line: 371, column: 5, scope: !2032)
!2035 = !DILocation(line: 372, column: 10, scope: !2018)
!2036 = !DILocation(line: 372, column: 3, scope: !2018)
!2037 = !DISubprogram(name: "cycle_warning_required", scope: !1750, file: !1750, line: 10, type: !2038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!265, !2040, !784}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!2042 = distinct !DISubprogram(name: "mount_point_in_fts_cycle", scope: !2, file: !2, line: 456, type: !2043, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2045)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!265, !784}
!2045 = !{!2046, !2047}
!2046 = !DILocalVariable(name: "ent", arg: 1, scope: !2042, file: !2, line: 456, type: !784)
!2047 = !DILocalVariable(name: "cycle_ent", scope: !2042, file: !2, line: 458, type: !784)
!2048 = !DILocation(line: 0, scope: !2042)
!2049 = !DILocation(line: 458, column: 34, scope: !2042)
!2050 = !DILocation(line: 460, column: 8, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 460, column: 7)
!2052 = !DILocation(line: 460, column: 7, scope: !2042)
!2053 = !DILocation(line: 463, column: 16, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2051, file: !2, line: 461, column: 5)
!2055 = !DILocation(line: 463, column: 14, scope: !2054)
!2056 = !DILocation(line: 464, column: 12, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 464, column: 11)
!2058 = !DILocation(line: 464, column: 11, scope: !2054)
!2059 = !DILocation(line: 465, column: 9, scope: !2057)
!2060 = !DILocation(line: 467, column: 7, scope: !2054)
!2061 = !DILocation(line: 468, column: 5, scope: !2054)
!2062 = !DILocation(line: 470, column: 3, scope: !2042)
!2063 = !DILocation(line: 470, column: 10, scope: !2042)
!2064 = !DILocation(line: 470, column: 14, scope: !2042)
!2065 = !DILocation(line: 470, column: 21, scope: !2042)
!2066 = !DILocation(line: 472, column: 26, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !2, line: 472, column: 11)
!2068 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 471, column: 5)
!2069 = !DILocation(line: 472, column: 39, scope: !2067)
!2070 = !DILocation(line: 472, column: 50, scope: !2067)
!2071 = !DILocation(line: 473, column: 31, scope: !2067)
!2072 = !DILocation(line: 473, column: 42, scope: !2067)
!2073 = !DILocation(line: 472, column: 11, scope: !2067)
!2074 = !DILocation(line: 473, column: 50, scope: !2067)
!2075 = !DILocation(line: 472, column: 11, scope: !2068)
!2076 = !DILocation(line: 475, column: 11, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2067, file: !2, line: 474, column: 9)
!2078 = !DILocation(line: 477, column: 18, scope: !2068)
!2079 = distinct !{!2079, !2062, !2080, !994, !995}
!2080 = !DILocation(line: 478, column: 5, scope: !2042)
!2081 = !DILocation(line: 480, column: 3, scope: !2042)
!2082 = !DILocation(line: 481, column: 1, scope: !2042)
!2083 = distinct !DISubprogram(name: "usable_st_size", scope: !135, file: !135, line: 732, type: !2084, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!265, !772}
!2086 = !{!2087}
!2087 = !DILocalVariable(name: "sb", arg: 1, scope: !2083, file: !135, line: 732, type: !772)
!2088 = !DILocation(line: 0, scope: !2083)
!2089 = !DILocation(line: 734, column: 11, scope: !2083)
!2090 = !DILocation(line: 734, column: 33, scope: !2083)
!2091 = !DILocation(line: 734, column: 36, scope: !2083)
!2092 = !DILocation(line: 735, column: 31, scope: !2083)
!2093 = !DILocation(line: 734, column: 3, scope: !2083)
!2094 = distinct !DISubprogram(name: "get_stat_mtime", scope: !2095, file: !2095, line: 145, type: !2096, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2098)
!2095 = !DIFile(filename: "../lib/stat-time.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!409, !772}
!2098 = !{!2099}
!2099 = !DILocalVariable(name: "st", arg: 1, scope: !2094, file: !2095, line: 145, type: !772)
!2100 = !DILocation(line: 0, scope: !2094)
!2101 = !DILocation(line: 148, column: 10, scope: !2094)
!2102 = !{i64 0, i64 8, !1078, i64 8, i64 8, !1078}
!2103 = !DILocation(line: 148, column: 3, scope: !2094)
!2104 = distinct !DISubprogram(name: "get_stat_atime", scope: !2095, file: !2095, line: 117, type: !2096, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2105)
!2105 = !{!2106}
!2106 = !DILocalVariable(name: "st", arg: 1, scope: !2104, file: !2095, line: 117, type: !772)
!2107 = !DILocation(line: 0, scope: !2104)
!2108 = !DILocation(line: 120, column: 10, scope: !2104)
!2109 = !DILocation(line: 120, column: 3, scope: !2104)
!2110 = distinct !DISubprogram(name: "get_stat_ctime", scope: !2095, file: !2095, line: 131, type: !2096, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2111)
!2111 = !{!2112}
!2112 = !DILocalVariable(name: "st", arg: 1, scope: !2110, file: !2095, line: 131, type: !772)
!2113 = !DILocation(line: 0, scope: !2110)
!2114 = !DILocation(line: 134, column: 10, scope: !2110)
!2115 = !DILocation(line: 134, column: 3, scope: !2110)
!2116 = distinct !DISubprogram(name: "duinfo_set", scope: !2, file: !2, line: 102, type: !2117, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2120)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !2119, !159, !409}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!2120 = !{!2121, !2122, !2123}
!2121 = !DILocalVariable(name: "a", arg: 1, scope: !2116, file: !2, line: 102, type: !2119)
!2122 = !DILocalVariable(name: "size", arg: 2, scope: !2116, file: !2, line: 102, type: !159)
!2123 = !DILocalVariable(name: "tmax", arg: 3, scope: !2116, file: !2, line: 102, type: !409)
!2124 = !DILocation(line: 0, scope: !2116)
!2125 = !DILocation(line: 102, column: 63, scope: !2116)
!2126 = !DILocation(line: 104, column: 6, scope: !2116)
!2127 = !DILocation(line: 104, column: 11, scope: !2116)
!2128 = !DILocation(line: 105, column: 6, scope: !2116)
!2129 = !DILocation(line: 105, column: 13, scope: !2116)
!2130 = !DILocation(line: 106, column: 6, scope: !2116)
!2131 = !DILocation(line: 106, column: 13, scope: !2116)
!2132 = !DILocation(line: 107, column: 1, scope: !2116)
!2133 = !DISubprogram(name: "xcalloc", scope: !1528, file: !1528, line: 70, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!158, !312, !312}
!2136 = distinct !DISubprogram(name: "xnrealloc", scope: !1528, file: !1528, line: 143, type: !2137, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!158, !158, !312, !312}
!2139 = !{!2140, !2141, !2142}
!2140 = !DILocalVariable(name: "p", arg: 1, scope: !2136, file: !1528, line: 143, type: !158)
!2141 = !DILocalVariable(name: "n", arg: 2, scope: !2136, file: !1528, line: 143, type: !312)
!2142 = !DILocalVariable(name: "s", arg: 3, scope: !2136, file: !1528, line: 143, type: !312)
!2143 = !DILocation(line: 0, scope: !2136)
!2144 = !DILocation(line: 145, column: 10, scope: !2136)
!2145 = !DILocation(line: 145, column: 3, scope: !2136)
!2146 = distinct !DISubprogram(name: "duinfo_init", scope: !2, file: !2, line: 92, type: !2147, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !2119}
!2149 = !{!2150}
!2150 = !DILocalVariable(name: "a", arg: 1, scope: !2146, file: !2, line: 92, type: !2119)
!2151 = !DILocation(line: 0, scope: !2146)
!2152 = !DILocation(line: 94, column: 6, scope: !2146)
!2153 = !DILocation(line: 94, column: 11, scope: !2146)
!2154 = !DILocation(line: 95, column: 6, scope: !2146)
!2155 = !DILocation(line: 95, column: 13, scope: !2146)
!2156 = !DILocation(line: 96, column: 6, scope: !2146)
!2157 = !DILocation(line: 96, column: 11, scope: !2146)
!2158 = !DILocation(line: 96, column: 18, scope: !2146)
!2159 = !{!1620, !1079, i64 16}
!2160 = !DILocation(line: 97, column: 6, scope: !2146)
!2161 = !DILocation(line: 97, column: 11, scope: !2146)
!2162 = !DILocation(line: 97, column: 19, scope: !2146)
!2163 = !{!1620, !1079, i64 24}
!2164 = !DILocation(line: 98, column: 1, scope: !2146)
!2165 = distinct !DISubprogram(name: "duinfo_add", scope: !2, file: !2, line: 111, type: !2166, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !2119, !1611}
!2168 = !{!2169, !2170, !2171}
!2169 = !DILocalVariable(name: "a", arg: 1, scope: !2165, file: !2, line: 111, type: !2119)
!2170 = !DILocalVariable(name: "b", arg: 2, scope: !2165, file: !2, line: 111, type: !1611)
!2171 = !DILocalVariable(name: "sum", scope: !2165, file: !2, line: 113, type: !159)
!2172 = !DILocation(line: 0, scope: !2165)
!2173 = !DILocation(line: 113, column: 22, scope: !2165)
!2174 = !DILocation(line: 113, column: 32, scope: !2165)
!2175 = !DILocation(line: 113, column: 27, scope: !2165)
!2176 = !DILocation(line: 114, column: 16, scope: !2165)
!2177 = !DILocation(line: 114, column: 21, scope: !2165)
!2178 = !DILocation(line: 114, column: 13, scope: !2165)
!2179 = !DILocation(line: 114, column: 6, scope: !2165)
!2180 = !DILocation(line: 114, column: 11, scope: !2165)
!2181 = !DILocation(line: 115, column: 18, scope: !2165)
!2182 = !DILocation(line: 115, column: 30, scope: !2165)
!2183 = !DILocation(line: 115, column: 25, scope: !2165)
!2184 = !DILocation(line: 115, column: 6, scope: !2165)
!2185 = !DILocation(line: 115, column: 13, scope: !2165)
!2186 = !DILocation(line: 116, column: 24, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 116, column: 7)
!2188 = !DILocation(line: 116, column: 33, scope: !2187)
!2189 = !DILocation(line: 116, column: 7, scope: !2187)
!2190 = !DILocation(line: 116, column: 39, scope: !2187)
!2191 = !DILocation(line: 116, column: 7, scope: !2165)
!2192 = !DILocation(line: 117, column: 8, scope: !2187)
!2193 = !DILocation(line: 117, column: 18, scope: !2187)
!2194 = !DILocation(line: 117, column: 5, scope: !2187)
!2195 = !DILocation(line: 118, column: 1, scope: !2165)
!2196 = distinct !DISubprogram(name: "timespec_cmp", scope: !2197, file: !2197, line: 64, type: !2198, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2200)
!2197 = !DIFile(filename: "../lib/timespec.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!136, !409, !409}
!2200 = !{!2201, !2202}
!2201 = !DILocalVariable(name: "a", arg: 1, scope: !2196, file: !2197, line: 64, type: !409)
!2202 = !DILocalVariable(name: "b", arg: 2, scope: !2196, file: !2197, line: 64, type: !409)
!2203 = !DILocation(line: 64, column: 31, scope: !2196)
!2204 = !DILocation(line: 64, column: 50, scope: !2196)
!2205 = !DILocation(line: 66, column: 14, scope: !2196)
!2206 = !DILocation(line: 66, column: 12, scope: !2196)
!2207 = !DILocation(line: 66, column: 45, scope: !2196)
!2208 = !DILocation(line: 66, column: 43, scope: !2196)
!2209 = !DILocation(line: 66, column: 3, scope: !2196)
!2210 = !DISubprogram(name: "xreallocarray", scope: !1528, file: !1528, line: 80, type: !2137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!2211 = distinct !DISubprogram(name: "fill_mount_table", scope: !2, file: !2, line: 428, type: !948, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2212)
!2212 = !{!2213, !2227, !2229}
!2213 = !DILocalVariable(name: "mnt_ent", scope: !2211, file: !2, line: 430, type: !2214)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount_entry", file: !2216, line: 25, size: 384, elements: !2217)
!2216 = !DIFile(filename: "../lib/mountlist.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "me_devname", scope: !2215, file: !2216, line: 27, baseType: !157, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "me_mountdir", scope: !2215, file: !2216, line: 28, baseType: !157, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "me_mntroot", scope: !2215, file: !2216, line: 29, baseType: !157, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "me_type", scope: !2215, file: !2216, line: 31, baseType: !157, size: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "me_dev", scope: !2215, file: !2216, line: 32, baseType: !669, size: 32, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "me_dummy", scope: !2215, file: !2216, line: 33, baseType: !85, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "me_remote", scope: !2215, file: !2216, line: 34, baseType: !85, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "me_type_malloced", scope: !2215, file: !2216, line: 35, baseType: !85, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "me_next", scope: !2215, file: !2216, line: 36, baseType: !2214, size: 64, offset: 320)
!2227 = !DILocalVariable(name: "mnt_free", scope: !2228, file: !2, line: 433, type: !2214)
!2228 = distinct !DILexicalBlock(scope: !2211, file: !2, line: 432, column: 5)
!2229 = !DILocalVariable(name: "buf", scope: !2230, file: !2, line: 436, type: !665)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 435, column: 9)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 434, column: 11)
!2232 = !DILocation(line: 430, column: 33, scope: !2211)
!2233 = !DILocation(line: 0, scope: !2211)
!2234 = !DILocation(line: 431, column: 3, scope: !2211)
!2235 = !DILocation(line: 434, column: 21, scope: !2231)
!2236 = !DILocation(line: 434, column: 12, scope: !2231)
!2237 = !DILocation(line: 434, column: 31, scope: !2231)
!2238 = !DILocation(line: 434, column: 44, scope: !2231)
!2239 = !DILocation(line: 434, column: 35, scope: !2231)
!2240 = !DILocation(line: 434, column: 11, scope: !2228)
!2241 = !DILocation(line: 436, column: 11, scope: !2230)
!2242 = !DILocation(line: 436, column: 23, scope: !2230)
!2243 = !DILocation(line: 437, column: 16, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 437, column: 15)
!2245 = !{!2246, !853, i64 8}
!2246 = !{!"mount_entry", !853, i64 0, !853, i64 8, !853, i64 16, !853, i64 24, !1059, i64 32, !1059, i64 36, !1059, i64 36, !1059, i64 36, !853, i64 40}
!2247 = !DILocation(line: 437, column: 15, scope: !2230)
!2248 = !DILocation(line: 438, column: 23, scope: !2244)
!2249 = !DILocation(line: 438, column: 35, scope: !2244)
!2250 = !DILocation(line: 438, column: 47, scope: !2244)
!2251 = !DILocation(line: 438, column: 13, scope: !2244)
!2252 = !DILocation(line: 444, column: 9, scope: !2231)
!2253 = !DILocation(line: 444, column: 9, scope: !2230)
!2254 = !DILocation(line: 0, scope: !2228)
!2255 = !DILocation(line: 447, column: 26, scope: !2228)
!2256 = !{!2246, !853, i64 40}
!2257 = !DILocation(line: 448, column: 7, scope: !2228)
!2258 = distinct !{!2258, !2234, !2259, !994, !995}
!2259 = !DILocation(line: 449, column: 5, scope: !2211)
!2260 = !DILocation(line: 450, column: 1, scope: !2211)
!2261 = !DISubprogram(name: "di_set_lookup", scope: !387, file: !387, line: 33, type: !2262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!136, !385, !669, !2021}
!2264 = !DISubprogram(name: "read_file_system_list", scope: !2216, file: !2216, line: 39, type: !2265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!2214, !265}
!2267 = !DISubprogram(name: "rpl_stat", scope: !2268, file: !2268, line: 1355, type: !2269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!2268 = !DIFile(filename: "./lib/sys/stat.h", directory: "/Users/adrienbouquet/Epfl/6_BA/BachelorProject/test_project/coreutils-9.3/build")
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!136, !939, !2271}
!2271 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2272)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!2273 = !DISubprogram(name: "free_mount_entry", scope: !2216, file: !2216, line: 41, type: !2274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !2214}
!2276 = !DISubprogram(name: "di_set_insert", scope: !387, file: !387, line: 31, type: !2262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !940)
