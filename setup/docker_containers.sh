#!/bin/bash

echo "Choose a Docker container to set up:"
echo "1) Debian"
echo "2) Parrot Security"
echo "3) Kali Rolling"
echo "4) Alpine"
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
    echo "🐉 Pulling and running Kali Rolling container..."
    sudo docker pull kalilinux/kali-rolling
    sudo docker run -it --name kali-rolling kalilinux/kali-rolling
    ;;
  4)
    echo "⛰️ Pulling and running Alpine container..."
    sudo docker pull alpine:latest
    sudo docker run -it --name alpine alpine:latest
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

#Make the script executable (if not already done):
#bash
#chmod +x docker_containers.sh

#Execute the script:
#bash
#sudo bash docker_containers.sh
