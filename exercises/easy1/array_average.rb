# >Directions:
# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. 
# The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

# Examples:
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# >Understanding the Problem:

# Input:
#   - Array of positive integers. Array will never be empty
# Output:
#   - An integer. The average of all the integers within the array.
#   - Should I round up? Should I round down? (ROUND DOWN according to the examples)

# Notes:
# In order to get the average, I'll need to sum the array, then divide it by the amount of numbers.
  
# Algorithm:
# Create a sum using Array#each. Then divide that sum by the Array.length

def average(arr)
  sum = 0.0
  arr.each {|x| sum += x}
  sum / arr.length
end

puts average([1, 6]) # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

# LS Answer:
# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end

# Other LS Answer:
# def average(numbers)
#   numbers.reduce(:+)
#   sum / numbers.count
# end