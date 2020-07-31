#!/bin/bash
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c
cal1=$((a + b * c))
echo "$cal1"
cal2=$((a % b + c))
cal3=$((c + a / b))
cal4=$((a * b + c))
echo "$cal2"
echo "$cal3"
echo "$cal4"
if [[ cal1 -lt cal2 && cal1 -lt cal3 && cal1 -lt cal4 ]]
then 
	echo "Min : $cal1"
elif [[ cal2 -lt cal1 && cal2 -lt cal3 && cal2 -lt cal4 ]]
then
	echo "Min : $cal2"
elif [[ cal3 -lt cal1 && cal3 -lt cal2 && cal3 -lt cal4 ]]
then
	echo "Min : $cal3"
else
	echo "Min : $cal4"
fi

if [[ cal1 -gt cal2 && cal1 -gt cal3 && cal1 -gt cal4 ]]
then
	echo "Max : $cal1"
elif [[ cal2 -gt cal1 && cal2 -gt cal3 && cal2 -gt cal4 ]]
then
	echo "Max : $cal2"
elif [[ cal3 -gt cal1 && cal3 -gt cal2 && cal3 -gt cal4 ]]
then
	echo "Max : $cal3"
else
	echo "Mqax : $cal4"
fi


