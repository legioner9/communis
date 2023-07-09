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
#include <poll.h>
#include <pthread.h>
#include <pwd.h>
#include <regex.h>
#include <sched.h>
#include <search.h>
#include <semaphore.h>
#include <setjmp.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>

#define _XOPEN_SOURCE 500
// https://www.ibm.com/docs/en/zos/2.3.0?topic=functions-setjmp-preserve-stack-environment

// setjmp() возвращает 0 после сохранения среды стека.

// Если setjmp() возвращается в результате вызова longjmp(), он возвращает значение аргумента
// longjmp() или значение 1, если значение аргумента longjmp() равно 0.

// Когда система впервые выполняет ifинструкцию, она сохраняет среду в mark и устанавливает
// условие FALSEравным, потому что setjmp() возвращает 0 при сохранении среды. Программа печатает
// сообщение: setjmp has been called.

// Последующий вызов функции p проверяет наличие локальной ошибки, которая может привести
// к выполнению функции longjmp(). Затем управление возвращается к исходной функции setjmp(),
// используя среду, сохраненную в mark. На этот раз условие TRUEвызвано тем, что -1 является
// возвращаемым значением из функции longjmp(). Затем программа выполняет инструкции в блоке
// и печатает: longjmp has been called. Наконец, программа вызывает recoverфункцию
// и завершает работу.

#define VAL 17

jmp_buf mark;

void p(void);
void recover(void);
int a = 1;

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{

    if (setjmp(mark) == VAL)
    {
        printf("longjmp has been called, a = %d\n", a);
        recover();
        exit(1);
    }
    printf("setjmp has been called, a = %d\n", a);
    // ⋮
    p();
    // ⋮
    return 0;
}

void p(void)
{
    int error = 0;
    // ⋮
    a = 2;
    error = 9;
    // ⋮
    if (error != 0)
        longjmp(mark, VAL);
    // ⋮
}

void recover(void)
{
    // ⋮
}
