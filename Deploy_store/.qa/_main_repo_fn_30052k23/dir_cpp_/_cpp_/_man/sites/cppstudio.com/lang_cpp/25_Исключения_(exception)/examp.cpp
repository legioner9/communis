// Исключения (exception)

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    try
    {
        throw 77;
    }
    catch (int n)
    {
        std::cerr << n << '\n';
    }

    cout << "Yes)))";

    return 0;
}