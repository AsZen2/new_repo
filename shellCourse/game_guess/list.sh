#! /bin/bash

#counter=0
#list=()
#sorted=$(($RANDOM%10)) 


ifWon () {
	if [ $word == $sorted ]
	then 
		echo "YOU WON"
		main			
	fi
}


restar () {
	rest=$(($word - $sorted))
	aprox=$(( 100 - ${rest#-} * 10 ))
	return $aprox
}

main () {
	counter=0
	list=()
	sorted=$(($RANDOM%10))
	echo $sorted 
	echo $list
	while [ $counter -le  5 ]
	do
		read -p "Enter word: " word
		ifWon word

		restar word
		list=(${list[@]} $aprox)
	
		((counter++))
	done
}

average () {
	for num in ${list[*]}
	do
		(( sum += num ))
	done

	result=$((sum/${#list[*]}))
}

main
average

echo $result
echo ${list[*]}

