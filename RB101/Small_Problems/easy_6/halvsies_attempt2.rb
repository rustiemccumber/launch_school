
# Write a method that takes an Array as an argument, 
# and returns two Arrays (as a pair of nested Arrays)
# that contain the first half and second half of the 
# original Array, respectively. If the original array
# contains an odd number of elements, the middle element
# should be placed in the first half Array.

=begin 

- input: array 
- output: nested_array with the first half of the numbers in the
first nest array, and the second half of the numbers in the second
nested array

problem domain:  if it is an odd numbers, put the first more than
numbers in the first array 

find the half of the array, half_array

initialize two empty arrays

array_1 = []
array_2 = []

iterate each with index through the array, if index <= (half -1)
 array_1 << char
else
 array
=end 

# Examples:

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]


def halvsies(array)
  
  array_half = (array.size.to_f/2).ceil

  array_1 = []
  array_2 = []
  result = []

  array.each_with_index do |item, idx|

    if idx <= (array_half - 1)
      array_1 << item
    else
      array_2 << item
    end 
  end 

  result << array_1
  result << array_2

  result 
end 

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p  halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]