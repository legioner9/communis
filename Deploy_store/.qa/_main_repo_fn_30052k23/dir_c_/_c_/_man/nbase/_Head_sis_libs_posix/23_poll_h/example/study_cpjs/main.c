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
#include "lib/lib_1.h"
#include "lib/libgen_1.h"
#include "lib/socket_1.h"
#include "lib/st_mode_1.h"
#include "lib/sys_stat_1.h"
#include "lib/uni_1.h"

#define N 6

#include <aio.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <netdb.h>
#include <netinet/in.h>
#include <signal.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>

#include <dirent.h>
#include <fcntl.h>
#include <fmtmsg.h>
#include <ftw.h>
#include <gdbm.h>
#include <glob.h>
#include <grp.h>
#include <iconv.h>
#include <inttypes.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

#define _XOPEN_SOURCE 500
// #define _GNU_SOURCE

/* poll_input.c


   Licensed under GNU General Public License v2 or later.
*/
#include <poll.h>

void errExit(msg)
{
    do
    {
        perror(msg);
        exit(EXIT_FAILURE);

    } while (0);
}

int main(int argc, char *argv[])
{

    int nfds, num_open_fds;

    struct pollfd *pfds;

    if (argc < 2)
    {

        fprintf(stderr, "Usage: %s file...\n", argv[0]);

        exit(EXIT_FAILURE);
    }

    num_open_fds = nfds = argc - 1;

    pfds = calloc(nfds, sizeof(struct pollfd));

    if (pfds == NULL)

        errExit("malloc");

    /* Open each file on command line, and add it 'pfds' array */

    for (int j = 0; j < nfds; j++)
    {

        pfds[j].fd = open(argv[j + 1], O_RDONLY);

        if (pfds[j].fd == -1)

            errExit("open");

        printf("Opened \"%s\" on fd %d\n", argv[j + 1], pfds[j].fd);

        pfds[j].events = POLLIN;
    }

    /* Keep calling poll() as long as at least one file descriptor is


       open */

    while (num_open_fds > 0)
    {

        int ready;

        printf("About to poll()\n");

        ready = poll(pfds, nfds, -1);

        if (ready == -1)

            errExit("poll");

        printf("Ready: %d\n", ready);

        /* Deal with array returned by poll() */

        for (int j = 0; j < nfds; j++)
        {

            char buf[10];

            if (pfds[j].revents != 0)
            {

                printf("  fd=%d; events: %s%s%s\n", pfds[j].fd,

                       (pfds[j].revents & POLLIN) ? "POLLIN " : "",

                       (pfds[j].revents & POLLHUP) ? "POLLHUP " : "",

                       (pfds[j].revents & POLLERR) ? "POLLERR " : "");

                if (pfds[j].revents & POLLIN)
                {

                    ssize_t s = read(pfds[j].fd, buf, sizeof(buf));

                    if (s == -1)

                        errExit("read");

                    printf("    read %zd bytes: %.*s\n",

                           s, (int)s, buf);
                }
                else
                { /* POLLERR | POLLHUP */

                    printf("    closing fd %d\n", pfds[j].fd);

                    if (close(pfds[j].fd) == -1)

                        errExit("close");

                    num_open_fds--;
                }
            }
        }
    }

    printf("All file descriptors closed; bye\n");

    exit(EXIT_SUCCESS);
}
