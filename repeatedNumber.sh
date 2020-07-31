#!/bin/bash -x
num=10
max=100 
for (( num=10; num<=max;num++ ))
do    

        temp=$num
	rev=0
        while [[ $temp -gt 0 ]]
        do
        rem=$(( $temp%10 ))
        temp=$(( $temp/10 ))
	rev=$(( ($rev*10)+$rem ))
        done
        if [[ $num -eq rev ]]
        then
                arr=( "${arr[@]}" "$num" )
        fi
done
echo ${arr[@]}
