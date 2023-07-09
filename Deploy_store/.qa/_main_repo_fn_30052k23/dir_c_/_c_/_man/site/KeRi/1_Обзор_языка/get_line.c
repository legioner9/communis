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

#define MAXLENGTH 100

int main(int argc, char const *argv[])
{
    char str[MAXLENGTH];
    int c;
    while (c != '\n')
        for (int i = 0; i < MAXLENGTH; i++)
        {
            c = getchar();
            printf("%c", c);
            str[i] = c;
        }
    printf("str = %s", str);
    return 0;
}