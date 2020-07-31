#!/bin/bash -x
read -p "Enter month :" m
read -p "Enter day :" d
read -p "Enter year :" y
y0=$((y-(14-m)/12))
x=$((y0+(y0/4-y0/100)+y0/400))
m0=$((m+12*((14-m)/12)-2))
d0=$(((d+x+31*m0/12)%7))
echo "$d0"
if [[ $d0 -eq 0 ]]
then 
	echo "Sunday"
elif [[ $d0 -eq 1 ]]
then
	echo "Monday"
elif [[ $d0 -eq 2 ]]
then
	echo "Tuesday"
elif [[ $d0 -eq 3 ]]
then
	echo "Wednesday"
elif [[ $d0 -eq 4 ]]
then
	echo "Thursday"
elif [[ $d0 -eq 5 ]]
then
	echo "Friday"
else
	echo "Saturday"
fi
