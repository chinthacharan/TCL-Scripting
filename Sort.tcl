set lst2 [list 0 1 2 3 4 5 6 7 8 9 10 11 12 13 15]
set lst2 [lsort -ascii $lst2]
puts $lst2
#output :0 1 10 11 12 13 15 2 3 4 5 6 7 8 9
set lst2 [lsort -integer $lst2]
puts $lst2
#output :0 1 2 3 4 5 6 7 8 9 10 11 12 13 15
set lst2 [lsort -integer -decreasing $lst2]
puts $lst2
#output :15 13 12 11 10 9 8 7 6 5 4 3 2 1 0
set lst2 [lsort -dictionary $lst2]
puts $lst2
#output :0 1 2 3 4 5 6 7 8 9 10 11 12 13 15
set rlst "0.01 0.002 0.2 0.4 0.5 0.3 0.0015 9.345 77.45 2.387"
set rlst [lsort -real $rlst]
puts $rlst
#output :0.0015 0.002 0.01 0.2 0.3 0.4 0.5 2.387 9.345 77.45
set rlst [lsort -real -decreasing $rlst]
puts $rlst
#output :77.45 9.345 2.387 0.5 0.4 0.3 0.2 0.01 0.002 0.0015