# Write a method that counts the number of occurrences of each element in a given array.

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Understanding the problem:

# Test Cases (other than the above):
# vehicles = ['car', 'car', 'truck', 'suv', 'SUV', 'suv', 'truck',  'motorcycle', 'motorcycle', 'car', 'truck', 'Car'] 
# car => 3
# truck => 3
# suv => 2
# SUV => 1
# Car => 1
# motorcycle => 2

# Input:
#   - Array of strings
# Output:
#   - Print how many occurences of each string appear
#   - Format: '{unique_string} => {num_of_occurances}'
# Data Structures:
#   - Each string is unique, so I should use a hash to capture all the strings, and then the value would be the num of occurences
#   - Can use the hash to print out the occurences
  
# Algorithm:
#   - Iterate through the array, if it's a new string, create a new key in a hash with a value of 1.
#   - If it's not a new string, add 1 to the key's value.

def count_occurrences(arr)
  occurences = Hash.new(0)
  arr.map! {|string| string.downcase} #added this line for the Further Explanation, where the method isn't case sensitive.
  arr.each {|vehicle| occurences[vehicle] += 1}
  
  occurences.each {|k, v| puts "#{k} => #{v}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

vehicles = ['car', 'car', 'truck', 'suv', 'SUV', 'suv', 'truck',  'motorcycle', 'motorcycle', 'car', 'truck', 'Car'] 

count_occurrences(vehicles)
  