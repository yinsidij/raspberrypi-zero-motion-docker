#!/bin/sh

sudo modprobe bcm2835-v4l2
IMAGE_NAME=pi-zero-motion-image
WORK_DIRECTORY=`pwd`/motion

docker run -d --name pi-zero-motion-container --device=/dev/video0:/dev/video0 -v $WORK_DIRECTORY:/home/pi/motion -p 8083:8083 $IMAGE_NAME
