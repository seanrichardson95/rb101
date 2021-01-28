# > Directions
# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# Examples:
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# You may assume that the argument is always greater than or equal to 2.

# > P
# Input:
#   -Integer greater than or equal to 2, representing number of digits
# Output:
#   -Index of first fibonacci number that has required num_of_digits
#   -Index starts at 1
#     -Fibonacci sequence is where the previous two numbers add up to the number
#     -fib[-1] + fib[-2] = next number
    
# > Algorithm
# -Create array that will hold fibonacci numbers
#   -The array should start with [1, 1]
# -In a loop, add numbers to fibonacci array until you have one that has the required number of digits
#   -The "index" returned will be the size of the fibonacci array
#   -Use if statement to determine if the last number satisfies the number of digits
#   -Tell whether num is big enough: fib.last >= 10 ** (num_of_digits-1)
# -Return fib_array.size


def find_fibonacci_index_by_length(num_of_digits)
  fib_array = [1, 1]
  loop do
    return fib_array.size if fib_array.last >= 10 ** (num_of_digits-1)
    fib_array.push(fib_array[-1] + fib_array[-2])
  end
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847