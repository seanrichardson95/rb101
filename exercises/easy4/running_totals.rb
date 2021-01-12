# > Directions
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# Examples:
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# > Understanding the problem
# Input:
#   -Array of numbers
# Output:
#   -Array, with same number of elements as input array
#     -Each element has running total from original array.
    
# Algorithm:
#   -Create empty result array
#   -Use input.each. Have a running total. at end of loop
#     add running total to running total array.
    
# def running_total(num_arr)
#   results = []
#   total = 0
#   num_arr.each {|x|
#     total += x
#     results.push(total)
#   }
#   results
# end

# puts running_total([2, 5, 13]) == [2, 7, 20]
# puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# puts running_total([3]) == [3]
# puts running_total([]) == []

# > Further Exploration
# Try solving this problem using Enumerable#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays).

def running_total(num_arr)
  num_arr.each_with_object([]) {|x, results|
    results << (x + results.last.to_i)
  }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []