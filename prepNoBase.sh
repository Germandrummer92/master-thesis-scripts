#!/bin/bash
FILE=$1
grep "Length of sample" -B 2 $FILE > length/testLength
sed -i "s/Should have been: //g" length/testLength
sed -i "s/Overall we have classified as: //g" length/testLength
sed -i "s/Length of sample: //g" length/testLength
sed -i "s/--//g" length/testLength
sed -i "s/Should Eq: //g" length/testLength
