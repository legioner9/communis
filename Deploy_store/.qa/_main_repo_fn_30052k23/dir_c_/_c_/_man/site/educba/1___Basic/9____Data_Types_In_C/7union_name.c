#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>

//lc_

#define N 6

union code
{
    int digit;
    char letter;
};
 
int main(void)
{
    union code id;
    id.digit = 120;
    printf("%d - %c \n", id.digit, id.letter);  // 120 - x
    printf("%d - %d \n", id.digit, id.letter);  // 120 - 120
     
    id.letter = 87;
    printf("%d - %c \n", id.digit, id.letter);  // 87 - W
     
    return 0;
}