# > Directions
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# > Understanding the problem
# Input:
#   -String in '%02d:%02d' format
# Output:
#   -Number of minutes before midnight (for one)
#   -Number of minutes after midnight(for the other)
  
# Algorithm:
#   -Split the string into the hours and the minutes
#     -Use str.split(':')
#   -Turn those strings into integers with .to_i
#     -str.split(':').map {|time| time.to_i}
#   -Deal with edge cases of string at midnight
#     -Should I also deal with cases above 24 hours?
#     -I'm thinking hours % 24
#   -Turn the hours into minutes and add them together

HRS_PER_DAY = 24
MIN_PER_HR = 60
MIN_PER_DAY = HRS_PER_DAY * MIN_PER_HR
  
def before_midnight(time_str)
  hrs_and_mins = time_str.split(':').map {|time| time.to_i}
  total_min = ((hrs_and_mins[0] % HRS_PER_DAY) * MIN_PER_HR + hrs_and_mins[1])
  return 0 if total_min == 0
  MIN_PER_DAY - total_min
end

def after_midnight(time_str)
  hrs_and_mins = time_str.split(':').map {|time| time.to_i}
  (hrs_and_mins[0] % HRS_PER_DAY) * MIN_PER_HR + hrs_and_mins[1]
end
  
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0