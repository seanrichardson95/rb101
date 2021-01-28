# > Directions
# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# > P
# Input: 
#   -float, representing an angle
# Output:
#   -String, representing the angle
#     -In degrees (°), "\xC2\xB0"
#     -Minutes (')
#     -Seconds (")
    
# Rules:
# -A degree has 60 minutes, a minute has 60 seconds
# -Minutes and seconds should be formatted with a 0 first
# -Degrees, minutes, and seconds should be integers

# -Degrees = (float % 360).floor
# -Minutes = ((float - float.floor)*60).to_i
# -Seconds = ((((float - float.floor)*60) - ((float - float.floor)*60).floor)*60).to_i

# Format the minutes and seconds with: '%02d' % minutes

# Questions:
# What about floats bigger than 360?
#   -I think reduce it to 0 after 360

# > E
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# > A
# -Save degrees as: float % 360
# -Save minutes as: float % 1 * 60
# -Save seconds as: minutes % 1 * 60
# -Put together with the string, formatted properly

# >C
def dms(float)
  degrees = (float % 360).floor.to_i
  minutes = ((float - float.floor)*60).to_i
  seconds = ((((float - float.floor)*60) - ((float - float.floor)*60).floor)*60).to_i
  return degrees.to_s + "°" + ('%02d' % minutes.to_s) + "'" + ('%02d' % seconds.to_s) + "\""
end

puts dms(30) == %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")