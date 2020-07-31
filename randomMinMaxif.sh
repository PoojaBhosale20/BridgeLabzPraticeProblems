#!/bin/bash
number1=$(( 100+RANDOM%900 ))
echo "$number1"
number2=$(( 100+RANDOM%900 ))
echo "$number2"
number3=$(( 100+RANDOM%900 ))
echo "$number3"
number4=$(( 100+RANDOM%900 ))
echo "$number4"
number5=$(( 100+RANDOM%900 ))
echo "$number5"

if [[ number1 -lt number2 && number1 -lt number3 && number1 -lt number4 && number1 -lt number5 ]]
then
	echo "Min : $number1"
elif [[ number2 -lt number1 && number2 -lt number3 && number2 -lt number4 && number2 -lt number5 ]]
then
	echo "Min : $number2"
elif [[ number3 -lt number1 && number3 -lt number2 && number3 -lt number4 && number1 -lt number5 ]]
then
	echo "Min : $number3"
elif [[ number4 -lt number1 && number4 -lt number2 && number4 -lt number3 && number4 -lt number5 ]]
then
	echo "Min : $number4"
else 
	echo "Min : $number5"
fi

if [[ number1 -gt number2 && number1 -gt number3 && number1 -gt number4 && number1 -gt number5 ]]
then
	echo "Max : $number1"
elif [[ number2 -gt number1 && number2 -gt number3 && number2 -gt number4 && number2 -gt number5 ]]
then
	echo "Max : $number2"
elif [[ number3 -gt number1 && number3 -gt number2 && number3 -gt number4 && number1 -gt number5 ]]
then
	echo "Max : $number3"
elif [[ number4 -gt number1 && number4 -gt number2 && number4 -gt number3 && number4 -gt number5 ]]
then
	echo "Max : $number4"
else
	echo "Max : $number5"
fi


