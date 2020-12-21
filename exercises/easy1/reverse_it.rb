# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# Examples (test cases):
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('A string of the same words but in a reverse order') == 'order reverse a in but words same the of string A'

# The tests above should print true.

# Understanding the problem:

# Input:
#   -A string of words, separated by spaces
# Output:
#   -A string of the same words, but in a reverse order.
#   -What about punctuation? Do I keep punctuation at the end? In the examples, there's no punctuation, so lets assume there won't be any within the input.

# Algorithm:
#   -Create an array of strings, 'words', using String#split, with a space signfying the cutoff between words
#   -It should be indexed string, space, indexed string, space, indexed string, etc. The amount of spaces = words.length-1
#   -In a while loop, create a string starting with the last word using negative indexing, then a space. Exit for loop at words.length
#   -Then add the last word, words[0] and return the string.
    
  
  
def reverse_sentence(string)
  words = string.split(" ")
  if words.length > 0
    count = -1
    reverse_string = String.new()
    
    while count.abs < words.length
      reverse_string += words[count] + " " 
      count -= 1
    end
    
    reverse_string += words[0]
    
  else
    return string # handles edge case with empty string
  end
  
end

#tests
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('A string of the same words but in a reverse order')

# LS answer: 
# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end
  