#!/usr/bin/perl
use warnings;
use strict;
# use Term::ReadLine;
print "Introduzca su nombre: ";
my $name=<STDIN>;
chomp($name);
print "Su nombre es: \"$name\"\n";
# apellido=readline("Ingrese su apellido: \n");
# chomp(apellido);
# print "Su apellido es: \"$apellido\"\n";
BEGIN{ # Este bloque es para cuando comienze la ejecución del programa.
    print "Comenzara la ejecucion en general!!\n";
}
INIT{ # Este bloqu es cuando comience la compilación del programa.
    print "Aca empieza la ejecucion del script principal!!!\n";
}
END{ # Este bloque es para cuando termine la ejecución.
    print "Aca se termina la ejecucion!!\n";
}
CHECK{
    print "Aca terminara la compilacion!!\n"
}