#!/bin/sh

#testProgram.sh
#Fill in the unit test for program.sh described in the lab assignment below

#Check that the result matches the correct result
sum=0
for num in $(cat even-number)
do
   ((sum+=num))
done
   echo 'sum'
   echo $sum
if [ $sum = 250500 ]
then
   exit 0
else 
   exit 1
fi
