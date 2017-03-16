set terminal post eps color size 7.5,3.9 enhanced font "Arial,24"

print "Going to build charts for the cluster stats..."

set output 'clusterStats.eps'
set termoption dash
plot  '../OUTPUT/clusterStats.dat' using 0:1  with linespoints title "cpu utilization", '../OUTPUT/clusterStats.dat' using 0:2  with linespoints title "mem utilization"
