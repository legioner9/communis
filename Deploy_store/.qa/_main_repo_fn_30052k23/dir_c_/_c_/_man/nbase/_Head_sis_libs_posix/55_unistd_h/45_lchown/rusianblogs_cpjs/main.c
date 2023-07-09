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

#define RWRWRW (S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH)
//#define  _POSIX_CHOWN_RESTRICTED -1

int main(void)
{
    umask(0);                                // remove the mask
    int rv = creat("source.txt", RWRWRW);    // creat a file whose mode is -rw-rw-rw-
    system("ln -s source.txt source_l.txt"); // create a soft link to "source.txt" whose mode is lrwxrwxrwx
    rv = lchown("source_l.txt", 0, 0);       // update the user ID and group ID to 0
    printf("rv:%d\n", rv);
    printf("errno:%d\n", errno);
    return 0;
}
