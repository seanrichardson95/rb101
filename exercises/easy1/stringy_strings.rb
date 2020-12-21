# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# Examples:
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# The tests above should print true.

# Understanding the problem:
# Input:
#   -A positive integer
# Output:
#   -A string: of alternating 1s and 0s, always starting with 1
#   -The length of the string should match the given integer.
#     -String.length = integer

# Algorithm:
# Have a loop going that adds a 1 or 0, alternating, to an array. This loop runs int number of times.
# Determine whether its a 1 or 0, by adding the answer of % 2.
# Return the arr.join()

def stringy(int, first_num=1)
  first_num == 0 ? second_num = 1 : second_num = 0
  stringy_array = []
  
  while int > 0
    stringy_array.unshift(int.odd? ? first_num : second_num)
    int -= 1
  end
  
  stringy_array.join()
end

puts stringy(6, 1)
puts stringy(9) == '101010101'
puts stringy(4, 1)
puts stringy(7) == '1010101'
puts stringy(1) == '1'