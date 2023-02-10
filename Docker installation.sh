#!/bin/bash
# Author: Thierry
# Date: Fev, 02-2023

# Docker installations steps

echo "Uninstall old versions"

yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine -y

if [ $? -eq 0 ]
        then
        echo "Uninstall old versions done"
        else
        echo "check the problem and restart the installation"
		exit
fi

echo "--------------------------------------------------------"

echo "Set up of the repository"

sleep 2

sudo yum install -y yum-utils

if [ $? -eq 0 ]
        then
        echo "yum-utils done"
        else
		echo "check the problem and restart"
		exit
fi

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

if [ $? -eq 0 ]
        then
        echo "Set up the repository done"
        else
		echo "check the problem and restart"
		exit
fi

echo "--------------------------------------------------------"

echo "installation of the docker engine"

sleep 2

yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

if [ $? -eq 0 ]
        then
        echo "installation of the docker engine done"
        else
        echo "check the problem and restart"
		exit
fi

echo "--------------------------------------------------------"

echo "start of docker"

sleep 2

sudo systemctl start docker

if [ $? -eq 0 ]
        then
        echo "start of docker done "
        else
        echo "check the problem and restart"
		exit
fi

echo "--------------------------------------------------------"

echo "Docker Engine installation"

sleep 2

sudo docker run hello-world

if [ $? -eq 0 ]
        then
        echo "Docker Engine installation is successful by running the hello-world image done "
        else
        echo "check the problem and restart"
		exit
fi

echo "-------------------------------"
echo "Installation done successfully"
echo "-------------------------------"