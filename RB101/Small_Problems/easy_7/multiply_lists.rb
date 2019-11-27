
=begin 
Write a method that takes two Array arguments in which each Array contains a list of numbers,
and returns a new Array that contains the product of each pair of numbers from
the arguments that have the same index. You may assume that the arguments contain the same number of elements.

input: 2 arrays
output: 1 array
 - multiply number of each array at corresponding index

Algorithm 
 each_with_index
 array_mult = iterate through array_1 using each with index.  
 item * array_2[index]

 example:
 multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


=end 
=begin
def multiply_list(array_1, array_2)
  array_mult = array_1.map.with_index {|item, index| item * array_2[index]}
end
=end 


def multiply_list(array_1, array_2)
 array_1.zip(array_2).map {|x, y| x * y}
end

p multiply_list([3, 5, 7], [9, 10, 11])