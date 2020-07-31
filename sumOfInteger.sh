#!/bin/bash 
echo -n "Enter the Total numbers :"
read n 
echo "Enter numbers :"
i=0 
while [ $i -lt $n ] 
do
       read arr[$i] 
     i=$(( $i + 1 )) 
done

for (( i=0; i<$n-2; i++ )) 
    do 
        for (( j=$i+1; j<$n-1; j++ )) 
        do
            for (( k=$j+1; k<$n; k++)) 
            do 
                if [[ ${arr[i]}+${arr[j]}+${arr[k]} -eq 0 ]] 
               then
		echo "Elements are:${arr[i]} ${arr[j]} ${arr[k]}"
                   found=true; 
                fi
            done
        done
    done
if [[ $found -eq false ]]
then
echo "Cannot find"
fi
