// Оператор break

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    for (size_t i = 0; i < 10; ++i)
    {
        cout << i << endl;
        if (i >= 5)
        {
            // i = 11;
            break;
        }
    }

    return 0;
}