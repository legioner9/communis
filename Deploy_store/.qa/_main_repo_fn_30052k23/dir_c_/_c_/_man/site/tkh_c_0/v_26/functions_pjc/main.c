#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

//

#include "lib/lc_0.h"
// void fill_rand_lc_0_MxV_Ac_Ar(int max_value, int argc, int arr[]);
// void pr_int_arr_lc_0_Ac_Ar(int argc, int arr[]);
// int is_prime_lc_0(int a);



#define N 6

void A();
void B();
void C();

int main(int argc, char* argv[])
{
    printf("main() called.\n");
    A();
    printf("main() returns.\n");

    return 0;
}

void A()
{
    printf("  A() called.\n");
    B();
    printf("  A() returns.\n");
}

void B()
{
    printf("    B() called.\n");
    C();
    printf("    B() returns.\n");
}

void C()
{
    printf("      C() called.\n");
    printf("      C() returns.\n");
}