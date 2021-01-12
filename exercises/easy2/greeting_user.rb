# > Directions

# Write a program that will ask for user's name. The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

# Examples
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# > Understanding the problem

# Input:
#   -Name or Name!
  
# Output:
#   -Puts "Hello Name"
#   -or Puts "HELLO NAME. WHY ARE WE SCREAMING
  
# Algorithm:
#   -Ask for name
#   -Get name
#   -Check if last character of name is an exclamation point
#   -Output appropriate method.
  
# Test Cases
# "Bob"
# "Bob!"
# "Laura"
# "Laura!"

# def loud_if_screaming(str)
#   if str[-2] == "!"
#     return str.delete("!").upcase + " WHY ARE WE SCREAMING?"
#   else
#     str
#   end
# end

# print "What is your name? "
# name = gets.chomp
# puts loud_if_screaming("Hello #{name}.")

# > LS Answer Further explanation: Modify solution to use String#chomp! and String#chop!

print 'What is your name? '
name = gets
name.chomp!

if name[-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end