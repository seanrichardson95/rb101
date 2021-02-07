INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST = 'Choose'
BEST_SQUARE = 5
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

require 'pry'

def prompt(msg)
  puts "=> " + msg
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. The Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_squares(brd)
  brd.keys.select {|num| brd[num] == INITIAL_MARKER}
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp
    square = square.to_i.to_f == square.to_f ? square.to_i : nil
    break if empty_squares(brd).include?(square)
    puts "Sorry, that's not a valid choice"
  end
    
  brd[square] = PLAYER_MARKER
end

def at_risk_square(brd, marker)
  other_marker = marker == PLAYER_MARKER ? COMPUTER_MARKER : PLAYER_MARKER
  WINNING_LINES.each do |line|
    if (brd.values_at(*line).count(marker) == 2) &&
       (brd.values_at(*line).count(other_marker) != 1)
      return brd.select {|sq, val| line.include?(sq) && val == " "}.keys[0]
    end
  end
  nil
end

# rubocop: disable Layout/LineLength
def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  square = BEST_SQUARE if brd[BEST_SQUARE] == ' '
  # I know rubocop thinks these lines are too long, but I like the way they look
  square = at_risk_square(brd, PLAYER_MARKER) if !!at_risk_square(brd, PLAYER_MARKER)
  square = at_risk_square(brd, COMPUTER_MARKER) if !!at_risk_square(brd, COMPUTER_MARKER)
  brd[square] = COMPUTER_MARKER
end
# rubocop: enable Layout/LineLength

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd) # !! forcibly turns this value into a boolean
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_score!(scoreboard, winner)
  scoreboard[winner.downcase.to_sym] += 1
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

def choose_first
  system 'clear'
  loop do
    prompt "You get to choose who goes first"
    prompt "Type '1' for 'Player' and type '2' for 'Computer'"
    answer = gets.chomp
    goes_first = answer == '2' ? 'Computer' : 'Player'
    return goes_first if answer == '1' || answer == '2'
    puts "I'm sorry, please enter a valid response."
  end
end

def initialize_scoreboard(scoreboard)
  {player: 0, computer: 0}
end

def place_piece!(board, current_player)
  if current_player == 'Player'
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  current_player == 'Player' ? 'Computer' : 'Player'
end

def gameplay_loop(brd, current_player)
  loop do
    display_board(brd)
    place_piece!(brd, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(brd) || board_full?(brd)
  end
end

def play_again?
  valid_answers = %w(y n yes no)
  answer = ''
  loop do
    prompt "Would you like to play again? (y/n)"
    answer = gets.chomp.downcase
    break if valid_answers.include?(answer)
    puts "Only 'yes', 'y', 'no', and 'n' are valid answers"
  end
  answer.start_with?('y') ? true : false
end

scoreboard = {}
# main loop
loop do
  system 'clear'

  scoreboard = initialize_scoreboard(scoreboard)

  # new game loop
  loop do                         
    board = initialize_board
    current_player = FIRST
    current_player = choose_first if FIRST == 'Choose'

    gameplay_loop(board, current_player)
    
    display_board(board)
    
    if someone_won?(board)
      winner = detect_winner(board)
      prompt "#{winner} won!"
      update_score!(scoreboard, winner)
    else
      prompt "It's a tie!"
    end
    
    prompt "The Computer has #{scoreboard[:computer]} win(s)"
    prompt "You have #{scoreboard[:player]} win(s)"
    
    if scoreboard.values.any? {|wins| wins == 5}
      prompt "#{winner} wins the series!"
      break
    else
      prompt "The first to 5 wins the series!"
      prompt "Hit 'enter' to continue to the next game."
      gets
    end
    
  end
  
  repeat_loop = play_again?
  break unless repeat_loop
end

prompt "Thanks for playing tic tac toe! Goodbye"
