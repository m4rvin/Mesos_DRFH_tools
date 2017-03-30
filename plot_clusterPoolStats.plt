set terminal post eps color size 7.5,3.9 enhanced font "Arial,24"

print "Going to build charts for the cluster pool stats..."

set output 'clusterPoolStats.eps'
set termoption dash
plot  '../OUTPUT/clusterPoolStats.dat' using 0:1  with linespoints title "non allocatable servers"

set output 'clusterPoolStatsAggregated.eps'
set termoption dash
plot  '../OUTPUT/clusterPoolStats.dat' using 0:2  with linespoints title "aggregated non allocatable servers"
