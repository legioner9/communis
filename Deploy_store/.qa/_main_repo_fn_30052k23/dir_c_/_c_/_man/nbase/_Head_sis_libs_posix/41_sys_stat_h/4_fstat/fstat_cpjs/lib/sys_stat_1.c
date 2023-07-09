
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
#include <dirent.h>

#include "st_mode_1.h"

/*chmod*/
/*fchmod*/
/*fchmodat*/
/*fstat*/
/*#*/ int fstat_с(int fildes, struct stat *buf, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_ONE)
    {
        int a = fstat(fildes, buf);
        if (-1 == a)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from fstat_с fildes = %d, errno = %d\n", fildes, errno);
                perror("Error is: ");
                fflush(stdout);
            }
            if (st__re & STRE_MNS)
            {
                if (st__mo & STMO_PRN)
                    printf("return -1");
                return -1;
            }
            else if (st__re & STRE_EXI)
            {
                if (st__mo & STMO_PRN)
                    printf("exit(errno)");
                exit(errno);
            }
            else if (st__re & STRE_ERR)
            {
                if (st__mo & STMO_PRN)
                    printf("return original error");
                return a;
            }
            else
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from fstat_с fildes = %d, errno = %d\n", fildes, errno);
                perror("st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: ");
                exit(1);
            }
        }
        return a;
    }
    else
    {
        perror(" st__if NOT equal STIF_NUL exit(1)");
        exit(1);
    }
    /* SINGL SECTION END -------------------------------------------*/

}
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