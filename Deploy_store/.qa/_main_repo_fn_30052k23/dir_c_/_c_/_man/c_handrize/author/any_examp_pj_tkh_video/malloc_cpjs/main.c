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

int npt(int *pt);

int main(int argc, char const *argv[])
{
    int N;
    printf("Enter size bit: ");
    scanf("%d", &N);
    int *A = (int *)malloc(N);

    npt_lc_1_IntPt(A);
    for (size_t i = 0; i < N; i++)
    {
        A[i] = i;
        printf("%d\n", A[i]);
    }
    free(A);
    return 0;
}

int npt(int *pt)
{
    if (NULL == pt)
    {
        printf("alloc FAILs");
        exit(1);
    }
}