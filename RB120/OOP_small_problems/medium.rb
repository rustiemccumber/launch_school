#PRIVACY

# class Machine

#   def start
#     self.flip_switch(:on)
#   end

#   def stop
#     self.flip_switch(:off)
#   end

#   private

#   attr_writer :switch

#   def flip_switch(desired_state)
#     self.switch = desired_state
#   end

# end

# Modify this class so both flip_switch and the setter method switch= are private methods.

#FIXED ARRAY

# A fixed-length array is an array that always has a fixed number of elements.
# Write a class that implements a fixed-length array, and provides the necessary
# methods to support the following code:

# class FixedArray
  
#   attr_accessor :number_elements, :array

#   def initialize(number_elements)
#     @array = Array.new(number_elements)
#   end
  

#   def to_a
#     array.clone 
#   end

#   def [](idx)
#     @array.fetch(idx)
#   end

#   def []=(idx, value)
#     self[idx]
#     @array[idx] = value
#   end

#   def to_s
#     to_a.to_s
#   end 

# end

# fixed_array = FixedArray.new(5)

# puts fixed_array[3] == nil
# puts fixed_array.to_a == [nil] * 5

# fixed_array[3] = 'a'
# puts fixed_array[3] == 'a'
# puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

# fixed_array[1] = 'b'
# puts fixed_array[1] == 'b'
# puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

# fixed_array[1] = 'c'
# puts fixed_array[1] == 'c'
# puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

# fixed_array[4] = 'd'
# puts fixed_array[4] == 'd'
# puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
# puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

# puts fixed_array[-1] == 'd'
# puts fixed_array[-4] == 'c'

# begin
#   fixed_array[6]
#   puts false
# rescue IndexError
#   puts true
# end

# begin
#   fixed_array[-7] = 3
#   puts false
# rescue IndexError
#   puts true
# end


# begin
#   fixed_array[7] = 3
#   puts false
# rescue IndexError
#   puts true
# end


# STUDENTS

# Below we have 3 classes: Student, Graduate, and Undergraduate. Some details for these classes are missing.
# Make changes to the classes below so that the following requirements are fulfilled:

# Graduate students have the option to use on-campus parking, while Undergraduate students do not.

# Graduate and Undergraduate students have a name and year associated with them.

# class Student
#   attr_accessor :name, :year, :parking
#   def initialize(name, year)
#     @name = name
#     @year = year
#   end
# end

# class Graduate < Student
#   def initialize(name, year, parking)
#     super(name, year)
#     @parking = parking
#   end
# end

# class Undergraduate < Student
#   def initialize(name, year)
#     super
#   end
# end


# Undergraduate_student = Undergraduate.new("caydie", 1987)
# Graduate_student = Graduate.new("rustie", 1990, "c-7")
# puts Undergraduate_student.name
# puts Undergraduate_student.year
# puts Graduate_student.parking


#CIRCULAR QUEUE


# class CircularQueue

#   def initialize(circular_que_size)
#     @array = Array.new(circular_que_size)
#     @next_position = 0
#     @oldest_position = 0
#   end

#   def enqueue(integer)
#     unless @buffer[@next_posistion].nil?
#       @oldest_position = increment(@next_position)
#     end 
    
#     @buffer[@next_position] = object
#     @next_position = increment(@next_position)

#   end

#   def dequeue
#     value = @buffer[@oldest_position]
#     @buffer[@oldest_position] = nil 
#     @oldest_position = increment(@oldest_position)  unless value.nil?
#   end

#   private

#   def increment(position)
#     (position + 1) % @buffer.size
#   end
# end

# queue = CicularQueue.new(3)
# puts queue.dequeue == nil

# Stack Machine Interpretation
# This is one of the hardest exercises in this exercise set. 
# It uses both exceptions and 
# #Object#send, neither of which we've discussed in detail before now. Think of this exercise as one that pushes you to learn new things on your own, and don't worry if you can't solve it.

# You may remember our Minilang language from back in the RB101-RB109 Medium exercises. We return to that language now, but this time we'll be using OOP. If you need a refresher, refer back to that exercise.

# Write a class that implements a miniature stack-and-register-based programming language that has the following commands:

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value

# All operations are integer operations (which is only important with DIV and MOD).

# Programs will be supplied to your language method via a string passed in as an argument. Your program should produce an error if an unexpected item is present in the string, or if a required stack value is not on the stack when it should be (the stack is empty). In all error cases, no further processing should be performed on the program.

# You should initialize the register to 0.

# Examples:

# class MinilangError < StandardError; end
# class BadTokenError < MinilangError; end
# class EmptyStackError < MinilangError; end

# class Minilang
#   LIST_OF_COMMANDS = ['PUSH', 'ADD', 'SUB', 'MULT', 'DIV', 'MOD', 'POP', 'PRINT']
#   def initialize(program)
#     @register = 0 
#     @stack = []
#     @program = program.split(" ")
#   end

#   def eval
#     @program.each{ |command| eval_token(command)}
#   rescue MinilangERROR => error
#     puts error.message
#   end

#   def eval_token(token)
#     if token.to_i.to_s == token
#         @register = token.to_i
#       elsif LIST_OF_COMMANDS.include?(token)
#         send(token.downcase)
#       else
#         raise BadTokenError, "Invalid token: #{token}"
#       end
#     end
#   end


#   def push
#     @stack << @register
#   end

#   def add
#     stack_value = @stack.pop
#     @register += stack_value
#   end

#   def sub
#     stack_value = @stack.pop
#     @register -= stack_value
#   end

#   def mult
#     stack_value = @stack.pop
#     @register *= stack_value
#   end

#   def div
#     stack_value = @stack.pop
#     @register /= stack_value
#   end

#   def mod
#     stack_value = @stack.pop
#     @register %= stack_value
#   end

#   def pop
#     raise EmptyStackError, "Empty stack!" if @stack.empty?
#     stack_value = @stack.pop
#     @register = stack_value
#   end

#   def print
#     puts @register
#   end

# end

# Minilang.new('PRINT').eval
# #0

# Minilang.new('5 PUSH 3 MULT PRINT').eval
# # 15

# Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # 5
# # 3
# # 8

# Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # 10
# # 5

# Minilang.new('5 PUSH POP POP PRINT').eval
# # Empty stack!

# Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # 6

# Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # Invalid token: XSUB

# Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # 8

# Minilang.new('6 PUSH').eval
# #(nothing printed; no PRINT commands)


#NUMBER_GUESSER_PART_1

# create an object-oriented number guessing class for numbers in the range of 1 to 1000, with a limit of 
# 7 guessses per game.  The game should play liek this:

# game = GuessingGame.new
# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# That's the number!

# You won!

# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high.

# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have no more guesses. You lost!
# Note that a game object should start a new game with a new number to guess with each call to #play



# class GuessingGame
#   def initialize
#     @number_range = (1..100).to_a
#     @number_guessed = nil
#   end
  
#   def play
#     set_number_to_guess
#     set_guesses
#     loop do 
#       display_remaining_guesses
#       puts enter_a_number
#       @number_guessed = gets.chomp.to_i
#       puts invalid_guess if !number_in_range?
#       evaluate_number if number_in_range?
#       break if @number_guessed == @number_to_guess
#       subtract_guesses
#       break if @remaining_guesses == 0
#     end
#     puts "you have no more gueeses. you lost!"
#   end

#   def set_guesses
#     @remaining_guesses = 7
#   end
  
#   def set_number_to_guess
#     @number_to_guess = @number_range.sample
#   end

#   def enter_a_number
#     "please enter a number between #{@number_range[0]} and #{@number_range[-1]}"
#   end

#   def number_in_range?
#     @number_range.include?(@number_guessed)
#   end
  
#   def evaluate_number
#     if @number_guessed == @number_to_guess
#       puts "That's the number"
#     elsif @number_guessed < @number_to_guess
#       puts "your guess is too low"
#     elsif @number_guessed > @number_to_guess
#       puts "you guess is too high"
#     end
#   end

#   def invalid_guess
#     "Invalid guess. #{enter_a_number}"
#   end

#   def display_remaining_guesses
#     puts "you have #{@remaining_guesses} guesses remaining"
#   end

#   def subtract_guesses
#     @remaining_guesses -= 1
#   end
# end

# class GuessingGame
#   MAX_GUESSES = 7
#   RANGE = 1..100

#   RESULT_OF_GUESS_MESSAGE = {
#     high:  "Your number is too high.",
#     low:   "Your number is too low.",
#     match: "That's the number!"
#   }.freeze

#   WIN_OR_LOSE = {
#     high:  :lose,
#     low:   :lose,
#     match: :win
#   }.freeze

#   RESULT_OF_GAME_MESSAGE = {
#     win:  "You won!",
#     lose: "You have no more guesses. You lost!"
#   }.freeze

#   def initialize
#     @secret_number = nil
#   end

#   def play
#     reset
#     game_result = play_game
#     display_game_end_message(game_result)
#   end

#   private

#   def reset
#     @secret_number = rand(RANGE)
#   end

#   def play_game
#     result = nil
#     MAX_GUESSES.downto(1) do |remaining_guesses|
#       display_guesses_remaining(remaining_guesses)
#       result = check_guess(obtain_one_guess)
#       puts RESULT_OF_GUESS_MESSAGE[result]
#       break if result == :match
#     end
#     WIN_OR_LOSE[result]
#   end

#   def display_guesses_remaining(remaining)
#     puts
#     if remaining == 1
#       puts 'You have 1 guess remaining.'
#     else
#       puts "You have #{remaining} guesses remaining."
#     end
#   end

#   def obtain_one_guess
#     loop do
#       print "Enter a number between #{RANGE.first} and #{RANGE.last}: "
#       guess = gets.chomp.to_i
#       return guess if RANGE.cover?(guess)
#       print "Invalid guess. "
#     end
#   end

#   def check_guess(guess_value)
#     return :match if guess_value == @secret_number
#     return :low if guess_value < @secret_number
#     :high
#   end

#   def display_game_end_message(result)
#     puts "", RESULT_OF_GAME_MESSAGE[result]
#   end
# end

# game = GuessingGame.new
# game.play

#NUMBER GUESS PART 2

class GuessingGame

  RESULT_OF_GUESS_MESSAGE = {
    high:  "Your number is too high.",
    low:   "Your number is too low.",
    match: "That's the number!"
  }.freeze

  WIN_OR_LOSE = {
    high:  :lose,
    low:   :lose,
    match: :win
  }.freeze

  RESULT_OF_GAME_MESSAGE = {
    win:  "You won!",
    lose: "You have no more guesses. You lost!"
  }.freeze

  def initialize(low_number, high_number)
    @secret_number = nil
    @range = low_number..high_number
    @max_guesses = Math.log2(@range.size).to_i + 1
  end

  def play
    reset
    game_result = play_game
    display_game_end_message(game_result)
  end

  private

  def reset
    @secret_number = rand(@range)
  end

  def play_game
    result = nil
    @max_guesses.downto(1) do |remaining_guesses|
      display_guesses_remaining(remaining_guesses)
      result = check_guess(obtain_one_guess)
      puts RESULT_OF_GUESS_MESSAGE[result]
      break if result == :match
    end
    WIN_OR_LOSE[result]
  end

  def display_guesses_remaining(remaining)
    puts
    if remaining == 1
      puts 'You have 1 guess remaining.'
    else
      puts "You have #{remaining} guesses remaining."
    end
  end

  def obtain_one_guess
    loop do
      print "Enter a number between #{@range.first} and #{@range.last}: "
      guess = gets.chomp.to_i
      return guess if @range.cover?(guess)
      print "Invalid guess. "
    end
  end

  def check_guess(guess_value)
    return :match if guess_value == @secret_number
    return :low if guess_value < @secret_number
    :high
  end

  def display_game_end_message(result)
    puts "", RESULT_OF_GAME_MESSAGE[result]
  end
end

game = GuessingGame.new(501, 1000)
game.play
