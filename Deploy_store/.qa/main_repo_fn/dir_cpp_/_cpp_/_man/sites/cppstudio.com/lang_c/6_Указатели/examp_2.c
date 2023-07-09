// Указатели

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
    printf("->int var\n");

    int var;                   // declareVar {(value var)=0(?), (type var)=int, (name var)=var}
    printf("var = %d\n", var); // 0

    printf("->var_2 = 7\n");

    int var_2 = 7;                 // declareVar+defineVar {(value var)=7, (type var)=int, (name var)=var}
    printf("var_2 = %d\n", var_2); // 7

    printf("->int *ptrVar = &var\n");

    int *ptrVar = &var;
    // definePtr {(adress ptrVar)=defOS, (type *ptrVar_2)=int, (value *ptrVar)=0, (name *ptrVar)=var}
    printf("ptrVar = %d\n", ptrVar);   // 0xX
    printf("*ptrVar = %d\n", *ptrVar); // 0 a=undefine

    printf("->int *ptrVar_2\n");

    int *ptrVar_2;
    // declarePtr {(adress ptrVar_2)=defOS, (type *ptrVar_2)=int,(value *ptrVar)=undefine, (name *ptrVar_2)=undefine}
    printf("ptrVar_2 = %d\n", ptrVar_2); // 0xX
                                         // printf("*ptrVar_2 = %d\n", *ptrVar_2); ERROR
                                         // name *ptrVar_2 as undefine

    printf("->ptrVar_2 = malloc(sizeof(*ptrVar_2))\n");

    ptrVar_2 = malloc(sizeof(*ptrVar_2));
    // definePtr {(adress ptrVar_2)=defOS, (type *ptrVar_2)=[malloc(sizeof(*ptrVar_2))],(value *ptrVar)=0, (name *ptrVar_2)=any}
    printf("ptrVar_2 = %d\n", ptrVar_2);   // 0xX
    printf("*ptrVar_2 = %d\n", *ptrVar_2); // 0

    printf("->ptrVar_2 = 0\n");

    ptrVar_2 = 0;
    // definePtr {(adress ptrVar_2)=0, (type *ptrVar_2)=(type *ptrVar_2),(value *ptrVar)=undefine, (name *ptrVar_2)=undefine}
    printf("ptrVar_2 = %d\n", ptrVar_2); // 0
    // printf("*ptrVar_2 = %d\n", *ptrVar_2); ERROR
    // name *ptrVar_2 as undefine

    printf("->ptrVar_2 = &var_2;\n");

    ptrVar_2 = &var_2;
    // definePtr {(adress ptrVar_2)=defOS[var_2], (type *ptrVar_2)=(type *ptrVar_2), (value *ptrVar)=7, (name *ptrVar_2)=var_2}
    printf("ptrVar_2 = %d\n", ptrVar_2);   // 0xX
    printf("*ptrVar_2 = %d\n", *ptrVar_2); // 7

    *ptrVar_2 = 20;// referring to the link
    printf("var_2 = %d\n", var_2);

    return 0;
}

// ptrVar = 940080676
// *ptrVar = 5
