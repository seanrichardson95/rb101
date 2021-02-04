# > Directions

# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# Examples:

# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# > Understanding the problem
# Input:
#   -String, that will always contain at least two words
# Output:
#   -The second to last word
  
def penultimate(words)
  words.split(" ")[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

> Further Explanation
Suppose we need a method that retrieves the middle word of a phrase/sentence. What edge cases need to be considered? How would you handle those edge cases without ignoring them? Write a method that returns the middle word of a phrase or sentence. It should handle all of the edge cases you thought of.

Edge cases:
-empty string
-String with even number of words
-String with one word

def middle(words)
  words.split()
  return words[(words.size / 2)] if words.size.odd?
  return words[0] if words.size == 1
  puts "Sorry, we can only return the middle word if there are an odd \nnumber of words"
end