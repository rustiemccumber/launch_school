
# 2:06 
# Write a method that takes two sorted Arrays as arguments,
# and returns a new Array that contains all elements from 
# both arguments in sorted order.

# You may not provide any solution that requires you to sort 
# the result array. You must build the result array one 
# element at a time in the proper order.

# Your solution should not mutate the input arrays.

# Examples:

# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]

=begin

-input: two sorted arrrays
-output: two arrays merged in shorted order 

-problem domain: should not mutate the input_arrays 

algorithim:

initialize two index counters, set them equal to zero

interate through the first array and the second array simulatenously

if the current value of the first array is < current value of the second array

    empty_array << current
    idx_1 += 1

eslif current value > current value of second array 
   empty_array << current
   idx_2 +=1




=end 

# require 'pry'
# require 'pry-byebug'

# def merge(array_1, array_2)
#   array_1_idx = 0
#   array_2_idx = 0
#   result = []
#   #binding.pry 
#   loop do 

#     if (array_1[array_1_idx] < array_2[array_2_idx]) 
#       result << array_1[array_1_idx] 
#       array_1_idx += 1 
#       (array_1_idx = array_1.size - 1) if array_1_idx == array_1.size
#     else 
#       result << array_2[array_2_idx]
#       array_2_idx += 1
#       (array_2_idx = array_2.size - 1) if array_2_idx == array_2.size
#     end 
#     break if result.size == array_1.size + array_2.size 
#   end 
#   result 
# end 

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end
  result 
  #result.concat(array2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) #== [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

