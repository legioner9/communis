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
    FILE *pFw = fopen_c("w.tx", "w+", __FILE__, __LINE__);
    char bufr[] = {'a', 's', 't', '.'}; // ast

    fputs_c("This is buffer :\n", stdout, __FILE__, __LINE__);
    fwrite_c(bufr, sizeof(char), sizeof(bufr), stdout, __FILE__, __LINE__);

    // long int l_size = ftell_c(pFw, __FILE__, __LINE__);
    // fprintf(stdout, "l_size = %ld\n", l_size);
    // rewind(pFw);

    char bufw[100];

    // char *bufw;
    // bufw = (char *)malloc_c(sizeof(char) * l_size, __FILE__, __LINE__);
    // // size_t result = fread_c(bufw, 1, l_size, pFw, __FILE__, __LINE__);
    // size_t result = fread_c(bufw, 1, l_size, pFw, __FILE__, __LINE__);

    // int n;

    // do
    // {
    //     fread_c(bufw, sizeof(char), sizeof(bufw), stdin, __FILE__, __LINE__);

    // } while (bufw[0] != '.');

    // // fwrite_c(bufw, sizeof(char), sizeof(bufr), stdout, __FILE__, __LINE__);
    // fwrite_c(bufw, sizeof(char), sizeof(bufr), stdout, __FILE__, __LINE__);

    int c;
    puts("Enter text from stdin:");
    do
    {
        c = getchar_c(__FILE__, __LINE__);
        putchar_c(c, __FILE__, __LINE__);
    } while (c != '.');
    return 0;
}
