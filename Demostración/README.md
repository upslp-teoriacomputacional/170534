Programa en Perl para obsevar diferentes operaciones de conjuntos
===================================================================

##### Nombre: Claudia Alejandra González Ibarra
##### Matrícula: 170534
##### Fecha: 22 de Septiembre del 2020

El objetivo principal del programa es obtener tablas de verdad con los operadores *OR, AND, NOT y XOR* a este último 
también se le conoce como OR exclusivo. Y por medio del uso de bucles **FOR**, tendremos una lista con los booleanos con los diferentes 
resultados (true, false) dependiendo el operador que se esta ocupando.

*  Los operadores lógicos nos proporcionan un resultado a partir de que se cumpla o no una cierta condición, producen un resultado booleano, 
y sus operandos son también valores lógicos o asimilables a ellos (los valores numéricos son asimilados a cierto o falso según su valor sea cero o distinto de cero). 

> *Nota: en la programación de Perl es necesario usar los booleanos en número, es decir, si tenemos (true, false) en este caso sería (1,0)*

Acerca de la programación...
-----------------------------
* Para empezar a programar es necesario declarar de la siguiente manera:
```perl
my @booleanos =(0,1);
```
* Con esto podemos obtener los valores de (true, falso) como se haría normalmente en Python, a continuación se declarará la variable ***x***
que recorrerá la lista booleanos, tomando en la primera iteración el valor False(0) y en la siguiente True(1). 
```perl
for $x (@booleanos)
for $y (@booleanos)
```
* A la hora de imprimir con print, se utilizará sep = 't' para que separe cada elemento mediante un tabulador, 
en lugar de usar un espacio en blanco.
```perl
print("| ",$x);
print("\t| ");
```
> Con esto tendremos una buena presentación a la hora de correr nuestro código

### OR, AND, NOT y XOR 
------------------------
##### OR 
* Para OR se usaría la siguiente sintaxis y así obtener las tablas de verdad, con las sintaxis que ya se mencionaron antes:
```perl
print("| x\t| y\t| x or y|\n");
print('-------------------------');
print("\n");
for $x (@booleanos){
	for $y (@booleanos){
		print("| ",$x);
		print("\t| ");
		print($y);
		print("\t| ");
		print($x or $y);
		print("\t|\n");
	}
}
```
> Para hacer la tabla de verdad con OR, el operador que se pone en la línea sería *or*; no está tan díficil
diferenciar que acción se esta haciendo.

Para las siguientas tablas es más fácil, ya que solo se tendría que cambiar una línea
##### AND
```perl
print($x and $y);
```

##### XOR o ^
```perl
print($x ^ $y);
```

##### NOT
* En cambio NOT, su sintaxis si cambia; ya que solo tendremos funcionando un *for* por lo que se incluyo un **if, else** para poder imprimir 
la forma correcta de la tabla de verdad de NOT, a continuación se muestra el código:
```perl
print("\n\n| x\t| not x |\n");
print('-----------------');
print("\n");
for $x (@booleanos){
	print("| ",$x);
	print("\t| ");
	if((not $x)== 0){
		print(0);
	}else{
		print(not $x);
	}
	print("\t| \n");
}
```
>Nota: al usar dos *FOR* no se obtenía los mismos resultados que en Python, por eso fue necesario usar un **if, else**

#### Información personal:
----------------------------
*Universidad Politécnica de San Luis Potosí*

Profesor: Juan Carlos González Ibarra 

Materia: Teoría Computacional