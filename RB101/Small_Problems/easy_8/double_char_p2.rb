=begin
  
rescue Write a method that takes a string, and returns a new string in which every 
consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace 
should not be doubled. => e

-input:string
-output: double char unless char (a, e, i ,o u) 0-9, puncuation, and whitespace 
  
= end



def repeater(string)
  repeated_string = ''
  string.chars.each {|char| repeated_string += (char + char)}
  repeated_string
end 

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('')# == ''

=begin

Tic Tac Toe is a 2 player game played on a 3x3 board. 
Each player takes a turn and
marks a square on the board. First player to reach 3 squares in a row,
including diagonals,
wins. If all 9 squares are marked and no player has 3 squares in a row, 
then the game is a tie.

1. Display the initial empty 3x3 board.
  - display the key to selecting squares
     - this will look like tic, tac, toe board with with number 
     in place of squares 
     - display this only once at the beginning of the game
  - display key with available squares 
    -this will look like an empty board, or a board with the
     moves which have already been made 

2. Ask the user to mark a square.
   -prompt the user to select a position (shown in display above)
    -user selects position
      -program gets position 
      -throws a error if the user/computer had already selected that position 
        - if board[position] == 'O' || board[position] == 'X' throws error,
         "that move has already been selected please select other"
      -if the position is valid the board is updated with the new position 

3. Computer marks a square.
  -write a defintion
    -computer randomly selects a position from on to 9
    -if board[position] == 'O' || board[position] == 'X'
     next until user_move != computer_move 
 

4. Display the updated board state.
5. If winner, display winner.
   - create a definition winning combinations 
6. If board is full, display tie.
   -if there are no spaces = board is full 
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!

=end

