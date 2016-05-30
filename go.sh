#!/bin/bash
modprobe bcm2835-v4l2
#uv4l --driver raspicam --auto-video_nr 
LD_PRELOAD=/usr/lib/uv4l/uv4lext/armv6l/libuv4lext.so motion -c /root/motion.conf > /dev/nul
exit 0
