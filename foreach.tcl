#example1
foreach col {red orange yellow green blue purple} {
    puts $col
    after 200
    update
}

#example2
set lstColors "red dark yellow green blue purple"
foreach col $lstColors {
    puts $col
    after 200 
    update
}

#example3
set tclfiles [global *.tcl]
foreach fileName $tclfiles {
    puts "File = $fileName"
}

#example4
set lstColors {red orange yellow green blue purple}
set lstFoods {apple orange banana lime berry grape}
set status "ok bad ok ok bad bad"
#operating on three list simultaneously
foreach f $lstFoods c $lstColors s $status {
    puts "<$f> is usually <$c> and this is <$s>"
    after 300
    update
}

#example5
set lstColors {red orange yellow green blue purple}
set lstFoods {apple orange banana lime berry grape}
foreach {a b} $lstFoods c $lstColors {
    puts "<$a> & <$b> are fruits. <$c> is a color."
    after 300
    update
}