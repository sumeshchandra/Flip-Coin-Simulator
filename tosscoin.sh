#! /bin/bash -x

echo "Flip coin simulator"
echo "number of times user want to flip the coin"
read flip
echo $flip
countHead=0
countTail=0
declare -A noOfCounts
for((i=0;i<flip;i++))
do
if [ $((RANDOM%2)) -eq 1 ]
then
((countHead++))
else
((countTail++))
fi
done
echo "head won="$countHead
echo "tail won="$countTail
