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
    fpos_t pos;

    FILE *pFr = fopen_s("r.tx", "r");
    FILE *pFw = fopen_s("w.tx", "w");
    while (1)
    {

        if ((c = getc(pFr)) != EOF)
        {

            fgetpos(pFr, &pos); //Содержимое объекта fpos_t не предназначено для прямого чтения,\
             а только для использования в качестве аргумента в вызове fsetpos.
            // fputc(c, pFw);
            fprintf(pFw, "%c : %d\n", c, pos);
        }
        else if (c == EOF)
        {
            fprintf(pFw, "\nc = %d : exit while()\n"); // c = -72538984
            break;
        }
    }
}
