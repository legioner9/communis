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

get_str_rm_char(char *str,char replaced)
{
    int len_str = strlen(str);
    int i = 1;
    char *p, *pnext;

    p = str;
    while(i<len_str){

        pnext = p;
        while(pnext[0] == replaced){
            pnext++;
            i++;
        }

    }
}

main(){
    int a {{side of rect}}
    int b {{side of rect}}
    int perimetr {{perimetr of rect}}

    perimetr = (a+b)*2
}

*/

// функция удаления #
void changeD(char *st)
{
    // получим длину строки
    int len = strlen(st);
    int i = 1;
    // создадим два указателя на char
    char *p;     // отвечает за начало группы #
    char *pnext; // отвечает за конец группы #
    // указатель p получает адрес начала строки
    p = st;
    // переберем всю строку в поисках #
    while (i < len)
    {
        pnext = p;
        //если встретился # перемещаем указатель pnext
        // пока не встретится любой другой символ
        while (pnext[0] == '#')
        {
            pnext++;
            i++;
        }
        // если # был, то ВМЕСТО него ставим "конец строки"
        // для функции strcat
        // например: a123#ff -> a124'\0'ff
        // strcat будет "думать", что строка - a123, а следующая, на которую
        // указывает pnext: ff
        // Тогда он сможет соединить из в одну: a123ff
        if (pnext != p)
        {
            // поставили "конец" вместо #
            p[0] = '\0';
            // соединяем
            strcat(st, pnext);
        }
        i++;
        p++;
    }
    // если в конце строки стоят #, обрежем ее
    if (p[0] == '#')
    {
        p[0] = '\0';
    }
};
int main()
{
    int i;
    char str[10]; // маленький буфер для чтения
    int len;      // длина прочитанной строки
    int count = 0;
    FILE *fin;  // файл для чтения
    FILE *fout; // файл для записи
    // открываем файл для чтения
    fin = fopen("str1.dat", "r");
    if (errno)
    {
        perror(":(");
        exit(1);
    }
    // открываем файл для чтения
    fout = fopen("str_out.dat", "w");
    if (errno)
    {
        perror(":(");
        exit(1);
    }
    // функция fgets позволяет указать максимальный размер
    // прочитываемой строки
    // будем читать по-частям.
    // fgets читает либо указанное количество символов, либо до переноса строки, если символов меньше
    // если не может прочитать , возвращает NULL
    while (fgets(str, 9, fin) != NULL)
    {
        // поучаем размер прочитанной строки
        len = strlen(str);
        // fgets не ставит конец строки в конец массива.
        // ставим сами ПОСЛЕ прочитанного текста
        // В этом случае сохранится "перенос строки"
        if (len < 9)
            str[len] = '\0';
        else
            str[9] = '\0';
        // вызов функции замены для прочитанной части строки
        changeD(str);
        // печать в файл исправленной части
        fputs(str, fout);
    }
    // закрыли оба файла
    fclose(fin);
    fclose(fout);
    return 0;
}
