# Write a method that can rotate the last n digits of a number. 
# For example:

# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# Note that rotating just 1 digit results in the original number being returned.

=begin

-input: 2 integers, number and which to rotate
-output: rotated number
rotate the position spaced from the last number 

-problem domain: n is always a positive number 

algortihm:

conver the number into a string

string[0..-(num -1)] + string[-(num + 1)..-1] + string[num]
  
=end

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.



def rotate_rightmost_digits(int, num)

  string = int.to_s
  
  if num > 1
    (string[0..-(num + 1)] + string[-(num - 1)..-1] + string[-num]).to_i
  else 
    int
  end 

end 

p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
