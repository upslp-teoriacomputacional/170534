# -----------------------------------------------
#| 170534-afd.pl                                 |
#|                                               |
#|    Nombre: Claudia Alejandra González Ibarra  |
#| Matrícula: 170534                             |
#|    Universidad Politécnica de San Luis Potosí |
#|  Profesor: Juan Carlos González Ibarra        |
#|                                               |
#| Descripción: Programa que se puede utilizar   |
#|      para obtener automatas finitos           |
#|      deterministas.                           |
#|                                               |
#|Fecha: 05 de Octubre del 2020                  |
#|Actualización: 06 de Octubre del 2020          |
# -----------------------------------------------

my $simbolo = "";
my $fin = "";

sub caracter{
	$simbolo = "";
	my ($charac)=@_;	
	if($_[0] =~ m/^[0-9]*$/){
	#if($charac =~ /\d+$/){
		$simbolo = "Digito";
		return 0;
	}else{
		if($_[0]=~/\+|\-|\*\|\//){
				$simbolo = "Operador";
				return 1;
		}else{
			if($charac eq $fin){
				return 1;
			}else{
                return 2;
				#return 1;
				#exit();
            }
		}
	}
}

sub encabezado{
	print("\n|  Edo. Actual | Caracter | Simbolo | Edo. Siguiente  | ");
	body();
}

sub contenido{
	my ($estadosig, $character, $simbolo, $estado) = @_;
	print ("\n|	",$_[0],"	| ",$_[1],"	| ",$_[2],"	| ",$_[3],"	| ");
	body();
}

sub body{
	print("\n+------------+--------------+-------------+-----------+");
}

my @tabla= ([1,"E","E"],["E",2,"E"],[3,"E","E"],["E","E","A"]);
my $estado = 0;

print ("+-------------------------------------+\n|    Ingrese una cadena a evaluar:    |\n+-------------------------------------+");
print("\n");
my $cadena = <STDIN>;
chomp $cadena;
my @cadena = split //,$cadena;

body();
encabezado();

for my $character (@cadena){
	my $estadosig = $estado;
	my $charcaracter=caracter($character);
	$estado=$tabla[$estado][$charcaracter];
	
	if($estado eq "E"){
		print("\n|      ",$estadosig,"      |  ",$character,"    |",$simbolo," |     ",$estado,"       |");
		body();
		print("\n|              Cadena No Valida :(                   
		|\n+----------------------------------------------------+");
        exit();
	}
	contenido($estadosig,$character,$simbolo,$estado);
}

#al concluir si el estado no es 3 que es el de aceptacion imprimimos cadena no valida    
if($estado!=3){
        print("\n|              Cadena No Valida :(                   |\n+----------------------------------------------------+");
}
#si el estado es 3 es una cadena de aceptacion
if($estado==3){
    print("\n|     ",$estado,"      |         |Fin Cadena |               |");
    body();
    print("\n|                Cadena Valida                       |\n+----------------------------------------------------+");
}