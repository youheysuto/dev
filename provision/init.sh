#!/bin/bash

sudo apt-get -y update
sudo apt-get dist-upgrade
sudo apt-get install -y \
	apt-transport-https
	ca-certificates \
	curl \
	software-properties-common

	# add official docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

# add repo
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable edge test"

# install docker
sudo apt-get update
sudo apt-get install -y docker-ce

# add user to docker group
sudo usermod -aG docker $USER

# add docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

