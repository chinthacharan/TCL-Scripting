set sample "Where there is a will, There is a way."
#Replace a word
regsub "way" $sample "abudance" sample2
puts "old_string:$sample \nNew_string: $sample2"
#output :old_string:Where there is a will, There is a way.
#New_string: Where there is a will, There is a abudance.
puts "Number of matching words: [regexp -all {[^ ]+} $sample]"
#output : Number of matching words:9