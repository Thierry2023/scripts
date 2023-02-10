#!/bin/bash

# Author: Thierry
# Date: Fev, 09-2023
# This script is for take the inputs for a user and display his information in a sentence

echo "What is your name ?"
read na

if [ -z ${na} ]
	then
	echo "Please enter your name"
fi

echo "What year were you born ?"
read y

if [ -z ${y} ]
	then
	echo "Please enter your year of birth"
fi

echo "What city are you from ?"
read city

if [ -z ${city} ]
	then
	echo "Please enter your city"
fi

echo "What brought you to the store today? "
read store

if [ -z ${store} ]
	then
	echo "Please enter what brought you to the store today"
fi

echo "Helle ${na}, you were born in ${y}, you live in ${city} and the reason of coming here is: ${store}"