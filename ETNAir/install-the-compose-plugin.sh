#!/bin/bash

# Add Docker's official GPG key:
echo '/!!!\\  -   STEP ONE RUNNING'

echo '/!!\\  -  apt-get update RUN'
sudo apt-get update
echo '/!\\  -  apt-get update FINISH'

echo '/!!\\  -  apt-get install ca-certificates curl RUN'
sudo apt-get install ca-certificates curl
echo '/!\\  -  apt-get install ca-certificates curl FINISH'

echo '/!!\\  -  install -m 0755 -d /etc/apt/keyrings RUN'
sudo install -m 0755 -d /etc/apt/keyrings
echo '/!\\  -  install -m 0755 -d /etc/apt/keyrings FINISH'

echo '/!!\\  -  curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc RUN'
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
echo '/!\\  -  curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc FINISH'

echo '/!!\\  -  chmod a+r /etc/apt/keyrings/docker.asc RUN'
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo '/!\\  -  chmod a+r /etc/apt/keyrings/docker.asc FINISH'



echo '/!!!\\  -   STEP TWO RUNNING'

# Add the repository to Apt sources:
echo '/!!\\  -  Add the repository to Apt sources RUN'

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo '/!\\  -  Add the repository to Apt sources FINISH'

echo '/!!\\  -  apt-get update RUN'
sudo apt-get update
echo '/!\\  -  apt-get update FINISH'

# install the latest version
echo '/!!\\  -  apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin RUN'
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo '/!\\  -  apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin FINISH'

# Verify that the installation is successful
echo '/!!\\  -  docker run hello-world RUN'
sudo docker run hello-world
echo '/!\\  -  docker run hello-world FINISH'

# Update the package index, and install the latest version of Docker Compose
echo '/!!!\\  -   TREE TWO RUNNING'
# For Ubuntu and Debian

echo '/!!\\  -  apt-get update RUN'
sudo apt-get update
echo '/!\\  -  apt-get update FINISH'

echo '/!!\\  -  apt-get install docker-compose-plugin RUN'
sudo dpkg --configure -a
sudo apt-get install docker-compose-plugin
echo '/!\\  -  apt-get install docker-compose-plugin FINISH'

# Verify that Docker Compose is installed correctly by checking the version

echo '/!!!\\  -   FOUR TWO RUNNING'
echo '/!!\\  -  docker compose version'
docker compose version