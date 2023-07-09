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

/* Запуск дочернего процесса в виде новой программы. Параметр
PROGRAM это имя вызываемой программы; ее поиск будет
осуществляться в каталогах, определяемых переменной среды PATH.
Параметр ARG_LIST -- это список строковых аргументов,
передаваемых программе (должен оканчиваться указателем NULL).
Функция возвращает идентификатор порожденного процесса. */
int spawn_(char *program, char **arg_list)
{
    pid_t child_pid;
    /* Создание копии текущего процесса. */
    child_pid = fork();
    if (child_pid != 0)
        /* Это родительский процесс. */
        return child_pid;
    else
    {
        /* Выполнение указанной программы. */
        execvp(program, arg_list);
        /* Функция execvp() возвращает значение только в случае
        ошибки. */
        fprintf(stderr, "an error occurred in execvp\n");
        abort();
    }
}

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    /* Список аргументов, передаваемых команде ls. */
    char *arg_list[] = {
        "ls",      /* argv[0] -- имя программы. */
        "-l", NULL /* Список аргументов должен оканчиваться указателем
                    NULL. */
    };
    /* Порождаем дочерний процесс, который выполняет команду ls.
    Игнорируем возвращаемый идентификатор дочернего процесса. */
    spawn_("ls", arg_list);
    printf("done with main program\n");
    return 0;
}
