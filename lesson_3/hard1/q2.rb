# > Directions

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# > My answer

# I believe the last line will print {:a=>"hi"}

# Informal greeting is pointing to a new object created on line 6, not the hash element itself

# > LS answer

# The output is {:a=>"hi there"}. The reason is because informal_greeting is a reference to the original object.
# The line informal_greeting << ' there' was using the String#<< method, which modifies the object that called it.
# This means that the original object was changed, thereby impacting the value in greetings. 
# If instead of modifying the original object, we wanted to only modify informal_greeting but not greetings, 
# there are a couple of options:

# we could initialize informal_greeting with a reference to a new object containing the same value by informal_greeting = greetings[:a].clone.
# we can use string concatenation, informal_greeting = informal_greeting + ' there', which returns a new String object instead of modifying the original object.