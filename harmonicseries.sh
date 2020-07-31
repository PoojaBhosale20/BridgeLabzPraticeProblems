#!/bin/bash -x
read -p "Ënter the last number fot harmonic series: " num
harmonic=1
count=1
for (( count=1;count<=$num;count++ ))
do
harmonic=$(( $harmonic+1/count ))
done
echo $harmonic
