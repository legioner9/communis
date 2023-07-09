#include <string>
#include <iostream>

int main()
{
    std::string s1;            // пустая строка
    std::string s2 = "hello";  // hello
    std::string s3("welcome"); // welcome
    std::string s4(5, 'h');    // hhhhh
    std::string s5 = s2;       // hello

    std::cout << s1 << "\n";
    std::cout << s2 << "\n";
    std::cout << s3 << "\n";
    std::cout << s4 << "\n";
    std::cout << s5 << "\n";
    return 0;
}