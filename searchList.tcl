#Searching the index of an element
puts [lsearch $testList "a"]
#positive or 0 value if the value exists
#negative for non-existing elements
set lst { apple app ban banna c carrot }
puts [ lsearch $lst "app" ]
#output: 1
puts [ lsearch $lst "ap" ]
#output: -1
