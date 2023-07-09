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

// FILE *fopen_s(const char *path, const char *mode)
// {
//     FILE *pF;
//     if ((pF = fopen(path, mode)) != NULL)
//     {
//         return pF;
//     }
//     else if (pF == NULL)
//     {
//         printf("fopen FALSE: exit(1)\n");
//         exit(1);
//     }
// }

int main(int argc, char const *argv[])
{
    if (argc == 2)
    {
        printf("argv[1] = %s\n", argv[1]);
    }

    FILE *pF;
    pF = fopen_c("a_.te", argv[1], __FILE__, __LINE__);

    fputs("first fputs\n", pF);

    return 0;
}
