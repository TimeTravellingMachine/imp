#!/bin/bash
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip &&
unzip ngrok.zip &&
chmod +x ngrok && pip install udocker
./ngrok authtoken 2WKx5P2XbH0xSOIpBhSa5pP8HL9_5B9CGxeS3wWX99Ltyd7yz &&
./ngrok tcp 3388 & udocker --allow-root pull danielguerra/ubuntu-xrdp &
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
udocker --allow-root run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:kali
