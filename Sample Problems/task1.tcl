#Assume a input file file_input1.txt, It has four columns Name, Delay, Trans and Load
#Task is to arrange the columns as follows: Name, Trans, Load and Delay

set fp_infile [open "file_input1.txt" r]
set file_data [read $fp_infile]
close $fp_infile

#each line in as a separate list element

set data [split $file_data "\n"]

set reordered_list {}

#loop through each row in data

foreach line $data {
    if {$line eq ""} {
        continue
    }

    #split the line into columns
    set columns [split $line " "]

    #Extract the columns: Name (0), Delay(1), Trans(2), Load (3)
    set name [lindex $columns 0]
    set delay [lindex $columns 1]
    set trans [lindex $columns 2]
    set load [lindex $columns 3]

    #Rearrange the columns as Name, Trans, Load and Delay
    #we need new list declare it outside the foreach block
    set new_line "$name $trans $load $delay"
    lappend reordered_list $new_line
}

set fp_outfile [open "file_output1.txt" w]
puts $fp_outfile [join $reordered_list "\n"]
close $fp_outfile
