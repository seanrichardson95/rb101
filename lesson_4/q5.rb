# >> Directions
# In the array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"
be_index = nil
flintstones.each_with_index {|name, i|
  if name[0,2] == "Be"
    be_index = i
  end
}
puts "The first name that starts with 'Be' is at index #{be_index}"