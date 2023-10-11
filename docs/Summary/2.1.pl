# `my` vs `local`

use strict;
use warnings;

$a = 1;

sub printA {
    print($a, "\n");
}

sub funcMy {
    my $a = 2;
    printA();
}

sub funcLocal{
    local $a = 3;
    printA();
}

printA();
funcMy();
funcLocal();
printA();