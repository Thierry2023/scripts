#!/bin/bash
# Author: Thierry
# Date: Fev, 09-2023

# Script for delete the users

for i in u6bt u7bt u8bt u9bt;
	do
		userdel ${i}
		echo "user $i successfully deleted"
		sleep 2
	done