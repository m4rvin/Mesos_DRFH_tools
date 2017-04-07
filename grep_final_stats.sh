#!/bin/bash
if [ "$#" -lt 1 ]; then
  	echo ">>> WARNING: You must specify the number of frameworks' files to read stats from."
	exit
fi

if [ "$#" -lt 2 ]; then
  	echo "->Looking in the current folder for stats files."
	folder="./"
else
	echo "->Looking in the $2 folder for stats files."
	folder=$2
fi


numFrameworks=$1


echo
i=1
while [ $i -le $numFrameworks ]; do
	echo ">>Stats for framework-$i.dat"
	#IFS=' '  read -r ARN RO OA OD OU TOD TOA TOU TOR  TL TNL TTL TTNL  < <(tail -n1 "$folder/framework-$i.dat") && echo "- allocationRunNumber = $ARN" && echo "- totalOffersDeclined = $TOD" && echo "- totalOffersAccepted = $TOA" && echo "- totalOffersUnused = $TOU" && echo "- totalOffersReceived = $TOR"
	IFS=' '  read -r ARN RO OA OD OU TOD TOA TOU TOR  TL TNL TTL TTNL TMTWT  < <(tail -n1 "$folder/framework-$i.dat") && echo "- totalOffersDeclined = $TOD" && echo "- totalOffersAccepted = $TOA" && echo "- totalOffersUnused = $TOU" && echo "- totalOffersReceived = $TOR" && echo "- totalTasksLaunched = $TTL" && echo "- totalMeanTaskWaitingTime = $TMTWT"
	let i=i+1	
	echo
done
