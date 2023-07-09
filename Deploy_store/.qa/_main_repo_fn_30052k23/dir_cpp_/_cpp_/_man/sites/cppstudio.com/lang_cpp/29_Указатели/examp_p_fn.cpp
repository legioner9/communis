// Указатели

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int nod(int, int);

int main(int argc, char const *argv[])
{
    int (*p_nod)(int, int) = &nod;

    int a;
    cout << "Enter a(int)" << endl;
    cin >> a;

    int b;
    cout << "Enter b(int)" << endl;
    cin >> b;

    cout << "NOD = " << p_nod(a, b) << endl;

    return 0;
}

int nod(int n1, int n2)
{
    if (n2 == 0)
    {
        return n1;
    }
    return nod(n2, n1 % n2);
}