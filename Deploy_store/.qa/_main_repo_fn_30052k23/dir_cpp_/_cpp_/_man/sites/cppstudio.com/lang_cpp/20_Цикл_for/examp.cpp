// Цикл for

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    for (size_t i = 0; i < 10; i++)
    {
        if (i % 2 == 0)
        {
            cout << i << endl;
        }
    }

    return 0;
}