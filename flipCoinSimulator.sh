#! /bin/bash

#Author:Ankita Angane
#Flip Coin Simulation Program

#UC1:Flipping a cointo display head or tail as a winner
#UC2: Added a loop for flipping 21 times

#variable declaration
h_counter=0
t_counter=0

for(( counter=1; counter<=21; counter++ ))
do
	result=$((RANDOM%2))
	if [ $result -eq 0 ]
	then
		h_counter=$(( h_counter + 1 ))
	else
		t_counter=$(( t_counter + 1 ))
	fi
done

echo "HEADS WON $h_counter times"
echo "TAILS WON $t_counter times"
