#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>

// lc_

#define N 6

struct Books
{
    char title[50];
    char author[50];
    char subject[100];
    int arr[10];
    int book_id;
};

int main(int argc, char const *argv[])
{
    struct Books Book_1;

    strcpy(Book_1.title, "C Programming");
    Book_1.book_id = 33;
    Book_1.arr[0] = 21;

    printf("Book_1.title = %s\n", Book_1.title);
    printf("Book_1.book_id = %d\n", Book_1.book_id);
    return 0;
}