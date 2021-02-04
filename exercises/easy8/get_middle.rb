# > Directions
# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

# Examples:
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# > Understanding the Problem
# Input:
#   -String, non-empty
# Output:
#   -If string.size.odd?, middle char
#   -Otherwize, middle two chars

def center_of(str)
  str.size.odd? ? (str[str.size / 2]) : (str.slice(str.size / 2 - 1, 2))
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
