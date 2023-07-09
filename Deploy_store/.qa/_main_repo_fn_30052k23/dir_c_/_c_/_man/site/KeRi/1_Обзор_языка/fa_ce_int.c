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
    int fahrenheit, celsius;
    int lower, upper, step;

    lower = 0;
    upper = 300;
    step = 20;

    fahrenheit = lower;

    while (fahrenheit <= upper)
    {
        celsius = 5 * (fahrenheit - 32) / 9;
        printf("%4d%6d\n", fahrenheit, celsius);

        //    0   -17
        //   20    -6
        fahrenheit = fahrenheit + step;
    }
    printf("\tfvv\tvdsaf\n\tcwwqewefwefwqef\tasfdasddfweqferfwe");
    return 0;
}