#!/bin/bash

if [ "$#" -ne 1 ]; then
  	echo ">>> WARNING: You must specify the path where to move plots."
	exit
fi
mv *.eps "$1"
