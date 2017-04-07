set terminal post eps color size 7.5,3.9 enhanced font "Arial,24"

print "Going to build charts for the cluster stats..."

set output './'.path.'/clusterStats.eps'
set termoption dash
plot  './'.path.'/clusterStats.dat' using 0:1  with linespoints title "cpu utilization", './'.path.'/clusterStats.dat' using 0:2  with linespoints title "mem utilization"
