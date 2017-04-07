set terminal post eps color size 7.5,3.9 enhanced font "Arial,24"

print "Going to build charts for ".numFrameworks." frameworks..."

set termoption dash


do  for [i=1:numFrameworks] {

	stats './'.path.'/framework-'.i.'.dat' using (1) name "COL" nooutput
	#print COL_records
	
	set autoscale
	set xrange [1:]

	#set output './'.path.'/singlePointOffers_framework-'.i.'.eps'
	#plot './'.path.'/framework-'.i.'.dat' using 1:2  with linespoints title "received offers", './'.path.'/framework-'.i.'.dat' using 1:3  with linespoints title "declined offers", './'.path.'/framework-'.i.'.dat' using 1:4  with linespoints title "accepted offers", './'.path.'/framework-'.i.'.dat' using 1:5  with linespoints title "unused offers"

	set output './'.path.'/totalOffers_framework-'.i.'.eps'
	plot  './'.path.'/framework-'.i.'.dat' using 1:6  with linespoints title "total declined offers", './'.path.'/framework-'.i.'.dat' using 1:7  with linespoints title "total accepted offers", './'.path.'/framework-'.i.'.dat' using 1:8  with linespoints title "total unused offers", './'.path.'/framework-'.i.'.dat' using 1:9  with linespoints title "total received offers"

	set output './'.path.'/perOfferCycleTasks_framework-'.i.'.eps'
	plot  './'.path.'/framework-'.i.'.dat' using 1:10  with linespoints title "launched tasks", './'.path.'/framework-'.i.'.dat' using 1:11  with linespoints title "not launched tasks"

	#set output './'.path.'/aggregatedTasks_framework-'.i.'.eps'
	#plot  './'.path.'/framework-'.i.'.dat' using 1:12 with linespoints title "total launched-tasks", './'.path.'/framework-'.i.'.dat' using 1:13  with linespoints title "aggregated not-launched-tasks"
	
	set output './'.path.'/totalTasksLaunched_framework-'.i.'.eps'
	plot  './'.path.'/framework-'.i.'.dat' using 1:12 with linespoints title "total launched-tasks"

	set output './'.path.'/meanTasksQueueWaitingTime_framework-'.i.'.eps'
	plot  './'.path.'/framework-'.i.'.dat' using 1:14 with linespoints title "mean tasks queue waiting time"

	set output './'.path.'/cpusReceived_VS_Unused_framework-'.i.'.eps'
	plot  './'.path.'/framework-'.i.'.dat' using 1:15 with linespoints title "cpus received", './'.path.'/framework-'.i.'.dat' using 1:19 with linespoints title "cpus unused"
	
	set output './'.path.'/totalCpusReceived_VS_Unused_framework-'.i.'.eps'
	plot  './'.path.'/framework-'.i.'.dat' using 1:17 with linespoints title "total cpus received", './'.path.'/framework-'.i.'.dat' using 1:21 with linespoints title "total cpus unused"

	set output './'.path.'/memReceived_VS_Unused_framework-'.i.'.eps'
	plot  './'.path.'/framework-'.i.'.dat' using 1:16 with linespoints title "mem received", './'.path.'/framework-'.i.'.dat' using 1:20 with linespoints title "mem unused"

	set output './'.path.'/totalMemReceived_VS_Unused_framework-'.i.'.eps'
	plot  './'.path.'/framework-'.i.'.dat' using 1:18 with linespoints title "total mem received", './'.path.'/framework-'.i.'.dat' using 1:22 with linespoints title "total mem unused"

	set yrange [0.5:1.5]
	set boxwidth 1
	set xrange [1:allocationCycles]
	set output './'.path.'/allocationRunReceived_framework-'.i.'.eps'
		plot './'.path.'/framework-'.i.'.dat' using 1:(1)  with boxes fs solid 1 title "allocation run received"
}

