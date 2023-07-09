#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>

// lc_

#define N 6

int main(int argc, char const *argv[])
{
    FILE *ptrFile = fopen("file.txt", "w+");
    char buffer[27];

    for (int counter = 'A'; counter <= 'Z'; counter++)
        fputc(counter, ptrFile); // записать символ в файл

    rewind(ptrFile);               // установить внутренний указатель файла в начало
    fread(buffer, 1, 26, ptrFile); //считать из файла 26 символов и сохранить в буфер
    fclose(ptrFile);               //закрыть файл
    buffer[26] = '\0';             //звершить строку
    puts(buffer);                  //вывод на экран
    return 0;
}