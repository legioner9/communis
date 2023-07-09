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

    printf("printf %%s:\n");
    char str[] = "fwqferf";
    printf("(s)fwqferf = %s\n", str);

    printf("\n");
    printf("type char:\n");
    char c = 'j';
    printf("(c)j = %c\n", c);
    printf("(d)j = %d\n", c);
    printf("(x)j = %x\n", c);
    printf("(o)j = %o\n", c);
    printf("(u)j = %u\n", c);
    // printf("(s)j = %s\n", c); формат «%s» ожидает аргумент типа «char *», но аргумент 2 имеет тип «int» [-Wformat=]
    // printf("(e)j = %e\n", c); формат «%e» ожидает аргумент типа «double», но аргумент 2 имеет тип «int» [-Wformat=]

    printf("\n");
    printf("printf %%d:\n");

    printf("(ld)123l = %ld\n", 123l);

    printf("\n");
    printf("Exponential notation:\n");
    printf("(f)43e5 = %f\n", 43e5);
    printf("(a)43e5 = %a\n", 43e5);
    printf("(A)43e5 = %A\n", 43e5);

    printf("\n");
    printf("Conversion specifiers : %%e");
    printf("(e)12344000. = %e\n", 12344000.);
    printf("(e)0.000434 = %e\n", 0.000434);
    printf("(e)434. = %e\n", 434.);
    printf("(e)434e2 = %e\n", 434e2);

    printf("\n");
    printf("Conversion specifiers : %%E\n");
    printf("(E)12344000. = %E\n", 12344000.);
    printf("(E)0.000434 = %E\n", 0.000434);
    printf("(E)434. = %E\n", 434.);

    // printf("()c = %\n", 'c');
    // printf("()1233 = %\n", 1233);
    // printf("()-1293 = %\n", -1293);
    // printf("()weghr = %\n", "weghr");
    // printf("()32.44 = %\n", 32.44);
    // printf("()7733e-3 = %\n", 7733e-3);
    // printf("()p = %\n", p);


    printf("\nConversion specifiers : %%a\n");
    printf("\nConversion specifiers : %%c\n");
    printf("\nConversion specifiers : %%d\n");
    printf("\nConversion specifiers : %%f\n");
    printf("\nConversion specifiers : %%g\n");
    printf("\nConversion specifiers : %%o\n");
    printf("\nConversion specifiers : %%s\n");
    printf("\nConversion specifiers : %%u\n");
    printf("\nConversion specifiers : %%x\n");
    printf("\nConversion specifiers : %%p\n");
    printf("\nConversion specifiers : %%n\n");

    printf("\n");
    printf("printf %%f:\n");
    printf("(f)71e-6 = %f\n", 71e-6);
    printf("(0.f)71e-6 = %0.f\n", 71e-6);
    printf("(.10f)71e-6 = %0.f\n", 71e-6);
    printf("(e)0.000071 = %e\n", 0.000071);
    printf("(E)0.000071 = %E\n", 0.000071);
    printf("(.2E)0.000071 = %.3E\n", 0.000071);

    printf("\n");
    printf("(d)574u = %d\n", 574u);

    printf("\n");
    printf("printf %%f:\n");
    printf("(f)234.f = %f\n", 234.f);
    printf("(.2f)234.f = %.2f\n", 234.f);

    printf("\n");
    printf("printf %%c:\n");
    printf("(d)017 = %d\n", 017);
    printf("(o)15 = %o\n", 15);

    printf("\n");
    printf("printf %%c:\n");
    printf("(d)0x1f = %d\n", 0x1f);
    printf("(x)31 = %x\n", 31);
    printf("(X)31 = %X\n", 31);

    return 0;
}