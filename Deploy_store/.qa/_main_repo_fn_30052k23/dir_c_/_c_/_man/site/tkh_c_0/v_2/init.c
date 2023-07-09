#include <stdio.h>

int main(int argc, char const *argv[])
{
    printf("wert"
           "sdcsa"
           "qwefwqer\n %s\n"); // soft error - undefined %s

    int d = 4;
    // printf("dewed %s", d); // hard error - Ошибка сегментирования
    printf("d = %d\n", d);

    int age;
    printf("Enter age: ");
    scanf("%s", age); // soft error type inconsistency
    printf("\nAge: %s", age); // Age: (null)

    return 0;
}