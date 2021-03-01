# > Directions
# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# Examples
# diamond(1)

# *

# diamond(3)

# *
# ***
# *
 
# diamond(9)

#     *
#   ***
#   *****
# *******
# *********
# *******
#   *****
#   ***
#     *
    
    
# > Understanding the problem
# Input:
#   - Integer, odd
# Output:
#   -Print a diamond of *
#     -At the top and bottom, it's 1 * in the middle
#     -At it's middle, it's n *

# Algorithm:
# -puts ""
# -puts top_diamond
# -puts '*' * n
# -puts bottom_diamond

# Algorithm: top_diamond(n)
# -spaces_per_side = n/2
# -stars_per_line = 1
# while spaces_per_side > 0
#   -puts " " * spaces_per_side + "*" * stars_per_line + " " * spaces_per_side
#   -spaces_per_side -= 1
#   -stars_per_line += 2
  
# Algorithm: bottom_diamond(n)
# -spaces_per_side = 1
# -stars_per_line = n - 2
# while stars_per_line > 0
#   -puts " " * spaces_per_side + "*" * stars_per_line + " " * spaces_per_side
#   -spaces_per_side += 1
#   -stars_per_line -= 2

def top_diamond(n)
  spaces_per_side = n/2
  stars_per_line = 1
  while spaces_per_side > 0
    puts " " * spaces_per_side + "*" * stars_per_line + " " * spaces_per_side
    spaces_per_side -= 1
    stars_per_line += 2
  end
end

def bottom_diamond(n)
  spaces_per_side = 1
  stars_per_line = n - 2
  while stars_per_line > 0
    puts " " * spaces_per_side + "*" * stars_per_line + " " * spaces_per_side
    spaces_per_side += 1
    stars_per_line -= 2
  end
end

def diamond(n)
  puts ""
  top_diamond(n) if n > 1
  puts "*" * n
  bottom_diamond(n) if n > 1
end

diamond(3)
diamond(1)
diamond(9)