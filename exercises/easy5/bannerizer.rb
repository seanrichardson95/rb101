# > Directions
# Write a method that will take a short line of text, and print it within a box.

# Example:
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# > Understanding the problem
# Input:
#   -String
# Output:
#   -String within a banner
  
# Notes:
#   -Banner
#     -Line 1 = "+-" + "-"*str.size + "-+"
#     -Line 2 = "| " + " "*str.size + " |"
#     -Line 3 = "| " + str + " |"
#     -Line 4 = "| " + " "*str.size + " |"
#     -Line 5 = "+-" + "-"*str.size + "-+"
    
def print_in_box(str)
  puts "+-" + "-"*str.size + "-+"
  puts "| " + " "*str.size + " |"
  puts "| " + str + " |"
  puts "| " + " "*str.size + " |"
  puts "+-" + "-"*str.size + "-+"
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')