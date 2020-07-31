#!/bin/bash -x
read -p 'Enter file name:' filename
if [ test -d "$filename" ]; then
echo "$filename exists."
exit 0
else
touch $filename;
echo $filename created;
exit 1
fi


