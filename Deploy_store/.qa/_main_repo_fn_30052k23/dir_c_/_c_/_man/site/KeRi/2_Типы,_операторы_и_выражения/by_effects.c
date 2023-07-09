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

#include "lc_0.h"
// void pr_int_arr_lc_0_Ac_Ar(int argc, int arr[]);

// lc_

#define N 6

int main(int argc, char const *argv[])
{
    /* code */

    int i = 1;
    int A[5] = {};
    // A[i] = ++i; // by_effect
    A[i] = i; // by_effect
    // pr_int_arr_lc_0_Ac_Ar(5, A);
    double d = 5.;
    printf("%f -- %f", d + d, pow(d , 2.)); // by_effect

    return 0;
}