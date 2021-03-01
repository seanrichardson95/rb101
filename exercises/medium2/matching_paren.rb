# > Directions

# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Examples:
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false


# Algorithm:
# -create counter, that counts up one if '(' and down one if ')'
# -if counter == -1, return false
# -if at end of iterating through string, counter == 0, return true, otherwise return false

def balanced?(str)
  paren_status = 0
  str.chars.each { |char| 
    paren_status += 1 if char == '('
    paren_status -= 1 if char == ')'
    return false if paren_status < 0  
  }
  paren_status == 0 ? true : false
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false