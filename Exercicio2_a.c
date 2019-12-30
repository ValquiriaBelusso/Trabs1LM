#include <stdio.h>
#include <stdlib.h>

int main(){
    long int z = 0;
    for (long int i = 0; i < 100000; i++){
        for (long int y = 0; y < 100000; y++){
            z += (i-y);
        }
    }
    printf("\n z= %ld",z);
    return 0;
}
