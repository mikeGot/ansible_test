#!/bin/zsh

myArray=()
for i in {1..400}
do
  myArray+=$RANDOM
done

new_arr=()
sum=0
for number in ${myArray[*]}
do
  if (( $number>0 )); then
    new_arr+=number
    let "sum += $number"
  fi
done

echo "Количество элементов: ${#new_arr[*]}"
echo "Сумма: $sum"

C=$(bc<<<"scale=3;$sum/${#new_arr[*]}")

echo "Среднее арифметическое: $C"
