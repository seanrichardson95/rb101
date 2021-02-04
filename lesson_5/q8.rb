# > Directions
# Using the each method, write some code to output all of the vowels from the strings.
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each {|_, arr|
  arr.each {|word|
    word.chars {|char| print char if char.match?(/[aeiouAEIOU]/)}
  }
}
puts "\neuiooueoeeao"