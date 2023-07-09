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
    char buf[5];
    char str[100];
    printf("str = %s, sizeof(str) = %d\n", str, sizeof(str));
    FILE *pF = fopen_c("t.tx", "w+", __FILE__, __LINE__);
    setvbuf(pF, buf, _IOFBF, 5);
    fputs_c("qwert123456", pF, __FILE__, __LINE__);
    prpos_(pF, "1");
    fseek_c(pF, 0, SEEK_SET, __FILE__, __LINE__);
    prpos_(pF, "2");
    int n = 0;
    while (n < 3)
    {
        fgets_c(str, 5, pF, __FILE__, __LINE__);
        printf("str = %s\n", str);
        prpos_(pF, "3");
        n++;
    }

    return 0;
}
