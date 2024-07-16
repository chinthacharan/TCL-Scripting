set color(rose) red
set color(sky) blue
set color(medal) gold
set color(leaves) green
set color(blackboard) black

#Accessing the Array Elements
foreach ele [array names color] {
    puts "$ele is => $color($ele)"
}

#output: rose is => red
#sky is => blue
#medal is => gold
#leaves is => green
#blackboard is => black