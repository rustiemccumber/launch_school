
require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength
def display_board(brd)
  system "clear"
  puts ""
  puts "Select number to select move (you = #{PLAYER_MARKER},\
computer = #{COMPUTER_MARKER})"
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
# rubocop:enable Metrics/MethodLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, sep = ', ', word = 'or')
  if array.size == 1
    array.first 
  elsif array.size == 2
    array.join(' #word ')
  else
    array[-1] = "#{word} #{array.last}"
    array.join("#{sep}")
  end
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

def computer_move!(brd)
  computer_choice = ''
  loop do
    computer_choice = (1..9).to_a.sample
    break if empty_squares(brd).include?(computer_choice) || board_full?(brd)
  end
  brd[computer_choice] = COMPUTER_MARKER
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
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def play_again?
  prompt "would you like to play again for grand winner? y/yes"
  response = gets.chomp.downcase
  return true if response == 'y' || response == 'yes'
  false
end

def check_grand_winner(player, computer)
  player == 5 || computer == 5
end 

player_score = 0 
computer_score = 0 
loop do
  board = initialize_board
  loop do
    display_board(board)
    prompt "first to win 5 rounds wins" 
    prompt "player_score: #{player_score} computer_score: #{computer_score}"
    user_move!(board)
    break if someone_won?(board) || board_full?(board)
    computer_move!(board)
    if detect_winner(board) == "Computer"
      computer_score += 1 
    end 
    break if someone_won?(board) || board_full?(board)
  end
  #binding.pry
  display_board(board)
  if someone_won?(board)
    prompt "#{detect_winner(board)} won this round!"
    if detect_winner(board) == "Player"
      player_score += 1
    elsif detect_winner(board) == "Computer"
      player_score += 1
    end 
    prompt "player_score: #{player_score} computer_score: #{computer_score}"
  else
    "It's a tie"
  end
  puts "#{detect_winner(board)} is the grand winner" if check_grand_winner(player_score, computer_score)
  break if check_grand_winner(player_score, computer_score)
  break unless play_again?
end

prompt "thanks for playing"
