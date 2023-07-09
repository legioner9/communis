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

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"

#define N 6

int main(int argc, char const *argv[])
{
    FILE *pFile;
    pFile = fopen("wb.tx", "wb");

    fputs("This is an apple.", pFile);
    fseek_c(pFile, 0, SEEK_END);
    
    fprintf(stdout, "%d\n", ftell(pFile));
    fseek_c(pFile, 9, SEEK_SET);

    fputs(" sam", pFile);

    // char str[100];
    // fgets(str, 100, pFile);
    // fprintf(stdout, "str = %s", str);

    fclose(pFile);
    return 0;
}
