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
// F_OK = 0
// Test for existence of file.
// R_OK = 4
// Test for read permission.

// W_OK = 2
// Test for write permission.

// X_OK = 1
// Test for execute (search) permission.

int main(int argc, char const *argv[])
{
    char *path_file_f = "pre_";
    char *path_file_t = "pre";

    // access_c(path_file, F_OK, __FILE__, __LINE__);
    printf("access = %d to file = %s with mode = %d\n", access(path_file_f, F_OK), path_file_f, F_OK);

    printf("access = %d to file = %s with mode = %d\n", access_c(path_file_t, F_OK, __FILE__, __LINE__), path_file_t, F_OK);
    printf("access = %d to file = %s with mode = %d\n", access_c(path_file_t, R_OK, __FILE__, __LINE__), path_file_t, R_OK);
    printf("access = %d to file = %s with mode = %d\n", access_c(path_file_t, W_OK, __FILE__, __LINE__), path_file_t, W_OK);
    printf("access = %d to file = %s with mode = %d\n", access(path_file_t, X_OK), path_file_t, X_OK);

    printf("access = %d to file = %s with mode = %d\n", access_c(path_file_t, R_OK | W_OK, __FILE__, __LINE__), path_file_t, R_OK | W_OK);
    printf("access = %d to file = %s with mode = %d\n", access(path_file_t, R_OK | X_OK), path_file_t, R_OK | X_OK);

    printf("access = %d to file = %s with mode = %d\n", access_c(path_file_t, R_OK | X_OK, __FILE__, __LINE__), path_file_t, R_OK | X_OK);

    return 0;
}
