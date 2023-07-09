#include <stdio.h>
#include <wordexp.h>
#include <stdlib.h>

static void expand(char const *title, char const *str)
{
    printf("%s input: %s\n", title, str);
    wordexp_t exp;
    int rcode = 0;
    if ((rcode = wordexp(str, &exp, WRDE_NOCMD)) == 0)
    {
        printf("output:\n");
        for (size_t i = 0; i < exp.we_wordc; i++)
            printf("%s\n", exp.we_wordv[i]);
        wordfree(&exp);
    }
    else
    {
        printf("expand failed %d\n", rcode);
    }
}

int main()
{
    char const *str = "1 2:3 4:5";

    expand("No IFS", str);

    int rcode = setenv("IFS", ":", 1);
    if (rcode != 0)
    {
        perror("setenv IFS failed: ");
        return 1;
    }

    expand("IFS=':'", str);

    return 0;
}