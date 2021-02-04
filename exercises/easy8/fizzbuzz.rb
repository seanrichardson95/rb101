# > Directions

# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# > Understanding the problem
# Input:
#   -Two arguments, integers
#     -A starting number
#     -An ending number
# Output:
#   -Print out all numbers between the two numbers (inclusive)
#     -Except if a number is divisible by 3, print "Fizz"
#     -If a number is divisible by 5, print "Buzz"
#     -If divisible by both 3 and 5, print "FizzBuzz"
#     -print ", " at beginning of each print statement. Except for first one
    
# Questions
#   -What if start number and end number are the same?
#   -What if start number is higher than end number? Still print?
#     -I think yes, but then we can't use #upto
    
# Algorithm:
#   -Create array of all numbers between start and end
#   -map fizz and buzz onto appropriate numbers
#     -Do this with % 3 and % 5 unless the number is 0
#   -print them out using: arr.each_with_index {|x, i| print x
#                             print ", " if i < arr.size - 1
#                           }

                          
def num_arr(first_num, last_num, range)
  towards_last_num = last_num <=> first_num
  arr = [first_num]
  while arr.size <= range
    first_num += towards_last_num
    arr << first_num
  end
  arr
end

def fizz_or_buzz(element)
  if element == 0
    0
  elsif element % 15 == 0
    "FizzBuzz"
  elsif element % 5 == 0
    "Buzz"
  elsif element % 3 == 0
    "Fizz"
  else
    element
  end
end

def fizzbuzz(first_num, last_num)
  arr = num_arr(first_num, last_num, (first_num-last_num).abs)
  arr.map! {|x| fizz_or_buzz(x)}
  arr.each_with_index {|x, i|
    print x
    print ", " if i < (arr.size - 1)
  }
end

fizzbuzz(1, 15)
print "\n\n"
fizzbuzz(15, 1)
print "\n\n"
fizzbuzz(5, -3)
print "\n\n"
fizzbuzz(3, 3)