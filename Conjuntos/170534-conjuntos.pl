
# -----------------------------------------------
#| 170534-conjuntos.pl                           |
#|                                               |
#|    Nombre: Claudia Alejandra González Ibarra  |
#| Matrícula: 170534                             |
#|    Universidad Politécnica de San Luis Potosí |
#|  Profesor: Juan Carlos González Ibarra        |
#|                                               |
#| Descripción: Programa que se puede utilizar   |
#|      para obtener conjuntos y operaciones     |
#|      (union, intersección, diferencia, etc)   |
#|      con Conjuntos en Perl                    |
# -----------------------------------------------

use strict;
use warnings;
use Set::Scalar;
# Set::Scala es un módulo de Perl que tiene que ser instalado 
#      después de obtener un compilador se agregaran los 
#	   módulos o librerías para poder usar dicha función
#	         https://metacpan.org/pod/Set::Scalar 


# Se definen los 3 conjuntos que se
#     van a utilizar en el programa 
my $A=Set::Scalar ->new(1,2,3,4,5);
my $B=Set::Scalar ->new(3,4,5,6,7);
my $C=Set::Scalar ->new();

print("The set A is: ",$A);
print("\nThe set B is: ",$B);
print("\nThe set C is: ",$C);

#Pertenencia
sub pertenencia(){
	my $A = Set::Scalar -> new(1,2,3,4,5);
	#1 en A
	if($A->has(1)){
		print("\n\n1 pertenece a: A");
	}else{
		print("\n1 no pertenece a: A");
	}
	#10 en A
	if($A->has(10)){
		print("\n10 pertenece a: A");
	}else{
		print("\n10 no pertenece a: A");
	}
}

sub transformarConj(){
	my @A = (1,2,3); 
	my $conjuntoA = Set::Scalar -> new(@A); 
	print("\n\nThe set A is: ",$conjuntoA);
	my @B = (1,2,3,4,5); 
	my $conjuntoB = Set::Scalar -> new(@B); 
	print("\nThe set B is: ",$conjuntoB);
	my @C = "Hola mundo"; 
	my $conjuntoC = Set::Scalar -> new(@C); 
	print("\nThe set C is: ",$conjuntoC);
}

#Quitar un elemento al conjunto
sub quitar(){
	my $A = Set::Scalar -> new(0,1,2,3,4,5);
	$A -> delete(2);
	print("\n\nEl set A después de eliminar: ",$A,);
}

#Quitar todos los elementos de un conjunto
sub clear(){
	my $A = Set::Scalar -> new(0,1,2,3,4,5);
	$A -> clear();
	print("\n\nThe set A clear: " ,$A);
}

#Copiar un conjunto
sub copiar(){
	my $A = Set::Scalar -> new(1,2,3,4,5);
	$B = $A->copy();
	print("\n\nSet A: ",$A," compare set B: ",$B);
}

#Agregar un elemento al conjunto
sub agregar(){
	$B->insert(987);
	print("\n\nThe new set B: ",$B);
}

#   -O P E R A C I O N E S   C O N    J U N T O S-
#Unión
sub union(){
	my $A = Set::Scalar -> new(1,2,3,4,5);
	my $B = Set::Scalar -> new(3,4,5,6,7);	
	print("\n\nThe union = A|B");
	print("\nThe union = ", $A->union($B));
}
#%%
#Intersección
sub interseccion(){	
	my $A = Set::Scalar -> new(1,2,3,4,5);
	my $B = Set::Scalar -> new(3,4,5,6,7);
	print("\n\nThe intersection = A&B");
	print("\nThe intersection = ", $A->intersection($B));
}
#%%
#Diferencia
sub diferencia(){
	my $A = Set::Scalar -> new(1,2,3,4,5);
	my $B = Set::Scalar -> new(3,4,5,6,7);
	print("\n\nThe diference =  A-B");
	print("\nThe intersection = ", $A->difference($B));
}
#%%
#Diferencia simétrica
sub simetrica(){
	my $A = Set::Scalar -> new(1,2,3,4,5);
	my $B = Set::Scalar -> new(3,4,5,6,7);
	my $C = Set::Scalar -> new();
	print("\n\nThe symmetric_difference =", $A->symmetric_difference($B));
	print("\nThe symmetric_difference =", $B->symmetric_difference($A));
	print("\nThe symmetric_difference =", $A->symmetric_difference($C));
	print("\nThe symmetric_difference =", $B->symmetric_difference($C));
}


#Subconjunto
sub subconjunto(){
	my $A=Set::Scalar ->new(0,1,2,3,4,5,6,7,8,9);
    my $B=Set::Scalar ->new(1,2,3,4,5);
	print("\n\nThe subset = ", $A->is_subset($B));
	print("\nThe subset = ", $B->is_subset($A));
}

#Superconjunto
sub superconjunto(){
	my $A=Set::Scalar ->new(0,1,2,3,4,5,6,7,8,9);
    my $B=Set::Scalar ->new(1,2,3,4,5);
	print("\nThe superset = ", $B->is_superset($A));
	print("\nThe superset = ", $A->is_superset($B));
}

#Llamar a las funciones para ver su función en el programa
pertenencia();
transformarConj();
quitar();
clear();
copiar();
agregar();
union();
interseccion();
diferencia();
simetrica();
subconjunto();
superconjunto();