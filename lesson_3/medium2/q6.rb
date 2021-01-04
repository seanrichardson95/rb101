# > Directions

# How could the unnecessary duplication in this method be removed?

# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

# > My answer

# Use a ternary

def color_valid(color)
  color == "blue" || color == "green" ? true : false
end

# Test it
puts color_valid("blue")
puts color_valid("green")
puts color_valid("black")

# > LS answer
def color_valid(color)
  color == "blue" || color == "green"
end
  
# Ternary is unnecessary if the answers are just going to be true and false, duh
