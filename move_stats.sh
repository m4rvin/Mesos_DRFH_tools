#!/bin/bash

if [ "$#" -ne 1 ]; then
  	echo ">>> WARNING: You must specify the path where to move stats."
	exit
fi
mv ../OUTPUT/*.dat "$1"
