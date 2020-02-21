# Write a method that takes an Array of numbers, 
# and returns an Array with the same number of elements, 
# and each element has the running total from the original 
# Array.

=begin 

-input: an array
-output: an array of same size of input array with the running totals
 

-problem domain: always array of integers, if empty return empty array

algorithim:

-initialize  result variable and set it to  point to an empty array

-iterate trhough the array 
-within in the array
  + from index 0 to current index sum the values
  + push the result value to the result array 
  + return the result 



=end 


# Examples:

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

def running_total(array)

  array.map.with_index do |_number, idx|
    array[0..idx].inject(:+)
  end 

end 


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []