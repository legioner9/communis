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

    int sign = (step > 0) ? 1 : -1;
    while (sign * x < sign * stop)
    {
        printf("%d\n", x);
        x += step;
    }
    printf("\n");

    return 0;
}