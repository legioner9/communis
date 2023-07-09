#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

int main(int argc, char const *argv[])
{
    int start, stop, step;
    printf("start, stop, step: \n");
    scanf("%d%d%d", &start, &stop, &step);

    printf("Result:\n");
    int x = start;
    while (x < stop)
    {
        printf("%d\n", x);
        x += step;
    }
    printf("\n");

    return 0;
}