# > Directions
# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# Examples:

# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# > Understanding the problem
# Input:
#   -String
# Output:
#   -boolean
#     -true is word passed in can be spelled from the set of blocks
#     -false otherwise
    
# Really just checking if more than two of the letters are within the same block

# if word has any duplicates, immediately return false


# Algorithm:
# -Create a nested array of each block
# -upcase the string
# -split the string into chars array
# -iterate through chars
#   -for each char, iterate through nested array
#     -if char in nested array, check if any other char in that same nested array
#     -if yes, return false
# -return true

BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
          ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
          ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def other_chars_in_block?(char, block, all_chars)
  all_chars.each do |ch|
    next if ch == char
    return true if block.include?(ch)
  end
  false
end

def block_word?(str)
  chars = str.upcase.chars
  return false unless chars.size == chars.uniq.size
  chars.each do |char|
    
    BLOCKS.each do |block|
      if block.include?(char)
        return false if other_chars_in_block?(char, block, chars)
      end
    end
    
  end
  true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
