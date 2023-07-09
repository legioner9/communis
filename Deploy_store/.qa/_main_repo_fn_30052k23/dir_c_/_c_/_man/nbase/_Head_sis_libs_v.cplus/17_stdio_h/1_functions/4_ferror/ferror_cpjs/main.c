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

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"

#define N 6

int main(int argc, char const *argv[])
{
    FILE *pFile;
    pFile = fopen("myfile.txt", "r");
    if (pFile == NULL)
        perror("Error opening file");
    else
    {
        fputc('x', pFile);
        if (ferror(pFile))
        {
            perror("From if:");
            printf("Error Writing to myfile.txt\n");
        }
        fclose(pFile);
    }
    return 0;
}
