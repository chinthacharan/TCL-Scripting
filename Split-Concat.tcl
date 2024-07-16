set mlst [split "/home/msg/Documents/TCL" "/"]
puts $mlst
#output :home msg Documents TCL
set lst [list 0 1 2 3 4 5 6 7]
puts $lst
#output :0 1 2 3 4 5 6 7
puts [lindex $lst 3]
#output :3
set lst2 [concat $lst { 8 9 10 }]
puts $lst2
#output :0 1 2 3 4 5 6 7 8 9 10
lappend lst2 11 12 13 14
puts $lst2
#output :0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
lset lst2 end 15
puts $lst2
#output :0 1 2 3 4 5 6 7 8 9 10 11 12 13 15
set len [llength $lst2]
puts "\n === length of lst2 = $len"
#output : === length of lst2 = 15