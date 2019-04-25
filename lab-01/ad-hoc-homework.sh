#!/bin/bash
# ad-hoc-homework.sh
# change for CRLF

echo  -n "Input file name :"
read filename
if [ -f $filename ] ; then
   ansible node01 -i ../inventory/ansible-nodes -m copy -a "src=${filename} dest=/tmp/${filename} backup=yes"
else
   "echo $filename doesn't exist cannot copy"
fi