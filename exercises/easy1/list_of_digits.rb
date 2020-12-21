# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.
# Examples:
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# Understand the problem:

# Input:
#   -One argument, a positive integer
# Output:
#   -A list of digits in the number. An array of integers

# Algorithm:
#   -I know there is a split method for strings
#   1. Turn integer into a string
#   2. Split the strings, and save it in a variable
#   3. Turn the array of strings into an array of integers. Use map to apply this

def digit_list(num)
  num.to_s.split(//).map {|x| x.to_i}
end

puts digit_list(12345)                        # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
