#! /bin/bash

#Author:Ankita Angane
#Flip Coin Simulation Program

#UC1:Flipping a cointo display head or tail as a winner

result=$((RANDOM%2))
if [ $result -eq 0 ]
then
	echo "HEADS is a winner"
else
	echo "TAILS is a winner"
fi

