#!/bin/bash -x
function palindrome()
{
	rev=""
	temp=$num
	while [[ $num -gt 0 ]]
	do
	digit=$(( $num%10 ))
	rev=$(( (rev*10)+$digit ))
	num=$num/10

	done
	if [[ $temp -eq $rev ]]
	then
		echo "Number is palindrome"
	else
		echo "Number is not palindrome"
	fi
}
read -p "Enter to check palindrome or not:" num
result="$(palindrome $(( $num )) )"
echo "$result"
