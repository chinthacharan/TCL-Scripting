set x "a b c"
puts "Item at Index 2 of the list {$x} is: [lindex $x 2]\n"
#output :Item at Index 2 of the list {a b c} is: c
set i 0
foreach j $x {
    puts "$j is item number $i in list x"
    incr i
}
#output :a is item number 0 in list x
#b is item number 1 in list x
#c is item number 2 in list x