/* open/fcntl.  */
#define O_ACCMODE 0003
#define O_RDONLY 00
#define O_WRONLY 01
#define O_RDWR 02
#ifndef O_CREAT
#define O_CREAT 0100 /* Not fcntl.  */
#endif
#ifndef O_EXCL
#define O_EXCL 0200 /* Not fcntl.  */
#endif
#ifndef O_NOCTTY
#define O_NOCTTY 0400 /* Not fcntl.  */
#endif
#ifndef O_TRUNC
#define O_TRUNC 01000 /* Not fcntl.  */
#endif
#ifndef O_APPEND
#define O_APPEND 02000
#endif
#ifndef O_NONBLOCK
#define O_NONBLOCK 04000
#endif
#ifndef O_NDELAY
#define O_NDELAY O_NONBLOCK
#endif
#ifndef O_SYNC
#define O_SYNC 04010000
#endif
#define O_FSYNC O_SYNC
#ifndef O_ASYNC
#define O_ASYNC 020000
#endif

#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <fenv.h>
#include <float.h>
#include <inttypes.h>
#include <iso646.h>
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tgmath.h>
#include <time.h>
#include <uchar.h>
#include <wchar.h>
#include <wctype.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/l3p_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"
#include "lib/uni_1.h"
#include "lib/fcntl_1.h"
#include "lib/dirent_1.h"
#include "lib/sys_stat_1.h"
#include "lib/st_mode_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>

int main(int argc, char const *argv[])
{

    remove("dir_a/dir_b/c.file"); // ^1^
    // remove("dir_a/dir_b/d.file"); // ^1^
    remove("dir_a/dir_b");
    mkdir("dir_a/dir_b", 0755);
    FILE *fp_1 = fopen_c("dir_a/dir_b/c.file", "w+", __FILE__, __LINE__, STMO_PRN, STIF_NUL, STRE_EXI);
    remove("dir_a/dir_b"); // ^2^
    FILE *fp_2 = fopen_c("dir_a/dir_b/d.file", "w", __FILE__, __LINE__, STMO_PRN, STIF_NUL, STRE_EXI);
    remove_с("dir_a/dir_b", __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI); // ^3^

    return 0;
}
