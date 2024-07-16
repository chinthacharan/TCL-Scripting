set no_of_edges 3
switch $no_of_edges {
    0 { puts "no symbol"}
    1 { puts "This is a Dot."}
    2 { puts "This is a line."}
    3 { puts "This is a triangle."}
    4 { puts "This is a quadrilateral."}
    5 { puts "This is a pentagon."}
    default { puts "Unknown polygon."}
}

#output: This is a triangle