set terminal post eps color size 7.5,3.9 enhanced font "Arial,24"

print "Going to build charts for the cluster pool stats..."

set output './'.path.'/clusterFullServers.eps'
set termoption dash
plot  './'.path.'/clusterPoolStats.dat' using 0:1  with linespoints title "full servers"

set output './'.path.'/clusterFullServersAggregated.eps'
set termoption dash
plot  './'.path.'/clusterPoolStats.dat' using 0:2  with linespoints title "aggregated full servers"
