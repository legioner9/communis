#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>

#include <stdlib.h>

// lc_

#define N 6

int main(int argc, char const *argv[])
{
    const char arr_char[] = "ccwefq reqew \n\tasdc \tdsaca\n";
    const char arr_char_2[] = "ccwefq\freqew asdc dsaca";
    const char arr_char_3[] = "ccwefq \vreqew \vasdc \vdsaca";

    printf("%s\n", arr_char);
    printf("%s\n", arr_char_2);
    printf("%s\n", arr_char_3);

    printf("%i\n", -55);  // -55
    printf("%e\n", 55E4); // 5.500000e+05
    printf("%g\n", 55E4); // 550000
    printf("%d\n", 0x4f); // 79 (4*16 + 15 = 79)
    printf("%x\n", 0x4f); // 4f
    printf("%x\n", 79);   // 4f (79 = 4f)

    printf("%d\n", 012); // 10 (1*8 + 2 = 10)
    printf("%o\n", 012); // 12
    printf("%o\n", 10);  // 12 (10 = 012)

    printf("%d\n", 0b01110); // 14 (0+2*(1 + 2*(1 + 2*(1 + 2*(0 + 2*0))))  = 012)
    printf("%x\n", 0b01110); // 12 (10 = 012)
    printf("%o\n", 0b01110); // 12 (10 = 012)

    char str[10];
    itoa(100, str, 2);
    printf("%s\n", str);

    printf("%f\n", 0.5E15); // 500000000000000.000000

    return 0;
}