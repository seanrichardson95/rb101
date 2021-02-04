# > Directions

# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# Examples:
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

# > Understanding the problem
# Input:
#   -Two integers
#   -First integer is the count
#   -Second integer is the number being added
# Output:
#   -An array
  
# Algorithm:
#   -Create empty results array
#   -while count > 0, add number + original number, push to array
#   -return array
  
def sequence(count, start_num)
  results = []
  current_num = start_num
  while count > 0
    results << current_num
    current_num += start_num
    count -= 1
  end
  results
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []