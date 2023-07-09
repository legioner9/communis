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
    std::string str_hello = "Hello";
    std::cout << "str_hello = " << str_hello << std::endl; // Mello

    char c = str_hello[1];                                       // e
    std::cout << "str_hello[1] = " << str_hello[1] << std::endl; // Mello

    str_hello[0] = 'M';
    std::cout << "str_hello = " << str_hello << std::endl; // Mello
    
    return 0;
}