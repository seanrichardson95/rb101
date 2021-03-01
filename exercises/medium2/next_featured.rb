# > Directions

# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

# Examples:

# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# > Understanding the problem
# Input:
#   -Integer
# Output:
#   -Integer, next featured number
#   -error message if there is no next featured number
  
# Rules:
# -Featured numbers are those that
#   -odd number
#   -multiple of 7
#   -digits occur exactly once

# Algorithm:
# -Create featured? method to test whether something is featured or nah
# -If nah, find the next multiple of 7 that is odd.
#   -If featured? then return it, if not, keep adding 14 until you find a featured number
# -Find the biggest featured number, this will be the max? Maybe just use max of 9_876_543_210, doesn't take 7 or odd into account, but is max num of unique digits.

MAX_NUM = 9876543210 # this highest number with no repeating digits

def featured?(num)
  [num.odd?, num % 7 == 0, num.digits.size == num.digits.uniq.size].all?
end

def featured(num)
  # finds next odd multiple of 7
  if (num + 7 - num % 7).odd?
    num += (7 - num % 7)
  else
    num += (14 - num % 7)
  end
  while num < MAX_NUM
    return num if featured?(num)
    num += 14
  end
  puts "There is no possible number that fulfills those requirements"
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts featured(9_999_999_999)