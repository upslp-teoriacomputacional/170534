Programa en Perl para realizar autómatas de pila
===================================================================

##### Nombre: Claudia Alejandra González Ibarra
##### Matrícula: 170534
##### Fecha: 05 de Noviembre del 2020

Un autómata con pila es un modelo matemático de un sistema que recibe una cadena constituida por símbolos de un alfabeto y determina si esa cadena pertenece al lenguaje que el autómata reconoce. El lenguaje que reconoce un autómata con pila pertenece al grupo de los lenguajes libres de contexto en la clasificación de la Jerarquía de Chomsky.

Un palíndromo es una palabra o frase que se lee igual en un sentido que en otro (por ejemplo, Ana). Si se trata de números en lugar de letras, se llama capicúa. Habitualmente, las frases palindrómicas se resienten en su significado cuanto más largas son.

* Ejemplo de palíndromo: **"Anula la luz azul a la luna"**

* Autómata de pila:

![Autómata de pila](https://github.com/upslp-teoriacomputacional/170534/blob/master/Palindromo/Imagenes/automata_pila.JPG)

Acerca de la programación...
-----------------------------
##### Declaración de variables
* Para pedir la cadena y así poder seguir con el programa, se declará de la siguiente manera:
```perl
print ("\n\tIngrese el palindromo: ");  #entrada del palíndromo 
my $entrada = <STDIN>; 
$entrada =~ s/\s//g; 
```
> La última línea nos ayudará a quitar los espacios que contenga nuestra cadena de entrada
* Requerimientos globales:
Se declararán las variables globales ya que se usarán en todo el código por ende todas las funciones harán uso de ellas.
Nuestro código se divide en 2 partes fundamentaes, como:
* Pila: en esta parte vamos a ir agregando los caracteres que forman parte de la entrada *(en este caso el palíndromo)* y a su vez se va a ir agregando letra por letra.
* Desapilar: en esta parte se hará lo contrario de pila, es decir, se van a ir quitando los elementos hasta que se quede en la primera letra *"a"*.

#### Solución del programa...
* Para la soulción utilice las dos líneas siguientes:
```perl
my $num = length($entrada);             #cuenta la longitud de la entrada y se le asigna a otra variable
my $Tpila = ($num/2);                   #se divide la longitud de la cadena para imprimir hasta la mitad el arreglo
```
>Así podemos imprimir en la **Pila** hasta la mitad del palíndromo y ver como se desarrolla.

* Pila:
```perl
for (my $i=0; $i<$Tpila; $i++){
    push(@arreglo1, $arreglo[$i]);      #se van metiendo los valores en el arreglo y así poder imprimir ka primera parte
    print ("\n@arreglo1");
}
```
> Con esta función, puede añadir elementos al final de Perl del arreglo.
* Desapilar:
```perl
for (my $j=0; $j<$Tpila; $j++){
    pop(@arreglo1);                     #se van sacando las letras del arreglo de pila para obtener la segunda parte
    print ("\n@arreglo1");
}
```
> La función pop eliminará y devolverá el último elemento del arreglo.

![Ejemplo 1](https://github.com/upslp-teoriacomputacional/170534/blob/master/Palindromo/Imagenes/ejemplo1.png)

#### Información personal:
----------------------------
*Universidad Politécnica de San Luis Potosí*

Profesor: Juan Carlos González Ibarra 

Materia: Teoría Computacional

