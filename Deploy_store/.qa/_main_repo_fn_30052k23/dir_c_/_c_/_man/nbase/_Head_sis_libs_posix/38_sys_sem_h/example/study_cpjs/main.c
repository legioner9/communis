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
// #define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

// #define errExit(msg)                                                                                                   \
//     do                                                                                                                 \
//     {                                                                                                                  \
//         perror(msg);                                                                                                   \
//         exit(EXIT_FAILURE);                                                                                            \
//     } while (0)

#define MAXSETSIZE 25

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    extern int errno;

    struct semid_ds semid_ds;

    int length, rtrn, i, c;

    int semid, semnum, cmd, choice;

    union semun {

        int val;

        struct semid_ds *buf;

        ushort array[MAXSETSIZE];

    } arg;

    /* Инициализация указателя на структуру данных */

    arg.buf = &semid_ds;

    /* Ввести идентификатор множества семафоров */

    printf("Введите ид-р множества семафоров: ");

    scanf("%d", &semid);

    /* Выбрать требуемое управляющее действие */

    printf("\nВведите номер требуемого действия:\n");

    printf(" GETVAL = 1\n");

    printf(" SETVAL = 2\n");

    printf(" GETPID = 3\n");

    printf(" GETNCNT = 4\n");

    printf(" GETZCNT = 5\n");

    printf(" GETALL = 6\n");

    printf(" SETALL = 7\n");

    printf(" IPC_STAT = 8\n");

    printf(" IPC_SET = 9\n");

    printf(" IPC_RMID = 10\n");

    printf(" Выбор = ");

    scanf("%d", &cmd);

    /* Проверить значения */

    printf("идентификатор = %d, команда = %d\n",

           semid, cmd);

    /* Сформировать аргументы и выполнить вызов */

    switch (cmd)
    {

    case 1: /* Получить значение */

        printf("\nВведите номер семафора: ");

        scanf("%d", &semnum);

        /* Выполнить системный вызов */

        rtrn = semctl(semid, semnum, GETVAL, 0);

        printf("\nЗначение семафора = %d\n", rtrn);

        break;

    case 2: /* Установить значение */

        printf("\nВведите номер семафора: ");

        scanf("%d", &semnum);

        printf("\nВведите значение: ");

        scanf("%d", &arg.val);

        /* Выполнить системный вызов */

        rtrn = semctl(semid, semnum, SETVAL,

                      arg.val);

        break;

    case 3: /* Получить ид-р процесса */

        rtrn = semctl(semid, 0, GETPID, 0);

        printf("\Последнюю операцию выполнил:%d\n", rtrn);

        break;

    case 4: /* Получить число процессов, ожидающих

            увеличения значения семафора */

        printf("\nВведите номер семафора: ");

        scanf("%d", &semnum);

        /* Выполнить системный вызов */

        rtrn = semctl(semid, semnum, GETNCNT, 0);

        printf("\nЧисло процессов = %d\n", rtrn);

        break;

    case 5: /* Получить число процессов, ожидающих

          обнуления значения семафора */

        printf("Введите номер семафора: ");

        scanf("%d", &semnum);

        /* Выполнить системный вызов */

        rtrn = semctl(semid, semnum, GETZCNT, 0);

        printf("\nЧисло процессов = %d\n", rtrn);

        break;

    case 6: /* Опросить все семафоры */

        /* Определить число семафоров в множестве */

        rtrn = semctl(semid, 0, IPC_STAT, arg.buf);

        length = arg.buf->sem_nsems;

        if (rtrn == -1)
            goto ERROR;

        /* Получить и вывести значения всех

        семафоров в указанном множестве */

        rtrn = semctl(semid, 0, GETALL, arg.array);

        for (i = 0; i < length; i++)

            printf(" %d", arg.array[i]);

        break;

    case 7: /* Установить все семафоры */

        /* Определить число семафоров в множестве */

        rtrn = semctl(semid, 0, IPC_STAT, arg.buf);

        length = arg.buf->sem_nsems;

        if (rtrn == -1)
            goto ERROR;

        printf("\nЧисло семафоров = %d\n", length);

        /* Установить значения семафоров множества */

        printf("\nВведите значения:\n");

        for (i = 0; i < length; i++)

            scanf("%d", &arg.array[i]);

        /* Выполнить системный вызов */

        rtrn = semctl(semid, 0, SETALL, arg.array);

        break;

    case 8: /* Опросить состояние множества */

        rtrn = semctl(semid, 0, IPC_STAT, arg.buf);

        printf("\nИдентификатор пользователя = %d\n",

               arg.buf->sem_perm.uid);

        printf("Идентификатор группы = %d\n",

               arg.buf->sem_perm.gid);

        printf("Права на операции = 0%o\n",

               arg.buf->sem_perm.mode);

        printf("Число семафоров в множестве = %d\n",

               arg.buf->sem_nsems);

        printf("Время последней операции = %d\n",

               arg.buf->sem_otime);

        printf("Время последнего изменения = %d\n",

               arg.buf->sem_ctime);

        break;

    case 9: /* Выбрать и изменить поле

          ассоциированной структуры данных */

        /* Опросить текущее состояние */

        rtrn = semctl(semid, 0, IPC_STAT, arg.buf);

        if (rtrn == -1)
            goto ERROR;

        printf("\nВведите номер поля, ");

        printf("которое нужно изменить: \n");

        printf(" sem_perm.uid = 1\n");

        printf(" sem_perm.gid = 2\n");

        printf(" sem_perm.mode = 3\n");

        printf(" Выбор = ");

        scanf("%d", &choice);

        switch (choice)
        {
        case 1: /* Изменить ид-р владельца */

            printf("\nВведите ид-р владельца: ");

            scanf("%d", &arg.buf->sem_perm.uid);

            printf("\nИд-р владельца = %d\n",

                   arg.buf->sem_perm.uid);

            break;

        case 2: /* Изменить ид-р группы */

            printf("\nВведите ид-р группы = ");

            scanf("%d", &arg.buf->sem_perm.gid);

            printf("\nИд-р группы = %d\n",

                   arg.buf->sem_perm.uid);

            break;

        case 3: /* Изменить права на операции */

            printf("\nВведите восьмеричный код прав доступа: ");

            scanf("%o", &arg.buf->sem_perm.mode);

            printf("\nПрава = 0%o\n",

                   arg.buf->sem_perm.mode);

            break;
        }

        /* Внести изменения */

        rtrn = semctl(semid, 0, IPC_SET, arg.buf);

        break;

    case 10: /* Удалить ид-р множества семафоров и

        ассоциированную структуру данных */

        rtrn = semctl(semid, 0, IPC_RMID, 0);
    }

    if (rtrn == -1)
    {

        /* Сообщить о неудачном завершении */

    ERROR:

        printf("\nsemctl завершился неудачей!\n");

        printf("\nКод ошибки = %d\n", errno);
    }

    else
    {

        printf("\nmsgctl завершился успешно,\n");

        printf("идентификатор semid = %d\n", semid);
    }

    // exit(0);

    return 0;
}
