SUITS = ['♤', '♡', '♧', '♢']
VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
           '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10, 'K' => 10,
           'A' => [1, 11] }
MAX_WINS = 5

def prompt(msg)
  puts "=> #{msg}"
  sleep(1.5)
end

def initialize_deck
  VALUES.keys.product(SUITS).shuffle
end

def deal!(deck, player_cards, dealer_cards)
  2.times do |_|
    player_cards << deck.shift
    dealer_cards << deck.shift
  end
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

def cards_string(cards_arr)
  suit_nums = cards_arr.map {|sub_arr| sub_arr.join("")}.flatten
  joinor(suit_nums, ', ', 'and')
end

def calculate_aces(score, amount_of_aces)
  while amount_of_aces > 0 && score > 21
    score -= 10
    amount_of_aces -= 1
  end
  score
end

def total(cards_arr)
  result = cards_arr.inject(0) do |sum, card|
    if card[0] == 'A'
      sum + 11
    else
      sum + VALUES[card[0]]
    end
  end
  amount_of_aces = cards_arr.flatten.count('A')
  calculate_aces(result, amount_of_aces)
end

def hit!(cards_arr, deck, player)
  cards_arr << deck.shift
  prompt "#{player} drew a #{cards_arr[-1].join('')}"
end

def valid_answer?(answer, criteria)
  criteria.include?(answer)
end

def busted?(score)
  score > 21
end

def detect_winner(player_total, dealer_total)
  if busted?(player_total)
    'the dealer'
  elsif busted?(dealer_total)
    'you'
  else
    player_total > dealer_total ? 'you' : 'the dealer'
  end
end

def display_winner(winner)
  if winner == 'you'
    prompt "Congratulations, #{winner} won!"
  else
    prompt "It looks like #{winner} won."
    prompt "Better luck next time!"
  end
end

def play_again?(message)
  answer = ''
  loop do
    prompt "Would you like to #{message}? (y/n)"
    answer = gets.chomp.downcase
    break if valid_answer?(answer, ['yes', 'no', 'y', 'n'])
    prompt "Please only input 'yes', 'y', 'no', or 'n'"
  end
  answer.downcase.start_with?('y') ? true : false
end

def end_display(player_total, dealer_total, scoreboard)
  winner = detect_winner(player_total, dealer_total)
  display_winner(winner)
  update_scoreboard!(winner, scoreboard)
  display_scoreboard(scoreboard)
end

def display_scoreboard(scoreboard)
  system 'clear'
  puts "=====-Scoreboard-====="
  puts "Player: " + scoreboard[:player].to_s + " wins"
  puts "Dealer: " + scoreboard[:dealer].to_s + " wins"
  sleep(2)
end

def initialize_scoreboard
  {player: 0, dealer: 0}
end

def update_scoreboard!(winner, scoreboard)
  if winner == 'you'
    scoreboard[:player] += 1
  elsif winner == 'the dealer'
    scoreboard[:dealer] += 1
  end
end

def how_many_to_win
  prompt "The first to #{MAX_WINS} wins is the ultimate winner!"
end

def game_over(scoreboard)
  if scoreboard[:player] == 5
    prompt "Congratulations! You are the ultimate winner!"
  elsif scoreboard[:dealer] == 5
    prompt "The dealer is the ultimate winner"
  end
  scoreboard = initialize_scoreboard
end

deck = initialize_deck
scoreboard = initialize_scoreboard

loop do
  system 'clear'
  # welcome_message
  # shuffles deck if deck has gotten below 50% of original size
  deck = initialize_deck if deck.size < 26
  
  player_cards = []
  dealer_cards = []
  deal!(deck, player_cards, dealer_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)
  
  play_again_message = "continue"
  
  # player turn
  loop do 
    system 'clear'
    puts "The dealer is showing a " + cards_string([dealer_cards[0]])
    puts "Your cards: " + cards_string(player_cards)
    puts "Your score: #{player_total}"
    prompt "Would you like to hit or stay?"
    answer = gets.chomp
    if valid_answer?(answer, ['stay', 'hit'])
      hit!(player_cards, deck, "You") if answer == 'hit'
      player_total = total(player_cards)
      break if answer == 'stay' || busted?(player_total)
    else
      prompt "Please only input 'stay' or 'hit'"
    end
  end
  
  if busted?(player_total)
    prompt "You busted!"
    end_display(player_total, dealer_total, scoreboard)
    if scoreboard.values.include?(5)
      game_over(scoreboard)
      play_again_message = "play again"
      scoreboard = initialize_scoreboard
    else
      how_many_to_win
    end
    break unless play_again?(play_again_message)
    next
  else
    prompt "You chose to stay!"
  end
  
  loop do
    system 'clear'
    puts "Your score is #{player_total}"
    puts "The dealer's cards: " + cards_string(dealer_cards)
    puts "The dealer's score: #{dealer_total}"
    sleep(2)
    answer = dealer_total >= 17 ? 'stay' : 'hit'
    break if answer == 'stay' || busted?(dealer_total)
    prompt "The dealer decided to hit!"
    hit!(dealer_cards, deck, "The dealer") if answer == 'hit'
    dealer_total = total(dealer_cards)
  end
  
  prompt "The dealer decided to stay" unless busted?(dealer_total)
  prompt "The dealer busted!" if busted?(dealer_total)
  sleep(2)
  
  end_display(player_total, dealer_total, scoreboard)
  if  scoreboard.values.include?(5)
    game_over(scoreboard)
    play_again_message = "play again"
    scoreboard = initialize_scoreboard
  else
    how_many_to_win
  end
  break unless play_again?(play_again_message)
end

prompt "Goodbye! Thanks for playing!"
