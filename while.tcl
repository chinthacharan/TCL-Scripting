set i 0
while {$i < 200} {
    incr i;
    if {$i == 100} {
        puts "i is 100";
        continue;
    } elseif {$i == 110} {
        puts "I am exiting the loop at i = $i"
        break;
    } else {
        puts "Current count of i is $i"
    }
}
