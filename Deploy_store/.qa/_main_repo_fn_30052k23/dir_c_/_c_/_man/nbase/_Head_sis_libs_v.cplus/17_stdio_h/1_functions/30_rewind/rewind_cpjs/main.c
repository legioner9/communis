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
    int n;
    FILE *pFile;
    char buffer[27];

    pFile = fopen("myfile.txt", "w+");
    for (n = 'A'; n <= 'Z'; n++)
        fputc(n, pFile);
    rewind(pFile);
    fread(buffer, 1, 26, pFile);
    fclose(pFile);
    buffer[26] = '\0';
    puts(buffer);
    return 0;
}
