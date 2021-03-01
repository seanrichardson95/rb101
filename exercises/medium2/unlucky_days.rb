# > Understanding the problem
# Input:
#   -year, integer
# Output:
#   -Number of friday the 13ths in that year
  
# Algorithm:
# -Check how many 13ths of the month are on friday using something in date
# -Cycle through each 13th of the month, add one if the day of week is friday

# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

require 'date'

def friday_13th(year)
  fridays = 0
  1.upto(12) {|month|
    fridays += 1 if Date.new(year, month, 13).friday?
  }
  fridays
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2