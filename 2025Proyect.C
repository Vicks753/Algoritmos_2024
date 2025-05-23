/// PROYECTO 3 ///
// Lab 1 
#include <stdio.h>
#include <stdbool.h>

int main () {

int x, y, z;

printf ("Ingrese el valor de x: \n");
 scanf ("%d", &x);

printf ("Ingrese el valor de y: \n");
 scanf ("%d", &y);

printf ("Ingrese el valor de z: \n");
 scanf ("%d", &z);

int resultado1, resultado2, resultado4;

resultado1 = x + y + 1;
 printf ("El primer resultado es: %d \n", resultado1);

resultado2 = z * z + y * 45 - 15 * x;
 printf ("El segundo resultado es: %d \n", resultado2);

resultado4 = y / 2 * x;
 printf ("El cuarto resultado es: %d \n", resultado4);

bool resultado3, resultado5;

resultado3 = y - 2 == (x * 3 + 1) % 5;
 printf ("El tercer resultado es: %s \n", resultado3 ? "verdadero" : "falso");

resultado5 = y < x * z;
 printf ("El quinto resultado es: %s \n", resultado5 ? "verdadero" : "falso");

return 0;
}

// Lab 2
#include <stdbool.h>
#include <stdio.h>

int main () {

    int x, y, z;

    bool b, w;

 printf ("Ingrese el valor de x: \n");
    scanf ("%d", &x);

 printf ("Ingrese el valor de y: \n");
    scanf ("%d", &y);
 
 printf ("Ingrese el valor de z: \n");
    scanf ("%d", &z);

 printf ("Ingrese el valor de b: \n");
    scanf ("%s", &b);

 printf ("Ingrese el valor de w: \n");
    scanf ("%s", &w);

bool expresion1, expresion2, expresion3;

expresion1 = x % 4 == 0;

expresion2 = x + y == 0 && y - x == (-1) * z;

expresion3 = !b && w;

return 0;

}
// Este "programa" lo piden para entender como utilizar GDB (debugger), el cual nos ayuda a depurar el código y encontrar errores.
// Permite colocar un punto de interrupción para evaluar el valor de las variables y ver si el programa se comporta como se espera.

// Lab 3
#include <stdio.h>

int main () {

int x;

printf ("Ingrese el valor de x: \n");
    scanf ("%d", &x);

x = 5;

printf ("El nuevo valor de x es: %d \n", x);

int y, z;

printf ("Ingrese el valor de y: \n");
    scanf ("%d", &y);

printf ("Ingrese el valor de z: \n");
    scanf ("%d", &z);

y = y + z ;

printf ("El nuevo valor de y es: %d \n", y);
printf ("El valor de z es: %d \n", z);

z = z + z ;

printf ("El valor de y es: %d \n", y);
printf ("El nuevo valor de z es: %d \n", z);

int v, w;

printf ("Ingrese el valor de v: \n");
    scanf ("%d", &v);

printf ("Ingrese el valor de w: \n");
    scanf ("%d", &w);

w = w + w;

printf ("El nuevo valor de w es: %d \n", w);

v = w + v;

printf ("El nuevo valor de v es: %d \n", v);
printf ("El valor de w es: %d \n", w);

return 0;
}

// Lab 4
#include <stdio.h>

int main () {

// Ejercicio 1 e, insiso a
int x, y;

printf ("Ingrese el valor de x: \n");
    scanf ("%d", &x);

printf ("Ingrese el valor de y: \n");
    scanf ("%d", &y);

if (x >= y) {
    x = 0;
    printf ("El nuevo valor de x es: %d \n", x);
}

if (x <= y) {
    x = 2;
    printf ("El nuevo valor de x es: %d \n", x);
}

printf ("El valor de x es %d y el valor de y es %d \n", x, y);

// Ejercicio 1 f, insiso a

int v, w;

printf ("Ingrese el valor de v: \n");
    scanf ("%d", &v);

printf ("Ingrese el valor de w: \n");
    scanf ("%d", &w);

if (v >= w) {
    v = 0;
 printf ("El nuevo valor de v es: %d \n", v);
}

if (v <= w) {
    v = 2;
 printf ("El nuevo valor de v es: %d \n", v);
}

printf ("El valor de v es %d y el valor de w es %d \n", v, w);


// Ejercicio 1, inciso b

int a, b, z, m;
printf ("Ingrese el valor de a: \n");
    scanf ("%d", &a);

printf ("Ingrese el valor de b: \n");
    scanf ("%d", &b);

printf ("Ingrese el valor de z: \n");
    scanf ("%d", &z);

printf ("Ingrese el valor de m: \n");
    scanf ("%d", &m);

if (a < b) {
    m = a;
 printf ("El nuevo valor de m es: %d \n", m);
}

if (a >= b){
    m = b;
 printf ("El nuevo valor de m es: %d \n", m);
}

printf ("El valor de a es %d, el valor de b es %d, el valor de z es %d y el valor de m es %d \n", x, y, z, m);

if (m < z) {
    // skip
}

if (m >= z) {
    m = z;
 printf ("El nuevo valor de m es: %d \n", m);
}

printf ("El valor de a es %d, el valor de b es %d, el valor de z es %d y el valor de m es %d \n", a, b, z, m);

return 0;
}

// Lab 5
#include <stdio.h>
#include <stdbool.h>

int main () {

// Ejercicio 5 inciso a (1 h)
int i;

printf ("Ingrese el valor de i: \n");
    scanf ("%d", &i);

while (i != 0) {
    i = i - 1;
 printf ("El nuevo valor de i es: %d \n", i);
} 

// Ejercicio 5 inciso a (1 h)

int j;

printf ("Ingrese el valor de j: \n");
    scanf ("%d", &j);

while (j != 0) {
    j = 0;
 printf ("El nuevo valor de j es: %d \n", j);
}

// Ejercicio 5 inciso b corrovorar 

int k, l, temp;
bool res;
res = temp ? true : false;

printf ("Ingrese el valor de k: \n");
    scanf ("%d", &k);

printf ("Ingrese el valor de l: \n");
    scanf ("%d", &l);

printf ("Determine res como 1 (True) o 0 (False): \n");
    scanf ("%d", &temp);

l = 2;

res = true;

while (l < k && res) {
    res = res && (l % k != 0);
    l = l + 1;

    printf ("El nuevo valer de k es: %d, el nuevo valor de l es: %d y el nuevo valor de res es: %d \n", k, l, res);
}

printf ("El nuevo valer de k es: %d, el nuevo valor de l es: %d y el nuevo valor de res es: %d \n", k, l, res);

return 0;
}

// Lab 6
// Inciso a
#include <stdio.h>

// Prototipo de las funciones
//   Declaramos las funciones antes del main para que la maquina sepa que existen

int pedir_entero (char name); 
// el void indica que la funcion no recibe ningun argumento ("no necesita información")
void imprime_entero (char name, int x);

int main () {
 // Pedir un entero al usuario (almacenamos el valor en la variable numero)
    int numero = pedir_entero('t');

 // Imprimir el entero ingresado
    imprime_entero('t', numero);

 return 0;
}

// Funcion que pide el entero al usuario
int pedir_entero (char name) {
 int valor;

 printf ("Ingrese un valor entero que se almacenara en %c:  \n", name);
    scanf ("%d", &valor);

 return valor;
}

// Funcion que imprime el entero ingresado
void imprime_entero (char name, int x) {
    printf ("El valor ingresado en %c es: %d \n", name, x);
}

// Inciso b
#include <stdio.h>
#include <stdbool.h>

bool pedir_booleano (char n);
void imprimir_booleano (char n, bool x);

int main () {
    // Pedir un booleano al usuario (almacenamos el valor en la variable numero)
    bool numero = pedir_booleano('n');

    // Imprimir el booleano ingresado
    imprimir_booleano('n', numero);

    return 0;
}

bool pedir_booleano (char n) {
 int valor;

 printf ("Seleccione 1 para True o 0 para False, que se guardara en %c: \n", n);
    scanf ("%d", &valor);

 if (valor == 1) {
        return true;
    } else if (valor == 0) {
        return false;
    } else {
        printf ("Error: valor no valido. Se asignara False por defecto.\n");
        return false;
    }
}

void imprimir_booleano (char n, bool x) {
    printf ("El valor ingresado en %c es: %s \n",n ,  x ? "true" : "false");
}

//// PROYECTO 4 ////
//Lab 1, inciso a

#include <stdio.h>
#include <assert.h>

int pedir_entero (void);
void hola_hasta (int n);

int main () {
    int valor = pedir_entero ();
 
    assert (valor > 0);

 hola_hasta (valor);

 return 0;
}

int pedir_entero () {
 int valor;
 printf ("Ingrese un valor entero: \n");
    scanf ("%d", &valor);
 return valor;
}

void hola_hasta (int n) {
 while (n > 0){
    printf ("Hola \n");
    n --;
 }
}

// Lab 3
#include <stdio.h>

int pedir_entero (void);
void imprimir_entero (int x);
int suma_hasta (int n);

int main () {
    int x = pedir_entero ();
    if (x < 0) {
        printf ("Error: el numero es negativo \n");
    } else {
        imprimir_entero (suma_hasta (x));
    }
    return 0;
}

int pedir_entero (void) {
    int valor;
    printf ("Ingrese un entero: \n");
     scanf ("%d", &valor);
    return valor;
}

void imprimir_entero (int x) {
    printf ("El resultado es: %d \n", x);
}

int suma_hasta (int n) {
   if (n == 1) {
    return 1;
   } else {
    return n + (suma_hasta (n - 1));
   }
}

// Lab 4
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

int pedir_char (char n);
bool es_vocal (char letra);

int main () {
    char c = pedir_char ('a');
    if ((es_vocal (c))) {
        printf ("El caracter %c es una vocal \n", c);
    } else {
        printf ("El caracter %c no es una vocal \n", c);
    }
 return 0;
}

int pedir_char (char n){
    printf ("Ingrese un caracter: \n");
     scanf (" %c", &n);
    return n;
}

bool es_vocal (char letra) {
    if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u' ||
        letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'U') {
            return true;
        } else {
            return false;
        }
}

// Lab 5
#include <stdio.h>
#define N 5

void pedir_arreglo (int tam, int a []);
void imprimir_arreglo (int tam, int a []);

int main () {
    int a[N];
 pedir_arreglo (N, a);
 imprimir_arreglo (N, a);
 return 0;
}

void pedir_arreglo (int tam, int a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%d", &a[i]);
        i++;
    }
}

void imprimir_arreglo (int tam, int a[]) {
    int i = 0;
    while (i < tam) {
        printf ("El valor de la posicion [%d] es: %d \n", i + 1, a[i]);
        i++;
    }
}

// Lab 6
#include <stdio.h>
#define N 5

void pedir_arreglo (int tam, int a []);
int sumatoria (int tam, int a[]);

int main () {
 int a[N];
    pedir_arreglo (N, a);
    printf ("La suma total del array es: %d", sumatoria (N, a));
    return 0;
}

void pedir_arreglo (int tam, int a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%d", &a[i]);
        i++;
    }
}

int sumatoria (int tam, int a[]) {
    int sumatoria = 0;
    int i = 0;
    while (i < tam) {
        sumatoria = sumatoria + a[i];
        i++;
    }
    return sumatoria;
}

// Lab 7
#include <stdio.h>
#include <stdbool.h>
#define N 5

void pedir_arreglo (int tam, int a []);
bool todos_pares (int tam, int a[]);
bool existe_multiplo (int m, int tam, int a[]);

int main () {
    int a[N], m, decision;
    pedir_arreglo (N, a);
    printf ("Si quiere saber si todos son pares, ingrese 1, si quiere saber si hay multiplo ingrese 2: \n");
        scanf ("%d", &decision);
    if (decision == 1) {
        printf ("Los elementos de la array son todos pares: %s \n", todos_pares (N, a) ? "true" : "false");
    } else {
        printf ("Ingrese un numero para corroborar multiplos: \n");
            scanf ("%d", &m); 
     if (existe_multiplo (m, N, a)) {
        printf ("Si existe multiplo de %d \n", m);
     } else {
        printf ("No existe multiplo de %d \n", m);
     }
    }
    return 0;
}

void pedir_arreglo (int tam, int a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%d", &a[i]);
        i++;
    }
}

bool todos_pares (int tam, int a[]) {
    for (int i = 0; i < tam; i ++) {
        if (a[i] % 2 != 0) {
        return false;
     }
    }
    {
        return true;
    }
}

bool existe_multiplo (int m, int tam, int a[]) { 
    for (int i = 0; i < tam; i ++) {
        if (a[i] % m == 0) {
        return true;
     }
    }
    {
        return false;
    }
}

// Lab 8
#include <stdio.h>
#define N 5

void pedir_arreglo (int tam, int a []);
void imprimir_arreglo (int tam, int a []);
void intercambiar (int tam, int a[], int i, int j);

int main () {
    int a[N], i, j;
    pedir_arreglo (N, a);
    printf ("Ingrese las posiciones que decida intercambiar: \n");
    printf ("Primera posicion: \n");
        scanf ("%d", &i);
    printf ("Segunda posicion: \n");
        scanf ("%d", &j);
    intercambiar (N, a, i-1, j-1);
    imprimir_arreglo (N, a);
    return 0;
}

void pedir_arreglo (int tam, int a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%d", &a[i]);
        i++;
    }
}

void intercambiar (int tam, int a[], int i, int j) {
    printf("Posiciones i: %d, j: %d\n", i, j);
    if (i == j) {
        printf ("Las posiciones son las mismas \n");
        return;
    } 
    if (i <= tam && j <= tam) {
        int auxpos1 = a[j];
        a[j] = a[i];
        a[i] = auxpos1;
    }
}

void imprimir_arreglo (int tam, int a[]) {
    int i = 0;
    printf("array: [");
    while (i < tam) {
        printf ("%d, ", a[i]);
        i++;
    }
    printf("]\n");
}

// Lab 9
#include <stdio.h>
#include <limits.h>
#define N 5  

void pedir_arreglo (int tam, int a []);
int minimo_pares (int tam, int a[]);
int minimo_impares (int tam, int a[]);
int minimo_elem (int tam, int a[]);

int main () {
    int a[N];

    pedir_arreglo (N, a);
    printf ("El menor elemento par del array es: %d \n", minimo_pares (N, a));
    printf ("El menor elemento impar del array es: %d \n", minimo_impares (N, a));
    minimo_elem (N, a);

    return 0;
}

void pedir_arreglo (int tam, int a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%d", &a[i]);
        i++;
    }
}

int minimo_pares (int tam, int a[]) {
    int i = 0, auxelem = INT_MAX;
    while (i < tam) {
       if (a[i] % 2 == 0 && a[i] < auxelem) {
        auxelem = a[i];
       }
       i ++;
    }
    return auxelem;
}

int minimo_impares (int tam, int a[]) {
    int i = 0, auxelem = INT_MAX;
    while (i < tam) {
       if (a[i] % 2 != 0 && a[i] < auxelem) {
        auxelem = a[i];
       }
       i ++;
    }
    return auxelem;
}

int minimo_elem (int tam, int a[]) {
    int min_par = minimo_pares (tam, a);
    int min_impar = minimo_impares (tam, a);

    int min_elem = (min_par < min_impar) ? min_par : min_impar;
    printf ("El menor elemento del array es: %d \n", min_elem);

    return min_elem;
}

// Biblioteca limits (para poder utilizar "+ infinito o - infinito" en la derivación) CHAR_MIN / MAX e INT_MIN / MAX

// Lab 10
#include <stdio.h>
#define N 5

void pedir_arreglo (int tam, int a []);
int prim_iguales (int tam, int a[]);
void imprimir_newarray (int tam, int a[], int b[], int *cantidad);

int main () {
    int a[N], b[N], cantidad;

    pedir_arreglo (N, a);
    printf ("Hay %d primeros numeros iguales \n", prim_iguales (N, a));
    printf ("Los primeros elementos son: %d \n", prim_iguales (N, a));
    imprimir_newarray (N, a, b, &cantidad);

    return 0;
}

void pedir_arreglo (int tam, int a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%d", &a[i]);
        i++;
    }
}

int prim_iguales (int tam, int a[]) {
    int i = 1, auxarray = a[0];

    while (i < tam && a[i] == auxarray) {
        i ++;
    }
    return i;
    // devuelve cuantos elementos iniciales son iguales
}

void imprimir_newarray (int tam, int a[],int b[], int *cantidad) {
    int i = 1;
    b [0] = a[0];

    while (i < tam && a[i] == a[0]) {
        b[i] = a[i];
        i++;
    }
    *cantidad = i; // cantidad de elementos iguales
}

// COMPLETAR

// Lab 11
#include <stdio.h>

typedef struct div_t {
    int cociente;
    int resto;
} div;

div division (int x, int y) {

    div d;
    d.cociente = x / y;
    d.resto = x % y;

    return d;
};

int main () {
   
    int x, y;
    
    printf ("Ingrese los valores que quiera dividir: \n");
    printf ("Primer numero: \n");
    scanf ("%d", &x);
    printf ("Segundo numero \n");
    scanf ("%d", &y);
    
    div d1 = division (x, y);
    printf ("El cociente es: %d \n", d1.cociente);
    printf ("El resto es: %d \n", d1.resto);

    return 0;
}

// Lab 13
#include <stdio.h>
#define N 5

void pedir_arreglo (int tam, int a []);

typedef struct comp_t {
    int menores;
    int iguales;
    int mayores;
} comparar;

struct comp_t cuantos (int tam, int a[], int elem) {
    comparar p;
    int i = 0;

    p.menores = 0;
    while (i < tam) {
       if (a[i] < elem) {
            p.menores = p.menores + 1;
       }
        i++;
    } 

    i = 0;    
    p.iguales = 0;
    while (i < tam) {
       if (a[i] == elem) {
            p.iguales = p.iguales + 1;
       }
        i ++;
    }

    i = 0;
    p.mayores = 0;
    while (i < tam) {
       if (a[i] > elem) {
            p.mayores = p.mayores + 1;
       }
        i ++;
    }

    return p;
};

int main () {
    int a[N], m;
   
    pedir_arreglo (N, a);
    printf ("Ingrese el numero que desea comparar: \n");
        scanf ("%d", &m);
    comparar p1 = cuantos (N, a, m);
    printf ("La cantidad de numeros menores a %d son: %d \n", m, p1.menores);
    printf ("La cantidad de numeros iguales a %d son: %d \n", m, p1.iguales);
    printf ("La cantidad de elementos mayores a %d son: %d \n", m, p1.mayores);

    return 0;
}

void pedir_arreglo (int tam, int a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%d", &a[i]);
        i++;
    }
}

// Lab 14
#include <stdio.h>
#include <float.h>
#define N 5

void pedir_arreglo (int tam, float a[]);
float max_valor (int tam, float a[]);
float min_valor (int tam, float a[]);
float promedio (int tam, float a[]);

float max_valor (int tam, float a[]) {
    float auxmax = FLT_MIN;
    int i = 0;

    while (i < tam) {
        if (a[i] > auxmax) {
            auxmax = a[i];
        }
        i ++;
    }
    return auxmax;
}

float min_valor (int tam, float a[]) {
    float auxmin = FLT_MAX;
    int i = 0;

    while (i < tam) {
        if (a[i] < auxmin) {
            auxmin = a[i];
        }
        i ++;
    } 
    return auxmin;
}

float promedio (int tam, float a[]) {
    float resultado = 0;

    for (int i = 0; i < tam; i ++) {
        resultado = resultado + a[i];
    }

    float total = resultado / tam;

    return total;
}

typedef struct datos_t {
    float maximo;
    float minimo;
    float promedio;
} datos;

struct datos_t stats (int tam, float a[]){
    datos d;

        d.minimo = min_valor (tam, a);
        d.maximo = max_valor (tam, a);
        d.promedio = promedio (tam, a);

    return d;
};

int main () {
    float a[N];
    
    pedir_arreglo (N, a);

    datos d1 = stats (N, a);
    printf ("El valor minimo del arreglo es %f \n", d1.minimo);
    printf ("El valor maximo del arreglo es %f \n", d1.maximo);
    printf ("El promedio del arreglo es: %f \n", d1.promedio);

    return 0;
}

void pedir_arreglo (int tam, float a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%f", &a[i]);
        i++;
    }
}

/// PARCIALES ///
// Parcial 11 - 11 - 2024 (tema D)
#include <stdio.h>
#include <assert.h>
#define N 5
void pedir_arreglo (int tam, int a []);
int prod_menores (int tam, int a[], int n);

int main () {
    int a[N], elem;

    pedir_arreglo (N, a);
    printf ("Ingrese el elemento que desea comparar: \n");
        scanf ("%d", &elem);
    assert (elem > 0);
    printf ("El producto de los elementos menores o iguales a %d es: %d ", elem, prod_menores (N, a, elem));

    return 0;
}

int prod_menores (int tam, int a[], int n) {
    int cantidad = 1;
    for (int i = 0; i < tam; i ++) {
        if (a[i] > n) {

        } else {
            cantidad = cantidad * a[i];
        }
    }
    return cantidad;
}

void pedir_arreglo (int tam, int a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%d", &a[i]);
        i++;
    }
}

// Parcial 11 - 11 - 24 (Tema B)
#include <stdio.h>
#include <assert.h>
#define N 4

void pedir_arreglo (int tam, int a []);
int sum_even (int tam, int a[], int n);

int main () {
    int a[N], elem;

    pedir_arreglo (N, a);
    printf ("Ingrese el elemento que desea comparar: \n");
        scanf ("%d", &elem);
    assert (elem >= 0 && elem <= N);
    printf ("La suma de los primeros %d elementos pares es %d: \n", elem, sum_even (N, a, elem));

    return 0;
}

void pedir_arreglo (int tam, int a[]) {
   int i = 0; 
    while (i < tam) {
        printf ("Ingrese la posicion [%d]: \n", i + 1);
        scanf ("%d", &a[i]);
        i++;
    }
}

int sum_even (int tam, int a[], int n) {
   int resultado = 0, count = 0;
    for (int i = 0; i < tam; i ++) {
        if (a[i] % 2 == 0) {
            resultado = resultado + a[i];
        }
    }
    return resultado;
}

// Utilizo count para llevar la cuenta de cuantos elementos PARES voy sumando
// Si no usas count, solo sumarías los pares que estén en las primeras n posiciones, pero la consigna es sumar los primeros n pares que aparecen en el arreglo, estén donde estén.

// Parcial 27 - 05- 24 (Tema D)
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#define N 3

void asignacion (int *x, int *y, int *z);
void llena_con_char (char a[], int tam);
bool es_vocal (char letra);
bool hay_mas_de_2_constantes (char a[], int tam);


int main () {
    int x, y, z;
    char a[N];
    assert (N > 0);
    
    printf ("Ingrese el valor de x: \n");
        scanf ("%d", &x);
    printf ("Ingrese el valor de y: \n");
        scanf ("%d", &y);
    printf ("Ingrese el valor de z: \n");
        scanf ("%d", &z);


    int X = x, Y = y, Z = z;
    
    assert (Y > 0);

    asignacion (&x, &y, &z);
        // Utilizamos & para acceder a la dirección de memoria de las variables.

    assert (Y == x);
    assert (X + Y - Z == y) ; 
    assert (X * (1 + (Y * Y)) == z);

    printf ("Los nuevos valores son: \n");
    printf ("El nuevo valor de x es: %d \n", x);
    printf ("El nuevo valor de y es: %d \n", y);
    printf ("El nuevo valor de z es: %d \n", z);

    llena_con_char (a, N);
    
    printf ("¿Hay mas de dos consonantes?: %s", hay_mas_de_2_constantes (a, N) ? "true" : "false");

    return 0;
}

void asignacion (int *x, int *y, int *z) {
    int temp_x = *x;
    int temp_y = *y;
    int temp_z = *z;
   
    *x = temp_y;
    *y = temp_x + temp_y - temp_z;
    *z = temp_x * (1 + temp_y * temp_y);
}

// asignacion requiere utilizar punteros para poder acceder a los valores originales de x, y, z.
// los punteros los voy a utilizar cuando necesita cambiar el valor de una variable (que ya viene asignada por parámetro) en una función externa 

void llena_con_char (char a[], int tam) {
    int i = 0;
    while (i < tam) {
        printf ("Ingrese el char en la posicion [%d]: \n", i + 1);
        scanf (" %c", &a[i]);
        i ++;
    }
}
// en el scan " %c" debemos dejar el espacio para que no cuente el salto de linea como un caracter y tome el ingresado.

bool es_vocal (char letra) {
    if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u' ||
        letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'U') {
            return true;
        } else {
            return false;
        }
}

bool hay_mas_de_2_constantes (char a[], int tam) {
    int count = 0, i = 0;

    while (i < tam) {
        if (!es_vocal (a[i])) {
            count = count + 1;
        }
        i ++;
    }

    if (count <= 2) {
        return false;
    } else {
        return true;
    }
} 

