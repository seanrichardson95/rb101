# > Directions

# Create a method that takes two arguments, multiplies them together, and returns the result.

# Example:
# multiply(5, 3) == 15

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power_to_the_n(num, power)
  result = 1
  power.times {|x| result = multiply(num, result)}
  result # Need this so the result gets returned
end

puts power_to_the_n(5, 3)
puts power_to_the_n(2, 8)
