
 # Write a program that, given a number, can find the sum of all
#  the multiples of particular numbers up to but not including 
#  that number.

# If we list all the natural numbers up to but not including 
# 20 that are multiples of either 3 or 5, we get 3, 5, 6, 9, 
# 10, 12, 15, and 18.
#  The sum of these multiples is 78.

# Write a program that can find the sum of the multiples of a 
# given set of numbers. If no set of numbers is given, 
# default to 3 and 5.

class SumOfMultiples

  def self.to(limit, multiples = [3, 5])
    self.sum_multiples(limit, multiples)
  end

  def self.sum_multiples(limit, multiples)
    (0...limit).select do |num|
      multiples.any?{ |multiple| num % multiple == 0}
    end.reduce(:+)
  end

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    self.class.to(limit, @multiples)
  end

end
