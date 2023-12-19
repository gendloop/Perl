use strict;
use warnings;

# sort 排序
=pod
sort LIST
sort SUBROUTINE LIST
=cut

sub printL {
    my $str = join(' -> ', @_);
    print($str, "\n");
}

sub f_bigger {
    return $a lt $b;
}

my @a = ('b', 'd', 'c', 'a');

my @b = sort(@a);

my @c = sort(f_bigger, @a);

printL(@a);
printL(@b);
printL(@c);
