set statement " Laptop is hot "
puts $statement
set statement [string trim $statement]
puts $statement
puts [string length $statement]
puts [string index $statement 4]
puts [string index $statement end]
puts [string first "is" $statement]
puts [string last "is" $statement]
puts [string range $statement 7 end]
puts [string replace $statement 10 end "cool"]
puts [string match "*hot" $statement]