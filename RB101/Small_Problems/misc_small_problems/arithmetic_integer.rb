
=begin

Write a program that prompts the user for two positive integers, and then prints the results
of the following operations on those two numbers: addition, subtraction, product, 
quotient, remainder, and power. Do not worry about validating the input.

- input 
  -two positive integers
-output
  print results of (add, sub, x, /, remainder and power)

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

=end 

def prompt(message)
  puts "==> #{message}"
end 

puts "Enter the first number"
first = gets.chomp.to_i

puts "Enter the second number"
second = gets.chomp.to_i

puts add = first + second
puts subtract = first - second
puts mult = first * second
puts divide = first / second
puts remainder = first % second 
puts power = first ** second 

