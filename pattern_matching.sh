#!/bin/bash
# this file outputs pattern match to records of a file and second output is done using awk matches record having "the " 
echo "Enter Pattern"
read pattern
# echo "Line having \"the\" in it?"
echo "--------------------****************************------------------------"
check=0
zero=0
status=$?
while read line
do
    if [[ $line == *$pattern* ]]
    then 
    echo "Found"
    check=1
    break
    fi

done <text.txt
if [ $check -eq $zero ]  
then
    echo "Not Found"
    echo $status
fi

echo "---------------*********Pattern Matching Lines(lines contianing \"the\") using awk*******************------------"

cat text.txt | awk  '/the/'