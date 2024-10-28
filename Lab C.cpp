
#include <stdio.h>
 // es una librería (atributos que le damos al programa para que funcione) muy básica, utilizada en MUCHOS proyectos. SIEMPRE LO COLOCAMOS EN 1° LINEA

 int main () {

    printf ("Hello World \n");

      // \n se utiliza para lograr un salto en la línea de impresión
      // SIEMPRE se coloca " ; " al finalizar un código para indicar que ahí finaliza la primer parte de la instrucción y sigue otra
    
    printf ("Im new \n \n");

    int numero1;
    int numero2;
     // definimos dos variables 

    printf ("Dame el numero1: ");
     scanf ("%i", &numero1);

    printf ("Dame el numero2: ");
    scanf ("%i", &numero2);

     // realizamos una interfaz que permita al usuario interactuar con la consola 
     // "%i" su utiliza para que analice al enterto (int), si fuese un float sería "%f"

    int resultado;
    resultado = numero1 * numero2;
     //definimos la variable resultado, ya que es lo que nos interesa obtener de lo ingresado por el usuario y la definimos (que queremos que haga)

    printf ("%i \n", resultado);
     // para que devuelva el resultado de lo solicitado

 

 // El programa ejecuta solamente lo que se encuentra entre los corchetes

 // Consola: gcc \NombreArchivo.cpp -o NombreArchivo.exe
 //          \NombreArchivo.exe



  int calificacion1;
  int calificacion2;
  int calificacion3;

  printf ("Dame la calificaion1: \n");
   scanf ("%i", &calificacion1);

  printf ("Dame la calificaion2: \n");
   scanf ("%i", &calificacion2);

  printf ("Dame la calificaion3: \n");
   scanf ("%i", &calificacion3);

  float promedio;
  promedio = (calificacion1 + calificacion2 + calificacion3) / 3;

  printf ("%i \n", promedio);

 if (promedio >= 7){
      printf ("Aprobado");
 }
 else{
    printf ("Repreobado");
 }

// Lab 1

#include <stdio.h>
#include <stdbool.h>

int main () {

 int x;
 int y;
 int z;

 printf ("Ingrese el valor de x: \n");
   scanf ( "%i" , &x);
 
 printf ("Ingrese el valor de y: \n");
   scanf ("%i", &y);
 
 printf ("Ingrese el valor de z: \n");
   scanf ("%i", &z);

 int resultado1;
  resultado1 = x + y + 1 ;

  printf ("El resultado 1 es: %i \n" , resultado1);

 int resultado2;
  resultado2 = z * z + y * 45 - 15 * x ;

   printf ("El resultado 2 es: %i \n" , resultado2);

 bool resultado3;
  resultado3 = y - 2 == (x * 3 + 1) % 5 ;

   printf ("El resultado 3 es: %s \n" , resultado3 ? "verdadero" : "falso");


 int resultado4;
  resultado4 = y / 2 * x ;

   printf ("El resultado 4 es: %i \n" , resultado4);

 bool resultado5;
  resultado5 = y < x * z ;
   printf ("El resultado 5 es: %s \n" , resultado5 ? "verdadero" : "falso");

 // Lab 2

 #include <stdio.h>
#include <stdbool.h>

int main () {

    int x;
    int y;
    int z;

    bool b;
    bool w;
 
    printf ("Ingrese el valor de x: \n");
        scanf ("%i", &x);
    
    printf ("Ingrese el valor de y: \n");
        scanf ("%i", &y);
    
    printf ("Ingrese el valor de z: \n");
        scanf ("%i", &z);
    
    printf ("Ingrese el valor de b: \n");
        scanf ("%s", &b);
    
    printf ("Ingrese el valor de w: \n");
        scanf ("%s", &w);


     bool Expresion1;
     Expresion1 = x % 4 == 0 ;

        printf ("La expresion 1 es: %s \n", Expresion1 ? "verdadero" : "falso");
    
    bool Expresion2;
     Expresion2 = x + y == 0 && y - x == (-1) * z ;

         printf ("La expresion 2 es: %s \n", Expresion2 ? "verdadero" : "falso");

    bool Expresion3;
     Expresion3 = !b && w ;

         printf ("La expresion 3 es: %s \n", Expresion3 ? "verdadero" : "falso");

 // Lab 3

#include <stdio.h>

int main () {

int x;
int y;

// 3a

printf ("Introduzca el valor de x: \n");
    scanf ("%i", &x);
 x = 5 ;
    int Ejecucion1;
        Ejecucion1 = x ;

 printf ("El valor de x es: %i \n", Ejecucion1);

// 3b

printf ("Introduzca el valor x: \n");
    scanf ("%i", &x);

printf ("Introduzca el valor y: \n");
    scanf ("%i", &y);

 x = x + y ;

 y = y + y ;

 printf ("El valor final de x es: %i \n", x);

 printf ("El valor final de y es: %i \n", y);

// 3c

printf ("Introduzca el valor de x: \n");
    scanf ("%i", &x);

printf ("Introduzca el valor de y: \n");
    scanf ("%i", &y);

 y = y + y ;

 x = x + y ;

 printf ("El valor final de x es: %i \n", x);

 printf ("El valor final de y es: %i \n", y);

 //Lab 4

#include <stdio.h>

 int main () {

 int x;
 int y;

 printf ("Ingrese el valor de x: \n");
    scanf ("%i", &x);

 printf ("Ingrese el valor de y: \n");
    scanf ("%i", &y);
 
 y,x = y + y , x + y ;

 printf ("El valor final de x es: %i \n", x);

 printf ("El valor final de y es %i", y);

 // No corre correctamente en la terminal

 // Lab 5

 #include <stdio.h>

int main () {

int x;
int y;

// 3a

printf ("Ingrese el valor de x: \n");
    scanf ("%i", &x);

printf ("Ingrese el valor de y: \n");
    scanf ("%i", &y);

if (x >= y) {

    x = 0 ;

    printf ("El nuevo valor de x es: %i \n", x);

}

if (x <= y) {

    x = 2 ;

    printf ("El nuevo valor de x es: %i \n", x);

}

// 3b

// No entiendo la diferencia de los códigos

 // Lab 6

 int main (){

 int x;
 int y;
 int m;
 int z;

 printf ("Ingrese el valor de x \n");
    scanf ("%i", &x);

 printf ("Ingrese el valor de y \n");
    scanf ("%i", &y);

 printf ("Ingrese el valor de m \n");
    scanf ("%i", &m);

 printf ("Ingrese el valor de z \n");
    scanf ("%i", &z);

 if (x < y) {
 
 m = x ;

 }

 if (x >= y) {
 
 m = y ;

 }

 printf ("El nuevo valor de m es: %i \n", m);

 if (m < z ){

 }

 if (m >= z) {

 m = z ;

 }

 printf ("El nuevo valor de m es: %i \n", m);

 printf ("El valor final de x es: %i \n", x);
 printf ("El valor final de y es: %i \n", y);
 printf ("El valor final de z es: %i \n", z);
 printf ("El valor final de m es: %i \n", m);

 // Lab 7

#include <stdio.h>
#include <stdbool.h>

int main (){

// 5a

 int i;

 printf ("Ingrese al valor de i: \n");
    scanf ("%i", &i);

 while (i != 0)
   {

  printf ("El valor de i es: %i \n", i);
   i--;

  i = i - 1 ;

  } 

  printf ("El bucle ah terminado, el valor final de i es: %i \n", i);

 // 5b

printf ("Ingrese al valor de i: \n");
    scanf ("%i", &i);

 while (i != 0)
   {

  printf ("El valor de i es: %i \n", i);

  i = 0;

  } 

  printf ("El bucle ha terminado, el valor final de i es: %i \n", i);

// 5c

printf ("Ingrese al valor de i: \n");
    scanf ("%i", &i);

 while (i < 0)
   {

  printf ("El valor de i es: %i \n", i);

  i = i - 1;

  } 

  printf ("El bucle ha terminado, el valor final de i es: %i", i);

 // Lab 8
// a)

 #include <stdio.h>

int main (){

int x;
int y;
int i;

printf ("Ingrese el valor de x: ");
    scanf ("%d", &x);

printf ("Ingrese el valor de y: ");
    scanf ("%d", &y);

printf ("Ingrese el valor de i: ");
    scanf ("%d", &i);

 i = 0 ;

 while (x >= y) {

    x = x - y ;
    i = i + 1 ;

    printf ("El valor final de x es: %d \n", x);
    printf ("El valor final de y es: %d \n", y);
    printf ("El valor final de i es: %d \n", i);

 }
return 0;

// b)
#include <stdio.h>
#include <stdbool.h>

int main (){

int x;
int i;
bool res;

printf ("Ingrese el valor de x: \n");
    scanf ("%i", &x);

printf ("Ingrese el valor de i: \n");
    scanf ("%i", &i);

printf ("Ingrese el valor de res: \n");
    scanf ("%i", &res);

 i = 2 ;
 res = true ;

 while (i < x && res){

 res = res && (x % i != 0) ;
 i = i + 1;

 printf ("El valor final de x es: %i \n", x);
 printf ("El valor final de i es: %i \n", i);
 printf ("El valor final de res es: %s \n", res ? "verdadero" : "falso" );

 }
 
}
#include <stdio.h>

int main () {

int x;
int y;
int z;
int auxX;
int auxY;
int auxZ;

printf ("Ingrese el valor de x: ");
    scanf ("%d", &x);

printf ("Ingrese el valor de y: ");
    scanf ("%d", &y);

printf ("Ingrese el valor de z: ");
    scanf ("%d", &z);

auxX = y ;

auxY = y + x + z ;

auxZ = y + x ;

printf ("El nuevo valor de x sera: %d \n", auxX);
printf ("El nuevo valor de y sera: %d \n", auxY);
printf ("El nuevo valor de z sera: %d \n", auxZ);

return 0 ;
}
#include <stdio.h>
#include <stdbool.h>

bool es_vocal (char letra) {

switch (letra) {

 case 'a':
    return true ;

 case 'e':
    return true ;

 case 'i':
    return true ;

 case 'o':
    return true ;

 case 'u':
    return true ;

 case 'A':
    return true ;

 case 'E':
    return true ;

 case 'I':
    return true ;

 case 'O':
    return true ;

 case 'U':
    return true ;

 default : 
    return false ;

}
}

int main () {

char letra;

printf ("Ingrese una vocal: ");
    scanf ("%c", &letra);

 if (es_vocal(letra)) {

 printf ("Es vocal %c", letra);

 }
 else {

 printf ("No es vocal %c", letra);
 }

// printf("%c es vocal? %s", letra, es_vocal(letra)? "verdadero" : "falso");

return 0;

}
#include <stdio.h>

int main(){

int x;
int y;
int z;
int aux0;
int aux1;

printf ("Ingrese el valor de x:");
    scanf ("%d", &x);

printf ("Ingrese el valor de y:");
    scanf ("%d", &y);

if (x < y) {

printf ("x es el minimo \n");

}

if (x == y) {

printf ("Ambos numeros son iguales \n");

}

if (x > y) {

printf ("y es el minimo \n");

}

printf ("Ingrese el valor de z: ");
    scanf ("%d", &z);

if (z < 0) {

 aux1 = z * (-1) ;

printf ("El valor absoluto de z es: %d", aux1);

}
else {

printf ("El valor absoluto de z es: %d", z);

}

}
