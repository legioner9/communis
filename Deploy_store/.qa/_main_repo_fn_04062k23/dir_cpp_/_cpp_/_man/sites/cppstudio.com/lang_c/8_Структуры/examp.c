// Структуры
#include <stdio.h>

struct users
{
    int age;
};

struct users ivan;

int main(int argc, char const *argv[])
{
    ivan.age = 5;
    printf("Age Ivan = %d", ivan.age);
    return 0;
}
