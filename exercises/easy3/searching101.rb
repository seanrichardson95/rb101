# > Directions

# Write a program that solicits 6 numbers from the user, then 
# prints a message that describes whether or not the 6th number
# appears amongst the first 5 numbers.

# Examples:
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

# > Understanding the problem

# Inputs:
#   -5 integers from user, put into an array
#   -1 integer, to be compared to the array
  
# Outputs:
#   -Statement saying whether in or out of array.
  
# Test Cases:
#   -Use above

# Algorithm:
#   -Collect 5 numbers
#     -Use gets.chomp.to_i
#   -Array#push to arr
#   -Collect last number
#   -Use .include? to check if in array.
  
def prompt(str)
  puts "==> Enter the " + str + " number:"
end

#Initializations
arr = []
order = %w(1st 2nd 3rd 4th 5th)

order.each {|nth| 
  prompt(nth)
  num = gets.chomp.to_i
  arr.push(num)
}

prompt("last")
last_num = gets.chomp.to_i

if arr.include?(last_num)
  p "The number #{last_num} appears in #{arr}"
else
  p "The number #{last_num} does not appear in #{arr}"
end
