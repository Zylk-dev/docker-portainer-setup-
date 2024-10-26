#!/bin/bash

echo "Choose a Docker container to set up:"
echo "1) Debian"
echo "2) Parrot Security"
echo "3) Alpine (Instance 1)"
echo "4) Alpine (Instance 2)"
echo "5) Exit"

read -p "Enter the number of your choice: " choice

case $choice in
  1)
    echo "🐧 Pulling and running Debian container..."
    sudo docker pull debian:latest
    sudo docker run -it --name debian-base debian:latest
    ;;
  2)
    echo "🎭 Pulling and running Parrot Security container..."
    sudo docker pull parrotsec/core
    sudo docker run -it --name parrot-env parrotsec/core
    ;;
  3)
    echo "⛰️ Pulling and running Alpine container 1..."
    sudo docker pull alpine:latest
    sudo docker run -it --name alpine-lite1 alpine:latest
    ;;
  4)
    echo "⛰️ Pulling and running Alpine container 2..."
    sudo docker pull alpine:latest
    sudo docker run -it --name alpine-lite2 alpine:latest
    ;;
  5)
    echo "Exiting setup."
    exit 0
    ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac
