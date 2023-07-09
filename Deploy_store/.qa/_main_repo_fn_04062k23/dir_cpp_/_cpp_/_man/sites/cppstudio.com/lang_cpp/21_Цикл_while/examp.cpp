// Цикл while

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    srand(time(0));
    int n0 = rand() % 3 + 1;
    // cout << "n0" << n0 << endl;
    int n;

    while (n != n0)
    {
        cout << "Enter {1...3}" << endl;
        cin >> n;
    }
    // printf("You guess %d !!!", n );

    return 0;
}