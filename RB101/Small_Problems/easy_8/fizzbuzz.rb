=begin

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", 
if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

-input: two arguments 
  -first: starting number
  -second: ending number 
-output: print out all numbers between two numbers
  -unless number is divisible by 3, print 'fizz'
  -if a number is divisibe by 5 print "buzz", 
  -if the number is divisible by  3 & 5 print "FizzBuzz"

algrithm 
us up to 
  count from number_begin up to umber final 
  if number % 3 == 0 && number % 5
    prints 'fizzbuzz'
  elsif number % 3 == 0
    prints 'fizz'
  elsif number % 5 == 0
    prints 'buzz'
  else 
    prints number 

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
  
=end

def fizzbuzz(number_begin, number_end)
  number_begin.upto(number_end) do |number|
    if number % 3 == 0 && number % 5 == 0
      print 'fizzbuzz, '
    elsif number % 3 == 0
      print 'fizz, '
    elsif number % 5 == 0
      print 'buzz, '
    else 
      print number 
      print ', '
    end
  end
end 


p fizzbuzz(1, 15)