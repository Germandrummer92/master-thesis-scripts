#!/bin/bash
tail -n 33 testlog > evalResults/testlog$1
tail -n 33 testlogBothFilters > evalResults/testlogBothFilters$1
tail -n 33 testlogFilter > evalResults/testlogFilter$1
tail -n 33 testlogVariance > evalResults/testlogVariance$1
tail -n 9 testlogFRIT > evalResults/testlogFRIT$1
tail -n 9 testlogDEEN > evalResults/testlogDEEN$1

length/prepBase.sh testlog
length/calcStat.sh base$1
length/prepBase.sh testlogDEEN
length/calcStat.sh DEEN$1
length/prepNoBase.sh testlogFilter
length/calcStatNoBase.sh Filter$1
length/prepNoBase.sh testlogVariance 
length/calcStatNoBase.sh Variance$1
length/prepNoBase.sh testlogFRIT
length/calcStatNoBase.sh FRIT$1
length/prepNoBase.sh testlogBothFilters
length/calcStatNoBase.sh BothFilters$1
