#!/bin/bash

tail -n 33 testlogLectureData > evalResults/testlogLDDe$1
tail -n 33 testlogLectureDataEn > evalResults/testlogLDEn$1
tail -n 33 testlogLectureDataFr > evalResults/testlogLDFr$1

length/prepNoBase.sh testlogLectureData
length/calcStatNoBase.sh LDDe$1
length/prepBase.sh testlogLectureDataEn
length/calcStatNoBase.sh LDEn$1
length/prepNoBase.sh testlogLectureDataFr
length/calcStatNoBase.sh LDFr$1
