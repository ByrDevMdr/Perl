#!usr/bin/perl
use strict;
use warnings;
# Se importa el feature switch para usar estructuras de bifurcación.
use feature 'switch';
print "Bienvenido, ingrese su nombre: ";
# Guarda la entrada digitada por el usuario.
my $name=<STDIN>;
chomp($name);
print "El nombre es: $name";
print "\nIngrese su edad: ";
my $edad=<STDIN>;
chomp($edad);
print "La edad es: $edad";
# Para una sentencia de bifurcación de usa el "given" en lugar del "switch".
given($edad){
    when($_ <= 12){
        print "\nUsted es un niño.";
    }
    when($_ <= 17){
        print "\nUsted es un adolescente.";
    }
    when($_ <= 27){
         print "\nUsted es un adulto joven.";
    }
}