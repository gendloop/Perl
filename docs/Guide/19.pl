use strict;
use warnings;

# 正则表达式

=pod
三种形式:
1. 匹配: m/PATTERN/MODIFIER 或 /PATTERN/
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
    print("match: 'gendloop'", "\n");
}
if($str1 !~ m/pooldneg/) {
    print("match: 'pooldneg'", "\n");
}

# 三个特殊变量
=pod
$`  匹配部分的前一部分字符串
$&  匹配的字符串
$'  未匹配的剩余字符串
=cut
print("\n", '$` $& $\'', "\n");
$str1 = "A_B_C";
$str1 =~ "B";
print("$`", "\n");
print("$&", "\n");
print("$'", "\n");

# 模式匹配修饰符
=pod
i   忽略模式中的大小写
x   忽略模式中的空白
g   全局匹配. 查找所有匹配的模式，并在每次匹配后继续查找下一个匹配。
=cut

print("\n", '# match', "\n");

# i
print("\n", 'i', "\n");
$str1 = "Hello WoRlD, from a maniac";
if($str1 =~ m/world/i) {
    print("match: '$&'", "\n");
}
else {
    print("match nothing", "\n");
}

# x
print("\n", 'x', "\n");
$str1 = "Line123";
if($str1 =~ m/Line 1 2 3/x) {
    print("match: '$&'", "\n");
}
else {
    print("match nothing", "\n");
}

# g
print("\n", 'g', "\n");
$str1 = "Hi \tforeigner Hi\t gendloop";
while($str1 =~ m/Hi[\s]+[a-z]+/g) {
    print("match: '$&'", "\n");
}

# 替换操作符
=pod
s/PATTERN/REPLACEMENT/[MODIFIER]
i, x, g
=cut
print("\n", '# substitute', "\n");
$str1 = "welcome to my notes";
my $str2 = $str1;
$str2 =~ s/my/gendloop's/;
print('\'', $str1, '\' => \'', $str2, "\'\n");

# i
print("\n", 'i', "\n");
$str1 = "hello, world";
$str2 = $str1;
$str2 =~ s/HELLO/Hi/i;
$str2 =~ s/WORLD/gendloop/i;
print('\'', $str1, '\' => \'', $str2, "\'\n");

# x
print("\n", 'x', "\n");
$str1 = "Blank";
$str2 = "B l a  n k ";
$str1 =~ s/$str2/NoBlank/x;
print('\'', "Blank", '\' => \'', $str1, "\'\n");

# g
print("\n", 'g', "\n");
$str1 = "1 2 3 \n 4 5 6 \n";
$str2 = '\d';
$str1 =~ s/$str2/D/;
print('\'', "1 2 3 \n 4 5 6 \n", '\' => \'', $str1, "\'\n");
$str1 =~ s/$str2/D/g;
print('\'', "1 2 3 \n 4 5 6 \n", '\' => \'', $str1, "\'\n");

# 转化操作符
=pod
字符替换
tr/PARTTERN/REPLACEMENT/[MODIFIER]
s   删除连续且相同的字符, 仅保留一个
c   转换所有未指定的字符
d   删除所有指定字符
=cut

print("\n", '# transliteration', "\n");

$str1 = "world";
$str1 =~ tr/a-z/A-Z/;
print("world", ' => ', $str1, "\n");

# s
print("\n", 's', "\n");
$str1 = "gendloopgendloop";
$str1 =~ tr/a-z/A-Z/s;
print("gendloopgendloop", ' => ', $str1, "\n");

# c
print("\n", 'c', "\n");
$str1 = "animal";
$str1 =~ tr/a/A/c;
print("animal", ' => ', $str1, "\n");

# d
print("\n", 'd', "\n");
$str1 = "animal";
$str1 =~ tr/a//d;
print("\'animal", '\' => \'', $str1, "\'\n");
