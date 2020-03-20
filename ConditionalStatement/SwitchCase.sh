# !/bin/bash
echo -n "First Number: "
read num1
echo -n "Operator :"
read op
echo -n "Second Number: "
read num2
val=0
case $op in
  +) val=`expr $num1 + $num2`;;
  -) val=`expr $num1 - $num2`;;
  /) val=`expr $num1 / $num2`;;
  x|X) val=`expr $num1 \* $num2`;;
  *) echo "Wrong $op operator! used x fol multi"
esac

echo "$num1 $op $num2 = $val"