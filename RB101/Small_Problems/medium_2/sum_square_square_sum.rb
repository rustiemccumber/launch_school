# Write a method that computes the difference between the square
# of the sum of the first n positive integers and the sum of the 
# squares of the first n positive integers.

# Examples:

# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

=begin

- INPUT: nth number 
- OUTPUT: integer
   - (sum of numbers up to nth)**2 - (sum of each number**2 up to number)

algorithim

-initialize two different variables and set empty arrays to them 
- create two seperate 1.upto loops which populates an array
  + the first loop does nothing to the numbers and << to the first array
  + the second loop squares each number and << to first array 
- sum each array 
  + square the non_squared array
  + do nothing the the squared array
- subtracted the now squared non-squared array from the other

=end 


def sum_square_difference(int)

  non_squared = []
  squared = []
  
  1.upto(int) do |num|
    non_squared << num
    squared << num**2
  end 
  
  (non_squared.sum)**2 - (squared.sum)
end 

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
