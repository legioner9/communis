#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"

// #define N 6

int main(int argc, char const *argv[])
{
    int N = 4;
    int M = 5;
    int P = N * M;
    int *A = malloc(P * sizeof(int));

    for (size_t i = 0; i < P; i++)
    {
        *(A + i) = i;
    }

    for (size_t i = 0; i < N; i++)
    {
        for (size_t j = 0; j < M; j++)
        {
            printf("%4d", *(A + i * M + j));
        }
        printf("\n");
    }
}
