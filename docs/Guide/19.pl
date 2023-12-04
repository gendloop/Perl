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


