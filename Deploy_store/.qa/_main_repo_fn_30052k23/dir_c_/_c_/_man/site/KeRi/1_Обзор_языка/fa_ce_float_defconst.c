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

#define LOWER 0
#define UPPER 300
#define STEP 20

int main(int argc, char const *argv[])
{
    // °С = (5/9)(°F-32)
    float fahrenheit, celsius;

    fahrenheit = LOWER;

    while (fahrenheit <= UPPER)
    {
        celsius = (5.0 / 9.0) * (fahrenheit - 32.0);
        printf("%3.1f\t%6.2f\n", fahrenheit, celsius);
        // 0.0     -17.78
        // 20.0     -6.67
        fahrenheit = fahrenheit + STEP;
    }

    return 0;
}