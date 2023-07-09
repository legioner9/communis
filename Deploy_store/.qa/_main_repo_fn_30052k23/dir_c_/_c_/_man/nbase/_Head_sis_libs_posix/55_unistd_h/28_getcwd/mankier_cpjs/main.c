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


int cb(char *path)
{
    char cwd[PATH_MAX];
    printf("current dir = %s\n", getcwd(cwd, sizeof(cwd)));
    printf("err in path = %s \n", path);
    return 0;
}

int main(int argc, char const *argv[])
{
    // char *directory = "tmp";
    char cwd[PATH_MAX];
    printf("chdir_с = %d , current dir = %s\n", chdir_с("tmp", __FILE__, __LINE__), getcwd(cwd, sizeof(cwd)));
    printf("chdir_с = %d , current dir = %s\n", chdir_с("tmp_", __FILE__, __LINE__), getcwd(cwd, sizeof(cwd)));
    printf("current dir = %s\n", getcwd(cwd, sizeof(cwd)));
    return 0;
}
