#!/bin/bash 
i=1
while [ $i -le 11 ]
do
	head=1
	tail=0	
	empCheck=$((RANDOM%2))
	case $empCheck in
		$head)
			echo "Head";;
		$tail)
			echo "Tail";;

	esac
	((i++))
done
