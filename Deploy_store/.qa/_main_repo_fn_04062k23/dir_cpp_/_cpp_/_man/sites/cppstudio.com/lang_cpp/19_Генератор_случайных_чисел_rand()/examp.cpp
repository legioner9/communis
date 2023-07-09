// Генератор случайных чисел rand()

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    cout << "RAND_MAX = " << RAND_MAX << endl;
    srand(time(0));
    double a1 = 0, a2 = 0, a = 0;
    for (size_t i = 0; i < 100000; i++)
    {
        a = rand() % 2 + 1;
        if (a == 1)
        {
            a1++;
        }
        if (a == 2)
        {
            a2++;
        }
    }
    cout << "P1 = " << (a1 / 100000) << endl;
    cout << "P2 = " << (a2 / 100000) << endl;
    return 0;
}