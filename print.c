#include <stdio.h>
#include <stdlib.h>


void print(int *v, int n){
    for(int i=1; i<=n; i++){
        printf("%d ", *(v+i));
    }
    printf("\n");
}