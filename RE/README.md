Programa en Perl para realizar Automatas finitos no deterministas
===================================================================

##### Nombre: Claudia Alejandra González Ibarra
##### Matrícula: 170534
##### Fecha: 23 de Octubre del 2020

El objetivo principal del programa es generar grámatica regular, es decir, un analizador léxico. La entrada que le vamos a dar al programa será la siguiente: 
**bool claus = 23;**. Aunque ya con el programa se pueden asignar otras entradas.

###### Ejemplos:
* int result = 100;
* int algo * 1;

El analizador léxico. Se encarga de buscar los componentes léxicos o palabras que componen el programa fuente, según unas reglas o patrones. La entrada del analizador léxico podemos definirla como una secuencia de caracteres.

El analizador tiene que dividir la secuencia de caracteres en palabras con significado propio y después convertirlo a una secuencia de terminales desde el punto de vista del analizador sintáctico, ya que es su entrada. 
![Analizador léxico](https://github.com/upslp-teoriacomputacional/170534/blob/master/RE/imagenes/Analizador_lex.jpg)

Acerca de la programación...
-----------------------------
##### Declaración de variables
En esta ocasión vamos a manejar 4 expresiones regulares:
```perl
$word =~ m/str|int|bool/   # Va a reconocer si la entrada es str, int, bool
$word =~ m/[a-z|A-Z]/      # Va a reconocer si la entrada esta formada por letras
$word =~ m/[\+\-\/\*\=\%]/ # Va a reconocer si dentro de la entrada hay un operador
$word =~ m/[0-9]/          # Va a reconocer si la entrada es de puro números
```
* Requerimientos globales:
Se declararán las variables globales ya que se usarán en todo el código por ende todas las funciones harán uso de ellas.
```perl
my @tokens=();
my $entrada = 'bool claus = 23;';
```

#### Solución del programa...
* Uno de los pasos importantes para resolver el programa fue el uso del método **split()**, ya que nos ayudará a convertir nuestra entrada a un tipo de lista de palabras.
```perl
my $entrada = 'bool claus = 23;';
my @source_code =  split (' ', $entrada) ;
```
#### Código 
```perl
foreach my $word (@source_code){
    
    # Se comprobará el tipo de dato de nuestra entrada
    if ($word =~ m/str|int|bool/){        
		push (@tokens, "['DATATYPE', '$word'}");
    # Se busca un identificador 
    }elsif($word =~ m/[a-z|A-Z]/){		       
		push (@tokens, "['IDENTIFIER', '$word'}");
    # Se comprueba el operador
    }elsif($word =~ m/[\+\-\/\*\=\%]/){        
		push (@tokens, "['OPERATOR', '$word'}");
    # busca los números enteros
    }elsif ($word =~ m/[0-9]/){	
		my @wd2 = $word; 	
		if(@wd2[length(@wd2)-1] =~ /;/){
			my $intr = substr($word,0,-1);
			push (@tokens, "['INTEGER', '$intr']");
			push (@tokens, "['END STATEMENT', ';']");
		}else{			   
		   push (@tokens, "['INTEGER', '$word']");
		}	
	}
}
```
> Otro punto clave fue el método substr() nos ayudará a devolver el número entero sin el punto y coma (;).

* En el lenguaje de programación Perl tiene integrada la función de substr(). Esta función se utiliza cuando se trabaja con cadenas. Con esta función se puede obtener parte de la cadena, o de reemplazar parte de una cadena con otra cadena de caracteres.

#### Información personal:
----------------------------
*Universidad Politécnica de San Luis Potosí*

Profesor: Juan Carlos González Ibarra 

Materia: Teoría Computacional

