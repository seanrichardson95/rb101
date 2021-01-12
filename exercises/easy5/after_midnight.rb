# > Directions
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# > Understanding the problem
# Input:
#   -Positive or negative integer
# Output:
#   -String representing time in (hh:mm) format
  
# Notes:
#   -1440 minutes in a day
#     -So first we should reduce integer to something less than 1440.
#   -We should get the amount of hours and amount of minutes
#     -Then, depending on - or +, add from 00:00 or subtract from 24:00
  
# Algorithm:
#   -SET min_of_day = int.abs - 1440 * (int.abs / 1440)
#   -SET hr, min = min_of_day.divmod(60)
#   -SET time_hr = int < 0 ? 24 - hr - 1 : 0 + hr
#   -SET time_min = int < 0 ? 60 - min : 0 + min
#     -Somehow get it so there's a 0 in front of single digit numbers or 00 for 0.
# #   -RETURN "#{time_hr}:#{time_min}"
# require 'pry'

# def two_digits(num)
#   '%02d' % num
# end
  
# def time_of_day(int)
#   min_of_day = int.abs - 1440 * (int.abs / 1440)
#   hr, min = min_of_day.divmod(60)
#   hr += 1 if min > 0 && int < 0
#   time_hr = int < 0 ? two_digits(24-hr) : two_digits(hr)
#   time_min = int < 0 ? two_digits(60-min) : two_digits(min)
#   # binding.pry
#   time_hr + ":" + time_min
# end

# puts time_of_day(0) == "00:00"
# puts time_of_day(-3) == "23:57"
# puts time_of_day(35) == "00:35"
# puts time_of_day(-1437) == "00:03"
# puts time_of_day(3000) == "02:00"
# puts time_of_day(800) == "13:20"
# puts time_of_day(-4231) == "01:29"

# > LS answer

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# > Further exploration
# How would you approach this problem if you were allowed to use ruby's Date and Time classes? Suppose you also needed to consider the day of week? (Assume that delta_minutes is the number of minutes before or after midnight between Saturday and Sunday; in such a method, a delta_minutes value of -4231 would need to produce a return value of Thursday 01:29.)

# require 'date'

DAYS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
def time_of_day(mins)
  hr, minutes = (mins%1440).divmod(60)
  '%s %02d:%02d' %[DAYS[(mins/1440)%7], hr, minutes]
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)