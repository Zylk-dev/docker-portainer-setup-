#!/bin/bash

echo "🐧 Pulling and running Debian container..."
sudo docker pull debian:latest
sudo docker run -it --name debian-base debian:latest

echo "🎭 Pulling and running Parrot Security container..."
sudo docker pull parrotsec/core
sudo docker run -it --name parrot-env parrotsec/core

echo "⛰️ Pulling and running Alpine container 1..."
sudo docker pull alpine:latest
sudo docker run -it --name alpine-lite1 alpine:latest

echo "⛰️ Pulling and running Alpine container 2..."
sudo docker pull alpine:latest
sudo docker run -it --name alpine-lite2 alpine:latest

