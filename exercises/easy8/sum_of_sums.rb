# > Directions
# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# Examples:
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# > Understanding the Problem
# Input:
#   -Array of numbers, always with at least one number
# Output:
#   -Integer
#   -A sum of each leading subsequence for that array
  
# Algorithm:
#   -Form an empty array, subsequences
#   -Set a variable, sums, to 0
#   -Using .each on the array
#     -Add the element to subsequences
#     -Add subsequences.inject(:+) to sums
#   -Return sums

def sum_of_sums(numbers)
  total = 0
  numbers.each_with_index {|num, i|
    total += numbers.slice(0,i+1).inject(:+)
  }
  total
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35