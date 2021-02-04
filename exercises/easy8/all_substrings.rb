# > Directions

# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

# Examples:
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# Algorithm:
#   -Create empty substr array
#   0.upto(str.size) {|count|
#     substrings << leading_substrings(str)
#     get rid of first letter in str

def leading_substrings(str)
  substrings = []
  1.upto(str.size) {|count| substrings << str.slice(0,count)}
  substrings
end

def substrings(str)
  result = []
  size_of_string = str.size
  1.upto(size_of_string) {|count|
    result << leading_substrings(str)
    str = str.slice(1, size_of_string-count)
  }
  result.flatten
end
p substrings('abcdef')