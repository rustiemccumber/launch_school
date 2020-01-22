
# Write a method that takes two Array arguments in 
# which each Array contains a list of numbers, and 
# returns a new Array that contains the product of
# each pair of numbers from the arguments that have 
# the same index. You may assume that the arguments
# contain the same number of elements.


=begin 

- input: 2 arrays of same length
- output: one array with products of each array as the new items

-problem domain: they will always have the same number of items

Algorithm: 

- intialize and empty array 
- initialize and index to iterate through the arrays
- start a loop that iterates through both of the arrays 
- multiply each element of the array together and << to empty array
- return the result array

=end 


# Examples:

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list(array_1, array_2)

  result = []
  idx = 0

  loop do 
    break if idx >= array_1.size 
    result << (array_1[idx] * array_2[idx])
    idx += 1
  end 

  result 
end


p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
