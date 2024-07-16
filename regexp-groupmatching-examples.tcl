set sample "Where there is a will, There is a way."
#Match the first substring with lowercase letters only
set result [regexp {[a-z]+} $sample match]
puts "Status<$result> Match<$match>"
#output :Status<1> Match<here>
set result [regexp {[a-z]*} $sample match2]
puts "Status<$result> Match<$match2>"
#output :Status<1> Match<>
#reason:The key difference between + and * in regular expressions:
#<+> requires at least one of the preceding element (greedy match).
#<*> can match none or more of the preceding element (also greedy but accepts zero occurrences).
set result [regexp {[A-Za-z]+} $sample match3]
puts "Status<$result> Match<$match3>"
#output :Status<1> Match<Where>
set result [regexp {[A-Za-z]*} $sample match3]
puts "Status<$result> Match<$match3>"
#output :Status<1> Match<Where>
set result [regexp {.*} $sample match3]
puts "Status<$result> Match:<$match3"
#output :Status<1> Match<Where there is a will, There is a way.>
set result [regexp {.+} $sample match3]
puts "Status<$result> Match:<$match3"
#output :Status<1> Match<Where there is a will, There is a way.>
#explanation: Both {.*} and {.+} result in the full string being captured in this particular case because the entire string qualifies for the patterns used:
#{.*} could capture an empty string if sample were empty, but here it captures everything.
#{.+} needs at least one character to match, and since sample is non-empty, it also captures everything.