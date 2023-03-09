#!/bin/bash
# Write a shell program to concatenate to two String given as input and display the 
# resultant string along with its string length.
STR1=$1
STR1=$2
OUT="$1$2"
if [ $# -eq 0 ]
then
	echo "$0 string1 string2"
	exit 1
fi
 
len=$(expr length $OUT)
 
echo "Concatenate string is - $OUT"
echo "String Length is - $len"


echo "simple calculator"
sum=0
i="y"
echo "enter first number"
read n1
echo "enter second number"
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter choice"
read ch
case $ch in
1)sum=$(echo " $n1 + $n2" | bc -l)
echo "Addition is =" $sum;;
2)sum=$(echo "$n1 - $n2" | bc -l)
echo "Sub is =" $sum;;
3)sum=$(echo "$n1 * $n2" | bc -l)
echo "Mul is =" $sum;;
4)sum=$(echo "$n1 / $n2" | bc -l)
echo "div is =" $sum;;
*)echo "invalid choice"
esac
echo "Do you want to continue"
read i
if [ $i != "y" ]
then
exit
fi
done
