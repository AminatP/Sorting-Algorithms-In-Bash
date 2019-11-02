#!/bin/bash
echo "Enter size"
read n
echo "Enter nums to sort: "
for (( i = 0; i < $n; i++ ))
do
read nums[$i]
done
# comment
# Bubble sort
for (( i = 0; i < $n-1; i++ ))
do
for (( j = 0; j < $n-i-1; j++ ))
do
if [ ${nums[$j]} -gt ${nums[$j+1]} ]; then
t=${nums[$j]}
nums[$j]=${nums[$j+1]}
nums[$j+1]=$t
fi
done
done

# printing
echo -e "\nHere is the sorted list "
for (( i=0; i < $n; i++ ))
do
echo ${nums[$i]}
done

