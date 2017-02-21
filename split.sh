#!/bin/bash
LENGTH=702
FILE=/project/data_lectureRecordings/interact25/single-speaker-wav/12_Woergoetter.wav
total=1
for ((i=0; i <= $LENGTH; ))
do
	#echo "i: $i"
	for ((j=1; j <= 30 && i <= $LENGTH; j++ ))
	do
		#echo "j: $j"
		let "start = $i"
		let "startMins = $i / 60"
		let "startSecs = $i % 60"
		#echo $start
		let "end = $start + $j"
		let "endMins = $end / 60"
		let "endSecs = $end % 60"
		#echo "END: $end"
		echo $startMins:$startSecs $endMins:$endSecs
		sox "$FILE" $total.wav trim $startMins:$startSecs 0:$j			
		let "i += j"
		let "total++"
	done
	#sox "Song Name-Track02_16kHz_normalized_part1.wav" $i.wav trim $lastMinutes:$lastSeconds $minutes:$seconds  	
done
