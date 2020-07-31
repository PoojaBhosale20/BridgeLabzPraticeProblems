#!/bin/bash
diff=`diff -iEZ C:/Users/Pooja/TerminalCommands/linux-content/original C:/Users/Pooja/TerminalCommands/linux-content/updated`
echo ${#diff}
if [ ${#diff} -gt 0 ]
then
echo "There is a diiference"
cp original/original.sh updated/updated.sh
echo "Aplied changes"
else
echo "No difference"
fi

if [ -d original-backup ]
then
cp original/original.sh original-backup/
else
mkdir original-backup
cp original/original.sh original-backup/
fi
diff2=`diff -iEZ C:/Users/Pooja/TerminalCommands/linux-content/original-backup/original.sh C:/Users/Pooja/TerminalCommands/linux-content/updated/updated.sh`
if [ ${#diff2} -eq 0 ]
then
echo "Changes Applied...Backup created"
else 
echo "Differ in updated backup"
fi
