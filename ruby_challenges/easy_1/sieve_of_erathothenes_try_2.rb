# Write a program that uses the Sieve of Eratosthenes to find all the primes from 2 
# up to a given number.

# The Sieve of Eratosthenes is a simple, ancient algorithm for finding all prime numbers 
# up to any given limit. It does so by iteratively marking as composite (i.e. not prime) 
# the multiples of each prime, starting with the multiples of 2.

# Create your range, starting at two and continuing up to and including the given limit. 
# (i.e. [2, limit]).

# The algorithm consists of repeating the following over and over:

# take the next available unmarked number in your list (it is prime)
# mark all the multiples of that number (they are not prime)
# Repeat until you have processed each number in your range. When the algorithm terminates,
#  all the numbers in the list that have not been marked are prime. The wikipedia article has 
#  a useful graphic that explains the algorithm.

# Notice that this is a very specific algorithm, and the tests don't check that you've implemented
# the algorithm, only that you've come up with the correct list of primes.

def Sieve(number)

  def initialize(range_limit)
    @range_limit = range_limit
    @full_array = (2..@range_limit).to_a
  end

  def primes
    non_prime_array = []
    result = 0
    multipe = 2
    @full_array.each do |current_number|
       result = multipe * current_number
       break if result > @range_limit
       non_prime_array << result
       mutlipe += 1
  end

end