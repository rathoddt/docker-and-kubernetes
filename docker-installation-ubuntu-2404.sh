#!/usr/bin/env bash

set -e

echo "Starting Docker installation on Ubuntu 24.04..."

# Non-interactive mode
export DEBIAN_FRONTEND=noninteractive

echo "Removing old Docker-related packages (if any)..."
sudo apt remove -y $(dpkg --get-selections docker.io docker-compose docker-compose-v2 docker-doc podman-docker containerd runc | cut -f1) || true

echo "Updating package index..."
sudo apt update -y

echo "Installing prerequisite packages..."
sudo apt install -y ca-certificates curl

echo "Creating keyrings directory..."
sudo install -m 0755 -d /etc/apt/keyrings

echo "Downloading Docker GPG key..."
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

echo "Setting permissions for GPG key..."
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "Adding Docker repository..."
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

echo "Detected OS version:"
cat /etc/os-release

echo "Updating package index with Docker repo..."
sudo apt update -y

echo "Installing Docker packages..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Starting Docker service..."
sudo systemctl start docker

echo "Checking Docker status..."
sudo systemctl status docker --no-pager

echo "Running Docker test container..."
sudo docker run hello-world

echo "Creating docker group if not exists..."
sudo groupadd docker 2>/dev/null || true

echo "Adding current user to docker group..."
sudo usermod -aG docker $USER

echo "Enabling Docker services at boot..."
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

echo "Docker installation completed."

echo ""
echo "IMPORTANT:"
echo "Log out and log back in to apply docker group membership."
echo "Then run:"
echo "docker run hello-world"