#include <iostream>

using namespace std;

void vo()
{

#ifdef PRINT
    cout << "Define" << endl;
#endif

#ifndef PRINT
    cout << "NOT define" << endl;
#endif
}