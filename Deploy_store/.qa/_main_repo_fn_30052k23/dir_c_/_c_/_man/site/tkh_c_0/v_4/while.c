#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

int main(int argc, char const *argv[])
{
    int i = 0;
    while (i < 10)
    {
        printf("%d ", i++);
    }
    printf("\n");

    return 0;
}