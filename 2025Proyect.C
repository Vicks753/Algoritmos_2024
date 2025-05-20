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
