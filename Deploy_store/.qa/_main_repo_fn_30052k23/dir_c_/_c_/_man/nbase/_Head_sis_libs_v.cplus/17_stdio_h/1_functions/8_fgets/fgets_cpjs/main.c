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

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"

#define N 6

int main(int argc, char const *argv[])
{
    FILE *pFile;
    int n;
    char name[100];

    pFile = fopen_s("myfile.txt", "w");
    for (n = 0; n < 3; n++)
    {
        puts("please, enter a name: ");
        fgets(name, 100, stdin);
        fprintf(pFile, "Name %d [%-10.10s]\n", n + 1, name);
    }
    fclose(pFile);

    return 0;
}
