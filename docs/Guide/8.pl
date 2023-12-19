# 条件语句

# true 和 false
if(0) { print(0 . " is " . "true", "\n"); }
else { print(0 . " is " . "false", "\n"); }

if('0') { print('\'0\'' . " is " . "true", "\n"); }
else { print('\'0\'' . " is " . "false", "\n"); }

if("0") { print('"0"' . " is " . "true", "\n"); }
else { print('"0"' . " is " . "false", "\n"); }

@a = ();
if($a) { print('@()' . " is " . "true", "\n"); }
else { print('@()' . " is " . "false", "\n"); }

%a = ();
if($a) { print('%()' . " is " . "true", "\n"); }
else { print('%()' . " is " . "false", "\n"); }

if(undef) { print('undef' . " is " . "true", "\n"); }
else { print('undef' . " is " . "false", "\n"); }

if(!undef) { print('!undef' . " is " . "true", "\n"); }
else { print('!undef' . " is " . "false", "\n"); }

if('undef') { print('\'undef\'' . " is " . "true", "\n"); }
else { print('\'undef\'' . " is " . "false", "\n"); }

if("undef") { print('"undef"' . " is " . "true", "\n"); }
else { print('"undef"' . " is " . "false", "\n"); }

# 条件语句
# if
if(1) {
    print('if', "\n");
}

# if.. else...
if(0) {
    print('if', "\n");
}
else {
    print('if else', "\n");
}

# if...elsif...else...
if(0) {
    print('if', "\n");
}
elsif(1) {
    print('if...elsif...else...', "\n");
}
else {
    print('else', "\n");
}

# unless
@array = ();
unless(@array) {
    if(!$array[-1]) {
        push(@array, 'false will be executed');
    }
    else{
        push(@array, $array[-1]+1);
    }
}
print(@array, "\n");

# unless...else...
unless(1) {
    print("false", "\n");
}
else{
    print("true", "\n");
}

# unless...elsif...else
$a = 0;
unless($a < 1) {
    print("false to execute", "\n");
}
elsif($a < 2) {
    print("true to execute", "\n");
}
else{
    print('others', "\n");
}

# switch
=pod 需要安装Switch.pm模块
cpan
install Switch
=cut
use Switch;
$var = 10;
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 20);
switch(1) {
    case 1            { print "数字 1"; next } # next 继续向下执行
    case "a"          { print "字符串 a" }
    case [1..10,42]   { print "数字在列表中"; next }
    case [1..10,42]   { print "数字在列表中";  }
    case (\@array)    { print "数字在数组中" }
    case /\w+/        { print "正则匹配模式" }
    case qr/\w+/      { print "正则匹配模式" }
    case (\%hash)     { print "哈希" }
    case (\&sub)      { print "子进程" }
    else              { print "不匹配之前的条件" }
}
print("\n");

# 三元运算符
$ret = "Name" == "gendloop" ? "gendloop" : "guest";
print("$ret\n");
