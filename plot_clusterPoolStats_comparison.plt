set terminal post eps color size 7.5,3.9 enhanced font "Arial,24"

print "Going to build charts for the cluster pool stats..."

set output './tmp/clusterPoolStatsAggregated_comparison.eps'
set termoption dash
plot  './tmp/clusterPoolStats_rand.dat' using 0:2  with linespoints title "non allocatable servers file rand", './tmp/clusterPoolStats_ff.dat' using 0:2 with linespoints title "non allocatable servers file firstfit"

