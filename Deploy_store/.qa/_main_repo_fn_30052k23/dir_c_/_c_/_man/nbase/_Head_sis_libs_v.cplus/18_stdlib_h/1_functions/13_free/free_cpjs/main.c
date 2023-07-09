#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>
#include <math.h>
#include <errno.h>
#include <unistd.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"

#define N 6

int main(int argc, char const *argv[])
{
    int *buffer_1, *buffer_2, *buffer_3;
    buffer_1 = (int *)malloc_c(100 * sizeof(int), __FILE__, __LINE__);
    buffer_2 = (int *)calloc(100, sizeof(int));
    buffer_3 = (int *)realloc(buffer_2, 100 * sizeof(int));
    free(buffer_1);
    free(buffer_3);
    return 0;
}
