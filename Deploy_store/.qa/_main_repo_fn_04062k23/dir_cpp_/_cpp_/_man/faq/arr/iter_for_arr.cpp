#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    const int rows = 3, col = 2;
    int duble_arr[rows][col] = {{1, 2}, {3, 4}, {5, 6}};
    cout << "duble_arr = " << duble_arr << endl;
    cout << "&duble_arr = " << &duble_arr << endl;

    for (auto &arr : duble_arr)
    {
        cout << "arr = " << arr << endl;
        for (int item : arr)
        {
            cout << "item = " << item << endl;
            cout << "&item = " << &item << endl;       }
    }
    return 0;
}