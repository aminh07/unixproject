var1=3
var2=5

echo $(expr $var1 + $var2)

let var3=$var1+$var2
echo $var3

str1='Hello'
str2='World'
echo $str1
echo $str2
echo $str1  $str2
a=$(expr $# \* $1)
echo "Argument Answer is: $(expr $# \* $1)"
echo $#
echo $1
