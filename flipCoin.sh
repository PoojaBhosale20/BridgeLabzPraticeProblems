#!/bin/bash -x
ishead=1
istail=0
isheadCount=0
istailCount=0
while [[ $isheadCount -le 2  ||  $istailCount -le 2 ]]
do
	randomCheck=$(( RANDOM%2 ))
	if [[ $randomCheck -eq $ishead ]]
	then
		isheadCount=$(( isheadCount+1 ))

	else
		istailCount=$(( istailCount+1 ))

	fi
done
