#!/bin/bash
clear
#remove directory new_files if exist
# rm -rf new_files 
#create directory to store the new csv files
mkdir OutPut_CSV
cd OutPut_CSV

# loop 100 times to create 100 files
for i in {001..100}; 
do 
# creating files ts$i.csv
    touch "ts$i.csv"
        #  appending date and file number to the csv file
    echo $(date),$i >>ts$i.csv
        #sleep command for delay
    sleep 1
done

