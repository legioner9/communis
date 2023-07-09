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
    float fahrenheit, celsius;
    int lower, upper, step;

    lower = 0;
    upper = 300;
    step = 20;

    fahrenheit = lower;

    while (fahrenheit <= upper)
    {
        celsius = (5.0 / 9.0) * (fahrenheit - 32.0);
        printf("%3.1f\t%6.2f\n", fahrenheit, celsius);
        // 0.0     -17.78
        // 20.0     -6.67
        fahrenheit = fahrenheit + step;
    }

    return 0;
}