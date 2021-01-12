# > Directions
# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# Examples
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# > Understanding the problem
# Inputs:
#   -Integer
# Output:
#   -String version of the integer

# Algorithm:
#   -Make an array of digits
#     -Get each digit by doing % 10
#     -Then / 10 to get the next number to analyze
#     -Do this until number is 0?
#       -Use break statement to do this, so that loop runs if num == 0
#   -Convert array of digits into array of strings
#     -Do this using a hash
#   -Add the array together using inject (if it can be used on strings)

# STRING = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
#   5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
# }

# def num_array_to_string(arr)
#   arr.map! {|x| STRING[x] }
#   arr.inject(:+)
# end

# def integer_to_string(num)
#   num_array = []
#   loop do
#     num_array.unshift(num % 10)
#     num = num / 10
#     break if num == 0
#   end
#   num_array_to_string(num_array)
# end

# puts integer_to_string(4321) == '4321'
# puts integer_to_string(0) == '0'
# puts integer_to_string(5000) == '5000'

# > LS Answer

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

# > Convert a signed number to a string Directions

# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

# Examples
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# > Understanding the problem
# Algorithm:
#   -First check whether integer is above or below 0
#     -This will determine whether to prepend with a - or +
#     -If negative, save sign as string
#       -Then multiply by negative 1 and run integer_to_string
  
def signed_integer_to_string(num)
  if num < 0
    integer_to_string(num * -1).prepend('-')
  elsif num > 0 
    integer_to_string(num).prepend('+')
  else
    '0'
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'