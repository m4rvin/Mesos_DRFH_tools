#!/bin/bash

if [ "$#" -ne 2 ]; then
  	echo ">>> WARNING: You must specify the number of frameworks' files to read and the seconds the simulation has run."
	exit
fi

gnuplot plot_clusterStats.plt

gnuplot plot_clusterPoolStats.plt

gnuplot -e "numFrameworks=$1" -e "allocationCycles=$2" plot_frameworksStats.plt 


