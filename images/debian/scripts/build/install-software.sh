#!/bin/bash
set -e

# Update package lists
sudo apt-get update

# Install common tools
sudo apt-get install -y curl wget git build-essential

# Install programming languages
sudo apt-get install -y python3 python3-pip ruby-full nodejs default-jdk

# Install Docker
sudo apt-get install -y apt-transport-https ca-certificates gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Verify installations
docker --version
docker-compose --version
python3 --version
ruby --version
node --version
javac -version
