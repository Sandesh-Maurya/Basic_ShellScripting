#!/bin/bash

cd OutPut_CSV
# touch all.csv
# rm -i all.csv
# rm -i allplus.csv
# rm -i allplusrev.csv

# /// look for all files csv files
for i in ts*.csv; 
do
    cat $i>>all.csv 
    echo -n $i>>allplus.csv
    echo -n ",">>allplus.csv
    cat $i>>allplus.csv
done
# #  creating allplusrev.csv with reverse sorting using the 3rd key
# cp allplus.csv allplusrev.csv | sort -k3 -r -t,
sort -k3 -r -t, allplus.csv >> allplusrev.csv
# cat allplusrev.csv 
shuf  -n 80 allplus.csv -o allsample.csv
