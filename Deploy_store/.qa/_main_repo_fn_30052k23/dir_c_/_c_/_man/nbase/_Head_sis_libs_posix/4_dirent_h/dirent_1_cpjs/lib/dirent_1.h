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
#include <dirent.h>

/*alphasort*/
/*closedir*/
/*dirfd*/
/*#*/ int dirfd_с(DIR *dirp, const char *file, const int line)
{
    int a = dirfd(dirp);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from dirfd_с dirp = %d, errno = %d\n", dirp, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int dirfd_сb(int cb(dirp), DIR *dirp)
{
    int a = dirfd(dirp);
    if (-1 == a)
    {
        cb(dirp);
    }
    return a;
}
/*fdopendir*/
/*opendir*/
/*readdir*/
/*readdir_r*/
/*rewinddir*/
/*scandir*/