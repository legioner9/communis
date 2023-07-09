#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

// lc_

#define N 6

int main(int argc, char const *argv[])
{

    time_t current_time;
    printf("current_time = %ld\n", current_time);
    time(&current_time);
    printf("current_time = %ld\n", current_time);
    printf("ctime(&): current_time = %s\n", ctime(&current_time));

    return 0;
}