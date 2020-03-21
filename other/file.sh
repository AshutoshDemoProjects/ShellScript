#!/bin/bash
if [ $# -lt 1 ]
then
  echo "Please give file name also...";
else
echo "Select Which operation you want to perform?"
select op in AddData Display CountLines CountWords SortByAge SortByNameRev MaxAge3 FindByEmail Exit
do
  case $op in
    AddData)
      echo -n "Enter name: ";
      read name;
      echo -n "Enter Age: ";
      read age;
      echo -n "Enter phone no: ";
      read mob;
      echo -n "Enter email id: ";
      read email;
      echo -e -n "\n$name $age $mob $email" >>$1;
      ;;
    Display)
      less $1;
      ;;
    CountLines)
      wc -l $1
      ;;
    CountWords)
      wc -w $1
      ;;
    SortByAge)
      sort -k 2 $1
      ;;
    SortByName)
      sort -k 4 -r $1
      ;;
    MaxAge3)
      sort -k 2 -r $1 | head -3
      ;;
    FindByEmail)
      echo -n "Enter data tobe search:"
      read data
      cat $1 | grep $data 
      ;;
    Exit)
      break
      ;;
    *)
      echo "Wrong operation";
  esac
done
fi