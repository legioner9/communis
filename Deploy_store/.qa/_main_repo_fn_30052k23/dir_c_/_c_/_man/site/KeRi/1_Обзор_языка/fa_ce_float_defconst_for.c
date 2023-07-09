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
    for (int fahrenheit = LOWER; fahrenheit < UPPER; fahrenheit += STEP)
        printf("%d\t%.2f\n", fahrenheit, 5.0 / 9.0 * (fahrenheit - 32));

    return 0;
}