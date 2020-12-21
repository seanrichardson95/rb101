# >Directions:
# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Examples:
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# >Understanding the problem:

# Input:
#   - A positive integer
# Output:
#   - An integer, the sum of its digits
  
# Algorithm:
# Turn the integer into a string. Use String#split to split up the numbers into a string array.
# Use Array#map to turn each string number into an integer.
# Use Array#reduce and sum it. Return this value.

def sum(int)
  nums = int.to_s.split(//)
  nums.map! {|x| x.to_i}
  nums.reduce(:+)
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45  

# >Short LS Answer:
# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end