# >> Directions
# Create a hash that expresses the frequency with which each letter occurs in this string:
require 'pry'
statement = "The Flintstones Rock"

# ex:
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
letters = Hash.new(0)
statement.chars.each {|char|
  letters[char] += 1
}
p letters

# >> LS answer (mine was also correct tho)
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count 
  # statement.scan(letter) creates an array of that letter (ex. ["o", "o"] when letter = "o"). Then that array length is taken as the letter_frequency
  result[letter] = letter_frequency if letter_frequency > 0
end