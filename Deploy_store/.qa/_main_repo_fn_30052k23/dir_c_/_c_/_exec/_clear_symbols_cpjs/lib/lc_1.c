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

/*#*/ int npt_lc_1_IntPt(int *pt) /* --- */
{
    if (NULL == pt)
    {
        printf("alloc npt FAIL's\n");
        exit(1);
    } 
}

/*#*/ int ndpt_lc_1_IntPt(int **pt)
{
    if (NULL == pt)
    {
        printf("alloc ndpt FAIL's\n");
        exit(1);
    }
}
/*#*/ int _tmpp(int t)
{
}

/*#*/ int prn_stat_lc_1_path(const char *path)
{
    struct stat st_struct;
    int res_stat = stat(path, &st_struct);
    printf("res_stat = %d\n\
st_dev = 0x%o\n\
st_ino = 0x%o\n\
st_mode = 0x%o\n\
st_nlink = %d\n\
st_uid = 0x%o\n\
st_gid = 0x%o\n\
st_rdev = 0x%o\n\
st_size = %d\n\
st_blksize = 0x%o\n\
st_blocks = 0x%o\n",
           res_stat, st_struct.st_dev, st_struct.st_ino, st_struct.st_mode, st_struct.st_nlink, st_struct.st_uid, st_struct.st_gid, st_struct.st_rdev, st_struct.st_size, st_struct.st_blksize, st_struct.st_blocks);
    return 0;
}

/*#*/ int prn_stat_lc_1_path_с(const char *path, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    struct stat st_struct;
    int res_stat = stat(path, &st_struct);

    if (res_stat != -1)
    {
        printf("res_stat = %d\n\
st_dev = 0x%o\n\
st_ino = 0x%o\n\
st_mode = 0x%o\n\
st_nlink = %d\n\
st_uid = 0x%o\n\
st_gid = 0x%o\n\
st_rdev = 0x%o\n\
st_size = %d\n\
st_blksize = 0x%o\n\
st_blocks = 0x%o\n",
               res_stat, st_struct.st_dev, st_struct.st_ino, st_struct.st_mode, st_struct.st_nlink, st_struct.st_uid, st_struct.st_gid, st_struct.st_rdev, st_struct.st_size, st_struct.st_blksize, st_struct.st_blocks);
        return 0;
    }
    else
    {
        if (st__mo & STMO_PRN)
        {
            fprintf(stderr, "failed in file %s at line # %d\n", file, line);
            fprintf(stderr, "from prn_stat_lc_1_path_с path = %s\n", path);
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
                printf("exit(1)");
            exit(1);
        }
        else if (st__re & STRE_ERR)
        {
            if (st__mo & STMO_PRN)
                printf("return original error");
            return 0;
        }
    }
}

/*#*/ int prn_dirent_lc_1_entry_с(struct dirent *entry, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    /* code with RESULT */

    if (entry->d_reclen != 0)
    {
        printf("d_name = %s\n\
d_ino = %d\n\
d_type = 0x%o\n\
d_reclen = 0x%o\n\
d_off = %d\n\
\n",
               entry->d_name, entry->d_ino, entry->d_type, entry->d_reclen, entry->d_off);
    }
    else
    {
        if (st__mo & STMO_PRN)
        {
            fprintf(stderr, "failed in file %s at line # %d\n", file, line);
            fprintf(stderr, "from prn_dirent_lc_1_entry_с\n");
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
                printf("exit(1)");
            exit(1);
        }
        else if (st__re & STRE_ERR)
        {
            if (st__mo & STMO_PRN)
                printf("return original error");
            return 0;
        }
    }

    return 0;
}

/*#*/ int prn_sockadr_bind_lc_1_с(struct sockaddr *name, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    /* code with RESULT */

    if (1)
    {
        printf("name.sa_family = %d, name.sa_data = %s\n", name->sa_family, name->sa_data);
    }
    else
    {
        if (st__mo & STMO_PRN)
        {
            fprintf(stderr, "failed in file %s at line # %d\n", file, line);
            // fprintf(stderr, "from prn_sockadr_bind_с SSSSS = %s\n", SSSSS);
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
                printf("exit(1)");
            exit(1);
        }
        else if (st__re & STRE_ERR)
        {
            if (st__mo & STMO_PRN)
                printf("return original error");
            return 0;
        }
    }
    return 0;
}

/*#*/ int prn_addr_from_socket_lc_1_с(int socket, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    struct sockaddr_in result_addr;
    int namelen = sizeof(struct sockaddr_in);

    int a = getsockname(socket, (struct sockaddr *)&result_addr, &namelen);

    if (a != -1)
    {
        printf("result_addr.sin_family = %d, result_addr.sin_addr.s_addr = %s, result_addr.sin_port = %d\n", result_addr.sin_family, inet_ntoa(result_addr.sin_addr), ntohs(result_addr.sin_port)); /* code with RESULT */
        return a;
    }
    else
    {
        if (st__mo & STMO_PRN)
        {
            fprintf(stderr, "failed in file %s at line # %d\n", file, line);
            fprintf(stderr, "from prn_addr_from_socket_с socket = %d\n", socket);
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
                printf("exit(1)");
            exit(1);
        }
        else if (st__re & STRE_ERR)
        {
            if (st__mo & STMO_PRN)
                printf("return original error");
            return a;
        }
    }
}

/*#*/ int prn_addr_in_from_name_lc_1_с(struct sockaddr_in addr, const char *file, const int line, int st__mo, int st__if, int st__re)
{
    printf("addr.sin_family = %d, addr.sin_addr.s_addr = %s, addr.sin_port = %d\n", addr.sin_family, inet_ntoa(addr.sin_addr), ntohs(addr.sin_port)); /* code with RESULT */
    return 0;
}

/*#*/ 
// ssize_t send_whilen_с(int socket, const void *buffer, size_t length, int flags, const char *file, const int line, int st__mo, int st__if, int st__re){
//     ssize_t res = send_с(socket, buffer, length, flags, file, line, st__mo, st__if, st__re);
//     return res;
// }
