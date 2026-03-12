#include <stdio.h>
#include <stdbool.h>


typedef struct bound_data {
    bool is_upperbound;
    bool is_lowerbound;
    bool exists;
    unsigned int where;
} bound;



struct bound_data check_bound(int value, int arr[],unsigned int lenght){
 bound b;

 b.is_upperbound = true;
 b.is_lowerbound = true;
 b.exists = false;
 b.where = 0;

 for (int i = 0; i < lenght; i++) {
    if (value < arr[i]){
        b.is_upperbound = false;
    }
    else if (value > arr[i]){
        b.is_lowerbound = false;
    }
    else if (value == arr[i]){
        b.exists = true;
        b.where = i;
    }
 }
 return b;
}

int main (){
 int a[] = {0, -1, 9, 4};
 bound b = check_bound(9, a, 4);
 printf("%d", b.is_upperbound); // Imprime 1
 printf("%d", b.is_lowerbound); // Imprime 0
 printf("%d", b.exists);        // Imprime 1
 printf("%u", b.where);

 return 0;
}
