/* open/fcntl.  */
#define O_ACCMODE 0003
#define O_RDONLY 00
#define O_WRONLY 01
#define O_RDWR 02
#ifndef O_CREAT
#define O_CREAT 0100 /* Not fcntl.  */
#endif
#ifndef O_EXCL
#define O_EXCL 0200 /* Not fcntl.  */
#endif
#ifndef O_NOCTTY
#define O_NOCTTY 0400 /* Not fcntl.  */
#endif
#ifndef O_TRUNC
#define O_TRUNC 01000 /* Not fcntl.  */
#endif
#ifndef O_APPEND
#define O_APPEND 02000
#endif
#ifndef O_NONBLOCK
#define O_NONBLOCK 04000
#endif
#ifndef O_NDELAY
#define O_NDELAY O_NONBLOCK
#endif
#ifndef O_SYNC
#define O_SYNC 04010000
#endif
#define O_FSYNC O_SYNC
#ifndef O_ASYNC
#define O_ASYNC 020000
#endif

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
#include <dirent.h>

// Следующая программа выполняет поиск по заданному каталогу в поисках файлов, 
// имя которых не начинается с точки и размер которых больше 1 MiB.

int main(int argc, char const *argv[])
{
    struct stat statbuf;
    DIR *d;
    struct dirent *dp;
    int dfd, ffd;

    if ((d = fdopendir((dfd = open("./tmp", O_RDONLY)))) == NULL)
    {
        fprintf(stderr, "Cannot open ./tmp directory\n");
        exit(1);
    }
    while ((dp = readdir(d)) != NULL)
    {
        if (dp->d_name[0] == '.')
            continue;
        /* there is a possible race condition here as the file
         * could be renamed between the readdir and the open */
        if ((ffd = openat(dfd, dp->d_name, O_RDONLY)) == -1)
        {
            perror(dp->d_name);
            continue;
        }
        if (fstat(ffd, &statbuf) == 0 && statbuf.st_size > (1024 * 1024))
        {
            /* found it ... */
            printf("%s: %jdK\n", dp->d_name,
                   (intmax_t)(statbuf.st_size / 1024));
        }
        close(ffd);
    }
    closedir(d); // note this implicitly closes dfd
    return 0;
}
