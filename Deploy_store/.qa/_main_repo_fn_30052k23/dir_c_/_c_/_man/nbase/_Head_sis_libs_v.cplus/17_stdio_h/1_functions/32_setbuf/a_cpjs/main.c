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
    char buf[BUFSIZ];
    char str[100];
    FILE *pF_1 = fopen_c("myfile.txt", "w+", __FILE__, __LINE__);
    setbuf(pF_1, buf);
    fputs_c("Buffered stream", pF_1, __FILE__, __LINE__);
    prpos_(pF_1, "1");
    fseek_c(pF_1, 0, SEEK_SET, __FILE__, __LINE__);
    prpos_(pF_1, "2");
    fgets_c(str, 100, pF_1, __FILE__, __LINE__);
    prpos_(pF_1, "3");
    fprintf(stdout, "before flush: str = %s, fflush(pF_1) = %d", str, fflush(pF_1));
    prpos_(pF_1, "4");

    return 0;
}
