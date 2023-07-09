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
#include "lib/io_1.h"
#include "lib/lib_1.h"
#include "lib/uni_1.h"

#define N 6

#include <unistd.h>

int cb_l(char *path, int amode)
{
    FILE *pF = fopen("err_log", "w");
    fprintf(pF, "err in path = %s with amode = %d\n", path, amode);
    return 0;
}
int cb_p(char *path, int amode)
{
    printf("err in path = %s with amode = %d\n", path, amode);
    return 0;
}

int main(int argc, char const *argv[])
{
    char *path = "pre_";

    printf("access = %d", access_cb(cb_l, path, F_OK));
    access_cb(cb_p, path, F_OK);

    return 0;
}
