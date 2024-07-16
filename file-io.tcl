set fRead [open infile.txt r]
set fWrite [open outfile.txt w]
while { ![eof $fRead]} {
    set line [gets $fRead]
    #removing the "n" character from the line
    set line [string trimright $line "\n"]
    puts $line
    #converting to uppercase
    set line [string toupper $line]
    puts $fWrite $line
}
close $fRead
close $fWrite