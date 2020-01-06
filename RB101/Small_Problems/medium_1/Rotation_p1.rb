#Write a method that rotates an array by moving the first element 
# to the end of the array. The original array should not be modified.

# Rules: do not use rotate or rotate! do no mutate the array passed into it

# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4] 

#Input: Array
#Ouput: Array with first object move the the position of the last object

#algorthim
# within the array initialized a new local variable array_2
# assign  the return value method call `clone` to the variable array_2
# initialize a new variable `first` and set it equal to return value of array_2.shift
# append << `first` to array_2


#-------------rotation part 1-------
# def rotate_array(input_array)
#   array_2 = input_array.clone
#   first = array_2.shift
#   array_2 << first
# end

# def rotate_string(input_string)  EXTRA 
#   to_array = input_string.chars
#   rotate_array(to_array).join 
# end 

# def rotate_integer(input_integer)
#   rotate_string(input_integer.to_s).to_i
# end 


# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4] 

#----rotation part 2---------------


# ROTATION PART TWO 

# input: an array and an integer
# -the integer specifies which number is to be rotated 
 #   + starting from 1 as the right most element of the array 
# output: and array with that number specified by the postion moved to the end of the array. 

# get the index value of the element of the array set it equal to index_value 
# get the element at that positon set assign it to variable 
# assign the return value array.delete_at(index_value)  to variable `position_element
# append position element to the mutated array_2

# def rotate_rightmost_digits(integer, number)
#   array = integer.to_s.chars 
#   index_value = array.size - number 
#   array_2 = array.clone
#   position_element = array_2.delete_at(index_value)
#   array_2 << position_element 
#   array_2.join('').to_i
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

# ROTATION PART 3



# INPUT: integer
# OUTPUT: integer with max rotation 

# algorithm
# split the string into an array 
# iterate through the array
# - with each iteration move the value to the end
# - continue iterating through the modified array and shifting numbers to the end
# break out of the iteration when the index_value = array.size 
# return the modified array that has been converted back to an integer
#



def max_rotation(number)
  array = number.to_s.chars 
  array_2 = array.clone
  index_value = 0 
  loop do 
     position_element = array_2.delete_at(index_value)
     array_2 << position_element
     index_value += 1 
     break if index_value == array.size
  end
  array_2.join('').to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845