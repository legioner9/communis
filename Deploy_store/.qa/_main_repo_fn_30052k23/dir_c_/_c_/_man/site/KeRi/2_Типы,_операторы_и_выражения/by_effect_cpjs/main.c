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

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"

#define N 6

int main(int argc, char const *argv[])
{
    /* code */

    // int i = 1;
    // int A[5] = {};
    // // A[i] = ++i; // by_effect
    // A[i] = i; // by_effect
    // pr_int_arr_lc_0_Ac_Ar(5, A);
    // double d = 5.;
    // printf("%f -- %f", d++, pow(d, 2.)); // by_effect

    double x = 10.0, y = 0.0;

    do
    {
        printf("%f\n", pow(x, y));
        y++;
    } while (y < 11.0);

    return 0;
}
