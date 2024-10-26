# Structure 
- `docker-portainer-setup/`
  - `README.md`
  - `setup/`
    - `setup_docker_portainer.sh`
  - `docker_containers/`
    - `run_debian.sh`
    - `run_parrot.sh`
    - `run_alpine1.sh`
    - `run_alpine2.sh`
      
# Docker & Portainer Setup 🐳🚀

This repository provides an automated setup for Docker, Portainer, and various container configurations. 
The setup script installs Docker, Portainer, and configures containers with persistent storage.

## 📝 Repository Structure

- **setup/**: Contains the main script for setting up Docker and Portainer.
- **docker_containers/**: Contains individual scripts to pull and run different Docker containers.

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/docker-portainer-setup.git
   cd docker-portainer-setup
   Run the main setup script to install Docker and Portainer:

2. sudo bash setup/setup_docker_portainer.sh
