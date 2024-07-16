set b [list a b {c d e} {f {g h}}]
puts "Treated as a list: $b\n"
#output :Treated as a list: a b {c d e} {f {g h}}
set b [split $b]
puts "Transformed by split: $b\n"
#output :Transformed by split: a b \{c d e\} \{f \{g h\}\}
set a [concat a b {c d e} {f {g h}}]
puts "Concatenated: $a\n"
#output :Concatenated: a b c d e f {g h}
lappend a {ij k lm}
puts "After lappending: $a\n"
#output :After lappending: a b c d e f {g h} {ij k lm}
set b [linsert $a 3 "1 2 3"]
puts "after linsert at position 3: $b\n"
#output :after linsert at position 3: a b c {1 2 3} d e f {g h} {ij k lm}
set b [lreplace $b 3 5 "AA" "BB"]
puts "After lreplacing 3 positions with 2 values at position 3: $b\n"
#output :After lreplacing 3 positions with 2 values at position 3: a b c AA BB f {g h} {ij k lm}