#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

#define N_ 100 // N only even

int set_buf_prime_divis(int num, int Buf[]);
void get_max_quantity_prime();

int main(int argc, char const *argv[])
{
    int Arr_pr_div[N_];

    int enter_num;
    printf("Enter enter_num\n");
    scanf("%d", &enter_num);

    // get_max_quantity_prime();

    int buf_top = set_buf_prime_divis(enter_num, Arr_pr_div);

    for (int i = 0; i < buf_top; i++)
    {
        printf("%3d", Arr_pr_div[i]);
    }

    printf("\n");

    return 0;
}

void get_max_quantity_prime()
{

    int num_ = (1 << 30) - 1 + (1 << 30);
    int divisor = 2;
    int top = 0;

    printf("%d\n", num_);

    while (1 != num_)
    {
        if (0 == num_ % divisor)
        {
            top += 1;
            num_ /= divisor;
        }
        else
            divisor += 1;
    }
    printf("Max quantity primes = %d\n", top);
}

int set_buf_prime_divis(int num_, int Buf[])
{
    // int num_ = num;
    int top = 0;
    int divisor = 2;
    while (1 != num_)
    {
        if (0 == num_ % divisor)
        {
            Buf[top] = divisor;
            top += 1;
            num_ /= divisor;
        }
        else
            divisor += 1;
    }

    printf("\nQuantity : %d\n", top);

    return top;
}
