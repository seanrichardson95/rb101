# > Directions
# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Example:

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# > Understanding
# Input:
#   -Two arrays, neither are empty, both have same number of elements
# Output:
#   -Interleaved array
  
# > Algorithm
# Using times loop at arr.size
#   -push arr1.shift
#   -push arr2.shift
# return final array

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']