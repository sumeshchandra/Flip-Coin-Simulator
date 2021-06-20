#! /bin/bash

echo "Flip coin simulator"
flipCoin=$((RANDOM%2))

if [ $flipCoin -eq 1 ]
then
    echo "TAIL"
else
    echo "HEAD"
fi
