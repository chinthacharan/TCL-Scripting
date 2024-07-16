for {set i 0} {$i < 100} {incr i 5} {
    puts "I am at count $i and going up by 5"
    after 200
    update
}

#The update command in TCL is crucial when you need to maintain responsiveness in an application
#especially during long running operations.