Programa en Perl para realizar operaciones con conjuntos
===================================================================

##### Nombre: Claudia Alejandra González Ibarra
##### Matrícula: 170534
##### Fecha: 14 de Septiembre del 2020

### Conjuntos
Un conjunto es una colección de elementos con características similares considerada en sí misma como un objeto. 
Los elementos de un conjunto, pueden ser las siguientes: personas, números, colores, letras, figuras, etc. Se dice 
que un elemento pertenece al conjunto si está definido como incluido de algún modo dentro de él.

* Para poder utilizar este programa es necesario instalar el módulo de Perl, conocido como *[Set::Scalar][1]* y así se podrá obtener las diferentes operaciones de conjuntos de una manera más fácil.

### Instalación de Set::Scalar
-------------------------------
* Si no quieres batallar con los comandos para instalarlo, te recomiendo que descargues el módulo de *Set::Scalar* y al descomprimir el archivo .rar te apareceran las siguientes carpetas:

> bin, lib, site, vendor 

* Una manera de ahorrar tiempo y no confundirte con los comandos agrega las carpetas del módulo *Set::Scalar* de acuerdo con los nombres que se tienen en la carpeta de **PERL**.

* Ya cuando tengamos las carpetas en el lugar correcto, ya se podrá usar *Set::Scalar*; lo primero que se debe de poner para usarlo en el programa es lo siguiente:
```perl
use Set::Scalar;
```

#### Código
------------
* La declaración de conjuntos en Perl es de la siguiente manera:
```perl
my $A=Set::Scalar ->new(1,2,3,4,5);
my $B=Set::Scalar ->new("Hola mundo :)");
my $C=Set::Scalar ->new();
``` 
> Tenemos 3 diferentes formas de declarar los conjuntos, es decir, pueden tener números, cadenas o letras y conjuntos vacíos

* La siguiente sintaxis es para generar un conjunto a partir de una arreglo:
```perl
my @A = (1,2,3); 
my $conjuntoA = Set::Scalar -> new(@A);
```

*Para hacer las algunas opciones con conjuntos necesitamos las siguientes sintaxis:
```perl
$A -> delete(2);    #sirve para eliminar un elemento del conjunto
$A -> clear();      #sirve para eliminar todos los elementos del conjunto 
$B = $A->copy();    #sirve para copiar el conjunto de A a B
$B->insert(987);    #sirve para insertar un elemento al final del conjunto de B
```
> Para imprimir los resultados de los conjuntos solo usaremos print($conjuntoA); o print($A); dependiendo de la variable que estemos usando

*Para hacer las operaciones con conjuntos necesitamos las siguientes sintaxis:
```perl
print("\nThe union = ", $A->union($B));                # Unión de dos conjuntos
print("\nThe intersection = ", $A->intersection($B));  # Intersección de dos conjuntos
print("\nThe diference = ", $A->difference($B));       # Diferencia de dos conjuntos
print("\n\nThe symmetric_difference =", $A->symmetric_difference($B));  # Diferencia simétrica de dos conjuntos
```
> Las diferentes operaciones con conjuntos son: Unión, Intersección, Diferencia y Diferencia simétrica

* Para terminar tenemos la implementación de Subconjuntos y superconjuntos:
```perl
print("\n\nThe subset = ", $A->is_subset($B));    #Subconjunto
print("\nThe superset = ", $B->is_superset($A));  #Superconjunto
```
> *Nota:* es importante que al finalizar las operaciones antes mencionadas, llames a las diferentes funciones que se usan durante todo el programa, es decir, al final de tu programa debes poner "pertenencia();" o como se llamen tus funciones; con esto no tendrás ningún error.


#### Información personal:
----------------------------
*Universidad Politécnica de San Luis Potosí*
Profesor: Juan Carlos González Ibarra 
Materia: Teoría Computacional


[1]: https://metacpan.org/pod/Set::Scalar/
