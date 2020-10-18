#! /bin/bash

#Author:Ankita Angane
#Flip Coin Simulation Program

#UC1:Flipping a cointo display head or tail as a winner
#UC2: Added a loop for flipping 21 times

#variable declaration
h_counter=0
t_counter=0
diff=0
final_counter=21


while [ $h_counter -le $final_counter -a $t_counter -le $final_counter ]
do
	result=$((RANDOM%2))
	if [ $result -eq 0 ]
	then
		h_counter=$(( h_counter + 1 ))
		if [ $h_counter -eq $final_counter ]
		then
			echo "HEADS count : $h_counter ;  TAILS count : $t_counter"
			diff=$(( $h_counter - $t_counter ))
			echo "HEADS Won game by $diff times "
			if [ $diff -le 2 ]
			then
				if [ $diff -eq 0 ]
				then
					echo "Its a TIE as difference is $diff"
					final_counter=$(( final_counter + 1 ))
				else
					echo "Difference is too less, So please continue"
					final_counter=$(( final_counter + 1 ))
				fi
			else
				break;
			fi
		fi
	else
		t_counter=$(( t_counter + 1 ))
		if [ $t_counter -eq $final_counter ]
		then
			echo "HEADS count : $h_counter ;  TAILS count : $t_counter"
			diff=$(( $t_counter - $h_counter ))
			echo "TAILS Won game by $diff times "
			if [ $diff -le 2 ]
                        then
                                if [ $diff -eq 0 ]
                                then
                                        echo "Its a TIE as difference is $diff"
					final_counter=$(( final_counter + 1 ))
                                else
                                        echo "Difference is too less, So please continue"
					final_counter=$(( final_counter + 1 ))
                                fi
                        else
                                break;
                        fi
		fi
	fi
done

