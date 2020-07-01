#!/bin/bash

Num=(7 5 0 -1 2 -3 1 3 -2)
echo ${Num[@]}
length=${#Num[@]}

#num1=${Num[0]}
#num2=${Num[1]}
#num3=${Num[2]}

#sum=$(($num1+$num2+$num3))
#echo $sum

for (( i=0; i<$length-2; i++ ))
do
	for (( j=$i+1; j<$length-1; j++ ))
	do
		for (( k=$j+1; k<$length; k++ ))
		do
		if [ $((${Num[i]}+${Num[j]}+${Num[k]})) -eq 0 ]
		then
			echo "${Num[i]}" "${Num[j]}" "${Num[k]}"
		fi
		done
	done
done
