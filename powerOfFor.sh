#!/bin/bash
read -p  "Enter the number upto where to find power of : " num
power=1
count=0
for (( count=0;count<=$num;count++ ))
do
echo "$count $power"
power=$(( 2*$power ))
done

