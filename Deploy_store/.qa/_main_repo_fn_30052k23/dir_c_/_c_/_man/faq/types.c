#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>

int main(int argc, char const *argv[])
{
    char *str = "that the string";
    char c = 'r';
    int i = 3;
    int8_t i_8 = 128;
    double d = 4444444;
    bool b = true;
    bool b_n = true;
    printf("char *str = %s, \n"
           "char c = %c, \n"
           "int i = %d, \n"
           "int8_t i_8 = %d, \n" // -128
           "double d = %f, \n"
           "bool b = %s, \n"
           "bool b_n = %d, \n",
           str, c, i, i_8, d, (b ? "true" : "false"), b_n);

    return 0;
}