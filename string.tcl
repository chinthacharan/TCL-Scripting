set statement " Laptop is hot "
puts $statement                  
#output: Laptop is hot
#There is a space before Laptop and after hot but can't see the last space
set statement [string trim $statement]
puts $statement
#output:Laptop is hot
#spacing is trimmed
puts [string length $statement]
#output:13
puts [string index $statement 4]
#output:o
puts [string index $statement end]
#output:t
puts [string first "is" $statement]
#output:7
puts [string last "is" $statement]
#output:7
puts [string range $statement 7 end]
#output:is hot
puts [string replace $statement 10 end "cool"]
#output:Laptop is cool
puts [string match "*hot" $statement]
#output:1