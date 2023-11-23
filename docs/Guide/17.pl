use strict;
use warnings;

# 错误处理

# if
my $fh;
if(open($fh, '<', "17_none.pl")) {
    print("success to open", "\n");
}
else {
    print("fail to open, error: $!", "\n");
}

open($fh, '<', "17_none.pl") || print("error: $!", "\n");

# unless
unless(chdir("none")) {
    print("fail to change dir, error: $!", "\n");
}

# 三元
my %fruits = (
    'p' => 'Peach'
);
print((exists($fruits{'p'}) ? $fruits{'p'} : 'not found'), "\n");
print((exists($fruits{'q'}) ? $fruits{'q'} : 'not found'), "\n");

# warn, die
chdir('none') || warn('STDERR', "\n");

# Carp
=pod
use Carp;
carp, cluck
croak, confess
=cut
use Carp;
carp("warn", "\n");
croak("die", "\n");