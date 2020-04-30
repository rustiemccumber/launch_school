# we will take an object-oriented approach to desiging the solution, so we'll
# employ the steps we learned earlier

# 1. write a description fo the problem and extract major nouns and verbs
# 2. Make an initial guess at organizing the verbs into nouns and do a spike
# to explore the problem with temporary code
# 3. Optional - when you have a better idea of the the problem,
# model your thoughts inot CRC cards

# Nouns and Verbs

# Description:
# Tic Tac Toe is a 2-player board game played on a 3x3 gird.
# Players take turns marking a square.
# The first player to mark 3 squares in a row wins.

# Nouns: board, player, square, grid
# Verbs: play, mark
# Those organized
# Board
# Square
# Player
# - mark
# - play
# spike

require 'pry'

class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals
  attr_reader :squares

  def initialize
    @squares = {}
    reset
  end

  def [](square)
    @squares[5].marker
  end

  def []=(square, marker)
    @squares[square].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  # returnsing winning marker or nil
  def winning_marker
    WINNING_LINES.each do |line|
      # binding.pry
      winning_squares = @squares.values_at(*line)
      if three_identical_markers(winning_squares)
        return winning_squares.first.marker
      end
    end
    nil
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
    puts ""
  end
  # rubocop: enable Metrics/Abcsize

  def detect_immediate_threat_square(player_marker)
    WINNING_LINES.each do |line|

      scan_squares = @squares.values_at(*line)
      if two_in_a_row(scan_squares, player_marker)
        line.each do |key| 
          return key if @squares[key].marker == Square::INITIAL_MARKER
        end
      end
    end
    nil
  end
  
  def two_in_a_row(squares, player_marker)
     squares.count(&:marked?) == 2 && (squares.collect(&:marker).uniq.size == 2) && 
     squares.collect(&:marker).include?(Square::INITIAL_MARKER)  && squares.collect(&:marker).include?(player_marker)
  end

  private

  def three_identical_markers(squares)
    squares.all?(&:marked?) && (squares.collect(&:marker).uniq.size <= 1)
  end

end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
    # maybe a "status" to keep trakc of this square's mark?
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  attr_accessor :score, :marker
  def initialize(marker = nil)
    @marker = marker
    @score = 0
  end
end

class TTTGame
  def play
    clear
    display_welcome_message
    set_up
    clear
    loop do
      display_board
      loop do
        #binding.pry
        current_player_moves
        break if board.someone_won? || board.full?
        clear_screen_and_display_board if human_turn?
      end
      display_result
      break if grand_winner? 
      break unless play_again?
      reset
      display_play_again_message
      # display_result
    end

    display_goodbye_message
  end

  private

  CHOOSE = "choose"
  MARKER_OPTIONS = ['O', 'X']
  WINNING_SCORE = 2
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new()
    @computer = Player.new()
    @current_marker = CHOOSE
    @marker_look_up = { :h => @human.marker, :c => @computer.marker}
  end

  def display_welcome_message
    puts "Welcome to TIc Tac Toe!, firt player to #{WINNING_SCORE} is the grand winner"
    puts ""
  end

  def display_play_for_grand_winner
    puts "Would you like to Play for grand winner?"
    puts " "
  end 

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def clear
    system 'clear'
  end

  def display_board
    puts "You're a #{human.marker}.  Computer is a #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def set_up
    human_choose_marker
    computer_choose_marker
    choose_first_player
  end 
  
  def human_choose_marker
    human_marker = nil
    puts "please select a marker 'x' or 'o'"
    loop do
      human_marker = gets.chomp.upcase
      break if MARKER_OPTIONS.include?(human_marker)
    end 
    @human.marker = human_marker
  end

  def computer_choose_marker
    MARKER_OPTIONS.each do |symbol|
      @computer.marker = symbol  if symbol != @human.marker
    end 
  end 

  def joinor(squares_array, delimiter = ', ', connecting_word = 'or')
    case squares_array.size
    when 0 then ''
    when 1 then squares_array.first
    when 2 then squares_array.join(" #{connecting_word}")
    else
      squares_array[-1] = "#{connecting_word} #{squares_array.last}"
      squares_array.join(delimiter)
    end 
  end


  def human_moves
    puts "choose a square (#{joinor(board.unmarked_keys)}:) "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def computer_moves
    human_threat = board.detect_immediate_threat_square(human.marker)
    computer_threat = board.detect_immediate_threat_square(computer.marker)
    if computer_threat
      board[computer_threat] = computer.marker
    elsif human_threat
      board[human_threat] = computer.marker
    elsif board[5] == Square::INITIAL_MARKER
      board[5] = computer.marker
    else
      board[board.unmarked_keys.sample] = computer.marker
    end
  end

  def choose_first_player
     if @current_marker == CHOOSE
       puts "please choose human (h), or computer (c)"
       marker = nil 
       loop do 
          marker = gets.chomp.to_sym
          break if @marker_look_up.keys.include?(marker)
        end
        @current_marker = @marker_look_up[marker]
     end 
  end 

  def human_turn?
    @current_marker == @human.marker
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = @computer.marker
    else
      computer_moves
      @current_marker = @human.marker
    end
  end

  def update_score
    case board.winning_marker
    when human.marker
      human.score += 1
    when computer.marker
      computer.score += 1
    end
  end

  def display_running_score
    puts "your score: #{human.score}"
    puts "computer's score: #{computer.score}"  
  end

  def grand_winner?
    human.score == WINNING_SCORE || computer.score == WINNING_SCORE
  end 

  def display_grand_winner
    if human.score == WINNING_SCORE
      puts "you are the grand_winner"
    elsif computer.score == WINNING_SCORE
      puts "the computer is the grand winner"
    end
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      puts "you won!"
    when computer.marker
      puts "computer won!"
    else
      puts "its a tie"
    end

    update_score
    display_running_score
    display_grand_winner

  end

  def reset
    board.reset
    @current_marker = CHOOSE
    clear
  end

  def display_play_again_message
    puts "lets play again"
    puts ""
  end

  def play_again?
    answer = nil
    loop do
      puts "would you like to play again for grand_winner? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "sorry, must be y or n"
    end

    answer == 'y'
  end
end

game = TTTGame.new
game.play
