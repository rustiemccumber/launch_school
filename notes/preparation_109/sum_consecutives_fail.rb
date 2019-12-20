# You are given an array which contains only integers (positive
# and negative). Your job is to sum only the numbers that are
# the same and consecutive. The result should be one array.
# 
# You can assume there is never an empty array and there will
# always be an integer.
#  
# Examples:
# ---------
# sum_consecutives([1,4,4,4,0,4,3,3,1]) == [1,12,0,4,6,1]
# sum_consecutives([1,1,7,7,3]) == [2,14,3]
# sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
# sum_consecutives([1]) == [1]
# sum_consecutives([-1]) == [-1]


=begin

input:array
output: array
-with consecutive number that are the same summed
-if the number is not followed by itself, no sum, return number

algorithm

-initialize an empty result array
-iterate through array each_with_index 
-if it is the first number, and the following number are not equal
  + empty_array << first number
  + increment = 0 
- elsif the current number and the following number are equal && not last number in array 
 + increment += 1 
- elsif the current number and the previous number are equal && not first number in array && current != following
 + increment += 1
 + empty << (increment * current number)



=end


def sum_consecutives(array)
  output_array = []
  increment = 0
  array.each_with_index do |num, index|
    if index == 0 && array[index] != array[1]
      output_array << num
      increment = 0 
    elsif num == array[index + 1] && index != - 1
      increment += 1
    elsif num == array[index - 1] && index != 0 && num != array[index + 1]
      increment += 1
      output_array << (increment * num)
      increment = 0
    else
      output_array << num 
      increment = 0
    end
  end
  output_array
end 

p sum_consecutives([1,4,4,4,0,4,3,3,1]) == [1,12,0,4,6,1]
p sum_consecutives([1,1,7,7,3])  == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
p sum_consecutives([1]) == [1]
p sum_consecutives([-1]) == [-1]



