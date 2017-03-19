#! /bin/bash

FILE=$1
LANGUAGE=$2

grep $LANGUAGE $FILE | cut -d ' ' -f2 | paste -sd+ - | bc
