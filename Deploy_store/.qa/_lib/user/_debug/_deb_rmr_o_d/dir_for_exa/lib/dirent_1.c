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

#include "st_mode_1.h"

/*alphasort*/
/*closedir*/
/*dirfd*/
// int dirfd_с(DIR *dirp, const char *file, const int line)
// {
//     int a = dirfd(dirp);
//     if (-1 == a)
//     {
//         fprintf(stderr, "failed in file %s at line # %d\n", file, line);
//         fprintf(stderr, "from dirfd_с errno = %d\n", errno);
//         perror("exit(errno) with");
//         exit(errno);
//     }
//     return a;
// }

/*#*/ int dirfd_с(DIR *dirp, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_ONE)
    {
        int a = dirfd(dirp);
        if (-1 == a)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from dirfd_с errno = %d\n", errno);
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
                fprintf(stderr, "from dirfd_с errno = %d\n", errno);
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

/*fdopendir*/
/*opendir*/
/*#*/ DIR *opendir_с(char *dirname, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_NUL)
    {
        DIR *a = opendir(dirname);
        if (NULL == a)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from opendir_с dirname = %s, errno = %d\n", dirname, errno);
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
                fprintf(stderr, "from opendir_с dirname = %s, errno = %d\n", dirname, errno);
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

    /* #! DEFAULT RETURN - NOT REMOVE THAT */
}

/*readdir*/
// struct dirent *readdir_с(DIR *dirp, const char *file, const int line)
// {
//     int e_start = errno;
//     struct dirent *a = readdir(dirp);
//     if (NULL == a && e_start != errno)
//     {
//         fprintf(stderr, "failed in file %s at line # %d\n", file, line);
//         fprintf(stderr, "from readdir_с errno = %d\n", errno);
//         perror("exit(errno) with");
//         exit(errno);
//     }
//     return a;
// }

/*#*/ struct dirent *readdir_с(DIR *dirp, const char *file, const int line, int st__mo, int st__if, int st__re)
{
    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_ENU)
    {

        int e_start = errno;
        struct dirent *a = readdir(dirp);
        if (NULL == a && e_start != errno)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from readdir_с errno = %d\n", errno);
                perror("Error is: ");
                fflush(stdout);
            }
            if (st__re & STRE_MNS)
            {
                if (st__mo & STMO_PRN)
                {
                    printf("return -1");
                    fflush(stdout);
                }
                return -1;
            }
            else if (st__re & STRE_EXI)
            {
                if (st__mo & STMO_PRN)
                {
                    printf("exit(errno): ");
                    fflush(stdout);
                }
                exit(errno);
            }
            else if (st__re & STRE_ERR)
            {
                if (st__mo & STMO_PRN)
                {
                    printf("return original error");
                    fflush(stdout);
                }
                return a;
            }
            else
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from readdir_с errno = %d\n", errno);
                perror("st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: ");
                exit(1);
            }
        }
        return a;
    }
    else
    {
        perror(" st__if NOT equal STIF_ENU exit(1)");
        exit(1);
    }
    /* SINGL SECTION END -------------------------------------------*/
}

/*readdir_r*/
// int readdir_r_e(DIR *restrict dirp, struct dirent *restrict entry, struct dirent **restrict result, const char *file, const int line)
// {
//     int a = readdir_r(dirp, entry, result);
//     if (0 != a)
//     {
//         fprintf(stderr, "failed in file %s at line # %d\n", file, line);
//         fprintf(stderr, "from readdir_r_с errno = %d\n", errno);
//         perror("exit(errno) with");
//         exit(errno);
//     }
//     return a;
// }

/*#*/ int readdir_r_с(DIR *restrict dirp, struct dirent *restrict entry, struct dirent **restrict result, const char *file, const int line, int st__mo, int st__if, int st__re)
{

    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_NEN)
    {

        int a = readdir_r(dirp, entry, result);
        if (0 != a)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from readdir_r_с errno = %d\n", errno);
                perror("Error is: ");
                fflush(stdout);
            }
            if (st__re & STRE_MNS)
            {
                if (st__mo & STMO_PRN)
                {
                    printf("return -1");
                    fflush(stdout);
                }
                return -1;
            }
            else if (st__re & STRE_EXI)
            {
                if (st__mo & STMO_PRN)
                {
                    printf("exit(errno): ");
                    fflush(stdout);
                }
                exit(errno);
            }
            else if (st__re & STRE_ERR)
            {
                if (st__mo & STMO_PRN)
                {
                    printf("return original error");
                    fflush(stdout);
                }
                return a;
            }
            else
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from readdir_r_с errno = %d\n", errno);
                perror("st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: ");
                exit(1);
            }
        }
        return a;
    }
    else
    {
        perror(" st__if NOT equal STIF_NEN exit(1)");
        exit(1);
    }
    /* SINGL SECTION END -------------------------------------------*/
}

/*rewinddir*/
/*scandir*/
//  int scandir_с(const char *dir_path, struct dirent ***namelist, int (*select)(const struct dirent *), int (*compare)(const struct dirent **, const struct dirent **), const char *file, const int line)
// {
//     int a = scandir(dir_path, namelist, select, compare);
//     if (-1 == a)
//     {
//         fprintf(stderr, "failed in file %s at line # %d\n", file, line);
//         fprintf(stderr, "from scandir_с dir_path = %s, errno = %d\n", dir_path, errno);
//         perror("exit(errno) with");
//         exit(errno);
//     }
//     return a;
// }
/*#*/ int scandir_с(char *dir_path, struct dirent ***namelist, int (*select)(const struct dirent *), int (*compare)(const struct dirent **, const struct dirent **), const char *file, const int line, int st__mo, int st__if, int st__re)
{

    /* SINGL SECTION START -----------------------------------------*/
    if (st__if & STIF_ONE)
    {
        int a = scandir(dir_path, namelist, select, compare);
        if (-1 == a)
        {
            if (st__mo & STMO_PRN)
            {
                fprintf(stderr, "failed in file %s at line # %d\n", file, line);
                fprintf(stderr, "from scandir_с dir_path = %s, errno = %d\n", dir_path, errno);
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
                fprintf(stderr, "from scandir_с dir_path = %s, errno = %d\n", dir_path, errno);
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