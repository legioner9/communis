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

int **cr_2dArr_dnm(size_t N, size_t M)
{
    int **A = (int **)malloc(N * sizeof(int *));
    ndpt_lc_1_IntPt(A);
    for (int i = 0; i < N; i++)
    {
        *(A + i) = (int *)malloc(M * sizeof(int));
        // A[i] = (int *)malloc(M * sizeof(int));
        npt_lc_1_IntPt(*(A + i));
    }
    return A;
}

void destr_2dArr_dnm(int **A, size_t N)
{
    for (size_t i = 0; i < N; i++)
    {
        free(*(A + i));
    }
    free(A);
}

void fill_2dArr_dnm(int **A, size_t N, size_t M)
{
    int num = 0;
    for (size_t i = 0; i < N; i++)
    {
        for (size_t j = 0; j < M; j++)
        {
            *(*(A + i) + j) = num;
            num++;
        }
    }
}

void prn_2dArr_dnm(int **A, size_t N, size_t M)
{
    for (size_t i = 0; i < N; i++)
    {
        for (size_t j = 0; j < M; j++)
        {
            int item = *(*(A + i) + j);
            // int item = A[i][j];
            printf("%4d", item);
        }
        printf("\n");
    }
}

int main(int argc, char const *argv[])
{
    int height = 5;
    int width = 4;
    int **A = cr_2dArr_dnm(height, width);
    fill_2dArr_dnm(A, height, width);
    prn_2dArr_dnm(A, height, width);
    destr_2dArr_dnm(A, height);
    // prn_2dArr_dnm(A,height, width);
    return 0;
}
