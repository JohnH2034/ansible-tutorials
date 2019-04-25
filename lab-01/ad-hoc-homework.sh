#!/bin/sh 
# ad-hoc-homework.sh

echo  -n "Input file name :"
read filename
if [ -f $filename ] ; then
   ansible node01 -m copy -a "src=${filename} dest=/tmp/${filename}"
else
   "echo $filename doesn't exist cannot copy"
fi