#!/bin/bash
# Install dependencies (required by the script)
sudo apt update && sudo apt install -y curl ca-certificates tar
# Install Docker Engine
sudo curl -fsSL https://get.docker.com | sh
# Add the docker group and add the current user to it
sudo usermod -aG docker $(whoami)
exec $SHELL -l
