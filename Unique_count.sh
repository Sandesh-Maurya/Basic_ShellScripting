#!/bin/bash
# this file outputs the distinct count of values from field 3 of file allplus.csv
cd OutPut_CSV
export IFS=','
echo "Count of unique Value from Field 3 using CUT,uniq, sort --"
cut -d, -f3 allplus.csv | sort |uniq |wc -l
echo "Count of unique Value from Field 3 using awk --"
awk -F ',' '{print $3}' allplus.csv | sort |uniq  |wc -l