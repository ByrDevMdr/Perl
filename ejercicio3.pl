#!/usr/bin/perl
use strict;
use warnings;
use Time::HiRes qw(sleep); # Librería para usar retardos de tiempo. 
use Win32::Console; # Librería para poder usar la terminal de powershell.
# Definir la variable 'escalar'.
my $v1 = "Byron Medrano";
print "La variable escalera es: $v1";
print "\n"; # Salto de línea. 
# Definir la variable 'arreglo'.
my @array=("a","e","i","o","u");
print "El arreglo es: $array[1]";
print "\n"; # Salto de línea.
# Definir la variable 'hash/diccionario'.
my %hash=(1=> "Byron",2 => "Javier");
print "El hash es: $hash{1}";
sleep(2);
system('cls');
# Win32::Console::ClearScreen;
print "**ABRIR ARCHIVOS**";
open(my $file,'<','file.txt');
print "La ubicacion del archivo en hexadecimal es: $file";
# Mostrar el contenido del archivo.
while(my $fila = <$file>){
    print $fila;
}
close($file);
# Abrir el archivo para editar.
open($file,'>>','file.txt');
# Agregar una nueva línea de información al archivo.
print $file "\nE";
close($file);
# Mostrar el archivo.
print "Contenido nuevo del archivo.\n";
open($file, '<','file.txt');
while(my $fila = <$file>){
    print $fila;
}
# Recorrer arreglo de números.
my @array2=(1,3,5,7,9);
sleep(1);
system("cls");
print "Mostrar arreglo.";
my $size = scalar @array2;
print "\nEl tamaño del arreglo es: $size\n";
# for(my $i =0; $i<$tam;$i++){
for(my $i = 0; $i < $size; $i++){
    print "El contenido del índice $i es: $array2[$i]\n";
    my $resultado=$array2[$i] / 2;
    if($resultado == $resultado + 0){
        print "Su numero es decimal -> ";
        print "$resultado \n";  
    }
}