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

# 当前目录下的文件
print("\n", '# 当前目录下的文件', "\n");
my $hd;
opendir($hd, '.') or die "不能打开目录 $! \n";
@files = readdir($hd);
foreach (@files) {
    print("$_ \n");
}
close($hd);

# 目录操作
print("\n", '# 目录操作', "\n");
=pod
创建: mkdir($dir)
删除: rmdir($dir)
切换: chdir($dir)
=cut
my $new_dir = './files/new';
my $new_dir2 = './files/new2';
mkdir('./files') or print "error: fail to mkdir './files' \n";
mkdir($new_dir) or print "error: fail to mkdir '$new_dir' \n";
mkdir($new_dir2) or print "error: fail to mkdir '$new_dir2' \n";

open($fh, '>', $new_dir . '/1.txt');
print($fh 'bingou☀\n');
close($fh);

rmdir($new_dir) or print "error: fail to rmdir '$new_dir' \n";
rmdir($new_dir2) or print "error: fail to rmdir '$new_dir2' \n";

chdir($new_dir) or print "error: fail to chdir '$new_dir' \n";
@files = glob("*");
printArray(@files);