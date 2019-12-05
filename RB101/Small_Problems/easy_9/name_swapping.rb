
=begin 

Write a method that takes a first name, a space, and a last name passed as a
single String argument, and returns a string that contains the last name, a 
comma, a space, and the first name.

-input: string of first name and last name with space inbetween
-output: string of last name first +, space and first name

algorithm: 
- split string into array 
- reverse array. 
- add "," to array[0]
- join 

swap_name('Joe Roberts') == 'Roberts, Joe'

=end 

def swap_name(string)
  swapped_array = string.split.reverse
  swapped_array[0] << ','
  swapped_array.join(' ')
end 

p swap_name('Joe Roberts')