#include <stdio.h>
int a, b;
int main()
{
    scanf("%d", &a);
    asm volatile(".intel_syntax noprefix;\n"
                 "mov  eax, a\n"
                 /* и другой ассемблерный код, который заключен в ", оканчивается на \n */
                 "mov a, eax\n"
                 ".att_syntax noprefix;");
    printf("%d\n", a);
    return 0;
}