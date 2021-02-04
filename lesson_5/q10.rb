# > Directions

# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.
og = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
add_one = []
og.each {|hsh|
  one_more = {}
  hsh.each {|k, v|
    one_more[k] = v + 1
  }
  add_one << one_more
}
p og
p add_one

# > LS answer
# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   incremented_hash
# end

# Pretty similar to what I did tbh
# Here map is iterating through the array. On each iteration it is creating a new hash (incremented_hash) and then iterating through the hsh object for that iteration in order to add key-value pairs to this hash using the original keys but values incremented by 1. The outer block then returns this incremented_hash to map which uses it to transform each element in the array.