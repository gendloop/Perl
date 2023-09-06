# 哈希

# 1. 创建哈希
# method 1 
%h1 = ('Person1', 'Maria', 'Person2', 'Jane');
print %h1, "\n";
print $h1{'Person2'}, "\n";

# method 2
$data{'P1'} = 'You';
$data{'P2'} = 'Me';
print %data, "\n";

# method 3
%data = (
    'g' => 'google',
    'bd' => 'baidu'
);
print %data, "\n";

# 2. 访问哈希元素
# 单个
print "$data{'g'}", "\n";
print "$data{'bd'}", "\n";
# 多个
@array = @data{'g', 'bd'};
print @array, "\n";

# 3. 读取哈希的 key 和 value
%data = (
    'a' => 1,
    'b' => 2
);
print %data, "\n";

# keys
@names = keys %data;
print @names, "\n";

# values
@nums = values %data;
print @nums, "\n";

