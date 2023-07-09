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
#include "lib/io_1.h"
#include "lib/lib_1.h"

#define N 6

struct
{
    char name[40];
    int age;
} person, person_copy;

int main(int argc, char const *argv[])
{
    char myname[] = "Pierre de Fermat";

    /* using memcpy to copy string: */
    memcpy(person.name, myname, strlen(myname) + 1);
    person.age = 46;

    /* using memcpy to copy structure: */
    memcpy(&person_copy, &person, sizeof(person));

    printf("person_copy: %s, %d \n", person_copy.name, person_copy.age);

    return 0;
}

// Вывод:

// person_copy: Pierre de Fermat, 46 

