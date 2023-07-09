#define _GNU_SOURCE
#include <fcntl.h>
#include "syscalls.h"
#define PERMS 0666 /* RW для собственника, группы и проч. */

/* fopen: открывает файл, возвращает файловый указатель */
FILE *fopen(char *name, char *mode)
{
    int fd;
    FILE *fp;

    if (*mode != 'r' && *mode != 'w' && *mode != 'a')
        return NULL;
    for (fp = _iob; fp < _iob + OPEN_MAX; fp++)
        if ((fp->flag & (_READ | _WRITE)) == 0)
            break;              /* найдена свободная позиция */
    if (fp >= _iob + OPEN_MAX)  /* нет свободной позиция */
        return NULL;

    if (*mode == 'w')
        fd = creat(name, PERMS);
    else if (*mode == 'a') {
        if ((fd = open(name, O_WRONLY, 0)) == -1)
            fd = creat(name, PERMS);
        lseek(fd, 0L, 2);
    } else
        fd = open(name, O_RDONLY, 0);
    if (fd ==-1) /* невозможен доступ по имени name */
        return NULL;
    fp->fd = fd;
    fp->cnt = 0;
    fp->base = NULL;
    fp->flag = (*mode == 'r') ? _READ : _WRITE;
    return fp;
}

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

//lc_

#define N 6

#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <dirent.h> 


int main(int argc, char const *argv[])
{
    /* code */
    return 0;
}