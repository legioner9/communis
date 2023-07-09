#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

int main(int argc, char const *argv[])
{
    printf("Enter (1 or 2) a(int)\n");
    int a;
    scanf("%d", &a);

    switch (a)
    {
    case 1:
        printf("One");
        break;
    case 2:
        printf("Two");
        break;
    default:
        printf("Variable \"a\" is out of range");
    };
    printf("\n");
}