# > Directions

# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# Example:
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# > P
# Input:
#   -Array of strings
# Output:
#   -Array of same string values, but with vowels removed
#     -Both upper and lowercase vowels are removed
#   -Returns new array
  
# > Algorithm
# -Iterate through array using .map
# -Remove vowels using delete and proper regex

def remove_vowels(words)
  words.map {|word| word.delete "aeiouAEIOU"}
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']