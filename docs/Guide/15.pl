use strict;
use warnings;

# 文件操作

sub getContent {
    local $/;
    my $content = $_[0];
    return <$content>;
}

## read
my $file = 'files/file.txt';
open(my $fh, '<', $file) or die "$file: $! \n";
my $content = getContent($fh);
close $fh;

## write
my $file_out = 'files/file_out.txt';
open($fh, '>', $file_out) or die "$file_out: $! \n";
print($fh $content);
close $fh;

## readwrite
my $file_rw = 'files/file_rw.txt';
open($fh, '+>', $file_rw) or die "file: $! \n";
my $temp = $content."\nnew line\n";
print($fh $temp);
close $fh;

## readwrite_app
my $file_rw_app = 'files/file_rw_app.txt';
open($fh, '+>>', $file_rw_app) or die "file: $! \n";
$temp = $content."\nnew line\n";
print($fh $temp);
close $fh;

# 文件拷贝

my $file_to_copy = "files/file.txt";
my $file_copy_to = "files/file_copy.txt";
open(my $hd_to_copy, '<', $file_to_copy) or die "file to cp: $! \n";
open(my $hd_copy_to, '>', $file_copy_to) or die "file cp to: $! \n";
while(<$hd_to_copy>) {
    print $hd_copy_to $_;
}
close($hd_to_copy);
close($hd_copy_to);

# 文件重命名

rename("files/file_copy.txt", "files/file_renamed.txt") or die "fail to rename file: $! \n";

# 删除文件

unlink("files/file_rw_app.txt");

# 指定文件位置
print('# 指定文件位置', "\n");

open($fh, '+>>', "files/file_renamed.txt") or die "fail to open file: $! \n";

seek $fh, 7, 0; # 从文件开头位置开始移动7个字节
while(<$fh>) {
    print($_);
    my $pos = tell $fh; # 返回当前光标的位置
    print($pos, "\n");
}
print("\n");

seek $fh, 0, 0;
my $line = <$fh>;
print($line);
print(tell $fh, "\n");

seek $fh, 0, 1;
print(tell $fh, "\n");

seek($fh, 0, 2);
print(tell($fh), "\n");

close($fh);
print("\n");
print("\n");

# 获取文件信息

print('# 获取文件信息', "\n");

$file = "files/file.txt";
my (@description, $is_B, $is_s, $is_c);
if(-e $file) {
    push(@description, ('文件上一次被访问的时间: ' . (-A _)));
    push(@description, ('是否是二进制文件: ' . ((-B _) ? 'T' : 'F'))) ;
    push(@description, ('文件索引修改时间: ' . (-C _)));
    push(@description, ('文件上一次修改时间: ' . (-M _)));
    push(@description, ('是否是一个socket(套接字): ' . ((-S _) ? 'T' : 'F'))) ;
    push(@description, ('是否是一个文本文件: ' . ((-T _) ? 'T' : 'F'))) ;
    push(@description, ('是否是block-special(特殊块)文件(如挂载磁盘): ' . ((-b _) ? 'T' : 'F'))) ;
    push(@description, ('是否是目录: ' . ((-d _) ? 'T' : 'F'))) ;
    push(@description, ('文件或目录名是否存在: ' . ((-e _) ? 'T' : 'F'))) ;
    push(@description, ('是否是普通文件: ' . ((-f _) ? 'T' : 'F'))) ;
    push(@description, ('是否是符号链接: ' . ((-l $file) ? 'T' : 'F'))) ;
    push(@description, ('文件或目录是否存在且不为0(返回字节数): ' . (-s $file)));
    push(@description, ('是否为空文件: ' . ((-z $file) ? 'T' : 'F'))) ;

    print(join("\n", @description), "\n");
}
