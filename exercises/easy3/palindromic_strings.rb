# > Directions

# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# Examples:
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# > Understanding the problem

# Input:
#   -string
# Output:
#   -boolean true if palindrome. false if not

# Notes:
#   -Case, punctuation, and spaces matter

# Algorithm:
#   -Split string into individual characters using .split
#   -In a while loop, check if index 0 and index -1 match,
#     then index 1 and -2, and so on until you get to the middle.
#   -front_index goes from 0 -> middle
#   -end_index goes from arr.length - 1
#   -loop ends when front_index > end_index
require "pry"
  
def palindrome?(str)
  front_index = 0
  end_index = str.length - 1
  while front_index < end_index
    return false if str[front_index] != str[end_index]
    # binding.pry
    front_index += 1
    end_index -= 1
  end
  true
end

# puts palindrome?('madam') == true
# puts palindrome?('Madam') == false          # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true

# > Further Exploration

# Write a method that determines whether an array is palindromic; that is, the element values appear in the same sequence both forwards and backwards in the array. Now write a method that determines whether an array or a string is palindromic; that is, write a method that can take either an array or a string argument, and determines whether that argument is a palindrome. You may not use an if, unless, or case statement or modifier.

def pallindromes?(pallin)
  pallin == pallin.reverse
end

# puts pallindromes?('madam') == true
# puts pallindromes?('Madam') == false          # (case matters)
# puts pallindromes?("madam i'm adam") == false # (all characters matter)
# puts pallindromes?('356653') == true

# > Palindrome pt. 2

# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# > Understanding the problem
# -This time, it's not case sensitivie, so I should use .downcase on the string
# -I should delete all the non-alphanumeric characters
# -Call palindrome? on the result

def real_palindrome?(str)
  palindrome?(str.downcase.delete('^a-z0-9'))
end  

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

 