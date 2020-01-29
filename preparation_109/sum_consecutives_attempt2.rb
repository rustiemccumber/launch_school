# You are given an array which contains only integers (positive
# and negative). Your job is to sum only the numbers that are
# the same and consecutive. The result should be one array.
# 
# You can assume there is never an empty array and there will
# always be an integer.

=begin

-input: array
-output: array
  +with consectutive integers summed 

problem domain: the array will never be empty 

algorithim:

initialize an empty array

-iterate through the array, each with index
-append each value to the new array with the <<
- if the last value in the array is the same as the current value
  + add the current number to the last number in the array




=end 
#  
# Examples:
# ---------
# sum_consecutives([1,4,4,4,0,4,3,3,1]) == [1,12,0,4,6,1]
# sum_consecutives([1,1,7,7,3]) == [2,14,3]
# sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
# sum_consecutives([1]) == [1]
# sum_consecutives([-1]) == [-1]

def sum_consecutives(array)

  result = []

  array.each_with_index do |number, idx|
    if idx > 0 && (number == array[idx - 1])
      result[-1] += number
    else 
      result << number 
    end 
  end 
  
  result 

end 

p sum_consecutives([1,4,4,4,0,4,3,3,1]) == [1,12,0,4,6,1]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
p sum_consecutives([1]) == [1]
p sum_consecutives([-1]) == [-1]

#MATTHEW CRISTY NICE SOLUTION

# def sum_consecutives(array)
#   total = 0
#   result = []
#   array.each_with_index do |num, index|
#     total += num
#     if num == array[index + 1]
#       next
#     else
#       result << total
#       total = 0
#     end
#   end
#   result
# end

# p sum_consecutives([1,4,4,4,0,4,3,3,1])
# p sum_consecutives([1,1,7,7,3])
# p sum_consecutives([-5,-5,7,7,12,0])
# p sum_consecutives([1]) 
# p sum_consecutives([-1]) 