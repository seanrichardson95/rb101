# > Directions

# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a character.

# input:
# Please write word or multiple words: walk
# output:
# There are 4 characters in "walk".
# input:
# Please write word or multiple words: walk, don't run
# output:
# There are 13 characters in "walk, don't run".

print "Please write a word or multiple words: "
words = gets.chomp
chars_no_spaces = words.chars.select {|char| char != " "}
puts "There are #{chars_no_spaces.length} in \"#{words}\"."