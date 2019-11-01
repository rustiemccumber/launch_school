
VALID_CHOICES = %w(rock paper scissors lizard spock)
WINNING_SCORE = 5
WINNING_MOVES = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}


def prompt(message)
  Kernel.puts("=> #{message}")
end

def greet(win_score)
  prompt("first person to #{win_score} wins.")
end 

def abrv_key 
  key = <<-KEY
    rock.........r
    paper........p
    scissors.....sc
    lizard.......l
    spock........sp
  KEY

  puts key

end 


def abbreviations(weapon)
  if weapon == ('r' || 'rock')
    weapon = 'rock'
  elsif weapon == ('p' || 'paper')
    weapon = 'paper' 
  elsif weapon == ('sc' || 'scissors')
    weapon = 'scissors'
  elsif weapon == ('l' || 'lizard')
    weapon = 'lizard' 
  else weapon == ('sp' || 'spock')
    weapon = 'spock'  
  end 
end 




def win?(first, second)

  WINNING_MOVES[first].include?(second)

end


def display_result(player, computer)

  if win?(player, computer)
    prompt('You won this round!')
  elsif win?(computer, player)
    prompt('Computer won this round!')
  else
    prompt("It's a tie!")
  end
end

def increment_score(score, player, computer)
  if win?(player, computer)
      score[:player] += 1
  elsif win?(computer, player)
      score[:computer] +=1
  end
end 

def display_intermediate_winner(score, player, computer, win_score)
  unless game_over(score, player, computer, win_score)
      display_result(player, computer)
  end
end 

def display_intermediate_score(score, player, computer, win_score)
  prompt("#{score[:computer]} computer, #{score[:player]} player")
end 

def grand_winner(score, player, computer, win_score)
  if score[:player] == win_score
    prompt("you are the grand winner!!")
  elsif score[:computer] == win_score
    prompt("you are the grand loser!!")
  end 
end 

def game_over(score, player, computer, win_score)
  score[:computer] == win_score || score[:player] == win_score
end

def play_again(score, player, computer, win_score)
  if game_over(score, player, computer, win_score)
    prompt("do you want to play again ? (y/n)")
    play_again_answer = gets.chomp.downcase 
  end
end 

#def refresh_game_score(score, player, computer, win_score)
 # if play_again(score, player, computer, win_score)  == 'y'
 #   score[:player] = 0 && score[:computer] = 0
    
 # end
#end 


score = {
  player: 0,
  computer: 0
}

loop do 

  greet(WINNING_SCORE)
  player_choice = ''
  loop do

    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    abrv_key
    choice = Kernel.gets().chomp()
    player_choice = abbreviations(choice)

    if VALID_CHOICES.include?(player_choice)
      break
    else
      prompt("that's not a valid choice")
    end 
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose #{player_choice}; Computer chose: #{player_choice} ")

  display_intermediate_winner(score, player_choice, computer_choice, WINNING_SCORE)
  increment_score(score, player_choice, computer_choice)
  display_intermediate_score(score, player_choice, computer_choice, WINNING_SCORE)
  grand_winner(score, player_choice, computer_choice, WINNING_SCORE)
  play_again(score, player_choice, computer_choice, WINNING_SCORE)


end  