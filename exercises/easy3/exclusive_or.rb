# > Directions

# The || operator returns a truthy value if either or both of its operands are truthy,
# a falsey value if both operands are falsey. The && operator returns a truthy value if
# both of its operands are truthy, and a falsey value if either operand is falsey.
# This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a function named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise. 
# Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

# Examples:
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

# > Understanding the problem

# Input:
#   -Two boolean values
# Output:
#   -true if only one of the inputs is false, false otherwise

# Algorithm:
#   -If bool1 && bool2 == false, and bool1 || bool2 == true, then xor == true, false otherwise
  
def xor?(bool1, bool2)
  !(bool1 && bool2) && (bool1 || bool2)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

# > Further Exploration

# Can you think of a situation in which a boolean xor method would be useful? Suppose you were modeling a light at the top of a flight of stairs wired in such a way that the light can be turned on or off using either the switch at the bottom of the stairs or the switch at the top of the stairs. This is an xor configuration, and it can be modeled in ruby using the xor method. Think of some additional examples.

# || and && are so-called short circuit operators in that the second operand is not evaluated if its value is not needed. Does the xor method perform short-circuit evaluation of its operands? Why or why not? Does short-circuit evaluation in xor operations even make sense?

# > My answer

# A boolean xor would be useful when making a survey asking for one of two different options. They wouldn't be allowed to go to the next question without choosing one of them.

# xor does not short-circuit. It has to in order to determine if its true or false, since it's an and gate and an or gate.