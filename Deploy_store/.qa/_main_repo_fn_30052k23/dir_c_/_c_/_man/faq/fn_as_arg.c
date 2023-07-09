#include <stdio.h>

int sum(int a, int b)
{
    return a + b;
}

void prn(int x)
{
    printf("%d\n", x);
}

int main()
{
    prn(sum(2, 3));
    return 0;
}