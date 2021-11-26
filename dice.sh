#!/bin/bash

echo "Welcome to Dice Program"

declare -a diceArray

for (( i=0; i<5; i++ ))
do
	dice=$((RANDOM%6+1))
	diceArray[$i]=$dice
done

echo "Dice Values: " ${diceArray[@]}
