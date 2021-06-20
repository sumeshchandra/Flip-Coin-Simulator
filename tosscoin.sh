#! /bin/bash -x

echo "Flip coin simulator"
target_count=21
minimum_difference=0
heads_count=0
tails_count=0
flips_count=0
while [ 1 ]
do
toss=$(( RANDOM % 2  ))
if(( toss == 0 ))
then
echo "Heads"
(( heads_count++ ))

else
echo "Tails"
(( tails_count++ ))

fi


diff=$(( heads_count - tails_count ))
if [[ $heads_count -eq $target_count  ||  $tails_count -eq $target_count ]] && [ $diff -eq 0 ];then
echo "Tie "
break

elif [ $heads_count -eq $target_count ] && [ $diff -gt $minimum_difference ];then
        echo "Heads won by $diff"
        break
elif [ $tails_count -eq $target_count ] && [ $diff -gt $minimum_difference ];then
         echo "Tails won by ${diff} points"
         break
fi

done
