# 数组
@ages = (23, 24, 25);
print "$ages[0], $ages[1], $ages[2] \n";

# 哈希
%names = (
    'a' => "var: a",
    'b' => "var: b",
    'c' => "var: c",
);
print "$names{'a'}, $names{'b'}, $names{'c'} \n";

# 复制数组
@copy = @ages;
print "@ages \n";
print "@copy \n";

# 数组个数
$size = @ages;
print "$size \n";
