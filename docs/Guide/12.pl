use strict;
use warnings;

# 子程序(函数)

# 定义和调用
sub hello {
    print("Subroutine", "\n");
}

hello();
print("\n");
print("\n");

# 传参
sub average {
    my $sum = 0;
    my $count = 0;

    foreach my $e (@_) {
        $sum += $e;
        $count++;
    }

    my $mean = $sum / $count;

    print("@_", "\n");
    print("$_[0]", "\n");
    print("$_[-1]", "\n");
    print("$mean", "\n");
}

average(1, 2, 3, 4, 5);
print("\n");
print("\n");

# 传递列表
sub transferList {
    print("@_", "\n");
    $_[0] = 2;
}

my $a = 1;
my @b = ('a'..'d');
my %c = (
    'A' => 'g',
    'B' => 'e'
);

