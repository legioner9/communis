#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"

#define MATRIX_WIGTH 4
#define MATRIX_HEIGHT 5

void prn_2dArr(int A[][MATRIX_WIGTH], int N)
{
    for (size_t i = 0; i < N; i++)
    {
        for (size_t j = 0; j < MATRIX_WIGTH; j++)
        {
            printf("%4d", A[i][j]);
        }
        printf("\n");
    }
}

void prn_2dArr_ptr(int A[][MATRIX_WIGTH], int N)
{
    for (int *p = (int *)A; p < (int *)A + N * MATRIX_WIGTH; p++)
    {
        printf("%*d", 3, *p);
    }
}

void fill_2dArr(int A[][MATRIX_WIGTH], int N)
{
    int num = 0;
    for (size_t i = 0; i < N; i++)
    {
        for (size_t j = 0; j < MATRIX_WIGTH; j++)
        {
            A[i][j] = num;
            num++;
        }
    }
}

int main(int argc, char const *argv[])
{
    int A2ds[MATRIX_HEIGHT][MATRIX_WIGTH];
    // int num = 0;
    // for (size_t i = 0; i < MATRIX_HEIGHT; i++)
    // {
    //     for (size_t j = 0; j < MATRIX_WIGTH; j++)
    //     {
    //         A2ds[i][j] = num;
    //         num++;
    //     }
    // }

    fill_2dArr(A2ds, MATRIX_HEIGHT);

    prn_2dArr(A2ds, MATRIX_HEIGHT);

    prn_2dArr_ptr(A2ds, MATRIX_HEIGHT);

    // for (size_t i = 0; i < MATRIX_HEIGHT; i++)
    // {
    //     for (size_t j = 0; j < MATRIX_WIGTH; j++)
    //     {
    //         printf("%5d", A2ds[i][j]);
    //     }
    //     printf("\n");
    // }

    return 0;
}
