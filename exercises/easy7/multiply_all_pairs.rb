# > Directions
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Examples:
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# > Understanding the Problem
# Input:
#   -Two arrays, each containing a list of numbers
# Output:
#   -New Array, containing the product of every pair of numbers that can be formed between the elements of the two arrays
#   -This array should be sorted by increasing value
  
# > Algorithm
# -Create empty result array
# -arr1.each {|a| 
#   arr2.each {|b| result << a * b}
# }
# result.sort

def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each {|a| 
    arr2.each {|b| result << a * b}
  }
  result.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]