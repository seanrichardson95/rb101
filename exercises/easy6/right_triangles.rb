# > Directions

# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:
# triangle(5)

#     *
#   **
#   ***
# ****
# *****

# triangle(9)

#         *
#       **
#       ***
#     ****
#     *****
#   ******
#   *******
# ********
# *********

# > Algorithm
# -Use a loop to print
#   -rjust num - 1 + "*"*1
#   -rjust num - 2 + "*"*2
  
def triangle(num)
  num.times {|x| puts " ".rjust(num - 1 - x) + "*"*(x+1)}
end

triangle(3)