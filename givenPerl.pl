use feature 'switch';
use warnings;
use strict;
# my $edad = 25;
print "Ingrese su edad: ";
my $edad = <STDIN>;
chomp($edad);
given ($edad) {
    when ($_ <= 12) { 
        print "Usted es un niño.\n"; 
    }
    when ($_ <= 17) { 
        print "Usted es un adolescente.\n"; 
    }
    when ($_ <= 29) { 
        print "Usted es un adulto joven.\n"; 
    }
    when ($_ <= 45) { 
        print "Usted es un adulto.\n"; 
    }
    default { 
        print "Rango de edad no permitido.\n"; 
    }
}
