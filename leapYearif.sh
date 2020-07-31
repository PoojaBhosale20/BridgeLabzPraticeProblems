#!/bin/bash -x
read -p "Enter a year: " year
if [[ $year -gt 999 && $year -lt 10000 && $year%4 -eq 0 && $year%100 -ne 0 || $year%400 -eq 0 ]]
then
	echo "Year is A Leap Year";
else
	echo "Year is not a Leap Year";
fi
