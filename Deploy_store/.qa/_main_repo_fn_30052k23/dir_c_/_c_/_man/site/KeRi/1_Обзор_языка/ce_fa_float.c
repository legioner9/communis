#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>

// lc_

#define N 6

int main(int argc, char const *argv[])
{
    // °С = (5/9)(°F-32)
    // °F = °C*(9/5)+ 32
    float fahrenheit, celsius;
    int lower, upper, step;

    lower = -17;
    upper = 148;
    step = 11;

    celsius = lower;

    while (celsius <= upper)
    {
        fahrenheit = celsius*(9.0/5.0)+32;
        printf("%3.1f\t%6.3f\n", celsius, fahrenheit);
        celsius += step; 
    }

    return 0;
}