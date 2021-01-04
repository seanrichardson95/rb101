# > Directions

# Programmatically determine if 42 lies between 10 and 100.
# hint: Use Ruby's range object in your solution.

# > My answer

low_end = 10
high_end = 100
num = 42

if (low_end..high_end).cover?(num)
  puts "#{num} lies between #{low_end} and #{high_end}"
else
  puts "#{num} does not lie between #{low_end} and #{high_end}"
end