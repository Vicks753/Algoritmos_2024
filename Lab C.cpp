
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


 }

