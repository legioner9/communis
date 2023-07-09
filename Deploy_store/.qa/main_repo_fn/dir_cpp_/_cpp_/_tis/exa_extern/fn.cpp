#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
#include <vector>
#include <string>
using namespace std;

void display()
{
    static int i = 0; // not distroy after call
    i++;
    std::cout << "i=" << i << std::endl; // 
}