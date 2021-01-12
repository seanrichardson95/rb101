# > Directions

# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# > Understanding the problem
# Input:
#   -Year
#   -The numbers other than the last two determine the century
# Output:
#   -Return the century number, plus the appropriate suffix
  
# Algorithm:
#   -Determine the century number by (num / 100) + 1
#   -In order to deal with years on the cusp of a century, subtract one from them
#     -((year-1) / 100) + 1
#     -The only way you'd get a negative, is if there's year 0, but that doesn't exist.
#   -Add suffix
#     -ends in 1 == st
#     -ends in 2 == nd
#     -3 == rd
#     -4 through 0 == th
#     -exceptions, 11th, 12th, 13th
#     -Make a rule for 11th through 13th. if cen_num.include?(11, 12, 13)
#     -Make suffix list
    # -Add the cen_num and the suffix together
    #   -Pick the correct suffix from suffix_list
    #   -If the last to characters is 1, 2, or 3
    #     -If the second to last character == 1, suffix_list(last_two_char)
    #     -Else suffix_list(last_char)
    
def century(year)
  cen_num = ((year-1) / 100 + 1).to_s
  suffix_list = {'1' => 'st', '2' => 'nd', '3' => 'rd'}
  if suffix_list.key?(cen_num[-1])
    if (cen_num.to_i > 10) && (cen_num[-2] == '1')
      suffix = 'th'
    else
      suffix = suffix_list[cen_num[-1]]
    end
  else
    suffix = 'th'
  end
  cen_num + suffix
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'                        