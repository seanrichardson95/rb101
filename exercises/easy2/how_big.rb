# > Directions

# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# > Example Run
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# > Understanding the problem

#   -Input:
#     -Nothing in method call
#     -Ask user for length and width of room, integers or floats
#     -What if they say 0? Do I tell them to do it again? Or just output 0
#       -For now, output 0
      
#   -Output:
#     -puts "The area of the room is #{sq_meters} sqaure meters (#{sq_feet} square feet)."
#     -sq_meters and sq_feet are floats
#       -1 m2 == 10.7639 sf
      
#   -Test cases / examples
#     User inputs for area_of_room:
#       -10, 7 # => 70.0 m2, 753.47 sf
#       -1, 2   # => 2 m2, 21.5278 sf
#       -0, 10 # => 0 m2, 0 sf
    
#   -Algorithm
#   Print out first statement asking for length in meters
#   Get input from user, to_f
#   Print out second statement asking for width in meters
#   Get input from user, to_f
#   Calculate m2 and sf
#   Puts out statement with the answer

# Constants
SF_TO_SI = 144 
SI_TO_SCM = 6.4516

# Program
puts "Enter the length of the room in feet:"
length = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

sf = length * width
in2 = sf * SF_TO_SI # in^2
cm2 = (in2 * SI_TO_SCM).round(2) # cm^2
  
puts "The area of the room is #{sf.round(2)} square feet, #{in2.round(2)} in^2 and #{cm2} cm^2"
    