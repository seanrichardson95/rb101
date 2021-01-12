# > Directions

# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# > Understanding the problem

# Inputs:
#   -Age, as string, convert to integer
#   -Retiring age, as string, convert to integer
  
# Output:
#   -Retiring year, integer
#     -years_left_to_work + CURRENTYEAR
#   -Amount of years before retiring, integer.
#     -retiring_age - age
    
# Algorithm:
#   -Ask for age
#   -Get age
#     -validate its a positive integer: valid_number?(num)
#       -Input their answer. If their answer.to_i <= 0, require another answer
#   -Ask for retiring age
#   -Get retiring_age
#     -validate its a positive integer and greater than age (or can it be the same?)
#   -Calculate years_left_to_work: retiring_age - age
#   -Calculate year_of_retirement: CURRENTYEAR + years_left_to_work
#   -Puts statement with answers
  
# Test cases:
# 30, 70 # => 40, 2061
# -2, 5 # => retry putting age in
# 7, -3 # => retry putting retirement age in
# str, str # => retry putting both in
# 6, 2 # => retry putting retirement age in

def prompt(str)
  print ">> " + str
end

def valid_number?(num)
  if num > 0
    true
  else
    prompt("Please input positive integers only\n")
    false
  end
end

def valid_retire?(now, later)
  if now <= later
    true
  else
    prompt("The retirement age cannot be lower than your current age of #{now}\n")
    prompt("Please input your age ")
    false
  end
end

# Constants
CURRENTYEAR = Time.now.year

# Initialize variables
age = 0
retiring_age = 0

prompt("What is your age? ")
loop do
  age = gets.chomp.to_i
  break if valid_number?(age)
end

prompt("At what age would you like to retire? ")
loop do
  retiring_age = gets.chomp.to_i
  break if (valid_number?(retiring_age)  && valid_retire?(age, retiring_age))
end

years_left_to_work = retiring_age - age
year_of_retirement = years_left_to_work + CURRENTYEAR

puts "It's #{CURRENTYEAR}. You will retire in #{year_of_retirement}."
puts "You have only #{years_left_to_work} years of work to go!"