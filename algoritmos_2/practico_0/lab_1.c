#include <stdio.h>
#include <stdbool.h>

void pedir_arreglo (int tam, int a []);

typedef struct bound_data {
    bool is_upperbound;
    bool is_lowerbound;
    bool exists;
    unsigned int where;
} bound ;

bound check_bound (int value, int arr[], unsigned int length) {
    bound b;
    b.is_upperbound = true;
    b.is_lowerbound = true;
    b.exists = false;
    b.where = 0;

    for (unsigned int i = 0; i < length; i++) {
        if (value < arr[i]) {
            b.is_upperbound = false;
        } else if (value > arr[i]) {
            b.is_lowerbound = false;
        } else if (value == arr[i]) {
            b.exists = true;
            b.where = i;
        }
    }

    return b;
}

void pedir_arreglo (int tam, int a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%d", &a[i]);
        i++;
    }
}

int main () {
    int value;
    unsigned int tam;
    printf ("Ingrese la cantidad de elementos de su lista: \n");
        scanf ("%d", &tam);
    int a[tam];
    pedir_arreglo (tam, a);
    printf ("Ingrese el valor a comparar: \n");
        scanf ("%d", &value);
    bound b = check_bound (value, a, tam);
    printf("%d", b.is_upperbound);
    printf("%d", b.is_lowerbound); 
    printf("%d", b.exists);        
    printf("%u", b.where); 
    return 0;
}

// Lo mejor es no tratar de comparar un unsigned int (entero sin signo) con un int (entero con signo), si sabemos que una variable creada
// por nosotros NUNCA va a tomar valores negativos, en vez de definirla como int, la definimos como unsigned int,
