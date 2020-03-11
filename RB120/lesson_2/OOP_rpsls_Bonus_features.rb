class Player
  
  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  attr_accessor :name, :move_history
  attr_reader  :move 

  def initialize
    @move = nil 
    @move_history = []
  end

  def move= (value)
    @move = case value  
            when 'rock'
              Rock.new 
            when 'paper'
              Paper.new 
            when 'scissors'
              Scissors.new 
            when 'lizard'
              Lizard.new 
            when 'spock'
              Spock.new 
            end
      move_history << @move
  end 
end


class Human < Player

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock:"
      choice = gets.chomp
      break if VALUES.include? choice
      puts "sorry, invalid choice"
    end

    self.move = choice
  end

end 


class Computer < Player

  def set_name
    self.name = ["R2D2", "Hal", "Wally"].sample
  end

  def choose
    self.move = VALUES.sample
  end

end



class Rock

  attr_reader :value 

  def initialize
    @value = 'rock'
  end

  def >(other)
    other.class == Scissors || other.class == Lizard
  end

  def <(other)
    other.class == Paper || other.class == Spock
  end
end

class Paper

  attr_reader :value 

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

class Scissors

  attr_reader :value 

  def initialize
    @value = 'scissors'
  end

  def >(other)
    other.class == Paper || other.class == Lizard
  end

  def <(other)
    other.class == Rock || other.class == Spock
  end

end

class Lizard

  attr_reader :value 

  def initialize
    @value = 'lizard'
  end

  def >(other)
    other.class == Paper || other.class == Spock
  end

  def <(other)
    other.class == Scissors || other.class == Rock
  end
end

class Spock

  attr_reader :value 

  def initialize
    @value = 'spock'
  end

  def >(other)
    other.class == Rock || other.class == Scissors
  end

  def <(other)
    other.class == Paper || other.class == Lizard
  end
end

class Score

  attr_accessor :human_score, :computer_score

  def initialize

    @human_score = 0
    @computer_score = 0 

  end 

  def update_score(human_player, computer_player)

    if human_player.move > computer_player.move 
      self.human_score += 1
    elsif human_player.move < computer_player.move 
      self.computer_score += 1
    end 
  end

end 


class RPSGame

  ROUNDS = 3
  attr_accessor :human, :computer, :score 

  def initialize
    @human = Human.new
    @computer = Computer.new
    @score = Score.new 
  end

  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value"
    end
    human.name = n
  end

  def display_welcome_message
    system('clear')
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock. First to 3 points wins"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
    puts ""
  end

  def display_score
    puts ""
    puts "#{human.name} has #{score.human_score} points"
    puts "#{computer.name} has #{score.computer_score} points"
    puts ""
  end 


  def display_round_winner
    if human.move > computer.move
      puts ""
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts ""
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def display_moves
    puts "#{human.name} chose #{human.move.value}."
    puts "#{computer.name} computer chose #{computer.move.value}."
  end

  def display_grand_winner
    puts "#{human.name} is the grand winner!" if score.human_score > score.computer_score
    puts "#{computer.name} is the grand winner!" if score.human_score < score.computer_score
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
      
      set_name
      human.choose
      computer.choose
      display_moves
      score.update_score(human, computer)
      display_round_winner
      display_score

      break if (score.human_score == ROUNDS) || (score.computer_score == ROUNDS) || (play_again? == false)
      system ('clear')
    end
    display_grand_winner
    display_goodbye_message
  end
end

RPSGame.new.play
