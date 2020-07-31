#!/bin/bash -x
read -p "Enter the number to find factorial: " num
fact=1
count=1
for(( count=1;count<=$num;count++ ))
do
	fact=$(( $fact*$count ))
done
echo "Factorial of number is: $fact"

