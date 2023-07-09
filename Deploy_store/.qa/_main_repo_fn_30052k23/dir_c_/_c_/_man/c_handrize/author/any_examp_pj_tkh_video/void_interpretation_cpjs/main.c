#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"

#define N 6

void prn_abstract(void *i, int id_type);

int main(int argc, char const *argv[])
{
    char c = 'A';
    int n = 7;
    double d = 1.1;

    prn_abstract(&c, 1);
    prn_abstract(&n, 2);
    prn_abstract(&d, 3);

    return 0;
}

void prn_abstract(void *p, int id_type)
{
    if (id_type == 1)
        printf("%c\n", *(char *)p); // type casting to char ptr
    else if (id_type == 2)
        printf("%d\n", *(int *)p);
    else if (id_type == 3)
        printf("%lf\n", *(double *)p);
    else
    {
        printf("$2 is out if range");
        exit(1);
    }
}
