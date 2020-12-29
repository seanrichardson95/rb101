VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_CHOICES_SHORT = %w(r p sc l sp)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper'))
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def add_point?(wins, player, opponent)
  if win?(player, opponent)
    wins += 1
  else
    wins
  end
end

player_wins = 0
computer_wins = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("Short input options: r=rock, p=paper, sc=scissors")
    prompt("                     sp=spock, l=lizard")
    choice = Kernel.gets().chomp()
    
    if VALID_CHOICES_SHORT.include?(choice)  
      i = 0
      while i < VALID_CHOICES_SHORT.size
        if VALID_CHOICES_SHORT[i] == choice
          choice = VALID_CHOICES[i]
          break
        end
        i += 1
      end
    end
    
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = VALID_CHOICES.sample
  
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  
  display_result(choice, computer_choice)
  player_wins = add_point?(player_wins, choice, computer_choice)
  computer_wins = add_point?(computer_wins, computer_choice, choice)
  
  if player_wins == 5
    prompt("Congratulations! You are the grand champion!")
    break
  elsif computer_wins == 5
    prompt("The computer is the grand champion! Better luck next time!")
    break
  else
    prompt("You have #{player_wins} wins")
    prompt("The computer has #{computer_wins} wins")
    prompt("The first to 5 wins becomes the grand champion!")
  end
  
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing!")
