set value 2000
puts "value is $value"
#output :value is 2000
set c 20
set d [expr $c+10]
puts "==$c===$d==="
#output :==20===30===
unset c
if {![info exists c]} {
    set c 40
}
incr c
puts "==$c===$d==="
#output :==41===30===