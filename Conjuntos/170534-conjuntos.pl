#
"""
Set Section
"""
#%%
print("Hola")
def transformarConj():
	A = (1,2,3)  
	conjuntoA = set (A) #Set() transforma o convierte a un conjuntoA
	print("The set is: ", conjuntoA)
   	B={1,2,3,4,5} 
	conjuntoB = set (B)    
	print("The set B is: ", conjuntoB)    
	C="Hola mundo"    
	conjuntoC = set (C)    
	print("The set C is: ", conjuntoC)

transformarConj() 

#Find to similar command to other language
	#rust, F# and Perl

sub transformarConj(){
    my @A = ('1','2','3');# Un conjunto
    #my @A = qw(1 2 3);# Un conjunto
    print "The set is: { @A";
    
    my @B=('1','2','3','4','5');# Un conjunto
    #my @B = qw(1 2 3 4 5);# Un conjunto
    print " }\nThe set B is: { @B";
    
    my @C = ('Hola mundo');# Un conjunto
    #my @C = qw(Hola mundo);# Un conjunto
    print " }\nThe set C is: { @C }";
}

transformarConj();