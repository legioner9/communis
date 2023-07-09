#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>
#include <math.h>
#include <errno.h>
#include <unistd.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"

#define N 6

int main(int argc, char const *argv[])
{
    FILE *pFile;

    pFile = fopen("myfile.txt", "w");

    setvbuf(pFile, NULL, _IOFBF, 1024);

    // File operations here

    fclose(pFile);

    return 0;
}

// BUFSIZ размер буфера составляет не менее BUFSIZ 
// _IOFBF	Полная буферизация: при выводе данные записываются после заполнения буфера (или промывки). 
// При вводе буфер заполняется, когда запрашивается операция ввода и буфер пуст.
// _IOLBF	Буферизация строк: при выводе данные записываются, когда символ новой строки вставляется 
// в поток или когда буфер заполнен (или очищен), независимо от того, что происходит первым. При вводе 
// буфер заполняется до следующего символа новой строки, когда запрашивается операция ввода и буфер пуст.
// _IONBF	Нет буферизации: буфер не используется. Каждая операция ввода-вывода записывается как можно 
// скорее. В этом случае параметры буфера и размера игнорируются.

// В этом примере файл называется myfile.txt создается и запрашивается полный буфер размером 1024 байта 
// для связанного потока, поэтому данные, выводимые в этот поток, 
// должны записываться в файл только при каждом заполнении 1024-байтового буфера.
