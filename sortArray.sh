#!/bin/bash -x
count=0
while [[ $count -lt 5 ]]
do
        number[ count ]=$(( 100+RANDOM%900 ))
        (( count++ ))
done

echo ${number[@]}
for ((i = 0; i<5; i++)) 
do
      
    for((j = 0; j<5-i-1; j++)) 
    do
      
        if [[ ${number[j]} -gt ${number[$((j+1))]} ]] 
        then
            temp=${number[j]} 
            number[$j]=${number[$((j+1))]}   
            number[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array in sorted order :"
echo ${number[*]} 
echo "Second largest is: "
echo "Second Smallest is: ${number[2]}"
echo "Second largest is ${number[4]}"
