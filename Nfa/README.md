Programa en Perl para realizar Automatas finitos no deterministas
===================================================================

##### Nombre: Claudia Alejandra González Ibarra
##### Matrícula: 170534
##### Fecha: 16 de Octubre del 2020

El objetivo principal del programa es generar un NFA, es decir, analizar una cadena que satisfaga la expresión regular *a*ba**, es decir, que pueden existir **n** cantidad de a, en seguida tendremos la ab y por último obtendremos **n** cantidad de a.

Un autómata finito no determinista (abreviado AFND) es un autómata finito que, a diferencia de los autómatas finitos deterministas (AFD), posee al menos un estado q ∈ Q, tal que para un símbolo a ∈ Σ del alfabeto, existe más de una transición δ(q,a) posible.

En un AFND puede darse cualquiera de estos dos casos:
 * Que existan transiciones del tipo δ(q,a)=q1 y δ(q,a)=q2, siendo q1 ≠ q2;
 * Que existan transiciones del tipo δ(q, ε), siendo q un estado no-final, o bien un estado final pero con transiciones hacia otros estados.

Acerca de la programación...
-----------------------------
##### Declaración de variables
* En esta ocasión solo se usarán letras, en especial la *a* y *b* ya que así es como lo muestra la expresión regular.
```perl
$_[0] eq "a" /
$simbolo = "a";
```
* Requerimientos globales:
Se declararán las variables globales ya que se usarán en todo el código por ende todas las funciones harán uso de ellas.
Nuestro código se divide en diferentes funciones como:
* Encabezado: el cual solo imprimirá la parte Inicial de la tabla, es decir, los títulos de cada columna de la tabla.
* Contenido: va a imprimir el valor de las variables y con esto poder llenar nuestra tabla.
```perl
my ($estadosig, $character, $simbolo, $estado) = @_;
	print ("\n|	",$_[0],"	| ",$_[1],"	| ",$_[2],"	| ",$_[3],"	| ");
	body();
```

#### Solución del programa...
* En este programa se tiene que analizar la tabla de la creación del automata, ya que esto dará la funcionabilidad 
del este
```perl
my @tabla= ([1,"E","E","E"],     #q0
            ["E",2,"E","E"],     #q1
	    [3,"E",3,"E"],       #q2
	    [4,"E","E","E"],     #q3
	    ["E","E","E","A"]);  #q4
my $estado = 0;
```
>En lo personal no es la solución correcta pero es la forma en que a mi me funcionaron algunas cosas
* En si no está del todo la solución pero genera la mitad de las cadenas que se pueden meter en el programa.

* Es la sintaxis para la impresión de la tabla:
```perl
if ($charcaracter == 0){
        $simbolo = " a";
        if ($estado == 0){
            $estadosig = 1;
        }   
    }
    if($charcaracter == 1){
        $simbolo = " b";
    }     
    if($charcaracter == 2){
        $simbolo = "Fin";
    }
```
> Nos ayudara a seguir al siguiente estado


#### Información personal:
----------------------------
*Universidad Politécnica de San Luis Potosí*

Profesor: Juan Carlos González Ibarra 

Materia: Teoría Computacional

