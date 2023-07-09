// Таблица ASCII

#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
using namespace std;

int main(int argc, char const *argv[])
{

    for (int i = 0; i < 256; i++)
    {
        char ch = (char)i;
        printf(" hex= %x char= %c \n", ch, ch);
    }
    while (1)
    {
        int num;
        cout << "Enter number ASCII(int): ";
        cin >> num;
        cout << static_cast<char>(num) << endl;
        /* code */
    }
}