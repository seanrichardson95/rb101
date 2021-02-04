# > Directions
# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Example:
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# >Understanding the Problem
# Input:
#   -String
# Output:
#   -String, of original value, but with staggered capital letters
  
# Rules:
#   -Ignore the numbers (determine this with regex I guess?)
#   -But count them as characters when determining the staggering
#     -I guess have 'next' if statement when a number candidate in a staggered position comes accross
#   -Make index 0, 2, 4... uppercase
#   -Make index 1, 3, 5... downcase
  
# > Algorithm
#   -Iterate through array of characters with each_with_index
#   -char.upcase! if i % 2 == 0 and char.match?(/[a-z]/)
#   -char.downcase! if i % 2 == 1 and char.match?(/[A-Z]/)
#   -return .join
  
def staggered_case(string)
  first_or_second = string[0].match?(/[a-z]/) ? 1 : 0
  result = string.chars.each_with_index {|char, i|
    i % 2 == first_or_second ? char.upcase! : char.downcase!
  }
  result.join('')
end

puts staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') #== 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'