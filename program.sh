#!/bin/sh

#program.sh
#Fill in the program described in the lab assignment below

n=1
touch even-number.txt
while [ $n -lt 30 ]; do 
if [ $(( $n % 2 )) -eq 0  ]
then
   echo  " $n"  >> even-number.txt
fi
     n=$(($n+1)) 
done
exit 0
