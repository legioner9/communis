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
#include "lib/l3p_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"
#include "lib/uni_1.h"
#include "lib/fcntl_1.h"
#include "lib/dirent_1.h"
#include "lib/sys_stat_1.h"
#include "lib/st_mode_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    int fd, result;
    size_t size;
    char resstring[14];
    char name[] = "aaa.fifo";
    /* Обнуляем маску создания файлов текущего процесса для того,
    чтобы права доступа у создаваемого FIFO точно соответствовали
    параметру вызова mknod() */
    (void)umask(0);
    /* Попытаемся создать FIFO с именем aaa.fifo в текущей
    директории */
    if (mknod(name, S_IFIFO | 0666, 0) < 0)
    {
        /* Если создать FIFO не удалось, печатаем об этом
        сообщение и прекращаем работу */
        printf("Can\'t create FIFO\n");
        exit(-1);
    }
    /* Порождаем новый процесс */
    if ((result = fork()) < 0)
    {
        /* Если создать процесс не удалось, сообщаем об этом и
        завершаем работу */
        printf("Can\'t fork child\n");
        exit(-1);
    }
    else if (result > 0)
    {
        /* Мы находимся в родительском процессе, который будет
        передавать информацию процессу-ребенку. В этом процессе
        открываем FIFO на запись.*/
        if ((fd = open(name, O_WRONLY)) < 0)
        {
            /* Если открыть FIFO не удалось, печатаем об этом
            сообщение и прекращаем работу */
            printf("Can\'t open FIFO for writing\n");
            exit(-1);
        }
        /* Пробуем записать в FIFO 14 байт, т.е. всю строку
        "Hello, world!" вместе с признаком конца строки */
        size = write(fd, "Hello, world!", 14);
        if (size != 14)
        {
            /* Если записалось меньшее количество байт,то сообщаем
            об ошибке и завершаем работу */
            printf("Can\'t write all string to FIFO\n");
            exit(-1);
        }
        /* Закрываем входной поток данных и на этом родитель
        прекращает работу */
        close(fd);
        printf("Parent exit\n");
    }
    else
    {
        /* Мы находимся в порожденном процессе, который будет
        получать информацию от процесса-родителя. Открываем
        FIFO на чтение.*/
        if ((fd = open(name, O_RDONLY)) < 0)
        {
            /* Если открыть FIFO не удалось, печатаем об этом
            сообщение и прекращаем работу */
            printf("Can\'t open FIFO for reading\n");
            exit(-1);
        }
        /* Пробуем прочитать из FIFO 14 байт в массив, т.е.
        всю записанную строку */
        size = read(fd, resstring, 14);
        if (size < 0)
        {
            /* Если прочитать не смогли, сообщаем об ошибке
            и завершаем работу */
            printf("Can\'t read string\n");
            exit(-1);
        }
        /* Печатаем прочитанную строку */
        printf("%s\n", resstring);
        /* Закрываем входной поток и завершаем работу */
        close(fd);
    }
    return 0;
}
