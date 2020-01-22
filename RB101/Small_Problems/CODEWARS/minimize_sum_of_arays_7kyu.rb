# given an array of integers, find the minimum sum which is obtained
# from summing each two integers products

=begin
- INPUT: array of integers
- OUTPUT: integer

-problem domain: 
  + array always positives only
  + array will always have even size



- implicit requirements:

minSum([5,4,2,3]) ==> return (22) 

The minimum sum obtained from summing each two integers product , 5*2 + 3*4 = 22

- clarifying questions:

- edge cases

Algorithm:

initialize and empty array
loop through the array given with 'loop'

- multiple the first number by each of the following numbers 
return each value to a new array 
 + when done mutliplying the first numbers by the values begining 
 multiplying the second numbers by the values 

EXAMPLES

minSum([5,4,2,3]) ==> return (22) 

minSum([12,6,10,26,3,24]) ==> return (342)
=end 

require 'pry'
require 'pry-byebug'

def minSum(input_array)
  
  product_result = []
  first_index = 0
  second_index = 1
  
  #binding.pry
  loop do 
    product_result << (input_array[first_index] * input_array[second_index])
    second_index += 1
    if second_index == input_array.size
      first_index += 1
      second_index = (first_index + 1)
    end 
    break if first_index == (input_array.size - 1)
  end
   sorted_array = product_result.sort
   number_on 
end 

p minSum([5,4,2,3])
