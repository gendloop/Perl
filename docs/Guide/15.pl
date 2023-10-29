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



## <FILEHANDLE>





