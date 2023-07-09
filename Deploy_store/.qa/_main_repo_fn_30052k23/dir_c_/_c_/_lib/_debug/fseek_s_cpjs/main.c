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

#define N 6

int main(int argc, char const *argv[])
{
    char str[50];
    FILE *pFr = fopen_s("r.tx", "r");

    printf("fseek_s(pFr, 6, SEEK_SET) = %d\n", fseek_s(pFr, 6, SEEK_SET));

    fgets(str, sizeof(str), pFr); 
    printf("%s\n", str);

    return 0;
}
