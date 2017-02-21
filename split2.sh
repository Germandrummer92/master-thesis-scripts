#!/bin/bash
LENGTH=1714
FILE=/project/data_lectureRecordings/mon_talk_eng_2011/SS11_07012011_AlexWaibel_Germersheim/audio/Song\ Name-Track02_16kHz_normalized_part2.wav
total=117
for ((i=0; i <= $LENGTH; ))
do
	#echo "i: $i"
	for ((j=1; j <= 30; j++ ))
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
