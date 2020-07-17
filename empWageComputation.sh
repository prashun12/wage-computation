#!/bin/bash -x

# take three integers from the user
echo "Enter three integers: "
read a b c
decalre -A cal
cal[a+b*c]= "(($a+$b\*$c))"
cal[a*b+c]= "(($a%$b +$c))"
cal[c+a/b]= "(($c+$a/ $c))"
cal[a%b+c] ="(($a \*$b +$c))"
echo ${!cal[@]}
echo ${cal[@]}
counter=0
for value in ${cal[@]}
do
    cal[((counter++))]
done
for((i=0; i<3; i++))
do
   for((j=$(( $i+1 ));j<4;j++))
do
if [ ${cal[$j]} -gt ${arr[$i]}
then
temp=${cal[$j]}
cal[$i]=${cal[$]}
cal[$]=$temp
fi
