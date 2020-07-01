#!/bin/bash -x
 max=10
count=1

while [ "$count" -le $max ]
do
   number[$count]=$(( `shuf -i 100-999 -n 1` ))
   let "count += 1"
done

echo "${number[*]}"

secondLargestNum=$(printf '%s\n' "${number[@]}" | sort -n | tail -2 | head -1)
secondSmallestNum=$(printf '%s\n' "${number[@]}" | sort -n | head -2 | tail -1)
