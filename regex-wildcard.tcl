set res "A quick brown fox jumped over a brwn lazy dog"
    foreach ele $res {
        #use of wildcard matching
        if {[regexp {b.*n} $ele]} {
            puts "$ele"
        }
    }

#output :brown
#brwn

#There is a good reason for not choosing b*n and using b.*n
#With b*n it means zero of more characters of b followed by n like n, bn, bbn but not brown
#with b.*n we get bn, brown, brwn, b123n