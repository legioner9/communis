#include <stdio.h>

int main(int argc, char const *argv[])
{
    int a = 5;
    double d = 4.;
    char *str = "string";
    char name[20] = "name";

    printf("%d\n %f\n %s\n %s\n", a, d, str, name);
    return 0;
}