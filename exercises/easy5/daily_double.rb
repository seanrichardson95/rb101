# > Directions
# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

# Examples:
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# > Understanding the problem
# Input:
#   -String, containing doubles
# Output:
#   -String, where multiple of a letter in a row is reduced to one
  
# Algorithm:
#   -Iterate through string, when the letter doesn't match the letter before,
#     add it to the new string.
#     -Use indexed values. new_str = str[0]
#     -while i < str.size
#     -if str[i] != str[i-1] add to end of new string
    
def crunch(str)
  return '' if str == ''
  undoubled = str[0]
  i = 1
  while i < str.sizes
    undoubled.concat(str[i]) if undoubled[-1] != str[i]
    i += 1
  end
  undoubled
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''