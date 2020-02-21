#Write a method which computes the product of all prime numbers less than or equal to a given number(n). 

#This is known as the "primorial" of the number.

#You may assume that only positive integers will be passed in.
#A prime number is a natural number greater than 1 that cannot be formed by multiplying two smaller natural numbers.
#Examples of prime numbers: 2 (1*1 = 1, 2*1 = 2 but 2 is not smaller than 2), 3 (1*1 = 1, 2*1 = 2, 2*2 = 4), 5, 7, 11

=begin

-input: integer
-output: product of all prime numbers less than or equal to the number given

problem domain: only positive integers 

Algorithim:

-find all prime numbers less than or equal to the number 
  + starting fromm 2 
  
-initialize an local variable an set it to point to an array from one to the number 
 from 2 to the number
 
-initialize another local variable, and have it point to 2..(n-1).to_a 

-loop through first array with select, 

write a second method find_prime that works in the inner loop to tell if the current number of the itteration is prime 


=end


#Examples:
# p num_primorial(10) => 210 (2*3*5*7)
# p num_primorial(20) => 9699690
# p num_primorial(30) => 6469693230
# p num_primorial(55) => 32589158477190044730
# p num_primorial(100) => 2305567963945518424753102147331756070

#prime_array = (1..num).select {|d| num % d == 0} == [1, num]


def prime?(number, n)
  (2..n).to_a.each do |divisor|
    if (number != divisor) && (number % divisor == 0) 
      return false 
    end
  end  
  true 
end 

def num_primorial(n)
  
  array_upto_number = (2..n).to_a
  
  array_primes = array_upto_number.select do |number|
    prime?(number, n)
  end 

  array_primes.inject(:*)
  
end 
 
 p num_primorial(11)
 p num_primorial(10) == 210 #(2*3*5*7)
 p num_primorial(20) == 9699690
 p num_primorial(30) == 6469693230
 p num_primorial(55) == 32589158477190044730
 p num_primorial(100) == 2305567963945518424753102147331756070