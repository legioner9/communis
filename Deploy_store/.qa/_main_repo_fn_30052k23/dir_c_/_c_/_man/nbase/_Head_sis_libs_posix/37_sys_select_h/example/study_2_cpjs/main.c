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
// https://ru.manpages.org/select/2

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

// #define errExit(msg)                                                                                                   \
//     do                                                                                                                 \
//     {                                                                                                                  \
//         perror(msg);                                                                                                   \
//         exit(EXIT_FAILURE);                                                                                            \
//     } while (0)

// Вот пример, который лучше демонстрирует возможности select(). Программа осуществляет
// перенаправление одного порта TCP в другой.

// Вышеприведенная программа правильно перенаправляет большинство данных задач,
// использующих соединения TCP, включая внепоточные (OOB) данные, передаваемые
// серверами telnet. Она справляется со сложной проблемой поддержания одновременного
// двустороннего обмена данными. Возможно, вы решите, что эффективнее использовать
// fork(2) и выделить отдельную нить для каждого потока. На самом деле это сложнее,
// чем кажется. Другой идеей может быть использование неблокирующего ввода-вывода с
// помощью fcntl(2). Это также может вызвать проблемы из-за того, что придётся
// использовать неэффективные таймауты.

// Программа не обрабатывает более одного соединения, однако она может быть легко
// доработана путем добавления связанного списка буферов — по одному на каждое
// соединение. В данный момент новые соединения приводят к закрытию текущего.

// Использование
//         fwd <прослушиваемый-порт> <порт-перенаправления> <ip-адрес-перенаправления>

static int forward_port;
#undef max
#define max(x, y) ((x) > (y) ? (x) : (y))
static int listen_socket(int listen_port)
{
    struct sockaddr_in a;
    int s;
    int yes;
    s = socket(AF_INET, SOCK_STREAM, 0);
    if (s == -1)
    {
        perror("socket");
        return -1;
    }
    yes = 1;
    if (setsockopt(s, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(yes)) == -1)
    {
        perror("setsockopt");
        close(s);
        return -1;
    }
    memset(&a, 0, sizeof(a));
    a.sin_port = htons(listen_port);
    a.sin_family = AF_INET;
    if (bind(s, (struct sockaddr *)&a, sizeof(a)) == -1)
    {
        perror("bind");
        close(s);
        return -1;
    }
    printf("приём подключений к порту %d\n", listen_port);
    listen(s, 10);
    return s;
}
static int connect_socket(int connect_port, char *address)
{
    struct sockaddr_in a;
    int s;
    s = socket(AF_INET, SOCK_STREAM, 0);
    if (s == -1)
    {
        perror("socket");
        close(s);
        return -1;
    }
    memset(&a, 0, sizeof(a));
    a.sin_port = htons(connect_port);
    a.sin_family = AF_INET;
    if (!inet_aton(address, (struct in_addr *)&a.sin_addr.s_addr))
    {
        perror("неправильный формат IP-адреса");
        close(s);
        return -1;
    }
    if (connect(s, (struct sockaddr *)&a, sizeof(a)) == -1)
    {
        perror("connect()");
        shutdown(s, SHUT_RDWR);
        close(s);
        return -1;
    }
    return s;
}
#define SHUT_FD1                                                                                                       \
    do                                                                                                                 \
    {                                                                                                                  \
        if (fd1 >= 0)                                                                                                  \
        {                                                                                                              \
            shutdown(fd1, SHUT_RDWR);                                                                                  \
            close(fd1);                                                                                                \
            fd1 = -1;                                                                                                  \
        }                                                                                                              \
    } while (0)
#define SHUT_FD2                                                                                                       \
    do                                                                                                                 \
    {                                                                                                                  \
        if (fd2 >= 0)                                                                                                  \
        {                                                                                                              \
            shutdown(fd2, SHUT_RDWR);                                                                                  \
            close(fd2);                                                                                                \
            fd2 = -1;                                                                                                  \
        }                                                                                                              \
    } while (0)
#define BUF_SIZE 1024
int main(int argc, char *argv[])
{
    int h;
    int fd1 = -1, fd2 = -1;
    char buf1[BUF_SIZE], buf2[BUF_SIZE];
    int buf1_avail, buf1_written;
    int buf2_avail, buf2_written;
    if (argc != 4)
    {
        fprintf(stderr, "Использование\n\tfwd <прослушиваемый-порт> "
                        "<порт-перенаправления> <ip-адрес-перенаправления>\n");
        exit(EXIT_FAILURE);
    }
    signal(SIGPIPE, SIG_IGN);
    forward_port = atoi(argv[2]);
    h = listen_socket(atoi(argv[1]));
    if (h == -1)
        exit(EXIT_FAILURE);
    for (;;)
    {
        int r, nfds = 0;
        fd_set rd, wr, er;
        FD_ZERO(&rd);
        FD_ZERO(&wr);
        FD_ZERO(&er);
        FD_SET(h, &rd);
        nfds = max(nfds, h);
        if (fd1 > 0 && buf1_avail < BUF_SIZE)
        {
            FD_SET(fd1, &rd);
            nfds = max(nfds, fd1);
        }
        if (fd2 > 0 && buf2_avail < BUF_SIZE)
        {
            FD_SET(fd2, &rd);
            nfds = max(nfds, fd2);
        }
        if (fd1 > 0 && buf2_avail - buf2_written > 0)
        {
            FD_SET(fd1, &wr);
            nfds = max(nfds, fd1);
        }
        if (fd2 > 0 && buf1_avail - buf1_written > 0)
        {
            FD_SET(fd2, &wr);
            nfds = max(nfds, fd2);
        }
        if (fd1 > 0)
        {
            FD_SET(fd1, &er);
            nfds = max(nfds, fd1);
        }
        if (fd2 > 0)
        {
            FD_SET(fd2, &er);
            nfds = max(nfds, fd2);
        }
        r = select(nfds + 1, &rd, &wr, &er, NULL);
        if (r == -1 && errno == EINTR)
            continue;
        if (r == -1)
        {
            perror("select()");
            exit(EXIT_FAILURE);
        }
        if (FD_ISSET(h, &rd))
        {
            unsigned int l;
            struct sockaddr_in client_address;
            memset(&client_address, 0, l = sizeof(client_address));
            r = accept(h, (struct sockaddr *)&client_address, &l);
            if (r == -1)
            {
                perror("accept()");
            }
            else
            {
                SHUT_FD1;
                SHUT_FD2;
                buf1_avail = buf1_written = 0;
                buf2_avail = buf2_written = 0;
                fd1 = r;
                fd2 = connect_socket(forward_port, argv[3]);
                if (fd2 == -1)
                    SHUT_FD1;
                else
                    printf("подключение от %s\n", inet_ntoa(client_address.sin_addr));
            }
        }
        /* NB: чтение данных oob до обычных */
        if (fd1 > 0)
            if (FD_ISSET(fd1, &er))
            {
                char c;
                r = recv(fd1, &c, 1, MSG_OOB);
                if (r < 1)
                    SHUT_FD1;
                else
                    send(fd2, &c, 1, MSG_OOB);
            }
        if (fd2 > 0)
            if (FD_ISSET(fd2, &er))
            {
                char c;
                r = recv(fd2, &c, 1, MSG_OOB);
                if (r < 1)
                    SHUT_FD2;
                else
                    send(fd1, &c, 1, MSG_OOB);
            }
        if (fd1 > 0)
            if (FD_ISSET(fd1, &rd))
            {
                r = read(fd1, buf1 + buf1_avail, BUF_SIZE - buf1_avail);
                if (r < 1)
                    SHUT_FD1;
                else
                    buf1_avail += r;
            }
        if (fd2 > 0)
            if (FD_ISSET(fd2, &rd))
            {
                r = read(fd2, buf2 + buf2_avail, BUF_SIZE - buf2_avail);
                if (r < 1)
                    SHUT_FD2;
                else
                    buf2_avail += r;
            }
        if (fd1 > 0)
            if (FD_ISSET(fd1, &wr))
            {
                r = write(fd1, buf2 + buf2_written, buf2_avail - buf2_written);
                if (r < 1)
                    SHUT_FD1;
                else
                    buf2_written += r;
            }
        if (fd2 > 0)
            if (FD_ISSET(fd2, &wr))
            {
                r = write(fd2, buf1 + buf1_written, buf1_avail - buf1_written);
                if (r < 1)
                    SHUT_FD2;
                else
                    buf1_written += r;
            }
        /* проверить, что записанные данные были прочитаны */
        if (buf1_written == buf1_avail)
            buf1_written = buf1_avail = 0;
        if (buf2_written == buf2_avail)
            buf2_written = buf2_avail = 0;
        /* одна из сторон закрыла соединение, продолжать
           записывать, пока другая сторона не закончит */
        if (fd1 < 0 && buf1_avail - buf1_written == 0)
            SHUT_FD2;
        if (fd2 < 0 && buf2_avail - buf2_written == 0)
            SHUT_FD1;
    }
    exit(EXIT_SUCCESS);
}
