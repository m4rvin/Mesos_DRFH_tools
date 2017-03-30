set terminal post eps color size 7.5,3.9 enhanced font "Arial,24"

print "Going to build charts for ".numFrameworks." frameworks..."

set termoption dash


do  for [i=1:numFrameworks] {

	stats '../OUTPUT/framework-'.i.'.dat' using (1) name "COL" nooutput
	#print COL_records
	
	set autoscale
	set xrange [1:]

	set output 'singlePointOffers_framework-'.i.'.eps'
	plot '../OUTPUT/framework-'.i.'.dat' using 1:2  with linespoints title "received offers", '../OUTPUT/framework-'.i.'.dat' using 1:3  with linespoints title "declined offers", '../OUTPUT/framework-'.i.'.dat' using 1:4  with linespoints title "accepted offers", '../OUTPUT/framework-'.i.'.dat' using 1:5  with linespoints title "unused offers"

	set output 'totalOffers_framework-'.i.'.eps'
	plot  '../OUTPUT/framework-'.i.'.dat' using 1:6  with linespoints title "total declined offers", '../OUTPUT/framework-'.i.'.dat' using 1:7  with linespoints title "total accepted offers", '../OUTPUT/framework-'.i.'.dat' using 1:8  with linespoints title "total unused offers", '../OUTPUT/framework-'.i.'.dat' using 1:9  with linespoints title "total received offers"

	set output 'perOfferCycleTasks_framework-'.i.'.eps'
	plot  '../OUTPUT/framework-'.i.'.dat' using 1:10  with linespoints title "launched tasks", '../OUTPUT/framework-'.i.'.dat' using 1:11  with linespoints title "not launched tasks"

	set output 'aggregatedTasks_framework-'.i.'.eps'
	plot  '../OUTPUT/framework-'.i.'.dat' using 1:12 with linespoints title "total launched-tasks", '../OUTPUT/framework-'.i.'.dat' using 1:13  with linespoints title "aggregated not-launched-tasks"


	set yrange [0.5:1.5]
	set boxwidth 1
	set xrange [1:allocationCycles]
	set output 'allocationRunReceived_framework-'.i.'.eps'
		plot '../OUTPUT/framework-'.i.'.dat' using 1:(1)  with boxes fs solid 1 title "allocation run received"
}

