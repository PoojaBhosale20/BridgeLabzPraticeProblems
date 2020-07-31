#!/bin/bash 
 ls 
if [ $? -eq 0 ]
then 
echo "Successfully executed."
else
echo "Command execution failed."
fi

hello
if [ $? -eq 0 ]
then
echo "Successfully executed."
exit 0
else
echo "Command execution failed."
exit 1
fi

 
