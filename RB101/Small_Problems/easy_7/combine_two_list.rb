=begin

Write a method that combines two Arrays passed in as arguments, and returns a new Array 
that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.\

algorithm
initialize a new array
loop through array 1 add first value to new_array[2]
loop through array 2 add first value to new_array[1]


example
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
=end

def interleave(array_1, array_2)
  array_1.zip(array_2).flatten 
end

p interleave([1, 2, 3], ['a', 'b', 'c']) 

=begin
def interleave (array_1, array_2)
  array_mixed = []
  increment = 0
  loop do 
   p array_mixed << array_1[increment]
   p array_mixed << array_2[increment]
    increment += 1
    break if increment == array_1.size 
  end
  array_mixed
end 

p interleave([1, 2, 3], ['a', 'b', 'c'])
=end 