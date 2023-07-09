#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
#include <vector>
#include <string>
using namespace std;

int main(int argc, char const *argv[])
{
    bool iff = 5 == 7;
    cout << boolalpha << iff << endl;

    int value = 64;
    cout << dec << showbase << "64 in dec : " << value << endl;

    cout << oct << showbase << "64 in oct : " << value << endl;

    cout << hex << showbase << "64 in hex : " << value << endl;

    return 0;
}