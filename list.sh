#!/bin/bash
LENGTH=52
SPEAKER="woergoetter_15_07_2016"
LANGUAGE="en"
for ((i=1; i <= $LENGTH; i++ ))
do
	real=$(sox $i.wav -n stat 2>&1 | sed -n 's#^Length (seconds):[^0-9]*\([0-9.]*\)$#\1#p')	
	echo "$LANGUAGE/$SPEAKER/$i.wav $real"
done
#after: :%s/ \n/ /g
