=begin 

Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) 
that contain the first half and second half of the original Array, respectively. If the 
original array contains an odd number of elements, the middle element should be placed in
the first half Array.

algorithm:
if array.size.odd?
  array. size -1 divided by two
array.partition {|char|  }


halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]


=end 


def halvsies(array)
  array.partition do |char| 
    if array.size.odd?
      array.index(char) <= array.size/2 
    else 
      array.index(char) < array.size/2
    end
  end
end 


p halvsies([1, 5, 2, 4, 3])
p halvsies([1, 2, 3, 4]) 
p halvsies([1, 5, 2, 4, 3]) 
p halvsies([5, 2]) 
p halvsies([])