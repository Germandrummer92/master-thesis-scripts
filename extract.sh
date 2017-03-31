#!/bin/bash

#en,fr,it,es,pt,pl,de
#0,1,2,6,7,16,26

ffmpeg -i $1 -map 0:0 -acodec pcm_s16le -ac 2 $1.en.wav
ffmpeg -i $1 -map 0:1 -acodec pcm_s16le -ac 2 $1.fr.wav
ffmpeg -i $1 -map 0:2 -acodec pcm_s16le -ac 2 $1.it.wav
ffmpeg -i $1 -map 0:6 -acodec pcm_s16le -ac 2 $1.es.wav
ffmpeg -i $1 -map 0:7 -acodec pcm_s16le -ac 2 $1.pt.wav
ffmpeg -i $1 -map 0:16 -acodec pcm_s16le -ac 2 $1.pl.wav
ffmpeg -i $1 -map 0:25 -acodec pcm_s16le -ac 2 $1.de.wav

