# -----------------------------------------------
#| 170534-nfa.pl                                 |
#|                                               |
#|    Nombre: Claudia Alejandra González Ibarra  |
#| Matrícula: 170534                             |
#|    Universidad Politécnica de San Luis Potosí |
#|  Profesor: Juan Carlos González Ibarra        |
#|                                               |
#| Descripción: Programa que se puede utilizar   |
#|      para obtener automatas finitos           |
#|      deterministas con la expresión           |
#|      regular a*ba*.                           |
#|                                               |
#|Fecha: 15 de Octubre del 2020                  |
#|Actualización: 16 de Octubre del 2020          |
# -----------------------------------------------

my $simbolo = "";
my $fin = "";

sub caracter{
	$simbolo = "";
	my ($charac)=@_;	
	if($_[0] eq "a"){
		$simbolo = "a";
		return 0;
	}else{
		if($_[0] eq "b"){
			$simbolo = "b";
			return 1;
		}else{
			if($charac eq $fin){
				return 2;
			}
		}
	}
}

sub encabezado{
	print("\n|  Edo. Actual  | Caracter | Simbolo    | Edo. Sig  | ");
	body();
}

sub contenido{
	my ($estadosig, $character, $simbolo, $estado) = @_;
	print ("\n|	",$_[0],"	| ",$_[1],"	   |     ",$_[2],"	  | ",$_[3],"	    | ");
	body();
}

sub body{
	print("\n+------------+--------------+-------------+-----------+");
}

my @tabla= ([1,"E","E","E"],     #q0
            ["E",2,"E","E"],     #q1
			[3,"E",3,"E"],     #q2
			[4,"E","E","E"],     #q2
			["E","E","E","A"]);  #q11
my $estado = 0;

print ("+-------------------------------------+\n");
print ("|    Ingrese una cadena a evaluar:    |\n");
print ("+-------------------------------------+\n");
my $cadena = <STDIN>;
chomp $cadena;
my @cadena = split //,$cadena; 

body();
encabezado();

for my $character (@cadena){
	my $estadosig = $estado;
	my $charcaracter=caracter($character);
	$estado=$tabla[$estado][$charcaracter];

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

	if($estado eq 4){
		print("\n|      ",$estadosig,"      |  ",$character,"    |",$simbolo," |     ",$estado,"       |");
		body();
		print("\n|              Cadena No Valida :(                   
		|\n+----------------------------------------------------+");
        exit();
	}
	contenido($estadosig,$character,$simbolo,$estado);
}

#al concluir si el estado no es 3 que es el de aceptacion imprimimos cadena no valida    


if($estado == 4){
        print("\n|              Cadena No Valida :(                   |\n+----------------------------------------------------+");
}
#si el estado es 3 es una cadena de aceptacion
if($estado == 3){
    print("\n|      ",$estado,"        |          |  Fin Cadena  |         |");
    body();
    print("\n|                Cadena Valida :)                   |\n+----------------------------------------------------+");
	exit();
}
if($estado == 3){
	$estado = 2;
}