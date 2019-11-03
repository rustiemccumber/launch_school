VALID_CHOICES = %w(r p sc l sp)

def prompt(message)
  Kernel.puts("=> #{message}")
end

WINNING_SCORE = 5

WINNING_MOVES = {
  'r' => ['sc', 'l'],
  'p' => ['r', 'sp'],
  'sc' => ['p', 'l'],
  'l' => ['sp', 'p'],
  'sp' => ['sc', 'r']
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

def clear_screen
  system("clear") || system("cls")
end

def display_score(score, player, computer)
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

def play_for_grand_winner(score, player, computer)
  if [:player] != WINNING_SCORE && [:computer] != WINNING_SCORE
    prompt("would you like to continue playing for grand winner? (y, n)")
  end
end
 
def game_over?(score, player, computer)
  score[:player] == WINNING_SCORE || score[:computer] == 5
end

def game_over_winner(score, player, computer)
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
continue_playing = ''
loop do
  welcome
  abbrv_key
  player_choice = gets_player_choice
  computer_choice = VALID_CHOICES.sample
  update_score(score, player_choice, computer_choice)
  display_score(score, player_choice, computer_choice)
  game_over_winner(score, player_choice, computer_choice)

  if game_over?(score, player_choice, computer_choice)
    break
  end

  play_for_grand_winner(score, player_choice, computer_choice)
  continue_playing = gets.chomp

  if continue_playing == 'y'
    clear_screen
  else
    break
  end
end
prompt("Thank you for playing")
