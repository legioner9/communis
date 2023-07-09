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
#include <unistd.h>
#include <wchar.h>
#include <wctype.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/dirent_1.h"
#include "lib/fcntl_1.h"
#include "lib/io_1.h"
#include "lib/l3p_1.h"
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/lc_in.h"
#include "lib/lc_io.h"
#include "lib/lc_pipe.h"
#include "lib/lc_str.h"
#include "lib/lc_time.h"
#include "lib/lib_1.h"
#include "lib/libgen_1.h"
#include "lib/socket_1.h"
#include "lib/st_mode_1.h"
#include "lib/sys_stat_1.h"
#include "lib/uni_1.h"

#include <aio.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <netdb.h>
#include <netinet/in.h>
#include <signal.h>
#include <sys/ipc.h>
#include <sys/mman.h>
#include <sys/msg.h>
#include <sys/resource.h>
#include <sys/select.h>
#include <sys/sem.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>
#include <sys/wait.h>

#include <dirent.h>
#include <fcntl.h>
#include <fmtmsg.h>
#include <ftw.h>
#include <gdbm.h>
#include <getopt.h>
#include <glob.h>
#include <grp.h>
#include <iconv.h>
#include <inttypes.h>
#include <mqueue.h>
#include <poll.h>
#include <pthread.h>
#include <pwd.h>
#include <regex.h>
#include <sched.h>
#include <search.h>
#include <semaphore.h>
#include <signal.h>
#include <spawn.h>
#include <stdarg.h>
#include <stddef.h>
#include <threads.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

#define _XOPEN_SOURCE 500
#define N 7
// #define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

// #define errExit(msg)                                                                                                   \
//     do                                                                                                                 \
//     {                                                                                                                  \
//         perror(msg);                                                                                                   \
//         exit(EXIT_FAILURE);                                                                                            \
//     } while (0)

// _GCC_DB from makefile

char *read_from_file(const char *filename, size_t length)
{
    char *buffer;
    int fd;
    ssize_t bytes_read;
    /* Выделяем буфер. */
    buffer = (char *)malloc(length);
    if (buffer == NULL)
        return NULL;
    /* Открываем файл. */
    fd = open(filename, O_RDONLY);
    if (fd == 1)
    {
        /* Открыть файл не удалось. Освобождаем буфер
        перед выходом. */
        free(buffer);
        return NULL;
    } /* Чтение данных. */
    bytes_read = read(fd, buffer, length);
    if (bytes_read != length)
    {
        /* Чтение не удалось. Освобождаем буфер и закрываем файл
    перед выходом. */
        free(buffer);
        close(fd);
        return NULL;
    }
    /* Все прошло успешно. Закрываем файл и возвращаем буфер
    в программу. */
    close(fd);
    return buffer;
}

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    char *path = "path/to";
    int user_id = 1;
    int rval = chown(path, user_id, -1);
    if (rval != 0)
    {
        /* Сохраняем переменную errno, поскольку она будет изменена
        при следующем системном вызове. */
        int error_code = errno;
        /* Операция прошла неуспешно; в случае ошибки функция chown()
        должна вернуть значение -1. */
        assert(rval == -1);
        /* Проверяем значение переменной errno и выполняем
        соответствующее действие. */
        switch (error_code)
        {
        case EPERM:        /* Доступ запрещен. */
        case EROFS:        /* Переменная PATH ссылается на файловую
               систему, доступную только для чтения. */
        case ENAMETOOLONG: /* Переменная PATH оказалась слишком длинной. */
        case ENOENT:       /* Переменная PATH ссылается на
              несуществующий файл. */
        case ENOTDIR:      /* Один из компонентов переменной PATH
             не является каталогом. */
        case EACCES:       /* Один из компонентов переменной PATH
              недоступен. */
            /* Что-то неправильно с файлом, выводим сообщение
            об ошибке. */
            fprintf(stderr, "error changing ownership of %s: %s\n", path, strerror(error_code));
            /* He завершаем программу; можно предоставить пользователю
            шанс открыть другой файл. */
            break;
        case EFAULT:
            /* Переменная PATH содержит неправильный адрес. Это, скорее
            всего, ошибка программы. */
            abort();
        case ENOMEM:
            /* Ядро столкнулось с нехваткой памяти. */
            fprintf(stderr, "%s\n", strerror(error_code));
            exit(1);
        default:
            /* Произошла какая-то другая, непредвиденная ошибка. Мы
            пытались обработать все возможные коды ошибок. Если
            что-то пропущено, то это ошибка программы! */
            abort();
        };
    }
    return 0;
}
