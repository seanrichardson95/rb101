# > Directions

# Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

# n : Place a value n in the "register". Do not modify the stack.
# PUSH : Push the register value on to the stack. Leave the value in the register
# ADD : Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB : Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT : Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV : Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD : Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP : Remove the topmost item from the stack and place in register
# PRINT : Print the register value

# All operations are integer operations (which is only important with DIV and MOD).

# Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

# You should initialize the register to 0.

# Example:
# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

# > Understanding the problem
# Input:
#   -String of commands
#     -Each command is seperated by a space
# Output:
#   -Whatever the commands say to do.
#   -Nothing printed if no print command
  
# Rules:
# -Register initializes at 0
# -Register is the current value
# -Stack is initialized as an empty array
# -Operations that require two values pop the topmost item from the stack
#   -topmost = most recently pushed value
#   -they perform the operation using the popped value and the register value
#   -the result is stored in the register
#     -register = 0, stack = [5], 'ADD' => register += stack.pop

# Algorithm:
# -Split string into an array of commands
# -Iterate through the array, using a case statement, where each case is a different command
# -Each submethod should take the variable in the register


def minilang(str)
  puts "~~~~~~~~"
  register, stack = 0, []
  str.split.each do |command|
    if command == command.to_i.to_s # n command
      register = command.to_i
    elsif command == 'PUSH'
      stack.push(register)
    elsif command == 'ADD'
      register += stack.pop
    elsif command == 'SUB'
      register -= stack.pop
    elsif command == 'MULT'
      register *= stack.pop
    elsif command == 'DIV'
      register /= stack.pop
    elsif command == 'MOD'
      register %= stack.pop
    elsif command == 'POP'
      register = stack.pop
    elsif command == 'PRINT'
      puts register
    else
      puts "I'm sorry, #{command} is not a valid command"
    end
  end
end

# minilang('PRINT')
# minilang('5 PUSH 3 MULT PRINT')
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# minilang('5 PUSH POP PRINT')
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# minilang('-3 PUSH 5 SUB PRINT')
# minilang('6 PUSH')

minilang('3 PUSH 5 MOD PUSH 4 PUSH 5 MULT PUSH 7 PUSH 3 SUB ADD DIV PRINT')