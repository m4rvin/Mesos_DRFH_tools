#!/bin/bash

if [ "$#" -lt 3 ]; then
  	echo ">>> WARNING: You must specify the number of frameworks' files to read, the seconds the simulation has run, and the allocation interval (in seconds)."
	exit
fi

if [ "$#" -gt 4 ]; then
	echo ">>> ERROR: too many arguments"
	exit
fi

if [ "$#" -ne 4 ]; then
	echo ">>> INFO: using ../OUTPUT/ as path for .dat files."
	FILES_PATH="../OUTPUT/"
else 
	FILES_PATH=$4
fi
z=$(($2/$3))
ALLOCATION_CYCLES=$z
echo ">>> INFO: allocation cycle considered is $ALLOCATION_CYCLES"

gnuplot -e "path='$FILES_PATH'" plot_clusterStats.plt 

gnuplot -e "path='$FILES_PATH'" plot_clusterPoolStats.plt

gnuplot -e "numFrameworks=$1" -e "allocationCycles=$ALLOCATION_CYCLES" -e "path='$FILES_PATH'" plot_frameworksStats.plt 


