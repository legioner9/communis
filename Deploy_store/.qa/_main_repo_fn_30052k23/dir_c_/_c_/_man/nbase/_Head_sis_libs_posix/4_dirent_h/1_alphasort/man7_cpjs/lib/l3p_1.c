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
#include "lc_0.h"
#include "lc_1.h"
#include "l3p_1.h"
#include "io_1.h"
#include "lib_1.h"
#include "uni_1.h"
#include "fcntl_1.h"
#include "dirent_1.h"
#include "socket_1.h"
#include "sys_stat_1.h"
#include "st_mode_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>
#include <wordexp.h>

/*
*()  : Pt() as *arr : PtAr
arr  : Ar
argc : Ac
max value : MxV
min value : MnV
checked int : Chint
hight from to

*/

/*fileno*/
/*#*/ int fileno_c(FILE *stream, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_ONE)
    {
        int a = fileno(stream);
        if (-1 == a)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from fileno_c errno = %d\n", errno);
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
                    printf("exit(errno): ");
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
                fprintf(stderr, "from fileno_c errno = %d\n", errno);
                perror("st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: ");
                exit(1);
            }
        }
        return a;
    }
    else
    {
        perror(" st__if NOT equal STIF_ONE exit(1)");
        exit(1);
    }
    /* SINGL SECTION END -------------------------------------------*/ 
}

//  int fileno_c(FILE *stream, const char *file, const int line)
// {
//     int a = fileno(stream);
//     if (-1 == a)
//     {
//         fprintf(stderr, "failed in file %s at line # %d\n", file, line);
//         fprintf(stderr, "from fileno_c errno = %d\n", errno);
//         perror("exit(errno) with");
//         exit(errno);
//     }
//     return a;
// }

// int fileno_cb(int cb(void), FILE *stream)
// {
//     int a = fileno(stream);
//     if (-1 == a)
//     {
//         cb();
//     }
//     return a;
// }