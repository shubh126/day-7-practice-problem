#!/bin/bash

MAXCOUNT=100
count=1

for (( i=$count;i<=$MAXCOUNT;i++ ))
do
   number[$count]=$i
   let count+=1
done

echo "${number[@]}"
length=${#number[@]}
echo $length

for j in "${number[@]}"
do
	while [ $j -ne 100 ]
	do
		lastDigit=$(($j%10))
		nextDigit=$(($j/10))
		if [ $lastDigit -eq $nextDigit ]
		then
			echo $j
		fi
	break
	done
done
