#!/bin/bash
# Author: Thierry
# Date: Fev, 09-2023

# Script for the creation of the users

for i in u6bt u7bt u8bt u9bt;
	do
		useradd ${i}
		echo "user $i successfully created"
		sleep 2
	done