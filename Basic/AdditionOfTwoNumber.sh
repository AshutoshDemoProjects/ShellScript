# !/bin/bash
echo -n "Enter first number :"
read num1
echo -n "Enter second number :"
read num2
num3=`expr $num1 + $num2`
echo "$num1 + $num2 = $num3"