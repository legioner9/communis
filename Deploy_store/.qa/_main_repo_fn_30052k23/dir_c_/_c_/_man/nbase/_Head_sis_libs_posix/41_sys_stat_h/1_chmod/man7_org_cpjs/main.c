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
    char *path = "a.file";
    FILE *filep = open_с(path, O_RDWR | O_CREAT, S_IRWXU, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    prn_stat_lc_1_path(path);

    int res_chmod_1 = chmod(path, O_RDONLY);
    printf("\nafter chmod O_RDONLY:\n");
    prn_stat_lc_1_path(path);

    remove_с(path, __FILE__, __LINE__, STMO_PRN, STIF_ONE, STRE_EXI);
    return 0;
}
