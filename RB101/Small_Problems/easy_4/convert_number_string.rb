=begin
- input: integer
- output: string 

algorithm 
-divide by 10 return remainder into new variable
-take the new number input after /10 and take the remainder of that
-repeat until input == 0

example
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
# =end


# def integer_to_string(int)
#   array_digits = []
#   loop do 
#     int, remainder = int.divmod(10)
#     array_digits.prepend(remainder)
#     break if x == 0
#   end
#   array_digits.join


# end

# p integer_to_string(4321) 
# p integer_to_string(0)
# p integer_to_string(5000) 


### ATTEMPT AFTER SEVERAL MONTHS


=begin 


In the previous two exercises, you developed methods 
that convert simple numeric strings to signed Integers. 
In this exercise and the next, you're going to reverse
 those methods.

Write a method that takes a positive integer or zero, 
and converts it to a string representation.

You may not use any of the standard conversion methods
 available in Ruby, such as Integer#to_s, String(), 
 Kernel#format, etc. Your method should do this the 
 old-fashioned way and construct the string by analyzing
  and manipulating the number.

Examples

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

-input: number
-ouput: string

until number is zero do 

=end 

NUMBERS = {
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  0 => '0'
}

def integer_to_string(integer)

  number = integer
  array_of_strings = []

  array_of_numbers = []

  loop do 
  
    array_of_numbers << (number % 10)
    number = number/10 
    break if number == 0 
  end

  array_of_numbers.reverse!

  array_of_numbers.each { |item| array_of_strings << NUMBERS[item]}

  array_of_strings


end 

p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'

