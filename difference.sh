
 
 #!/bin/bash
#  this file shows the output lines which are present in allplus.csv and not in allsample.csv
zero=0
cd OutPut_CSV
# reading allplus line by line
while read lines
 do 
  # echo $lines;
  # echo "hello"
  check=0
  # reading allsample.csv
  while read file2_line
    do
    # checking if line exits in both files
      if [ "$lines" == "$file2_line" ] 
      then 
          check=1
      fi  
    done < allsample.csv
    # if line not present in both files echo lines
    if [ $check -eq $zero ]
    then
      echo $lines
    fi
  done < allplus.csv
