#!/bin/bash -x
function degF()
{
	degF=$(( ($celsius*9/5)+32 ))
	echo $degF
}
function degC()
{
        degC=$(( ($far-32)*5/9 ))
        echo $degC
}
echo "1.Celcius to Fahrenheit"
echo "2.Fahrenheit to Celcius"
read -p "Enter your choice:" ch
case $ch in 
	1)
	read -p  "Enter celcius to convert to fahrenheit: " celsius
	result="$(degF $(( $celsius )) )"
	echo "Fahrenheit:$result"
		;;
	2)
	read -p  "Enter celcius to fahrenheit to celcius: " far
	result1="$(degC $(( $far )) )"
	echo "Celcius:$result1"
		;;
	*)
	echo "Invalid choice"
esac
