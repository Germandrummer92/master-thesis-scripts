#!/bin/bash
LENGTH=$1

for ((i=1; i <= $LENGTH; i++)) 
do
	sox $i.wav $if.wav rate 16k
	rm $i.wav 
	mv $if.wav $i.wav 		
done
