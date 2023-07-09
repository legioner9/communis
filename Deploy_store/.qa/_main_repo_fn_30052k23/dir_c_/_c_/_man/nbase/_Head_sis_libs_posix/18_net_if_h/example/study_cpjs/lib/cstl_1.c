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

/*#*/ int cstl_1_ls_a(char const *dir_path, const char *file, const int line)
{
    DIR *dir;
    struct dirent *entry;
    char *name;

    if ((dir = opendir(dir_path)) == NULL)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from cstl_1_ls dir_path = %s, errno = %d\n", dir_path, errno);
        perror("exit(errno) with");
        //         exit(errno);
        return -1;
    }
    else
    {
        // puts("contents of root:");
        while ((entry = readdir(dir)) != NULL)
        {
            name = entry->d_name;
            // printf("0 - %s\n", name);
            if (strcmp(name, ".") && strcmp(name, ".."))
            {
                printf("%s\n", name);
            }
        }
        closedir(dir);
    }
    return 0;
}

/*#*/ int cstl_1_ls_c(char const *dir_path, const char *file, const int line)
{
    DIR *dir;
    struct dirent *entry;
    char *name;

    if ((dir = opendir(dir_path)) == NULL)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from cstl_1_ls dir_path = %s, errno = %d\n", dir_path, errno);
        perror("exit(errno) with");
        exit(errno);
        // return -1; 
    }
    else
    {
        // puts("contents of root:");
        while ((entry = readdir(dir)) != NULL)
        {
            name = entry->d_name;
            // printf("0 - %s\n", name);
            if (strcmp(name, ".") && strcmp(name, ".."))
            {
                printf("%s\n", name);
            }
        }
        closedir(dir);
    }
    return 0;
}

/*#*/ int cstl_1_ls_a_b(char const *dir_path, int cb(char *), const char *file, const int line)
{
    DIR *dir;
    struct dirent *entry;
    char *name;

    if ((dir = opendir(dir_path)) == NULL)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from cstl_1_ls dir_path = %s, errno = %d\n", dir_path, errno);
        perror("exit(errno) with");
        // exit(errno);
        return -1;
    }
    else
    {
        // puts("contents of root:");
        while ((entry = readdir(dir)) != NULL)
        {
            name = entry->d_name;
            // printf("0 - %s\n", name);
            if (strcmp(name, ".") && strcmp(name, ".."))
            {
                cb(name);
            }
        }
        closedir(dir);
    }
    return 0;
}

/*#*/ int cstl_1_ls_ab(char *dir_path, int cb_a(char *), const char *file, const int line)
{
    DIR *dir;
    struct dirent *entry;
    char *name;

    if ((dir = opendir(dir_path)) == NULL)
    {
        cb_a(dir_path);
        // return -1;
    }
    else
    {
        // puts("contents of root:");
        while ((entry = readdir(dir)) != NULL)
        {
            name = entry->d_name;
            // printf("0 - %s\n", name);
            if (strcmp(name, ".") && strcmp(name, ".."))
            {
                printf("%s\n", name);
            }
        }
        closedir(dir);
    }
    return 0;
}

// int cstl_1_ls_b(char const *dir_path){

// }

//  DIR *opendir_с(char *dirname, const char *file, const int line)
// {
//     DIR *a = opendir(dirname);
//     if (NULL == a)
//     {
//         fprintf(stderr, "failed in file %s at line # %d\n", file, line);
//         fprintf(stderr, "from opendir_с dirname = %s, errno = %d\n", dirname, errno);
//         perror("exit(errno) with");
//         exit(errno);
//     }
//     return a;
// }
//  DIR *opendir_сb(int cb(char *), char *dirname)
// {
//     DIR *a = opendir(dirname);
//     if (NULL == a)
//     {
//         cb(dirname);
//     }
//     return a;
// }