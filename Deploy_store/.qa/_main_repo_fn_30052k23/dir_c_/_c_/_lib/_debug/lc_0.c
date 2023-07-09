#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

#define DEBUG false

/*
*()  : Pt() as *arr : PtAr
arr  : Ar
argc : Ac
max value : MxV
min value : MnV

*/

void fill_rand_lc_0_MxV_Ac_Ar(int max_value, int argc, int arr[])
{
    if (DEBUG)
        printf("fill_rand_lc_0_MxV_Ac_Ar\n");
    srand(time(NULL));
    for (int i = 0; i < argc; i++)
    {
        arr[i] = rand() % max_value;
    }
}

void pr_int_arr_lc_0_Ac_Ar(int argc, int arr[])
{
    if (DEBUG)
        printf("pr_int_arr_lc_0_Ac_Ar\n");
    for (int i = 0; i < argc; i++)
    {
        printf("%4d ", arr[i]);
    }
    printf("\n");
}