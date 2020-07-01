 max=10
count=1

while [ "$count" -le $max ]
do
   number[$count]=$(( `shuf -i 100-999 -n 1` ))
   let "count += 1"
done

echo "${number[*]}"



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
