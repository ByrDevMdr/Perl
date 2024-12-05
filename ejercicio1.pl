#!usr/bin/perl
use strict;
use warnings;
my @array=(11,3,4,9);
my $tam=scalar @array;
print "El tamaño del arreglo es: $tam \n";
for (my $i = 0; $i < $tam - 1; $i++) {
    for (my $j = 0; $j < $tam - 1 - $i; $j++){
        # my $aux;
        if($array[$j]>$array[$j+1]){
            my $aux=$array[$j];
            $array[$j]=$array[$j+1];
            $array[$j+1]=$aux;
        }
    }
}
for(my $i =0; $i<$tam;$i++){
    my $I=$i+1;
    print "El numero en la posicion $I es: $array[$i]\n";
}
