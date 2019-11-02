#!/bin/bash
echo "Enter the size"
read n
echo "Enter the list you want to sort"
for((i=0;i<n; i++))
do
read arr[$i]
done

#inserion sort function
for((i=1;i<n;i++))
do
j=$i-1
temp=${arr[$i]}
while((j>=0 && arr[j]>temp))
do
arr[$j+1]=${arr[$j]}
j=$j-1
done
arr[j+1]=$temp
done

#print sorted array
echo "printing sorted array"
for((i=0;i<n;i++))
do
echo ${arr[$i]}
done

