# > Directions
# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# Examples:
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# > Understanding the Problem

# Input:
#   -String of characters
# Output:
#   -Array of strings
#     -Contains all of the palindromes of at least two characters
#     -return value should be in same order as they appear in the words
#       -I believe this is done automatically
      
# Algorithm:
#   -Using the all_substrings and leading_substrings methods, find all of the substrings
#   -Create empty palin array
#   -Iterate through substrings using #each, if element == element.reverse, push it to the palin array. And if element.size > 1
#   -Return palin array

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

def palindromes(str)
  substrs = substrings(str)
  return substrs.select {|string| string == string.reverse && string.size > 1}
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == ['ll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada', 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did','-madam-', 'madam', 'ada', 'oo']
puts palindromes('knitting cassettes') == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt' ]