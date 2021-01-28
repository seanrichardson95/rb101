# >> Directions

# Given the array below
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flint_hash = {}
flintstones.each_with_index {|name, i|
  flint_hash[name] = i
}

p flint_hash