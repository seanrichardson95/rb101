# > Directions

# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Example:
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

# > Understanding the problem
# Input:
#   -Array
# Output:
#   -A different array
#     -Similar to the original array, but the first element is at the end
    
# Algorithm:
# -Create empty array
# -Fill that array with each element of original array
# -new_array.push(shift(new_array))

def rotate_array(arr)
  new_arr = []
  arr.each {|x| new_arr.push(x)}
  new_arr.push(new_arr.shift)
end

# arr = [7, 3, 5, 2, 9, 1]
# p rotate_array(arr) #== [3, 5, 2, 9, 1, 7]
# p arr
# puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# puts rotate_array(['a']) == ['a']

def rotate_string(str)
  # return str if str.length == 1
  rotate_array(str.chars).join('')
end

puts rotate_string('hello') == 'elloh'
puts rotate_string('a') == 'a'

def rotate_integer(int)
  rotate_array(int.digits.reverse).join.to_i
end

puts rotate_integer(321) == 213
puts rotate_integer(2) == 2