# > Directions

# Alan wrote the following method, which was intended to show all of the factors of the input number:

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop.
# How can you make this work without using begin/end/until? Note that we're not looking to find the factors for
# 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

# > Understand the problem
# The function fails if input is 0 or negative.
# Make it work without begin/end/until
# We don't want it to find factors of 0 or negative, but to handle it gracefully.

# Write an if statement that prints that we can't use the number, and returns nil.

# > My answer:

def factors(number)
  if number > 0
    divisor = number
    factors = []
    while divisor > 0
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end
    factors
  else
    puts "I'm sorry, but we cannot find the factors for negative numbers or 0."
  end
end

# Test
puts factors(0)
puts factors(1)
puts factors(-2)
puts factors(24)

# > Bonus 1
# What is the purpose of the number % divisor == 0 ?
# > My answer:
# This signifies, that you've found a factor, because it goes cleanly into the number.

# > Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# > My answer:
# So it returns all the factors. Otherwise it'll return the last line which would be the divisor.