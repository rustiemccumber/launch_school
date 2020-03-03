# Approach to OOP

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

#Nouns: player, move, rule
#Verbs: choose, compare 

# Note that we decided to ignore 'rock', 'paper' or 'scissors', since 
# they are all variations on a move --almots like different states of 
# a move.

# Here's a list of  nouns and their verbs 

# Player 
#  -choose
# Move 
# Rule 

# - compare

class Player
  
  attr_accessor :move, :name 

  def initialize
    @move = nil
    set_name 
    #maybe a "name"? what about a "move"?
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
      puts "Please choose rock, paper, or scissors:"
      choice = gets.chomp
      break if Move:: VALUES.include? choice 
      puts "sorry, invalid choice"
    end

    self.move = Move.new(choice)
  end 

end 

class Computer < Player
  def set_name
    self.name = ["R2D2", "Hal", "Wally"].sample
    
  end 

  def choose 
     
     self.move = Move.new(Move::VALUES.sample)
  end 
end 

class Move

  VALUES = ['rock', 'paper', 'scissors']

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

  def >(other_move)
    if rock?
      return true if other_move.scissors?
      return false 
    elsif paper?
      return true if other_move.rock?
      return false
    elsif scissors?
      return true if other_move.paper?
      return false
    end
  end

  def <(other_move)
    if rock?
      return true if other_move.paper?
      return false
    elsif paper?
      return true if other_move.scissors?
      return false
    elsif scissors?
      return true if othermove.rock?
      return false 
    end 
  end 

  def to_s
    @value 
  end 

end 

class Rule
  def initialize 
    # not sure what the "state" of a rule object should be 
  end
end 

# not sure where "compare" goes yet

def compare(move1, move2)

end 

#orchestration Engine

#we need an "engine" of some sort to orchestrate the objects.  This
#is where the procedural program flow should be. Let's call the "eginer"
#classs RPSGame.  We want an easy interface to kick things off, so perhaps
#to play the game, we call a method called  `play`, like this:

class RPSGame

  attr_accessor :human, :computer

  def initialize 
    @human = Human.new
    @computer = Computer.new
  end 
  
  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors"
  end 
  
  def  display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
  end

  def display_winner
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} computer chose #{computer.move}."
    
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else 
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil 
    loop do 
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase 
      puts "sorry, must be y or n"
    end
    return true if answer == 'y'
    return false 
  end

  def play
    display_welcome_message
    loop do 
      human.choose
      computer.choose 
      display_winner
      break unless play_again?
    end 
    display_goodbye_message 
  end

end 

RPSGame.new.play
