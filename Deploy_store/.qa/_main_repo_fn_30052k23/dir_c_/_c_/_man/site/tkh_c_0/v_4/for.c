#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

int main(int argc, char const *argv[])
{
    // for (unsigned int i = -5; i < 5; i++) NOT work
    for (int i = -5; i < 5; i++)
    {
        printf("%d ", i); // -5 -4 -3 -2 -1 0 1 2 3 4
    }
    printf("\n");

    return 0;
}