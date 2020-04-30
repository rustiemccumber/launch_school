
class Score
  attr_accessor :computer_score, :human_score

  def initialize
    @computer_score = 0
    @human_score = 0
  end
end

class Player
  VALUES = ['r', 'p', 'sc', 'l', 'sp']

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

  def to_s
    @name
  end
end

class Human < Player
  def choose
    choice = nil
    loop do
      puts ""
      puts "Please choose rock (r), paper (p), scissors (sc), lizard (l),
or spock (sp):"
      choice = gets.chomp.downcase
      break if VALUES.include? choice
      puts "sorry, invalid choice"
    end
    self.move = choice
  end
end

class Rock
  attr_reader :value

  def initialize
    @value = { abreviation: 'r', name: 'rock' }
    @wins = ['sc', 'l']
  end

  def >(other_move)
    wins.include?(other_move.value[:abreviation])
  end

  private

  attr_reader :wins
end

class Paper
  attr_reader :value

  def initialize
    @value = { abreviation: 'p', name: 'paper' }
    @wins = ['r', 'sp']
  end

  def >(other_move)
    wins.include?(other_move.value[:abreviation])
  end

  private

  attr_reader :wins
end

class Scissors
  attr_reader :value

  def initialize
    @value = { abreviation: 'sc', name: 'scissors' }
    @wins = ['p', 'l']
  end

  def >(other_move)
    wins.include?(other_move.value[:abreviation])
  end

  private

  attr_reader :wins
end

class Lizard
  attr_reader :value

  def initialize
    @value = { abreviation: 'l', name: 'lizard' }
    @wins = ['sp', 'p']
  end

  def >(other_move)
    wins.include?(other_move.value[:abreviation])
  end

  private

  attr_reader :wins
end

class Spock
  attr_reader :value

  def initialize
    @value = { abreviation: 'sp', name: 'spock' }
    @wins = ['r', 'sc']
  end

  def >(other_move)
    wins.include?(other_move.value[:abreviation])
  end

  private

  attr_reader :wins
end

class R2D2 < Player
  def initialize
    super
    @name = 'R2D2'
  end

  def choose
    choice = 'r' # always chooses rock
    self.move = choice
  end
end

class Hal < Player
  def initialize
    super
    @name = 'Hal'
  end

  def choose
    choices = VALUES.dup
    choices.delete('p') # very high tendency to choose scissors, never paper
    choices.fill("sc", 5, 15).fill(['l', 'sp'], 15, 20).flatten!
    self.move = choices.sample
  end
end

class Chappie < Player
  def initialize
    super
    @name = 'Chappie'
  end

  def choose
    choice = VALUES.sample
    self.move = choice
  end
end

class CatRobot < Player
  def initialize
    super
    @name = 'CatRobot'
  end

  def choose
    choice = VALUES.sample
    self.move = choice
  end
end

#===========Game Play Orcastration============

class RPSGame
  def initialize
    @human = Human.new
  end

  def play
    loop do
      set_new_round
      loop do
        human_computer_choose
        display_results
        break if grand_winner
      end
      display_grand_winnermonica yee
      break if play_new_game? == false
    end
    display_goodbye_message
  end

  private

  attr_accessor :human, :computer, :score, :round_winner

  def set_new_round
    display_welcome_message
    set_human_name
    set_computer
    new_score
    human.move_history = []
  end

  def display_results
    round_winner=
    display_move_history
    update_score
    display_round_winner
    display_score
  end

  def human_computer_choose
    human.choose
    computer.choose
  end

  def display_welcome_message
    system 'clear'
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock.
First to 3 points wins"
  end

  def set_human_name
    puts ""
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty? || n.chars.all?(" ")
      if n.empty?
        puts "Sorry, must enter a value."
      elsif n.chars.all?(" ")
        puts "The name cannot be comprised of all spaces"
      end
    end
    human.name = n
  end

  def set_computer
    random_name = ['Hal', 'R2D2', 'Chappie', 'CatRobot'].sample
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

  def grand_winner
    return computer.name if score.computer_score == 3
    return human.name if score.human_score == 3
    false
  end

  def round_winner
    if human.move > computer.move
      @round_winner = human.name
    elsif computer.move > human.move
      @round_winner = computer.name
    else 
      @round_winner = "it's a tie"
    end 
  end

  def update_score
    if round_winner == human.name
      score.human_score += 1
    elsif round_winner == computer.name
      score.computer_score += 1
    end
  end

  def display_score
    puts ""
    puts "#{human.name} has #{score.human_score} points"
    puts "#{computer.name} has #{score.computer_score} points"
  end

  def display_round_winner
    puts ""
    puts "round winner: #{round_winner}"
  end

  def display_grand_winner
    puts ""
    puts "#{grand_winner} is the grand_winner"
  end

  def compile_move_history
    human_history = human.move_history
    computer_history = computer.move_history
    human_history.zip(computer_history)
  end

  def display_move_history_header
    system "clear"
    title_player = "#{human}'s last move"
    title_computer = "#{computer}'s last move"
    full_title = " #{title_player} | #{title_computer} "
    top = "_" * full_title.size
    puts " #{top}"
    puts "|" + (" " * top.size) + "|"
    puts "|#{full_title}|"
    puts " #{top}"
  end

  def display_move_history
    system "clear"

    r_just_offset = human.to_s.size + 12
    display_move_history_header
    compile_move_history.each do |human_move, computer_move|
      puts human_move.value[:name].rjust((r_just_offset) / 1.5) +
           computer_move.value[:name].rjust((r_just_offset) + 5)
    end
  end

  def display_goodbye_message
    system "clear"
    puts "Thank you for playing goodbye!"
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

  def play_new_game?
    answer = nil
    loop do
      puts "Would you like to play a new game? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "sorry, must be y or n"
    end
    return true if answer == 'y'
    return false if answer == 'n'
  end
end

RPSGame.new.play
