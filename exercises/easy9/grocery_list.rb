# > Directions
# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Example:
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]
  
# Input:
# -Nested array
#   -each subarray contains a fruit (string) and its quantity (integer)
# Output:
# -Array
#   -Has correct number of fruit
  
# Algorithm:
#   -Create empty fruit array
#   -Using #each, iterate through each subarray
#   -Using quantity.times, add fruit to fruit array
#   -Return fruit array

def buy_fruit(grocery_list)
  fruits = []
  grocery_list.each {|list|
    fruit, quantity = list[0], list[1]
    quantity.times {|_| fruits << fruit}
  }
  fruits
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]