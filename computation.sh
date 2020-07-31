#!/bin/bash -x
declare -A computationDict
read -p "Enter the values of a to compute: " a
read -p "Enter the values of b to compute: " b
read -p "Enter the values of c to compute: " c
value1=$(( $a+($b*$c ) ))
value2=$(( ( $a*$b )+$c ))
value3=$(( $c+( $a/$b ) ))
value4=$(( ( $a%$b )+$c ))
compuationDict[1]=$value1
compuationDict[2]=$value2
compuationDict[3]=$value3
compuationDict[4]=$value4
count=0
for count in "${!compuationDict[@]}"
do
	arr[ $count ]=${compuationDict[$count]}
done 

for ((i = 0; i<5; i++))
do

    for((j = 0; j<5-i-1; j++))
    do

        if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in acesending order :"
echo ${arr[*]}

for count in "${!compuationDict[@]}"
do
        arr[ $count ]=${compuationDict[$count]}
done

for ((i = 0; i<5; i++))
do

    for((j = 0; j<5-i-1; j++))
    do

        if [[ ${arr[j]} -lt ${arr[$((j+1))]} ]]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Array in descending order :"
echo ${arr[*]}
