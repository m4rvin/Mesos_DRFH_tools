#!/bin/bash

if [ "$#" -lt 2 ]; then
  	echo ">>> WARNING: You must specify the number of frameworks' files to read and the seconds the simulation has run."
	exit
fi

if [ "$#" -gt 3 ]; then
	echo ">>> ERROR: too many arguments"
	exit
fi

if [ "$#" -ne 3 ]; then
	echo ">>> INFO: using ../OUTPUT/ as path for .dat files."
	FILES_PATH="../OUTPUT/"
else 
	FILES_PATH=$3
fi

gnuplot -e "path='$FILES_PATH'" plot_clusterStats.plt 

gnuplot -e "path='$FILES_PATH'" plot_clusterPoolStats.plt

gnuplot -e "numFrameworks=$1" -e "allocationCycles=$2" -e "path='$FILES_PATH'" plot_frameworksStats.plt 


