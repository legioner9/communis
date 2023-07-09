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
    int c;
    char buffer[256];

    pFile = fopen("myfile.txt", "rt");
    if (pFile == NULL)
        perror("Error opening file");
    else
        while (!feof(pFile))
        {
            c = getc(pFile);
            if (c == EOF)
                break;
            if (c == '#')
                ungetc('@', pFile);
            else
                ungetc(c, pFile);
            if (fgets(buffer, 255, pFile) != NULL)
                fputs(buffer, stdout);
            else
                break;
        }
    return 0;
}
