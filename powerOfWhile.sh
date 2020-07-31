#!/bin/bash 
read -p  "Enter the number upto where to find power of : " num
power=1
count=0
while [[ $count -le $num && $power -le 256 ]]
do
echo "$count $power"

power=$(( 2*$power ))
(( count++ ))
done
