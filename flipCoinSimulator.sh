#!/bin/bash 
ishead=1
istail=0
isheadCount=0
istailCount=0
while [[ $isheadCount -lt 21 && $istailCount -lt 21 ]]
do
        randomCheck=$(( RANDOM%2 ))
        if [[ $randomCheck -eq $ishead ]]
        then
                isheadCount=$(( isheadCount+1 ))

        else
                istailCount=$(( istailCount+1 ))

        fi
done
echo "Head count $isheadCount"
echo "Tail count $istailCount"
if [[ $isheadCount -eq $istailCount ]]
then
echo "Tie"
diff=$(( $isheadCount-$istailCount ))
	while [[ $diff -eq 2 && $diff -eq -2 ]]
	do
	diff=$(( $isheadCount-$istailCount ))
	randomCheck=$(( RANDOM%2 ))
        	if [[ $randomCheck -eq $ishead ]]
        	then
                	isheadCount=$(( isheadCount+1 ))

        	else
                	istailCount=$(( istailCount+1 ))

        	fi
	done
echo "Head count $isheadCount"
echo $istailCount

elif [[ $isheadCount -eq 21 ]]
then
diff1=$(( $isheadCount-$istailCount )) 
echo "Head won by $diff1 "
else
diff2=$(( $istailCount-$isheadCount )) 
echo "tail Won by : $diff2 "
fi


