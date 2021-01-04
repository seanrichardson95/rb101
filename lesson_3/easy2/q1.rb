# > Directions

# In this hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present.

# Bonus: What are two other hash methods that would work just as well for this solution?

# > My answer:
puts ages.fetch("Spot", "Spot isn't here")

puts ages.has_key?("Spot")

puts ages.include?("Spot")

puts ages.key?("Spot")

puts ages.member?("Spot")