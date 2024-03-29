#include <stdio.h>
#include <stdlib.h>
#include "TADconjunto.h"

int main(){
    setInicializaConjuntos();//prepara para usar a biblioteca de conjuntos

    setCria('A');
    setCria('B');
    setAdiciona('A', 9);
    setAdiciona('A', 2);
    setAdiciona('A', 4);
    setAdiciona('A', 1);
    setAdiciona('A', 7);
    printf("\n --- conjunto A\n");
    setImprime('A');
    printf("\n");

    setAdiciona('B', 7);
    setAdiciona('B', 5);
    setAdiciona('B', 3);
    setAdiciona('B', 6);
    setAdiciona('B', 9);
    printf("\n --- conjunto B\n");
    setImprime('B');
    printf("\n");

    setUniao('A', 'B', 'C');
    printf("\n --- conjunto C = uniao de A e B\n");
    setImprime('C');
    printf("\n");
    setIntersecao('A', 'B', 'D');
    printf("\n --- conjunto D = intersecao de A e B\n");
    setImprime('D');
    printf("\n");
    return 0;
}
