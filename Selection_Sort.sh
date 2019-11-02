#!/bin/bash
echo "Enter the size"
read n
echo "Enter the list you want to sort"
for((i=0;i<n; i++))
do
read arr[$i]
done

#selection function
for((i=0;i<n-1;i++))
do
minIndex=$i
for((j=i+1;j<n;j++))
do
if((arr[j]<arr[$minIndex]))
then
minIndex=$j
fi
done
temp=${arr[$i]}
arr[$i]=${arr[$minIndex]}
arr[$minIndex]=$temp
done

#print sorted array
echo "printing sorted array"
for((i=0;i<n;i++))
do
echo ${arr[$i]}
done
