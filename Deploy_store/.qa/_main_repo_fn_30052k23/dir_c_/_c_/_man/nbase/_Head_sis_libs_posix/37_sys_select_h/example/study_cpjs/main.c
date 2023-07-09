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
#define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

// #define errExit(msg)                                                                                                   \
//     do                                                                                                                 \
//     {                                                                                                                  \
//         perror(msg);                                                                                                   \
//         exit(EXIT_FAILURE);                                                                                            \
//     } while (0)

// https://ru.manpages.org/select/2

// Вызов pselect() полезен как для ожидания сигнала, так и для ожидания готовности
// файлового дескриптора для ввода-вывода.Программы, принимающие сигналы, как
// правило, лишь выставляют в обработчике сигнала глобальный флаг, который означает,
// что требуется обработка события в главном цикле программы. Появление сигнала
// заставит вызов select() (или pselect()) вернуть управление вызвавшей программе;
// при этом errno будет присвоено EINTR. Это поведение продиктовано необходимостью
// обработки сигналов в главном цикле программы во избежание бесконечной блокировки
// select(). В главном цикле программы должно быть условие, проверяющее глобальный
// флаг. Возникает вопрос: а что если сигнал придёт после проверки этого условия, но
// до вызова select()? В этом случае программа навсегда останется в select(), хотя и
// есть ожидающее событие. Для разрешения этой проблемы существует вызов pselect().
// Этот вызов можно использовать для установки в сигнальной маске сигналов, которые
// принимаются только внутри вызова pselect(). Например, предположим что интересующее
// нас событие — это завершение дочернего процесса. Перед запуском главного цикла
// заблокируем SIGCHLD с помощью sigprocmask(2). Наш вызов pselect() разблокирует
// SIGCHLD, указав пустую маску сигналов. Программа будет выглядеть так:

// static volatile sig_atomic_t got_SIGCHLD = 0;
// static void child_sig_handler(int sig)
// {
//     got_SIGCHLD = 1;
// }

// int main(int argc,     // Number of strings in array argv
//          char *argv[], // Array of command-line argument strings
//          char **envp)  // Array of environment variable strings
// {
//     sigset_t sigmask, empty_mask;
//     struct sigaction sa;
//     fd_set readfds, writefds, exceptfds;
//     int r;
//     sigemptyset(&sigmask);
//     sigaddset(&sigmask, SIGCHLD);
//     if (sigprocmask(SIG_BLOCK, &sigmask, NULL) == -1)
//     {
//         perror("sigprocmask");
//         exit(EXIT_FAILURE);
//     }
//     sa.sa_flags = 0;
//     sa.sa_handler = child_sig_handler;
//     sigemptyset(&sa.sa_mask);
//     if (sigaction(SIGCHLD, &sa, NULL) == -1)
//     {
//         perror("sigaction");
//         exit(EXIT_FAILURE);
//     }
//     sigemptyset(&empty_mask);
//     for (;;)
//     { /* главный цикл */
//         /* Инициализация readfds, writefds и exceptfds
//            до вызова pselect() (код не показан). */
//         r = pselect(nfds, &readfds, &writefds, &exceptfds, NULL, &empty_mask);
//         if (r == -1 && errno != EINTR)
//         {
//             /* обработка ошибки */
//         }
//         if (got_SIGCHLD)
//         {
//             got_SIGCHLD = 0;
//             /* Здесь обработка сигнального события; например с
//                помощью wait() для завершения потомком (код не показан). */
//         }
//         /* код основной программы */
//     }
// }

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    // struct timeval tv;
    // tv.tv_sec = 0;
    // tv.tv_usec = 20000000; /* 20 секунд */
    // select(0, NULL, NULL, NULL, &tv);
    printf("_GCC_DB %d", _GCC_DB);
    fflush(stdout);
    usleep_lc_time(20000000); // 20 sec
    return 0;
}
