=begin

write a method that takes two arguements 
the first is the starting number 
the second is the ending number 

print out all of the numbers between the new numbers
 - except if a number is divisible by 3 print "Fizz"
 - if a number is divisible by 5 print "Buzz"
 - if a number is divisible by 3 and 5 print "Fizzbuzz"


input: two numbers as arguments
output: string every number between the two numbers (including the two numbers), fizz, buzz, fizzbuzz 

algorthim: 

from starting number upto second number 
create a conditional 
  if current number % 3 == 0 && current number % 5 == 0
    p 'fizzbuzz'
  elsif current number % 5 == 0 
    p "buzz"
  elsif current number % 3 == 0 
   p  "fizz"
  eslif 
   p "#{current_number}"
=end


def fizzbuzz(first, second)

  first.upto(second) do |current_number|

    if current_number % 3 == 0 && current_number % 5 == 0
      p 'fizzbuzz'
    elsif current_number % 5 == 0 
      p "buzz"
    elsif current_number % 3 == 0
      p "fizz"
    else 
      p current_number
    end
  end 
end 

fizzbuzz(1, 15)