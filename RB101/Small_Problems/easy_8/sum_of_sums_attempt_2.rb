# Write a method that takes an Array of numbers and then 
# returns the sum of the sums of each leading subsequence 
# for that Array. You may assume that the Array always 
# contains at least one number.

# Examples:

=begin 

-input: an array
-output: some of the sums for each leading subsequence

-problem domain: array will always contain at least one number

algorithm: 

initialize a local variabel sum and set it to point to zero 

iterate through the array with map sum += element

sum the resulting array 

=end 

# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35


def sum_of_sums(array)

  sum = 0 

  result_array = array.map {|element| sum += element}

  result_array.inject(:+)

end 

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35