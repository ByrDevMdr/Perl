#!\usr\bin\perl
use feature "switch";
use warnings;
use strict;
my @array=(1,2,3,99);
# Recorrer el arreglo con foreach.
foreach my $linea (@array){
    print "Usted esta en la vuelta: $linea \n";
}
# Con la función scalar se puede sacar el tamaño de un arreglo.
my $tama = scalar @array;
print "La longitud es: $tama \n";
# Recorrer el arreglo con for.
for(my $i=0;$i < $tama;$i++){
    print "\t",$array[$i];
}
# Formulario con switch.
print "\n Ingrese su edad: ";
my $edad = <STDIN>;
chomp($edad);
given($edad){
    when ([1..13]){
    print "Usted es un niño.\n";
    }
    when ([13..17]){
        print "Usted es un adolescente.\n";
    }
    when ([18..29]){
        print "Usted es un adulto joven.\n";
    }
    default{
    print "Su edad no es permitida.\n";
    }
}
# Contador con bucles.
my $count = 0;
my $count1 = 0;
while($count < 10){
    $count ++;
    next if $count == 0;
    print "El contador es: $count \n";
}
do{
    $count1 ++;
    next if $count1==0;
    print "El contador va en: $count1 \n";
}while ($count1 < 6);
# Formulario avanzado.
my $edad1, "\n";
do{
    print "Ingrese su edad: \n";
    $edad1=<STDIN>;
    chomp($edad1);
} until ($edad1 > 10);
# Manipulación de archivos.
open(my $file, '<', 'file.txt') or die "No se pudo abrir";
print "Contenido del archivo: \n";
while (my $line = <$file>) {
    print $line;  # Procesa cada línea
}
print "\n";
close($file);  # Cerrar el archivo después de leer

# Abrir el archivo en modo de añadir
open($file, '>>', 'file.txt') or die "No se pudo abrir";
print $file "\nE\nF";
close($file);  # Cerrar el archivo después de añadir

# Reabrir el archivo en modo de lectura para leer el contenido actualizado
open($file, '<', 'file.txt') or die "No se pudo abrir";
print "Nuevo contenido del archivo: \n";
while (my $fila = <$file>) {
    print $fila;
}
close($file);  # Cerrar el archivo después de leer
