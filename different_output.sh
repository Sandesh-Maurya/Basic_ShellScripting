#!/bin/bash
cd OutPut_CSV
# /// lines not present in  allplus.csv but not in allsample.csv
grep -v -F  -f  allsample.csv allplus.csv


# diff -y -u allsample.csv allplus.csv 