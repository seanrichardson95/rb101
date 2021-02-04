# > Directions

# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

# Examples:
# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# > Understanding the Problem
# Input:
#   -String
# Output:
#   -Array of substrings
  
# Algorithm:
#   -Create empty substrings array
#   -From 1.upto str.size |count|
#     -substrings << str.slice(0,count)
#   -Return substrings
  
def leading_substrings(str)
  substrings = []
  1.upto(str.size) {|count| substrings << str.slice(0,count)}
  substrings
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']