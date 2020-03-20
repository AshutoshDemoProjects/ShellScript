#!/bin/bash
if [ $# -lt 1 ]
then
  echo "Please give file name also...";
else
echo "Select Which operation you want to perform?"
select op in CountLines CountWords SortByAge SortByNameRev FindByEmail
do
  case $op in
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
    FindByEmail)
      echo -n "Enter data tobe search:"
      read data
      cat $1 | grep $data 
      ;;
    *)
      echo "Wrong operation";
      break;
  esac
done
fi