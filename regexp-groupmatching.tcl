set sample "Where there is a will, There is a way."
#Match the first substring with lowercase letters only
set result [regexp {[a-z]+} $sample match]
puts "match_status:$result match_string: $match"
#output: match_status:1 match_String: here
#In the string "Where there is a will, There is a way.", the first sequence that matches the regular expression [a-z]+ (which looks for one or more lowercase letters) is indeed not the "Where" as the 'W' is uppercase. Instead, the first matching part of the string that is entirely in lowercase starts with "here" immediately following the uppercase 'W' in "Where"

#Match the first two words(GROUP), the first one allows uppercase
set result [regexp {([A-Za-z]+) +([a-z]+)} $sample match sub1 sub2]
puts "match_status:$result match_string: <$match> 1st_string: <$sub1> 2nd_string: <$sub2>"
#output: match_status:1 match_string: <Where there> 1st_string: <Where> 2nd_string: <there>