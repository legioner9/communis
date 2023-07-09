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
    struct stat st_struct;
    char *file_path = "a_.file";
    prn_stat_lc_1_path_с(file_path ,__FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_MNS); /*#*/

    // int res_stat = stat("a.file", &st_struct);
    //     int res_stat = stat(file_path, &st_struct);
    //     printf("res_stat = %d\n\
// st_dev = %d\n\
// ino_t = %d\n\
// st_mode = %o\n\
// st_nlink = %d\n\
// st_uid = %d\n\
// st_gid = %d\n\
// st_rdev = %d\n\
// st_size = %d\n\
// st_blksize = %d\n\
// st_blocks = %d\n", res_stat, st_struct.st_dev, st_struct.ino_t, st_struct.st_mode, st_struct.st_nlink, st_struct.st_uid, st_struct.st_gid, st_struct.st_rdev, st_struct.st_size, st_struct.st_blksize, st_struct.st_blocks);
    return 0;
}
