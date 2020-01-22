
# Write a method that takes two Array arguments in 
# which each Array contains a list of numbers, and 
# returns a new Array that contains the product of
# every pair of numbers that can be formed between 
# the elements of the two Arrays. The results should
# be sorted by increasing value.

# You may assume that neither argument is an empty Array.

=begin

- input: 2 non empty arrays 
- output: 1 array
  + this array will contain all multiplication combinations of the seperate arrays

-problem domain: both arrays will be non empty

Algorithm:

- intialize a result array
- each through the first array
- within the each block call each on the second array, multiplying 
each element of the first array by each element of the second array. 
- << each multiplication value to the result array 
 
=end 

# Examples:

# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

def multiply_all_pairs(array_1, array_2)

  result = []

  array_1.each do |item_1|
    array_2.each do |item_2|
      result << (item_1 * item_2)
    end
  end 

  result.sort
end 

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]




