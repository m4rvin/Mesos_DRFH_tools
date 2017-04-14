clear
reset
set terminal post eps color size 7.5,3.9 enhanced font "Arial,24"
set termoption dash

set key left top
# Make the x axis labels easier to read.
# set xtics rotate out
set xtics nomirror rotate by -25 scale 0 font ",20"
# Select histogram data
set style data histogram
# Give the bars a plain fill pattern, and draw a solid line around them.
set style fill solid border

set output 'U85confrontoMetriche.eps'

# set title "Title"
set ylabel "% refused offers"

set grid y
# set auto y

set style histogram clustered
plot for [COL=2:9] 'U85Compare.dat' using COL:xticlabels(1) title columnheader
