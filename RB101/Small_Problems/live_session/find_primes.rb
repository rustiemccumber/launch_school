=begin

write a method that takes two numbers. it should print out all primes between
the two numbers.  don't use the ruby's prime class.

rules for prime numbers:
a prime number is a number that is divisible by a number other than 1 and itself 

find_primes(3, 10) == 3, 5, 7 

- loop through the input array (first..last) and SELECT the prime numbers
- for each number in the input_array, if from 2..(number-1).each do |divisor|
    return true if num % divisor == 0 
    false
  end 

iterate the the array (3..10) using select, if 
=end

def prime?(number)
  (2..(number -1)).each do |divisor|
    return false if number % divisor == 0
  end 
  true
end   

def find_primes(first, last)
  
  (first..last).select do |num|
    prime?(num)
  end 

end 




p find_primes(3, 10)