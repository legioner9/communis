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
    char sentence[] = "Rudolph is 12 dcw cdaw 33";
    char str[20];
    char tmp[20];
    int i = 0;
    int k = 0;
    float a;

    sscanf(sentence, "%s %*s %d %*s %*s %f", str, &i, &a);
    printf("%s -> %d, heght: %.2f\n", str, i , a);
    return 0;
}

// Rudolph -> 12, heght: 33.00
