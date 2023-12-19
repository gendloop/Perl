# 字符串连接
$str1 = "hello";
$str2 = "world";
$str3 = $str1.$str2;
$str4 = $str3 . 3;
print "$str3 \n";
print "$str4 \n";
print "hello"."world"."\n";

# 数字运算
$n1 = 1;
$n2 = 2;
$n3 = $n1 + $n2;
print "$n3 \n";

# 多行字符串
print << "eof";
line 1, ..  ..
line2 , .. ??
eof
print "LF";

# 特殊字符
print "File name: " . __FILE__ . "\n";
print "Line number: " . __LINE__ . "\n";
print "Package name: " . __PACKAGE__ . "\n";
print "__FILE__ __LINE__ __PACKAGE__\n"; # unable to parse

# ASCII字符
# 48(0), 65(A), 97(a)
$str1 = v102.111.111.108;
$str2 = v103.101.110.100.108.111.111.112;
print "$str1 \n";
print "$str2 \n";
