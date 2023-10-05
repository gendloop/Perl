# 算术运算符
$a = 2;
$b = 4;
print("$a + $b = ", $a+$b, "\n");
print("$a - $b = ", $a-$b, "\n");
print("$a * $b = ", $a*$b, "\n");
print("$a / $b = ", $a/$b, "\n");
print("$a % $b = ", $a%$b, "\n");
print("$a ** $b = ", $a**$b, "\n");
print("\n");
print("\n");


# 比较运算符
$a = 2;
$b = 4;
print("\"$a == $b\" => ", ($a == $b ? "true" : "false"), "\n");
print("\"$a != $b\" => ", ($a != $b ? "true" : "false"), "\n");
print("\"2 <=> 4\" => ", 2 <=> 4 , "\n");
print("\"3 <=> 3\" => ", 3 <=> 3 , "\n");
print("\"4 <=> 2\" => ", 4 <=> 2 , "\n");
print("\"$a > $b\" => ", ($a > $b ? "true" : "false"), "\n");
print("\"$a < $b\" => ", ($a < $b ? "true" : "false"), "\n");
print("\"$a >= $b\" => ", ($a >= $b ? "true" : "false"), "\n");
print("\"$a <= $b\" => ", ($a <= $b ? "true" : "false"), "\n");
print("\n");
print("\n");


# 赋值运算符
$a = 2;
$b = 4;
$c = $a + $b; 
print($c, "\n");
$c += $a;
print($c, "\n");
$c -= $a;
print($c, "\n");
$c *= $a + $b;
print($c, "\n");
$c /= $a + $b;
print($c, "\n");
$c %= 5;
print($c, "\n");
$c **= 100;
print($c, "\n");
print("\n");
print("\n");


# 位运算
$x = 5;
$y = 6;
$x = $x ^ $y;
$y = $x ^ $y;
$x = $x ^ $y;
print($x . " " . "$y", "\n");

{
    $x = 8;
    $y = ~$x;
    print("$y", "\n");
}

{
    use integer;
    $x = 8;
    $y = ~$x;
    print("$y", "\n");
}

print(1 << 3, " ", 8 >> 1, "\n");
print("\n");
print("\n");


# 逻辑运算符
print(((1 < 2) and (2 < 3)) ? "true" : "false", "\n");
print(((1 < 2) && (2 < 3)) ? "true" : "false", "\n");

print(((1 < 2) or (2 > 3)) ? "true" : "false", "\n");
print(((1 < 2) || (2 > 3)) ? "true" : "false", "\n");

print(not(1 > 2) ? "true" : "false", "\n");
print("\n");
print("\n");


# 引号运算
$a = 10;
$b = q{ a = $a };
print($b, "\n");
$b = qq{ a = $a };
print($b, "\n");
print("\n");
print("\n");


# 其他运算符
# .
$a = "a";
$b = "b";
print($a . $b, "\n");

# x
$c = ('acxb ' x 2);
print($c, "\n");

# ..
@a = (1..5);
@b = ('a'..'f');
print(@a, "\n");
print(@b, "\n");

# ++, --
$a = 3;
print($a++, "\n");
print(++$a, "\n");
print($a--, "\n");
print(--$a, "\n");

# ->
$a = ['a'..'f'];
$c = $a->[2];
print($a, "\n");
print($c, "\n");
print("\n");
print("\n");

