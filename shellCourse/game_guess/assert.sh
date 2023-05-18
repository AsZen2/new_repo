#! /bin/bash
# Author: Me


ask_number () {
	
	read -p "Adivina el valor numerico de la variable: " A
	generator $A
}


generator() {
	random=$(($RANDOM%10))
	echo $random
	guess $A $random
	
}

play_again () {	
	echo -e "Do you want to play again? Y/N."
	read -p ">> " ask 
		if [ ${ask^^}  == "Y" ];then
	       		ask_number
        	elif [ ${ask^^}  == "N" ]
		then
			echo 'Thanks for to play' 
			exit
		else
			play_again
		fi
		}

guess () { 
	if [ $A == $random ]
		then 
		echo "You won"
		play_again
	else
		echo "you lost"
		read -p "Put another number: " A
		guess $A
	fi
}
ask_number 
