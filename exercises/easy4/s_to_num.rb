# > Directions
# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# Examples
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# > Understanding the problem
# Input:
#   -String of numbers
# Output:
#   -Integer
  
# Notes:
#   -Can't use .to_i or Integer()
#   -Don't worry about + or - signs
  
# Algorithm:
#   -Use split method on string to get each digit by itself
#   -Use reverse on the array.
#   -Iterate through array with each_with_index, each time multiplying by
#     a higher power of 10.
#     -10 ** (i)
#   -Add the value to the sum, and return the sum
  
DIGITS = {'0'=>0, '1'=>1, '2'=>2, '3'=>3,'4'=>4, '5'=>5, '6'=>6, '7'=>7,
    '8'=>8, '9'=>9
  }

def string_to_integer(str)
  nums = str.split(//).reverse.map {|digit| DIGITS[digit]}
  sum = 0
  nums.each_with_index {|item, index| sum += (item * 10 ** index)}
  sum
end

# puts string_to_integer('4321') == 4321
# puts string_to_integer('570') == 570

# > Further Exploration
# Write a hexadecimal_to_integer method that converts a string representing a hexadecimal number to its integer value.

# Example:
# hexadecimal_to_integer('4D9f') == 19871

# HEX_DIGITS = {'0'=>0, '1'=>1, '2'=>2, '3'=>3,'4'=>4, '5'=>5, '6'=>6, '7'=>7,
#     '8'=>8, '9'=>9, 'A'=>10, 'B'=>11, 'C'=>12, 'D'=>13, 'E'=>14, 'F'=>15
#   }
  
# def hexadecimal_to_integer(str)
#   nums = str.split(//).reverse.map {|digit| HEX_DIGITS[digit.upcase]}
#   sum = 0
#   nums.each_with_index {|item, index| sum += (item * 16 ** index)}
#   sum
# end

# puts hexadecimal_to_integer('4D9f') == 19871

# > String to signed number Directions
# In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

# Examples
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# > Understanding the problem
# Input:
#   -Signed or not signed number
# Output:
#   -Integer with sign
  
# If the first character is a sign, then save it as +1 or -1, and remove it from the string, and run string_to_integer, and multiply it by the sign

def string_to_signed_integer(str)
  if (str[0] == '-' || str[0] == '+')
    if str[0] == '-'
      return string_to_integer(str[1...str.length]) * (-1)
    else
      return string_to_integer(str[1...str.length])
    end
  else
    return string_to_integer(str)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100