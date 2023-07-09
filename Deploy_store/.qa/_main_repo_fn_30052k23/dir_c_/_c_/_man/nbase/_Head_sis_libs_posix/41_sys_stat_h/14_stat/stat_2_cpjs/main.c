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

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    struct stat st_struct;
    int res_stat = stat_с("a.file", &st_struct, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);  /*#*/
    // if (res_stat != -1)
    // {
    printf("res_stat = %d\n\
st_dev = 0x%o\n\
st_ino = 0x%o\n\
st_mode = 0x%o\n\
st_nlink = %d\n\
st_uid = 0x%o\n\
st_gid = 0x%o\n\
st_rdev = 0x%o\n\
st_size = %d\n\
st_blksize = 0x%o\n\
st_blocks = 0x%o\n",
           res_stat, st_struct.st_dev, st_struct.st_ino, st_struct.st_mode, st_struct.st_nlink, st_struct.st_uid, st_struct.st_gid, st_struct.st_rdev, st_struct.st_size, st_struct.st_blksize, st_struct.st_blocks);
    // }
    return 0;
}
