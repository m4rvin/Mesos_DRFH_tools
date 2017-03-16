#!/bin/bash

if [ "$#" -ne 1 ]; then
  	echo ">>> WARNING: You must specify the number of frameworks' files to read."
	exit
fi

gnuplot plot_clusterStats.plt

gnuplot -e "numFrameworks=$1" plot_frameworksStats.plt 


