set    autoscale
unset log
unset label
set xtic auto
set ytic auto
set title "Density of states (DOS) of Al crystal"
set xlabel "Energy (eV)"
set ylabel "DOS"
set arrow 1 from 7.9414,0 to 7.9416,2 nohead ls 10 dt 2
plot "atom_al_p.dat" using 1:2 title 'Al p orbital' with linespoints,\
     "atom_al_s.dat" using 1:2 title 'Al s orbital' with linespoints,\
     "atom_al_tot.dat" using 1:2 title 'Al total' with linespoints
pause -1 "Hit any key to continue\n" 
