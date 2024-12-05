# Construcción de cadenas en perl:
print "************Aca inicia la construccion de escaleras************ \n";
use strict;
use warnings;
my $numero=19;
my $string="Byron";
print "Hola " . $string. ", usted tiene " .$numero. " años. \n";
# Comstrucción de arreglos en perl:
print "************Aca inicia la construccionn de arreglos************ \n";
my @array1 = (1, 2, 3, 4, 5);
my $separador = "-";  # Puedes cambiar este valor por el separador que prefieras
print join($separador, @array1), "\n"; # Esta línea imprimirá el arreglo completo. La fnción join sirve para únir dos variables.
print $array1[4]; # El uso del signo para referirnos a un solo elemento individual de un arreglo, es el de las escaleras; ya que, nos referimos a un solo elemento.
# Comstrucción de hashes/diccionarios en perl:
print "************Aca inicia la construccionn de hashes/diccionarios************ \n";
my %dictionary=(
    "1" => "Lunes",
    "2" => "Martes",
    "3" => "Miercoles",
    "4" => "Jueves",
);
print %dictionary{"1"}, "\n"; # Imprime el valor asociado con el índice junto con este.
print $dictionary{"1"}, "\n";  # Imprime solo el valor asociado a la clave "1"

