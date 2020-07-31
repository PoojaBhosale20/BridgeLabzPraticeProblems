#!/bin/bash -x
number1=$(( 10+RANDOM%90 ))
number2=$(( 10+RANDOM%90 ))
number3=$(( 10+RANDOM%90 ))
number4=$(( 10+RANDOM%90 ))
number5=$(( 10+RANDOM%90 ))
sum=$((number1+number2+number3+number4+number5))
avg=$((sum/5))
echo "Sum: $sum"
echo "Average: $avg"
