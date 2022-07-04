# raspberrypi-zero-motion-docker

## Intro
This repo aims to provide a way to containerize `motion` (https://motion-project.github.io/) in raspberry pi zero, including
- raspberry pi zero
- raspberry pi zero W

## Build
sudo docker build . -t pi-zero-motion-image

## run
sudo ./run.sh

## Context
- `arm/v5` from `debian:stable` is for compliance purpose as raspberry pi zero v1.3 uses ARMv6 instruction set architecture
- Instead of using `raspbian:stretch`, `debian:stable` contains relatively new `motion` distribution version that supports video capture as output
