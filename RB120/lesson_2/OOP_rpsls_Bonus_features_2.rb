

class Score
  
  attr_accessor :computer_score, :human_score

  def initialize
    @computer_score = 0
    @human_score = 0
  end

  def update_score(human_player, computer_player)
    if human_player.move > computer_player.move 
      @human_score += 1
    elsif computer_player.move > human_player.move
      @computer_score += 1
    end 
  end

end


class Player

  VALUES = ['r', 'p', 'sc', 'l', 'sp']

  #in this section we want to store information of the indivdual Players
  #name of the player
  #store history of moves
  #store current move 

  attr_accessor :name, :move_history
  attr_reader :move 


  def initialize
    @name = nil 
    @move_history = []
  end
  
  def move=(choice)

    @move = case choice 
            when 'r'
              Rock.new 
            when 'p'
              Paper.new 
            when 'sc'
              Scissors.new 
            when 'l'
              Lizard.new 
            when 'sp'
              Spock.new 
            end
    move_history << move  
  end

end 

# class Computer < Player 
  
#   def initialize
#     super 
#     set_name
#   end 
   
#   def set_name
#    random_name = ['R2D2', 'Hal', 'Chappie', 'CatRobot'].sample
   
#    self.name = case random_name
#                when 'R2D2'
#                  R2D2.new 
#                when 'Hale'
#                  Hal.new 
#                when 'Chappie'
#                  Chappie.new 
#                when 'CatRobot'
#                  CatRobot.new 
#                end 
#   end

#   def choose
#     choice = VALUES.sample  #somehting like self.name.move 
#     self.move = choice 
#   end

# end 

class Human < Player 

  def choose
    choice = nil
    loop do
      puts ""
      puts "Please choose rock (r), paper (p), scissors (sc), lizard (l), or spock (sp):"
      choice = gets.chomp.downcase 
      break if VALUES.include? choice
      puts "sorry, invalid choice"
    end 
  
    self.move = choice
  end

end 

class Rock 
  
  attr_reader :wins, :value

  def initialize 
    @value = { abreviation: 'r', name: 'rock'}
    @wins = ['sc', 'l']
  end

  def >(other_move)
    wins.include?(other_move.value[:abreviation])
  end 

end

class Paper

  attr_reader :wins, :value

  def initialize
    @value = { abreviation: 'p', name: 'paper'}
    @wins = ['r', 'sp']
  end
  
  def >(other_move)
    wins.include?(other_move.value[:abreviation])
  end

end 

class Scissors
  
  attr_reader :wins, :value

  def initialize
    @value = { abreviation: 'sc', name: 'scissors'}
    @wins = ['p', 'l']
  end

  def >(other_move)
    wins.include?(other_move.value[:abreviation])
  end

end 

class Lizard

  attr_reader :wins, :value

  def initialize
    @value = { abreviation: 'l', name: 'lizard'}
    @wins = ['sp', 'p']
  end 
  
  def >(other_move)
    wins.include?(other_move.value[:abreviation])
  end

end

class Spock

  attr_reader :wins, :value
  
  def initialize
    @value = { abreviation: 'sp', name: 'spock'}
    @wins = ['r', 'sc']
  end

  def >(other_move)
    wins.include?(other_move.value[:abreviation])
  end

end

class R2D2 < Player

  def initialize
    super
    @name = 'R2D2'
  end
  
  def choose
    choice = VALUES.sample  #somehting like self.name.move 
    self.move = choice 
  end 
  #always chooses rock 
end 

class Hal < Player

  def initialize
    super
    @name = 'Hal'
  end
  
  def choose
    choice = VALUES.sample  #somehting like self.name.move 
    self.move = choice
  end 
  #has a very high tendency to choose scissors 

end 

class Chappie < Player

  def initialize
    super
    @name = 'Chappie'
  end

  def choose
    choice = VALUES.sample  #somehting like self.name.move 
    self.move = choice
  end 

end 

class CatRobot < Player

  def initialize
    super 
    @name = 'CatRobot'
  end

  def choose
    choice = VALUES.sample  #somehting like self.name.move 
    self.move = choice
  end 

end 

#===========Game Play Orcastration============

class RPSGame

  attr_accessor :human, :computer, :score 

  def initialize
    @human = Human.new 
  end 
  
  def display_welcome_message
    system ('clear')
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock. First to 3 points wins"
  end
  
  def set_human_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value"
    end
    human.name = n
  end

  def set_new_round 
    set_computer
    new_score
    human.move_history = []
  end

  def display_moves
    
    display_human = "#{human.name} chose #{human.move.value[:name]}."
    display_computer = "#{computer.name} chose #{computer.move.value[:name]}."
    top = "+" + ("-" * display_computer.length) + "+"

    system ('clear')
    puts top 
    puts ""
    puts display_human
    puts display_computer
    puts top

  end

  def display_score
    puts ""
    puts "#{human.name} has #{score.human_score} points"
    puts "#{computer.name} has #{score.computer_score} points"
  end 
  

  def display_round_winner
    puts ""
    if human.move > computer.move 
      puts "#{human.name} wins!" 
    elsif computer.move > human.move
      puts "#{computer.name} wins!"
    else 
      puts "it's a tie"
    end 
  end
  
  def display_grand_winner
    puts ""
    puts "#{computer.name} is the grand_winner" if score.computer_score == 3
    puts "#{human.name} is the grand_winner"  if score.human_score == 3 
  end

  def display_move_history

    title_player = "#{human.name}'s last move"
    title_computer = "#{computer.name}'s last move"
    full_title = " #{title_player} | #{title_computer} "

    top = "_" * full_title.size


    system ("clear")


    puts " #{top}"
    puts "|#{" " * top.size}|"
    puts "|#{full_title}|"
    puts " #{top}"

    human.move_history.zip(computer.move_history).each do |human_move, computer_move| 
         puts "#{human_move.value[:name]}".rjust(title_player.size/1.5) + "#{computer_move.value[:name]}".rjust(title_player.size + 5)
    end
    puts " #{top}"
  end

  def play_again?
    puts ""
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

  def display_goodbye_message
    puts "Thank you for playing goodbye!"
  end

  def play
    display_welcome_message
    set_human_name
    set_new_round
    counter = 0 
    loop do
      display_move_history if counter > 0 
      human.choose
      computer.choose
      display_move_history #display_moves
      score.update_score(human, computer)
      display_round_winner
      display_score
      counter += 1 
      break if (score.human_score == 3) || (score.computer_score == 3) || (play_again? == false)
    end
    display_grand_winner
    display_goodbye_message
  end

  private 

  def set_computer

     random_name = ['R2D2', 'Hal', 'Chappie', 'CatRobot'].sample
     
     @computer = case random_name
                 when 'R2D2'
                   R2D2.new 
                 when 'Hal'
                   Hal.new 
                 when 'Chappie'
                   Chappie.new 
                 when 'CatRobot'
                   CatRobot.new 
                 end
  end 

  def new_score
    self.score = Score.new
  end

end
  

RPSGame.new.play 