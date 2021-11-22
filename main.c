#include <stdio.h>
#include <stdlib.h>

extern void *ordenaVetor(int *v, int n);

int main(){

    int n;

    printf("Indique o tamaho do vetor: \n");
    scanf("%d", &n);
    int *v = (int *) malloc(n*sizeof(int));

    printf("Entre com os elementos do vetor: \n");
    for(int i=0; i<n; i++){
        scanf("%d", v+i);
    }

    ordenaVetor(v, 6);

    free(v);

    return 0;
}