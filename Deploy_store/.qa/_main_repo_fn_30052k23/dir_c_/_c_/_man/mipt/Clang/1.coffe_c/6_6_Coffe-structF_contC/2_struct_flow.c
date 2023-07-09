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

// LIB FROM HOME/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
//#include "lib/dirent_1.h"
//#include "lib/fcntl_1.h"
//#include "lib/io_1.h"
//#include "lib/l3p_1.h"
//#include "lib/lc_0.h"
//#include "lib/lc_1.h"
//#include "lib/lc_in.h"
//#include "lib/lc_io.h"
//#include "lib/lc_pipe.h"
//#include "lib/lc_str.h"
//#include "lib/lc_time.h"
//#include "lib/lib_1.h"
//#include "lib/libgen_1.h"
//#include "lib/socket_1.h"
//#include "lib/st_mode_1.h"
//#include "lib/sys_stat_1.h"
//#include "lib/uni_1.h"

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
/* schema

main(){
    int a {{side of rect}}
    int b {{side of rect}}
    int perimetr {{perimetr of rect}}

    perimetr = (a+b)*2
}

*/

typedef struct Pnt
{
    int x;
    int y;
} Point;

typedef struct LN
{
    Point a, b;
    float distance;
} Line;

Point new_point(int x, int y)
{
    Point d2;
    d2.x = x;
    d2.y = y;
    return d2;
}

float calc_distance(Point a, Point b)
{
    int dx = a.x - b.x;
    int dy = a.y - b.y;

    return (float)sqrt(dx * dx + dy * dy);
}

Line new_line(Point a, Point b)
{
    Line res = {a, b, calc_distance(a, b)};
    return res;
}

Point mirror_y_point(Point d2)
{
    Point r2;
    r2 = new_point(d2.x * (-1), d2.y);
    return r2;
}

void prn_point(Point d2, char prompt[])
{
    printf("%s (%d, %d)\n", prompt, d2.x, d2.y);
}

void prn_line(Line ln, char prompt[])
{
    printf("%s", prompt);
    prn_point((Point)ln.a, "a is (x,y):");
    prn_point((Point)ln.b, "b is (x,y):");
    printf("ln.distance:%.2f\n",ln.distance);
}

void enter_point_modpar(Point *ptr_point, char prompt[])
{
    int x, y;
    printf("%s", prompt);
    scanf("%d%d", &x, &y);

    ptr_point->x = x;
    ptr_point->y = y;
}

Point enter_point_ret(char prompt[])
{
    int x, y;
    printf("%s\n", prompt);
    scanf("%d%d", &x, &y);
    Point ret = new_point(x, y);
    return ret;
}

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{

    Point a = enter_point_ret("Enter Point a (int)x,y");
    prn_point(a, "a is (x,y):");

    Point b;
    enter_point_modpar(&b, "Enter Point b (int)x,y");
    prn_point(b, "b is (x,y):");

    Line ln_1 = new_line(a, b);
    prn_point(ln_1.a, "ln_1.a (x,y)");
    prn_point(ln_1.b, "ln_1.b (x,y)");

    prn_line(ln_1, "ln_1 is:");

    return 0;
}
