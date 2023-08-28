# 创建
@array1 = (1, 2, "s");
print @array1;
print "\n";

@array2 = qw/2 3 "ss"/;
print @array2;
print "\n";

@array3 = qw/
1
2
3
/;
print @array3;
print "\n";

$array4[0] = 'Monday';
$array4[6] = 'Sunday';
print @array4;
print "\n";
print "$array4[0] $array4[1] $array4[6]";
print "\n";
$size = @array4;
print $size;
print "\n";


# 访问数组元素
@sites = qw/abc def ghi/;
print "$sites[0]\n";
print "$sites[2]\n";
print "$sites[-1]\n";


# 数组序列号
@seq1 = (1..10);
print "@seq1\n";

@seq2 = (-3..3);
print "@seq2\n";

@seq3 = ('a'..'z');
print "@seq3\n";

@seq4 = ('A' .. 'Z');
print "@seq4\n";

@seq5 = ('a' .. 'Z');
print "@seq5\n";

@seq6 = ('A' .. 'z');
print "@seq6\n";


# 数组大小
@array5 = (1,2,3);
print "size: ", scalar @array5, "\n";

$array5[10] = 10;
$size = @array5;
$max_index = $#array5;
print "real size: 4 \n";
print "size: $size \n";
print "max index: $max_index \n";


# 添加和删除数组元素
@seq7 = (1..4);
$size = @seq7;
print "original: \@seq7 = @seq7\n"."size: $size \n";

# add one at the end
$size = push(@seq7, 100);
print "push: \@seq7 = @seq7\n"."size: $size \n";

# delete the end
$var = pop(@seq7);
print "pop: \@seq7 = @seq7\n" . "var: $var \n";

# add one at the begin
$size = unshift(@seq7, "23");
print "unshift: \@seq7 = @seq7\n" . "size: $size \n";

# delete the begin
$var = shift(@seq7);
print "shift: \@seq7 = @seq7\n" . "var: $var \n";


# 切割数组
@seq8 = (1..9);
@seq8_sub = @seq8[3..5];
print "@seq8\n";
print "@seq8_sub\n";


# 替换元素
# splice (@array, offset, length, list)
@seq9 = (1..9);
print "@seq9\n";
@seq9_2 = splice(@seq9, 3, 3, (0,0,0));
print "@seq9_2\n";
print "@seq9\n";


# 将字符串转换为数组
# split (separator, $string [, number])
$str1 = "1 2 3";
@str1_array = split(' ', $str1);
$size = @str1_array;
print "@str1_array\n" . "size: $size\n";

$str2 = "1-2-3";
@str2_array = split('-', $str2);
$size = @str2_array;
print "@str2_array\n" . "size: $size\n";

$str3 = "1-2-3";
@str3_array = split('-', $str3, 2);
$size = @str3_array;
print "@str3_array\n" . "size: $size\n";


# 将数组转换为字符串
# join (connect, @array)
@array = (1..5);
$str = join(' -> ', @array);
print "$str\n";


# 数组排序
# sort (@array)
# sort by ASCII
@array = ('b', 'c', 'a', 'e', 'd');
@sort1 = sort(@array);
print "@sort1\n";


# 合并数组
@numbers = (1, 3, (4,5,6));
print "@numbers\n";

@nums2 = (1,3,5);
@nums3 = (2,4,6);
@nums4 = (@nums2, @nums3);
print "@nums4\n";


# 从列表中选择元素
@list = (1..5);
$var = $list[2];
$var2 = (1..5)[2];
print "$var\n$var2\n";