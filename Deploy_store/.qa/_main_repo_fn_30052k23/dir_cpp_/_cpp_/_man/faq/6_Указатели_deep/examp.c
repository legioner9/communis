// Указатели

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
    int a;
    printf("a = %d\n", a);
    int b;
    int var; // declareVar {(type var)=int, (name *ptrVar_2)=var_2} 
    printf("var = %d\n", var);
    int var_2 = 7;
    printf("var_2 = %d\n", var_2);

    int *ptrVar = &var;
    // definePtr {(adress ptrVar_2)=defOS[var_2], (type *ptrVar_2)=(type *ptrVar_2), (name *ptrVar_2)=var_2}
    printf("ptrVar = %d\n", ptrVar);
    printf("*ptrVar = %d\n", *ptrVar);

    int *ptrVar_2; // declarePtr {(adress ptrVar_2)=0, (type *ptrVar_2)=int, (name *ptrVar_2)=undefine}
    printf("ptrVar_2 = %d\n", ptrVar_2);
    // printf("*ptrVar_2 = %d\n", *ptrVar_2); // name *ptrVar_2 as undefine

    // int *ptrVar_2 = malloc(sizeof(*ptrVar_2));
    // ptrVar_2 = malloc(sizeof(*ptrVar_2));
    ptrVar_2 = malloc(sizeof(*ptrVar_2));
    // definePtr {(adress ptrVar_2)=defOS, (type *ptrVar_2)=[malloc(sizeof(*ptrVar_2))], (name *ptrVar_2)=undefine}
    printf("ptrVar_2 = %d\n", ptrVar_2);
    printf("*ptrVar_2 = %d\n", *ptrVar_2);

    ptrVar_2 = 0;
    // definePtr {(adress ptrVar_2)=0, (type *ptrVar_2)=(type *ptrVar_2), (name *ptrVar_2)=undefine}
    printf("ptrVar_2 = %d\n", ptrVar_2);
    // printf("*ptrVar_2 = %d\n", *ptrVar_2);
    // name *ptrVar_2 as undefine

    ptrVar_2 = &var_2;
    // definePtr {(adress ptrVar_2)=defOS[var_2], (type *ptrVar_2)=(type *ptrVar_2), (name *ptrVar_2)=var_2}
    printf("ptrVar_2 = %d\n", ptrVar_2);
    printf("*ptrVar_2 = %d\n", *ptrVar_2);

    int *ptrA = &a;
    // declarePtr+definePtr {(adress ptrA)=defOS[a], (type *ptrA)=int, (name *ptrVar_2)=a}
    printf("ptrA = %d\n", ptrA);
    printf("*ptrA = %d\n", *ptrA);
    ptrA = &b;
    printf("ptrA = %d\n", ptrA);
    printf("*ptrA = %d\n", *ptrA);

    return 0;
}

// ptrVar = 940080676
// *ptrVar = 5
