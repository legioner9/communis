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

/*---------------------------------------------------------------------*/
/*-----------------------------------------------------------*/
/*-------------------------------------------------*/

int main()
{
    int i;
    char buf[100];  // буфер для чтения
    char *w, *w1;   // будет выделена памятьдля двух строк
    int len;        // ширина картинки
    int count = 0;  // количество прямоугольников
    int before = 0; // была ли впереди *
    // файл для чтения
    FILE *fin;
    fin = fopen("rec.dat", "r");
    if (errno)
    {
        perror(":(");
        exit(1);
    }
    // прочитаем первую строку и узнаем ее размер
    fscanf(fin, "%s", buf);
    len = strlen(buf);
    // выделим память из "кучи" для двух строк
    w = (char *)calloc(len, sizeof(char));
    w1 = (char *)calloc(len, sizeof(char));
    // заполним точками строку w
    memset(w, '.', sizeof(char) * len);
    // будем читать в цикле пока не закончится файл
    do
    {
        // скопируем весь прочитанный буфер в строку w1
        memcpy(w1, buf, len * sizeof(char));
        for (i = 0; i < len; i++)
        {
            // если встртился "верхний левый угол" прямоугольника
            // сосчитаем его
            if (w1[i] == '*')
            {
                if (before == 0 && w[i] == '.')
                {
                    count++;
                    before = 1;
                }
            }
            else
            {
                before = 0;
            }
        }
        // скоприуем в w строку w1. Она стала "верхней"
        memcpy(w, w1, sizeof(char) * len);
        // напечатаем ее для наглядности
        printf("%s\n", w);
        // читаем из файла пока он не кончился
    } while (fscanf(fin, "%s", buf) != EOF);
    // печатаем сколько прямоугольников
    printf("count=%d\n", count);
    fclose(fin);
}

/*-------------------------------------------------*/
/*-----------------------------------------------------------*/
/*---------------------------------------------------------------------*/
