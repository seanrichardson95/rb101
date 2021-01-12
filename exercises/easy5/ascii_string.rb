# > Directions
# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# > Understanding the problem
# Input:
#   -String
# Output:
#   -ASCII string value of the string 
#     -The sum of the ASCII values of each character
#     -Use String#ord to determine ASCII value of a character
    
def ascii_value(str)
  int = 0
  str.split(//).each {|letter| int += letter.ord}
  int
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0