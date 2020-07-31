#!/bin/bash -x
read -p "Enter a number to check:" num
count=2
for (( count=2;count<=$num/2;count++ ))
do
if [[ $num%$count -eq 0 ]]
then
	flag=1;
	break;
fi
done
if [[ $num -eq 1 ]]
then
	echo "Neither Prime nor Composite"
elif [[ $flag -eq 1 ]]
then
	echo "Is not a Prime"
else
	echo "Is a prime NUmber"
fi
