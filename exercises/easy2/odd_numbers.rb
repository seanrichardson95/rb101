# > Directions
# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

100.times {|x| puts x if x.odd?}

# Alternate solution
puts (1..99).select {|x| x % 2 == 1}