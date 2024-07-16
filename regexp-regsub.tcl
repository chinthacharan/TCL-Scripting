#find and replace
set myStr "A quick brown fox jumped over a brown lazy dog"
#use regexp to pattern match
 if { [regexp -nocase "brown" $myStr] } {
    puts "Match found in \"$mystr\" and replacing"
    #use regsub for substitution
    regsub -nocase -all "brown" $mystr "REPLACED" mystr
    #-all indicates to replace all the occurances not the first one
    puts "now it is ==>> $mystr"
 }

