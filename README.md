# Docker & Portainer Setup 🐳🚀 #Tested on Debian

This repository provides an automated setup for Docker, Portainer, and the option to deploy various Docker containers interactively. Use the scripts here to streamline your Docker environment setup and container management.

## 📝 Repository Structure

- **`setup/setup_docker_portainer.sh`**: Installs Docker, sets up Portainer, and configures a persistent storage volume for Portainer.
- **`docker_containers.sh`**: A single interactive script allowing you to choose and run specific Docker containers.

### Available Containers
In `docker_containers.sh`, you can choose from the following containers:

- **Debian**: A stable and versatile Linux distribution often used as a base image.
- **Parrot Security**: A security-focused distribution with tools for ethical hacking and penetration testing.
- **Kali Rolling**: A rolling release of Kali Linux, known for its penetration testing and security auditing tools.
- **Alpine**: A lightweight Linux distribution ideal for minimal setups and small Docker images.
  
## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/docker-portainer-setup.git
cd docker-portainer-setup
#To start Portainer: Navigate to http://localhost:9000 in your browser to manage Docker resources with Portainer.
#To run a container: Follow the prompts in docker_containers.sh to select and run your desired container.
