# 循环

# while
$a = 1;
while($a < 4) {
    print("$a", "\n");
    $a = $a + 1;
}
print("\n");

# until
$a = 4;
until($a < 1) {
    print("$a", "\n");
    $a = $a - 1;
}
print("\n");

# for
for($a = 0; $a < 3; $a = $a + 1) {
    print($a, "\n");
}
print("\n");

# foreach
@array = (6..9);
foreach $e (@array) {
    print($e, "\n");
}
print("\n");

%hash = (
    'a' => 1,
    'b' => 2
);
foreach $e (keys(%hash)) {
    print($e, "\n");
}
print("\n");

# do...while
@a = (0..2);
do {
	$size = @a;
    $size = push(@a, $size);
    print("size = $size, \@a = ", @a, "\n");
}while($size < 6);
print("\n");

# next
@array1 = (1..5);
foreach $a1 (@array1) {
	if($a1 == 3) {
        next;
    }
    print("$a1");
}
print("\n");
print("\n");

@array2 = ('a'..'e');
OUTER: foreach $a1 (@array1) {
	print("$a1: ");
    INNER: foreach $a2 (@array2) {
        if($a1 == 2) {
        	print("\n");
            next OUTER;
        }
        elsif($a1 == 4 && $a2 eq 'c') {
            next INNER;
        }
        print("$a2");
    }
    print("\n");
}
print("\n");

# last
for($i = 1; $i < 5; ++$i) {
    if($i == 3) {
        last;
    }
    print($i);
}
print("\n");
print("\n");

# continue
$i = 1;
while($i < 5) {
    $i++;
}continue{
    print("$i ");
}
print("\n");

foreach $e ((1..5)) {

}continue{
    print("$e ");
}
print("\n");
print("\n");

# redo
$i = 1;
while($i < 5) {
    if($i == 3) {
        $i++;
        redo;
    }
    $i++;
}continue{
    print("$i ");
}
print("\n");

foreach $e ((1..5)) {
    if($e == 4) {
        $e  = $e + 100;
        redo;
    }
}continue{
    print("$e ");
}
print("\n");
print("\n");

# goto
# goto LABEL
$a = 1;
LOOP: do {
    if($a == 3) {
        $a = $a + 1;
        print('break', "\n");
        goto LOOP;
        print('won\'t be execute', "\n");
    }
    print("\$a = $a", "\n");
    $a = $a + 1;
}while($a < 8);
print("\n");

# goto <expr>
$a = 1;
LOOP2: do {
    if($a == 3) {
        $a = $a + 1;
        goto 'LOOP' . '2';
        print('won\'t be execute', "\n");
    }
    print("\$a = $a", "\n");
    $a = $a + 1;
}while($a < 8);
print("\n");

