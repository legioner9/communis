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
    char buffer[100];
    printf("buffer = %p , sizeof(int) = %d\n", buffer, sizeof(int));
    int cx;

    cx = snprintf(buffer, 100, "The half of %d is %d", 60, 60 / 2);
    printf("cx = %d\n", cx);

    if (cx >= 0 && cx < 100) // check returned value

        snprintf(buffer + cx, 100 - cx, ", and the half of that is %d.", 60 / 2 / 2);
    printf("buffer + cx - buffer = %p\n", buffer + cx - buffer);

    puts(buffer);
    return 0;
}
