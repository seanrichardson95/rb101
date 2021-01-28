# > Directions

# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# Example

# puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
# puts merge([1, 1, 1], [1, 1, 1]) == [1]
# puts merge([1, 2, 3], []) == [1, 2, 3]

# > Understanding the problem
# Input:
#   -Two arrays
# Output:
#   -One array, of all the unique values
# What about an empty array?
  
# > Algorithm
# -Create result_array
# -Iterate through first array, adding a value if its not in the result_array
# -Do same thing for second array

def merge(arr1, arr2)
  result = []
  arr1.each {|x| result << x unless result.include?(x)}
  arr2.each {|x| result << x unless result.include?(x)}
  result
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge([1, 1, 1], [1, 1, 1]) == [1]
p merge([1, 2, 3], []) == [1, 2, 3]