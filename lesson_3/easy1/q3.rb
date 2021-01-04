# > Directions

# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

words = advice.split()
words.map! {|word|
  if word == "important"
    word = "urgent"
  else
    word = word
  end
}

advice = words.join(' ')
puts advice

# > LS Answer:
# advice.gsub!('important', 'urgent')