#!/bin/bash
FILE=$1
grep "Length of sample" -A 2 $FILE > length/testLength
sed -i "s/Should have been //g" length/testLength
sed -i "s/Classified as //g" length/testLength
sed -i "s/Length of sample: //g" length/testLength
sed -i "s/--//g" length/testLength
sed -i 's/Got: //g' length/testLength
sed -i 's/should Have been: //g' length/testLength
sed -i 's/, /\'$'\n/g' length/testLength
sed -i 's/-//g' length/testLength
