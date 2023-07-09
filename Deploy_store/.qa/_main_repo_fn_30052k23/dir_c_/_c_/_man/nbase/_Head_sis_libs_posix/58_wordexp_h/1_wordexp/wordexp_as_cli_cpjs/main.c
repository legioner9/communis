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
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/l3p_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"
#include "lib/uni_1.h"
#include "lib/fcntl_1.h"
#include "lib/dirent_1.h"
#include "lib/sys_stat_1.h"
#include "lib/st_mode_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>
#include <wordexp.h>

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

// Вот пример использования wordexp для расширения нескольких строк 
// и использования результатов для выполнения команды оболочки. Он также 
// показывает использование WRDE_APPEND для объединения расширений 
// и wordfree для освобождения пространства, выделенного wordexp.

// Практически, т. к. wordexp работает, выполняя подоболочку, было бы 
// быстрее сделать это, связывая строки с пробелами между ними и выполняя 
// это как команду оболочки, используюя " sh -c "

int expand_and_execute(const char *program, const char **options)
{
    wordexp_t result;
    pid_t pid int status, i;

    /* Expand the string for the program to run.  */
    switch (wordexp(program, &result, 0))
    {
    case 0: /* Successful.  */
        break;
    case WRDE_NOSPACE:
        /* If the error was WRDE_NOSPACE,
           then perhaps part of the result was allocated.  */
        wordfree(&result);
    default: /* Some other error.  */
        return -1;
    }

    /* Expand the strings specified for the arguments.  */
    for (i = 0; options[i] != NULL; i++)
    {
        if (wordexp(options[i], &result, WRDE_APPEND))
        {
            wordfree(&result);
            return -1;
        }
    }

    pid = fork();
    if (pid == 0)
    {
        /* This is the child process.  Execute the command. */
        execv(result.we_wordv[0], result.we_wordv);
        exit(EXIT_FAILURE);
    }
    else if (pid < 0)
        /* The fork failed.  Report failure.  */
        status = -1;
    else
        /* This is the parent process.  Wait for the child to complete.  */
        if (waitpid(pid, &status, 0) != pid)
            status = -1;

    wordfree(&result);
    return status;
}

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    int array[N] = {};
    fill_rand_lc_0_MxV_Ac_Ar(100, N, array);
    pr_int_arr_lc_0_Ac_Ar(N, array);
    printf("%d \n", is_prime_lc_0_Chint(array[1]));
    return 0;
}
