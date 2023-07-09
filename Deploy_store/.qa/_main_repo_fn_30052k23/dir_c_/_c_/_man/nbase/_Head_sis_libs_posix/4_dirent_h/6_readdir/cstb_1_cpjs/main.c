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
#include "lib/st_mode_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>

// int cb_1(char *path)
// {
//     char *exec_file = __FILE__;
//     int exec_line = __LINE__;

//     printf("exec_file = %s, exec_line = %d", exec_file, exec_line);
//     printf("from cb_1: path = %s is wrong!!!", path);
//     return 0;
// }

int main(int argc, char const *argv[])
{
    DIR *dirp;
    struct dirent *entry;
    char name_entry;
    char *path_dir;

    path_dir = "dir_a";

    // dirp = opendir_сb(cb_1, path_dir);
    dirp = opendir_с(path_dir, __FILE__, __LINE__, STMO_PRN, STIF_NUL, STRE_EXI);

    while ((entry = readdir_с(dirp, __FILE__, __LINE__, STMO_PRN, STIF_ENU, STRE_EXI)) != NULL)
    {
        // prn_dirent_lc_1_entry(entry);
        prn_dirent_lc_1_entry_с(entry, __FILE__, __LINE__, STMO_PRN, 0, STRE_EXI); /*#*/ //^1^
                                                                                         //         int *pd_off = &(entry->d_off);
                                                                                         //         printf("d_name = %s\n\
// d_ino = %d\n\
// d_type = 0x%o\n\
// d_reclen = 0x%o\n\
// d_off = %d\n\
// &d_off = %d\n\
// \n",
                                                                                         //                entry->d_name, entry->d_ino, entry->d_type, entry->d_reclen, entry->d_off, &(entry->d_off)); // ^1^
                                                                                         //   &d_off entry address , d_off pointer to entry adress
    }

    return 0;
}
