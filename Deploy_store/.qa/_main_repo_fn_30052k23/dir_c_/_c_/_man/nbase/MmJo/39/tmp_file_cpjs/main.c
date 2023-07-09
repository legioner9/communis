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

// В листинге 2.5 показаны две функции, работающие с временным файлом. Будучи
// примененными в связке, они позволяют легко переносить содержимое буферов из операторной
// памяти во временный файл (это дает возможность освобождать и повторно использовать
// память), а затем загружать данные из файла обратно в память.
// Листинг 2.5. (temp_file.c) Использование функции mkstemp()
#include <stdlib.h>
#include <unistd.h>
/* дескриптор временного файла, созданного в функции
write_temp_file(). */
typedef int temp_file_handle;
/* Запись указанного числа байтов из буфера во временный файл.
Ссылка на временный файл немедленно удаляется. Возвращается
дескриптор временного файла. */
temp_file_handle write_temp_file(char *buffer, size_t length)
{
    /* Создание имени файла и самого файла. Цепочка XXXXXX будет
    заменена символами, которые сделают имя уникальным. */
    char temp_filename[] = "/tmp/temp_file.XXXXXX";
    int fd = mkstemp(temp_filename);
    /* немедленное удаление ссылки на файл, благодаря чему он будет
    удален сразу же после закрытия дескриптора файла. */
    unlink(temp_filename);
    /* Сначала в файл записывается число, определяющее размер
    буфера. */
    write(fd, &length, sizeof(length));
    /* теперь записываем сами данные. */
    write(fd, buffer, length);
    /* Возвращаем дескриптор файла. */
    return fd;
}
/* Чтение содержимого временного файла, созданного в функции
write_temp_file(). Создается и возвращается буфер с содержимым
файла. Этот буфер должен быть удален в вызывающей подпрограмме
с помощью функции free(). В параметр LENGTH записывается размер
буфера в байтах. В конце временный файл удаляется. */
char *read_temp_file(temp_file_handle temp_file, size_t *length)
{
    char *buffer;
    /* TEMP_FILE -- это дескриптор временного файла. */
    int fd = temp_file;
    /* переход в начало файла. */
    lseek(fd, 0, SEEK_SET);
    /* Определение объема данных, содержащихся во временном файле. */
    read(fd, length, sizeof(*length));
    /* Выделение буфера и чтение данных. */
    buffer = (char *)malloc(*length);
    read(fd, buffer, *length);
    /* Закрытие дескриптора файла, что приведет к уничтожению
    временного файла. */
    close(fd);
    return buffer;
}

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    char *buf = "that component";
    char *res_buf;
    temp_file_handle fd_tmp;
    fd_tmp = write_temp_file(buf, strlen(buf) + 1);
    res_buf = read_temp_file(fd_tmp, 10000);
    printf("%s", res_buf);
    return 0;
}
