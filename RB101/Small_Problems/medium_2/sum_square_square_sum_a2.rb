
# 35:08
# Write a method that computes the difference between 
# the square of the sum of the first n positive integers 
# and the sum of the squares of the first n positive integers.

=begin 

-input: integer
-output: integer
  - difference between the square of the sum of first n positive intgers
  and the sum of the squares of the first n psotive integers

  algorithm: 

  sum = 0 
  1.upto(n) {|number| sum += number}

  sum_squared = sum**2
  
  squared_sum = 0
  1.upto(n) {|number| sum_squared += number**2 }

sum_squared - squared_sum 


=end 

# Examples:

# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

def sum_square_difference(n)
  
  sum = 0
  1.upto(n) {|number| sum += number}
  sum_squared = sum**2 
  
  square_sum = 0
  1.upto(n) {|number| square_sum += number**2 }

  sum_squared - square_sum 

end 

p sum_square_difference(3) #== 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) #== 2640
p sum_square_difference(1) #== 0
p sum_square_difference(100) #== 25164150
