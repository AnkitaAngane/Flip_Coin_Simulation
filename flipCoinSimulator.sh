#! /bin/bash

#Author:Ankita Angane
#Flip Coin Simulation Program

#UC1:Flipping a cointo display head or tail as a winner
#UC2: Added a loop for flipping 21 times

#variable declaration
h_counter=0
t_counter=0
diff=0

while [ $h_counter -le 21 -a $t_counter -le 21 ]
do
	result=$((RANDOM%2))
	if [ $result -eq 0 ]
	then
		h_counter=$(( h_counter + 1 ))
		if [ $h_counter -eq 21 ]
		then
			echo "HEADS count : $h_counter ;  TAILS count : $t_counter"
			diff=$(( $h_counter - $t_counter ))
			echo "HEADS Won game by $diff times "
			break;
		fi
	else
		t_counter=$(( t_counter + 1 ))
		if [ $t_counter -eq 21 ]
		then
			echo "HEADS count : $h_counter ;  TAILS count : $t_counter"
			diff=$(( $t_counter - $h_counter ))
			echo "TAILS Won game by $diff times "
			break;
		fi
	fi
done

