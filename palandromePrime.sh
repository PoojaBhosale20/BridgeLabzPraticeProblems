#!/bin/bash 
function prime()
{
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

}
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
	echo "$rev"
}

read -p "Enter number to check  :" num
result="$(prime $(( $num )) )"
echo $result
result1="$(palindrome $(( $num )) )"
echo "Palindrome of number :$result1"
result2="Palindrome $(prime $(( $result1 )) )"
echo $result2
