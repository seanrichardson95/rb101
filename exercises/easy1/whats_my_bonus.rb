# > Directions:
# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
# If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# Examples:
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# The tests above should print true.

# > Understanding the problem:
# Input:
#   - A positive integer and a boolean
# Output:
#   - If boolean == true, half of the salary (integer)
#   - If boolean == false, 0 (savage!!!)
  # - Should I have a default value?
  
# Algorithm:
# Use a trenary statement. If bonus (the boolean) is true, return salary / 2. Else, return 0.

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end
  
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000 