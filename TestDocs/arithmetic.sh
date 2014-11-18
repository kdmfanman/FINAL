#!/bin/bash
#print out all provided parameters

#using expr

n1=$1
n2=$2
n3=0
sum=`expr $n1 + $n2`
 echo 
 echo 'the sum using expr is' $sum 
 
#using parentheses
 ((sum1=n1+n2))
 echo "the sum using parenthesis is $sum1"

#using let
let sum2=$n1+$n2
echo "the sum using let is $sum2"

#print out sum of all numbers
echo 
echo "the entries are"
for FILE1 in "$@"
do

echo $FILE1

((n3=$n3+$FILE1))

done
echo "the sum of all numbers is $n3"
