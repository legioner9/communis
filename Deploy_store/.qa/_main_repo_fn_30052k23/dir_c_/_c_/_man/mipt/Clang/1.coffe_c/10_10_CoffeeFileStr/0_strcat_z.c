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

char *strcat_z(char *dest, char *src);
size_t strlen_z(char *str);

char *strcat_z(char *dest, char *src){
    size_t full_len_src = strlen_z(src) + 1;
    size_t len_dist = strlen(dist);

    for(size_t i=0;i<full_len_src;i++){
        dest[len_dist + i]=src[i];
    }

    return dest;
}

size_t strlen_z(char *str){
    for(size_t i=0;str[i] != '\0' && i < 1000 ;i++){
        dest[len_dist + i]=src[i];
    }
}

char *rm_char_from_str(char *str, char removed){

}


main(){

    char str[] = {'a', 'b', 'c'};
    size_t len = strlen_z(str);

    printf("len: %d", (int)len);
}

*/

char *strcat_z(char *dest, char *src);
size_t strlen_z(char *str);
int unseal_cntchar_lc_str(char *s);

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    char dest[] = {'a', 'b', 'c', '\0', 'a', 'b', 'c', '\0'};
    char *src = "def";

    size_t len = strlen_z(dest);
    printf("\nlen before: %d\n", (int)len);

    size_t len_orig = strlen(dest);
    printf("\nlen_orig before: %d\n", (int)len_orig);
    printf("dest: %s\n that unsealed: ", dest);
    unseal_cntchar_lc_str(dest);

    strcat_z(dest, src);
    len = strlen_z(dest);

    printf("\nlen after: %d\n", (int)len);
    printf("dest: %s\n that unsealed: ", dest);
    unseal_cntchar_lc_str(dest);

    return 0;
}

char *strcat_z(char *dest, char *src)
{
    size_t full_len_src = strlen_z(src) + 1;
    size_t len_dist = strlen(dest);

    for (size_t i = 0; i < full_len_src; i++)
    {
        dest[len_dist + i] = src[i];
    }

    return dest;
}

size_t strlen_z(char *str)
{
    size_t i;
    for (i = 0; str[i] != '\0' && i < 1000; ++i)
    {
    }
    return i;
}

int unseal_cntchar_lc_str(char *s)
{
    int i;
    int c;
    for (i = 0; i < strlen(s) + 1; ++i)
    {
        c = (int)s[i];
        if (c == '\0')
        {
            printf("\\0");
        }
        else if (c == '\n')
        {
            printf("\\n");
            putchar(c);
        }
        else if (c == '\f')
        {
            printf("\\f");
            putchar(c);
        }
        else if (c == '\t')
        {
            printf("\\t");
            putchar(c);
        }
        else if (c == '\v')
        {
            printf("\\v");
            putchar(c);
        }
        else if (c == '\a')
        {
            printf("\\a");
            putchar(c);
        }
        else if (c == '\b')
        {
            printf("\\b");
            putchar(c);
        }
        else
            putchar(c);
    }

    return 0;
}
