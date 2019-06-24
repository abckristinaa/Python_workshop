#! /bin/bash

GCD () # int1 int2
{
	let "r = Big % Small"
	if [[ $r > 0 ]]; then
		Big=$Small; Small=$r
		GCD $Big $Small
	else
		echo "GCD is $Small"
	fi
}


while [[ True ]]; do 
	read arg1 arg2

if [[ (-z $arg1) || (-z $arg2) ]]; then
	echo "bye"
	exit
fi

if [[ $arg1 == $arg2 ]]; then
	echo "GCD is $arg1"
else
	if [[ $arg1 > $arg2 ]]; then
	Big=$arg1; Small=$arg2; else
	Big=$arg2; Small=$arg1; fi

GCD $Big $Small
fi
done

