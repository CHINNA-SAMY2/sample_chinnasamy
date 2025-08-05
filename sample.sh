#!/bin/bash
read -p "enter first num" a
read -p "enter second num" b
if [ $a -gt  $b ] ; then
echo " a greater"
elif [ $a -lt  $b ] ; then
echo " a lesser"
else 
echo "equal"
fi
