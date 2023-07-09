// Указатели

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    int v;
    int *p_v = &v;

    cout << "v = " << v << endl;
    cout << "&v = " << &v << endl;
    cout << "p_v = " << p_v << endl;
    cout << "*p_v = " << *p_v << endl;

    v = 4;
    int **p_p_v = &p_v;

    cout << "v = " << v << endl;
    cout << "&v = " << &v << endl;
    cout << "p_v = " << p_v << endl;
    cout << "*p_v = " << *p_v << endl;
    cout << "p_p_v = " << p_p_v << endl;
    cout << "*p_p_v = " << *p_p_v << endl;
    cout << "**p_p_v = " << **p_p_v << endl;

    return 0;
}