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
    char c;
    long posR = 0;
    long posW = 0;
    long posD = 0;

    FILE *pFr = fopen_s("r.tx", "r");
    FILE *pFw = fopen_s("w.tx", "w");
    FILE *pFd = fopen_s("d.tx", "w");
    while (1)
    {

        if ((c = getc(pFr)) != EOF)
        {

            posR = ftell(pFr);
            posW = ftell(pFw);
            fprintf(pFw, "%c : %d : %d\n", c, posR, posW);
        }
        else if (c == EOF)
        {
            fprintf(pFw, "\nc = %d : exit while(), posR = %d, posW = %d\n", c, posR, posW); // c = -72538984
            break;
        }
    }
    // fprintf(pFd, "posR = %d\n", ftell(pFr));
    // fprintf(pFd, "fflush(pFr)\n");
    // fflush(pFr);
    fprintf(pFd, "posR = %d\n", ftell(pFr));
    char d = getc(pFr);
    fflush(stdout);
    fputc(d, pFd);
    fprintf(pFd, "\nposR = %d\n", ftell(pFr));
}
