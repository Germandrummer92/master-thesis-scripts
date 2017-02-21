#!/bin/bash
split1=114
for ((j=$split1+1; j <=$split1+59; j++))
do
	let "i = j - $split1"
	let "last = (i -1) * 30"
	let "totalSeconds = $i * 30"
	let "minutes = $totalSeconds / 60 "
	let "lastMinutes = $last / 60"
	let "lastSeconds = $last % 60"
	let "seconds = $totalSeconds % 60 "
	sox "Song Name-Track02_16kHz_normalized_part3.wav" $j.wav trim $lastMinutes:$lastSeconds $minutes:$seconds  	
done
