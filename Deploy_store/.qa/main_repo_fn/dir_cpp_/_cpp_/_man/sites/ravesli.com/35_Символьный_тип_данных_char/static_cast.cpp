#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
using namespace std;

int main(int argc, char const *argv[])
{
    char ch(97);
    std::cout << ch << std::endl;
    std::cout << static_cast<int>(ch) << std::endl;
    std::cout << ch << std::endl;

    std::cout << "Input a keyboard character: ";

    // char ch;
    std::cin >> ch;
    std::cout << ch << " has ASCII code " << static_cast<int>(ch) << std::endl;
    return 0;
}