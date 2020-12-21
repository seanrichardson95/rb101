# Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# Examples
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true


# Understanding the problem:
# Input:
#   - integer
# Output:
#   - true or false, depending if the number's absolute value is odd.

# Test cases:
#   - Use the above test cases
  
# Algorithm:
#   - Use modulo 2 to determine if input it odd. If 1 is returned, it's odd, and the method returns true. If 0 is returned, it's even, and the method returns false.

def is_odd?(num)
  num % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true