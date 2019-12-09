
WHO_FIRST = 'choose'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagonals
ROUNDS = 3

SCORE_BOARD = {
  player_score: 0,
  computer_score: 0
}

def prompt(msg)
  puts "=> #{msg}"
end

def welcome
  system "clear"
  prompt "Welcome to TIC-TAC-TOE! Good luck!"
end

def display_rounds
  prompt "first to win #{ROUNDS} rounds wins"
end

# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system "clear"
  puts ""
  puts "Select number to select move\
(you = #{PLAYER_MARKER}, computer = #{COMPUTER_MARKER})"
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]} "
  puts "     |     |"
  puts "-----+-----+------"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]} "
  puts "     |     |"
  puts "-----+-----+------"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]} "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

# rubocop: disable Style/UnneededInterpolation
def joinor(array, sep = ', ', word = 'or')
  if array.size == 1
    array.first
  elsif array.size == 2
    array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join("#{sep}")
  end
end
# rubocop: enable Style/UnneededInterpolation

# rubocop: disable Metrics/LineLength
def find_square_at_risk(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      return brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
    end
  end
  nil
end

def find_computer_win(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
      return brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
    end
  end
  nil
end
# rubocop: enable Metrics/LineLength

def computer_move!(brd)
  square = nil
  at_risk_square = find_square_at_risk(brd)
  computer_win_square = find_computer_win(brd)
  if computer_win_square
    square = computer_win_square
  elsif at_risk_square
    square = at_risk_square
  elsif brd[5] == INITIAL_MARKER
    square = 5
  elsif !square
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def user_move!(brd)
  user_choice = ''
  loop do
    prompt "please pick you position: (#{joinor(empty_squares(brd))})"
    user_choice = gets.chomp.to_i
    break if empty_squares(brd).include?(user_choice)
    prompt("that move has already been selected,\
  please select an empty position")
  end
  brd[user_choice] = PLAYER_MARKER
end

# rubocop: disable Metrics/PerceivedComplexity
def determine_first_player
  if WHO_FIRST == 'player'
    'player'
  elsif WHO_FIRST == 'computer'
    'computer'
  elsif WHO_FIRST == 'choose'
    prompt 'please choose who goes first: player, computer'
    choice = gets.chomp
    if choice == 'player'
      return 'player'
    elsif choice == 'computer'
      return 'computer'
    end
  end
end
# rubocop: enable Metrics/PerceivedComplexity

def move!(plr, brd)
  if plr == 'player'
    user_move!(brd)
  elsif plr == 'computer'
    computer_move!(brd)
  end
end

def next_player(plr)
  if plr == 'computer'
    'player'
  elsif plr == 'player'
    'computer'
  end
end

def board_full?(brd)
  brd.values.include?(INITIAL_MARKER) == false
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #   brd[line[1]] == PLAYER_MARKER &&
    #   brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #   brd[line[1]] == COMPUTER_MARKER &&
    #   brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    if brd.values_at(*line).count(PLAYER_MARKER) == ROUNDS
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == ROUNDS
      return 'Computer'
    end
  end
  nil
end

def play_again?
  prompt "would you like to continue for grand winner? y/yes"
  response = gets.chomp.downcase
  return true if response == 'y' || response == 'yes'
  false
end

def start_new?
  prompt "would you like to start a new game? y/yes"
  response = gets.chomp.downcase
  return true if response == 'y' || response == 'yes'
  false
end

def increment_scoreboard(winner)
  if winner == 'Player'
    SCORE_BOARD[:player_score] += 1
  elsif winner == 'Computer'
    SCORE_BOARD[:computer_score] += 1
  end
end

def check_grand_winner
  SCORE_BOARD[:player_score] == ROUNDS || SCORE_BOARD[:computer_score] == ROUNDS
end

def display_intermediate_winner(brd)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} won this round!"
    prompt "player_score: #{SCORE_BOARD[:player_score]}\
    computer_score: #{SCORE_BOARD[:computer_score]}"
  else
    prompt "It's a tie!"
  end
end

def display_grand_winner(brd)
  if check_grand_winner
    prompt "#{detect_winner(brd)} is the grand winner!"
  end
end

# ===================== GAME LOOP =====================

loop do
  welcome
  current_player = determine_first_player
  loop do
    board = initialize_board
    loop do
      display_board(board)
      move!(current_player, board)
      current_player = next_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
    display_board(board)
    display_rounds
    increment_scoreboard(detect_winner(board))
    display_intermediate_winner(board)
    display_grand_winner(board)
    break if check_grand_winner
    break unless play_again?
  end
  break unless start_new?
end

prompt "Thanks for playing!"
