#!/bin/bash -x
count=1
while [[ $count -le 5 ]]
do
	number[ count ]=$(( 100+RANDOM%900 ))
	(( count++ ))
done

echo ${number[@]}
echo ${number[1]}
first=${number[1]}
second=${number[1]}
i=1
for i in "${number[@]}"
	do
	if [[ $i -gt $first ]]
	then
	second=$first
	first=$i
	
elif [[ $i -gt $second && $i -ne $first ]]
then
	second=$i
fi
done
echo $second

for i in "${number[@]}"
        do
        if [[ $i -lt $first ]]
        then
        second=$first
        first=$i

elif [[ $i -lt $second && $i -ne $first ]]
then
        second=$i
fi
done
echo $second
