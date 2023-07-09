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

/*chmod*/
/*fchmod*/
/*fchmodat*/
/*fstat*/
/*fstatat*/
/*futimens*/
/*lstat*/
/*mkdir*/
/*#*/ int mkdir_с(char *dir_path, mode_t mode, const char *file, const int line)
{
    int a = mkdir(dir_path, mode);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from mkdir_с dir_path = %s, mode = %o, errno = %d\n", dir_path, mode, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*mkdirat*/
/*mkfifo*/
/*mkfifoat*/
/*mknod*/
/*mknodat*/
/*stat*/
/*umask*/
/*utimensat*/