#!/bin/bash 
count=1
valid=true
low=0
high=100
ans=$(( ($high+$low)/2 ))
read -p "Choose a number between 0 to 100: " num
while [[ $valid ]]
do
	echo "Is your number: $ans"
	read -p "Enter h to indicate high l to indicate low and y if the number is guessed correctly: " check_ans

	if [[ $check_ans == "h" ]]
	then
	low=$ans
	ans=$(( ($high+$low)/2 ))
	elif [[ $check_ans == "l" ]]
	then
	high=$ans
	ans=$(( ($high+$low)/2 ))
	elif [[ $check_ans == "c" ]]
	then
	echo "Your number is : $ans"
	break;
	else
	echo "Wrong number choice"
fi 
done
