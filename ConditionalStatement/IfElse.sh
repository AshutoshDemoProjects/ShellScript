# !/bin/bash
echo -n "Enter num1(a):"
read a
echo -n "Enter num2(b):"
read b
#####   -eq
if [ $a -eq $b ]
then
   echo "$a -eq $b: a is equal to b"
else
   echo "$a -eq $b: a is not equal to b"
fi
#####   ==
if (( $a == $b ))
then
   echo "$a == $b: a is equal to b"
else
   echo "$a == $b: a is not equal to b"
fi
#####   -ne
if [ $a -ne $b ]
then
   echo "$a -ne $b: a is not equal to b"
else
   echo "$a -ne $b: a is equal to b"
fi
#####   !=
if (( $a != $b ))
then
   echo "$a != $b: a is not equal to b"
else
   echo "$a != $b: a is equal to b"
fi
#####    -gt
if [ $a -gt $b ]
then
   echo "$a -gt $b: a is greater than b"
else
   echo "$a -gt $b: a is not greater than b"
fi
#####    >
if (( $a > $b ))
then
   echo "$a > $b: a is greater than b"
else
   echo "$a > $b: a is not greater than b"
fi
#####    -lt
if [ $a -lt $b ]
then
   echo "$a -lt $b: a is less than b"
else
   echo "$a -lt $b: a is not less than b"
fi
#####    <
if (( $a < $b ))
then
   echo "$a < $b: a is less than b"
else
   echo "$a < $b: a is not less than b"
fi
#####    -ge
if [ $a -ge $b ]
then
   echo "$a -ge $b: a is greater or  equal to b"
else
   echo "$a -ge $b: a is not greater or equal to b"
fi
#####    -ge
if (( $a >= $b ))
then
   echo "$a >= $b: a is greater or  equal to b"
else
   echo "$a >= $b: a is not greater or equal to b"
fi
#####    -le
if [ $a -le $b ]
then
   echo "$a -le $b: a is less or  equal to b"
else
   echo "$a -le $b: a is not less or equal to b"
fi
#####    <=
if (( $a <= $b ))
then
   echo "$a <= $b: a is less or  equal to b"
else
   echo "$a <= $b: a is not less or equal to b"
fi