#!/bin/bash
FILE=length/testLength

MAXLENGTH=$(grep '[0-9]*' $FILE | sort -n | tail -n 1)

perl -i -0777 -pe 's/ar\nar/correct/g' $FILE
perl -i -0777 -pe 's/de\nde/correct/g' $FILE
perl -i -0777 -pe 's/es\nes/correct/g' $FILE
perl -i -0777 -pe 's/fr\nfr/correct/g' $FILE
perl -i -0777 -pe 's/it\nit/correct/g' $FILE
perl -i -0777 -pe 's/pl\npl/correct/g' $FILE
perl -i -0777 -pe 's/pt\npt/correct/g' $FILE
perl -i -0777 -pe 's/ru\nru/correct/g' $FILE
perl -i -0777 -pe 's/tr\ntr/correct/g' $FILE
perl -i -0777 -pe 's/en\nen/correct/g' $FILE
perl -i -0777 -pe 's/[a-z]{2}\n[a-z]{2}/false/g' $FILE
perl -i -0777 -pe 's/\n\n/\n/g' $FILE

for ((i = 1; i <= $MAXLENGTH; i++)) do
	correct=$(grep -A 1 ^${i}\$ $FILE | grep correct | wc -l )
	false=$(grep -A 1 ^${i}\$ $FILE| grep false | wc -l )
	let "total = correct + false"
	if [ $total -ne '0' ] ; then
		perc=$(echo print ${correct} / ${total}. | perl) 
		echo "Length: $i, Correct: $correct, FALSE: $false, PERCENTAGE CORRECT: $perc" >> length/testLengthStatistic$1
	fi
done
