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

/*
*()  : Pt() as *arr : PtAr
arr  : Ar
argc : Ac
max value : MxV
min value : MnV
checked int : Chint
hight from to

*/

/*#*/ int npt_lc_1_IntPt(int *pt)
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