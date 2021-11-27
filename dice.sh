#!/bin/bash

echo "Welcome to Dice Program"

sum=0

declare -a diceArray

function addDices()
{
	for (( i=0; i<5; i++ ))
	do
		sum=$((${diceArray[$i]} + sum))
	done
}

for (( i=0; i<5; i++ ))
do
	dice=$((RANDOM%6+1))
	diceArray[$i]=$dice
done

addDices

echo "Dice Values: " ${diceArray[@]}

echo "Sum of Dices: " $sum
