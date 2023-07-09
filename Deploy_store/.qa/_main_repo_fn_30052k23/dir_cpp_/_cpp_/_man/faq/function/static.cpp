#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
#include <vector>
#include <string>
using namespace std;

void display();

int main(int argc, char const *argv[])
{
    display(); // 1
    display(); // 2
    display(); // 3
    return 0;
}

void display()
{
    static int i = 0; // not distroy after call
    i++;
    std::cout << "i=" << i << std::endl; // 
}