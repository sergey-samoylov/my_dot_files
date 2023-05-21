#!/usr/bin/env bash

clear
cd ~/Videos
source_file=$(ls | fzf)
read -p "Please, enter output file name (ex: my_audio.mp3): " output_file
read -p "start time (ex: 00:01:00): " start_time
read -p "end time (ex: 00:03:00): " end_time


ffmpeg -ss ${start_time} -i ${source_file} -to ${end_time} -c copy -copyts ${output_file}
