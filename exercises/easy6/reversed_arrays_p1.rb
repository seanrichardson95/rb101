# > Directions
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true

# list = []
# reverse!(list) == [] # true
# list == [] # true

# Note: for the test case list = ['abc'], we want to reverse the elements in the array. The array only has one element, a String, but we're not reversing the String itself, so the reverse! method call should return ['abc'].

# > Understanding the Problem
# Input:
#   -Array
# Output:
#   -Same array, mutated, and reversed
  
# Rules:
#   -Don't use array#reverse or reverse!
  
# > Algorithm
# -Iterate backwards through original array, placing those values in a new array
# -Change the values of original array using Array#[] to the values of reverse array.
# -Return original array

def reverse_copy(arr)
  reverse_arr = []
  counter = -1
  while counter.abs <= arr.size
    reverse_arr.push(arr[counter])
    counter -= 1
  end
  reverse_arr
end

def reverse!(arr)
  reverse_arr = reverse_copy(arr)
  counter = 0
  while counter < arr.size
    arr[counter] = reverse_arr[counter]
    counter += 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts reverse!(list) == [] # true
puts list == []