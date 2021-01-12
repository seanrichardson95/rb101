# > Directions
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Examples:
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# > Understanding the problem
# Input:
#   -String of words separated by spaces
#   -Every word contains at least one letter
#   -Every string will contain at least one word.
#   -Each string contains nothing but words and spaces

# Output:
#   -A string, where each word has its first and last letter switched.
  
# Algorithm:
#   -Split the string into an array, using spaces as the delimiter
#   -Iterate through the array, switching first and last letters
#     -Split each element into it's letters.
#     -Save first letter as first_letter.
#     -Overwrite first letter with letter at index -1
#     -Overwrite last letter with first_letter
#     -.join the array.
#   -return array.join
  
# def swap(str)
#   words = str.split(" ")
#   words.map! {|word|
#     word[0], word[-1] = word[-1], word[0]
#     word
#   }
#   words.join(" ")
# end

# puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# puts swap('Abcde') #== 'ebcdA'
# puts swap('a') == 'a'

# > LS answer
def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word[0], word[-1])
  end
  result.join(' ')
end

puts swap('Oh what a wonderful day it is')# == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') #== 'ebcdA'
puts swap('a') == 'a'