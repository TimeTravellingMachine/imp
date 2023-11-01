#!/bin/bash
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip &&
unzip ngrok.zip &&
chmod +x ngrok && pip install udocker
./ngrok authtoken 2WKx5P2XbH0xSOIpBhSa5pP8HL9_5B9CGxeS3wWX99Ltyd7yz &&
./ngrok http 6080 & udocker --allow-root run -p 6080:80 dorowu/ubuntu-desktop-lxde-vnc
