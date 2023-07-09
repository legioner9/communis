#include <stdio.h>
#include "fn_1.h"

void fn_2()
{
    fn_1();
    printf("+that from fn_2.c\n");
}