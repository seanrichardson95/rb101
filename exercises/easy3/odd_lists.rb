# > Directions

# Write a method that returns an Array that contains
# every other element of an Array that is passed in 
# as an argument. The values in the returned list 
# should be those values that are in the 1st, 3rd,
# 5th, and so on elements of the argument Array.

# > Understanding the problem

# Input:
#   -Array of x elements
# Output:
#   -Array, containing every other element of input array
#     -Start at index 0

# Algorithm:
#   -Use a times loop, the length of the length of the input array
#   -Copy over the element of the array, if the index is even
#   -return final array

def oddities(arr)
  odd_arr = []
  arr.length.times {|i| odd_arr.push(arr[i]) if i.even?}
  odd_arr
end

# Test cases:

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

# > Further explanation

def evenities(arr)
  i = 0
  even_arr = []
  while i < arr.length
    if i.odd?
      even_arr.push(arr[i])
    end
    i += 1
  end
  even_arr
end

p evenities([2, 3, 4, 5, 6])
p evenities([1, 2, 3, 4, 5, 6])
p evenities(['abc', 'def'])
p evenities([123])
p evenities([])