# > Directions:

# You'll need three pieces of information:
# -the loan amount
# -the Annual Percentage Rate (APR)
# -the loan duration

# From the above, you'll need to calculate the following things:
# -monthly interest rate
# -loan duration in months
# -monthly payment

# You can use the following formula: m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# When you write your program, don't use the single-letter variables m, p, j, and n;
# use explicit names. For instance, you may want to use loan_amount instead of p.

# Finally, don't forget to run your code through Rubocop.

# > Understanding the problem

# Inputs:
# -loan amount (integer or float)
# -Annual percentage rate (float, between 0 and 1, right?)
# -loan duration (in years, integer)

# Output:
# -Monthly interest rate (float, between 0 and 1).
#   -How do I get this from APR? (APR / 12)
# -Loan duration in months (loan duration in years * 12, integer)
# -Monthly payment (float)
#   -Calculated with: m = p * (j / (1 - (1 + j)**(-n)))

# Algorithm:
# Prompt user for all three inputs
# Get loan amount and convert to float
# Get APR and convert to float, divide by 12 and save as the monthly interest
# Get loan duration, covert to float (since it could be 2.5 years or something), multiply by 12, and save as loan duration
# Calculate the monthly payment
# Print out the payment

def valid_input?(num)
  # makes sure the input is valid, i.e., above 0 or not a string
  loop do
    if num > 0
      break
    else
      puts "Please input a valid number (a number above 0)."
      num = gets.chomp.to_f
    end
  end
  num
end

  
puts "Hello! Welcome to the mortgage / car loan calculator!"
calc_input_prompt = <<-CAL
This calculator asks for three things:
  1) The loan amount
  2) The Annual Percentage Rate (APR)
  3) The loan duration
Then, we'll calculate your monthly payment!
CAL
puts calc_input_prompt

again = "y"
while again == "y" # main loop
  print "What's the total amount of your loan? -> "
  loan_amount = gets.chomp.to_f
  loan_amount = valid_input?(loan_amount)
  print "What's the APR on your loan, as a number? (ex. for 6%, enter 6) -> "
  monthly_ir = gets.chomp.to_f
  monthly_ir = (valid_input?(monthly_ir) / 12) / 100
  print "How long, in years, is the duration of your loan? -> "
  loan_months = gets.chomp.to_f
  loan_months = (valid_input?(loan_months) * 12).to_i
  
  monthly_payment = loan_amount * (monthly_ir / (1 - (1 + monthly_ir)**(-loan_months)))
  puts "You will pay $#{format('%.2f', monthly_payment)} per month for #{loan_months} months."
  puts "In total, you will end up paying $#{format('%.2f', monthly_payment * loan_months)}"
  puts "Your total interest paid will be $#{format('%.2f', monthly_payment * loan_months - loan_amount)}"
  puts "Would you like to calculate another mortgage or car loan payment? (y/n)"
  again = gets.chomp.downcase
end

puts "Have a nice day! Thank you for using Sean's mortgage and car loan calculator!"