# > Directions

# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# > Understanding the problem
# Input:
#   -Integer, n
#     -Represents number of switches
#     -Represents the number of iterations
    
# Output:
#   -Array, which lights are on after n repetitions
  
# Rules:
# -All lights start turned off
# -At end of first round, they are all turned on!
# -Lights are indexed starting at 1

# Data Structure:
# -Use an array of booleans to represent the lights
#   -true means the light is on
#   -false means the light is off

# Algorithm:
# -Create array of size n, with each value as false, called lights
# -SET iterator = 1
# -Inside a while loop, while iterator <= n
#   -SET switch_index = iterator - 1 # the first index switched
#     while switch_index <= n - 1
#     -lights[switch_index] = !lights[switch_index]
#     -switch_index += iterator
#     end
#   -iterator += 1
#   end
# -Find the indices that are true

# mutates light array to have the on and off positions
def flip_switches!(lights, n)
  iterator = 1
  while iterator <= n
    switch_index = iterator - 1 # the first index switched
    while switch_index <= n - 1 # because the last index is n - 1
      lights[switch_index] = !lights[switch_index]
      switch_index += iterator
    end
    iterator += 1
  end
end

def one_thousand_lights(n)
  lights = Array.new(n, false) # all lights start as false, aka 'off'
  flip_switches!(lights, n)
  
  lights_on = []
  lights.each_with_index { |light, i| lights_on.push(i + 1) if light }
  lights_on
end
  
p one_thousand_lights(5)
p one_thousand_lights(3)
p one_thousand_lights(1)
p one_thousand_lights(1000)