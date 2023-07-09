// Функции

#include <stdio.h>

int mul(int arg1, int arg2);

int main(int argc, char const *argv[])
{
    int arg1;
    printf("Enter arg1\n");
    scanf("%d", &arg1);
    int arg2;
    printf("Enter arg2\n");
    scanf("%d", &arg2);

    printf("Result is : %d\n", mul(arg1, arg2));
    return 0;
}

int mul(int arg1, int arg2)
{
    return arg1 * arg2;
}
