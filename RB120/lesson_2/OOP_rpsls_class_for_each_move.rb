# AproachToOOP

# The classical approach to object oriented programming is:

# 1. write a textual description of the problem or exercise.
# 2. Extract the major nouns and verbs from the description.
# 3. Organize and associate the verbs with the nouns.
# 4. The nouns are the classes and the verbs are the behaviors or methods.

# Description:

# Rock, Paper, Scissors is a two-player game where each player chooses
# onf of three possible moves: rock, paper, or scissors.  The chosen moves
# will then be compared to see who wins, according to the following rules:

# - rock beats scissors
# - scissors beats paper
# - paper beats rock

# If the players chost the same move, then it's a tie.

# Nouns: player, move, rule
# Verbs: choose, compare

# Note that we decided to ignore 'rock', 'paper' or 'scissors', since
# they are all variations on a move --almots like different states of
# a move.

# Here's a list of  nouns and their verbs

# Player
#  -choose
# Move
# Rule

# - compare

#Rules Rock, Paper, Scissors, Lizard, Spock

# Scissors cuts paper, Scissors decapitates lizard

# Paper covers rock, Paper disproves spock 

# Rock crushes lizard, Rock crushes scissors

# Lizard poisons Spock, Lizard eats paper

# Spock smashes scissors, Spock varporizes rock 


class Player

  attr_accessor :move, :name, :score 

  def initialize
    @move = nil 
    @score = 0 
    @move_history = []
    set_name
    # maybe a "name"? what about a "move"?
  end
  


end

class Human < Player

  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value"
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock:"
      choice = gets.chomp
      break if Move:: VALUES.include? choice
      puts "sorry, invalid choice"
    end

    self.move_history << choice.capitalize.new
  end

  def add_points
    self.score += 1
  end 

end

class Computer < Player
  def set_name
    self.name = ["R2D2", "Hal", "Wally"].sample
  end

  def choose
    self.move_history << [Rock, Paper, Scissors, Lizard, Spock].sample.new 
  end

  def add_points 
    self.score += 1
  end 

end

class Move

  VALUES = [Rock, Paper, Scissors, Lizard, Spock]

  def initialize(choice)
    @value = choice
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def lizard?
    @value == 'lizard'
  end 

  def spock?
    @value == 'spock'
  end 
  
  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?) ||
      (rock? && other_move.lizard?) ||
      (scissors? && other_move.lizard?) ||
      (paper? && other_move.spock?) ||
      (lizard?  && other_move.spock?) ||
      (lizard? && other_move.paper?) ||
      (spock?  && other_move.rock?)
      
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?) ||
      (lizard?  && other_move.rock?) ||
      (lizard?  && other_move.scissors?) ||
      (spock?  && other_move.paper?) ||
      (spock? && other_move.lizard?) ||
      (paper? && other_move.lizard?) ||
      (rock?  && other_move.spock?)
  end


#Rules Rock, Paper, Scissors, Lizard, Spock

# Scissors cuts paper, Scissors decapitates lizard

# Paper covers rock, Paper disproves spock 

# Rock crushes lizard, Rock crushes scissors

# Lizard poisons Spock, Lizard eats paper

# Spock smashes scissors, Spock varporizes rock 

  def to_s
    @value
  end

end

class Rock < Move

  attr_reader :move_type

  def initialize
    @value = 'rock'
  end

end 

class Paper < Move 

  attr_reader :move_type

  def initialize
     @value = 'paper'
  end

end 

class Scissors < Move 
  
  attr_reader :move_type

  def initialize
    @value = 'scissors'
  end

end

class Lizard < Move
  
  attr_reader :move_type

  def initialize
     @value = 'lizard'
  end 
end 

class Spock < Move
  
  attr_reader :move_type

  def initialize
    @value = 'spock'
  end 
end 

# orchestration Engine

# we need an "engine" of some sort to orchestrate the objects.  This
# is where the procedural program flow should be. Let's call the "eginer"
# classs RPSGame.  We want an easy interface to kick things off, so perhaps
# to play the game, we call a method called  `play`, like this:

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock. First to 3 points wins"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
  end

  def keep_score 
    if human.move > computer.move
      human.add_points 
    elsif human.move < computer.move
      computer.add_points
    end 
  end

  def display_score
    puts "#{human.name} has #{human.score} points"
    puts "#{computer.name} has #{computer.score} points"
  end 


  def display_round_winner
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} computer chose #{computer.move}."
  end

  def display_grand_winner
    puts "#{human.name} is the grand winner!" if human.score > computer.score
    puts "#{computer.name} is the grand winner!" if human.score < computer.score
  end 

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again for grand winner? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "sorry, must be y or n"
    end
    return true if answer == 'y'
    return false if answer == 'n'
  end

  def play
    display_welcome_message
    loop do

      human.choose
      computer.choose
      display_moves
      keep_score
      display_round_winner
      display_score

      break if (human.score == 3) || (computer.score == 3) || (play_again? == false)
    end
    display_grand_winner
    display_goodbye_message
  end
end


class Paper < Move
  def initialize
    @value = 'paper'
  end

  def >(other)
    other.class == Rock || other.class == Spock
  end

  def <(other)
    other.class == Scissors || other.class == Lizard
  end
end

RPSGame.new.play