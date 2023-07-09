
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

#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>

/*creat*/
/*fcntl*/
/*open*/
/*#*/ int open_с(char *path, int oflag, mode_t mode, const char *file, const int line)
{
    int a = open(path, oflag, mode);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from open_с path = %s, oflag =%d, mode =%d, errno = %d\n", path, oflag, mode, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int open_сb(int cb(char *, int, mode_t), char *path, int oflag, mode_t mode)
{
    int a = open(path, oflag, mode);
    if (-1 == a)
    {
        cb(path, oflag, mode);
    }
    return a;
}
/*openat*/
/*#*/ int openat_с(int dirdes, char *path, int oflag, mode_t mode, const char *file, const int line)
{
    int a = openat(dirdes, path, oflag, mode);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from openat_с dirdes = %d, path = %s, oflag =%d, mode =%d, errno = %d\n", dirdes, path, oflag, mode, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int openat_сb(int cb(int,char *, int, mode_t), int dirdes, char *path, int oflag, mode_t mode)
{
    int a = openat(dirdes, path, oflag, mode);
    if (-1 == a)
    {
        cb(dirdes, path, oflag, mode);
    }
    return a;
}
/*posix_fadvise*/
/*posix_fallocate*/