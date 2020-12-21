# Directions: Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.
# Example: repeat('Hello', 3)
# Output: 
# Hello
# Hello
# Hello

# Understanding the Problem

# input:
#   - two arguments. One string and one positive integer.
# output:
#   - print the string as many times as the integer indicates
#   - If not given correct arguments, do I return an error message? Do I ask them to provide a positive integer again?

# Test cases:
# repeat('Hello', 3) => print 'Hello' 3 times
# repeat('Hello', 0) => prints error message
# repeat('glub', 6) => prints 'glub' 6 times
# repeat('Hello', -1) => print error message

# Describe Algorithm:
# Check if the parameters are a string and positive integer (x), then print the string x times using a times loop

def repeat(string, num)
  if string.is_a?(String) && num.is_a?(Integer) && num > 0
    num.times {|x| puts string}
  else
    puts "I'm sorry, you have not input the correct arguments, please input a string and a positive integer"
  end
end

repeat('Hello', -1)