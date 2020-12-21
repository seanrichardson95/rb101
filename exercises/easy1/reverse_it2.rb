# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. 
# Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# Examples:
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Understanding the problem:

# Input:
#   -One argument, a string containing one or more words
#   -The argument consits only of letters and spaces
# Output:
#   -A string, with all words that contain 5 of more letters, spelled backwards.
  
# Algorithm:
#   -Split the string into an array.
#   -Use map! on array and reverse word if the length is longer than 5 letters. Else keep it the same
#   -Put it back into a string using .join(" ")
  
def reverse_words(string)
  words = string.split(" ")
  words.map! {|word|
    if word.length >= 5
      word.reverse!
    else
      word
    end
  }
  
  words.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS