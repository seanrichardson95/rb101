# > Directions

# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b] #[2, [5, 8]]
arr[0] += 2 # a = 2, arr = [4, [5, 8]]
arr[1][0] -= a #b = [3, 8]

puts "My guess:"
puts "a = 2"
puts "b = [3, 8]"
puts "\nThe real answer:"
puts "a = #{a}"
puts "b = #{b}"