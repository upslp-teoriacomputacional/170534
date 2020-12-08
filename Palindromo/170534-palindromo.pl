# -----------------------------------------------
#| 170534-palindromo.pl                          |
#|                                               |
#|    Nombre: Claudia Alejandra González Ibarra  |
#| Matrícula: 170534                             |
#|    Universidad Politécnica de San Luis Potosí |
#|  Profesor: Juan Carlos González Ibarra        |
#|                                               |
#| Descripción: Programa que se puede utilizar   |
#|      para generar palíndromos de tal          |
#|      manera que haga una pila y en otra       |
#|      desapile.                                |
#|                                               |
#|Fecha: 03 de Noviembre del 2020                |
#|Actualización: 05 de Noviembre del 2020        |
# -----------------------------------------------
use strict;
use warnings;

print ("\n\tIngrese el palindromo: ");  #entrada del palíndromo 
my $entrada = <STDIN>; 
$entrada =~ s/\s//g;                    #quita los espacios que tiene la entrada

my $num = length($entrada);             #cuenta la longitud de la entrada y se le asigna a otra variable
my $Tpila = ($num/2);                   #se divide la longitud de la cadena para imprimir hasta la mitad el arreglo

my @arreglo = split("",$entrada);
print ("\n@arreglo");
my @arreglo1 = ();

print ("\nPila: ");
for (my $i=0; $i<$Tpila; $i++){
    push(@arreglo1, $arreglo[$i]);      #se van metiendo los valores en el arreglo y así poder imprimir ka primera parte
    print ("\n@arreglo1");
}


print ("\n\nDesapilar: ");
for (my $j=0; $j<$Tpila; $j++){
    pop(@arreglo1);                     #se van sacando las letras del arreglo de pila para obtener la segunda parte
    print ("\n@arreglo1");
}
