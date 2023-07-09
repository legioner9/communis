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
char mybuffer[80];
int main(int argc, char const *argv[])
{
    FILE *pFile;
    pFile = fopen("example.txt", "r+");
    if (pFile == NULL)
        perror("Error opening file");
    else
    {
        fputs("test", pFile);
        printf("ftell(pFile) = %d\n", ftell(pFile)); // 4
        fflush(pFile); // flushing or repositioning required - NOT repositioning!!!
        printf("ftell(pFile) = %d\n", ftell(pFile)); // 4
        fseek(pFile, 0, SEEK_SET);
        printf("ftell(pFile) = %d\n", ftell(pFile));
        fgets(mybuffer, 80, pFile);
        printf("ftell(pFile) = %d\n", ftell(pFile));
        puts(mybuffer);
        fclose(pFile);
        return 0;
    }
}
