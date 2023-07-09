//## ###Clock() In C

#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

// lc_

#define N 6

clock_t wait_getchar()
{
    printf("Press enter_button \n");
    while (1)
    {
        clock_t in_1 = clock();
        printf("in_1 = %ld\n", in_1);

        if (getchar())
        {
            clock_t in_2 = clock();
            printf("in_2 = %ld\n", in_2);
            return clock();
        }
    }
    printf("wait_getchar() gets an end here.. \n");
}

int main(int argc, char const *argv[])
{
    // clock_t t_1, t_2;
    clock_t t_1 = clock();
    printf("t_1 = %ld\n", t_1);
    clock_t t_in = wait_getchar();
    printf("t_in = %ld\n", t_in);
    clock_t t_2 = clock();
    printf("t_2 = %ld\n", t_2);

    printf("t_1 - t_2 = %ld microseconds \n", t_2 - t_1);
    printf("t_1 - t_in = %ld microseconds \n", t_in - t_1);
    return 0;
}
