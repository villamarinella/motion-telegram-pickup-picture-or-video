#!/bin/bash
pkill motion 
sleep 2
raspistill -o t1.jpg -w 640 -h 480 -rot 180 -n
convert -box black -fill white -font helvetica -pointsize 24 -draw \
"text 10,30 \"`date "+%d.%m.%Y %H:%M:%S" -r t1.jpg `\"" t1.jpg t2.jpg
sleep 2
sudo modprobe bcm2835-v4l2
./go.sh
exit 0
