# > Directions
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Examples:
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# > Understanding the problem
# Input:
#   -One array, containing x elements
# Output:
#   -Two arrays, nested in one array, each containing half the elements of the original array
#     -For arrays with an odd number of elements, the first array has one more element
#     -For empty arrays, returns two empty arrays
#     -New elements get added to the end of the array (so use <<?)
    
# > Algorithm
# -Create the empty nested array
# -Fill first nested array from arr using shift
# -Move to second array when first nested array >= arr.size
# -Return nested array

def halvsies(arr)
  nest = [[], []]
  current_arr = 0
  while arr.size > 0
    nest[current_arr].push(arr.shift)
    current_arr = 1 if nest[0].size >= arr.size
  end
  nest
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]