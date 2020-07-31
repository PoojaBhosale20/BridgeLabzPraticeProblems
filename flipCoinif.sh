#!/bin/bash -x
flip=$((RANDOM%2))
ishead=0
if [[ $head -eq $flip ]]
then
	echo "Head"
else
	echo "Tail"
fi
