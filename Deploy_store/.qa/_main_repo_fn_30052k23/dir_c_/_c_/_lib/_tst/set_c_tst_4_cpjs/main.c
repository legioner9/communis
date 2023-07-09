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
    printf(" access = %d, errno = %d\n", access("myfile.txt", 0), errno);
    printf(" or_ist_c = %d, errno = %d\n", or_ist_c("myfile.txt"), errno);

    is_ist_c("myfile.txt", __FILE__, __LINE__);

    remove_c("myfile.txt", __FILE__, __LINE__);

    printf(" access = %d, errno = %d\n", access("myfile.txt", 0), errno);
    printf(" or_ist_c = %d, errno = %d\n", or_ist_c("myfile.txt"), errno);

    is_ist_c("myfile.txt", __FILE__, __LINE__);
    return 0;
}
