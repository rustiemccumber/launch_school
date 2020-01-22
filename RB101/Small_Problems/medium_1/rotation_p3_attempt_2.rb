# If you take a number like 735291, and rotate it to the left,
# you get 352917. If you now keep the first digit fixed in 
# place, and rotate the remaining digits, you get 329175. 
#  Keep the first 2 digits fixed in place and rotate again 
#  to 321759. Keep the first 3 digits fixed in place and 
#  rotate again to get 321597. Finally, keep the first 4 
#  digits fixed in place and rotate the final 2 digits to 
#  get 321579. The resulting number is called the maximum 
#  rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

=begin 

-input: integer
-output: max rotation integer 

algorithm 

dup the input number
to_s the inpout number
initialize a local variable set it equal to zero 

create a loop 
which loops through the string and incrementing and exchaning the 
incremented number with the last number until  it is at position -1


=end 

# Example:

# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845


def max_rotation(int)
  
  int_copy = int.dup.to_s.chars
  idx = 0

  loop do 
    break if idx == int_copy.size
    int_copy << int_copy.delete_at(idx)
    idx +=1
  end 
  int_copy.join.to_i
end 

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

