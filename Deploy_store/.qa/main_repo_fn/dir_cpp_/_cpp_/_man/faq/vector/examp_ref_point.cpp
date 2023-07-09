#include <iostream>
#include <stdio.h>
#include <iomanip>
#include <cmath>
#include <ctime>
#include <vector>
using namespace std;

int main(int argc, char const *argv[])
{
    std::vector<int> v = {0, 1, 2, 3, 4, 5};

    for (const int &i : v) // access by const reference
        std::cout << i << ' ';
    std::cout << '\n';

    for (auto i : v) // access by value, the type of i is int
        std::cout << i << ' ';
    std::cout << '\n';

    for (auto &&i : v) // access by reference, the type of i is int&
        std::cout << i << ' ';
    std::cout << '\n';

    for (int n : {0, 1, 2, 3, 4, 5}) // the initializer may be a braced-init-list
        std::cout << n << ' ';
    std::cout << '\n';
    return 0;
}