# 标量
$num = 12; # 数字
$str = "12"; # 字符串


# 数组
@array = (1,2,3);
print @array;
print "\n";
print "$array[0] $array[1] $array[2]";
print "\n";


# 哈希
%hash = (
    'a' => 1, 
    'b' => 2,
);
print %hash;
print "\n";
print "$hash{'a'}";
print "\n";


# 整型
$x = 12;
if ($x + 1 == 13) {
    print "$x + 1 == 13 \n";
}
$x = 011;
print "$x = 011 \n";
$x = 0x11;
print "$x = 0x11 \n";

# 浮点数
$x1 = 0.1;
$x2 = -0.2;
$x3 = 1.1e3;
$x4 = -1.1e4;
print "$x1 $x2 $x3 $x4 \n";

# 字符串
$v1 = "str";
$v2 = 'str2';
print "$v1 \n $v2 \n";

#!/usr/bin/perl
 
# 换行 \n 位于双引号内，有效
$str = "\nwww.runoob.com";
print "$str\n";
 
# 换行 \n 位于单引号内，无效
$str = '\nwww.runoob.com';
print "$str\n";
 
# 只有 R 会转换为大写
$str = "\urunoob";
print "$str\n";
 
# 所有的字母都会转换为大写
$str = "\Urunoob";
print "$str\n";
 
# 指定部分会转换为大写
$str = "Welcome to \Urunoob\E.com!"; 
print "$str\n";
 
# 将到\E为止的非单词（non-word）字符加上反斜线
$str = "\QWelcome to runoob's family";
print "$str\n";


