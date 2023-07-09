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

// lc_

#define N 6

#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, char const *argv[])
{
    int fd;
    mode_t mode = S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH;
    char *pathname = "a.file";

    // fd = open_с(pathname, O_WRONLY | O_CREAT | O_TRUNC, mode, __FILE__, __LINE__);
    // fd = open(pathname, O_WRONLY | O_CREAT | O_TRUNC, mode);
    fd = open(pathname, O_RDWR, mode);

    char buf[11];
    int def_r;
    def_r = read(fd, buf, 10);
    printf("buf = %s, def_r = %d\n", buf, def_r);
    return 0;
}