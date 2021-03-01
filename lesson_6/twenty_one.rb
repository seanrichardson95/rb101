# > Directions
# Figure out a data structure to contain the "deck" and the "player's cards" and "dealer's cards". Maybe a hash? An array? A nested array? Your decision will have consequences throughout your code, but don't be afraid of choosing the wrong one. Play around with an idea, and see how far you can push it. If it doesn't work, back out of it.

# Deck: Use an array, since order matters. Only initialize new deck when the size is below 50% of original size (26)

# Player's and dealer's cards, use a hash

# Algorithm to create deck:
# -Have a contant hash that contains the values of all the cards called CARDS
# -Create an empty array that will contain the deck
# -copy each key of CARDS to new array, where each one is copied 4 times
# -Shuffle deck

# Algorithm to calculate score:
  # -Create amount_of_aces variable
  # -Add together the cards using CARDS[card]
  # -If it's an ace, use CARDS[card][1]
  # WHILE score > 21 and amount_of_aces > 0
  #   -subtract 10, subtract amount_of_aces
 

# Algorithm to calculate ace:
# -Read the hand
# -Find how many aces are in the hand
# -
require 'pry'

CARDS = {'2'=>2,'3'=>3,'4'=>4,'5'=>5,'6'=>6,'7'=>7,'8'=>8, '9'=>9,
        '10'=>10, 'Jack'=>10, 'Queen'=>10, 'King'=>10, 'Ace'=>[1, 11]}
STAY_OR_HIT = ["stay", "hit"]
YES_NO = ["yes", "no", "y", "n"]

def prompt(msg)
  puts "=> " + msg
end

def new_shuffled_deck
  deck = []
  CARDS.keys.each {|card| 
    4.times {|_| deck << card}
  }
  deck.shuffle!
end

def deal!(deck, hands)
  2.times {|_|
    hands[:you][:cards] << deck.shift
    hands[:dealer][:cards] << deck.shift
  }
end

def calculate_aces(points, amount_of_aces)
  while amount_of_aces > 0 && points > 21
      points -= 10
      amount_of_aces -= 1
  end
  points
end

def calculate_scores!(hands)
  hands.each_value {|attributes|
    points = attributes[:cards].inject(0) {|sum, card|
      if card == 'Ace'
        sum + CARDS[card][1]
      else
        sum + CARDS[card]
      end
    }
    points = calculate_aces(points, attributes[:cards].count("Ace"))
    attributes[:score] = points
  }
end

def hit!(hands, current_player, deck)
  hands[current_player][:cards] << deck.shift
  puts "A #{hands[current_player][:cards][-1]} was drawn!"
  sleep(1.5)
  binding.pry
  calculate_scores!(hands)
end

def busted?(score)
  score > 21
end

def joinor(array, delimiter = ', ', joiner = 'or')
  case array.size
  when 0 then ''
  when 1 then array[0].to_s
  when 2 then "#{array[0]} #{joiner} #{array[1]}"
  else
    array[-1] = "#{joiner} #{array[-1]}"
    array.join(delimiter)
  end
end

def valid_answer?(answer, criteria)
  criteria.include?(answer)
end

def detect_winner(hands)
  if busted?(hands[:you][:score])
    'the dealer'
  elsif busted?(hands[:dealer][:score])
    'you'
  else
    hands[:you][:score] > hands[:dealer][:score] ? 'you' : 'the dealer'
  end
end

def display_winner(winner)
  if winner == 'you'
    puts "Congratulations, #{winner} won!"
  else
    puts "It looks like #{winner} won."
    puts "Better luck next time!"
  end
end

def play_again?
  answer = ''
  loop do
    prompt "Would you like to play again? (y/n)"
    answer = gets.chomp.downcase
    break if valid_answer?(answer, YES_NO)
    prompt "Please only input: #{joinor(YES_NO)}"
  end
  answer.start_with?('y') ? true : false
end

def welcome_message
  puts "Welcome to Twenty One!"
  sleep(1.5)
end

loop do
  system 'clear'
  welcome_message
  # initialize deck, hands, and current scores.
  deck = new_shuffled_deck
  hands = {you: {cards: []}, dealer: {cards: []}}
  deal!(deck, hands)

  calculate_scores!(hands)

  answer = nil
  # player turn
  loop do
    system 'clear'
    puts "Your cards are #{joinor(hands[:you][:cards], delimiter=', ', joiner="and")}"
    puts "Your score is #{hands[:you][:score]}"
    puts "The dealer's cards are #{hands[:dealer][:cards][0]} and unknown"
    prompt "Would you like to hit or stay?"
    answer = gets.chomp
    if valid_answer?(answer, STAY_OR_HIT)
      hit!(hands, :you, deck) if answer == 'hit'
      break if answer == 'stay' || busted?(hands[:you][:score])
    else
      prompt "Please only input: '#{STAY_OR_HIT[0]}' or '#{STAY_OR_HIT[1]}'"# the busted? method is not shown
    end
  end
  
  if busted?(hands[:you][:score])
    puts "You busted!"
    break unless play_again?
  else
    puts "You chose to stay!"  # if player didn't bust, must have stayed to get here
  end
  
  loop do
    answer = hands[:dealer][:score] >= 17 ? 'stay' : 'hit'
    puts "The dealer's score is #{hands[:dealer][:score]}"
    break if answer == 'stay' || busted?(hands[:dealer][:score])
    puts "The dealer decided to hit!"
    hit!(hands, :dealer, deck) if answer == 'hit'
  end
  
  winner = detect_winner(hands)
  display_winner(winner)
  
  break unless play_again?
end

prompt "Goodbye! Thanks for playing!"