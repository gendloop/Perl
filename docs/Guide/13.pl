# 引用

use strict;
use warnings;

my $scalar_ref = \my $foo;    # 标量
my $array_ref = \my @array;   # 列表
my $hash_ref = \my %hash;     # 哈希
my $func_ref = \&func;        # 函数
# my $global_ref = \*global;    # GLOB句柄

# 解引用
# 已知类型 $$var @$ARRAY %$HASH
# 不知类型 @{VAR}

# @{VAR}
my $a = [1, "str", 3, 13];
print(@{$a}, "\n");

my $b = [1, "str", ['a'..'f'], 13];
foreach my $e (@{$b}) {

    my $ee = \$e;

    if(ref $ee eq 'REF') {
        print(ref($ee), ": @{$e}", "\n");
    }
    else {
        print(ref($ee), ": $e", "\n");
    }
}
print("\n");

# @$ARRAY
my @arr = (1..5);
my $temp = \@arr;
my @temp2 = @$temp;
push(@$temp, 6);
print(@$temp, "\n");
print(@arr, "\n");
print(@temp2, "\n");

# \&sub
sub add{
    my %temp_hash = @_;
    foreach my $item (%temp_hash) {
        print("item: $item", "\n");
    }
}
my %hash2 = (
    'name' => 'gendloop',
    'age' => '(50+49)/2'
);
my $add_ref = \&add;
&$add_ref(%hash2);
