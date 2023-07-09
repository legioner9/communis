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
    FILE *pFr = fopen_c("r.tx", "r");
    FILE *pFw = fopen_c("w.tx", "w");

    while (1)
    {
        if ((c = getc_c(pFr)) != EOF)
        {
            // perror("");
            // printf("perror: %d", ferror(pFr));
            fputc(c, pFw);
            // printf("%c", c);
        }
        else if (c == EOF)
        {
            fprintf(pFw, "\nc = %d : exit while()"); // c = -72538984
            break;
        }
    }
}
