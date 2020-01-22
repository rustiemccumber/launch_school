# Create a function named divisors/Divisors that 
# takes an integer n > 1 and returns an array with 
# all of the integer's divisors(except for 1 and the
# number itself), from smallest to largest. If the number
# is prime return the string '(integer) is prime' 
# (null in C#) (use Either String a in Haskell and 
# Result<Vec<u32>, String> in Rust).

=begin
- INPUT: integer
- OUTPUT: return the divisors of the integer in array format
  + if the integer has no divisors it should say "numer is prime"
-problem domain:

- implicit requirements:

- clarifying questions: can we use prime?

- edge cases

Algorithm:



EXAMPLES

=end 

def divisors(number)
  array_of_divisors = (2..9).select {|divisor| number % divisor == 0}
  return "#{number} is prime" if array_of_divisors.empty?
  array_of_divisors
end 

p divisors(12) # should return [2,3,4,6]
p divisors(25) # should return [5]
p divisors(13) # should return "13 is prime"