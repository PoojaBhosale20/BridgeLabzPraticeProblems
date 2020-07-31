#!/bin/bash -x
read -p 'Enter file name:' filename
if [ -d "$filename" ]; then
echo "$filename exists."
exit 0
else
echo "File does not exists";
exit 1
fi
