# raspberrypi-zero-motion-docker

## Intro
This repo aims to provide a way to containerize `motion` (https://motion-project.github.io/) in raspberry pi zero, including
- raspberry pi zero
- raspberry pi zero W

## Build
sudo docker build . -t pi-zero-motion-image

```
pi@raspberrypi:~/raspberrypi-zero-motion-docker $ sudo docker image ls
REPOSITORY                 TAG       IMAGE ID       CREATED          SIZE
pi-zero-motion-image       latest    785f5fde68b8   15 seconds ago   527MB
```

## Run
sudo ./run.sh

## Context
- `arm/v5` from `debian:stable` is for compliance purpose as raspberry pi zero v1.3 uses ARMv6 instruction set architecture
- Instead of using `raspbian:stretch`, `debian:stable` contains relatively new `motion` distribution version that supports video capture as output
