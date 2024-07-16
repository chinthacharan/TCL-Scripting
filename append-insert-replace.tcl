set testList "a b c"
#Accessing the elements by index
puts [lindex $testList 0]
#output :a
puts [lindex $testList end]
#output :c
lappend testList "d"
puts $testList
#output :a b c d
set testList [linsert $testList 0 "e"]
puts $testList
#output :e a b c d
set testList [lreplace $testList 2 2 "k"]
puts $testList
#output :e a k c d
set testList [lreplace $testList end end "i"]
#output :e a k c i