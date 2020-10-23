# -----------------------------------------------
#| 170534-re.pl                                  |
#|                                               |
#|    Nombre: Claudia Alejandra González Ibarra  |
#| Matrícula: 170534                             |
#|    Universidad Politécnica de San Luis Potosí |
#|  Profesor: Juan Carlos González Ibarra        |
#|                                               |
#| Descripción: Programa que se puede utilizar   |
#|      para generar gramática regular.          |
#|                                               |
#|Fecha: 23 de Octubre del 2020                  |
#|Actualización: 23 de Octubre del 2020          |
# -----------------------------------------------


my @tokens=();
my $entrada = 'bool claus = 23;';
my @source_code =  split (' ', $entrada) ;

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

print("[@tokens]");

sub variablePROLOG{
	my @pal =@_;
	if((@pal[0]=~ m/[A-Z]/ and @pal[0]=~/[A-Z]/) or @pal[0]=="_"){
		@pal =shift(@pal);
		#El primer caracter es una mayuscula o un subrayado
		while(@pal and (@pal[0]=~ /[A-za-z0-9_]/ or @pal[0]=="_")){
			@pal =shift(@pal);
			#Si ya no se encuentran elementos para revisar, tenemos como resultado una variablePROLOG
			if(@pal == " "){
				return 1;
			}
		}
	}
    return 0;
}
