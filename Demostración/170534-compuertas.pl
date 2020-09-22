
# -----------------------------------------------
#| 170534-compuertas.pl                           |
#|                                               |
#|    Nombre: Claudia Alejandra González Ibarra  |
#| Matrícula: 170534                             |
#|    Universidad Politécnica de San Luis Potosí |
#|  Profesor: Juan Carlos González Ibarra        |
#|                                               |
#| Descripción: Programa que se puede utilizar   |
#|      para obtener los operadores lógicos      |
#|      (OR, AND, NOT); además de agregar las    |
#|      tablas de verdad.                        |
#|                                               |
#|Fecha: 21 de Septiembre del 2020               |
# -----------------------------------------------

use strict;
use warnings;
my @booleanos =(0,1);

my $x;
my $y;


# Tabla de verdad de or
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

# Tabla de verdad de and
print("\n\n| x\t| y\t| x and y|\n");
print('------------------------');
print("\n");
for $x (@booleanos){
	for $y (@booleanos){
		print("| ",$x);
		print("\t| ");
		print($y);
		print("\t| ");
		print($x and $y);
		print("\t|\n");
	}
}

# Tabla de verdad de not
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

# Tabla de verdad de ^
print("\n\n| x\t| y\t| x ^ y|\n");
print('-------------------------');
print("\n");
for $x (@booleanos){
	for $y (@booleanos){
		print("| ",$x);
		print("\t| ");
		print($y);
		print("\t| ");
		print($x ^ $y);
		print("\t|\n");
	}
}