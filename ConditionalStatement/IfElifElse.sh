# !/bin/bash
echo -n "Enter marks:"
read marks

if [ $marks -gt 75 ]
then
   echo "A grade..."
#-a for And -o for Or
elif [ $marks -ge 60 -a $marks -lt 75 ]
then
   echo "B grade..."
elif [ $marks -ge 50 -a $marks -lt 60 ]
then
   echo "C grade..."
elif [ $marks -ge 40 -a $marks -lt 50 ]
then
   echo "Pass"
else
  echo "Fail"
fi