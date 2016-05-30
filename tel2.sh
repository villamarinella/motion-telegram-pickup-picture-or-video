#!/bin/bash
pkill motion 
sleep 2
raspivid -t 10000 -w 640 -h 480 -rot 180 -fps 30 -o vid.h264
MP4Box -add vid.h264 vid.mp4
sleep 2
./go.sh
exit 0

