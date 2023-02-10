#!/bin/bash
# Author: Thierry
# Date: Fev, 02-2023

# Apache installations steps

echo "Install the Apache package for Centos/Redhat  systems"

yum install httpd -y

if [ $? -eq 0 ]
        then
        echo "Install of Apache done"
        else
        echo "check the problem and restart the installation"
		exit
fi

echo "--------------------------------------------------------"

echo "Check the daemon or service status"

systemctl status httpd

if [ $? -eq 0 ]
        then
        echo "status httpd done"
        else
		echo "check the problem and restart"
fi

echo "--------------------------------------------------------"

echo "Start and enable the daemon"

systemctl start httpd

if [ $? -eq 0 ]
        then
        echo "systemctl start httpd done"
        else
        echo "check the problem and restart"
		exit
fi

systemctl enable httpd

if [ $? -eq 0 ]
        then
        echo "systemctl enable httpd done"
        else
        echo "check the problem and restart"
		exit
fi

echo "--------------------------------------------------------"

echo "Check the daemon or service status"

systemctl status httpd

if [ $? -eq 0 ]
        then
        echo "status httpd done"
        else
		echo "check the problem and restart"
		exit
fi

echo "--------------------------------------------------------"

echo "add-port=80"

firewall-cmd --permanent --add-port=80/tcp

firewall-cmd --reload

if [ $? -eq 0 ]
        then
        echo "firewall reload done "
        else
        echo "check the problem and restart"
		exit
fi

echo "--------------------------------------------------------"

echo "Get the IP address"

ifconfig

if [ $? -eq 0 ]
        then
        echo "Get the IP address "
        else
        echo "check the problem and restart"
		exit
fi

sleep 2

echo "-----------------------------------------------------------------------------"
echo "Installation done successfully. Please get your IP and type in your browwser"
echo "-----------------------------------------------------------------------------"