#!/bin/bash
read -p "Enter the Number : " number
unit=$((number%10))
tens=$((number/10 %10))
hundreds=$((number/100 %10))
thousand=$((number/1000))

if [[ number -ge 0 && number -le 9 ]]
then 
	echo "Units : $unit"
elif [[ number -ge 10 && number -le 99 ]]
then
	echo "Units : $unit Tens : $tens"
elif [[ number -ge 100 && number -le 999 ]]
then
	echo "Units : $unit Tens: $tens Hundred: $hundreds"
elif [[ number -ge 1000 && number -le 9999 ]]
then
	echo "Units : $unit Tens: $tens Hundred: $hundreds Thousands: $thousand"
else
	echo "Number is greater than 4 digit"
fi

