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
    pFile = fopen_c("myfile.txt", "wt", __FILE__, __LINE__);
    fprintf(pFile, "fclose example");
    fclose_c(pFile, __FILE__, __LINE__);
    return 0;
}

// Этот простой код создает новый текстовый файл, затем записывает в него предложение, а затем закрывает его.