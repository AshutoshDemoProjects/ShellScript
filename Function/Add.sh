#!/bin/bash
add(){
  res=`expr $1 + $2`
  return $res;
}
echo -n "Enter first number"
read a
echo -n "Enter second number"
read b
add $a $b
res=$?

echo "addition is $res"