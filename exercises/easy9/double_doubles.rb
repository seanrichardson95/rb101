# > Directions

# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

# Examples:
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# > Understanding the Problem
# Input:
#   -Integer
# Output:
#   -Double the Integer, unless number is a double number
  
# Algorithm:
#   -Check if integer is double number
#     -Create double?(int) to check. Returns true or false
#     -If number.to_s.size.even? return false
#     -Use slice to split into two, Check if first half == second half
#       -if yes, return true, otherwise return false
#   -Using ternary double?(int) ? int : int * 2
  
def double?(num_str)
  middle = num_str.size / 2 - 1
  return true if num_str[0..middle] == num_str[(middle + 1)..-1]
  return false
end

def twice(int)
  num_str = int.to_s
  #double? doesn't work on integers with one digit
  # so I added "num_str.size > 1"
  (double?(num_str) && num_str.size > 1) ? int : int * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10