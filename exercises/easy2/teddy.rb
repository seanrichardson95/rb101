# > Directions

# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# Example Output
# Teddy is 69 years old!

# > Understanding the problem
#   -Input:
#     -None
#   -Output:
#     -Print Teddy is #{random_number} years old!
#     -Random number has to be between 20 and 200. By between, I see it as [21, 199]
    
#   -Test Cases
#     teddy()
    
#   -Algorithm
#     Create a randomly generated number using a ruby method
#     Print out the phrase with that number using puts

def teddy
  age = rand(21...200)
  print "Teddy is #{age} years old!"
end

teddy
  
    