# > Directions
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# > Understanding the problem
# Input:
#   -String of words
# Output:
#   -Hash, counting the amount of words of a certain sizes
  
# Algorithm:
#   -Use .split(" ") to create array of words
#   -Iterate through array, hash[words.length] += 1
  
def word_sizes(words)
  frequency_of_sizes = Hash.new(0)
  words.split(" ").each {|word|
    word.gsub!(/[^a-z]/i, '')
    frequency_of_sizes[word.size] += 1
  }
  frequency_of_sizes
end

puts word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') #== {}