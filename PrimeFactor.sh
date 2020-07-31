#!/bin/bash 
read -p "Enter the number to find prime factor: " num
count=2

j=2
for (( count=2;count<$num;count++ ))
do
flag=0
	if [[ $num%count -eq 0 ]]
	then
	flag=1
	for (( j=2;j<i/2;j++ ))
	do
		if [[ count%j -eq 0 ]]
		then
			break;
		fi
	done
if [[ $flag==1 ]]
then
echo "Prime factors are :$count"
fi
fi
done
