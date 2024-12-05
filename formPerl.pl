#!/usr/bin/perl
use strict;
use warnings;
# use utf8;
# use open ':std', ':encoding(UTF-8)';
print "¿Qué edad tiene? ";
my $edad = <STDIN>;
chomp($edad);
print "Tiene $edad años.\n";
if( $edad <= 18 && $edad >= 5 ){
    print "Usted es menor de edad";
}elsif($edad < 5){
    print "Usted es un bebé";
}