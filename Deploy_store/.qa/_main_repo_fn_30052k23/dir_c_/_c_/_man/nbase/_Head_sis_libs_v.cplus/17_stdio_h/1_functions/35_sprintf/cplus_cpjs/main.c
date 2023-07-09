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
    char buffer[50];
    int n, a = 5, b = 3;
    n = sprintf(buffer, "%d plus %d is %d", a, b, a + b);
    printf("[%s] is a string %d chars long\n", buffer, n);
    return 0;
}

// Вывод:
// [5 plus 3 is 8] is a string 13 chars long
