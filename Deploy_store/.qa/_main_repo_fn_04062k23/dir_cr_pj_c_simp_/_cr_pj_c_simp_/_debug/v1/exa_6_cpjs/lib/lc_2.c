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

// LIB FROM ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_lib
// #include "lc_0.h"
// #include "lc_1.h"
// #include "l3p_1.h"
// #include "io_1.h"
// #include "lib_1.h"
// #include "uni_1.h"
// #include "fcntl_1.h"
// #include "dirent_1.h"
// #include "socket_1.h"
// #include "sys_stat_1.h"
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

/*#*/ int send_whilen_lc_2_с(int socket, const void *buffer, size_t length_max, int flags, const char *file, const int line, int st__mo, int st__if, int st__re) /* --- */
{
    int length_pack = strlen(buffer) + 1;
    if (length_pack > length_max)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from send_whilen_lc_2_с buffer = %s, socket = %d\n", buffer, socket);
        printf("length_pack > length_max , exit(1)\n");
        exit(1);
    }

    int n = 0;

    while (n < length_pack)
    {
        int sent = send_с(socket, buffer + n, length_pack - n, flags, file, line, st__mo, st__if, st__re);
        n += sent;
    }

    return 0;
}

/*#*/ int recv_whilen_lc_2_с(int socket, const void *buffer, size_t length_pack, int flags, const char *file, const int line, int st__mo, int st__if, int st__re)
{
    int n = 0;

    while (n < length_pack)
    {
        int recvd = recv_с(socket, buffer + n, length_pack - n, flags, file, line, st__mo, st__if, st__re);
        if (recvd == 0)
        {
            printf("Connect closed");
            break;
        }

        else
            n += recvd;
    }

    return 0;
}