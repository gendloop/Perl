use strict;
use warnings;

# 特殊变量

# $_
# 默认输入和模式匹配内容
print("\n", '# $_', "\n");
foreach ('a'..'f') {
    print($_, " -> ");
}
print("end\n");

foreach ('a'..'f') {
    print;
    print(" -> ");
}
print("end\n");

# $.
# 获取当前句柄的行号
print("\n", '# $.', "\n");
open(my $fh, '<', 'files/file.txt') or die "$! \n";
while(<$fh>) {
    print($_);
    print($., "\n");
}
close($fh);

# $/
# 定义输入操作符(如<STDIN>, <FILEHANDLE>) 在读取文本时如何确定边界
print("\n", '# $/', "\n");
$/ = ";";
print("input multi-line text:\n");
my $input = <STDIN>;
my @lines = split("\n", $input);
print("lines: \n");
foreach (@lines) {
    print($_, "\n");
}

$/ = "\n";
open(my $fh, '<', 'files/file.txt') or die "$! \n";
my $contents = do { local $/ = undef; <$fh>; };
print($contents, "\n");
close($fh);

# $,
# 定义输出 字段 分隔符, 定义了在用print或say输入多个值间的分隔符
print("\n", '# $,', "\n");
$, = "->";
my @values = (1..5);
print(@values);
print("\n");
$, = undef;
print(@values);
print("\n");

# $\
# 定义输出 记录 分隔符, 定义了在用print或say输出时, 会在记录末尾添加分隔符
print("\n", '# $\\', "\n");
$\ = "\n";
print("1");
print("2");
print("3");
$\ = "";
print("1");
print("2");
print("3");





