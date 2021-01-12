# > Directions
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# > Understanding the problem
# Input:
#   -Integer greater than 1
# Output:
#   -Sum of multiples of three and 5
  
# Algorithm:
#   -Create empty array
#   -Use num.times {|x| arr.push(x) if (x % 3 == 0 || x % 5 == 0)}
#   -Return arr.inject(:+) 

def multisum(num)
  arr = []
  num.times {|x| arr.push(x+1) if ((x+1) % 3 == 0 || (x+1) % 5 == 0)}
  arr.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168