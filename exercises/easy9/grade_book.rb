# > Directions
# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

# Example:
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

# > Understanding the problem
# Input:
#   -Three integers
# Output:
#   -Their average, translated to a grade

def get_grade(one, two, three)
  avg = (one + two + three)/ 3
  case avg
  when 0..59 then "F"
  when 60..69 then "D"
  when 70..79 then "C"
  when 80..89 then "B"
  when 90..100 then "A"
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
  