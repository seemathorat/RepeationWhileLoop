#!/bin/bash -x
sumOfdigit ( )
{
	sum=0
	while (( $number -ne 0 ))
	do
		sum=$(($sum+$number%10))
		number=$(($number/10))	
	done
}

main ( )
{
	read -p "please enter the number You want to check " number
	savedNumber=$number
	while(( $number -gt 9 ))
	do 
		sumOfdigit
	done

	if [ $number -eq 1 ]
	then
		echo "$savedNumber is magic number"
	else
		echo "$savedNumber is not magic number"
	fi
}
main
