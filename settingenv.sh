#!/bin/bash
echo $env | grep -i usersecret
if [ $? -eq 0 ]
then 
echo "error"
exit 0
else
export usersecret="desgch"
echo  "usersecret = $usersecret"
exit 1
fi  
