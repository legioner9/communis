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

#define N 6

int main(int argc, char const *argv[])
{
    // problem: all res to res.tx for tested
    char str[50];
    FILE *pRes = fopen_c("res.tx", "wt", __FILE__, __LINE__);

    // Открытие файла
    fputs_c("Открытие файла: \n", pRes, __FILE__, __LINE__);
    FILE *mf = fopen_c("test.tx", "r +", __FILE__, __LINE__);

    fputs_c(" Установка позиции на начало файла: \n", pRes, __FILE__, __LINE__);
    fseek_c(mf, 0, SEEK_SET, __FILE__, __LINE__);

    //Чтение строки из файла
    fputs_c(" Считываем строку: \n", pRes, __FILE__, __LINE__);
    fgets_c(str, sizeof(str), mf, __FILE__, __LINE__);
    fprintf(pRes, "%s\n", str);

    //Установка текущей позиции
    fputs_c(" Установка позиции на пятый байт: \n", pRes, __FILE__, __LINE__);
    fseek_c(mf, 5, SEEK_SET, __FILE__, __LINE__);

    //Чтение строки из файла
    fputs_c(" Считываем строку: \n", pRes, __FILE__, __LINE__);

    fgets_c(str, sizeof(str), mf, __FILE__, __LINE__);
    fprintf(pRes, "%s\n", str);
    // Закрытие файла
    fputs_c("Закрытие файла: \n", pRes, __FILE__, __LINE__);
    fclose_c(mf, __FILE__, __LINE__);
    fprintf(pRes, "выполнено\n");
    fclose_c(pRes, __FILE__, __LINE__);

    // char buf[1000];

    // fgets_c(buf, sizeof(buf), pRes);

    // fputs_c(buf, stdout);
}
