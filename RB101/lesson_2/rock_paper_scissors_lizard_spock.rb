VALID_CHOICES = %w(r p sc l sp)

def prompt(message)
  puts("=> #{message}")
end

WINNING_SCORE = 5

WINNING_MOVES = {
  'r' => ['sc', 'l'],
  'p' => ['r', 'sp'],
  'sc' => ['p', 'l'],
  'l' => ['sp', 'p'],
  'sp' => ['sc', 'r']
}

VALID_CONTINUE_PLAYING_RESPONSE = ['y', 'n', 'no', 'yes']

ABBRV_HASH = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

def abbrv_key
  key = <<-KEY
  r..........rock        l........lizard
  p..........paper       sp.......spock
  sc.........scissors

  KEY

  puts key
end

def welcome
  puts "********************************************"
  puts ""
  puts "welcome to rock, paper, scissor lizard spock"
  puts ""
  puts "********************************************"
  puts ""
  puts "the first player to score #{WINNING_SCORE} points is the grand winner!"
  puts ""
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
end

def display_choice(player, computer)
  prompt("you chose #{ABBRV_HASH[player]} computer chose #{ABBRV_HASH[computer]}")
end

def intermediate_winner(player, computer)
  if win?(player, computer)
    prompt("You win this round!")
  elsif win?(computer, player)
    prompt("You lost this round!")
  else
    prompt("OMG! It was a tie!")
  end
end

def clear_screen
  system("clear") || system("cls")
end

def display_score(score)
  displaying_score = <<-DSSC
   player score : #{score[:player]}
   computer score: #{score[:computer]}
   tie: #{score[:tie]}
   DSSC

  puts displaying_score
end

def update_score(score, player, computer)
  if win?(player, computer)
    score[:player] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  else
    score[:tie] += 1
  end
end

def gets_player_choice
  player_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player_choice = gets.chomp
    if VALID_CHOICES.include?(player_choice)
      break
    else
      prompt("that's not a valid choice")
    end
  end
  player_choice
end

def play_for_grand_winner_response?
  continue_playing = ''
  loop do
    prompt("would you like to continue playing for grand winner? (y)es/(n)o")
    continue_playing = gets.chomp.downcase
    if VALID_CONTINUE_PLAYING_RESPONSE.include?(continue_playing)
      break
    else
      puts "not a valid response. please enter (y)es/(n)o."
    end
  end
  continue_playing.start_with?('y')
end

def game_over?(score)
  score[:player] == WINNING_SCORE || score[:computer] == WINNING_SCORE
end

def game_over_winner(score)
  if score[:player] == WINNING_SCORE
    prompt("you are the grand winner")
  elsif score[:computer] == WINNING_SCORE
    prompt("you are the grand LOSER!")
  end
end

score = {
  player: 0,
  computer: 0,
  tie: 0
}

loop do
  welcome
  abbrv_key
  player_choice = gets_player_choice
  computer_choice = VALID_CHOICES.sample
  display_choice(player_choice, computer_choice)
  intermediate_winner(player_choice, computer_choice)
  update_score(score, player_choice, computer_choice)
  display_score(score)
  game_over_winner(score)
  break if game_over?(score)
  break unless play_for_grand_winner_response?
  clear_screen
end

prompt("Thank you for playing")
