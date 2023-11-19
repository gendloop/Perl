use strict;
use warnings;

# 目录操作

my $fh;
my $file = "files/test.cpp";
open($fh, '>', $file) or die "$file: $! \n";
print($fh "Hello World!\n");
close $fh;

# 显示所有文件
print("\n", '# 显示所有文件', "\n");
my $dir = "files/*";
my @files = glob($dir);
foreach (@files) {
    print($_, "\n");
}

sub printArray {
    foreach (@_) {
        print($_, "\n");
    }
}

# 显示指定文件
print("\n", '# 显示指定文件', "\n");
my $pattern2 = "files/*.cpp";
@files = glob($pattern2);
printArray(@files);

# 显示隐藏文件
print("\n", '# 显示隐藏文件', "\n");
my $pattern3 = "files/.*";
@files = glob($pattern3);
printArray(@files);

# 显示多个目录下文件
print("\n", '# 显示多个目录下文件', "\n");
my $pattern4 = "./* files/*";
@files = glob($pattern4);
printArray(@files);
