#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

#include "lc_0.h"

#define N 6

int main(int argc, char const *argv[])
{
	int A[N] = {};
	fill_rand_lc_0_MxV_Ac_Ar(10, N, A);
	pr_int_arr_lc_0_Ac_Ar(N, A);
	return 0;
}