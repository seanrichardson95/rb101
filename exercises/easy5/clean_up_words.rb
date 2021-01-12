> Directions
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

Examples:
cleanup("---what's my +*& line?") == ' what s my line '

> Understanding the problem
Input:
  -String with random symbols in it
Output:
  -String with a space replacing the explitive
  -Only one space per chain of explitive
  
Algorithm:
  -Replace symbols with a space (use .ord, if > 90, replace with space)
  -Delete extra spaces
    -replace "  " with " "
  
def cleanup(str)
  replaced_explitives = str.chars.map {|char|
    char = char.ord < 65 ? ' ' : char
  }
  replaced_explitives.join().gsub
end