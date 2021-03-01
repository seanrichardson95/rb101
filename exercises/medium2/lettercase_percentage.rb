# > Directions
# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Examples
# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Input:
#   -string of lower, upper, and other characters
# Output:
#   -hash of percentages * 100
  
# Questions
# -Format floats to 1 decimal?

# Algorithm:
# -Split the characters using chars
# -Use .count to count the characters of each and save as separate variables
# -Create array of the percentages, calculate them and format to one decimal place
# -Return hash

def letter_percentages(str)
  chars_by_ord = str.chars.map {|ch| ch.ord}
  size_of_str = chars_by_ord.size
  hsh = { lowercase: chars_by_ord.count {|x| x >= 97 && x <= 122},
          uppercase: chars_by_ord.count {|x| x >= 65 && x <= 90} }
  hsh[:neither] = size_of_str - hsh[:lowercase] - hsh[:uppercase]
  hsh.each {|k, v| hsh[k] = hsh[k].to_f / size_of_str * 100 }
  hsh.each {|k, v| 
    v = v % 1 == 0.0 ? v.to_i : v.round(2)
    hsh[k] = v
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')