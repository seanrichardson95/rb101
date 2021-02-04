# > Directions

# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

# Example:
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# > Understanding the Problem
# Input:
#   -Array, name
#   -Hash, title and occupation
# Output:
#   -A greeting that uses the person's full name, and mentions their title and occupation
  
def greetings(name_arr, job)
  first = name_arr[0]
  m_initial = name_arr[1]
  last = name_arr[2]
  puts "Hello, #{first} #{m_initial} #{last}, Nice to have a #{job[:title]} #{job[:occupation]} here"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })