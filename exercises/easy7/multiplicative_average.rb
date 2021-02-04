# > Directions

# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

# Examples:
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# > Understanding the problem
# Input:
#   -Array of integers
# Output:
#   -Print float, multiplication of the entries / number of items in array
#     -arr.inject(*:)/arr.size
#   -Rounded to three decimal places
  
# Assume array is non-empty

# > Algorithm
# sprintf('%.3f', (arr.inject(:*).to_f)/arr.size)

def show_multiplicative_average(arr)
  sprintf('%.3f', (arr.inject(:*).to_f)/arr.size)
end

puts show_multiplicative_average([3, 5])                # => The result is 7.500
puts show_multiplicative_average([6])                   # => The result is 6.000
puts show_multiplicative_average([2, 5, 7, 11, 13, 17])