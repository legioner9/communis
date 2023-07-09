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
    int i = 0; // Счетчик секунд

    // Бесконечный цикл
    while (1)
    {
        // Вывод строки (строка записывается в буфер)
        printf("\r%d", i);
        //Сброс буфера (строка отобразится в консоле)
        fflush(stdout);
        //Задержка на 1 секунду
        sleep(1);
        //Увеличение счетчика секунд на 1
        i++;
    }
    return 0;
}
