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
    int n = 0;
    pFile = fopen_c("myfile.txt", "rb", __FILE__, __LINE__);
    if (pFile == NULL)
        perror("Error opening file");
    else
    {
        while (fgetc_c(pFile, __FILE__, __LINE__) != EOF)
        {
            ++n;
        }
        if (feof(pFile))
        {
            puts_c("End-of-File reached.", __FILE__, __LINE__);
            printf("Total number of bytes read: %d\n", n);
        }
        else
            puts_c("End-of-File was not reached.", __FILE__, __LINE__);
        fclose_c(pFile, __FILE__, __LINE__);
    }
    return 0;
}

// Этот код открывает файл под названием myfile.txt, и подсчитывает количество символов,
//  которые он содержит, читая их все один за другим. Программа проверяет,
//  был ли достигнут конец файла, и если да, то выводит общее количество прочитанных байтов.
