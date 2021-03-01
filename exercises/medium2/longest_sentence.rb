# > Directions

# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

# Example text:

# Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.

# The longest sentence in the above text is the last sentence; it is 86 words long. (Note that each -- counts as a word.)

# > Understanding the problem
# Input:
#   -A txt file
# Output:
#   -Print the longest sentence, based on the number of words
#   -Print the number of words in the longest sentence.
  
# Rules:
# -Sentences may end with: ['.', '!', '?']
# -Any sequence of characters that are not spaces or sentence ending characters, are words
# -New line characters are included in txt file. These should be translated to spaces

# Questions
# -what happens when there's multiple ending characters in a row? like (...)
# -what about words than span two lines, like with a hyphen?
# -What if there are two longest sentences of the same size?
# -Should we include the ending punctuation?

# Algorithm:
# -Read a txt file and save it as whole_txt String
# -Split string into array called sentences
#   -Split the strings on basis of ending characters
# -Initiazle longest_sentence and word_count
# -In an each loop
#   -Count the number of words in each sentence
#   -If the words in each sentence is the longest, save the sentence as longest_sentence, save the count as word_count
# (alternate solution)
#   -Find the max word count
#   -Find the index of the sentence with that word count
  
# -Puts, the longest sentence has {word_count} words in it.
# -puts "Here is the longest sentence"
# -p longest_sentence

SENTENCE_ENDS = ['.', '?', '!']

def format_txt(txt)
  txt.gsub("\n", " ")
end

def find_longest_sentence(sentences)
  longest_sentence = ""
  longest_word_count = 0
  sentences.each {|sentence|
    word_count = sentence.split.size
    if longest_word_count < word_count
      longest_sentence = sentence
      longest_word_count = word_count
    end
  }
  return longest_sentence, longest_word_count
end

file = File.open("practice_str.txt")
# file = File.open("four_score.txt")
txt = file.read
txt_str = format_txt(txt)
sentences = txt_str.split(/[.?!]/)
longest_sentence, longest_word_count = find_longest_sentence(sentences)
puts "The longest sentence in the text has #{longest_word_count} words in it."
puts "The longest sentence is:"
p longest_sentence
puts sentences.size



# txt = file.read
# practice_str = format_txt(txt)