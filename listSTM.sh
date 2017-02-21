#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
	length=$(echo $line | cut -d' ' -f2)
	file=$(echo $line | cut -d' ' -f1 | cut -d'.' -f1)
	folder=$(echo $file | cut -d'/' -f2)
	date1=$(echo $folder | cut -d'_' -f2)
	date2=$(echo $folder | cut -d'_' -f3)
	date3=$(echo $folder | cut -d'_' -f4)
	date="${date1}${date2}${date3}"
	spk=$(echo $folder | cut -d'_' -f1)
	number=$(echo $file | cut -d'/' -f3)
	lid=$(echo $file | cut -d'/' -f1)
	#echo $number
	#echo $date $spk
	echo $file 1 ${lid}_${spk} 0.000 $length "BLABLA" > $1/${number}.stm 
done < "$1/list.sample"	
