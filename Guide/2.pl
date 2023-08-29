# 单行注释


=pod 多行注释
print "Hello World!\n";
print "Hello World!\n";
print "Hello World!\n";
print "Hellod World!\n";
=cut


# print
print "Hello World!\n";


# print 空格, 换行
print "Hello
    World!\nHello\n";


print "Hello\n"; # 双引号
print 'Hello\n'; # 单引号
print "\n\n";


$str = << "eof";
this is a note \n
haha ha .
eof
print $str;

$str = << 'eof';
this is a note \n
haha ha .
eof
print $str;


$str = "http:// \\  \n";
print $str;

$str = "http:// \\\\  \n";
print $str;
