#!/bin/sh

#testProgram.sh
#Fill in the unit test for program.sh described in the lab assignment below

#Check that the result matches the correct result
sum=0
file='./myfile/even-number.txt'
echo  $PWD
for num in $(cat $file)
do
   ((sum+=num))
done
echo  $PWD
   echo 'sum'
   echo $sum
if [ $sum = 250500 ]
then
   exit 0
else 
   exit 1
fi
