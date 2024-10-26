#!/bin/bash

# Update and upgrade system packages
echo "🔄 Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install Docker
echo "🐳 Installing Docker..."
sudo apt install docker.io -y

# Start Docker service
echo "▶️ Starting Docker service..."
sudo service docker start

# Create a Docker volume for Portainer
echo "📦 Creating Docker volume for Portainer data..."
sudo docker volume create portainer_storage

# Run Portainer container
echo "🚢 Running Portainer container..."
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_storage:/data portainer/portainer-ce
