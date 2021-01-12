# > Directions

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# > Understanding the problem:
# Input:
#   -number greater than 0
#   -sum or product
# Output:
#   -The sum or product of all numbers up to that number
  
# Algorithm:
#   -Create a range of all numbers from 1..number
#   -Use .inject(:+) for sum and .inject(:*) for multiply


def prompt(str)
  puts ">> " + str
end

prompt("Please enter an integer greater than 0:")
num = gets.chomp.to_i
prompt("Enter 's' to compute the sum, 'p' to compute the product.")
operator = gets.chomp.downcase

if operator == 's'
  puts "The sum of the integers between 1 and #{num} is #{(1..num).inject(:+)}."
elsif operator == 'p'
  puts "The product of the integers between 1 and #{num} is #{(1..num).inject(:*)}."
else
  puts "Cant compute... ERROR ERROR, please try again later."
end
