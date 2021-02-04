# > Directions
# How would you order this array of number strings by descending numeric value?
arr = ['10', '11', '9', '7', '8']
sorted_arr = arr.sort {|num_a, num_b|
  num_b.to_i <=> num_a.to_i
}
p sorted_arr

sorted_arr2 = arr.sort_by {|num|
  num.to_i * -1
}
p sorted_arr2