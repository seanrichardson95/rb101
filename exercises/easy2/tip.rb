# > Directions

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# Example:
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# > Understanding the problem

#   -Inputs:
#     -User inputs, bill (float), tip percentage (float) / 100.
#     -Verify if it's a negative tip or a negative bill?
#   -Output:
#     -Message detailing the tip and the totals as floats rounded to two numbers
    
#   -Test cases inputs
#   [200, 15] # => $30, $230
#   [20, 10] # => $2, $22
#   [201.69, 420] # => $847.10, $1048.79
#   [-5, -4] # => should make me pick different numbers
  
#   -Algorithm
#     Ask for a the bill using print, save as a float.
#     Ask for tip percentage, save as float / 100.
#     When getting answer, verify that each is non-negative. Do this with loop do. Break out of loop if non-negative
#     Calculate tip as bill * tip percentage, calculate total as bill + tip.
#     Print out tip with .round(2). Print out total will .round(2)

# Initialize variables
bill = ''
tip_percentage = ''

loop do    
  print "What is the bill? "
  bill = gets.chomp.to_f.round(2)
  if bill > 0
    break
  else
    puts "You have to pay. Don't try to pull a fast one on me."
  end
end

loop do
  print "What is the tip percentage? "
  tip_percentage = (gets.chomp.to_f) / 100
  if tip_percentage >= 0
    break
  else
    puts "You can't tip a negative percentage... That's stealing."
  end
end

tip = (bill * tip_percentage).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f",total)}"


