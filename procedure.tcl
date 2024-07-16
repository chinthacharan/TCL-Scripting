proc add {a b} {
    return [expr $a + $b]
}
set sum [ add 5 6 ]
puts "\n ==== $sum"

proc separator {} {
    puts "==========="
}

separator;