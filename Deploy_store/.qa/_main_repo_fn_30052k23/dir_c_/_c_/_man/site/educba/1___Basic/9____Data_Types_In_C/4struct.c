#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>

// lc_

#define N 6

struct student
{
    int id;
    int mark;
};

int main(int argc, char const *argv[])
{
    struct student st;

    st.id = 7745;
    st.mark = 4;
    printf("st.id = %d\n", st.id);
    printf("st.mark = %d\n", st.mark);

    return 0;
}