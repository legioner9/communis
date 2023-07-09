// Массивы

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    int arr[8] = {1, 2, 3, 4, 6, 8, 333, 86};
    for (size_t i = 0; i < 9; i++)
    {
        cout << "arr[" << i << "] = " << arr[i] << endl;
    }

    int a[5][3] = { {4, 7, 8}, {9, 66, -1}, {5, -5, 0}, {3, -3, 30}, {1, 1, 1} };

    

    return 0;
}