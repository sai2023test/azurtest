#!/bin/bash

# Update existing list of packages
sudo apt-get update

# Install a few prerequisite packages which let apt use packages over HTTPS
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add the GPG key for the official Docker repository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package database with the Docker packages from the newly added repo
sudo apt-get update

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo
sudo apt-get install -y docker-ce

# Install Helm
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install -y apt-transport-https --no-install-recommends
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install -y helm
