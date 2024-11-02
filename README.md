#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
#define N 5

void llena_con_notas (int a[], int tam)
{
    int resultado = 0, i = 0;

    printf ("Ingrese los valores de la array: \n");
    while (i < tam)
    {
        printf ("posicion [%d]: ", i + 1);
            scanf ("%d", &a[i]);
        i ++;

        resultado = 0 + a[i];
    }
    printf ("\n");
}

void imprimir_arreglo (int a[], int tam)
{
    int i = 0;

    printf ("La array es: \n");
    while (i < tam)
    {
        printf ("elemento [%d]: %d \n", i, a[i]);
        i ++;
    }

}

bool hay_mas_de_3_aprobados (int a[], int tam)
{
    int i = 0;
    int contador = 0;

    while (i < tam)
    {
        if (a[i] > 6 && a[i] < 10)
        {
            contador ++;
        }

        i ++;
    }
    return contador;
}

int main ()
{
    int a[N];
    assert (N > 0);

    llena_con_notas (a, N);

    imprimir_arreglo (a, N);

    if (hay_mas_de_3_aprobados (a, N))
    {
        printf ("Verdadero: Hay 3 o mas aprobados \n");
    }
    else 
    {
        printf ("Falso: no hay mas de 3 aprobados \n");
    }
}

#include <stdio.h>
#include <assert.h>

int main ()
{
    int i;
    int j;
    int k;

    printf("Ingrese los valores de las variables: \n");
    printf("Inngrese el valor de [i]: ");
        scanf ("%d", &i);
    printf("Inngrese el valor de [j]: ");
        scanf ("%d", &j);
    printf("Inngrese el valor de [k]: ");
        scanf ("%d", &k);

     assert (i > 0 && j > 0 && k > 0);

    int auxi = i;
    int auxj = j;
    int auxk = k;
    
    i = auxi * auxj;
    j = auxj * auxk;
    k = auxk * auxi;

    assert (i == auxi * auxj && j == auxj * auxk && k == auxk * auxi);

    printf ("El nuevo valor de i es: %d \n", i);
    printf ("El nuevo valor de j es: %d \n", j);
    printf ("El nuevo valor de k es: %d \n", k);

    return 0;

}
