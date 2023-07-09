#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>

// lc_

#define N 6

int main(int argc, char const *argv[])
{
    // %a	Шестнадцатеричное в виде 0xh.hhhhp+d (только С99)
    // %A	Шестнадцатеричное в виде 0Xh.hhhhP+d (только С99)
    // %c	Символ
    // %d	Десятичное целое со знаком
    // %i	Десятичное целое со знаком
    // %e	Экспоненциальное представление ('е' на нижнем регистре)
    // %E	Экспоненциальное представление ('Е' на верхнем регистре)
    // %f	Десятичное с плавающей точкой
    // %g	В зависимости от того, какой вывод будет короче, используется %е или %f
    // %G	В зависимости от того, какой вывод будет короче, используется %Е или %F
    // %o	Восьмеричное без знака
    // %s	Строка символов
    // %u	Десятичное целое без знака
    // %x	Шестнадцатеричное без знака (буквы на нижнем регистре)
    // %X	Шестнадцатеричное без знака (буквы на верхнем регистре)
    // %p	Выводит указатель
    // %n	Аргумент, соответствующий этому спецификатору, должен быть указателем на целочисленную переменную. Спецификатор позволяет сохранить в этой переменной количество записанных символов (записанных до того места, в котором находится код %n)
    // %%	Выводит знак %

    // char - единичный байт, который может содержать один символ из допустимого символьного набора;
    // int - целое, обычно отображающее естественное представление целых в машине;
    // float - число с плавающей точкой одинарной точности;
    // double - число с плавающей точкой двойной точности.

    int n = 5;
    int *p = &n;

    // printf("()c = %\n", 'char');
    // printf("()1233 = %\n", 1233);
    // printf("()-1293 = %\n", -1293);
    // printf("()weghr = %\n", "weghr");
    // printf("()32.44 = %\n", 32.44);
    // printf("()7733e-3 = %\n", 7733e-3);
    // printf("()p = %\n", p);

    printf("\nConversion specifiers : %%a\n"); // формат «%a» ожидает аргумент типа «double»
    printf("(a)c = %a\n", 'h');                // int
    printf("(a)1233 = %a\n", 1233);            // int
    printf("(a)-1293 = %a\n", -1293);          // int
    printf("(a)weghr = %a\n", "weghr");        // char*
    printf("(a)32.44 = %a\n", 32.44);          // double
    printf("(a)7733e-3 = %a\n", 7733e-3);      // double
    printf("(a)p = %a\n", p);                  // int*
    printf("\nConversion specifiers : %%c\n"); // формат «%c» ожидает аргумент типа «int»
    printf("(c)c = %c\n", 'c');                // int
    printf("(c)1233 = %c\n", 1233);            // int
    printf("(c)-1293 = %c\n", -1293);          // int
    printf("(c)weghr = %c\n", "weghr");        // char*
    printf("(c)32.44 = %c\n", 32.44);          // double
    printf("(c)7733e-3 = %c\n", 7733e-3);      // double
    printf("(c)p = %c\n", p);                  // int*
    printf("\nConversion specifiers : %%d\n"); // формат «%d» ожидает аргумент типа «int»
    printf("(d)c = %d\n", 'c');                // int
    printf("(d)1233 = %d\n", 1233);            // int
    printf("(d)-1293 = %d\n", -1293);          // int
    printf("(d)weghr = %d\n", "weghr");        // char*
    printf("(d)32.44 = %d\n", 32.44);          // double
    printf("(d)7733e-3 = %d\n", 7733e-3);      // double
    printf("(d)p = %d\n", p);                  // int*
    printf("\nConversion specifiers : %%i\n"); // формат «%i» ожидает аргумент типа «int»
    printf("(i)c = %i\n", 'c');                // int
    printf("(i)1233 = %i\n", 1233);            // int
    printf("(i)-1293 = %i\n", -1293);          // int
    printf("(i)weghr = %i\n", "weghr");        // char*
    printf("(i)32.44 = %i\n", 32.44);          // double
    printf("(i)7733e-3 = %i\n", 7733e-3);      // double
    printf("(i)p = %i\n", p);                  // int*
    printf("\nConversion specifiers : %%e\n"); // формат «%e» ожидает аргумент типа «double»
    printf("(e)c = %e\n", 'c');                // int
    printf("(e)1233 = %e\n", 1233);            // int
    printf("(e)-1293 = %e\n", -1293);          // int
    printf("(e)weghr = %e\n", "weghr");        // char*
    printf("(e)32.44 = %e\n", 32.44);          // double
    printf("(e)7733e-3 = %e\n", 7733e-3);      // double
    printf("(e)p = %e\n", p);                  // int*
    printf("\nConversion specifiers : %%g\n"); // формат «%g» ожидает аргумент типа «double»
    printf("(g)c = %g\n", 'c');                // int
    printf("(g)1233 = %g\n", 1233);            // int
    printf("(g)-1293 = %g\n", -1293);          // int
    printf("(g)weghr = %g\n", "weghr");        // char*
    printf("(g)32.44 = %g\n", 32.44);          // double
    printf("(g)7733e-3 = %g\n", 7733e-3);      // double
    printf("(g)p = %g\n", p);                  // int*
    printf("\nConversion specifiers : %%o\n"); // формат «%o» ожидает аргумент типа «unsigned int»
    printf("(o)c = %o\n", 'c');                // int
    printf("(o)1233 = %o\n", 1233);            // int
    printf("(o)-1293 = %o\n", -1293);          // int
    printf("(o)weghr = %o\n", "weghr");        // char*
    printf("(o)32.44 = %o\n", 32.44);          // double
    printf("(o)7733e-3 = %o\n", 7733e-3);      // double
    printf("(o)p = %o\n", p);                  // int*
    printf("\nConversion specifiers : %%s\n"); // формат «%s» ожидает аргумент типа «char *»
    // printf("(s)c = %s\n", 'c');                // int
    // printf("(s)1233 = %s\n", 1233);            // int
    // printf("(s)-1293 = %s\n", -1293);          // int
    printf("(s)weghr = %s\n", "weghr");        // char*
    // printf("(s)32.44 = %s\n", 32.44);          // double
    // printf("(s)7733e-3 = %s\n", 7733e-3);      // double
    printf("(s)p = %s\n", p);                  // int*
    printf("\nConversion specifiers : %%u\n"); // формат «%u» ожидает аргумент типа «unsigned int»
    printf("(u)c = %u\n", 'c');                // int
    printf("(u)1233 = %u\n", 1233);            // int
    printf("(u)-1293 = %u\n", -1293);          // int
    printf("(u)weghr = %u\n", "weghr");        // char*
    printf("(u)32.44 = %u\n", 32.44);          // double
    printf("(u)7733e-3 = %u\n", 7733e-3);      // double
    printf("(u)p = %u\n", p);                  // int*
    printf("\nConversion specifiers : %%x\n"); // формат «%x» ожидает аргумент типа «unsigned int»
    printf("(x)c = %x\n", 'c');                // int
    printf("(x)1233 = %x\n", 1233);            // int
    printf("(x)-1293 = %x\n", -1293);          // int
    printf("(x)weghr = %x\n", "weghr");        // char*
    printf("(x)32.44 = %x\n", 32.44);          // double
    printf("(x)7733e-3 = %x\n", 7733e-3);      // double
    printf("(x)p = %x\n", p);                  // int*
    printf("\nConversion specifiers : %%p\n"); // формат «%p» ожидает аргумент типа «void *»
    printf("(p)c = %p\n", 'c');                // int
    printf("(p)1233 = %p\n", 1233);            // int
    printf("(p)-1293 = %p\n", -1293);          // int
    printf("(p)weghr = %p\n", "weghr");        // char*
    printf("(p)32.44 = %p\n", 32.44);          // double
    printf("(p)7733e-3 = %p\n", 7733e-3);      // double
    printf("(p)p = %p\n", p);                  // int*
    printf("\nConversion specifiers : %%n\n"); // формат «%n» ожидает аргумент типа «int *»
    // printf("(n)c = %n\n", 'c');                // int
    // printf("(n)1233 = %n\n", 1233);            // int
    // printf("(n)-1293 = %n\n", -1293);          // int
    // printf("(n)weghr = %n\n", "weghr");        // char*
    // printf("(n)32.44 = %n\n", 32.44);          // double
    // printf("(n)7733e-3 = %n\n", 7733e-3);      // double
    printf("(n)p = %n\n", p);                  // int*

    return 0;
}