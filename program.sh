#!/bin/sh

#program.sh
#Fill in the program described in the lab assignment below
n=1
while [ $n -lt 1001 ]; do
if [ $(( $n % 2 )) -eq 0  ]
then
   echo  " $n"  >> ./myfile/even-number.txt
   echo $n
fi
     n=$(($n+1)) 
done
 ls -lar ./myfile/even-number.txt
exit 0
