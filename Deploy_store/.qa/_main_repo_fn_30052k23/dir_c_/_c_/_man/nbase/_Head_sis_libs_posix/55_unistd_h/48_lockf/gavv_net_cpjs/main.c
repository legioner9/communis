#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <fenv.h>
#include <float.h>
#include <inttypes.h>
#include <iso646.h>
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tgmath.h>
#include <time.h>
#include <uchar.h>
#include <wchar.h>
#include <wctype.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"
#include "lib/uni_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>

#include <unistd.h>
#include <fcntl.h>

int main(int argc, char const *argv[])
{

    int fildes;
    int status;

    fildes = open("a.file", O_RDWR);
    status = lockf_с(fildes, F_TLOCK, (off_t)10000,__FILE__, __LINE__);
    // set current position to byte 10
    if (lseek_с(fildes, 10, SEEK_SET,__FILE__, __LINE__) == -1)
    {
        exit(1);
    }

    // acquire exclusive lock for bytes in range [10; 15)
    // F_LOCK specifies blocking mode
    if (lockf_с(fildes, F_LOCK, 5,__FILE__, __LINE__) == -1)
    {
        exit(1);
    }

    // release lock for bytes in range [10; 15)
    if (lockf_с(fildes, F_ULOCK, 5,__FILE__, __LINE__) == -1)
    {
        exit(1);
    }
    return 0;
}
