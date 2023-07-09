#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>

int main(int argc, char const *argv[])
{
    int x;
    scanf("%d", &x);
    int m = x;
    while (x != 77)
    {
        m = m > x ? m : x;
        scanf("%d", &x);
    }
    printf("Max =  %d\n", m );

    return 0;
}