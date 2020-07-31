#!/bin/bash
current_date=$(date +%d%m%Y)
echo "Date : $current_date"
for files in `ls *.log.1`;
do
firstname=`echo $files | awk  -F. '{print $1}'`
echo $firstname
extension=`echo $files | awk  -F. '{print $2}'`
echo  $extension
mv "$files" "$firstname"-"$current_date.$extension"
done
