# > Directions

# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Examples:

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# > Understanding the problem
# Input:
#   -Array of integers between 0 and 19
# Output:
#   -Array of those integers, sorted based on the english words for each number

# Algorithm:
#   -Turn array of the numbers into an array of english words
#   -In a loop, until num_of_moves = 0
#     -Switch the places of words depending on if one is "bigger" than
#       the other

ENGLISH_NUM = {0=>'zero', 1=>'one', 2=>'two', 3=>'three', 4=>'four',
  5=>'five', 6=>'six', 7=>'seven', 8=>'eight', 9=>'nine', 10=>'ten', 
  11=>'eleven', 12=>'twelve', 13=>'thirteen', 14=>'fourteen',
  15=>'fifteen', 16=>'sixteen', 17=>'seventeen', 18=>'eighteen',
  19=>'nineteen'}
  
def alphabetic_number_sort(arr)
  arr.map! {|num| ENGLISH_NUM[num]}
  arr.sort!
  arr.map! {|word_num| ENGLISH_NUM.invert[word_num] }
end

# puts alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# > LS answer
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by! { |number| NUMBER_WORDS[number] }
end

puts alphabetic_number_sort((0..19).to_a)