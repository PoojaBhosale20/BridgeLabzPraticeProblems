#!/bin/bash -x
read -p "Enter a range of number to find prime numbers:" num1 num2
count=0
i=num1
j=2
for (( i=$num1+1;i<=$num2;i=$i+2 ))
do
flag=0
for (( j=2;j<=i/2;j++ ))
do
if [[ i%j -eq 0 ]]
then
        flag=1;
        break;
fi
done
if [[ $flag -eq 0 ]]
then
echo "Prime Number are :$i"
fi
done

