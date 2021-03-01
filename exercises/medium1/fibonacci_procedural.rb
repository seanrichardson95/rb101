# > Directions

# Rewrite your recursive fibonacci method so that it computes its results without recursion.

# Examples:
# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501

# > Understanding the problem
# Input:
#   -nth, an integer, representing the step
# Output:
#   -The Fibonacci number at that step
  
# Algorithm:
# -SET one_ago = 1
# -SET two_ago = 1
# -SET current = one_ago + two_ago
# return 1 if nth <= 2
# 3.upto(nth) {|_|
#   two_ago = one_ago
#   one_ago = current
#   current = one_ago + two_ago
# }
# current

def fibonacci(nth)
  return 1 if nth <= 2
  one_ago, two_ago = 1, 1
  current = 0
  3.upto(nth) {|_|
    current = one_ago + two_ago
    two_ago = one_ago
    one_ago = current
  }
  current
end

# puts fibonacci(20) #== 6765
# puts fibonacci(100) #== 354224848179261915075
# puts fibonacci(100_001)

# def fibonacci_last(nth)
#   fibonacci(nth) % 10
# end

# puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# puts fibonacci_last(123456789) # -> 4

last_digits = {}
1.upto(60) {|index|
  last_digits[index] = (fibonacci(index) % 10)
}

def last_fib_digit(last_digits, num)
  last_digits[num % 60]
end

p last_fib_digit(last_digits, 123_456_789_987_745)