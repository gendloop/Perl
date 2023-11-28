use strict;
use warnings;

# 正则表达式

=pod
三种形式:
1. 匹配: m/PATTERN/ 或 /PATTERN/
2. 替换: s/PATTERN/REPLACEMENT/
3. 转化: tr///

操作符:
* =~ 相匹配
* !~ 不匹配
=cut

# 匹配操作符
print("\n", '# =~', "\n");
my $str1 = "name: gendloop";
if ($str1 =~ /name/) {
    print("match: '$str1'", "\n");
}
if($str1 =~ m/gendloop/) {
    print("match: '$str1'", "\n");
}

$str1 = "Hello WoRlD, from a maniac";
if($str1 =~ m/world/i) {
    print("match: '$str1'", "\n");
}
else {
    print("match nothing", "\n");
}


