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
    union code id = {45};
    union code * p_id = &id;
    printf("%d \n", p_id->digit);    // 45
    p_id->digit= 89;
    printf("%d \n", id.digit);      // 89
     
    return 0;
}