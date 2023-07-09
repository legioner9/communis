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
    // char buffer[50];
    // int n, a = 5, b = 3;
    // n = sprintf(buffer, "%d plus %d is %d", a, b, a + b);
    // printf("[%s] is a string %d chars long\n", buffer, n);
    char str_1[50], str_2[50], str_3[50];
    int n_1 = sprintf(str_1, "That str_1");
    int n_2 = sprintf(str_2, "That str_2");
    int n_3 = sprintf(str_3, "[%s].[%d] , [%s].[%d] ", str_1, n_1, str_2, n_2);
    sprintf(str_3 + n_3, " str_3.[%d]", n_3);
    printf("str_3 is {%s}\n", str_3);

    return 0;
}
