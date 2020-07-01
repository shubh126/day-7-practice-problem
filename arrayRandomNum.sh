#!/bin/bash -x

#Numbers[]=$(( (`shuf -i 100-999 -n 10`) ))
#echo ${Numbers[@]}



#for (( i=0; i<=10; i++ ))
#do
	#Numbers[i]=$(( `shuf -i 100-999` ))
#	Numbers[i]=$(( RANDOM % 999 + 100 ));
   #a[i]=$(($RANDOM % 100 + 1))
#done
#echo ${Number[0]}

#numbers=$(shuf -i 1-100 -n 6)
#arr=$numbers

max=10
count=1

while [ "$count" -le $max ]
do
	number[$count]=$(( `shuf -i 100-999 -n 1` ))
	let "count += 1"
done

echo "${number[*]}"

#secondLargestNum=$(printf '%s\n' "${number[@]}" | sort -n | tail -2 | head -1)
#secondSmallestNum=$(printf '%s\n' "${number[@]}" | sort -n | head -2 | tail -1)

#for i in "${number[@]}"
#do
#	for (( i=0; i<="${#number[@]}"; i++ ))
#	do
#		temp=${number[i]}

function secondLargestNum()
{

largest=${number[0]}
secondGreatest='unset'

for((i=1; i < ${#number[@]}; i++))
do
  if [[ ${number[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${number[i]}
  elif (( ${number[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${number[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${number[i]}
  fi
done

echo "secondGreatest = $secondGreatest"
}
secondLargestNum


function secondSmallest()
{

smallest=${number[0]}
secondSmallest='unset'

for((i=1; i < ${#number[@]}; i++))
do
  if [[ ${number[i]} > $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${number[i]}
  elif (( ${number[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${number[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${number[i]}
  fi
done

echo "secondSmallest = $secondSmallest"
}
secondSmallest
