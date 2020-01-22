=begin

Write a method taht will generate random english math problems. the method should take a length
and then return a math phrase with that many operations

-INPUT: integer
-OUTPUT: a string with the number of integer of operations

-problem domain:  0- 9, times, divide, plus minus

-rules

-claifying quetions

- edge cases 

- examples

mathprhase(1) # => "five mius two"
mathphrase(2) # => "two plus three times eight"
mathphrase(3) # => "one divided by three plus five times zero"

algorithm:  

create a constant NUMBERS which points to an array the english words from 'zero' to 'nine'
create a constant OPERATIONS which points to an array of opperations

numbers_array
operations_array


input_number.times do
  operations_array << OPERATIONS.sample

(input_number +1).times do 
  numbers_array << NUMBERS.sample 

  
=end

NUMBERS = %w(zero one two three four five six seven eight nine)
OPERATIONS = %w(plus minus times divided )

# my ANSWER
# def mathphrase(input_number)
#   operations_array = []
#   numbers_array = []
#   sentence_array = []

#    input_number.times { operations_array << OPERATIONS.sample}
#    (input_number + 1).times { numbers_array << NUMBERS.sample}
  
#   numbers_array.each_with_index do |number, idx|
#     sentence_array << number 
#     sentence_array << (operations_array.shift) if idx < (numbers_array.size - 1)
#   end 
#   sentence_array.join(" ")
# end 

#BETTER ANSWER

def mathphrase(number_of_operations)

  operations = [NUMBERS.sample]
  number_of_operations.times do |number|
    operations << OPERATIONS.sample
    operations << NUMBERS.sample
  end 
  operations.join(' ').gsub('divided', 'divided by')
end 

# p mathphrase(1)
# p mathphrase(2)
# p mathphrase(3)

def mathphrase_length_random
  random_number = rand(10)
  mathphrase(random_number)
end 


p mathphrase_length_random
#write a program that will generatre random english math problems of varying length. 

