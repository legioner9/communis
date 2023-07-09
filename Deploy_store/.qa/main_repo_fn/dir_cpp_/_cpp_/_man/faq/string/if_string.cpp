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
    std::string s1 = "hello";
    std::string s2 = "world";

    bool result;

    result = s1 == "Hello"; // false
    cout << boolalpha << "hello == Hello = " << result << endl;

    result = s1 == "hello"; // true
    cout << boolalpha << "hello == hello = " << result << endl;

    result = s1 != "Hello"; // false
    cout << boolalpha << "hello != Hello = " << result << endl;

    result = s1 != "hello"; // true
    cout << boolalpha << "hello != hello = " << result << endl;

    return 0;
}